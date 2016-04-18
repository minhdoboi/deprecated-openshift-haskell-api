{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.BuildStrategy where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.CustomBuildStrategy
import Openshift.V1.DockerBuildStrategy
import Openshift.V1.SourceBuildStrategy


-- | 
data BuildStrategy = BuildStrategy
    { type_ :: String -- ^ identifies the type of build strategy 
    , dockerStrategy :: Maybe DockerBuildStrategy -- ^ holds parameters for the Docker build strategy 
    , sourceStrategy :: Maybe SourceBuildStrategy -- ^ holds parameters to the Source build strategy 
    , customStrategy :: Maybe CustomBuildStrategy -- ^ holds parameters to the Custom build strategy 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON BuildStrategy
instance Data.Aeson.ToJSON BuildStrategy
