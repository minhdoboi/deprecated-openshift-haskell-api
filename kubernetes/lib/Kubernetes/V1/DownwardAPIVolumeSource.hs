{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.DownwardAPIVolumeSource where

import GHC.Generics
import Kubernetes.V1.DownwardAPIVolumeFile
import qualified Data.Aeson

-- | DownwardAPIVolumeSource represents a volume containing downward API info
data DownwardAPIVolumeSource = DownwardAPIVolumeSource
    { items :: Maybe [DownwardAPIVolumeFile] -- ^ Items is a list of downward API volume file 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DownwardAPIVolumeSource
instance Data.Aeson.ToJSON DownwardAPIVolumeSource
