This project is a haskell API for OpenShift generated by a horribly customized version of Swagger Codegen just for this.

This project is deprecated. Please generate an API with current latest version of Swagger Codegen which is cleaner and maintained.

The only thing I tested is listing the projects & pods (cf example which is not working with a local OpenShift btw).

## How to use

0. Install haskell-stack
1. stack build
2. run

``` export OPENSHIFT_HOST=myhost && export OPENSHIFT_TOKEN=`oc whoami -t` && export OPENSHIFT_PORT=443 && $HOME/.local/bin/example-openshift-client ```

## Swagger Codegen customizations
- v1.XXX => V1/XXX.hs
- non required property are wrapped in Maybe
- a parameter has been added for header token bearer

## Hacks
There are some hacks in scripts/codegen.sh and it needs probably a few more hacks.
