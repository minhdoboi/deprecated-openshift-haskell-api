{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.Parameter where

import qualified Data.Aeson
import GHC.Generics


-- | 
data Parameter = Parameter
    { name :: String -- ^ name of the parameter 
    , displayName :: Maybe String -- ^ optional: provides human readable name for the parameter 
    , description :: Maybe String -- ^ optional: describes the parameter 
    , value :: Maybe String -- ^ optional: holds the parameter data.  if specified, the generator is ignored.  the value replaces all occurrences of the parameter ${Name} expression during template to config transformation 
    , generate :: Maybe String -- ^ optional: generate specifies the generator to be used to generate random string from an input value specified by the from field.  the result string is stored in the value field. if not specified, the value field is untouched 
    , from :: Maybe String -- ^ input value for the generator 
    , required :: Maybe Bool -- ^ indicates the parameter must have a non-empty value or be generated 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON Parameter
instance Data.Aeson.ToJSON Parameter
