#!/bin/bash

#SBATCH -N1 -n1
#SBATCH -t00:15:00 --qos=short
#SBATCH -J howejob
#SBATCH --mail-user=cahowe@middlebury.edu

bash HMMER_job.sh

Exit$?
