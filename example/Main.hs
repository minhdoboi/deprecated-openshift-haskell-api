{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import ClassyPrelude
import Openshift.OapivApi
import qualified Openshift.V1.ProjectList as ProjectList
import qualified Openshift.V1.Project as Project
import Kubernetes.V1.ObjectMeta (name)
import Openshift.ClientUtils
import Control.Monad
import Data.Aeson
import Data.Proxy
import GHC.Generics

main :: IO ()
main = do
  ctx      <- getEnvOpenshiftClientContext
  projects <- listProjects ctx
  print projects

listProjects :: OpenshiftClientContext -> IO [Text]
listProjects ctx = do
  projectList <- withOpenshiftCtxIO ctx $ listNamespacedProject Nothing Nothing Nothing Nothing Nothing Nothing
  return $ catMaybes $ (Project.metadata >=> name) <$> ProjectList.items projectList
