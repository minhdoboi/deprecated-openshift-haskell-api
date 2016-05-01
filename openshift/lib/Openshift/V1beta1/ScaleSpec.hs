{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1beta1.ScaleSpec where

import GHC.Generics
import qualified Data.Aeson

-- | describes the attributes of a scale subresource
data ScaleSpec = ScaleSpec
    { replicas :: Maybe Integer -- ^ desired number of instances for the scaled object. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ScaleSpec
instance Data.Aeson.ToJSON ScaleSpec
