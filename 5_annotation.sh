#!/bin/sh

#PBS -N RNA_annotation
#PBS -q fnrquail
#PBS -l nodes=1:ppn=1,naccesspolicy=shared
#PBS -l walltime=300:00:00
#PBS -m abe

module purge
module load bioinfo
module load samtools
module load htseq

cd $PBS_O_WORKDIR

cat samples.txt | while read -r LINE

do

echo $LINE

cd $LINE

cd tophat_out

# copy annotation file into dir
cp /scratch/snyder/a/abruenic/RNA_bendy_chicken/data/GCF_000001635.25_GRCm38.p5_genomic.gff .

# Sorting the .bam file to be compatible with HTSeq
samtools sort -n accepted_hits.bam -o accepted_sorted.bam

# Converting the .bam file to .sam to be compatible with HTSeq
samtools view accepted_sorted.bam > accepted_sorted.sam

gunzip *gtf.gz

# Create a counts matrix using HTSeq
htseq-count -m union -s no -t exon -i gene  \
accepted_sorted.sam GCF_000001635.25_GRCm38.p5_genomic.gff > accepted_sorted_gff.counts	   
   
cd ..
cd ..

done

# END

