#!/bin/bash

cd /nfs/scratch0/hwallace/software/MaCh3Tutorial
source env.sh
echo "Running MCMC with config template: /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_Adapt_oct_fix_no_only_T2K.yaml"
./install/bin/MCMCTutorial /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_Adapt_oct_fix_no_only_T2K.yaml General:MCMC:NSteps:2000000 General:OutputFile:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/Adapt/T2K/mcmc_Adapt_T2K_oct_fix_no_only_long.root AdaptionOptions:Settings:OutputFileName:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/Adapt/T2K/mcmc_Adapt_T2K_oct_fix_no_only_cov.root 
./install/bin/DiagMCMC /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/Adapt/T2K/mcmc_Adapt_T2K_oct_fix_no_only.root /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_Adapt_oct_fix_no_only_T2K.yaml

