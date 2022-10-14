#!/usr/bin/env bash
set +x
# Given string 
RDS_INSTANCE="database-1,database-2"

# Setting IFS (input field separator) value as ","
IFS=','

# Reading the split string into array
read -ra arr <<< "$RDS_INSTANCE"

# Print each value of the array by using the loop
for val in "${arr[@]}";
do
  echo "Stopping: ${val}" 
           aws rds stop-db-instance --db-instance-identifier ${val} --region us-east-1 
done
