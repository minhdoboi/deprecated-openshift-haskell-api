{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports -fcontext-stack=590 #-}

module Openshift.OapivApi (
      connectPostNamespacedBinaryBuildRequestOptionsInstantiatebinary
    , connectPostNamespacedStatusWebhooks
    , connectPostNamespacedStatusWebhooks_0
    , createBuild
    , createBuildConfig
    , createDeploymentConfig
    , createDeploymentConfigRollback
    , createImageStream
    , createImageStreamImport
    , createImageStreamMapping
    , createLocalResourceAccessReview
    , createLocalSubjectAccessReview
    , createNamespacedBuild
    , createNamespacedBuildConfig
    , createNamespacedBuildRequestClone
    , createNamespacedBuildRequestInstantiate
    , createNamespacedClusterNetwork
    , createNamespacedClusterPolicy
    , createNamespacedClusterPolicyBinding
    , createNamespacedClusterRole
    , createNamespacedClusterRoleBinding
    , createNamespacedDeploymentConfig
    , createNamespacedDeploymentConfigRollback
    , createNamespacedGroup
    , createNamespacedHostSubnet
    , createNamespacedIdentity
    , createNamespacedImage
    , createNamespacedImageStream
    , createNamespacedImageStreamImport
    , createNamespacedImageStreamMapping
    , createNamespacedLocalResourceAccessReview
    , createNamespacedLocalSubjectAccessReview
    , createNamespacedNetNamespace
    , createNamespacedOAuthAccessToken
    , createNamespacedOAuthAuthorizeToken
    , createNamespacedOAuthClient
    , createNamespacedOAuthClientAuthorization
    , createNamespacedPolicy
    , createNamespacedPolicyBinding
    , createNamespacedProject
    , createNamespacedProjectRequest
    , createNamespacedResourceAccessReview
    , createNamespacedRole
    , createNamespacedRoleBinding
    , createNamespacedRoute
    , createNamespacedSubjectAccessReview
    , createNamespacedTemplate
    , createNamespacedTemplate_0
    , createNamespacedUser
    , createNamespacedUserIdentityMapping
    , createPolicy
    , createPolicyBinding
    , createResourceAccessReview
    , createRole
    , createRoleBinding
    , createRoute
    , createSubjectAccessReview
    , createTemplate
    , createTemplate_0
    , deleteNamespacedBuild
    , deleteNamespacedBuildConfig
    , deleteNamespacedClusterNetwork
    , deleteNamespacedClusterPolicy
    , deleteNamespacedClusterPolicyBinding
    , deleteNamespacedClusterRole
    , deleteNamespacedClusterRoleBinding
    , deleteNamespacedDeploymentConfig
    , deleteNamespacedGroup
    , deleteNamespacedHostSubnet
    , deleteNamespacedIdentity
    , deleteNamespacedImage
    , deleteNamespacedImageStream
    , deleteNamespacedImageStreamTag
    , deleteNamespacedNetNamespace
    , deleteNamespacedOAuthAccessToken
    , deleteNamespacedOAuthAuthorizeToken
    , deleteNamespacedOAuthClient
    , deleteNamespacedOAuthClientAuthorization
    , deleteNamespacedPolicy
    , deleteNamespacedPolicyBinding
    , deleteNamespacedProject
    , deleteNamespacedRole
    , deleteNamespacedRoleBinding
    , deleteNamespacedRoute
    , deleteNamespacedTemplate
    , deleteNamespacedUser
    , deleteNamespacedUserIdentityMapping
    , deletecollectionNamespacedBuild
    , deletecollectionNamespacedBuildConfig
    , deletecollectionNamespacedClusterNetwork
    , deletecollectionNamespacedClusterPolicy
    , deletecollectionNamespacedClusterPolicyBinding
    , deletecollectionNamespacedDeploymentConfig
    , deletecollectionNamespacedGroup
    , deletecollectionNamespacedHostSubnet
    , deletecollectionNamespacedIdentity
    , deletecollectionNamespacedImage
    , deletecollectionNamespacedImageStream
    , deletecollectionNamespacedNetNamespace
    , deletecollectionNamespacedOAuthClient
    , deletecollectionNamespacedOAuthClientAuthorization
    , deletecollectionNamespacedPolicy
    , deletecollectionNamespacedPolicyBinding
    , deletecollectionNamespacedRoute
    , deletecollectionNamespacedTemplate
    , deletecollectionNamespacedUser
    , getAPIResources
    , listBuild
    , listBuildConfig
    , listDeploymentConfig
    , listImageStream
    , listImageStreamTag
    , listNamespacedBuild
    , listNamespacedBuildConfig
    , listNamespacedClusterNetwork
    , listNamespacedClusterPolicy
    , listNamespacedClusterPolicyBinding
    , listNamespacedClusterRole
    , listNamespacedClusterRoleBinding
    , listNamespacedDeploymentConfig
    , listNamespacedGroup
    , listNamespacedHostSubnet
    , listNamespacedIdentity
    , listNamespacedImage
    , listNamespacedImageStream
    , listNamespacedImageStreamTag
    , listNamespacedNetNamespace
    , listNamespacedOAuthAccessToken
    , listNamespacedOAuthAuthorizeToken
    , listNamespacedOAuthClient
    , listNamespacedOAuthClientAuthorization
    , listNamespacedPolicy
    , listNamespacedPolicyBinding
    , listNamespacedProject
    , listNamespacedProjectRequest
    , listNamespacedRole
    , listNamespacedRoleBinding
    , listNamespacedRoute
    , listNamespacedTemplate
    , listNamespacedUser
    , listPolicy
    , listPolicyBinding
    , listRole
    , listRoleBinding
    , listRoute
    , listTemplate
    , patchNamespacedBuild
    , patchNamespacedBuildConfig
    , patchNamespacedClusterNetwork
    , patchNamespacedClusterPolicy
    , patchNamespacedClusterPolicyBinding
    , patchNamespacedClusterRole
    , patchNamespacedClusterRoleBinding
    , patchNamespacedDeploymentConfig
    , patchNamespacedGroup
    , patchNamespacedHostSubnet
    , patchNamespacedIdentity
    , patchNamespacedImage
    , patchNamespacedImageStream
    , patchNamespacedImageStreamTag
    , patchNamespacedNetNamespace
    , patchNamespacedOAuthClient
    , patchNamespacedOAuthClientAuthorization
    , patchNamespacedPolicy
    , patchNamespacedPolicyBinding
    , patchNamespacedProject
    , patchNamespacedRole
    , patchNamespacedRoleBinding
    , patchNamespacedRoute
    , patchNamespacedScaleScale
    , patchNamespacedTemplate
    , patchNamespacedUser
    , patchNamespacedUserIdentityMapping
    , readNamespacedBuild
    , readNamespacedBuildConfig
    , readNamespacedBuildLogLog
    , readNamespacedClusterNetwork
    , readNamespacedClusterPolicy
    , readNamespacedClusterPolicyBinding
    , readNamespacedClusterRole
    , readNamespacedClusterRoleBinding
    , readNamespacedDeploymentConfig
    , readNamespacedDeploymentConfig_0
    , readNamespacedDeploymentLogLog
    , readNamespacedGroup
    , readNamespacedHostSubnet
    , readNamespacedIdentity
    , readNamespacedImage
    , readNamespacedImageStream
    , readNamespacedImageStreamImage
    , readNamespacedImageStreamTag
    , readNamespacedNetNamespace
    , readNamespacedOAuthAccessToken
    , readNamespacedOAuthAuthorizeToken
    , readNamespacedOAuthClient
    , readNamespacedOAuthClientAuthorization
    , readNamespacedPolicy
    , readNamespacedPolicyBinding
    , readNamespacedProject
    , readNamespacedRole
    , readNamespacedRoleBinding
    , readNamespacedRoute
    , readNamespacedScaleScale
    , readNamespacedSecretListSecrets
    , readNamespacedTemplate
    , readNamespacedUser
    , readNamespacedUserIdentityMapping
    , replaceNamespacedBuild
    , replaceNamespacedBuildConfig
    , replaceNamespacedBuildDetails
    , replaceNamespacedClusterNetwork
    , replaceNamespacedClusterPolicy
    , replaceNamespacedClusterPolicyBinding
    , replaceNamespacedClusterRole
    , replaceNamespacedClusterRoleBinding
    , replaceNamespacedDeploymentConfig
    , replaceNamespacedGroup
    , replaceNamespacedHostSubnet
    , replaceNamespacedIdentity
    , replaceNamespacedImage
    , replaceNamespacedImageStream
    , replaceNamespacedImageStreamStatus
    , replaceNamespacedImageStreamTag
    , replaceNamespacedNetNamespace
    , replaceNamespacedOAuthClient
    , replaceNamespacedOAuthClientAuthorization
    , replaceNamespacedPolicy
    , replaceNamespacedPolicyBinding
    , replaceNamespacedProject
    , replaceNamespacedRole
    , replaceNamespacedRoleBinding
    , replaceNamespacedRoute
    , replaceNamespacedRouteStatus
    , replaceNamespacedScaleScale
    , replaceNamespacedTemplate
    , replaceNamespacedUser
    , replaceNamespacedUserIdentityMapping
    , watchBuildConfigList
    , watchBuildList
    , watchDeploymentConfigList
    , watchImageStreamList
    , watchNamespacedBuild
    , watchNamespacedBuildConfig
    , watchNamespacedBuildConfigList
    , watchNamespacedBuildList
    , watchNamespacedClusterNetwork
    , watchNamespacedClusterNetworkList
    , watchNamespacedClusterPolicy
    , watchNamespacedClusterPolicyBinding
    , watchNamespacedClusterPolicyBindingList
    , watchNamespacedClusterPolicyList
    , watchNamespacedDeploymentConfig
    , watchNamespacedDeploymentConfigList
    , watchNamespacedGroup
    , watchNamespacedGroupList
    , watchNamespacedHostSubnet
    , watchNamespacedHostSubnetList
    , watchNamespacedIdentity
    , watchNamespacedIdentityList
    , watchNamespacedImage
    , watchNamespacedImageList
    , watchNamespacedImageStream
    , watchNamespacedImageStreamList
    , watchNamespacedNetNamespace
    , watchNamespacedNetNamespaceList
    , watchNamespacedOAuthClient
    , watchNamespacedOAuthClientAuthorization
    , watchNamespacedOAuthClientAuthorizationList
    , watchNamespacedOAuthClientList
    , watchNamespacedPolicy
    , watchNamespacedPolicyBinding
    , watchNamespacedPolicyBindingList
    , watchNamespacedPolicyList
    , watchNamespacedRoute
    , watchNamespacedRouteList
    , watchNamespacedTemplate
    , watchNamespacedTemplateList
    , watchNamespacedUser
    , watchNamespacedUserList
    , watchPolicyBindingList
    , watchPolicyList
    , watchRouteList
    , watchTemplateList
    , proxyOapivApi
    , OapivApi
    ) where

import GHC.Generics
import Data.Proxy
import qualified Servant.API as Servant
import Network.HTTP.Client (Manager)
import Servant.API ((:<|>)(..),(:>))
import Servant.Common.BaseUrl (BaseUrl(..))
import Servant.Client
import Control.Monad.Except (ExceptT)
import Openshift.Utils
import Data.Text
import Openshift.V1.Build
import Openshift.V1.BuildConfig
import Openshift.V1.DeploymentConfig
import Openshift.V1.DeploymentConfigRollback
import Openshift.V1.ImageStream
import Openshift.V1.ImageStreamImport
import Openshift.V1.ImageStreamMapping
import Openshift.V1.LocalResourceAccessReview
import Openshift.V1.LocalSubjectAccessReview
import Openshift.V1.BuildRequest
import Openshift.V1.ClusterNetwork
import Openshift.V1.ClusterPolicy
import Openshift.V1.ClusterPolicyBinding
import Openshift.V1.ClusterRole
import Openshift.V1.ClusterRoleBinding
import Openshift.V1.Group
import Openshift.V1.HostSubnet
import Openshift.V1.Identity
import Openshift.V1.Image
import Openshift.V1.NetNamespace
import Openshift.V1.OAuthAccessToken
import Openshift.V1.OAuthAuthorizeToken
import Openshift.V1.OAuthClient
import Openshift.V1.OAuthClientAuthorization
import Openshift.V1.Policy
import Openshift.V1.PolicyBinding
import Openshift.V1.Project
import Openshift.V1.ProjectRequest
import Openshift.V1.ResourceAccessReview
import Openshift.V1.Role
import Openshift.V1.RoleBinding
import Openshift.V1.Route
import Openshift.V1.SubjectAccessReview
import Openshift.V1.Template
import Openshift.V1.User
import Openshift.V1.UserIdentityMapping
import Openshift.Unversioned.Status
import Openshift.V1.DeleteOptions
import Openshift.V1.BuildList
import Openshift.V1.BuildConfigList
import Openshift.V1.DeploymentConfigList
import Openshift.V1.ImageStreamList
import Openshift.V1.ImageStreamTagList
import Openshift.V1.ClusterNetworkList
import Openshift.V1.ClusterPolicyList
import Openshift.V1.ClusterPolicyBindingList
import Openshift.V1.ClusterRoleList
import Openshift.V1.ClusterRoleBindingList
import Openshift.V1.GroupList
import Openshift.V1.HostSubnetList
import Openshift.V1.IdentityList
import Openshift.V1.ImageList
import Openshift.V1.NetNamespaceList
import Openshift.V1.OAuthAccessTokenList
import Openshift.V1.OAuthAuthorizeTokenList
import Openshift.V1.OAuthClientList
import Openshift.V1.OAuthClientAuthorizationList
import Openshift.V1.PolicyList
import Openshift.V1.PolicyBindingList
import Openshift.V1.ProjectList
import Openshift.V1.RoleList
import Openshift.V1.RoleBindingList
import Openshift.V1.RouteList
import Openshift.V1.TemplateList
import Openshift.V1.UserList
import Openshift.Unversioned.Patch
import Openshift.V1.ImageStreamTag
import Openshift.V1beta1.Scale
import Openshift.V1.BuildLog
import Openshift.V1.DeploymentLog
import Openshift.V1.ImageStreamImage
import Openshift.V1.SecretList
import Openshift.Json.WatchEvent


type OapivApi = "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "buildconfigs" :> Servant.Capture "name" Text :> "instantiatebinary" :> Servant.QueryParam "asFile" Text :> Servant.QueryParam "revision.commit" Text :> Servant.QueryParam "revision.message" Text :> Servant.QueryParam "revision.authorName" Text :> Servant.QueryParam "revision.authorEmail" Text :> Servant.QueryParam "revision.committerName" Text :> Servant.QueryParam "revision.committerEmail" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- connectPostNamespacedBinaryBuildRequestOptionsInstantiatebinary
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "buildconfigs" :> Servant.Capture "name" Text :> "webhooks" :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- connectPostNamespacedStatusWebhooks
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "buildconfigs" :> Servant.Capture "name" Text :> "webhooks" :> Servant.Capture "path" Text :> Servant.QueryParam "path" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Text -- connectPostNamespacedStatusWebhooks_0
    :<|> "oapi" :> "v1" :> "builds" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Build :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Build -- createBuild
    :<|> "oapi" :> "v1" :> "buildconfigs" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] BuildConfig :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] BuildConfig -- createBuildConfig
    :<|> "oapi" :> "v1" :> "deploymentconfigs" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeploymentConfig :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] DeploymentConfig -- createDeploymentConfig
    :<|> "oapi" :> "v1" :> "deploymentconfigrollbacks" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeploymentConfigRollback :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] DeploymentConfigRollback -- createDeploymentConfigRollback
    :<|> "oapi" :> "v1" :> "imagestreams" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ImageStream :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ImageStream -- createImageStream
    :<|> "oapi" :> "v1" :> "imagestreamimports" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ImageStreamImport :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ImageStreamImport -- createImageStreamImport
    :<|> "oapi" :> "v1" :> "imagestreammappings" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ImageStreamMapping :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ImageStreamMapping -- createImageStreamMapping
    :<|> "oapi" :> "v1" :> "localresourceaccessreviews" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] LocalResourceAccessReview :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] LocalResourceAccessReview -- createLocalResourceAccessReview
    :<|> "oapi" :> "v1" :> "localsubjectaccessreviews" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] LocalSubjectAccessReview :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] LocalSubjectAccessReview -- createLocalSubjectAccessReview
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "builds" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Build :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Build -- createNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "buildconfigs" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] BuildConfig :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] BuildConfig -- createNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "builds" :> Servant.Capture "name" Text :> "clone" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] BuildRequest :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] BuildRequest -- createNamespacedBuildRequestClone
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "buildconfigs" :> Servant.Capture "name" Text :> "instantiate" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] BuildRequest :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] BuildRequest -- createNamespacedBuildRequestInstantiate
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ClusterNetwork :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ClusterNetwork -- createNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ClusterPolicy :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ClusterPolicy -- createNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ClusterPolicyBinding :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ClusterPolicyBinding -- createNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "clusterroles" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ClusterRole :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ClusterRole -- createNamespacedClusterRole
    :<|> "oapi" :> "v1" :> "clusterrolebindings" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ClusterRoleBinding :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ClusterRoleBinding -- createNamespacedClusterRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigs" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeploymentConfig :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] DeploymentConfig -- createNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigrollbacks" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeploymentConfigRollback :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] DeploymentConfigRollback -- createNamespacedDeploymentConfigRollback
    :<|> "oapi" :> "v1" :> "groups" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Group :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Group -- createNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] HostSubnet :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] HostSubnet -- createNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Identity :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Identity -- createNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Image :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Image -- createNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreams" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ImageStream :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ImageStream -- createNamespacedImageStream
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreamimports" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ImageStreamImport :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ImageStreamImport -- createNamespacedImageStreamImport
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreammappings" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ImageStreamMapping :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ImageStreamMapping -- createNamespacedImageStreamMapping
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "localresourceaccessreviews" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] LocalResourceAccessReview :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] LocalResourceAccessReview -- createNamespacedLocalResourceAccessReview
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "localsubjectaccessreviews" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] LocalSubjectAccessReview :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] LocalSubjectAccessReview -- createNamespacedLocalSubjectAccessReview
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] NetNamespace :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] NetNamespace -- createNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthaccesstokens" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] OAuthAccessToken :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] OAuthAccessToken -- createNamespacedOAuthAccessToken
    :<|> "oapi" :> "v1" :> "oauthauthorizetokens" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] OAuthAuthorizeToken :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] OAuthAuthorizeToken -- createNamespacedOAuthAuthorizeToken
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] OAuthClient :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] OAuthClient -- createNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] OAuthClientAuthorization :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] OAuthClientAuthorization -- createNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policies" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Policy :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Policy -- createNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policybindings" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] PolicyBinding :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] PolicyBinding -- createNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "projects" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Project :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Project -- createNamespacedProject
    :<|> "oapi" :> "v1" :> "projectrequests" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ProjectRequest :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ProjectRequest -- createNamespacedProjectRequest
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "resourceaccessreviews" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ResourceAccessReview :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ResourceAccessReview -- createNamespacedResourceAccessReview
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "roles" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Role :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Role -- createNamespacedRole
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "rolebindings" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] RoleBinding :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] RoleBinding -- createNamespacedRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "routes" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Route :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Route -- createNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "subjectaccessreviews" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] SubjectAccessReview :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] SubjectAccessReview -- createNamespacedSubjectAccessReview
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "processedtemplates" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Template :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Template -- createNamespacedTemplate
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "templates" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Template :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Template -- createNamespacedTemplate_0
    :<|> "oapi" :> "v1" :> "users" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] User :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] User -- createNamespacedUser
    :<|> "oapi" :> "v1" :> "useridentitymappings" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] UserIdentityMapping :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] UserIdentityMapping -- createNamespacedUserIdentityMapping
    :<|> "oapi" :> "v1" :> "policies" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Policy :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Policy -- createPolicy
    :<|> "oapi" :> "v1" :> "policybindings" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] PolicyBinding :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] PolicyBinding -- createPolicyBinding
    :<|> "oapi" :> "v1" :> "resourceaccessreviews" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ResourceAccessReview :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] ResourceAccessReview -- createResourceAccessReview
    :<|> "oapi" :> "v1" :> "roles" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Role :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Role -- createRole
    :<|> "oapi" :> "v1" :> "rolebindings" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] RoleBinding :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] RoleBinding -- createRoleBinding
    :<|> "oapi" :> "v1" :> "routes" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Route :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Route -- createRoute
    :<|> "oapi" :> "v1" :> "subjectaccessreviews" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] SubjectAccessReview :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] SubjectAccessReview -- createSubjectAccessReview
    :<|> "oapi" :> "v1" :> "processedtemplates" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Template :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Template -- createTemplate
    :<|> "oapi" :> "v1" :> "templates" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Template :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.POST 200 '[Servant.JSON] Template -- createTemplate_0
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "builds" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "buildconfigs" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "clusterroles" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedClusterRole
    :<|> "oapi" :> "v1" :> "clusterrolebindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedClusterRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigs" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "groups" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreams" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedImageStream
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreamtags" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedImageStreamTag
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthaccesstokens" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedOAuthAccessToken
    :<|> "oapi" :> "v1" :> "oauthauthorizetokens" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedOAuthAuthorizeToken
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policies" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policybindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "projects" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedProject
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "roles" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedRole
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "rolebindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "routes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "templates" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedTemplate
    :<|> "oapi" :> "v1" :> "users" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeleteOptions :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedUser
    :<|> "oapi" :> "v1" :> "useridentitymappings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deleteNamespacedUserIdentityMapping
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "builds" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "buildconfigs" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigs" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "groups" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreams" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedImageStream
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policies" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policybindings" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "routes" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "templates" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedTemplate
    :<|> "oapi" :> "v1" :> "users" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.DELETE 200 '[Servant.JSON] Status -- deletecollectionNamespacedUser
    :<|> "oapi" :> "v1" :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] () -- getAPIResources
    :<|> "oapi" :> "v1" :> "builds" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] BuildList -- listBuild
    :<|> "oapi" :> "v1" :> "buildconfigs" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] BuildConfigList -- listBuildConfig
    :<|> "oapi" :> "v1" :> "deploymentconfigs" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] DeploymentConfigList -- listDeploymentConfig
    :<|> "oapi" :> "v1" :> "imagestreams" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStreamList -- listImageStream
    :<|> "oapi" :> "v1" :> "imagestreamtags" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStreamTagList -- listImageStreamTag
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "builds" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] BuildList -- listNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "buildconfigs" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] BuildConfigList -- listNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterNetworkList -- listNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterPolicyList -- listNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterPolicyBindingList -- listNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "clusterroles" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterRoleList -- listNamespacedClusterRole
    :<|> "oapi" :> "v1" :> "clusterrolebindings" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterRoleBindingList -- listNamespacedClusterRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigs" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] DeploymentConfigList -- listNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "groups" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] GroupList -- listNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] HostSubnetList -- listNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] IdentityList -- listNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageList -- listNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreams" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStreamList -- listNamespacedImageStream
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreamtags" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStreamTagList -- listNamespacedImageStreamTag
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] NetNamespaceList -- listNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthaccesstokens" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthAccessTokenList -- listNamespacedOAuthAccessToken
    :<|> "oapi" :> "v1" :> "oauthauthorizetokens" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthAuthorizeTokenList -- listNamespacedOAuthAuthorizeToken
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthClientList -- listNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthClientAuthorizationList -- listNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policies" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PolicyList -- listNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policybindings" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PolicyBindingList -- listNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "projects" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ProjectList -- listNamespacedProject
    :<|> "oapi" :> "v1" :> "projectrequests" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Status -- listNamespacedProjectRequest
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "roles" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RoleList -- listNamespacedRole
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "rolebindings" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RoleBindingList -- listNamespacedRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "routes" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RouteList -- listNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "templates" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] TemplateList -- listNamespacedTemplate
    :<|> "oapi" :> "v1" :> "users" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] UserList -- listNamespacedUser
    :<|> "oapi" :> "v1" :> "policies" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PolicyList -- listPolicy
    :<|> "oapi" :> "v1" :> "policybindings" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PolicyBindingList -- listPolicyBinding
    :<|> "oapi" :> "v1" :> "roles" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RoleList -- listRole
    :<|> "oapi" :> "v1" :> "rolebindings" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RoleBindingList -- listRoleBinding
    :<|> "oapi" :> "v1" :> "routes" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RouteList -- listRoute
    :<|> "oapi" :> "v1" :> "templates" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] TemplateList -- listTemplate
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "builds" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Build -- patchNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "buildconfigs" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] BuildConfig -- patchNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ClusterNetwork -- patchNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ClusterPolicy -- patchNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ClusterPolicyBinding -- patchNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "clusterroles" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ClusterRole -- patchNamespacedClusterRole
    :<|> "oapi" :> "v1" :> "clusterrolebindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ClusterRoleBinding -- patchNamespacedClusterRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigs" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] DeploymentConfig -- patchNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "groups" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Group -- patchNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] HostSubnet -- patchNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Identity -- patchNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Image -- patchNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreams" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ImageStream -- patchNamespacedImageStream
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreamtags" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] ImageStreamTag -- patchNamespacedImageStreamTag
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] NetNamespace -- patchNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] OAuthClient -- patchNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] OAuthClientAuthorization -- patchNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policies" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Policy -- patchNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policybindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] PolicyBinding -- patchNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "projects" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Project -- patchNamespacedProject
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "roles" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Role -- patchNamespacedRole
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "rolebindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] RoleBinding -- patchNamespacedRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "routes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Route -- patchNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigs" :> Servant.Capture "name" Text :> "scale" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Scale -- patchNamespacedScaleScale
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "templates" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] Template -- patchNamespacedTemplate
    :<|> "oapi" :> "v1" :> "users" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] User -- patchNamespacedUser
    :<|> "oapi" :> "v1" :> "useridentitymappings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Patch :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PATCH 200 '[Servant.JSON] UserIdentityMapping -- patchNamespacedUserIdentityMapping
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "builds" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Build -- readNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "buildconfigs" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] BuildConfig -- readNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "builds" :> Servant.Capture "name" Text :> "log" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "container" Text :> Servant.QueryParam "follow" Bool :> Servant.QueryParam "previous" Bool :> Servant.QueryParam "sinceSeconds" Integer :> Servant.QueryParam "sinceTime" Text :> Servant.QueryParam "timestamps" Bool :> Servant.QueryParam "tailLines" Integer :> Servant.QueryParam "limitBytes" Integer :> Servant.QueryParam "nowait" Bool :> Servant.QueryParam "version" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] BuildLog -- readNamespacedBuildLogLog
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterNetwork -- readNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterPolicy -- readNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterPolicyBinding -- readNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "clusterroles" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterRole -- readNamespacedClusterRole
    :<|> "oapi" :> "v1" :> "clusterrolebindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ClusterRoleBinding -- readNamespacedClusterRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigs" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] DeploymentConfig -- readNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "generatedeploymentconfigs" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] DeploymentConfig -- readNamespacedDeploymentConfig_0
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigs" :> Servant.Capture "name" Text :> "log" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "container" Text :> Servant.QueryParam "follow" Bool :> Servant.QueryParam "previous" Bool :> Servant.QueryParam "sinceSeconds" Integer :> Servant.QueryParam "sinceTime" Text :> Servant.QueryParam "timestamps" Bool :> Servant.QueryParam "tailLines" Integer :> Servant.QueryParam "limitBytes" Integer :> Servant.QueryParam "nowait" Bool :> Servant.QueryParam "version" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] DeploymentLog -- readNamespacedDeploymentLogLog
    :<|> "oapi" :> "v1" :> "groups" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Group -- readNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] HostSubnet -- readNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Identity -- readNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Image -- readNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreams" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStream -- readNamespacedImageStream
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreamimages" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStreamImage -- readNamespacedImageStreamImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreamtags" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] ImageStreamTag -- readNamespacedImageStreamTag
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] NetNamespace -- readNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthaccesstokens" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthAccessToken -- readNamespacedOAuthAccessToken
    :<|> "oapi" :> "v1" :> "oauthauthorizetokens" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthAuthorizeToken -- readNamespacedOAuthAuthorizeToken
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthClient -- readNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] OAuthClientAuthorization -- readNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policies" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Policy -- readNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policybindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] PolicyBinding -- readNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "projects" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Project -- readNamespacedProject
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "roles" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Role -- readNamespacedRole
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "rolebindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] RoleBinding -- readNamespacedRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "routes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Route -- readNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigs" :> Servant.Capture "name" Text :> "scale" :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Scale -- readNamespacedScaleScale
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreams" :> Servant.Capture "name" Text :> "secrets" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] SecretList -- readNamespacedSecretListSecrets
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "templates" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] Template -- readNamespacedTemplate
    :<|> "oapi" :> "v1" :> "users" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] User -- readNamespacedUser
    :<|> "oapi" :> "v1" :> "useridentitymappings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] UserIdentityMapping -- readNamespacedUserIdentityMapping
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "builds" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Build :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Build -- replaceNamespacedBuild
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "buildconfigs" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] BuildConfig :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] BuildConfig -- replaceNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "builds" :> Servant.Capture "name" Text :> "details" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Build :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Build -- replaceNamespacedBuildDetails
    :<|> "oapi" :> "v1" :> "clusternetworks" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ClusterNetwork :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ClusterNetwork -- replaceNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "clusterpolicies" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ClusterPolicy :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ClusterPolicy -- replaceNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "clusterpolicybindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ClusterPolicyBinding :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ClusterPolicyBinding -- replaceNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "clusterroles" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ClusterRole :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ClusterRole -- replaceNamespacedClusterRole
    :<|> "oapi" :> "v1" :> "clusterrolebindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ClusterRoleBinding :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ClusterRoleBinding -- replaceNamespacedClusterRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigs" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] DeploymentConfig :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] DeploymentConfig -- replaceNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "groups" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Group :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Group -- replaceNamespacedGroup
    :<|> "oapi" :> "v1" :> "hostsubnets" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] HostSubnet :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] HostSubnet -- replaceNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "identities" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Identity :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Identity -- replaceNamespacedIdentity
    :<|> "oapi" :> "v1" :> "images" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Image :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Image -- replaceNamespacedImage
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreams" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ImageStream :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ImageStream -- replaceNamespacedImageStream
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreams" :> Servant.Capture "name" Text :> "status" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ImageStream :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ImageStream -- replaceNamespacedImageStreamStatus
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreamtags" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] ImageStreamTag :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] ImageStreamTag -- replaceNamespacedImageStreamTag
    :<|> "oapi" :> "v1" :> "netnamespaces" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] NetNamespace :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] NetNamespace -- replaceNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "oauthclients" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] OAuthClient :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] OAuthClient -- replaceNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "oauthclientauthorizations" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] OAuthClientAuthorization :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] OAuthClientAuthorization -- replaceNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policies" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Policy :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Policy -- replaceNamespacedPolicy
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "policybindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] PolicyBinding :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] PolicyBinding -- replaceNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "projects" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Project :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Project -- replaceNamespacedProject
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "roles" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Role :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Role -- replaceNamespacedRole
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "rolebindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] RoleBinding :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] RoleBinding -- replaceNamespacedRoleBinding
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "routes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Route :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Route -- replaceNamespacedRoute
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "routes" :> Servant.Capture "name" Text :> "status" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Route :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Route -- replaceNamespacedRouteStatus
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigs" :> Servant.Capture "name" Text :> "scale" :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Scale :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Scale -- replaceNamespacedScaleScale
    :<|> "oapi" :> "v1" :> "namespaces" :> Servant.Capture "namespace" Text :> "templates" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] Template :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] Template -- replaceNamespacedTemplate
    :<|> "oapi" :> "v1" :> "users" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] User :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] User -- replaceNamespacedUser
    :<|> "oapi" :> "v1" :> "useridentitymappings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.ReqBody '[Servant.JSON] UserIdentityMapping :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.PUT 200 '[Servant.JSON] UserIdentityMapping -- replaceNamespacedUserIdentityMapping
    :<|> "oapi" :> "v1" :> "watch" :> "buildconfigs" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchBuildConfigList
    :<|> "oapi" :> "v1" :> "watch" :> "builds" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchBuildList
    :<|> "oapi" :> "v1" :> "watch" :> "deploymentconfigs" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchDeploymentConfigList
    :<|> "oapi" :> "v1" :> "watch" :> "imagestreams" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchImageStreamList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "builds" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedBuild
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "buildconfigs" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedBuildConfig
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "buildconfigs" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedBuildConfigList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "builds" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedBuildList
    :<|> "oapi" :> "v1" :> "watch" :> "clusternetworks" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedClusterNetwork
    :<|> "oapi" :> "v1" :> "watch" :> "clusternetworks" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedClusterNetworkList
    :<|> "oapi" :> "v1" :> "watch" :> "clusterpolicies" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedClusterPolicy
    :<|> "oapi" :> "v1" :> "watch" :> "clusterpolicybindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedClusterPolicyBinding
    :<|> "oapi" :> "v1" :> "watch" :> "clusterpolicybindings" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedClusterPolicyBindingList
    :<|> "oapi" :> "v1" :> "watch" :> "clusterpolicies" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedClusterPolicyList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigs" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedDeploymentConfig
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "deploymentconfigs" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedDeploymentConfigList
    :<|> "oapi" :> "v1" :> "watch" :> "groups" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedGroup
    :<|> "oapi" :> "v1" :> "watch" :> "groups" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedGroupList
    :<|> "oapi" :> "v1" :> "watch" :> "hostsubnets" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedHostSubnet
    :<|> "oapi" :> "v1" :> "watch" :> "hostsubnets" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedHostSubnetList
    :<|> "oapi" :> "v1" :> "watch" :> "identities" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedIdentity
    :<|> "oapi" :> "v1" :> "watch" :> "identities" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedIdentityList
    :<|> "oapi" :> "v1" :> "watch" :> "images" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedImage
    :<|> "oapi" :> "v1" :> "watch" :> "images" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedImageList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreams" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedImageStream
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "imagestreams" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedImageStreamList
    :<|> "oapi" :> "v1" :> "watch" :> "netnamespaces" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedNetNamespace
    :<|> "oapi" :> "v1" :> "watch" :> "netnamespaces" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedNetNamespaceList
    :<|> "oapi" :> "v1" :> "watch" :> "oauthclients" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedOAuthClient
    :<|> "oapi" :> "v1" :> "watch" :> "oauthclientauthorizations" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedOAuthClientAuthorization
    :<|> "oapi" :> "v1" :> "watch" :> "oauthclientauthorizations" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedOAuthClientAuthorizationList
    :<|> "oapi" :> "v1" :> "watch" :> "oauthclients" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedOAuthClientList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "policies" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPolicy
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "policybindings" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPolicyBinding
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "policybindings" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPolicyBindingList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "policies" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedPolicyList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "routes" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedRoute
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "routes" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedRouteList
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "templates" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedTemplate
    :<|> "oapi" :> "v1" :> "watch" :> "namespaces" :> Servant.Capture "namespace" Text :> "templates" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedTemplateList
    :<|> "oapi" :> "v1" :> "watch" :> "users" :> Servant.Capture "name" Text :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedUser
    :<|> "oapi" :> "v1" :> "watch" :> "users" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchNamespacedUserList
    :<|> "oapi" :> "v1" :> "watch" :> "policybindings" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchPolicyBindingList
    :<|> "oapi" :> "v1" :> "watch" :> "policies" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchPolicyList
    :<|> "oapi" :> "v1" :> "watch" :> "routes" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchRouteList
    :<|> "oapi" :> "v1" :> "watch" :> "templates" :> Servant.QueryParam "pretty" Text :> Servant.QueryParam "labelSelector" Text :> Servant.QueryParam "fieldSelector" Text :> Servant.QueryParam "watch" Bool :> Servant.QueryParam "resourceVersion" Text :> Servant.QueryParam "timeoutSeconds" Integer :> Servant.Header "Authorization" Text :> Servant.Verb 'Servant.GET 200 '[Servant.JSON] WatchEvent -- watchTemplateList


