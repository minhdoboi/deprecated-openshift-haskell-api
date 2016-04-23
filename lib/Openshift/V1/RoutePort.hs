{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.RoutePort where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | 
data RoutePort = RoutePort
    { targetPort :: Text -- ^ the target port on the endpoints for the service; if this is a string must match the named port, if an integer, must match the port number 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON RoutePort
instance Data.Aeson.ToJSON RoutePort
