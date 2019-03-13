#!/bin/sh

#PBS -N DGE_tests
#PBS -q standby
#PBS -l nodes=1:ppn=1,naccesspolicy=shared
#PBS -l walltime=1:00:00
#PBS -m abe

module purge
module load bioinfo

cd $PBS_O_WORKDIR

# DGE 8 tests with 3 replicates each

test1a=$(grep 'yes' Test_1a.diff | wc -l)
test1b=$(grep 'yes' Test_1b.diff | wc -l)
test1c=$(grep 'yes' Test_1c.diff | wc -l)

test2a=$(grep 'yes' Test_2a.diff | wc -l)
test2b=$(grep 'yes' Test_2b.diff | wc -l)
test2c=$(grep 'yes' Test_2c.diff | wc -l)

test3a=$(grep 'yes' Test_3a.diff | wc -l)
test3b=$(grep 'yes' Test_3b.diff | wc -l)
test3c=$(grep 'yes' Test_3c.diff | wc -l)

test4a=$(grep 'yes' Test_4a.diff | wc -l)
test4b=$(grep 'yes' Test_4b.diff | wc -l)
test4c=$(grep 'yes' Test_4c.diff | wc -l)

test5a=$(grep 'yes' Test_5a.diff | wc -l)
test5b=$(grep 'yes' Test_5b.diff | wc -l)
test5c=$(grep 'yes' Test_5c.diff | wc -l)

test6a=$(grep 'yes' Test_6a.diff | wc -l)
test6b=$(grep 'yes' Test_6b.diff | wc -l)
test6c=$(grep 'yes' Test_6c.diff | wc -l)

test7a=$(grep 'yes' Test_7a.diff | wc -l)
test7b=$(grep 'yes' Test_7b.diff | wc -l)
test7c=$(grep 'yes' Test_7c.diff | wc -l)

test8a=$(grep 'yes' Test_8a.diff | wc -l)
test8b=$(grep 'yes' Test_8b.diff | wc -l)
test8c=$(grep 'yes' Test_8c.diff | wc -l)

echo -e "test1a\t test1b\t test1c\t test2a\t test2b\t test2c\t test3a\t test3b\t test3c\t test4a\t test4b\t test4c\t test5a\t test5b\t test5c\t test6a\t test6b\t test6c\t test7a\t test7b\t test7c\t test8a\t test8b\t test8c" > /scratch/snyder/a/abruenic/RNA_bendy_chicken/data/count_matrix/gene_exp_diff_files/test_stats.txt

echo -e "$test1a\t $test1b\t $test1c\t $test2a\t $test2b\t $test2c\t $test3a\t $test3b\t $test3c\t $test4a\t $test4b\t $test4c\t $test5a\t $test5b\t $test5c\t $test6a\t $test6b\t $test6c\t $test7a\t $test7b\t $test7c\t $test8a\t $test8b\t $test8c" >> /scratch/snyder/a/abruenic/RNA_bendy_chicken/data/count_matrix/gene_exp_diff_files/test_stats.txt

# END