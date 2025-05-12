#!/bin/bash

cd /nfs/scratch0/hwallace/software/MaCh3Tutorial
source env.sh
echo "Running MCMC with config template: /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_NoAdapt_oct_fix_mo_fix_T2K.yaml"
./install/bin/MCMCTutorial /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_NoAdapt_oct_fix_mo_fix_T2K.yaml  General:OutputFile:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/NoAdapt/T2K/mcmc_NoAdapt_T2K_oct_fix_mo_fix.root AdaptionOptions:Settings:OutputFileName:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/NoAdapt/T2K/mcmc_NoAdapt_T2K_oct_fix_mo_fix_cov.root 
./install/bin/DiagMCMC /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/NoAdapt/T2K/mcmc_NoAdapt_T2K_oct_fix_mo_fix.root /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_NoAdapt_oct_fix_mo_fix_T2K.yaml

