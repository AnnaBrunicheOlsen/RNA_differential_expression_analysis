#!/bin/sh

#PBS -N QC
#PBS -q standby
#PBS -l nodes=1:ppn=1,naccesspolicy=shared
#PBS -l walltime=4:00:00
#PBS -m abe

module purge
module load bioinfo
module load fastqc

cd $PBS_O_WORKDIR

cat samples.txt | while read -r LINE

do

echo $LINE

# read in the file names
FILE1=${LINE}_R1_filtered.fastq.gz
FILE2=${LINE}_R2_filtered.fastq.gz

# QC individual files
fastqc $FILE1
fastqc $FILE2

unzip ${LINE}_R1_filtered_fastqc.zip
unzip ${LINE}_R2_filtered_fastqc.zip

grep "Per base sequence quality" ${LINE}_R1_filtered_fastqc/summary.txt >> qc_log.txt
grep "Adapter Content" ${LINE}_R1_filtered_fastqc/summary.txt >> qc_log.txt

grep "Per base sequence quality" ${LINE}_R2_filtered_fastqc/summary.txt >> qc_log.txt
grep "Adapter Content" ${LINE}_R2_filtered_fastqc/summary.txt >> qc_log.txt

done

# END
