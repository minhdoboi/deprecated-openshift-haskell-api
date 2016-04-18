{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.OAuthAuthorizeToken where

import qualified Data.Aeson
import GHC.Generics
import Openshift.V1.ObjectMeta


-- | 
data OAuthAuthorizeToken = OAuthAuthorizeToken
    { kind :: Maybe String -- ^ Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds 
    , apiVersion :: Maybe String -- ^ APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources 
    , metadata :: Maybe ObjectMeta -- ^  
    , clientName :: Maybe String -- ^ references the client that created this token 
    , expiresIn :: Maybe Integer -- ^ seconds from creation time before this token expires 
    , scopes :: Maybe [String] -- ^ list of requested scopes 
    , redirectURI :: Maybe String -- ^ redirection URI associated with the token 
    , state :: Maybe String -- ^ state data from request 
    , userName :: Maybe String -- ^ user name associated with this token 
    , userUID :: Maybe String -- ^ unique UID associated with this token.  userUID and userName must both match for this token to be valid 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON OAuthAuthorizeToken
instance Data.Aeson.ToJSON OAuthAuthorizeToken
