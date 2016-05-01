{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.SecretBuildSource where

import GHC.Generics
import Data.Text
import Openshift.V1.LocalObjectReference
import qualified Data.Aeson

-- | 
data SecretBuildSource = SecretBuildSource
    { secret :: LocalObjectReference -- ^ name of a secret to be used as a source 
    , destinationDir :: Maybe Text -- ^ destination directory for the secret files 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON SecretBuildSource
instance Data.Aeson.ToJSON SecretBuildSource
