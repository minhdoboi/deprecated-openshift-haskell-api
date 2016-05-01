{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ContainerStatus where

import GHC.Generics
import Data.Text
import Kubernetes.V1.ContainerState
import qualified Data.Aeson

-- | ContainerStatus contains details for the current status of this container.
data ContainerStatus = ContainerStatus
    { name :: Text -- ^ This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated. 
    , state :: Maybe ContainerState -- ^ Details about the container's current condition. 
    , lastState :: Maybe ContainerState -- ^ Details about the container's last termination condition. 
    , ready :: Bool -- ^ Specifies whether the container has passed its readiness probe. 
    , restartCount :: Integer -- ^ The number of times the container has been restarted, currently based on the number of dead containers that have not yet been removed. Note that this is calculated from dead containers. But those containers are subject to garbage collection. This value will get capped at 5 by GC. 
    , image :: Text -- ^ The image the container is running. More info: http://releases.k8s.io/HEAD/docs/user-guide/images.md 
    , imageID :: Text -- ^ ImageID of the container's image. 
    , containerID :: Maybe Text -- ^ Container's ID in the format 'docker://<container_id>'. More info: http://releases.k8s.io/HEAD/docs/user-guide/container-environment.md#container-information 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ContainerStatus
instance Data.Aeson.ToJSON ContainerStatus
