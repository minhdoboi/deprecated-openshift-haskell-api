{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.NamedRole where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.Role


-- | 
data NamedRole = NamedRole
    { name :: String -- ^ name of the role 
    , role :: Role -- ^ the role 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NamedRole
instance Data.Aeson.ToJSON NamedRole
