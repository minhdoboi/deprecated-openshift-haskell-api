{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ContainerStateTerminated where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | ContainerStateTerminated is a terminated state of a container.
data ContainerStateTerminated = ContainerStateTerminated
    { exitCode :: Integer -- ^ Exit status from the last termination of the container 
    , signal :: Maybe Integer -- ^ Signal from the last termination of the container 
    , reason :: Maybe Text -- ^ (brief) reason from the last termination of the container 
    , message :: Maybe Text -- ^ Message regarding the last termination of the container 
    , startedAt :: Maybe Text -- ^ Time at which previous execution of the container started 
    , finishedAt :: Maybe Text -- ^ Time at which the container last terminated 
    , containerID :: Maybe Text -- ^ Container's ID in the format 'docker://<container_id>' 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ContainerStateTerminated
instance Data.Aeson.ToJSON ContainerStateTerminated
