#!/usr/bin/env bash

PROJECT_ID=mydata-collectstore-4522a6
CLIENT_ID=89935833768-jbtslbap698kqs5vh5tbpfecuo5g4oei.apps.googleusercontent.com
WEBSERVER_ID=yf31425fb062f0776-tp
DAG_NAME=dag-article
SERVICE_ACCOUNT=sa-intk-mydata-cf-yrfr-dev@mydata-collectstore-4522a6.iam.gserviceaccount.com
WEBSERVER_URL=https://${WEBSERVER_ID}.appspot.com/api/experimental/dags/${DAG_NAME}/dag_runs

echo $WEBSERVER_URL

python dag_trigger.py \
--url=$WEBSERVER_URL \
--iapClientId=$CLIENT_ID \
--raw_path=gs://$PROJECT_ID/cloud-composer-lab/new-$EXPORT_TS
