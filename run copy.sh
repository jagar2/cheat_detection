#!/bin/bash
#SBATCH --nodes=2
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=1
#SBATCH --time=03:00:00
#SBATCH --array=1-2
#SBATCH --mem=4GB

### NOTE: you must know the number of files at the time of sbatch

module load python/anaconda3
conda activate ./home/jca92/.conda/envs/scene

declare -a filenames=( $( /scratch/jca92/mp4_files.txt ) )

taskid=$(printf %02d $SLURM_ARRAY_TASK_ID)



echo ${filenames[$( expr $SLURM_ARRAY_TASK_ID - 1 )]}

echo $(basename filenames[$( expr $SLURM_ARRAY_TASK_ID - 1 )] | cut -d. -f1)