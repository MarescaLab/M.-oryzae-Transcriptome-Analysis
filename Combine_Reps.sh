#!/bin/bash
#SBATCH --job-name=combine_reps
#SBATCH --ntasks=8
#SBATCH --mem=16000

	cd /work/maurielm/working/ND-5837/trim28
	
cat 4091_B_1_S19_L002_R1_001_val_1.fq.gz 4091-B-1_S4_L001_R1_001_val_1.fq.gz > 4091_B_R1_val1_4091vB1R1.fq.gz
cat 4091_B_1_S19_L002_R2_001_val_2.fq.gz 4091-B-1_S4_L001_R2_001_val_2.fq.gz > 4091_B_R2_val2_4091vB1R2.fq.gz
cat 4091_B_2_S20_L002_R1_001_val_1.fq.gz 4091-B-2_S5_L001_R1_001_val_1.fq.gz > 4091_B_R1_val1_4091vB2R1.fq.gz
cat 4091_B_2_S20_L002_R2_001_val_2.fq.gz 4091-B-2_S5_L001_R2_001_val_2.fq.gz > 4091_B_R2_val2_4091vB2R2.fq.gz
cat 4091_B_3_S21_L002_R1_001_val_1.fq.gz 4091-B-3_S6_L001_R1_001_val_1.fq.gz > 4091_B_R1_val1_4091vB3R1.fq.gz
cat 4091_B_3_S21_L002_R2_001_val_2.fq.gz 4091-B-3_S6_L001_R2_001_val_2.fq.gz > 4091_B_R2_val2_4091vB3R2.fq.gz
cat 4091_C3_1_S16_L002_R1_001_val_1.fq.gz 4091-C3-1_S1_L001_R1_001_val_1.fq.gz > 4091_C3_R1_val1_4091vC1R1.fq.gz
cat 4091_C3_1_S16_L002_R2_001_val_2.fq.gz 4091-C3-1_S1_L001_R2_001_val_2.fq.gz > 4091_C3_R2_val2_4091vC1R2.fq.gz
cat 4091_C3_2_S17_L002_R1_001_val_1.fq.gz 4091-C3-2_S2_L001_R1_001_val_1.fq.gz > 4091_C3_R1_val1_4091vC2R1.fq.gz
cat 4091_C3_2_S17_L002_R2_001_val_2.fq.gz 4091-C3-2_S2_L001_R2_001_val_2.fq.gz > 4091_C3_R2_val2_4091vC2R2.fq.gz
cat 4091_C3_3_S18_L002_R1_001_val_1.fq.gz 4091-C3-3_S3_L001_R1_001_val_1.fq.gz > 4091_C3_R1_val1_4091vC3R1.fq.gz
cat 4091_C3_3_S18_L002_R2_001_val_2.fq.gz 4091-C3-3_S3_L001_R2_001_val_2.fq.gz > 4091_C3_R2_val2_4091vC3R2.fq.gz
cat 4091_S4_r1_S28_L002_R1_001_val_1.fq.gz 4091-S4-r1_S13_L001_R1_001_val_1.fq.gz > 4091_S4_R1_val1_4091vS1R1.fq.gz
cat 4091_S4_r1_S28_L002_R2_001_val_2.fq.gz 4091-S4-r1_S13_L001_R2_001_val_2.fq.gz  > 4091_S4_R2_val2_4091vS1R2.fq.gz
cat 4091_S4_r2_S29_L002_R1_001_val_1.fq.gz 4091-S4-r2_S14_L001_R1_001_val_1.fq.gz > 4091_S4_R1_val1_4091vS2R1.fq.gz
cat 4091_S4_r2_S29_L002_R2_001_val_2.fq.gz 4091-S4-r2_S14_L001_R2_001_val_2.fq.gz > 4091_S4_R2_val2_4091vS2R2.fq.gz
cat 4091_S4_r3_S30_L002_R1_001_val_1.fq.gz 4091-S4-r3_S15_L001_R1_001_val_1.fq.gz > 4091_S4_R1_val1_4091vS3R1.fq.gz
cat 4091_S4_r3_S30_L002_R2_001_val_2.fq.gz 4091-S4-r3_S15_L001_R2_001_val_2.fq.gz > 4091_S4_R2_val2_4091vS3R2.fq.gz
cat pth11_B_1_S22_L002_R1_001_val_1.fq.gz pth11-B-1_S7_L001_R1_001_val_1.fq.gz > pth11_B_R1_val1_pth11vB1R1.fq.gz
cat pth11_B_1_S22_L002_R2_001_val_2.fq.gz pth11-B-1_S7_L001_R2_001_val_2.fq.gz > pth11_B_R2_val2_pth11vB1R2.fq.gz

