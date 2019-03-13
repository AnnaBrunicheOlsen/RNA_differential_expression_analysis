#!/bin/sh

#PBS -N count_matrix
#PBS -q fnrdewoody
#PBS -l nodes=1:ppn=1,naccesspolicy=shared
#PBS -l walltime=10:00:00
#PBS -m abe

module purge
module load bioinfo

cd $PBS_O_WORKDIR

# change names of files to be replicates
# see table with new names (sample analysis list 18092017)

# make header for count matrix
echo -e "Genes\tt1LBrep1\tt1LBrep2\tt1LBrep3\tt1RBrep1\tt1RBrep2\tt1RBrep3\tt1LSrep1\tt1LSrep2\tt1LSrep3\tt1RSrep1\tt1RSrep2\tt1RSrep3\tt5LBrep1\tt5LBrep2\tt5LBrep3\tt5LSrep1\tt5LSrep2\tt5LSrep3\tt5RBrep1\tt5RBrep2\tt5RBrep3\tt5RSrep1\tt5RSrep2\tt5RSrep3" > matrix.part1

# make table with count matrix
paste t1LBrep1.counts t1LBrep2.counts t1LBrep3.counts t1RBrep1.counts t1RBrep2.counts t1RBrep3.counts t1LSrep1.counts \
t1LSrep2.counts t1LSrep3.counts t1RSrep1.counts t1RSrep2.counts t1RSrep3.counts t5LBrep1.counts t5LBrep2.counts \
t5LBrep3.counts t5LSrep1.counts t5LSrep2.counts t5LSrep3.counts t5RBrep1.counts t5RBrep2.counts t5RBrep3.counts \
t5RSrep1.counts t5RSrep2.counts t5RSrep3.counts > matrix.part2 

cut -f 1,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48 matrix.part2 > matrix.part3

cat matrix.part1 matrix.part3 > counts_matrix.txt

#  Remove last 5 lines of HTSeq statistics information from the file
lines=$(wc -l < counts_matrix.txt)
ends=$(bc <<< "($lines - 5)")

# insert lines and ends numbers
sed '41577,41581d' < counts_matrix.txt > counts_matrix_final.txt

# END