-- | connect POST requests to instantiatebinary of BinaryBuildRequestOptions
connectPostNamespacedBinaryBuildRequestOptionsInstantiatebinary :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect POST requests to webhooks of Status
connectPostNamespacedStatusWebhooks :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | connect POST requests to webhooks of Status
connectPostNamespacedStatusWebhooks_0 :: Text -> Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Text

-- | create a Build
createBuild :: Maybe Text -> Build -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Build

-- | create a BuildConfig
createBuildConfig :: Maybe Text -> BuildConfig -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfig

-- | create a DeploymentConfig
createDeploymentConfig :: Maybe Text -> DeploymentConfig -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfig

-- | create a DeploymentConfigRollback
createDeploymentConfigRollback :: Maybe Text -> DeploymentConfigRollback -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfigRollback

-- | create a ImageStream
createImageStream :: Maybe Text -> ImageStream -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStream

-- | create a ImageStreamImport
createImageStreamImport :: Maybe Text -> ImageStreamImport -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamImport

-- | create a ImageStreamMapping
createImageStreamMapping :: Maybe Text -> ImageStreamMapping -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamMapping

-- | create a LocalResourceAccessReview
createLocalResourceAccessReview :: Maybe Text -> LocalResourceAccessReview -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO LocalResourceAccessReview

