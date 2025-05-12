#!/bin/bash

cd /nfs/scratch0/hwallace/software/MaCh3Tutorial
source env.sh
echo "Running MCMC with config template: /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_NoAdapt_all_fixed_NOvA.yaml"
./install/bin/MCMCTutorial /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_NoAdapt_all_fixed_NOvA.yaml  General:OutputFile:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/NoAdapt/NOvA/mcmc_NoAdapt_NOvA_all_fixed.root AdaptionOptions:Settings:OutputFileName:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/NoAdapt/NOvA/mcmc_NoAdapt_NOvA_all_fixed_cov.root 
./install/bin/DiagMCMC /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/NoAdapt/NOvA/mcmc_NoAdapt_NOvA_all_fixed.root /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_NoAdapt_all_fixed_NOvA.yaml

