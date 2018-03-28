
module AWS.ServerlessApplicationRepository.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.ServerlessApplicationRepository as ServerlessApplicationRepository
import AWS.ServerlessApplicationRepository.Types as ServerlessApplicationRepositoryTypes


-- | <p>Creates an application, optionally including an AWS SAM file to create the first application version in the same call.</p>
createApplication :: forall eff. ServerlessApplicationRepository.Service -> ServerlessApplicationRepositoryTypes.CreateApplicationRequest -> Aff (exception :: EXCEPTION | eff) ServerlessApplicationRepositoryTypes.CreateApplicationResponse
createApplication (ServerlessApplicationRepository.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createApplication"


-- | <p>Creates an application version.</p>
createApplicationVersion :: forall eff. ServerlessApplicationRepository.Service -> ServerlessApplicationRepositoryTypes.CreateApplicationVersionRequest -> Aff (exception :: EXCEPTION | eff) ServerlessApplicationRepositoryTypes.CreateApplicationVersionResponse
createApplicationVersion (ServerlessApplicationRepository.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createApplicationVersion"


-- | <p>Creates an AWS CloudFormation ChangeSet for the given application.</p>
createCloudFormationChangeSet :: forall eff. ServerlessApplicationRepository.Service -> ServerlessApplicationRepositoryTypes.CreateCloudFormationChangeSetRequest -> Aff (exception :: EXCEPTION | eff) ServerlessApplicationRepositoryTypes.CreateCloudFormationChangeSetResponse
createCloudFormationChangeSet (ServerlessApplicationRepository.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createCloudFormationChangeSet"


-- | <p>Deletes the specified application.</p>
deleteApplication :: forall eff. ServerlessApplicationRepository.Service -> ServerlessApplicationRepositoryTypes.DeleteApplicationRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteApplication (ServerlessApplicationRepository.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteApplication"


-- | <p>Gets the specified application.</p>
getApplication :: forall eff. ServerlessApplicationRepository.Service -> ServerlessApplicationRepositoryTypes.GetApplicationRequest -> Aff (exception :: EXCEPTION | eff) ServerlessApplicationRepositoryTypes.GetApplicationResponse
getApplication (ServerlessApplicationRepository.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getApplication"


-- | <p>Gets the policy for the specified application.</p>
getApplicationPolicy :: forall eff. ServerlessApplicationRepository.Service -> ServerlessApplicationRepositoryTypes.GetApplicationPolicyRequest -> Aff (exception :: EXCEPTION | eff) ServerlessApplicationRepositoryTypes.GetApplicationPolicyResponse
getApplicationPolicy (ServerlessApplicationRepository.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getApplicationPolicy"


-- | <p>Lists versions for the specified application.</p>
listApplicationVersions :: forall eff. ServerlessApplicationRepository.Service -> ServerlessApplicationRepositoryTypes.ListApplicationVersionsRequest -> Aff (exception :: EXCEPTION | eff) ServerlessApplicationRepositoryTypes.ListApplicationVersionsResponse
listApplicationVersions (ServerlessApplicationRepository.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listApplicationVersions"


-- | <p>Lists applications owned by the requester.</p>
listApplications :: forall eff. ServerlessApplicationRepository.Service -> ServerlessApplicationRepositoryTypes.ListApplicationsRequest -> Aff (exception :: EXCEPTION | eff) ServerlessApplicationRepositoryTypes.ListApplicationsResponse
listApplications (ServerlessApplicationRepository.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listApplications"


-- | <p>Puts the policy for the specified application.</p>
putApplicationPolicy :: forall eff. ServerlessApplicationRepository.Service -> ServerlessApplicationRepositoryTypes.PutApplicationPolicyRequest -> Aff (exception :: EXCEPTION | eff) ServerlessApplicationRepositoryTypes.PutApplicationPolicyResponse
putApplicationPolicy (ServerlessApplicationRepository.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putApplicationPolicy"


-- | <p>Updates the specified application.</p>
updateApplication :: forall eff. ServerlessApplicationRepository.Service -> ServerlessApplicationRepositoryTypes.UpdateApplicationRequest -> Aff (exception :: EXCEPTION | eff) ServerlessApplicationRepositoryTypes.UpdateApplicationResponse
updateApplication (ServerlessApplicationRepository.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateApplication"
