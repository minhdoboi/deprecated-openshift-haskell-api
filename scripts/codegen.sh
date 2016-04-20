#!/bin/bash

BASEDIR=$(dirname $0)
PROJECTDIR=$BASEDIR/..

java -jar $PROJECTDIR/../../swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
  -i $PROJECTDIR/swagger.json \
  -l haskell-servant \
  --type-mappings Time.Duration=Integer,V1.FinalizerName=String\
  --import-mappings Time.Duration=Integer,V1.FinalizerName=String \
  -o $PROJECTDIR \
  -c $BASEDIR/codegen.config | tee build.log

sed -i '.bak' 's/, Openshift.OapivApi/, Openshift.OapivApi, Openshift.Any/' $PROJECTDIR/openshift-v1-rest.cabal

cp $BASEDIR/*.hs $PROJECTDIR/lib/Openshift/
