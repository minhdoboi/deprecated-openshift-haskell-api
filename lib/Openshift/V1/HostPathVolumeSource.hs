{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.HostPathVolumeSource where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | HostPathVolumeSource represents bare host directory volume.
data HostPathVolumeSource = HostPathVolumeSource
    { path :: Text -- ^ Path of the directory on the host. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#hostpath 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON HostPathVolumeSource
instance Data.Aeson.ToJSON HostPathVolumeSource
