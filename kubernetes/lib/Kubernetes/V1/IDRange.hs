{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.IDRange where

import GHC.Generics
import qualified Data.Aeson

-- | 
data IDRange = IDRange
    { min :: Maybe Integer -- ^ min value for the range 
    , max :: Maybe Integer -- ^ min value for the range 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON IDRange
instance Data.Aeson.ToJSON IDRange
