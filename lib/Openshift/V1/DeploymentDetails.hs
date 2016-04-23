{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.DeploymentDetails where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.DeploymentCause


-- | 
data DeploymentDetails = DeploymentDetails
    { message :: Maybe Text -- ^ a user specified change message 
    , causes :: Maybe [DeploymentCause] -- ^ extended data associated with all the causes for creating a new deployment 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DeploymentDetails
instance Data.Aeson.ToJSON DeploymentDetails
