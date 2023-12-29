#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno07/
#SBATCH -J lab6
#SBATCH --ntasks-per-node=4  # a maximum count of tasks per node
#SBATCH --cpus-per-task=4    # number of processors per task
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es

module load singularity

singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot

singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt
