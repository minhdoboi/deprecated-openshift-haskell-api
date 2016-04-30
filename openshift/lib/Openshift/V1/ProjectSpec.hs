{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ProjectSpec where

import qualified Data.Aeson
import GHC.Generics

-- | 
data ProjectSpec = ProjectSpec
    { finalizers :: Maybe [String] -- ^ an opaque list of values that must be empty to permanently remove object from storage 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ProjectSpec
instance Data.Aeson.ToJSON ProjectSpec
