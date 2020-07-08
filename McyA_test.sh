#!/usr/bin/env bash
# slurm template for serial jobs

# Set SLURM options
#SBATCH --job-name=McyA_query_test                  # Job name
#SBATCH --output=McyA_query_test-%j.out             # Standard output and error log
#SBATCH --mail-user=mbrockley@middlebury.edu     # Where to send mail	
#SBATCH --mail-type=ALL                        # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH -N1 -n20 --mem-per-cpu=200M -t00:15:00 --qos=short                         # Time limit hrs:min:sec

# print SLURM envirionment variables
echo "Job ID: ${SLURM_JOB_ID}"
echo "Node: ${SLURMD_NODENAME}"
echo "Starting: "`date +"%D %T"`

# Your calculations here
bash HMMER_job_matt.sh


# End of job info
echo "Ending:   "`date +"%D %T"`
