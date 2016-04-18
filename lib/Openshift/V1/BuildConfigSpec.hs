{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.BuildConfigSpec where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.BuildOutput
import Openshift.V1.BuildSource
import Openshift.V1.BuildStrategy
import Openshift.V1.BuildTriggerPolicy
import Openshift.V1.ResourceRequirements
import Openshift.V1.SourceRevision


-- | 
data BuildConfigSpec = BuildConfigSpec
    { triggers :: [BuildTriggerPolicy] -- ^ determines how new builds can be launched from a build config.  if no triggers are defined, a new build can only occur as a result of an explicit client build creation. 
    , serviceAccount :: Maybe String -- ^ the name of the service account to use to run pods created by the build, pod will be allowed to use secrets referenced by the service account 
    , source :: Maybe BuildSource -- ^ describes the source control management system in use 
    , revision :: Maybe SourceRevision -- ^ specific revision in the source repository 
    , strategy :: BuildStrategy -- ^ defines how to perform a build 
    , output :: Maybe BuildOutput -- ^ describes the output of a build that a strategy should produce 
    , resources :: Maybe ResourceRequirements -- ^ the desired compute resources the build should have 
    , completionDeadlineSeconds :: Maybe Integer -- ^ optional duration in seconds the build may be active on a node before the system will actively try to mark it failed and kill associated containers; value must be a positive integer 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON BuildConfigSpec
instance Data.Aeson.ToJSON BuildConfigSpec