-- | create a LocalSubjectAccessReview
createLocalSubjectAccessReview :: Maybe Text -> LocalSubjectAccessReview -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO LocalSubjectAccessReview

-- | create a Build
createNamespacedBuild :: Text -> Maybe Text -> Build -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Build

-- | create a BuildConfig
createNamespacedBuildConfig :: Text -> Maybe Text -> BuildConfig -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfig

-- | create clone of a BuildRequest
createNamespacedBuildRequestClone :: Text -> Text -> Maybe Text -> BuildRequest -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO BuildRequest

-- | create instantiate of a BuildRequest
createNamespacedBuildRequestInstantiate :: Text -> Text -> Maybe Text -> BuildRequest -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO BuildRequest

-- | create a ClusterNetwork
createNamespacedClusterNetwork :: Maybe Text -> ClusterNetwork -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterNetwork

-- | create a ClusterPolicy
createNamespacedClusterPolicy :: Maybe Text -> ClusterPolicy -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicy

-- | create a ClusterPolicyBinding
createNamespacedClusterPolicyBinding :: Maybe Text -> ClusterPolicyBinding -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicyBinding

-- | create a ClusterRole
createNamespacedClusterRole :: Maybe Text -> ClusterRole -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRole

-- | create a ClusterRoleBinding
createNamespacedClusterRoleBinding :: Maybe Text -> ClusterRoleBinding -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRoleBinding

