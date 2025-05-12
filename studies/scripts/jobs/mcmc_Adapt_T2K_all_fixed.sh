#!/bin/bash

cd /nfs/scratch0/hwallace/software/MaCh3Tutorial
source env.sh
echo "Running MCMC with config template: /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_Adapt_all_fixed_T2K.yaml"
./install/bin/MCMCTutorial /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_Adapt_all_fixed_T2K.yaml  General:OutputFile:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/Adapt/T2K/mcmc_Adapt_T2K_all_fixed.root AdaptionOptions:Settings:OutputFileName:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/Adapt/T2K/mcmc_Adapt_T2K_all_fixed_cov.root 
./install/bin/DiagMCMC /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/Adapt/T2K/mcmc_Adapt_T2K_all_fixed.root /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_Adapt_all_fixed_T2K.yaml

