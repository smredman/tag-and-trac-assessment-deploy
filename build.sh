#!/bin/bash

cd ../
git clone https://github.com/smredman/tag-and-trac-assessment-web.git
git clone https://github.com/smredman/tag-and-trac-assessment-api.git

cd tag-and-trac-assessment-api
npm install
npm run build

cd ../tag-and-trac-assessment-deploy
docker-compose up --build -d

cd ../tag-and-trac-assessment-web
npm install
npm start
