#!/bin/csh -f

# This script, runall_svn.csh, is a template under svn control.
# It contains entries for each test case to be run.  This script
# should be modified as test cases are added or removed.

# specify location of the fds5 executables
setenv FDS5 ~/bin/fds_linux
setenv FDS5MPI ~/bin/fds5_mpi_linux

# Option:
# Uncomment the setenv line below to stop all FDS jobs running via this script.
# setenv STOPFDS

#  1.  To run this script, first copy runall_svn.csh to runall.csh  
#      (only when runall_svn.csh changes)
#  2.  define the FDS5 and/or FDS5MPI environment variables to point
#      to the version of fds you want to run.
#  3.  Change hostnames in each RUNFDS (or RUNFDS_MPI) command to point to free 
#      cluster nodes
#  4.  Run script from this directory (repository_root/bin)

set RUNFDS=./runfds.csh
setenv JOBDIR `pwd`/..

# syntax of RUNFDS
# $RUNFDS  directory case host

# mpi example
# setenv LAMNODES n0 n0 n0 n0
# $RUNFDS Demonstrations/2Room_ranch ranch_00 fire72 &

# demonstration cases
$RUNFDS Demonstrations/2Room_Ranch ranch_00 fire72 &
$RUNFDS Demonstrations/2Room_Ranch ranch_01 fire72 &
$RUNFDS Demonstrations/2Room_Ranch ranch_02 fire72 &
$RUNFDS Demonstrations/2Room_Ranch ranch_03 fire72 &
$RUNFDS Demonstrations/2Room_Ranch ranch_04 fire73 &
# MCFRS cases
$RUNFDS MCFRS/MCFRS_Flashover MCFRS_Flashover_00 fire73 &
$RUNFDS MCFRS/MCFRS_Flashover MCFRS_Flashover_01 fire73 &
$RUNFDS MCFRS/MCFRS_Flashover MCFRS_Flashover_02 fire73 &
$RUNFDS MCFRS/MCFRS_Flashover MCFRS_Flashover_03 fire73 &
$RUNFDS MCFRS/MCFRS_Ranch MCFRS_Ranch_00 fire73 &
# MFRI  cases
$RUNFDS MFRI/MFRI_Training_Tower MFRI_Training_Tower_00 fire74 &
