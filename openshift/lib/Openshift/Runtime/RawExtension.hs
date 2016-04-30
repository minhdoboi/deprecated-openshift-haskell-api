{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.Runtime.RawExtension where

import qualified Data.Aeson
import GHC.Generics

-- | this may be any JSON object with a 'kind' and 'apiVersion' field; and is preserved unmodified by processing
data RawExtension = RawExtension
    { 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON RawExtension
instance Data.Aeson.ToJSON RawExtension