-- | create a DeploymentConfig
createNamespacedDeploymentConfig :: Text -> Maybe Text -> DeploymentConfig -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfig

-- | create a DeploymentConfigRollback
createNamespacedDeploymentConfigRollback :: Text -> Maybe Text -> DeploymentConfigRollback -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfigRollback

-- | create a Group
createNamespacedGroup :: Maybe Text -> Group -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Group

-- | create a HostSubnet
createNamespacedHostSubnet :: Maybe Text -> HostSubnet -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO HostSubnet

-- | create a Identity
createNamespacedIdentity :: Maybe Text -> Identity -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Identity

-- | create a Image
createNamespacedImage :: Maybe Text -> Image -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Image

-- | create a ImageStream
createNamespacedImageStream :: Text -> Maybe Text -> ImageStream -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStream

-- | create a ImageStreamImport
createNamespacedImageStreamImport :: Text -> Maybe Text -> ImageStreamImport -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamImport

-- | create a ImageStreamMapping
createNamespacedImageStreamMapping :: Text -> Maybe Text -> ImageStreamMapping -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamMapping

-- | create a LocalResourceAccessReview
createNamespacedLocalResourceAccessReview :: Text -> Maybe Text -> LocalResourceAccessReview -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO LocalResourceAccessReview

-- | create a LocalSubjectAccessReview
createNamespacedLocalSubjectAccessReview :: Text -> Maybe Text -> LocalSubjectAccessReview -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO LocalSubjectAccessReview

