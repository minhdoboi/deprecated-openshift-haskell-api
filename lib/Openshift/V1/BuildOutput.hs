{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.BuildOutput where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.LocalObjectReference
import Openshift.V1.ObjectReference


-- | 
data BuildOutput = BuildOutput
    { to :: Maybe ObjectReference -- ^ The optional image stream to push the output of this build.  The namespace may be empty, in which case, the image stream will be looked up based on the namespace of the build. 
    , pushSecret :: Maybe LocalObjectReference -- ^ supported type: dockercfg 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON BuildOutput
instance Data.Aeson.ToJSON BuildOutput
