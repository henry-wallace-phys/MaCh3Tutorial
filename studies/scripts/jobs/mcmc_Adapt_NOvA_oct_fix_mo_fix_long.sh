#!/bin/bash

cd /nfs/scratch0/hwallace/software/MaCh3Tutorial
source env.sh
echo "Running MCMC with config template: /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_Adapt_oct_fix_mo_fix_NOvA.yaml"
./install/bin/MCMCTutorial /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_Adapt_oct_fix_mo_fix_NOvA.yaml  General:OutputFile:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/Adapt/NOvA/mcmc_Adapt_NOvA_oct_fix_mo_fix_long.root General:MCMC:NSteps:2000000 AdaptionOptions:Settings:OutputFileName:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/Adapt/NOvA/mcmc_Adapt_NOvA_oct_fix_mo_fix_cov.root 
./install/bin/DiagMCMC /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/Adapt/NOvA/mcmc_Adapt_NOvA_oct_fix_mo_fix_long.root /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_Adapt_oct_fix_mo_fix_NOvA.yaml

