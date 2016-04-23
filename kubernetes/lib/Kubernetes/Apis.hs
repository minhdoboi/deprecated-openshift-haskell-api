{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FlexibleInstances #-}
module Kubernetes.Apis (
      api
    , API
    ) where

import Kubernetes.ApivApi (ApivApi)

import Data.Proxy

type API = ApivApi

api :: Proxy API
api = Proxy
