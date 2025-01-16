export REGION="${ZONE%-*}"

gcloud config set compute/region $REGION

gcloud config set compute/zone $ZONE

export PROJECT_ID=$(gcloud config get-value project)

gcloud compute instances create gcelab2 --machine-type e2-medium --zone $ZONE
