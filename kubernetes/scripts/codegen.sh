#!/bin/bash

BASEDIR=$(dirname $0)
PROJECTDIR=$BASEDIR/..

java -jar $PROJECTDIR/../../../swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
  -i $PROJECTDIR/../../kube-swagger.json \
  -l haskell-servant \
  --type-mappings Time.Duration=Integer,V1.FinalizerName=String\
  --import-mappings Time.Duration=Integer,V1.FinalizerName=String \
  -o $PROJECTDIR \
  -c $BASEDIR/codegen.config | tee build.log

CABAL_FILE=$PROJECTDIR/kubernetes-v1-rest.cabal

sed -i '.bak' 's/, Kubernetes.ApivApi/, Kubernetes.ApivApi, Kubernetes.Any/' $CABAL_FILE
sed -i '.bak' 's/, servant-client/, servant-client, aeson-casing/' $CABAL_FILE

cp $BASEDIR/*.hs $PROJECTDIR/lib/Kubernetes/
cp $BASEDIR/V1/*.hs $PROJECTDIR/lib/Kubernetes/V1/
