{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.Patch.Object where

import qualified Data.Aeson
import GHC.Generics


-- | represents an object patch, which may be any of: JSON patch (RFC 6902), JSON merge patch (RFC 7396), or the Kubernetes strategic merge patch
data Object = Object
    { 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Object
instance Data.Aeson.ToJSON Object
