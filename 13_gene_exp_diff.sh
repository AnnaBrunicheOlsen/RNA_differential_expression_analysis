#!/bin/sh

#PBS -N gene_exp_diff
#PBS -q standby
#PBS -l nodes=1:ppn=1,naccesspolicy=shared
#PBS -l walltime=1:00:00
#PBS -m abe

module purge
module load bioinfo

cd $PBS_O_WORKDIR

mkdir gene_exp_diff_files

cat tests.txt | while read -r LINE

do

echo $LINE

cd $LINE

cp gene_exp.diff $LINE.diff

mv $LINE.diff /scratch/snyder/a/abruenic/RNA_bendy_chicken/data/count_matrix/gene_exp_diff_files/

cd ..

done

# END
