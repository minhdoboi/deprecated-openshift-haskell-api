{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.DownwardAPIVolumeSource where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.DownwardAPIVolumeFile


-- | DownwardAPIVolumeSource represents a volume containing downward API info
data DownwardAPIVolumeSource = DownwardAPIVolumeSource
    { items :: Maybe [DownwardAPIVolumeFile] -- ^ Items is a list of downward API volume file 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DownwardAPIVolumeSource
instance Data.Aeson.ToJSON DownwardAPIVolumeSource
