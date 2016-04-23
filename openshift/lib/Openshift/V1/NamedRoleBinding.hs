{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.NamedRoleBinding where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Openshift.V1.RoleBinding


-- | 
data NamedRoleBinding = NamedRoleBinding
    { name :: Text -- ^ name of the roleBinding 
    , roleBinding :: RoleBinding -- ^ the roleBinding 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NamedRoleBinding
instance Data.Aeson.ToJSON NamedRoleBinding
