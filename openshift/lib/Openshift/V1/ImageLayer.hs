{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.ImageLayer where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | 
data ImageLayer = ImageLayer
    { name :: Text -- ^ the name of the layer (blob, in Docker parlance) 
    , size :: Integer -- ^ size of the layer in bytes 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ImageLayer
instance Data.Aeson.ToJSON ImageLayer
