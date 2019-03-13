#!/bin/sh

#PBS -N RNA_mappping
#PBS -q fnrgenetics
#PBS -l nodes=1:ppn=20,naccesspolicy=shared
#PBS -l walltime=300:00:00
#PBS -m abe

module purge
module load bioinfo
module load tophat

cd $PBS_O_WORKDIR

cat samples.txt | while read -r LINE

do

echo $LINE

cd $LINE

cp /scratch/snyder/a/abruenic/RNA_bendy_chicken/data/ref* .

# read in the file names
FILE1=${LINE}_R1_filtered.fastq.gz
FILE2=${LINE}_R2_filtered.fastq.gz

tophat --num-threads 20 ref $FILE1 $FILE2

cd ..

done

# END