-- | create a NetNamespace
createNamespacedNetNamespace :: Maybe Text -> NetNamespace -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO NetNamespace

-- | create a OAuthAccessToken
createNamespacedOAuthAccessToken :: Maybe Text -> OAuthAccessToken -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthAccessToken

-- | create a OAuthAuthorizeToken
createNamespacedOAuthAuthorizeToken :: Maybe Text -> OAuthAuthorizeToken -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthAuthorizeToken

-- | create a OAuthClient
createNamespacedOAuthClient :: Maybe Text -> OAuthClient -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClient

-- | create a OAuthClientAuthorization
createNamespacedOAuthClientAuthorization :: Maybe Text -> OAuthClientAuthorization -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClientAuthorization

-- | create a Policy
createNamespacedPolicy :: Text -> Maybe Text -> Policy -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Policy

-- | create a PolicyBinding
createNamespacedPolicyBinding :: Text -> Maybe Text -> PolicyBinding -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBinding

-- | create a Project
createNamespacedProject :: Maybe Text -> Project -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Project

-- | create a ProjectRequest
createNamespacedProjectRequest :: Maybe Text -> ProjectRequest -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ProjectRequest

-- | create a ResourceAccessReview
createNamespacedResourceAccessReview :: Text -> Maybe Text -> ResourceAccessReview -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ResourceAccessReview

-- | create a Role
createNamespacedRole :: Text -> Maybe Text -> Role -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Role

-- | create a RoleBinding
createNamespacedRoleBinding :: Text -> Maybe Text -> RoleBinding -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBinding

-- | create a Route
createNamespacedRoute :: Text -> Maybe Text -> Route -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Route

-- | create a SubjectAccessReview
createNamespacedSubjectAccessReview :: Text -> Maybe Text -> SubjectAccessReview -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO SubjectAccessReview

-- | create a Template
createNamespacedTemplate :: Text -> Maybe Text -> Template -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | create a Template
createNamespacedTemplate_0 :: Text -> Maybe Text -> Template -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | create a User
createNamespacedUser :: Maybe Text -> User -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO User

-- | create a UserIdentityMapping
createNamespacedUserIdentityMapping :: Maybe Text -> UserIdentityMapping -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO UserIdentityMapping

-- | create a Policy
createPolicy :: Maybe Text -> Policy -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Policy

-- | create a PolicyBinding
createPolicyBinding :: Maybe Text -> PolicyBinding -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBinding

-- | create a ResourceAccessReview
createResourceAccessReview :: Maybe Text -> ResourceAccessReview -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ResourceAccessReview

-- | create a Role
createRole :: Maybe Text -> Role -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Role

-- | create a RoleBinding
createRoleBinding :: Maybe Text -> RoleBinding -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBinding

-- | create a Route
createRoute :: Maybe Text -> Route -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Route

-- | create a SubjectAccessReview
createSubjectAccessReview :: Maybe Text -> SubjectAccessReview -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO SubjectAccessReview

-- | create a Template
createTemplate :: Maybe Text -> Template -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | create a Template
createTemplate_0 :: Maybe Text -> Template -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | delete a Build
deleteNamespacedBuild :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a BuildConfig
deleteNamespacedBuildConfig :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ClusterNetwork
deleteNamespacedClusterNetwork :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ClusterPolicy
deleteNamespacedClusterPolicy :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ClusterPolicyBinding
deleteNamespacedClusterPolicyBinding :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ClusterRole
deleteNamespacedClusterRole :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ClusterRoleBinding
deleteNamespacedClusterRoleBinding :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a DeploymentConfig
deleteNamespacedDeploymentConfig :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Group
deleteNamespacedGroup :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a HostSubnet
deleteNamespacedHostSubnet :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Identity
deleteNamespacedIdentity :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Image
deleteNamespacedImage :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ImageStream
deleteNamespacedImageStream :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a ImageStreamTag
deleteNamespacedImageStreamTag :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a NetNamespace
deleteNamespacedNetNamespace :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a OAuthAccessToken
deleteNamespacedOAuthAccessToken :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a OAuthAuthorizeToken
deleteNamespacedOAuthAuthorizeToken :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a OAuthClient
deleteNamespacedOAuthClient :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a OAuthClientAuthorization
deleteNamespacedOAuthClientAuthorization :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Policy
deleteNamespacedPolicy :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a PolicyBinding
deleteNamespacedPolicyBinding :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Project
deleteNamespacedProject :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Role
deleteNamespacedRole :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a RoleBinding
deleteNamespacedRoleBinding :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Route
deleteNamespacedRoute :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a Template
deleteNamespacedTemplate :: Text -> Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a User
deleteNamespacedUser :: Text -> Maybe Text -> DeleteOptions -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete a UserIdentityMapping
deleteNamespacedUserIdentityMapping :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Build
deletecollectionNamespacedBuild :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of BuildConfig
deletecollectionNamespacedBuildConfig :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of ClusterNetwork
deletecollectionNamespacedClusterNetwork :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of ClusterPolicy
deletecollectionNamespacedClusterPolicy :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of ClusterPolicyBinding
deletecollectionNamespacedClusterPolicyBinding :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of DeploymentConfig
deletecollectionNamespacedDeploymentConfig :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Group
deletecollectionNamespacedGroup :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of HostSubnet
deletecollectionNamespacedHostSubnet :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Identity
deletecollectionNamespacedIdentity :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Image
deletecollectionNamespacedImage :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of ImageStream
deletecollectionNamespacedImageStream :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of NetNamespace
deletecollectionNamespacedNetNamespace :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of OAuthClient
deletecollectionNamespacedOAuthClient :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of OAuthClientAuthorization
deletecollectionNamespacedOAuthClientAuthorization :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Policy
deletecollectionNamespacedPolicy :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of PolicyBinding
deletecollectionNamespacedPolicyBinding :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Route
deletecollectionNamespacedRoute :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of Template
deletecollectionNamespacedTemplate :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | delete collection of User
deletecollectionNamespacedUser :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | get available resources
getAPIResources :: Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ()

-- | list or watch objects of kind Build
listBuild :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO BuildList

-- | list or watch objects of kind BuildConfig
listBuildConfig :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfigList

-- | list or watch objects of kind DeploymentConfig
listDeploymentConfig :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfigList

-- | list or watch objects of kind ImageStream
listImageStream :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamList

-- | list objects of kind ImageStreamTag
listImageStreamTag :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamTagList

-- | list or watch objects of kind Build
listNamespacedBuild :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO BuildList

