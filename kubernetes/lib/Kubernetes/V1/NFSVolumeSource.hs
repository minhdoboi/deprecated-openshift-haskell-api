{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.NFSVolumeSource where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | NFSVolumeSource represents an NFS mount that lasts the lifetime of a pod
data NFSVolumeSource = NFSVolumeSource
    { server :: Text -- ^ Server is the hostname or IP address of the NFS server. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#nfs 
    , path :: Text -- ^ Path that is exported by the NFS server. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#nfs 
    , readOnly :: Maybe Bool -- ^ ReadOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: http://releases.k8s.io/HEAD/docs/user-guide/volumes.md#nfs 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NFSVolumeSource
instance Data.Aeson.ToJSON NFSVolumeSource
