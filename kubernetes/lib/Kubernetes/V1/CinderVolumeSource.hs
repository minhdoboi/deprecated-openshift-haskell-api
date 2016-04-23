{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.CinderVolumeSource where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | CinderVolumeSource represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet.
data CinderVolumeSource = CinderVolumeSource
    { volumeID :: Text -- ^ volume id used to identify the volume in cinder More info: http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md 
    , fsType :: Maybe Text -- ^ Required: Filesystem type to mount. Must be a filesystem type supported by the host operating system. Only ext3 and ext4 are allowed More info: http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md 
    , readOnly :: Maybe Bool -- ^ Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON CinderVolumeSource
instance Data.Aeson.ToJSON CinderVolumeSource
