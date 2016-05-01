{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.Capabilities where

import GHC.Generics
import Openshift.V1.Capability
import qualified Data.Aeson

-- | Adds and removes POSIX capabilities from running containers.
data Capabilities = Capabilities
    { add :: Maybe [Capability] -- ^ Added capabilities 
    , drop :: Maybe [Capability] -- ^ Removed capabilities 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Capabilities
instance Data.Aeson.ToJSON Capabilities
