{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.BuildRequest where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.ObjectMeta
import Openshift.V1.BinaryBuildSource
import Openshift.V1.EnvVar
import Openshift.V1.ObjectReference
import Openshift.V1.SourceRevision


-- | 
data BuildRequest = BuildRequest
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , revision :: Maybe SourceRevision -- ^ information from the source for a specific repo snapshot 
    , triggeredByImage :: Maybe ObjectReference -- ^ image that triggered this build 
    , from :: Maybe ObjectReference -- ^ ImageStreamTag that triggered this build 
    , binary :: Maybe BinaryBuildSource -- ^ the binary will be provided by the builder as an archive or file to be placed within the input directory; allows Dockerfile to be optionally set; may not be set with git source type also set 
    , lastVersion :: Maybe Integer -- ^ LastVersion of the BuildConfig that triggered this build 
    , env :: Maybe [EnvVar] -- ^ additional environment variables you want to pass into a builder container 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON BuildRequest
instance Data.Aeson.ToJSON BuildRequest
