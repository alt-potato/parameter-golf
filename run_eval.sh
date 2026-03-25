#!/usr/bin/env bash
CLUSTER_NAME="parameter-golf-job"
OUTPUT_DIR="./output/"

echo "> launching SkyPilot job..."

sky launch -c $CLUSTER_NAME golf.yaml --yes

# check if run succeeded
if [ $? -eq 0 ]; then
    echo "> training finished! downloading artifacts..."
    mkdir -p $OUTPUT_DIR

    # ref: https://docs.skypilot.co/en/stable/examples/syncing-code-artifacts.html
    rsync -Pavz $CLUSTER_NAME:/workspace/export/ $OUTPUT_DIR
    
    echo "> results successfully saved to '$OUTPUT_DIR'!"
else
    echo "> training failed or encountered an error."
fi

echo "> starting teardown..."
sky down $CLUSTER_NAME --yes
