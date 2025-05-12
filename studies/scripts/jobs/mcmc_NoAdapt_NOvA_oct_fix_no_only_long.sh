#!/bin/bash

cd /nfs/scratch0/hwallace/software/MaCh3Tutorial
source env.sh
echo "Running MCMC with config template: /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_NoAdapt_oct_fix_no_only_NOvA.yaml"
./install/bin/MCMCTutorial /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_NoAdapt_oct_fix_no_only_NOvA.yaml  General:OutputFile:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/NoAdapt/NOvA/mcmc_NoAdapt_NOvA_oct_fix_no_only_long.root General:MCMC:NSteps:2000000 AdaptionOptions:Settings:OutputFileName:/nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/NoAdapt/NOvA/mcmc_NoAdapt_NOvA_oct_fix_no_only_cov.root 
./install/bin/DiagMCMC /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/NoAdapt/NOvA/mcmc_NoAdapt_NOvA_oct_fix_no_only_long.root /nfs/scratch0/hwallace/software/MaCh3Tutorial/studies/configs/FitterConfig_NoAdapt_oct_fix_no_only_NOvA.yaml

