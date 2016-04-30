{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.OAuthAccessToken where

import qualified Data.Aeson
import GHC.Generics
import Data.Text
import Kubernetes.V1.ObjectMeta

-- | 
data OAuthAccessToken = OAuthAccessToken
    { kind :: Maybe Text -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe Text -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , clientName :: Maybe Text -- ^ references the client that created this token 
    , expiresIn :: Maybe Integer -- ^ is the seconds from creation time before this token expires 
    , scopes :: Maybe [Text] -- ^ list of requested scopes 
    , redirectURI :: Maybe Text -- ^ redirection URI associated with the token 
    , userName :: Maybe Text -- ^ user name associated with this token 
    , userUID :: Maybe Text -- ^ unique UID associated with this token 
    , authorizeToken :: Maybe Text -- ^ contains the token that authorized this token 
    , refreshToken :: Maybe Text -- ^ optional value by which this token can be renewed 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON OAuthAccessToken
instance Data.Aeson.ToJSON OAuthAccessToken
