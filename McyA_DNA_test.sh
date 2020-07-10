#!/usr/bin/env bash
# mcyA slurm HMMER

# Set SLURM options
#SBATCH --job-name=McyADNA_query_test2                  # Job name
#SBATCH --output=/storage/eggleston-research/HMMER/mcyA-output/McyADNA_query_test-%j.out             # Standard output and error log
#SBATCH --mail-user=mbrockley@middlebury.edu     # Where to send mail	
#SBATCH --mail-type=ALL                        # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH -N1 -n20 --mem-per-cpu=200M -t01:00:00 --qos=short                         # Time limit hrs:min:sec

# print SLURM envirionment variables
echo "Job ID: ${SLURM_JOB_ID}"
echo "Node: ${SLURMD_NODENAME}"
echo "Starting: "`date +"%D %T"`

# Your calculations here

hmmsearch /home/mbrockley/mcyADNA.hmm /storage/eggleston-research/metagenomes/lakeerie2011.faa > /storage/eggleston-research/HMMER/mcyA-output/mcyADNA-%j.hmmout


# End of job info
echo "Ending:   "`date +"%D %T"`
