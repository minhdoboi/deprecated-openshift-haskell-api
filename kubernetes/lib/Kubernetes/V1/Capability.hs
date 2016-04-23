{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.Capability where

import qualified Data.Aeson
import GHC.Generics


-- | 
data Capability = Capability
    { 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Capability
instance Data.Aeson.ToJSON Capability
