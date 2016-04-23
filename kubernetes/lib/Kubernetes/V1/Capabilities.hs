{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.Capabilities where

import qualified Data.Aeson
import GHC.Generics
import Kubernetes.V1.Capability


-- | Adds and removes POSIX capabilities from running containers.
data Capabilities = Capabilities
    { add :: Maybe [Capability] -- ^ Added capabilities 
    , drop :: Maybe [Capability] -- ^ Removed capabilities 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Capabilities
instance Data.Aeson.ToJSON Capabilities
