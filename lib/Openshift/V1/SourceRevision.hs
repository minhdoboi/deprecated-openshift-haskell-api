{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.SourceRevision where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.GitSourceRevision


-- | 
data SourceRevision = SourceRevision
    { type_ :: String -- ^ type of the build source 
    , git :: Maybe GitSourceRevision -- ^ information about git-based build source 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON SourceRevision
instance Data.Aeson.ToJSON SourceRevision
