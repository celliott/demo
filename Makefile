include default.mk
export

init :
	gcloud container clusters get-credentials $(CLUSTER) \
		--zone $(REGION) \
		--project $(PROJECT_ID)

proxy : init
	kubectl proxy
