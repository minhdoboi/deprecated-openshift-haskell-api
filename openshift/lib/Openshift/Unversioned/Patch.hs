{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.Unversioned.Patch where

import GHC.Generics
import qualified Data.Aeson

-- | Patch is provided to give a concrete name and type to the Kubernetes PATCH request body.
data Patch = Patch
    { 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Patch
instance Data.Aeson.ToJSON Patch
