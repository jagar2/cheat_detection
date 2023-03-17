# module load python/anaconda3

#SBATCH --account=eng131adminprj
#newgroup eng131adminGrp

# interactive session
#  srun --nodes=1 --cpus-per-task=4 --mem=32G --time=12:15:00 --pty /bin/bash -l

# scenedetect --input /scratch/jca92/videos/video1211321043.mp4 detect-adaptive list-scenes save-images -o "./new/" -t 25.0