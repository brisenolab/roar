# ROAR - Penn State University:: High Perfomance Computer!!

## Connect to roarrr

```bash
ssh <userid>@submit.hpc.psu.edu
```
Storage is in `/storage/work/ria5282`, you should have your own workind directory for data analysis. 
At this point, we have 5 Tb of storage.

## Modules loaded

To create modules check [MODULES](https://github.com/brisenolab/roar/blob/main/modules/createmodules.md) \
To check the slurm script [SLURM example](https://github.com/brisenolab/roar/tree/main/slurm)

```bash
module load spades
spades.py 
SPAdes genome assembler v4.2.0
module load ragtag
ragtag.py --version 
2.1.0
```



### Where to start
Guide to [reproducible code](https://www.britishecologicalsociety.org/wp-content/uploads/2017/12/guide-to-reproducible-code.pdf) in Ecology and Evolution


### Manual of setting your computer for git and other computer science stuff
#### Creating a project in github
Step 1) Configure your [Git](https://github.com/brisenolab/roar/blob/main/git)
Step 2) Create a new repository on the command line
```
echo "# roar" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/brisenolab/roar.git
git push -u origin main
```
#... or push an existing repository from the command line
```
git remote add origin https://github.com/brisenolab/roar.git
git branch -M main
git push -u origin main
```
Step 3) Repeat

### SLURM
[SLURM](https://github.com/brisenolab/roar/blob/main/slurmscript.m) script 

### Activating conda: CQLS qsub
```bash
eval "$(conda shell.bash hook)"
conda activate <package>
```

# useful loops

There are several ways to do for loops in bash, so far this is my favorite syntax:

```
for k in file.fasta;
do
  program $k -parameter1 -par2 -out k_out
done
```

```
while IFS= read -r line
do
  Rscript --vanilla ~/folder/file.R $line
done < file_with_lines.txt
```
I like this bash script to go trhough multiple files: useful_script.sh

```
list=$(ls *.fasta | cut -d_ -f1)
while IFS= read -r line
do
  command -in $line -out $line_out
done <<< "list"
`
Then execute it with sh useful_script.sh, probably you nedd to chmod +x useful_script.sh first.
