#!/bin/bash

cd /Users/iacosta/Downloads
./oc login --token=sha256~PkX6rXzpfNE2HOdrSl6m0TNawU5_PHE6LND-kHSuQQs --server=https://api.cluster-lpdtj.lpdtj.sandbox1025.opentlc.com:6443

./oc new-project wordpress

./oc new-app mariadb-ephemeral

./oc new-app php~https://github.com/wordpress/wordpress

./oc expose service/wordpress

./oc get routes
