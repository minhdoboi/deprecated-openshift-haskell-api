{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Openshift.V1.BuildStrategy where

import GHC.Generics
import Data.Text
import Openshift.V1.CustomBuildStrategy
import Openshift.V1.DockerBuildStrategy
import Openshift.V1.SourceBuildStrategy
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | 
data BuildStrategy = BuildStrategy
    { type_ :: Text -- ^ identifies the type of build strategy 
    , dockerStrategy :: Maybe DockerBuildStrategy -- ^ holds parameters for the Docker build strategy 
    , sourceStrategy :: Maybe SourceBuildStrategy -- ^ holds parameters to the Source build strategy 
    , customStrategy :: Maybe CustomBuildStrategy -- ^ holds parameters to the Custom build strategy 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''BuildStrategy)
