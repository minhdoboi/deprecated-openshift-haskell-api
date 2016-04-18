{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.LocalObjectReference where

import qualified Data.Aeson
import GHC.Generics


-- | LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
data LocalObjectReference = LocalObjectReference
    { name :: Maybe String -- ^ Name of the referent. More info: http://releases.k8s.io/HEAD/docs/user-guide/identifiers.md#names 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON LocalObjectReference
instance Data.Aeson.ToJSON LocalObjectReference