-- | list or watch objects of kind BuildConfig
listNamespacedBuildConfig :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfigList

-- | list or watch objects of kind ClusterNetwork
listNamespacedClusterNetwork :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterNetworkList

-- | list or watch objects of kind ClusterPolicy
listNamespacedClusterPolicy :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicyList

-- | list or watch objects of kind ClusterPolicyBinding
listNamespacedClusterPolicyBinding :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicyBindingList

-- | list objects of kind ClusterRole
listNamespacedClusterRole :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRoleList

-- | list objects of kind ClusterRoleBinding
listNamespacedClusterRoleBinding :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRoleBindingList

-- | list or watch objects of kind DeploymentConfig
listNamespacedDeploymentConfig :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfigList

-- | list or watch objects of kind Group
listNamespacedGroup :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO GroupList

-- | list or watch objects of kind HostSubnet
listNamespacedHostSubnet :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO HostSubnetList

-- | list or watch objects of kind Identity
listNamespacedIdentity :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO IdentityList

-- | list or watch objects of kind Image
listNamespacedImage :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageList

-- | list or watch objects of kind ImageStream
listNamespacedImageStream :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamList

-- | list objects of kind ImageStreamTag
listNamespacedImageStreamTag :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamTagList

-- | list or watch objects of kind NetNamespace
listNamespacedNetNamespace :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO NetNamespaceList

-- | list objects of kind OAuthAccessToken
listNamespacedOAuthAccessToken :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthAccessTokenList

-- | list objects of kind OAuthAuthorizeToken
listNamespacedOAuthAuthorizeToken :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthAuthorizeTokenList

-- | list or watch objects of kind OAuthClient
listNamespacedOAuthClient :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClientList

-- | list or watch objects of kind OAuthClientAuthorization
listNamespacedOAuthClientAuthorization :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClientAuthorizationList

-- | list or watch objects of kind Policy
listNamespacedPolicy :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyList

-- | list or watch objects of kind PolicyBinding
listNamespacedPolicyBinding :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBindingList

-- | list objects of kind Project
listNamespacedProject :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ProjectList

-- | list objects of kind ProjectRequest
listNamespacedProjectRequest :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Status

-- | list objects of kind Role
listNamespacedRole :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO RoleList

-- | list objects of kind RoleBinding
listNamespacedRoleBinding :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBindingList

-- | list or watch objects of kind Route
listNamespacedRoute :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO RouteList

-- | list or watch objects of kind Template
listNamespacedTemplate :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO TemplateList

-- | list or watch objects of kind User
listNamespacedUser :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO UserList

-- | list or watch objects of kind Policy
listPolicy :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyList

-- | list or watch objects of kind PolicyBinding
listPolicyBinding :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBindingList

-- | list objects of kind Role
listRole :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO RoleList

-- | list objects of kind RoleBinding
listRoleBinding :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBindingList

-- | list or watch objects of kind Route
listRoute :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO RouteList

-- | list or watch objects of kind Template
listTemplate :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO TemplateList

-- | partially update the specified Build
patchNamespacedBuild :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Build

-- | partially update the specified BuildConfig
patchNamespacedBuildConfig :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfig

-- | partially update the specified ClusterNetwork
patchNamespacedClusterNetwork :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterNetwork

-- | partially update the specified ClusterPolicy
patchNamespacedClusterPolicy :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicy

-- | partially update the specified ClusterPolicyBinding
patchNamespacedClusterPolicyBinding :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicyBinding

-- | partially update the specified ClusterRole
patchNamespacedClusterRole :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRole

-- | partially update the specified ClusterRoleBinding
patchNamespacedClusterRoleBinding :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRoleBinding

-- | partially update the specified DeploymentConfig
patchNamespacedDeploymentConfig :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfig

-- | partially update the specified Group
patchNamespacedGroup :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Group

-- | partially update the specified HostSubnet
patchNamespacedHostSubnet :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO HostSubnet

-- | partially update the specified Identity
patchNamespacedIdentity :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Identity

-- | partially update the specified Image
patchNamespacedImage :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Image

-- | partially update the specified ImageStream
patchNamespacedImageStream :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStream

-- | partially update the specified ImageStreamTag
patchNamespacedImageStreamTag :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamTag

-- | partially update the specified NetNamespace
patchNamespacedNetNamespace :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO NetNamespace

-- | partially update the specified OAuthClient
patchNamespacedOAuthClient :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClient

-- | partially update the specified OAuthClientAuthorization
patchNamespacedOAuthClientAuthorization :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClientAuthorization

-- | partially update the specified Policy
patchNamespacedPolicy :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Policy

-- | partially update the specified PolicyBinding
patchNamespacedPolicyBinding :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBinding

-- | partially update the specified Project
patchNamespacedProject :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Project

-- | partially update the specified Role
patchNamespacedRole :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Role

-- | partially update the specified RoleBinding
patchNamespacedRoleBinding :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBinding

-- | partially update the specified Route
patchNamespacedRoute :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Route

-- | partially update scale of the specified Scale
patchNamespacedScaleScale :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Scale

-- | partially update the specified Template
patchNamespacedTemplate :: Text -> Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | partially update the specified User
patchNamespacedUser :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO User

-- | partially update the specified UserIdentityMapping
patchNamespacedUserIdentityMapping :: Text -> Maybe Text -> Patch -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO UserIdentityMapping

-- | read the specified Build
readNamespacedBuild :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Build

-- | read the specified BuildConfig
readNamespacedBuildConfig :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfig

-- | read log of the specified BuildLog
readNamespacedBuildLogLog :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Bool -> Maybe Integer -> Maybe Text -> Maybe Bool -> Maybe Integer -> Maybe Integer -> Maybe Bool -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO BuildLog

-- | read the specified ClusterNetwork
readNamespacedClusterNetwork :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterNetwork

-- | read the specified ClusterPolicy
readNamespacedClusterPolicy :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicy

-- | read the specified ClusterPolicyBinding
readNamespacedClusterPolicyBinding :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicyBinding

-- | read the specified ClusterRole
readNamespacedClusterRole :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRole

-- | read the specified ClusterRoleBinding
readNamespacedClusterRoleBinding :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRoleBinding

-- | read the specified DeploymentConfig
readNamespacedDeploymentConfig :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfig

-- | read the specified DeploymentConfig
readNamespacedDeploymentConfig_0 :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfig

-- | read log of the specified DeploymentLog
readNamespacedDeploymentLogLog :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Bool -> Maybe Integer -> Maybe Text -> Maybe Bool -> Maybe Integer -> Maybe Integer -> Maybe Bool -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentLog

-- | read the specified Group
readNamespacedGroup :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Group

-- | read the specified HostSubnet
readNamespacedHostSubnet :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO HostSubnet

-- | read the specified Identity
readNamespacedIdentity :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Identity

-- | read the specified Image
readNamespacedImage :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Image

-- | read the specified ImageStream
readNamespacedImageStream :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStream

-- | read the specified ImageStreamImage
readNamespacedImageStreamImage :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamImage

-- | read the specified ImageStreamTag
readNamespacedImageStreamTag :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamTag

-- | read the specified NetNamespace
readNamespacedNetNamespace :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO NetNamespace

-- | read the specified OAuthAccessToken
readNamespacedOAuthAccessToken :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthAccessToken

-- | read the specified OAuthAuthorizeToken
readNamespacedOAuthAuthorizeToken :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthAuthorizeToken

-- | read the specified OAuthClient
readNamespacedOAuthClient :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClient

-- | read the specified OAuthClientAuthorization
readNamespacedOAuthClientAuthorization :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClientAuthorization

-- | read the specified Policy
readNamespacedPolicy :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Policy

-- | read the specified PolicyBinding
readNamespacedPolicyBinding :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBinding

-- | read the specified Project
readNamespacedProject :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Project

-- | read the specified Role
readNamespacedRole :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Role

-- | read the specified RoleBinding
readNamespacedRoleBinding :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBinding

-- | read the specified Route
readNamespacedRoute :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Route

-- | read scale of the specified Scale
readNamespacedScaleScale :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Scale

-- | read secrets of the specified SecretList
readNamespacedSecretListSecrets :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO SecretList

-- | read the specified Template
readNamespacedTemplate :: Text -> Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | read the specified User
readNamespacedUser :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO User

-- | read the specified UserIdentityMapping
readNamespacedUserIdentityMapping :: Text -> Maybe Text -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO UserIdentityMapping

-- | replace the specified Build
replaceNamespacedBuild :: Text -> Text -> Maybe Text -> Build -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Build

-- | replace the specified BuildConfig
replaceNamespacedBuildConfig :: Text -> Text -> Maybe Text -> BuildConfig -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO BuildConfig

-- | replace details of the specified Build
replaceNamespacedBuildDetails :: Text -> Text -> Maybe Text -> Build -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Build

-- | replace the specified ClusterNetwork
replaceNamespacedClusterNetwork :: Text -> Maybe Text -> ClusterNetwork -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterNetwork

-- | replace the specified ClusterPolicy
replaceNamespacedClusterPolicy :: Text -> Maybe Text -> ClusterPolicy -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicy

-- | replace the specified ClusterPolicyBinding
replaceNamespacedClusterPolicyBinding :: Text -> Maybe Text -> ClusterPolicyBinding -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterPolicyBinding

-- | replace the specified ClusterRole
replaceNamespacedClusterRole :: Text -> Maybe Text -> ClusterRole -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRole

