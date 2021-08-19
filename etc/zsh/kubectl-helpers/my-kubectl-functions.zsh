#!/bin/sh

function kubectl_switch_cluster(){
  selected=$(kubectl config get-contexts --no-headers=true --output='name' | fzf --prompt="Select Cluster: ")
  if [ "$selected" != "" ]; then
	kubectl config use-context $selected
  else
	  echo "Aborting"
  fi
}

function kubectl_switch_namespace(){
  nsselect=$(kubectl get ns --output=name | sed  's/namespace\///' | fzf --prompt="Select Namespace: " --header="Cluster: $(kubectl config current-context)")
  if [ "$nsselect" != "" ]; then
 	kubectl config set-context --current --namespace=$nsselect
  else
	  echo "Aborting"
  fi
}
