{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.GitSourceRevision where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.SourceControlUser


-- | 
data GitSourceRevision = GitSourceRevision
    { commit :: Maybe String -- ^ hash identifying a specific commit 
    , author :: Maybe SourceControlUser -- ^ author of a specific commit 
    , committer :: Maybe SourceControlUser -- ^ committer of a specific commit 
    , message :: Maybe String -- ^ description of a specific commit 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON GitSourceRevision
instance Data.Aeson.ToJSON GitSourceRevision
