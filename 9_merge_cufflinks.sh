#!/bin/sh

#PBS -N cufflinks
#PBS -q fnrdewoody
#PBS -l nodes=1:ppn=1,naccesspolicy=shared
#PBS -l walltime=300:00:00
#PBS -m abe

module purge
module load bioinfo
module load cufflinks

cd $PBS_O_WORKDIR

# copy reference file to current dir
#cp /scratch/snyder/a/abruenic/RNA_bendy_chicken/data/GCF_000001635.25_GRCm38.p5_genomic.gff .

# make assembly_list.txt
#cp /scratch/snyder/a/abruenic/RNA_bendy_chicken/data/samples.txt .
#mv samples.txt assembly_list.txt

# add .gtf to the end of each line
#sed -e 's/$/.gtf/' -i assembly_list.txt

# Merge all cufflinks output into a single file
cuffmerge -g GCF_000001635.25_GRCm38.p5_genomic.gff assembly_list.txt




# END