{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ProjectSpec where

import GHC.Generics
import qualified Data.Aeson

-- | 
data ProjectSpec = ProjectSpec
    { finalizers :: Maybe [String] -- ^ an opaque list of values that must be empty to permanently remove object from storage 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ProjectSpec
instance Data.Aeson.ToJSON ProjectSpec
