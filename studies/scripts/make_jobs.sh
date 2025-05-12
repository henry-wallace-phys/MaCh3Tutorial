#!/bin/bash

MACH3_DIR="/nfs/scratch0/hwallace/software/MaCh3Tutorial"
STUDY_DIR="${MACH3_DIR}/studies"
MCMC_TYPE=("Adapt" "NoAdapt")
DCP_PRIOR=("T2K")
JOB_TEMPLATE="${STUDY_DIR}/scripts/templates/job_template.sh"
CONFIG_TEMPLATE="${STUDY_DIR}/configs/FitterConfig"


generate_study(){
    mcmc_type=$1
    dcp_prior=$2
    osc_study_name=$3

    study_cli=""

    osc_config="${STUDY_DIR}/configs/${dcp_prior}/OscillationModel_${osc_study_name}.yaml"

    output_file_prefix="${STUDY_DIR}/${mcmc_type}/${dcp_prior}/mcmc_${mcmc_type}_${dcp_prior}_${osc_study_name}"
    output_file="${output_file_prefix}_long.root"
    output_file_opt="General:OutputFile:${output_file} General:MCMC:NSteps:2000000"
    output_cov_opt="AdaptionOptions:Settings:OutputFileName:${output_file_prefix}_cov.root"

    conf_prefix="${CONFIG_TEMPLATE}_${mcmc_type}"

    config_file=${conf_prefix}_${osc_study_name}_${dcp_prior}.yaml
    echo "USING ${config_file}"

    cp ${conf_prefix}.yaml ${config_file}

    sed -i "s|{OSC_CONFIG}|${osc_config}|g" ${config_file}

    full_opt="${adapt_opt} ${output_file_opt} ${output_cov_opt}"

    output_job="${STUDY_DIR}/scripts/jobs/mcmc_${mcmc_type}_${dcp_prior}_${osc_study_name}_long.sh"
    cp ${JOB_TEMPLATE} ${output_job}
    sed -i "s|{MACH3_DIR}|${MACH3_DIR}|g" ${output_job}
    sed -i "s|{CONFIG_TEMPLATE}|${config_file}|g" ${output_job}
    sed -i "s|{MCMC_OPTIONS}|${full_opt}|g" ${output_job}
    sed -i "s|{OUTPUT_FILE}|${output_file}|g" ${output_job}

    echo "Generating job script for ${mcmc_type} with ${dcp_prior} prior and study ${osc_study_name}"
    source ${output_job}
}

for i in "${!MCMC_TYPE[@]}"; do
    for j in "${!DCP_PRIOR[@]}"; do
        mcmc_type=${MCMC_TYPE[$i]}
        dcp_prior=${DCP_PRIOR[$j]}

        generate_study "$mcmc_type" "$dcp_prior" "all_fixed"
        generate_study "$mcmc_type" "$dcp_prior" "all_on"
        generate_study "$mcmc_type" "$dcp_prior" "oct_fix_mo_fix"
        generate_study "$mcmc_type" "$dcp_prior" "oct_fix_no_only"

    done
done

echo "DONE"
