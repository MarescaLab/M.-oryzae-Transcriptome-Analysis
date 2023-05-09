#!/bin/bash
#SBATCH --job-name=bamindex
#SBATCH --mem=64000
#SBATCH -c 16

#JOB LOG HEADER
perl -E 'say"="x80'; echo "JOB STARTED: `date`"; echo "NODE: `hostname`"; echo "SCRIPT ${0}:"; cat $0; perl -E 'say"="x80'

cd /work/maurielm/working/ND-5837/Mapping

#SOFTWARE REQUIREMENTS

#VARIABLES
INFILE=/work/maurielm/working/ND-5837/Mapping/4091_B_R1_val1_4091vB1R1.bam
PREFIX=`basename -s ".bam" ${INFILE}`

# COMMAND(s) TO RUN
# THIS COMMAND HAS A SLIGHTLY UPDATED SYNTAX DUE TO A SOFTWARE UPDATE
samtools sort -@ 16 -m 3750M -o ${PREFIX}.bam ${INFILE}
samtools index ${PREFIX}.bam

#JOB LOG FOOTER
perl -E 'say"="x80'; echo "JOB COMPLETED: `date`"; perl -E 'say"="x80'

#JOB LOG FOOTER
perl -E 'say"="x80'; echo "JOB COMPLETED: `date`"; perl -E 'say"="x80'
