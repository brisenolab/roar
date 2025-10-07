# ROAR - Penn State University:: High Perfomance Computer!!


## Where to start
Guide to [reproducible code](https://www.britishecologicalsociety.org/wp-content/uploads/2017/12/guide-to-reproducible-code.pdf) in Ecology and Evolution


## Manual of setting your computer for git and other computer science stuff
### Creating a project in github
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
