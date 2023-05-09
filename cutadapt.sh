#!/bin/bash
        #SBATCH --job-name=cutadapt
        #SBATCH --ntasks=8
        #SBATCH --mem=16000

        cd /work/maurielm/working/ND-5837
        mkdir trim50

        for R1 in *_L001_R1_001.fastq.gz
        do
	R2=${R1%%_L001_R1_001.fastq.gz}"_L001_R2_001.fastq.gz"
        cutadapt -u 50 -U 50 --no-trim -q 0 -o /work/maurielm/working/ND-5837/trim50/$R1 -p /work/maurielm/working/ND-5837/trim50/$R2 $R1 $R2
        done
