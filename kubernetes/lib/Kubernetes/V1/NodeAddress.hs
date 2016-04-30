{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Kubernetes.V1.NodeAddress where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | NodeAddress contains information for the node's address.
data NodeAddress = NodeAddress
    { type_ :: Text -- ^ Node address type, one of Hostname, ExternalIP or InternalIP. 
    , address :: Text -- ^ The node address. 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''NodeAddress)
