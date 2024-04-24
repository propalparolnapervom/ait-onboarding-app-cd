#######
# Helm
#######
h-install:
	helm install onboard ait-onboarding-app-chart --values env/dev-values.yaml

h-upgrade:
	helm upgrade onboard ait-onboarding-app-chart --values env/dev-values.yaml

h-uninstall:
	helm uninstall onboard


#########
# ArgoCD
#########

a-install:
	kubectl apply -f argocd/argo-dev-env.yaml

a-uninstall:
	echo "Do the following:   argocd app delete argocd/onboarding-app-argo-config"
