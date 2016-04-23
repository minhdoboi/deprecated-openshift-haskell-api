{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.DaemonEndpoint where

import qualified Data.Aeson
import Data.Aeson.Casing
import GHC.Generics


-- | DaemonEndpoint contains information about a single Daemon endpoint.
data DaemonEndpoint = DaemonEndpoint
    {
      port :: Integer -- ^ Port number of the given endpoint. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON DaemonEndpoint where
  parseJSON = Data.Aeson.genericParseJSON $ aesonPrefix snakeCase  
instance Data.Aeson.ToJSON DaemonEndpoint where
  toJSON = Data.Aeson.genericToJSON $ aesonPrefix pascalCase
