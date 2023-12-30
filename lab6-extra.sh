#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno07/
#SBATCH -J par-lab2
#SBATCH --ntasks-per-node=4  # a maximum count of tasks per node
#SBATCH --cpus-per-task=4    # number of processors per task
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es

module load singularity

singularity exec ./singularity/my-python.sif ipython ./primes-exercise-alumno07.ipynb 1 60000
singularity exec ./singularity/my-python.sif ipython ./primes-exercise-alumno07.ipynb 1 10000


