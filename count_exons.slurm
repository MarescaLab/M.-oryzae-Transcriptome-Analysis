#!/bin/bash
#SBATCH --job-name=counting
#SBATCH --mem=32000
#SBATCH -c 1

#JOB LOG HEADER
perl -E 'say"="x80'; echo "JOB STARTED: `date`"; echo "NODE: `hostname`"; echo "SCRIPT ${0}:"; cat $0; perl -E 'say"="x80'

cd /work/maurielm/working/ND-5837/Counting


#SOFTWARE REQUIREMENTS

#VARIABLES
INDIR=/work/maurielm/working/ND-5837/Mapping
GFF=/work/maurielm/working/ND-5837/GCF/Mo_genome.gff
OUTDIR=/work/maurielm/working/ND-5837/Count_Exons

#COMMAND(s) TO RUN
# THIS LOOP WILL RUN THE INDENTED PART ON EACH FILE ENDING IN .bam IN THE INPUT DIRECTORY

for i in `ls -1 ${INDIR}/*.bam`
do
   echo "PROCESSING FILE: ${i}"
   PREFIX=`basename -s ".bam" ${i}`

   htseq-count --mode intersection-nonempty \
      --stranded no \
      --format bam \
      --type exon \
      --idattr ID \
      ${i} \
      ${GFF} \
      > ${OUTDIR}/${PREFIX}.count.txt
done


#JOB LOG FOOTER
perl -E 'say"="x80'; echo "JOB COMPLETED: `date`"; perl -E 'say"="x80'
