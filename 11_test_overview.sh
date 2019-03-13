#!/bin/sh

#PBS -N DGE_tests
#PBS -q fnrdewoody
#PBS -l nodes=1:ppn=1,naccesspolicy=shared
#PBS -l walltime=300:00:00
#PBS -m abe

module purge
module load bioinfo
module load cufflinks

# Test_1
cuffdiff -v merged.gtf -L t1LB,t1RB t1LBrep1.cxb t1RBrep1.cxb -o Test_1a
cuffdiff -v merged.gtf -L t1LB,t1RB t1LBrep2.cxb t1RBrep2.cxb -o Test_1b
cuffdiff -v merged.gtf -L t1LB,t1RB t1LBrep3.cxb t1RBrep3.cxb -o Test_1c
cuffdiff -v merged.gtf -L t1LB,t1RB t1LBrep1.cxb,t1LBrep2.cxb,t1LBrep3.cxb \
t1RBrep1.cxb,t1RBrep2.cxb,t1RBrep3.cxb -o Test_1all

# Test_2
cuffdiff -v merged.gtf -L t5LB,t5RB t5LBrep1.cxb t5RBrep1.cxb -o Test_2a
cuffdiff -v merged.gtf -L t5LB,t5RB t5LBrep2.cxb t5RBrep2.cxb -o Test_2b
cuffdiff -v merged.gtf -L t5LB,t5RB t5LBrep3.cxb t5RBrep3.cxb -o Test_2c
cuffdiff -v merged.gtf -L t5LB,t5RB t5LBrep1.cxb,t5LBrep2.cxb,t5LBrep3.cxb \
t5RBrep1.cxb,t5RBrep2.cxb,t5RBrep3.cxb -o Test_2all

# Test_3
cuffdiff -v merged.gtf -L t1LS,t1RS t1LSrep1.cxb t1RSrep1.cxb -o Test_3a
cuffdiff -v merged.gtf -L t1LS,t1RS t1LSrep2.cxb t1RSrep2.cxb -o Test_3b
cuffdiff -v merged.gtf -L t1LS,t1RS t1LSrep3.cxb t1RSrep3.cxb -o Test_3c
cuffdiff -v merged.gtf -L t1LS,t1RS t1LSrep1.cxb,t1LSrep2.cxb,t1LSrep3.cxb \
t1RSrep1.cxb,t1RSrep2.cxb,t1RSrep3.cxb -o Test_3all

# Test_4
cuffdiff -v merged.gtf -L t5LS,t5RS t5LSrep1.cxb t5RSrep1.cxb -o Test_4a
cuffdiff -v merged.gtf -L t5LS,t5RS t5LSrep2.cxb t5RSrep2.cxb -o Test_4b
cuffdiff -v merged.gtf -L t5LS,t5RS t5LSrep3.cxb t5RSrep3.cxb -o Test_4c
cuffdiff -v merged.gtf -L t5LS,t5RS t5LSrep1.cxb,t5LSrep2.cxb,t5LSrep3.cxb \
t5RSrep1.cxb,t5RSrep2.cxb,t5RSrep3.cxb -o Test_4all

# Test_5
cuffdiff -v merged.gtf -L t1LB,t1LS t1LBrep1.cxb t1LSrep1.cxb -o Test_5a
cuffdiff -v merged.gtf -L t1LB,t1LS t1LBrep2.cxb t1LSrep2.cxb -o Test_5b
cuffdiff -v merged.gtf -L t1LB,t1LS t1LBrep3.cxb t1LSrep3.cxb -o Test_5c
cuffdiff -v merged.gtf -L t1LB,t1LS t1LBrep1.cxb,t1LBrep2.cxb,t1LBrep3.cxb \
t1LSrep1.cxb,t1LSrep2.cxb,t1LSrep3.cxb -o Test_5all

# Test_6
cuffdiff -v merged.gtf -L t1RB,t1RS t1RBrep1.cxb t1RSrep1.cxb -o Test_6a
cuffdiff -v merged.gtf -L t1RB,t1RS t1RBrep2.cxb t1RSrep2.cxb -o Test_6b
cuffdiff -v merged.gtf -L t1RB,t1RS t1RBrep3.cxb t1RSrep3.cxb -o Test_6c
cuffdiff -v merged.gtf -L t1RB,t1RS t1RBrep1.cxb,t1RBrep2.cxb,t1RBrep3.cxb \
t1RSrep1.cxb,t1RSrep2.cxb,t1RSrep3.cxb -o Test_6all

# Test_7
cuffdiff -v merged.gtf -L t5LB,t5LS t5LBrep1.cxb t5LSrep1.cxb -o Test_7a
cuffdiff -v merged.gtf -L t5LB,t5LS t5LBrep2.cxb t5LSrep2.cxb -o Test_7b
cuffdiff -v merged.gtf -L t5LB,t5LS t5LBrep3.cxb t5LSrep3.cxb -o Test_7c
cuffdiff -v merged.gtf -L t5LB,t5LS t5LBrep1.cxb,t5LBrep2.cxb,t5LBrep3.cxb \
t5LSrep1.cxb,t5LSrep2.cxb,t5LSrep3.cxb -o Test_7all

# Test_8
cuffdiff -v merged.gtf -L t5RB,t5RS t5RBrep1.cxb t5RSrep1.cxb -o Test_8a
cuffdiff -v merged.gtf -L t5RB,t5RS t5RBrep2.cxb t5RSrep2.cxb -o Test_8b
cuffdiff -v merged.gtf -L t5RB,t5RS t5RBrep3.cxb t5RSrep3.cxb -o Test_8c
cuffdiff -v merged.gtf -L t5RB,t5RS t5RBrep1.cxb,t5RBrep2.cxb,t5RBrep3.cxb \
t5RSrep1.cxb,t5RSrep2.cxb,t5RSrep3.cxb -o Test_8all

# END

