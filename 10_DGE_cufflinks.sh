#!/bin/sh

#PBS -N cufflinks
#PBS -q fnrdewoody
#PBS -l nodes=1:ppn=18,naccesspolicy=shared
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

# differential expression between all samples
cuffquant -p 18 \
/scratch/snyder/a/abruenic/RNA_bendy_chicken/data/count_matrix/merged.gtf \
accepted_hits.bam 

# change name for output
mv abundances.cxb $LINE.cxb

mv $LINE.cxb /scratch/snyder/a/abruenic/RNA_bendy_chicken/data/count_matrix/

cd ..
cd ..

done


# END

