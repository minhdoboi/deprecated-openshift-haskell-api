{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.GlusterfsVolumeSource where

import qualified Data.Aeson
import GHC.Generics
import Data.Text

-- | GlusterfsVolumeSource represents a Glusterfs Mount that lasts the lifetime of a pod.
data GlusterfsVolumeSource = GlusterfsVolumeSource
    { endpoints :: Text -- ^ EndpointsName is the endpoint name that details Glusterfs topology. More info: http://releases.k8s.io/HEAD/examples/glusterfs/README.md#create-a-pod 
    , path :: Text -- ^ Path is the Glusterfs volume path. More info: http://releases.k8s.io/HEAD/examples/glusterfs/README.md#create-a-pod 
    , readOnly :: Maybe Bool -- ^ ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: http://releases.k8s.io/HEAD/examples/glusterfs/README.md#create-a-pod 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON GlusterfsVolumeSource
instance Data.Aeson.ToJSON GlusterfsVolumeSource
