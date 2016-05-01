{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.Container where

import GHC.Generics
import Data.Text
import Openshift.V1.ContainerPort
import Openshift.V1.EnvVar
import Openshift.V1.Lifecycle
import Openshift.V1.Probe
import Openshift.V1.ResourceRequirements
import Openshift.V1.SecurityContext
import Openshift.V1.VolumeMount
import qualified Data.Aeson

-- | A single application container that you want to run within a pod.
data Container = Container
    { name :: Text -- ^ Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated. 
    , image :: Maybe Text -- ^ Docker image name. More info: http://releases.k8s.io/HEAD/docs/user-guide/images.md 
    , command :: Maybe [Text] -- ^ Entrypoint array. Not executed within a shell. The docker image's entrypoint is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: http://releases.k8s.io/HEAD/docs/user-guide/containers.md#containers-and-commands 
    , args :: Maybe [Text] -- ^ Arguments to the entrypoint. The docker image's cmd is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: http://releases.k8s.io/HEAD/docs/user-guide/containers.md#containers-and-commands 
    , workingDir :: Maybe Text -- ^ Container's working directory. Defaults to Docker's default. D efaults to image's default. Cannot be updated. 
    , ports :: Maybe [ContainerPort] -- ^ List of ports to expose from the container. Cannot be updated. 
    , env :: Maybe [EnvVar] -- ^ List of environment variables to set in the container. Cannot be updated. 
    , resources :: Maybe ResourceRequirements -- ^ Compute Resources required by this container. Cannot be updated. More info: http://releases.k8s.io/HEAD/docs/user-guide/persistent-volumes.md#resources 
    , volumeMounts :: Maybe [VolumeMount] -- ^ Pod volumes to mount into the container's filesyste. Cannot be updated. 
    , livenessProbe :: Maybe Probe -- ^ Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: http://releases.k8s.io/HEAD/docs/user-guide/pod-states.md#container-probes 
    , readinessProbe :: Maybe Probe -- ^ Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: http://releases.k8s.io/HEAD/docs/user-guide/pod-states.md#container-probes 
    , lifecycle :: Maybe Lifecycle -- ^ Actions that the management system should take in response to container lifecycle events. Cannot be updated. 
    , terminationMessagePath :: Maybe Text -- ^ Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Defaults to /dev/termination-log. Cannot be updated. 
    , imagePullPolicy :: Maybe Text -- ^ Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: http://releases.k8s.io/HEAD/docs/user-guide/images.md#updating-images 
    , securityContext :: Maybe SecurityContext -- ^ Security options the pod should run with. More info: http://releases.k8s.io/HEAD/docs/design/security_context.md 
    , stdin :: Maybe Bool -- ^ Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false. 
    , stdinOnce :: Maybe Bool -- ^ Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false 
    , tty :: Maybe Bool -- ^ Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Container
instance Data.Aeson.ToJSON Container
