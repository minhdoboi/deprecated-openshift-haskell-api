{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.GitSourceRevision where

import GHC.Generics
import Data.Text
import Openshift.V1.SourceControlUser
import qualified Data.Aeson

-- | 
data GitSourceRevision = GitSourceRevision
    { commit :: Maybe Text -- ^ hash identifying a specific commit 
    , author :: Maybe SourceControlUser -- ^ author of a specific commit 
    , committer :: Maybe SourceControlUser -- ^ committer of a specific commit 
    , message :: Maybe Text -- ^ description of a specific commit 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON GitSourceRevision
instance Data.Aeson.ToJSON GitSourceRevision
