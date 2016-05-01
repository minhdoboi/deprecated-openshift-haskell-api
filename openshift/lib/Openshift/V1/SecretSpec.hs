{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.SecretSpec where

import GHC.Generics
import Data.Text
import Openshift.V1.LocalObjectReference
import qualified Data.Aeson

-- | 
data SecretSpec = SecretSpec
    { secretSource :: LocalObjectReference -- ^ a reference to a secret 
    , mountPath :: Text -- ^ path within the container at which the secret should be mounted 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON SecretSpec
instance Data.Aeson.ToJSON SecretSpec
