#!/bin/bash

DOWNLOADS_DIR="dist"

mkdir -p ${DOWNLOADS_DIR}/aws
mkdir -p ${DOWNLOADS_DIR}/azure
mkdir -p ${DOWNLOADS_DIR}/gcp

AZURE_RELEASE_VERSION=sb-0.1.0-rc.51-azure-0.0.1-rc.130
AZURE_BROKERPAK_VERSION=0.0.1-rc.130
AWS_RELEASE_VERSION=sb-0.1.0-rc.51-aws-0.0.1-rc.125
AWS_BROKERPAK_VERSION=0.0.1-rc.125
GCP_RELEASE_VERSION=sb-0.1.0-rc.51-gcp-0.0.1-rc.83
GCP_BROKERPAK_VERSION=0.0.1-rc.83

curl -Lo ${DOWNLOADS_DIR}/aws/cloud-service-broker https://github.com/pivotal/cloud-service-broker/releases/download/${AWS_RELEASE_VERSION}/cloud-service-broker
curl -Lo ${DOWNLOADS_DIR}/azure/cloud-service-broker https://github.com/pivotal/cloud-service-broker/releases/download/${AZURE_RELEASE_VERSION}/cloud-service-broker
curl -Lo ${DOWNLOADS_DIR}/gcp/cloud-service-broker https://github.com/pivotal/cloud-service-broker/releases/download/${GCP_RELEASE_VERSION}/cloud-service-broker

curl -Lo ${DOWNLOADS_DIR}/aws/aws-services.brokerpak https://github.com/pivotal/cloud-service-broker/releases/download/${AWS_RELEASE_VERSION}/aws-services-${AWS_BROKERPAK_VERSION}.brokerpak
curl -Lo ${DOWNLOADS_DIR}/azure/azure-services.brokerpak https://github.com/pivotal/cloud-service-broker/releases/download/${AZURE_RELEASE_VERSION}/azure-services-${AZURE_BROKERPAK_VERSION}.brokerpak
curl -Lo ${DOWNLOADS_DIR}/gcp/gcp-services.brokerpak https://github.com/pivotal/cloud-service-broker/releases/download/${GCP_RELEASE_VERSION}/google-services-${GCP_BROKERPAK_VERSION}.brokerpak

curl -Lo ${DOWNLOADS_DIR}/aws/version https://github.com/pivotal/cloud-service-broker/releases/download/${AWS_RELEASE_VERSION}/version
curl -Lo ${DOWNLOADS_DIR}/azure/version https://github.com/pivotal/cloud-service-broker/releases/download/${AZURE_RELEASE_VERSION}/version
curl -Lo ${DOWNLOADS_DIR}/gcp/version https://github.com/pivotal/cloud-service-broker/releases/download/${GCP_RELEASE_VERSION}/version