#!/bin/bash
        #SBATCH --job-name=trim_galore
        #SBATCH --ntasks=8
        #SBATCH --mem=16000

        cd /work/maurielm/working/ND-5837
        mkdir trim28 

        export PATH=$PATH:/usr/local/FastQC

        for R1 in *_R1_001.fastq.gz
        do
        R2=${R1%%_R1_001.fastq.gz}"_R2_001.fastq.gz"
        trim_galore -q 28 --fastqc --length 35 --paired --stringency 8 -o /work/maurielm/working/ND-5837/trim28 $R1 $R2
        done

