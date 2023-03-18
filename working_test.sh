#!/bin/bash
#SBATCH -N 2
#SBATCH --ntasks-per-node 2
#SBATCH -t 03:03:00
#SBATCH --mem=1GB
#SBATCH --array=1-2
#SBATCH --account=eng131adminprj

### NOTE: you must know the number of files at the time of sbatch

. /etc/profile.d/modules.sh
module load shared
module load slurm/picotte

module load python/anaconda3
. ~/.bashrc
conda activate scene

declare -a filenames=( $( cat mp4_files.txt ) )

taskid=$(printf %02d $SLURM_ARRAY_TASK_ID)

file=${filenames[$( expr $SLURM_ARRAY_TASK_ID - 1 )]}
echo $file


# echo ${filenames[$( expr $SLURM_ARRAY_TASK_ID - 1 )]}
# echo $(name_)

scenedetect --input ${filenames[$( expr $SLURM_ARRAY_TASK_ID - 1 )]} detect-adaptive -t 25.0 list-scenes -o /scratch/jca92/pictures/$(basename $file .mp4)/ save-images -o /scratch/jca92/pictures/$(basename $file .mp4)/