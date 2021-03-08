#!make
include .env
export

init:
	aws-vault exec $$AWS_VAULT_PROFILE -- terraform init

validate:
	aws-vault exec $$AWS_VAULT_PROFILE -- terraform validate

apply:
	aws-vault exec $$AWS_VAULT_PROFILE -- terraform apply

destroy:
	aws-vault exec $$AWS_VAULT_PROFILE -- terraform destroy

clean:
	@rm -rf .terraform/ terraform.tfstate*

.PHONY: init validate apply destroy clean