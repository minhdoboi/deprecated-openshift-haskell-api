{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ContainerStateRunning where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | ContainerStateRunning is a running state of a container.
data ContainerStateRunning = ContainerStateRunning
    { startedAt :: Maybe Text -- ^ Time at which the container was last (re-)started 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ContainerStateRunning
instance Data.Aeson.ToJSON ContainerStateRunning
