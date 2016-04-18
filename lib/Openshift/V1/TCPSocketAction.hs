{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Openshift.V1.TCPSocketAction where

import qualified Data.Aeson
import GHC.Generics


-- | TCPSocketAction describes an action based on opening a socket
data TCPSocketAction = TCPSocketAction
    { port :: String -- ^ Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. 
    } deriving (Show, Eq, Generic)

instance Data.Aeson.FromJSON TCPSocketAction
instance Data.Aeson.ToJSON TCPSocketAction
