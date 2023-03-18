# run this command to create a list of text files
#find /path/to/directory -name "*.mp4" > mp4_files.txt



# module load python/anaconda3


#for fn in $(cat list_of_files.txt) ; do echo "hello" > $fn ; done

#SBATCH --account=eng131adminprj
#newgroup eng131adminGrp

# interactive session
#  srun --nodes=1 --cpus-per-task=4 --mem=32G --time=12:15:00 --pty /bin/bash -l

# scenedetect --input /scratch/jca92/videos/video1751937899.mp4 detect-adaptive -t 25.0 list-scenes save-images -o "/scratch/jca92/new/" 