#!/bin/bash

ORG="MinbarAI"

prefix="minbarai"

git clone https://github.com/$ORG/$prefix-devops.git

cd $prefix-devops && mkdir services && cd services

services=(
frontend
backend
ai
)

for service in "${services[@]}"
do
   git clone https://github.com/$ORG/$prefix-$service.git
done
