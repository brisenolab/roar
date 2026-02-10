# SLURM configuration

| Account | qos | aprtition | combinaton compatibilty |
|---------|-----|------------|--------------|
| open    |normal| basic    |     ✅         |
| ria5282_c+ |  normal  |    ?    |               |
|         |    |            |               |
|         |    |            |               |


## Submit your job with 
```sbatch spades.sbatch```

## SLURM template 
Running example
```
#!/bin/bash
#SBATCH --account=open
#SBATCH --qos=normal
#SBATCH --partition=basic
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --mem=4gb
#SBATCH --time=00:30:00
#SBATCH --job-name=spades-testcc

# as usual, cd to the submit directory
cd $SLURM_SUBMIT_DIR

# load the needed module
module load spades

SYSTEM=$SLURM_SUBMIT_DIR/System
spades.py --isolate  -1 24137D-01-111_S220_L006_R1_001.fastq.gz -2 24137D-01-111_S220_L006_R2_001.fastq.gz -o "${line}_out" -n 8
```
