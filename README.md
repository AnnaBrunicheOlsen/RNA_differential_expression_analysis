# Differential expression analyses
These scripts are developed for the Bendy Chicken project.

September 2017

Author: Anna Brüniche-Olsen

For each of the scripts the computational needs are listed.
Make sure to supply a "sample.txt" file with a list of the sample names. This file is used to create dir and go through the steps in the pipeline for each dir.

The scripts should be run in the following order:

# 1a_get_reads.sh
1 CPU

This downloads sequencing reads from the Genomics Facility. 

# 1b_get_genome.sh
1 CPU

Downloads reference genome and change name to ref.fa.

# 2_QC.sh
1 CPU

Check QC of all sequencing reads using FASTQC and make sure that they 'pass' the "per base sequence quality" and "adapter content" steps.

# 3a_infex_ref.sh
1 CPU

Index refence fasta file using BOWTIE.

# 4_mapping.sh
CPU 20

Map sequencing reads to reference using TOPHAT.

# 5_annotation.sh
1 CPU

Download annotation file (.gff). Convert bam file to sam using SAMTOOLS. Create a counts matrix using HT-SEQ.

# 6_diff_gene_exp.sh
1 CPU

Run CUFFLINKS in mapping file in order to create a .counts file for each sample. Move the .counts file to the "count_matrix" dir.

# 7_combine_count_matrix.sh
1 CPU

Make combined count matrix. A list of samples needs to be supplied.

# 8_diff_gene_exp.sh
1 CPU

Use CUFFLINKS to create .gtf file for each sample. Move .gtf files to "count_matrix" folder.

# 9_merge_cufflinks.sh
1 CPU

Edit the sample.txt file to assembly_list.txt and merge all the .gtf files.

# 10_DGE_cufflinkes.sh
CPU 20

Use CUFFQUANT to measure DGE for the samples. Produce .cxb files. These gets moved to the "count_matrix" folder.

# 11_test_X_overview.sh
CPU 1

These files "...test_1..., test_2... etc" represent the different pairwise analyses we are interested in.

# END




