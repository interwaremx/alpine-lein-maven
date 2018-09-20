FROM frolvlad/alpine-oraclejdk8:full

# Install Leiningen 
ENV LEIN_ROOT 1 
RUN apk add --update wget ca-certificates bash && \ 
    wget -q "https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein" \ 
         -O /usr/local/bin/lein && \ 
    chmod 0755 /usr/local/bin/lein && \ 
    lein && \ 
    apk del wget ca-certificates && \ 
    rm -rf /tmp/* /var/cache/apk/* 

# Install Git
RUN apk add --no-cache git && \ 
    rm -rf /tmp/* /var/cache/apk/*

# Install Maven
ENV MAVEN_VERSION 3.5.3
ENV MAVEN_HOME /usr/lib/mvn
ENV PATH $MAVEN_HOME/bin:$PATH

RUN wget http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
    tar -zxvf apache-maven-$MAVEN_VERSION-bin.tar.gz && \
    rm apache-maven-$MAVEN_VERSION-bin.tar.gz && \
    mv apache-maven-$MAVEN_VERSION /usr/lib/mvn