cat pth11_B_2_S23_L002_R1_001_val_1.fq.gz pth11-B-2_S8_L001_R1_001_val_1.fq.gz > pth11_B_R1_val1_pth11vB2R1.fq.gz
cat pth11_B_2_S23_L002_R2_001_val_2.fq.gz pth11-B-2_S8_L001_R2_001_val_2.fq.gz > pth11_B_R2_val2_pth11vB2R2.fq.gz
cat pth11_B_3_S24_L002_R1_001_val_1.fq.gz pth11-B-3_S9_L001_R1_001_val_1.fq.gz > pth11_B_R1_val1_pth11vB3R1.fq.gz
cat pth11_B_3_S24_L002_R2_001_val_2.fq.gz pth11-B-3_S9_L001_R2_001_val_2.fq.gz > pth11_B_R2_val2_pth11vB3R2.fq.gz
cat pth11_C3_1_S25_L002_R1_001_val_1.fq.gz pth11-C3-1_S10_L001_R1_001_val_1.fq.gz > pth11_C3_R1_val1_pth11vC1R1.fq.gz
cat pth11_C3_1_S25_L002_R2_001_val_2.fq.gz pth11-C3-1_S10_L001_R2_001_val_2.fq.gz > pth11_C3_R2_val2_pth11vC1R2.fq.gz
cat pth11_C3_2_S26_L002_R1_001_val_1.fq.gz pth11-C3-2_S11_L001_R1_001_val_1.fq.gz > pth11_C3_R1_val1_pth11vC2R1.fq.gz
cat pth11_C3_2_S26_L002_R2_001_val_2.fq.gz pth11-C3-2_S11_L001_R2_001_val_2.fq.gz > pth11_C3_R2_val2_pth11vC2R2.fq.gz
cat pth11_C3_3_S27_L002_R1_001_val_1.fq.gz pth11-C3-3_S12_L001_R1_001_val_1.fq.gz > pth11_C3_R1_val1_pth11vC3R1.fq.gz
cat pth11_C3_3_S27_L002_R2_001_val_2.fq.gz pth11-C3-3_S12_L001_R2_001_val_2.fq.gz > pth11_C3_R2_val2_pth11vC3R2.fq.gz
cat pth11_S4_r1_S31_L002_R1_001_val_1.fq.gz pth11-S4-r1_S16_L001_R1_001_val_1.fq.gz > pth11_S4_R1_val1_pth11vS1R1.fq.gz
cat pth11_S4_r1_S31_L002_R2_001_val_2.fq.gz pth11-S4-r1_S16_L001_R2_001_val_2.fq.gz > pth11_S4_R2_val2_pth11vS1R2.fq.gz
cat pth11_S4_r2_S32_L002_R1_001_val_1.fq.gz pth11-S4-r2_S17_L001_R1_001_val_1.fq.gz > pth11_S4_R1_val1_pth11vS2R1.fq.gz
cat pth11_S4_r2_S32_L002_R2_001_val_2.fq.gz pth11-S4-r2_S17_L001_R2_001_val_2.fq.gz > pth11_S4_R2_val2_pth11vS2R2.fq.gz
cat pth11_S4_r3_S33_L002_R1_001_val_1.fq.gz pth11-S4-r3_S18_L001_R1_001_val_1.fq.gz > pth11_S4_R1_val1_pth11vS3R1.fq.gz
cat pth11_S4_r3_S33_L002_R2_001_val_2.fq.gz pth11-S4-r3_S18_L001_R2_001_val_2.fq.gz > pth11_S4_R2_val2_pth11vS3R2.fq.gz
