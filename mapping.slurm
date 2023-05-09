#!/bin/bash
#SBATCH --job-name=mapping
#SBATCH --mem=32000
#SBATCH -c 16

#JOB LOG HEADER
perl -E 'say"="x80'; echo "JOB STARTED: `date`"; echo "NODE: `hostname`"; echo "SCRIPT ${0}:"; cat $0; perl -E 'say"="x80'

cd /work/maurielm/working/ND-5837/Mapping

#SOFTWARE REQUIREMENTS
export PATH=$PATH:/usr/local/hisat2

INFILE=/work/maurielm/working/ND-5837/trim28/Combined/4091_B_R1_val1_4091vB1R1.fq.gz          
INDEX=/work/maurielm/working/ND-5837/GCF/genome
PREFIX=`basename -s ".fq.gz" ${INFILE}`
OUTFILE=/work/maurielm/working/ND-5837/Mapping/${PREFIX}.bam

# COMMAND(s) TO RUN
hisat2 -p ${SLURM_CPUS_PER_TASK} -x ${INDEX} -U ${INFILE} \
| samtools view -Sbo ${OUTFILE} -

#JOB LOG FOOTER
perl -E 'say"="x80'; echo "JOB COMPLETED: `date`"; perl -E 'say"="x80'
