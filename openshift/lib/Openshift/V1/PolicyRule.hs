{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.PolicyRule where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | 
data PolicyRule = PolicyRule
    { verbs :: [Text] -- ^ list of verbs that apply to ALL the resourceKinds and attributeRestrictions contained in this rule.  The verb * represents all kinds. 
    , attributeRestrictions :: Maybe Text -- ^ vary depending on what the authorizer supports.  If the authorizer does not recognize how to handle the specified value, it should report an error. 
    , apiGroups :: [Text] -- ^ list of API groups this rule applies to.  * represents all API groups. 
    , resources :: [Text] -- ^ list of resources this rule applies to.  * represents all resources. 
    , resourceNames :: Maybe [Text] -- ^ optional white list of names that the rule applies to.  An empty set means that everything is allowed. 
    , nonResourceURLs :: Maybe [Text] -- ^ set of partial urls that a user should have access to. *s are allowed, but only as the full, final step in the path. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON PolicyRule
instance Data.Aeson.ToJSON PolicyRule
