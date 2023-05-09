#!/bin/bash
        #SBATCH --job-name=fastqc
        #SBATCH --ntasks=8
        #SBATCH --mem=16000

        /usr/local/FastQC/fastqc -j /usr/bin/java /work/maurielm/working/ND-5837/*.fastq -outdir=/work/maurielm/working/ND-5837/fastqc -t 4
