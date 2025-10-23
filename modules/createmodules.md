1) Create the modulefile

Pick a user module path (Lmod-standard). One good choice:
```
mkdir -p $HOME/.local/share/lmod/modulefiles/spades
```

Create the file:
```
VI $HOME/.local/share/lmod/modulefiles/spades/4.2.0.lua
```

Paste this content:
```
--% Module for SPAdes 4.2.0 (user-local install)

whatis([[Name : SPAdes]])
whatis([[Version : 4.2.0]])
whatis([[Target : x86_64 Linux]])
whatis([[Description : SPAdes: St. Petersburg genome assembler for single-cell, standard, metagenomic, RNA, and plasmid assemblies.]])
whatis('URL: https://cab.spbu.ru/software/spades/')

help([[
SPAdes 4.2.0 (user-local)
-------------------------
Home   : /storage/home/ria5282/soft/SPAdes-4.2.0-Linux
Bin    : $SPADES_HOME/bin (spades.py, metaspades.py, rnaspades.py, etc.)

Notes:
* This module only prepends PATH and sets SPADES_HOME.
* Typical usage:
    spades.py --version
    spades.py -1 reads_1.fq.gz -2 reads_2.fq.gz -o outdir
* Consider setting OMP_NUM_THREADS to control threading on the HPC:
    export OMP_NUM_THREADS=8
]])

-- Base install dir (not the 'bin'; we join to 'bin' below)
local base = '/storage/home/ria5282/soft/SPAdes-4.2.0-Linux'

-- Avoid loading multiple SPAdes at once
conflict('spades')

-- Useful env var for workflows
setenv('SPADES_HOME', base)

-- PATH so spades.py et al. are available
prepend_path('PATH', pathJoin(base, 'bin'))

-- (Optional) If you keep SPAdes docs/man locally, uncomment:
-- prepend_path('MANPATH', pathJoin(base, 'share', 'man'))

-- Tag this module in a family if you want to prevent loading another SPAdes at the same time
-- family('spades')
```

2) Tell Lmod where to find your user modules (one-time)
```
module use $HOME/.local/share/lmod/modulefiles
```

(You can add that line to your ~/.bashrc so it persists.)

3) Load and test
```
module avail spades
module load spades/4.2.0
spades.py --version
```
You should see SPAdes v4.2.0.