-- | replace the specified ClusterRoleBinding
replaceNamespacedClusterRoleBinding :: Text -> Maybe Text -> ClusterRoleBinding -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ClusterRoleBinding

-- | replace the specified DeploymentConfig
replaceNamespacedDeploymentConfig :: Text -> Text -> Maybe Text -> DeploymentConfig -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO DeploymentConfig

-- | replace the specified Group
replaceNamespacedGroup :: Text -> Maybe Text -> Group -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Group

-- | replace the specified HostSubnet
replaceNamespacedHostSubnet :: Text -> Maybe Text -> HostSubnet -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO HostSubnet

-- | replace the specified Identity
replaceNamespacedIdentity :: Text -> Maybe Text -> Identity -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Identity

-- | replace the specified Image
replaceNamespacedImage :: Text -> Maybe Text -> Image -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Image

-- | replace the specified ImageStream
replaceNamespacedImageStream :: Text -> Text -> Maybe Text -> ImageStream -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStream

-- | replace status of the specified ImageStream
replaceNamespacedImageStreamStatus :: Text -> Text -> Maybe Text -> ImageStream -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStream

-- | replace the specified ImageStreamTag
replaceNamespacedImageStreamTag :: Text -> Text -> Maybe Text -> ImageStreamTag -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO ImageStreamTag

-- | replace the specified NetNamespace
replaceNamespacedNetNamespace :: Text -> Maybe Text -> NetNamespace -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO NetNamespace

-- | replace the specified OAuthClient
replaceNamespacedOAuthClient :: Text -> Maybe Text -> OAuthClient -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClient

-- | replace the specified OAuthClientAuthorization
replaceNamespacedOAuthClientAuthorization :: Text -> Maybe Text -> OAuthClientAuthorization -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO OAuthClientAuthorization

-- | replace the specified Policy
replaceNamespacedPolicy :: Text -> Text -> Maybe Text -> Policy -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Policy

-- | replace the specified PolicyBinding
replaceNamespacedPolicyBinding :: Text -> Text -> Maybe Text -> PolicyBinding -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO PolicyBinding

-- | replace the specified Project
replaceNamespacedProject :: Text -> Maybe Text -> Project -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Project

-- | replace the specified Role
replaceNamespacedRole :: Text -> Text -> Maybe Text -> Role -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Role

-- | replace the specified RoleBinding
replaceNamespacedRoleBinding :: Text -> Text -> Maybe Text -> RoleBinding -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO RoleBinding

-- | replace the specified Route
replaceNamespacedRoute :: Text -> Text -> Maybe Text -> Route -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Route

-- | replace status of the specified Route
replaceNamespacedRouteStatus :: Text -> Text -> Maybe Text -> Route -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Route

-- | replace scale of the specified Scale
replaceNamespacedScaleScale :: Text -> Text -> Maybe Text -> Scale -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Scale

-- | replace the specified Template
replaceNamespacedTemplate :: Text -> Text -> Maybe Text -> Template -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO Template

-- | replace the specified User
replaceNamespacedUser :: Text -> Maybe Text -> User -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO User

-- | replace the specified UserIdentityMapping
replaceNamespacedUserIdentityMapping :: Text -> Maybe Text -> UserIdentityMapping -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO UserIdentityMapping

-- | watch individual changes to a list of BuildConfig
watchBuildConfigList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Build
watchBuildList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of DeploymentConfig
watchDeploymentConfigList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ImageStream
watchImageStreamList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Build
watchNamespacedBuild :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind BuildConfig
watchNamespacedBuildConfig :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of BuildConfig
watchNamespacedBuildConfigList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Build
watchNamespacedBuildList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind ClusterNetwork
watchNamespacedClusterNetwork :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ClusterNetwork
watchNamespacedClusterNetworkList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind ClusterPolicy
watchNamespacedClusterPolicy :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind ClusterPolicyBinding
watchNamespacedClusterPolicyBinding :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ClusterPolicyBinding
watchNamespacedClusterPolicyBindingList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ClusterPolicy
watchNamespacedClusterPolicyList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind DeploymentConfig
watchNamespacedDeploymentConfig :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of DeploymentConfig
watchNamespacedDeploymentConfigList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Group
watchNamespacedGroup :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Group
watchNamespacedGroupList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind HostSubnet
watchNamespacedHostSubnet :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of HostSubnet
watchNamespacedHostSubnetList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Identity
watchNamespacedIdentity :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Identity
watchNamespacedIdentityList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Image
watchNamespacedImage :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Image
watchNamespacedImageList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind ImageStream
watchNamespacedImageStream :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of ImageStream
watchNamespacedImageStreamList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind NetNamespace
watchNamespacedNetNamespace :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of NetNamespace
watchNamespacedNetNamespaceList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind OAuthClient
watchNamespacedOAuthClient :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind OAuthClientAuthorization
watchNamespacedOAuthClientAuthorization :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of OAuthClientAuthorization
watchNamespacedOAuthClientAuthorizationList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of OAuthClient
watchNamespacedOAuthClientList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Policy
watchNamespacedPolicy :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind PolicyBinding
watchNamespacedPolicyBinding :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of PolicyBinding
watchNamespacedPolicyBindingList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Policy
watchNamespacedPolicyList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Route
watchNamespacedRoute :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Route
watchNamespacedRouteList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind Template
watchNamespacedTemplate :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Template
watchNamespacedTemplateList :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch changes to an object of kind User
watchNamespacedUser :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of User
watchNamespacedUserList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of PolicyBinding
watchPolicyBindingList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Policy
watchPolicyList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Route
watchRouteList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent

-- | watch individual changes to a list of Template
watchTemplateList :: Maybe Text -> Maybe Text -> Maybe Text -> Maybe Bool -> Maybe Text -> Maybe Integer -> Maybe Text -> Manager -> BaseUrl -> ExceptT ServantError IO WatchEvent


proxyOapivApi :: Proxy OapivApi
proxyOapivApi = Proxy


