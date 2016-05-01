{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Openshift.V1.DeploymentCause where

import GHC.Generics
import Data.Text
import Openshift.V1.DeploymentCauseImageTrigger
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | 
data DeploymentCause = DeploymentCause
    { type_ :: Text -- ^ the type of trigger that resulted in a new deployment 
    , imageTrigger :: Maybe DeploymentCauseImageTrigger -- ^ image trigger details (if applicable) 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''DeploymentCause)
