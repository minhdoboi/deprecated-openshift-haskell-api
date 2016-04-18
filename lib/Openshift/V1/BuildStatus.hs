{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.BuildStatus where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ObjectReference


-- | 
data BuildStatus = BuildStatus
    { phase :: String -- ^ observed point in the build lifecycle 
    , cancelled :: Maybe Bool -- ^ describes if a cancel event was triggered for the build 
    , reason :: Maybe String -- ^ brief CamelCase string describing a failure, meant for machine parsing and tidy display in the CLI 
    , message :: Maybe String -- ^ human-readable message indicating details about why the build has this status 
    , startTimestamp :: Maybe String -- ^ server time when this build started running in a pod 
    , completionTimestamp :: Maybe String -- ^ server time when the pod running this build stopped running 
    , duration :: Maybe Integer -- ^ amount of time the build has been running 
    , outputDockerImageReference :: Maybe String -- ^ reference to the Docker image built by this build, computed from build.spec.output.to, and can be used to push and pull the image 
    , config :: Maybe ObjectReference -- ^ reference to build config from which this build was derived 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON BuildStatus
instance Data.Aeson.ToJSON BuildStatus
