#!/bin/bash
#SBATCH --account=roar
#SBATCH --qos=roar
#SBATCH --job-name=JOB
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ralcala@psu.edu
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4gb
#SBATCH --time=60:00:00
#SBATCH --output=JOB_%j.out
##SBATCH --array=1-981%100
date; hostname; pwd

#@ Execute this program using this command
#@
# sbatch JOB.sbatch to_compress/

##two methods
module load roar

#@ probably i will need to do add PATH1=$1
DIR=$1

echo "beginning tar"
tar czf "$DIR".tar.gz "$DIR"


done;
