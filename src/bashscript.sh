#!/bin/bash
#PBS -l select=1:ncpus=24:mpiprocs=24
#PBS -P CBBI1154
#PBS -q smp
#PBS -l walltime=4:00:00
#PBS -o /mnt/lustre/users/jburgess1/stdOut
#PBS -e /mnt/lustre/users/jburgess1/stdErr
#PBS -m abe
#PBS -N 16_Oct_smp_1_4hours
#PBS -M jeremygburgess@gmail.com

# loading needed modules, python, AD_Vina MPI, and open_mpi.
module load chpc/python/3.7.0/
module load chpc/autodock_vina/1.1.2/gcc-6.1.0
module load chpc/autodock/mpi-vina/openmpi-4.0.0/gcc-7.3.0
module unload chpc/openmpi/4.0.0/gcc-7.3.0
module load chpc/openmpi/4.1.1/gcc-7.3.0

cd /mnt/lustre/groups/CBBI1154/ZINC_20/W312G_ZINC/VINA_Scripts/src/

python3.7 n_main_script_version_2.py


