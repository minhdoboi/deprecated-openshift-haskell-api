{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.FlockerVolumeSource where

import qualified Data.Aeson
import GHC.Generics


-- | FlockerVolumeSource represents a Flocker volume mounted by the Flocker agent.
data FlockerVolumeSource = FlockerVolumeSource
    { datasetName :: String -- ^ Required: the volume name. This is going to be store on metadata -> name on the payload for Flocker 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON FlockerVolumeSource
instance Data.Aeson.ToJSON FlockerVolumeSource
