#!/bin/bash
#SBATCH -J run_examples
#SBATCH -o tutorial.o%J
#SBATCH -A da-cpu
#SBATCH -q debug
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=0
#SBATCH -t 05:00

# path to your clone
clone_dir=EMC-Intern

# path to your work dir
work_dir=EMC-Intern

# load modules
module load intel
module use $clone_dir/modulefiles
module load Tutorial/orion

# create work dir
mkdir -p $work_dir

# copy executables to work dir
cp $clone_dir/exercise3/cpp/sine.x $work_dir/.
cp $clone_dir/exercise3/fortran/cosine.x $work_dir/.

# copy python script
cp $clone_dir/exercise4/plot.py $work_dir/.

# run executables
cd $work_dir
./sine.x
./cosine.x

# make plot
python plot.py
