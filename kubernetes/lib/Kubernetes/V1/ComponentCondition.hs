{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ComponentCondition where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | Information about the condition of a component.
data ComponentCondition = ComponentCondition
    { type_ :: Text -- ^ Type of condition for a component. Valid value: \"Healthy\" 
    , status :: Text -- ^ Status of the condition for a component. Valid values for \"Healthy\": \"True\", \"False\", or \"Unknown\". 
    , message :: Maybe Text -- ^ Message about the condition for a component. For example, information about a health check. 
    , error :: Maybe Text -- ^ Condition error code for a component. For example, a health check error code. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ComponentCondition
instance Data.Aeson.ToJSON ComponentCondition
