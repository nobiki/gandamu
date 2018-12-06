curl https://sdk.cloud.google.com | bash

TASK="${TASK}[gcloud]\n"
TASK="${TASK}exec -l $SHELL\n"
TASK="${TASK}gcloud init\n"
TASK="${TASK}\n"
