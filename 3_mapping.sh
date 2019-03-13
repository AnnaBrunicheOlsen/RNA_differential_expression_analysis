#!/bin/sh

#PBS -N genome
#PBS -q standby
#PBS -l nodes=1:ppn=1,naccesspolicy=shared
#PBS -l walltime=4:00:00
#PBS -m abe

module purge
module load bioinfo
module load bowtie2

cd $PBS_O_WORKDIR

bowtie2-build ref.fa ref
 
# END