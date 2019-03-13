#!/bin/sh

#PBS -N RNA_DGE
#PBS -q fnrquail
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
cufflinks -G Mus_musculus.GRCm38.89.gtf.gz accepted_sorted.bam	

# copy count file to count_matrix dir
cp accepted_sorted_gff.counts $LINE.counts

mv $LINE.counts /scratch/snyder/a/abruenic/RNA_bendy_chicken/data/count_matrix/

cd ..
cd ..

done

# END
