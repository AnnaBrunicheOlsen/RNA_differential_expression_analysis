#!/bin/sh

#PBS -N genome
#PBS -q standby
#PBS -l nodes=1:ppn=1,naccesspolicy=shared
#PBS -l walltime=4:00:00
#PBS -m abe

module purge
module load bioinfo


cd $PBS_O_WORKDIR

wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/635/GCF_000001635.25_GRCm38.p5/GCF_000001635.25_GRCm38.p5_genomic.fna.gz .

# change name
mv GCF_000001635.25_GRCm38.p5_genomic.fna.gz ref.fa.gz

gunzip ref.fa.gz
 
# END
