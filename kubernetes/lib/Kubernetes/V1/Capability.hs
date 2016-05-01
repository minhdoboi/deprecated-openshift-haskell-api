{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.Capability where

import GHC.Generics
import qualified Data.Aeson

-- | 
data Capability = Capability
    { 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Capability
instance Data.Aeson.ToJSON Capability
