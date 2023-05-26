#!/bin/bash
# create directories for yesterday, today, and tomorrow

# create a working directory
mkdir -p work
# enter said directory
cd work

# create three directories
mkdir -p yesterday
mkdir -p today
mkdir -p tomorrow

# use date to write the correct date to text files
date "+%Y-%m-%d" --date="-1day" > yesterday/date
date "+%Y-%m-%d" > today/date
date "+%Y-%m-%d" --date="+1day" > tomorrow/date

# loop through hours and append to the time files
hours="00 06 12 18"
days="yesterday today tomorrow"

for d in $days; do
  for h in $hours; do
    echo $h >> $d/hours
  done
done

# get list of days and print out their dates
for f in `ls`; do
  echo $f && cat $f/date
done
