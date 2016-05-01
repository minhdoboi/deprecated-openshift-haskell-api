{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.NamedRole where

import GHC.Generics
import Data.Text
import Openshift.V1.Role
import qualified Data.Aeson

-- | 
data NamedRole = NamedRole
    { name :: Text -- ^ name of the role 
    , role :: Role -- ^ the role 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NamedRole
instance Data.Aeson.ToJSON NamedRole
