{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.PolicyRule where

import qualified Data.Aeson
import GHC.Generics


-- | 
data PolicyRule = PolicyRule
    { verbs :: [String] -- ^ list of verbs that apply to ALL the resourceKinds and attributeRestrictions contained in this rule.  The verb * represents all kinds. 
    , attributeRestrictions :: Maybe String -- ^ vary depending on what the authorizer supports.  If the authorizer does not recognize how to handle the specified value, it should report an error. 
    , apiGroups :: [String] -- ^ list of API groups this rule applies to.  * represents all API groups. 
    , resources :: [String] -- ^ list of resources this rule applies to.  * represents all resources. 
    , resourceNames :: Maybe [String] -- ^ optional white list of names that the rule applies to.  An empty set means that everything is allowed. 
    , nonResourceURLs :: Maybe [String] -- ^ set of partial urls that a user should have access to. *s are allowed, but only as the full, final step in the path. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PolicyRule
instance Data.Aeson.ToJSON PolicyRule
