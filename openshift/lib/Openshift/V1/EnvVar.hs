{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.EnvVar where

import GHC.Generics
import Data.Text
import Openshift.V1.EnvVarSource
import qualified Data.Aeson

-- | EnvVar represents an environment variable present in a Container.
data EnvVar = EnvVar
    { name :: Text -- ^ Name of the environment variable. Must be a C_IDENTIFIER. 
    , value :: Maybe Text -- ^ Variable references $(VAR_NAME) are expanded using the previous defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\". 
    , valueFrom :: Maybe EnvVarSource -- ^ Source for the environment variable's value. Cannot be used if value is not empty. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON EnvVar
instance Data.Aeson.ToJSON EnvVar
