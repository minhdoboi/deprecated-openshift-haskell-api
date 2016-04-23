#!/bin/bash

BASEDIR=$(dirname $0)
PROJECTDIR=$BASEDIR/..

java -jar $PROJECTDIR/../../../swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
  -i $PROJECTDIR/../../openshift-swagger.json \
  -l haskell-servant \
  --type-mappings Time.Duration=Integer,V1.FinalizerName=String,V1.ObjectMeta=Kubernetes.V1.ObjectMeta \
  --import-mappings Time.Duration=Integer,V1.FinalizerName=String,V1.ObjectMeta=Kubernetes.V1.ObjectMeta \
  -o $PROJECTDIR \
  -c $BASEDIR/codegen.config | tee build.log

CABAL_FILE=$PROJECTDIR/openshift-v1-rest.cabal

sed -i '.bak' 's/, Openshift.OapivApi/, Openshift.OapivApi, Openshift.ClientUtils, Openshift.Any/' $CABAL_FILE

sed -i '.bak' 's/, servant-client/, servant-client, http-client-tls, connection, transformers, kubernetes-v1-rest/' $CABAL_FILE

cp $BASEDIR/*.hs $PROJECTDIR/lib/Openshift/

cp $BASEDIR/stack.yaml $PROJECTDIR/stack.yaml
