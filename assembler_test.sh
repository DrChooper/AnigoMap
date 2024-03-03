#!./bin/bash
#This script will test whether the GetOrganelle installation has worked. It is using the test read files
input1="Arabidopsis_simulated.1.fq.gz"
input2="Arabidopsis_simulated.2.fq.gz"
echo "
=================================================================================
Starting GetOrganelle assembly using $input1 and $input2
================================================================================="

#assembly of chloroplast genome
get_organelle_from_reads.py -1 test/Arabidopsis_simulated.1.fq.gz -2 test/Arabidopsis_simulated.2.fq.gz -t 1 -o test/Arabidopsis_simulated.plastome -F embplant_pt -R 10



