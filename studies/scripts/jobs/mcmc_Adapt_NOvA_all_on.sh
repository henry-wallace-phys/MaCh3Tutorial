#!/bin/bash

cd /nfs/scratch0/hwallace/software/MaCh3Tutorial
source env.sh
echo "Running MCMC with config template: /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_Adapt_all_on_NOvA.yaml"
./install/bin/MCMCTutorial /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_Adapt_all_on_NOvA.yaml General:MCMC:NSteps:2000000  General:OutputFile:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/Adapt/NOvA/mcmc_Adapt_NOvA_all_on.root AdaptionOptions:Settings:OutputFileName:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/Adapt/NOvA/mcmc_Adapt_NOvA_all_on_cov.root 
./install/bin/DiagMCMC /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/Adapt/NOvA/mcmc_Adapt_NOvA_all_on.root /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_Adapt_all_on_NOvA.yaml

