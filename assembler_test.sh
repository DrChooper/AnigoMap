#!./bin/bash
#This script will test whether the GetOrganelle installation has worked. It is using the test read files
input1="Arabidopsis_simulated.1.fq.gz"
input2="Arabidopsis_simulated.2.fq.gz"
echo "
=================================================================================
Starting GetOrganelle assembly using $input1 and $input2
================================================================================="

#download files:
mkdir test 
wget -P ./test https://github.com/Kinggerm/GetOrganelleGallery/raw/master/Test/reads/Arabidopsis_simulated.1.fq.gz
wget -P ./test https://github.com/Kinggerm/GetOrganelleGallery/raw/master/Test/reads/Arabidopsis_simulated.2.fq.gz

#assembly of chloroplast genome
get_organelle_from_reads.py -1 test/Arabidopsis_simulated.1.fq.gz -2 test/Arabidopsis_simulated.2.fq.gz -t 1 -o test/Arabidopsis_simulated.plastome -F embplant_pt -R 10

folder_path="./test/Arabidopsis_simulated.plastome"
log_file="get_org.log.txt"
target_string="Result status of embplant_pt: circular genome"

#Check if the log file exists
if [ -f "$folder_path/$log_file" ]; then
    # Check if the target string is present in the log file
    if grep -q "$target_string" "$folder_path/$log_file"; then
        echo "
        =======================================================
        Test succeessful. The test folder will be deleted.
        ======================================================="
        rm -r test
    else
        echo "assembly failed."
    fi
else
    echo "Log file not found in the specified folder. Please check installation"
fi

wait
echo "GetOrganelle Test finished"

