{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.TLSConfig where

import qualified Data.Aeson
import GHC.Generics
import Data.Text


-- | 
data TLSConfig = TLSConfig
    { termination :: Text -- ^ indicates termination type 
    , certificate :: Maybe Text -- ^ provides certificate contents 
    , key :: Maybe Text -- ^ provides key file contents 
    , caCertificate :: Maybe Text -- ^ provides the cert authority certificate contents 
    , destinationCACertificate :: Maybe Text -- ^ provides the contents of the ca certificate of the final destination.  When using re-encrypt termination this file should be provided in order to have routers use it for health checks on the secure connection 
    , insecureEdgeTerminationPolicy :: Maybe Text -- ^ indicates desired behavior for insecure connections to an edge-terminated route.  If not set, insecure connections will not be allowed 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON TLSConfig
instance Data.Aeson.ToJSON TLSConfig
