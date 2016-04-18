{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FlexibleInstances #-}
module Openshift.Apis (
      api
    , API
    ) where

import Openshift.OapivApi (OapivApi)

import Data.Proxy

type API = OapivApi

api :: Proxy API
api = Proxy
