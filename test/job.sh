#!/bin/bash
#PBS -V

cd $PBS_O_WORKDIR

mpirun ./hello -np 4
