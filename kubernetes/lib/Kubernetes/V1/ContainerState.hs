{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ContainerState where

import qualified Data.Aeson
import GHC.Generics
import Kubernetes.V1.ContainerStateRunning
import Kubernetes.V1.ContainerStateTerminated
import Kubernetes.V1.ContainerStateWaiting


-- | ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
data ContainerState = ContainerState
    { waiting :: Maybe ContainerStateWaiting -- ^ Details about a waiting container 
    , running :: Maybe ContainerStateRunning -- ^ Details about a running container 
    , terminated :: Maybe ContainerStateTerminated -- ^ Details about a terminated container 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ContainerState
instance Data.Aeson.ToJSON ContainerState
