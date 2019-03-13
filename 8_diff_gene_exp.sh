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

cat samples.txt | while read -r LINE

do

echo $LINE

cd $LINE

cd tophat_out

# Run cufflinks on Tophat's mapping file
cufflinks -G GCF_000001635.25_GRCm38.p5_genomic.gff accepted_hits.bam

# change name for output
mv transcripts.gtf $LINE.gtf

mv $LINE.gtf /scratch/snyder/a/abruenic/RNA_bendy_chicken/data/count_matrix/

cd ..
cd ..

done

# END