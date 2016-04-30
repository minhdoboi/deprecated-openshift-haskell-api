{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.EmptyDirVolumeSource where

import qualified Data.Aeson
import GHC.Generics
import Data.Text

-- | EmptyDirVolumeSource is temporary directory that shares a pod's lifetime.
data EmptyDirVolumeSource = EmptyDirVolumeSource
    { medium :: Maybe Text -- ^ What type of storage medium should back this directory. The default is \"\" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#emptydir 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON EmptyDirVolumeSource
instance Data.Aeson.ToJSON EmptyDirVolumeSource
