{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.CustomDeploymentStrategyParams where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.EnvVar

-- | 
data CustomDeploymentStrategyParams = CustomDeploymentStrategyParams
    { image :: Maybe Text -- ^ a Docker image which can carry out a deployment 
    , environment :: Maybe [EnvVar] -- ^ environment variables provided to the deployment process container 
    , command :: Maybe [Text] -- ^ optionally overrides the container command (default is specified by the image) 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON CustomDeploymentStrategyParams
instance Data.Aeson.ToJSON CustomDeploymentStrategyParams
