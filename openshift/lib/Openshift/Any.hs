{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE TemplateHaskell            #-}
{-# LANGUAGE TypeOperators              #-}

module Openshift.Any(Any (..)) where

import Data.Aeson
import Control.Monad (mzero)
import GHC.Generics
import Prelude hiding (any)

newtype Any =
  Any { any :: Object
      } deriving (Show, Eq, Generic)


instance FromJSON Any where
  parseJSON (Object o) = return . Any $ o
  parseJSON _          = mzero

instance ToJSON Any where
  toJSON (Any o) = Object o
