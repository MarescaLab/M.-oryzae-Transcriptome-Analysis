#!/bin/bash
        #SBATCH --job-name=hisat2
        #SBATCH --ntasks=8
        #SBATCH --mem=16000

	PATH=$PATH:/usr/local/hisat2

	hisat2-build -p 16 Mo_genome.fa genome
