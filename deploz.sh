#!/usr/bin/env bash

./create_or_update_dataflow.sh \
main.py \
--region=us-west1 \
--topic=$TOPIC \
--runner=DataflowRunner \
--project=$PROJECT_NAME \
--temp_location=$TEMP_BUCKET \
--job_name=filter-contact-change-stream \
--experiments=use_runner_v2 \
--sdk_container_image=apache/beam_python3.8_sdk:2.43.0 \
--service_account_email=$DATAFLOW_RUNNER_SERVICE_ACCOUNT \
--gcp_project_id=$GCP_PROJECT_ID \
--autoscaling_algorithm=THROUGHPUT_BASED \
--max_num_workers=100 \
