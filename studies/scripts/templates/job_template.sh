#!/bin/bash

cd {MACH3_DIR}
source env.sh
echo "Running MCMC with config template: {CONFIG_TEMPLATE}"
./install/bin/MCMCTutorial {CONFIG_TEMPLATE} {MCMC_OPTIONS} 
./install/bin/DiagMCMC {OUTPUT_FILE} {CONFIG_TEMPLATE}

