{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ObjectFieldSelector where

import qualified Data.Aeson
import GHC.Generics
import Data.Text

-- | ObjectFieldSelector selects an APIVersioned field of an object.
data ObjectFieldSelector = ObjectFieldSelector
    { apiVersion :: Maybe Text -- ^ Version of the schema the FieldPath is written in terms of, defaults to \"v1\". 
    , fieldPath :: Text -- ^ Path of the field to select in the specified API version. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ObjectFieldSelector
instance Data.Aeson.ToJSON ObjectFieldSelector
