{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Kubernetes.V1.ContainerStateWaiting where

import GHC.Generics
import Data.Text
import qualified Data.Aeson

-- | ContainerStateWaiting is a waiting state of a container.
data ContainerStateWaiting = ContainerStateWaiting
    { reason :: Maybe Text -- ^ (brief) reason the container is not yet running. 
    , message :: Maybe Text -- ^ Message regarding why the container is not yet running. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON ContainerStateWaiting
instance Data.Aeson.ToJSON ContainerStateWaiting
