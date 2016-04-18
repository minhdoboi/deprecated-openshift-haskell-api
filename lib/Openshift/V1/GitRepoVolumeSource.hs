{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.GitRepoVolumeSource where

import qualified Data.Aeson
import GHC.Generics


-- | GitRepoVolumeSource represents a volume that is pulled from git when the pod is created.
data GitRepoVolumeSource = GitRepoVolumeSource
    { repository :: String -- ^ Repository URL 
    , revision :: Maybe String -- ^ Commit hash for the specified revision. 
    , directory :: Maybe String -- ^ Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON GitRepoVolumeSource
instance Data.Aeson.ToJSON GitRepoVolumeSource
