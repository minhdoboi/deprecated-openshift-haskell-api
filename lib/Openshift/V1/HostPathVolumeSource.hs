{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.HostPathVolumeSource where

import qualified Data.Aeson
import GHC.Generics


-- | HostPathVolumeSource represents bare host directory volume.
data HostPathVolumeSource = HostPathVolumeSource
    { path :: String -- ^ Path of the directory on the host. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#hostpath 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON HostPathVolumeSource
instance Data.Aeson.ToJSON HostPathVolumeSource
