{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.SecretBuildSource where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.LocalObjectReference


-- | 
data SecretBuildSource = SecretBuildSource
    { secret :: LocalObjectReference -- ^ name of a secret to be used as a source 
    , destinationDir :: Maybe String -- ^ destination directory for the secret files 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON SecretBuildSource
instance Data.Aeson.ToJSON SecretBuildSource
