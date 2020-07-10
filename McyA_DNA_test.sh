#!/usr/bin/env bash
# slurm template for serial jobs

# Set SLURM options
#SBATCH --job-name=McyADNA_query_test                  # Job name
#SBATCH --output=McyADNA_query_test-%j.out             # Standard output and error log
#SBATCH --mail-user=mbrockley@middlebury.edu     # Where to send mail	
#SBATCH --mail-type=ALL                        # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH -N1 -n20 --mem-per-cpu=200M -t01:00:00 --qos=short                         # Time limit hrs:min:sec

# print SLURM envirionment variables
echo "Job ID: ${SLURM_JOB_ID}"
echo "Node: ${SLURMD_NODENAME}"
echo "Starting: "`date +"%D %T"`

# Your calculations here

nhmmer mcyADNA.hmm /storage/eggleston-research/metagenomes/lakeerie2011.faa > mcyADNA.hmmout


# End of job info
echo "Ending:   "`date +"%D %T"`
