#!/bin/bash
#SBATCH --account=open
#SBATCH --qos=open
#SBATCH --job-name=cool_script
#SBATCH --mail-type=ALL
#SBATCH --mail-user=your@email.com
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=500mb
#SBATCH --time=1:00:00
#SBATCH --output=coolscr_%j.out
#SBATCH --err=coolscr_%j.out
#SBATCH --array=1-299%20
date; hostname; pwd

# load modules
module load roar

# Add PATH1=$1
PATH=$1
# sbatch protDB.sbatch file_of_files (fof)
DIR=$1
ls $DIR > dir.fof
#echo "$DIR"
echo "Cool script begins process :::"
ID=$(sed -n ${SLURM_ARRAY_TASK_ID}p dir.fof)

exec scritp.sh ID
