{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.NodeAddress where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | NodeAddress contains information for the node's address.
data NodeAddress = NodeAddress
    { type_ :: Text -- ^ Node address type, one of Hostname, ExternalIP or InternalIP. 
    , address :: Text -- ^ The node address. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON NodeAddress
instance Data.Aeson.ToJSON NodeAddress
