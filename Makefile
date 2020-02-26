AWS_PROFILE?=personal

plan:
	cd ./infrastructure && \
	terraform get -update=true && \
	terraform init && \
	terraform plan -out ../build/tfplan -var 'aws_profile=$(AWS_PROFILE)' .;

.PHONY: plan
