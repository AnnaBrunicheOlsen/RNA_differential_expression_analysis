#!/bin/sh

#PBS -N mapping_stats
#PBS -q fnrdewoody
#PBS -l nodes=1:ppn=1,naccesspolicy=shared
#PBS -l walltime=300:00:00
#PBS -m abe

module purge
module load bioinfo
module load fastqc

cd $PBS_O_WORKDIR

cat samples.txt | while read -r LINE

do

echo $LINE

cd $LINE
cd tophat_out

# left
leftmap=$(sed -n '3 p' align_summary.txt)
Lmap=$(echo $leftmap | grep -o -P '.{0,4}%')

leftmulti=$(sed -n '4 p' align_summary.txt)
Lmulti=$(echo $leftmulti | grep -o -P '.{0,4}%')

# right
rightmap=$(sed -n '7 p' align_summary.txt)
Rmap=$(echo $rightmap | grep -o -P '.{0,4}%')

rightmulti=$(sed -n '8 p' align_summary.txt)
Rmulti=$(echo $rightmulti | grep -o -P '.{0,4}%')

# paired
allmulti=$(sed -n '12 p' align_summary.txt)
Amulti=$(echo $allmulti | grep -o -P '.{0,4}%')

alldis=$(sed -n '13 p' align_summary.txt)
Adis=$(echo $alldis | grep -o -P '.{0,4}%')

allcon=$(sed -n '14 p' align_summary.txt)
Acon=$(echo $allcon | grep -o -P '.{0,4}%')

# total number of reads
totalmap=$(sed -n '2 p' align_summary.txt)
total=$(echo $totalmap | grep -o '........$')

#echo -e "PWD\t totalReads\t leftMapped\t leftMultiAlign\t rightMapped\t rightMultiAlign\t allMultiAlign\t aDiscordantAlign\t aConcordant" > mapping_stats.txt

echo -e "$PWD\t $total\t $Lmap\t $Lmulti\t $Rmap\t $Rmulti\t $Amulti\t $Adis\t $Acon" >> /scratch/snyder/a/abruenic/RNA_bendy_chicken/data/mapping_stats.txt


cd ..
cd ..

done

# END
