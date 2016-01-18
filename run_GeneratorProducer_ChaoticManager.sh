#!/bin/bash

CLASS=ChaoticManager
COMPONENT_TYPE=GeneratorProducer
MIN_COMPONENTS=3
MAX_COMPONENTS=10
DECISIONS_PER_UPDATE=2
UPDATE_PERIOD_MS=30000

LOGFILE="logs/${CLASS}_${COMPONENT_TYPE}`date +%F_%T`.log"
mkdir -p `dirname ${LOGFILE}`
exec java -cp "target/*:config" com.avast.kafkatests.${CLASS} ${COMPONENT_TYPE} ${MIN_COMPONENTS} ${MAX_COMPONENTS} ${DECISIONS_PER_UPDATE} ${UPDATE_PERIOD_MS} >> ${LOGFILE}