connectPostNamespacedBinaryBuildRequestOptionsInstantiatebinary
    :<|> connectPostNamespacedStatusWebhooks
    :<|> connectPostNamespacedStatusWebhooks_0
    :<|> createBuild
    :<|> createBuildConfig
    :<|> createDeploymentConfig
    :<|> createDeploymentConfigRollback
    :<|> createImageStream
    :<|> createImageStreamImport
    :<|> createImageStreamMapping
    :<|> createLocalResourceAccessReview
    :<|> createLocalSubjectAccessReview
    :<|> createNamespacedBuild
    :<|> createNamespacedBuildConfig
    :<|> createNamespacedBuildRequestClone
    :<|> createNamespacedBuildRequestInstantiate
    :<|> createNamespacedClusterNetwork
    :<|> createNamespacedClusterPolicy
    :<|> createNamespacedClusterPolicyBinding
    :<|> createNamespacedClusterRole
    :<|> createNamespacedClusterRoleBinding
    :<|> createNamespacedDeploymentConfig
    :<|> createNamespacedDeploymentConfigRollback
    :<|> createNamespacedGroup
    :<|> createNamespacedHostSubnet
    :<|> createNamespacedIdentity
    :<|> createNamespacedImage
    :<|> createNamespacedImageStream
    :<|> createNamespacedImageStreamImport
    :<|> createNamespacedImageStreamMapping
    :<|> createNamespacedLocalResourceAccessReview
    :<|> createNamespacedLocalSubjectAccessReview
    :<|> createNamespacedNetNamespace
    :<|> createNamespacedOAuthAccessToken
    :<|> createNamespacedOAuthAuthorizeToken
    :<|> createNamespacedOAuthClient
    :<|> createNamespacedOAuthClientAuthorization
    :<|> createNamespacedPolicy
    :<|> createNamespacedPolicyBinding
    :<|> createNamespacedProject
    :<|> createNamespacedProjectRequest
    :<|> createNamespacedResourceAccessReview
    :<|> createNamespacedRole
    :<|> createNamespacedRoleBinding
    :<|> createNamespacedRoute
    :<|> createNamespacedSubjectAccessReview
    :<|> createNamespacedTemplate
    :<|> createNamespacedTemplate_0
    :<|> createNamespacedUser
    :<|> createNamespacedUserIdentityMapping
    :<|> createPolicy
    :<|> createPolicyBinding
    :<|> createResourceAccessReview
    :<|> createRole
    :<|> createRoleBinding
    :<|> createRoute
    :<|> createSubjectAccessReview
    :<|> createTemplate
    :<|> createTemplate_0
    :<|> deleteNamespacedBuild
    :<|> deleteNamespacedBuildConfig
    :<|> deleteNamespacedClusterNetwork
    :<|> deleteNamespacedClusterPolicy
    :<|> deleteNamespacedClusterPolicyBinding
    :<|> deleteNamespacedClusterRole
    :<|> deleteNamespacedClusterRoleBinding
    :<|> deleteNamespacedDeploymentConfig
    :<|> deleteNamespacedGroup
    :<|> deleteNamespacedHostSubnet
    :<|> deleteNamespacedIdentity
    :<|> deleteNamespacedImage
    :<|> deleteNamespacedImageStream
    :<|> deleteNamespacedImageStreamTag
    :<|> deleteNamespacedNetNamespace
    :<|> deleteNamespacedOAuthAccessToken
    :<|> deleteNamespacedOAuthAuthorizeToken
    :<|> deleteNamespacedOAuthClient
    :<|> deleteNamespacedOAuthClientAuthorization
    :<|> deleteNamespacedPolicy
    :<|> deleteNamespacedPolicyBinding
    :<|> deleteNamespacedProject
    :<|> deleteNamespacedRole
    :<|> deleteNamespacedRoleBinding
    :<|> deleteNamespacedRoute
    :<|> deleteNamespacedTemplate
    :<|> deleteNamespacedUser
    :<|> deleteNamespacedUserIdentityMapping
    :<|> deletecollectionNamespacedBuild
    :<|> deletecollectionNamespacedBuildConfig
    :<|> deletecollectionNamespacedClusterNetwork
    :<|> deletecollectionNamespacedClusterPolicy
    :<|> deletecollectionNamespacedClusterPolicyBinding
    :<|> deletecollectionNamespacedDeploymentConfig
    :<|> deletecollectionNamespacedGroup
    :<|> deletecollectionNamespacedHostSubnet
    :<|> deletecollectionNamespacedIdentity
    :<|> deletecollectionNamespacedImage
    :<|> deletecollectionNamespacedImageStream
    :<|> deletecollectionNamespacedNetNamespace
    :<|> deletecollectionNamespacedOAuthClient
    :<|> deletecollectionNamespacedOAuthClientAuthorization
    :<|> deletecollectionNamespacedPolicy
    :<|> deletecollectionNamespacedPolicyBinding
    :<|> deletecollectionNamespacedRoute
    :<|> deletecollectionNamespacedTemplate
    :<|> deletecollectionNamespacedUser
    :<|> getAPIResources
    :<|> listBuild
    :<|> listBuildConfig
    :<|> listDeploymentConfig
    :<|> listImageStream
    :<|> listImageStreamTag
    :<|> listNamespacedBuild
    :<|> listNamespacedBuildConfig
    :<|> listNamespacedClusterNetwork
    :<|> listNamespacedClusterPolicy
    :<|> listNamespacedClusterPolicyBinding
    :<|> listNamespacedClusterRole
    :<|> listNamespacedClusterRoleBinding
    :<|> listNamespacedDeploymentConfig
    :<|> listNamespacedGroup
    :<|> listNamespacedHostSubnet
    :<|> listNamespacedIdentity
    :<|> listNamespacedImage
    :<|> listNamespacedImageStream
    :<|> listNamespacedImageStreamTag
    :<|> listNamespacedNetNamespace
    :<|> listNamespacedOAuthAccessToken
    :<|> listNamespacedOAuthAuthorizeToken
    :<|> listNamespacedOAuthClient
    :<|> listNamespacedOAuthClientAuthorization
    :<|> listNamespacedPolicy
    :<|> listNamespacedPolicyBinding
    :<|> listNamespacedProject
    :<|> listNamespacedProjectRequest
    :<|> listNamespacedRole
    :<|> listNamespacedRoleBinding
    :<|> listNamespacedRoute
    :<|> listNamespacedTemplate
    :<|> listNamespacedUser
    :<|> listPolicy
    :<|> listPolicyBinding
    :<|> listRole
    :<|> listRoleBinding
    :<|> listRoute
    :<|> listTemplate
    :<|> patchNamespacedBuild
    :<|> patchNamespacedBuildConfig
    :<|> patchNamespacedClusterNetwork
    :<|> patchNamespacedClusterPolicy
    :<|> patchNamespacedClusterPolicyBinding
    :<|> patchNamespacedClusterRole
    :<|> patchNamespacedClusterRoleBinding
    :<|> patchNamespacedDeploymentConfig
    :<|> patchNamespacedGroup
    :<|> patchNamespacedHostSubnet
    :<|> patchNamespacedIdentity
    :<|> patchNamespacedImage
    :<|> patchNamespacedImageStream
    :<|> patchNamespacedImageStreamTag
    :<|> patchNamespacedNetNamespace
    :<|> patchNamespacedOAuthClient
    :<|> patchNamespacedOAuthClientAuthorization
    :<|> patchNamespacedPolicy
    :<|> patchNamespacedPolicyBinding
    :<|> patchNamespacedProject
    :<|> patchNamespacedRole
    :<|> patchNamespacedRoleBinding
    :<|> patchNamespacedRoute
    :<|> patchNamespacedScaleScale
    :<|> patchNamespacedTemplate
    :<|> patchNamespacedUser
    :<|> patchNamespacedUserIdentityMapping
    :<|> readNamespacedBuild
    :<|> readNamespacedBuildConfig
    :<|> readNamespacedBuildLogLog
    :<|> readNamespacedClusterNetwork
    :<|> readNamespacedClusterPolicy
    :<|> readNamespacedClusterPolicyBinding
    :<|> readNamespacedClusterRole
    :<|> readNamespacedClusterRoleBinding
    :<|> readNamespacedDeploymentConfig
    :<|> readNamespacedDeploymentConfig_0
    :<|> readNamespacedDeploymentLogLog
    :<|> readNamespacedGroup
    :<|> readNamespacedHostSubnet
    :<|> readNamespacedIdentity
    :<|> readNamespacedImage
    :<|> readNamespacedImageStream
    :<|> readNamespacedImageStreamImage
    :<|> readNamespacedImageStreamTag
    :<|> readNamespacedNetNamespace
    :<|> readNamespacedOAuthAccessToken
    :<|> readNamespacedOAuthAuthorizeToken
    :<|> readNamespacedOAuthClient
    :<|> readNamespacedOAuthClientAuthorization
    :<|> readNamespacedPolicy
    :<|> readNamespacedPolicyBinding
    :<|> readNamespacedProject
    :<|> readNamespacedRole
    :<|> readNamespacedRoleBinding
    :<|> readNamespacedRoute
    :<|> readNamespacedScaleScale
    :<|> readNamespacedSecretListSecrets
    :<|> readNamespacedTemplate
    :<|> readNamespacedUser
    :<|> readNamespacedUserIdentityMapping
    :<|> replaceNamespacedBuild
    :<|> replaceNamespacedBuildConfig
    :<|> replaceNamespacedBuildDetails
    :<|> replaceNamespacedClusterNetwork
    :<|> replaceNamespacedClusterPolicy
    :<|> replaceNamespacedClusterPolicyBinding
    :<|> replaceNamespacedClusterRole
    :<|> replaceNamespacedClusterRoleBinding
    :<|> replaceNamespacedDeploymentConfig
    :<|> replaceNamespacedGroup
    :<|> replaceNamespacedHostSubnet
    :<|> replaceNamespacedIdentity
    :<|> replaceNamespacedImage
    :<|> replaceNamespacedImageStream
    :<|> replaceNamespacedImageStreamStatus
    :<|> replaceNamespacedImageStreamTag
    :<|> replaceNamespacedNetNamespace
    :<|> replaceNamespacedOAuthClient
    :<|> replaceNamespacedOAuthClientAuthorization
    :<|> replaceNamespacedPolicy
    :<|> replaceNamespacedPolicyBinding
    :<|> replaceNamespacedProject
    :<|> replaceNamespacedRole
    :<|> replaceNamespacedRoleBinding
    :<|> replaceNamespacedRoute
    :<|> replaceNamespacedRouteStatus
    :<|> replaceNamespacedScaleScale
    :<|> replaceNamespacedTemplate
    :<|> replaceNamespacedUser
    :<|> replaceNamespacedUserIdentityMapping
    :<|> watchBuildConfigList
    :<|> watchBuildList
    :<|> watchDeploymentConfigList
    :<|> watchImageStreamList
    :<|> watchNamespacedBuild
    :<|> watchNamespacedBuildConfig
    :<|> watchNamespacedBuildConfigList
    :<|> watchNamespacedBuildList
    :<|> watchNamespacedClusterNetwork
    :<|> watchNamespacedClusterNetworkList
    :<|> watchNamespacedClusterPolicy
    :<|> watchNamespacedClusterPolicyBinding
    :<|> watchNamespacedClusterPolicyBindingList
    :<|> watchNamespacedClusterPolicyList
    :<|> watchNamespacedDeploymentConfig
    :<|> watchNamespacedDeploymentConfigList
    :<|> watchNamespacedGroup
    :<|> watchNamespacedGroupList
    :<|> watchNamespacedHostSubnet
    :<|> watchNamespacedHostSubnetList
    :<|> watchNamespacedIdentity
    :<|> watchNamespacedIdentityList
    :<|> watchNamespacedImage
    :<|> watchNamespacedImageList
    :<|> watchNamespacedImageStream
    :<|> watchNamespacedImageStreamList
    :<|> watchNamespacedNetNamespace
    :<|> watchNamespacedNetNamespaceList
    :<|> watchNamespacedOAuthClient
    :<|> watchNamespacedOAuthClientAuthorization
    :<|> watchNamespacedOAuthClientAuthorizationList
    :<|> watchNamespacedOAuthClientList
    :<|> watchNamespacedPolicy
    :<|> watchNamespacedPolicyBinding
    :<|> watchNamespacedPolicyBindingList
    :<|> watchNamespacedPolicyList
    :<|> watchNamespacedRoute
    :<|> watchNamespacedRouteList
    :<|> watchNamespacedTemplate
    :<|> watchNamespacedTemplateList
    :<|> watchNamespacedUser
    :<|> watchNamespacedUserList
    :<|> watchPolicyBindingList
    :<|> watchPolicyList
    :<|> watchRouteList
    :<|> watchTemplateList
    = client proxyOapivApi
