{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Kubernetes.V1.NodeCondition where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Data.Aeson.TH (deriveJSON, defaultOptions, fieldLabelModifier)

-- | NodeCondition contains condition infromation for a node.
data NodeCondition = NodeCondition
    { type_ :: Text -- ^ Type of node condition, currently only Ready. 
    , status :: Text -- ^ Status of the condition, one of True, False, Unknown. 
    , lastHeartbeatTime :: Maybe Text -- ^ Last time we got an update on a given condition. 
    , lastTransitionTime :: Maybe Text -- ^ Last time the condition transit from one status to another. 
    , reason :: Maybe Text -- ^ (brief) reason for the condition's last transition. 
    , message :: Maybe Text -- ^ Human readable message indicating details about last transition. 
    } deriving (Show, Eq, Generic)

$(deriveJSON defaultOptions{fieldLabelModifier = (\n -> if Prelude.last n == '_' then Prelude.take ((Prelude.length n) - 1 ) n else n)} ''NodeCondition)
