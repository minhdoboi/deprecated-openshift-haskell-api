{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.RBDVolumeSource where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.LocalObjectReference


-- | RBDVolumeSource represents a Rados Block Device Mount that lasts the lifetime of a pod
data RBDVolumeSource = RBDVolumeSource
    { monitors :: [String] -- ^ A collection of Ceph monitors. More info: http://releases.k8s.io/HEAD/examples/rbd/README.md#how-to-use-it 
    , image :: String -- ^ The rados image name. More info: http://releases.k8s.io/HEAD/examples/rbd/README.md#how-to-use-it 
    , fsType :: Maybe String -- ^ Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#rbd 
    , pool :: String -- ^ The rados pool name. Default is rbd. More info: http://releases.k8s.io/HEAD/examples/rbd/README.md#how-to-use-it. 
    , user :: String -- ^ The rados user name. Default is admin. More info: http://releases.k8s.io/HEAD/examples/rbd/README.md#how-to-use-it 
    , keyring :: String -- ^ Keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: http://releases.k8s.io/HEAD/examples/rbd/README.md#how-to-use-it 
    , secretRef :: LocalObjectReference -- ^ SecretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is empty. More info: http://releases.k8s.io/HEAD/examples/rbd/README.md#how-to-use-it 
    , readOnly :: Maybe Bool -- ^ ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: http://releases.k8s.io/HEAD/examples/rbd/README.md#how-to-use-it 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON RBDVolumeSource
instance Data.Aeson.ToJSON RBDVolumeSource
