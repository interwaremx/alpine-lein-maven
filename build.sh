#!/bin/bash
docker build -t interwaremx/alpine-lein-maven:1.1 .
docker tag interwaremx/alpine-lein-maven:1.1 interwaremx/alpine-lein-maven:latest
