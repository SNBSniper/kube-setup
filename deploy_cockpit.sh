 kubectl create clusterrolebinding anon-cluster-admin-binding --clusterrole=cluster-admin --user=system:anonymous
 kubectl create namespace ns-cockpit
 kubectl create -f kubernetes-cockpit.json -n ns-cockpit
