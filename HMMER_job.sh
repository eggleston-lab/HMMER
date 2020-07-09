#----Notes----#
# --F3 changes threshold for final filter from default to 0.005 #

#!/bin/bash

for f in submit/*prot.faa; do
        hmmbuild hmm_sxt.hmm f
        hmmsearch --F3 0.005 hmm_sxt.hmm ../eggleston-research/lakeerie2011.fasta > results/sxt_out.hmm
done

Exit$?
