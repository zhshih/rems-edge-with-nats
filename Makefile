CONFIG_PATH=${HOME}/Workspace/.rems-edge-nats
SERVICE_ROOT=./internal/service

.PHONY: service
service:
	cd ${SERVICE_ROOT}/dataservice && $(MAKE) service
	cd ${SERVICE_ROOT}/collectionservice && $(MAKE) service
	cd ${SERVICE_ROOT}/cloudservice && $(MAKE) service
	cd ${SERVICE_ROOT}/controlservice && $(MAKE) service
	cd ${SERVICE_ROOT}/monitorservice && $(MAKE) service