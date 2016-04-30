{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import ClassyPrelude
import Openshift.OapivApi
import qualified Openshift.V1.ProjectList as ProjectList
import qualified Openshift.V1.Project as Project
import Kubernetes.V1.ObjectMeta (name)
import Kubernetes.ApivApi
import qualified Kubernetes.V1.Pod as Pod
import qualified Kubernetes.V1.PodList as PodList
import qualified Kubernetes.V1.PodStatus as PodStatus
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
  pods     <- listPods "sandbox" Nothing Nothing ctx
  print pods

listProjects :: OpenshiftClientContext -> IO [Text]
listProjects ctx = do
  projectList <- withOpenshiftCtxIO ctx $ listNamespacedProject Nothing Nothing Nothing Nothing Nothing Nothing
  return $ catMaybes $ (Project.metadata >=> name) <$> ProjectList.items projectList

listPods :: Text -> Maybe Text -> Maybe Text -> OpenshiftClientContext -> IO [Text]
listPods namespace phase _ ctx = do
  podList <- withOpenshiftCtxIO ctx $ listNamespacedPod namespace Nothing (Just "!openshift.io/build.name,!openshift.io/deployer-pod-for.name") Nothing Nothing Nothing Nothing
  return $ catMaybes $ (Pod.metadata >=> name) <$> (filter f $ PodList.items podList)
  where f pod = case phase of
          Nothing -> True
          Just p  -> (toLower <$> (Pod.status >=> PodStatus.phase) pod) == (Just $ toLower p)
