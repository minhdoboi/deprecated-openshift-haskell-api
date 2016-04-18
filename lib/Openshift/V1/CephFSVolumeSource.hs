{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.CephFSVolumeSource where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.LocalObjectReference


-- | CephFSVolumeSource represents a Ceph Filesystem Mount that lasts the lifetime of a pod
data CephFSVolumeSource = CephFSVolumeSource
    { monitors :: [String] -- ^ Required: Monitors is a collection of Ceph monitors More info: http://releases.k8s.io/HEAD/examples/cephfs/README.md#how-to-use-it 
    , user :: Maybe String -- ^ Optional: User is the rados user name, default is admin More info: http://releases.k8s.io/HEAD/examples/cephfs/README.md#how-to-use-it 
    , secretFile :: Maybe String -- ^ Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: http://releases.k8s.io/HEAD/examples/cephfs/README.md#how-to-use-it 
    , secretRef :: Maybe LocalObjectReference -- ^ Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: http://releases.k8s.io/HEAD/examples/cephfs/README.md#how-to-use-it 
    , readOnly :: Maybe Bool -- ^ Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: http://releases.k8s.io/HEAD/examples/cephfs/README.md#how-to-use-it 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON CephFSVolumeSource
instance Data.Aeson.ToJSON CephFSVolumeSource
