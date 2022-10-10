#!/bin/bash

cd ../
git clone https://github.com/smredman/tag-and-trac-assessment-web.git
git clone https://github.com/smredman/tag-and-trac-assessment-api.git

cd tag-and-trac-assessment-api
npm install
npm run build

cd ../deploy
docker-compose up --build -d

cd ../tag-and-tract-assessment-web
npm install
npm start
