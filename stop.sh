#!/bin/bash

pg_dump -cC --inserts -U freecodecamp students > students.sql
#cp students.sql sqlstudentsproject
yes | sudo apt-get install rsync

rsync -a --exclude='.*' ./ ./gitproject/

now=$(date)

cd sqlstudentsproject
git add .
git commit -m "$now"
git push -u origin main