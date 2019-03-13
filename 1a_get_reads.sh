#!/bin/sh

#PBS -N download_reads
#PBS -q fnrdewoody
#PBS -l nodes=1:ppn=1,naccesspolicy=shared
#PBS -l walltime=100:00:00
#PBS -m abe

module purge
module load bioinfo

cd $PBS_O_WORKDIR

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025646_1LB/Unaligned_filtered/025646_1LB_S1_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025646_1LB/Unaligned_filtered/025646_1LB_S1_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025647_1RB/Unaligned_filtered/025647_1RB_S26_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025647_1RB/Unaligned_filtered/025647_1RB_S26_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025648_2LB/Unaligned_filtered/025648_2LB_S27_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025648_2LB/Unaligned_filtered/025648_2LB_S27_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025649_2RB/Unaligned_filtered/025649_2RB_S28_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025649_2RB/Unaligned_filtered/025649_2RB_S28_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025650_3LB/Unaligned_filtered/025650_3LB_S29_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025650_3LB/Unaligned_filtered/025650_3LB_S29_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025651_3RB/Unaligned_filtered/025651_3RB_S30_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025651_3RB/Unaligned_filtered/025651_3RB_S30_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025652_4LB/Unaligned_filtered/025652_4LB_S31_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025652_4LB/Unaligned_filtered/025652_4LB_S31_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025653_4RB/Unaligned_filtered/025653_4RB_S32_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025653_4RB/Unaligned_filtered/025653_4RB_S32_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025654_5LB/Unaligned_filtered/025654_5LB_S33_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025654_5LB/Unaligned_filtered/025654_5LB_S33_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025655_5RB/Unaligned_filtered/025655_5RB_S10_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025655_5RB/Unaligned_filtered/025655_5RB_S10_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025656_6LB/Unaligned_filtered/025656_6LB_S11_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025656_6LB/Unaligned_filtered/025656_6LB_S11_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025657_6RB/Unaligned_filtered/025657_6RB_S12_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025657_6RB/Unaligned_filtered/025657_6RB_S12_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025658_ILIS/Unaligned_filtered/025658_ILIS_S13_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025658_ILIS/Unaligned_filtered/025658_ILIS_S13_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025659_IRIS/Unaligned_filtered/025659_IRIS_S14_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025659_IRIS/Unaligned_filtered/025659_IRIS_S14_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025660_2LIS/Unaligned_filtered/025660_2LIS_S15_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025660_2LIS/Unaligned_filtered/025660_2LIS_S15_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025661_2RIS/Unaligned_filtered/025661_2RIS_S16_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025661_2RIS/Unaligned_filtered/025661_2RIS_S16_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025662_3LIS/Unaligned_filtered/025662_3LIS_S17_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025662_3LIS/Unaligned_filtered/025662_3LIS_S17_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025663_3RIS/Unaligned_filtered/025663_3RIS_S18_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025663_3RIS/Unaligned_filtered/025663_3RIS_S18_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025664_4LS/Unaligned_filtered/025664_4LS_S19_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025664_4LS/Unaligned_filtered/025664_4LS_S19_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025665_4RS/Unaligned_filtered/025665_4RS_S20_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025665_4RS/Unaligned_filtered/025665_4RS_S20_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025666_5LS/Unaligned_filtered/025666_5LS_S21_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025666_5LS/Unaligned_filtered/025666_5LS_S21_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025667_5RS/Unaligned_filtered/025667_5RS_S22_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025667_5RS/Unaligned_filtered/025667_5RS_S22_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025668_6LS/Unaligned_filtered/025668_6LS_S23_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025668_6LS/Unaligned_filtered/025668_6LS_S23_R2_filtered.fastq.gz

wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025669_6RS/Unaligned_filtered/025669_6RS_S24_R1_filtered.fastq.gz
wget --http-user=dewoody --http-password=quorum\!yolk https://genomics.rcac.purdue.edu/users/DeWoody/hr01890_Bendy-Chicken-QC/025669_6RS/Unaligned_filtered/025669_6RS_S24_R2_filtered.fastq.gz

# END
