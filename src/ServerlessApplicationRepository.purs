

-- | <p>The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find
-- |  and deploy serverless applications in the AWS Cloud. For more information about serverless applications,
-- |  see Serverless Computing and Applications on the AWS website.</p><p>The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console, so that developers of 
-- |  all levels can get started with serverless computing without needing to learn anything new. You can use category 
-- |  keywords to browse for applications such as web and mobile backends, data processing applications, or chatbots. 
-- |  You can also search for applications by name, publisher, or event source. To use an application, you simply choose it, 
-- |  configure any required fields, and deploy it with a few clicks. </p><p>You can also easily publish applications, sharing them publicly with the community at large, or privately
-- |  within your team or across your organization. To publish a serverless application (or app), you can use the
-- |  AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to upload the code. Along with the
-- |  code, you upload a simple manifest file, also known as the AWS Serverless Application Model (AWS SAM) template.
-- |  For more information about AWS SAM, see AWS Serverless Application Model (AWS SAM) on the AWS Labs
-- |  GitHub repository.</p><p>The AWS Serverless Application Repository Developer Guide contains more information about the two developer
-- |  experiences available:</p><ul>
-- |  <li>
-- |  <p>Consuming Applications – Browse for applications and view information about them, including
-- |  source code and readme files. Also install, configure, and deploy applications of your choosing. </p>
-- |  <p>Publishing Applications – Configure and upload applications to make them available to other
-- |  developers, and publish new versions of applications. </p>
-- |  </li>
-- |  </ul>
module AWS.ServerlessApplicationRepository where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "ServerlessApplicationRepository" :: String


-- | <p>Creates an application, optionally including an AWS SAM file to create the first application version in the same call.</p>
createApplication :: forall eff. CreateApplicationRequest -> Aff (exception :: EXCEPTION | eff) CreateApplicationResponse
createApplication = Request.request serviceName "createApplication" 


-- | <p>Creates an application version.</p>
createApplicationVersion :: forall eff. CreateApplicationVersionRequest -> Aff (exception :: EXCEPTION | eff) CreateApplicationVersionResponse
createApplicationVersion = Request.request serviceName "createApplicationVersion" 


-- | <p>Creates an AWS CloudFormation ChangeSet for the given application.</p>
createCloudFormationChangeSet :: forall eff. CreateCloudFormationChangeSetRequest -> Aff (exception :: EXCEPTION | eff) CreateCloudFormationChangeSetResponse
createCloudFormationChangeSet = Request.request serviceName "createCloudFormationChangeSet" 


-- | <p>Deletes the specified application.</p>
deleteApplication :: forall eff. DeleteApplicationRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteApplication = Request.request serviceName "deleteApplication" 


-- | <p>Gets the specified application.</p>
getApplication :: forall eff. GetApplicationRequest -> Aff (exception :: EXCEPTION | eff) GetApplicationResponse
getApplication = Request.request serviceName "getApplication" 


-- | <p>Gets the policy for the specified application.</p>
getApplicationPolicy :: forall eff. GetApplicationPolicyRequest -> Aff (exception :: EXCEPTION | eff) GetApplicationPolicyResponse
getApplicationPolicy = Request.request serviceName "getApplicationPolicy" 


-- | <p>Lists versions for the specified application.</p>
listApplicationVersions :: forall eff. ListApplicationVersionsRequest -> Aff (exception :: EXCEPTION | eff) ListApplicationVersionsResponse
listApplicationVersions = Request.request serviceName "listApplicationVersions" 


-- | <p>Lists applications owned by the requester.</p>
listApplications :: forall eff. ListApplicationsRequest -> Aff (exception :: EXCEPTION | eff) ListApplicationsResponse
listApplications = Request.request serviceName "listApplications" 


-- | <p>Puts the policy for the specified application.</p>
putApplicationPolicy :: forall eff. PutApplicationPolicyRequest -> Aff (exception :: EXCEPTION | eff) PutApplicationPolicyResponse
putApplicationPolicy = Request.request serviceName "putApplicationPolicy" 


-- | <p>Updates the specified application.</p>
updateApplication :: forall eff. UpdateApplicationRequest -> Aff (exception :: EXCEPTION | eff) UpdateApplicationResponse
updateApplication = Request.request serviceName "updateApplication" 


-- | <p>Details about the application.</p>
newtype Application = Application 
  { "ApplicationId" :: (String)
  , "Author" :: (String)
  , "CreationTime" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: (String)
  , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string')
  , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: (String)
  , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String)
  , "Version" :: NullOrUndefined.NullOrUndefined (Version)
  }
derive instance newtypeApplication :: Newtype Application _
derive instance repGenericApplication :: Generic Application _
instance showApplication :: Show Application where
  show = genericShow
instance decodeApplication :: Decode Application where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApplication :: Encode Application where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Application from required parameters
newApplication :: String -> String -> String -> String -> Application
newApplication _ApplicationId _Author _Description _Name = Application { "ApplicationId": _ApplicationId, "Author": _Author, "Description": _Description, "Name": _Name, "CreationTime": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "LicenseUrl": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs Application's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplication' :: String -> String -> String -> String -> ( { "ApplicationId" :: (String) , "Author" :: (String) , "CreationTime" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (Version) } -> {"ApplicationId" :: (String) , "Author" :: (String) , "CreationTime" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (Version) } ) -> Application
newApplication' _ApplicationId _Author _Description _Name customize = (Application <<< customize) { "ApplicationId": _ApplicationId, "Author": _Author, "Description": _Description, "Name": _Name, "CreationTime": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "LicenseUrl": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



-- | <p>List of application details.</p>
newtype ApplicationPage = ApplicationPage 
  { "Applications" :: (ListOfApplicationSummary')
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeApplicationPage :: Newtype ApplicationPage _
derive instance repGenericApplicationPage :: Generic ApplicationPage _
instance showApplicationPage :: Show ApplicationPage where
  show = genericShow
instance decodeApplicationPage :: Decode ApplicationPage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApplicationPage :: Encode ApplicationPage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ApplicationPage from required parameters
newApplicationPage :: ListOfApplicationSummary' -> ApplicationPage
newApplicationPage _Applications = ApplicationPage { "Applications": _Applications, "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ApplicationPage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationPage' :: ListOfApplicationSummary' -> ( { "Applications" :: (ListOfApplicationSummary') , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"Applications" :: (ListOfApplicationSummary') , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ApplicationPage
newApplicationPage' _Applications customize = (ApplicationPage <<< customize) { "Applications": _Applications, "NextToken": (NullOrUndefined Nothing) }



-- | <p>Policy statements applied to the application.</p>
newtype ApplicationPolicy = ApplicationPolicy 
  { "Statements" :: (ListOfApplicationPolicyStatement')
  }
derive instance newtypeApplicationPolicy :: Newtype ApplicationPolicy _
derive instance repGenericApplicationPolicy :: Generic ApplicationPolicy _
instance showApplicationPolicy :: Show ApplicationPolicy where
  show = genericShow
instance decodeApplicationPolicy :: Decode ApplicationPolicy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApplicationPolicy :: Encode ApplicationPolicy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ApplicationPolicy from required parameters
newApplicationPolicy :: ListOfApplicationPolicyStatement' -> ApplicationPolicy
newApplicationPolicy _Statements = ApplicationPolicy { "Statements": _Statements }

-- | Constructs ApplicationPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationPolicy' :: ListOfApplicationPolicyStatement' -> ( { "Statements" :: (ListOfApplicationPolicyStatement') } -> {"Statements" :: (ListOfApplicationPolicyStatement') } ) -> ApplicationPolicy
newApplicationPolicy' _Statements customize = (ApplicationPolicy <<< customize) { "Statements": _Statements }



-- | <p>Policy statement applied to the application.</p>
newtype ApplicationPolicyStatement = ApplicationPolicyStatement 
  { "Actions" :: (ListOf__string')
  , "Principals" :: (ListOf__string')
  , "StatementId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeApplicationPolicyStatement :: Newtype ApplicationPolicyStatement _
derive instance repGenericApplicationPolicyStatement :: Generic ApplicationPolicyStatement _
instance showApplicationPolicyStatement :: Show ApplicationPolicyStatement where
  show = genericShow
instance decodeApplicationPolicyStatement :: Decode ApplicationPolicyStatement where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApplicationPolicyStatement :: Encode ApplicationPolicyStatement where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ApplicationPolicyStatement from required parameters
newApplicationPolicyStatement :: ListOf__string' -> ListOf__string' -> ApplicationPolicyStatement
newApplicationPolicyStatement _Actions _Principals = ApplicationPolicyStatement { "Actions": _Actions, "Principals": _Principals, "StatementId": (NullOrUndefined Nothing) }

-- | Constructs ApplicationPolicyStatement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationPolicyStatement' :: ListOf__string' -> ListOf__string' -> ( { "Actions" :: (ListOf__string') , "Principals" :: (ListOf__string') , "StatementId" :: NullOrUndefined.NullOrUndefined (String) } -> {"Actions" :: (ListOf__string') , "Principals" :: (ListOf__string') , "StatementId" :: NullOrUndefined.NullOrUndefined (String) } ) -> ApplicationPolicyStatement
newApplicationPolicyStatement' _Actions _Principals customize = (ApplicationPolicyStatement <<< customize) { "Actions": _Actions, "Principals": _Principals, "StatementId": (NullOrUndefined Nothing) }



-- | <p>Summary of details about the application.</p>
newtype ApplicationSummary = ApplicationSummary 
  { "ApplicationId" :: (String)
  , "Author" :: (String)
  , "CreationTime" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: (String)
  , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string')
  , "Name" :: (String)
  , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeApplicationSummary :: Newtype ApplicationSummary _
derive instance repGenericApplicationSummary :: Generic ApplicationSummary _
instance showApplicationSummary :: Show ApplicationSummary where
  show = genericShow
instance decodeApplicationSummary :: Decode ApplicationSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApplicationSummary :: Encode ApplicationSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ApplicationSummary from required parameters
newApplicationSummary :: String -> String -> String -> String -> ApplicationSummary
newApplicationSummary _ApplicationId _Author _Description _Name = ApplicationSummary { "ApplicationId": _ApplicationId, "Author": _Author, "Description": _Description, "Name": _Name, "CreationTime": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing) }

-- | Constructs ApplicationSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationSummary' :: String -> String -> String -> String -> ( { "ApplicationId" :: (String) , "Author" :: (String) , "CreationTime" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "Name" :: (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) } -> {"ApplicationId" :: (String) , "Author" :: (String) , "CreationTime" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "Name" :: (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) } ) -> ApplicationSummary
newApplicationSummary' _ApplicationId _Author _Description _Name customize = (ApplicationSummary <<< customize) { "ApplicationId": _ApplicationId, "Author": _Author, "Description": _Description, "Name": _Name, "CreationTime": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing) }



-- | <p>List of version summaries for the application.</p>
newtype ApplicationVersionPage = ApplicationVersionPage 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  , "Versions" :: (ListOfVersionSummary')
  }
derive instance newtypeApplicationVersionPage :: Newtype ApplicationVersionPage _
derive instance repGenericApplicationVersionPage :: Generic ApplicationVersionPage _
instance showApplicationVersionPage :: Show ApplicationVersionPage where
  show = genericShow
instance decodeApplicationVersionPage :: Decode ApplicationVersionPage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApplicationVersionPage :: Encode ApplicationVersionPage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ApplicationVersionPage from required parameters
newApplicationVersionPage :: ListOfVersionSummary' -> ApplicationVersionPage
newApplicationVersionPage _Versions = ApplicationVersionPage { "Versions": _Versions, "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ApplicationVersionPage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationVersionPage' :: ListOfVersionSummary' -> ( { "NextToken" :: NullOrUndefined.NullOrUndefined (String) , "Versions" :: (ListOfVersionSummary') } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (String) , "Versions" :: (ListOfVersionSummary') } ) -> ApplicationVersionPage
newApplicationVersionPage' _Versions customize = (ApplicationVersionPage <<< customize) { "Versions": _Versions, "NextToken": (NullOrUndefined Nothing) }



-- | <p>One of the parameters in the request is invalid.</p>
newtype BadRequestException = BadRequestException 
  { "ErrorCode" :: NullOrUndefined.NullOrUndefined (String)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where
  show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBadRequestException :: Encode BadRequestException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BadRequestException from required parameters
newBadRequestException :: BadRequestException
newBadRequestException  = BadRequestException { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs BadRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBadRequestException' :: ( { "ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> BadRequestException
newBadRequestException'  customize = (BadRequestException <<< customize) { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



-- | <p>Details of the change set.</p>
newtype ChangeSetDetails = ChangeSetDetails 
  { "ApplicationId" :: (String)
  , "ChangeSetId" :: (String)
  , "SemanticVersion" :: (String)
  , "StackId" :: (String)
  }
derive instance newtypeChangeSetDetails :: Newtype ChangeSetDetails _
derive instance repGenericChangeSetDetails :: Generic ChangeSetDetails _
instance showChangeSetDetails :: Show ChangeSetDetails where
  show = genericShow
instance decodeChangeSetDetails :: Decode ChangeSetDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeChangeSetDetails :: Encode ChangeSetDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ChangeSetDetails from required parameters
newChangeSetDetails :: String -> String -> String -> String -> ChangeSetDetails
newChangeSetDetails _ApplicationId _ChangeSetId _SemanticVersion _StackId = ChangeSetDetails { "ApplicationId": _ApplicationId, "ChangeSetId": _ChangeSetId, "SemanticVersion": _SemanticVersion, "StackId": _StackId }

-- | Constructs ChangeSetDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangeSetDetails' :: String -> String -> String -> String -> ( { "ApplicationId" :: (String) , "ChangeSetId" :: (String) , "SemanticVersion" :: (String) , "StackId" :: (String) } -> {"ApplicationId" :: (String) , "ChangeSetId" :: (String) , "SemanticVersion" :: (String) , "StackId" :: (String) } ) -> ChangeSetDetails
newChangeSetDetails' _ApplicationId _ChangeSetId _SemanticVersion _StackId customize = (ChangeSetDetails <<< customize) { "ApplicationId": _ApplicationId, "ChangeSetId": _ChangeSetId, "SemanticVersion": _SemanticVersion, "StackId": _StackId }



-- | <p>The resource already exists.</p>
newtype ConflictException = ConflictException 
  { "ErrorCode" :: NullOrUndefined.NullOrUndefined (String)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeConflictException :: Newtype ConflictException _
derive instance repGenericConflictException :: Generic ConflictException _
instance showConflictException :: Show ConflictException where
  show = genericShow
instance decodeConflictException :: Decode ConflictException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConflictException :: Encode ConflictException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ConflictException from required parameters
newConflictException :: ConflictException
newConflictException  = ConflictException { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs ConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConflictException' :: ( { "ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> ConflictException
newConflictException'  customize = (ConflictException <<< customize) { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



-- | <p>Create application request.</p>
newtype CreateApplicationInput = CreateApplicationInput 
  { "Author" :: (String)
  , "Description" :: (String)
  , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string')
  , "LicenseBody" :: NullOrUndefined.NullOrUndefined (String)
  , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: (String)
  , "ReadmeBody" :: NullOrUndefined.NullOrUndefined (String)
  , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String)
  , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String)
  , "TemplateBody" :: NullOrUndefined.NullOrUndefined (String)
  , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateApplicationInput :: Newtype CreateApplicationInput _
derive instance repGenericCreateApplicationInput :: Generic CreateApplicationInput _
instance showCreateApplicationInput :: Show CreateApplicationInput where
  show = genericShow
instance decodeCreateApplicationInput :: Decode CreateApplicationInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateApplicationInput :: Encode CreateApplicationInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateApplicationInput from required parameters
newCreateApplicationInput :: String -> String -> String -> CreateApplicationInput
newCreateApplicationInput _Author _Description _Name = CreateApplicationInput { "Author": _Author, "Description": _Description, "Name": _Name, "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "LicenseBody": (NullOrUndefined Nothing), "LicenseUrl": (NullOrUndefined Nothing), "ReadmeBody": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing), "SemanticVersion": (NullOrUndefined Nothing), "SourceCodeUrl": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing), "TemplateBody": (NullOrUndefined Nothing), "TemplateUrl": (NullOrUndefined Nothing) }

-- | Constructs CreateApplicationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationInput' :: String -> String -> String -> ( { "Author" :: (String) , "Description" :: (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "LicenseBody" :: NullOrUndefined.NullOrUndefined (String) , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: (String) , "ReadmeBody" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) , "TemplateBody" :: NullOrUndefined.NullOrUndefined (String) , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String) } -> {"Author" :: (String) , "Description" :: (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "LicenseBody" :: NullOrUndefined.NullOrUndefined (String) , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: (String) , "ReadmeBody" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) , "TemplateBody" :: NullOrUndefined.NullOrUndefined (String) , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateApplicationInput
newCreateApplicationInput' _Author _Description _Name customize = (CreateApplicationInput <<< customize) { "Author": _Author, "Description": _Description, "Name": _Name, "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "LicenseBody": (NullOrUndefined Nothing), "LicenseUrl": (NullOrUndefined Nothing), "ReadmeBody": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing), "SemanticVersion": (NullOrUndefined Nothing), "SourceCodeUrl": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing), "TemplateBody": (NullOrUndefined Nothing), "TemplateUrl": (NullOrUndefined Nothing) }



newtype CreateApplicationRequest = CreateApplicationRequest 
  { "Author" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string')
  , "LicenseBody" :: NullOrUndefined.NullOrUndefined (String)
  , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "ReadmeBody" :: NullOrUndefined.NullOrUndefined (String)
  , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String)
  , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String)
  , "TemplateBody" :: NullOrUndefined.NullOrUndefined (String)
  , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateApplicationRequest :: Newtype CreateApplicationRequest _
derive instance repGenericCreateApplicationRequest :: Generic CreateApplicationRequest _
instance showCreateApplicationRequest :: Show CreateApplicationRequest where
  show = genericShow
instance decodeCreateApplicationRequest :: Decode CreateApplicationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateApplicationRequest :: Encode CreateApplicationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateApplicationRequest from required parameters
newCreateApplicationRequest :: CreateApplicationRequest
newCreateApplicationRequest  = CreateApplicationRequest { "Author": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "LicenseBody": (NullOrUndefined Nothing), "LicenseUrl": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ReadmeBody": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing), "SemanticVersion": (NullOrUndefined Nothing), "SourceCodeUrl": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing), "TemplateBody": (NullOrUndefined Nothing), "TemplateUrl": (NullOrUndefined Nothing) }

-- | Constructs CreateApplicationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationRequest' :: ( { "Author" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "LicenseBody" :: NullOrUndefined.NullOrUndefined (String) , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeBody" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) , "TemplateBody" :: NullOrUndefined.NullOrUndefined (String) , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String) } -> {"Author" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "LicenseBody" :: NullOrUndefined.NullOrUndefined (String) , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeBody" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) , "TemplateBody" :: NullOrUndefined.NullOrUndefined (String) , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateApplicationRequest
newCreateApplicationRequest'  customize = (CreateApplicationRequest <<< customize) { "Author": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "LicenseBody": (NullOrUndefined Nothing), "LicenseUrl": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ReadmeBody": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing), "SemanticVersion": (NullOrUndefined Nothing), "SourceCodeUrl": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing), "TemplateBody": (NullOrUndefined Nothing), "TemplateUrl": (NullOrUndefined Nothing) }



newtype CreateApplicationResponse = CreateApplicationResponse 
  { "ApplicationId" :: NullOrUndefined.NullOrUndefined (String)
  , "Author" :: NullOrUndefined.NullOrUndefined (String)
  , "CreationTime" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string')
  , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String)
  , "Version" :: NullOrUndefined.NullOrUndefined (Version)
  }
derive instance newtypeCreateApplicationResponse :: Newtype CreateApplicationResponse _
derive instance repGenericCreateApplicationResponse :: Generic CreateApplicationResponse _
instance showCreateApplicationResponse :: Show CreateApplicationResponse where
  show = genericShow
instance decodeCreateApplicationResponse :: Decode CreateApplicationResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateApplicationResponse :: Encode CreateApplicationResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateApplicationResponse from required parameters
newCreateApplicationResponse :: CreateApplicationResponse
newCreateApplicationResponse  = CreateApplicationResponse { "ApplicationId": (NullOrUndefined Nothing), "Author": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "LicenseUrl": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs CreateApplicationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationResponse' :: ( { "ApplicationId" :: NullOrUndefined.NullOrUndefined (String) , "Author" :: NullOrUndefined.NullOrUndefined (String) , "CreationTime" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (Version) } -> {"ApplicationId" :: NullOrUndefined.NullOrUndefined (String) , "Author" :: NullOrUndefined.NullOrUndefined (String) , "CreationTime" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (Version) } ) -> CreateApplicationResponse
newCreateApplicationResponse'  customize = (CreateApplicationResponse <<< customize) { "ApplicationId": (NullOrUndefined Nothing), "Author": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "LicenseUrl": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



-- | <p>Create version request.</p>
newtype CreateApplicationVersionInput = CreateApplicationVersionInput 
  { "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "TemplateBody" :: NullOrUndefined.NullOrUndefined (String)
  , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateApplicationVersionInput :: Newtype CreateApplicationVersionInput _
derive instance repGenericCreateApplicationVersionInput :: Generic CreateApplicationVersionInput _
instance showCreateApplicationVersionInput :: Show CreateApplicationVersionInput where
  show = genericShow
instance decodeCreateApplicationVersionInput :: Decode CreateApplicationVersionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateApplicationVersionInput :: Encode CreateApplicationVersionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateApplicationVersionInput from required parameters
newCreateApplicationVersionInput :: CreateApplicationVersionInput
newCreateApplicationVersionInput  = CreateApplicationVersionInput { "SourceCodeUrl": (NullOrUndefined Nothing), "TemplateBody": (NullOrUndefined Nothing), "TemplateUrl": (NullOrUndefined Nothing) }

-- | Constructs CreateApplicationVersionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationVersionInput' :: ( { "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) , "TemplateBody" :: NullOrUndefined.NullOrUndefined (String) , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String) } -> {"SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) , "TemplateBody" :: NullOrUndefined.NullOrUndefined (String) , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateApplicationVersionInput
newCreateApplicationVersionInput'  customize = (CreateApplicationVersionInput <<< customize) { "SourceCodeUrl": (NullOrUndefined Nothing), "TemplateBody": (NullOrUndefined Nothing), "TemplateUrl": (NullOrUndefined Nothing) }



newtype CreateApplicationVersionRequest = CreateApplicationVersionRequest 
  { "ApplicationId" :: (String)
  , "SemanticVersion" :: (String)
  , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "TemplateBody" :: NullOrUndefined.NullOrUndefined (String)
  , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateApplicationVersionRequest :: Newtype CreateApplicationVersionRequest _
derive instance repGenericCreateApplicationVersionRequest :: Generic CreateApplicationVersionRequest _
instance showCreateApplicationVersionRequest :: Show CreateApplicationVersionRequest where
  show = genericShow
instance decodeCreateApplicationVersionRequest :: Decode CreateApplicationVersionRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateApplicationVersionRequest :: Encode CreateApplicationVersionRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateApplicationVersionRequest from required parameters
newCreateApplicationVersionRequest :: String -> String -> CreateApplicationVersionRequest
newCreateApplicationVersionRequest _ApplicationId _SemanticVersion = CreateApplicationVersionRequest { "ApplicationId": _ApplicationId, "SemanticVersion": _SemanticVersion, "SourceCodeUrl": (NullOrUndefined Nothing), "TemplateBody": (NullOrUndefined Nothing), "TemplateUrl": (NullOrUndefined Nothing) }

-- | Constructs CreateApplicationVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationVersionRequest' :: String -> String -> ( { "ApplicationId" :: (String) , "SemanticVersion" :: (String) , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) , "TemplateBody" :: NullOrUndefined.NullOrUndefined (String) , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String) } -> {"ApplicationId" :: (String) , "SemanticVersion" :: (String) , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) , "TemplateBody" :: NullOrUndefined.NullOrUndefined (String) , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateApplicationVersionRequest
newCreateApplicationVersionRequest' _ApplicationId _SemanticVersion customize = (CreateApplicationVersionRequest <<< customize) { "ApplicationId": _ApplicationId, "SemanticVersion": _SemanticVersion, "SourceCodeUrl": (NullOrUndefined Nothing), "TemplateBody": (NullOrUndefined Nothing), "TemplateUrl": (NullOrUndefined Nothing) }



newtype CreateApplicationVersionResponse = CreateApplicationVersionResponse 
  { "ApplicationId" :: NullOrUndefined.NullOrUndefined (String)
  , "CreationTime" :: NullOrUndefined.NullOrUndefined (String)
  , "ParameterDefinitions" :: NullOrUndefined.NullOrUndefined (ListOfParameterDefinition')
  , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String)
  , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateApplicationVersionResponse :: Newtype CreateApplicationVersionResponse _
derive instance repGenericCreateApplicationVersionResponse :: Generic CreateApplicationVersionResponse _
instance showCreateApplicationVersionResponse :: Show CreateApplicationVersionResponse where
  show = genericShow
instance decodeCreateApplicationVersionResponse :: Decode CreateApplicationVersionResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateApplicationVersionResponse :: Encode CreateApplicationVersionResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateApplicationVersionResponse from required parameters
newCreateApplicationVersionResponse :: CreateApplicationVersionResponse
newCreateApplicationVersionResponse  = CreateApplicationVersionResponse { "ApplicationId": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "ParameterDefinitions": (NullOrUndefined Nothing), "SemanticVersion": (NullOrUndefined Nothing), "SourceCodeUrl": (NullOrUndefined Nothing), "TemplateUrl": (NullOrUndefined Nothing) }

-- | Constructs CreateApplicationVersionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationVersionResponse' :: ( { "ApplicationId" :: NullOrUndefined.NullOrUndefined (String) , "CreationTime" :: NullOrUndefined.NullOrUndefined (String) , "ParameterDefinitions" :: NullOrUndefined.NullOrUndefined (ListOfParameterDefinition') , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String) } -> {"ApplicationId" :: NullOrUndefined.NullOrUndefined (String) , "CreationTime" :: NullOrUndefined.NullOrUndefined (String) , "ParameterDefinitions" :: NullOrUndefined.NullOrUndefined (ListOfParameterDefinition') , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) , "TemplateUrl" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateApplicationVersionResponse
newCreateApplicationVersionResponse'  customize = (CreateApplicationVersionResponse <<< customize) { "ApplicationId": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "ParameterDefinitions": (NullOrUndefined Nothing), "SemanticVersion": (NullOrUndefined Nothing), "SourceCodeUrl": (NullOrUndefined Nothing), "TemplateUrl": (NullOrUndefined Nothing) }



-- | <p>Create application ChangeSet request.</p>
newtype CreateCloudFormationChangeSetInput = CreateCloudFormationChangeSetInput 
  { "ParameterOverrides" :: NullOrUndefined.NullOrUndefined (ListOfParameterValue')
  , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String)
  , "StackName" :: (String)
  }
derive instance newtypeCreateCloudFormationChangeSetInput :: Newtype CreateCloudFormationChangeSetInput _
derive instance repGenericCreateCloudFormationChangeSetInput :: Generic CreateCloudFormationChangeSetInput _
instance showCreateCloudFormationChangeSetInput :: Show CreateCloudFormationChangeSetInput where
  show = genericShow
instance decodeCreateCloudFormationChangeSetInput :: Decode CreateCloudFormationChangeSetInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateCloudFormationChangeSetInput :: Encode CreateCloudFormationChangeSetInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateCloudFormationChangeSetInput from required parameters
newCreateCloudFormationChangeSetInput :: String -> CreateCloudFormationChangeSetInput
newCreateCloudFormationChangeSetInput _StackName = CreateCloudFormationChangeSetInput { "StackName": _StackName, "ParameterOverrides": (NullOrUndefined Nothing), "SemanticVersion": (NullOrUndefined Nothing) }

-- | Constructs CreateCloudFormationChangeSetInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCloudFormationChangeSetInput' :: String -> ( { "ParameterOverrides" :: NullOrUndefined.NullOrUndefined (ListOfParameterValue') , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) , "StackName" :: (String) } -> {"ParameterOverrides" :: NullOrUndefined.NullOrUndefined (ListOfParameterValue') , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) , "StackName" :: (String) } ) -> CreateCloudFormationChangeSetInput
newCreateCloudFormationChangeSetInput' _StackName customize = (CreateCloudFormationChangeSetInput <<< customize) { "StackName": _StackName, "ParameterOverrides": (NullOrUndefined Nothing), "SemanticVersion": (NullOrUndefined Nothing) }



newtype CreateCloudFormationChangeSetRequest = CreateCloudFormationChangeSetRequest 
  { "ApplicationId" :: (String)
  , "ParameterOverrides" :: NullOrUndefined.NullOrUndefined (ListOfParameterValue')
  , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String)
  , "StackName" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateCloudFormationChangeSetRequest :: Newtype CreateCloudFormationChangeSetRequest _
derive instance repGenericCreateCloudFormationChangeSetRequest :: Generic CreateCloudFormationChangeSetRequest _
instance showCreateCloudFormationChangeSetRequest :: Show CreateCloudFormationChangeSetRequest where
  show = genericShow
instance decodeCreateCloudFormationChangeSetRequest :: Decode CreateCloudFormationChangeSetRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateCloudFormationChangeSetRequest :: Encode CreateCloudFormationChangeSetRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateCloudFormationChangeSetRequest from required parameters
newCreateCloudFormationChangeSetRequest :: String -> CreateCloudFormationChangeSetRequest
newCreateCloudFormationChangeSetRequest _ApplicationId = CreateCloudFormationChangeSetRequest { "ApplicationId": _ApplicationId, "ParameterOverrides": (NullOrUndefined Nothing), "SemanticVersion": (NullOrUndefined Nothing), "StackName": (NullOrUndefined Nothing) }

-- | Constructs CreateCloudFormationChangeSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCloudFormationChangeSetRequest' :: String -> ( { "ApplicationId" :: (String) , "ParameterOverrides" :: NullOrUndefined.NullOrUndefined (ListOfParameterValue') , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) , "StackName" :: NullOrUndefined.NullOrUndefined (String) } -> {"ApplicationId" :: (String) , "ParameterOverrides" :: NullOrUndefined.NullOrUndefined (ListOfParameterValue') , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) , "StackName" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateCloudFormationChangeSetRequest
newCreateCloudFormationChangeSetRequest' _ApplicationId customize = (CreateCloudFormationChangeSetRequest <<< customize) { "ApplicationId": _ApplicationId, "ParameterOverrides": (NullOrUndefined Nothing), "SemanticVersion": (NullOrUndefined Nothing), "StackName": (NullOrUndefined Nothing) }



newtype CreateCloudFormationChangeSetResponse = CreateCloudFormationChangeSetResponse 
  { "ApplicationId" :: NullOrUndefined.NullOrUndefined (String)
  , "ChangeSetId" :: NullOrUndefined.NullOrUndefined (String)
  , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String)
  , "StackId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateCloudFormationChangeSetResponse :: Newtype CreateCloudFormationChangeSetResponse _
derive instance repGenericCreateCloudFormationChangeSetResponse :: Generic CreateCloudFormationChangeSetResponse _
instance showCreateCloudFormationChangeSetResponse :: Show CreateCloudFormationChangeSetResponse where
  show = genericShow
instance decodeCreateCloudFormationChangeSetResponse :: Decode CreateCloudFormationChangeSetResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateCloudFormationChangeSetResponse :: Encode CreateCloudFormationChangeSetResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateCloudFormationChangeSetResponse from required parameters
newCreateCloudFormationChangeSetResponse :: CreateCloudFormationChangeSetResponse
newCreateCloudFormationChangeSetResponse  = CreateCloudFormationChangeSetResponse { "ApplicationId": (NullOrUndefined Nothing), "ChangeSetId": (NullOrUndefined Nothing), "SemanticVersion": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }

-- | Constructs CreateCloudFormationChangeSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCloudFormationChangeSetResponse' :: ( { "ApplicationId" :: NullOrUndefined.NullOrUndefined (String) , "ChangeSetId" :: NullOrUndefined.NullOrUndefined (String) , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) } -> {"ApplicationId" :: NullOrUndefined.NullOrUndefined (String) , "ChangeSetId" :: NullOrUndefined.NullOrUndefined (String) , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) , "StackId" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateCloudFormationChangeSetResponse
newCreateCloudFormationChangeSetResponse'  customize = (CreateCloudFormationChangeSetResponse <<< customize) { "ApplicationId": (NullOrUndefined Nothing), "ChangeSetId": (NullOrUndefined Nothing), "SemanticVersion": (NullOrUndefined Nothing), "StackId": (NullOrUndefined Nothing) }



newtype DeleteApplicationRequest = DeleteApplicationRequest 
  { "ApplicationId" :: (String)
  }
derive instance newtypeDeleteApplicationRequest :: Newtype DeleteApplicationRequest _
derive instance repGenericDeleteApplicationRequest :: Generic DeleteApplicationRequest _
instance showDeleteApplicationRequest :: Show DeleteApplicationRequest where
  show = genericShow
instance decodeDeleteApplicationRequest :: Decode DeleteApplicationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteApplicationRequest :: Encode DeleteApplicationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteApplicationRequest from required parameters
newDeleteApplicationRequest :: String -> DeleteApplicationRequest
newDeleteApplicationRequest _ApplicationId = DeleteApplicationRequest { "ApplicationId": _ApplicationId }

-- | Constructs DeleteApplicationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteApplicationRequest' :: String -> ( { "ApplicationId" :: (String) } -> {"ApplicationId" :: (String) } ) -> DeleteApplicationRequest
newDeleteApplicationRequest' _ApplicationId customize = (DeleteApplicationRequest <<< customize) { "ApplicationId": _ApplicationId }



-- | <p>The client is not authenticated.</p>
newtype ForbiddenException = ForbiddenException 
  { "ErrorCode" :: NullOrUndefined.NullOrUndefined (String)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeForbiddenException :: Newtype ForbiddenException _
derive instance repGenericForbiddenException :: Generic ForbiddenException _
instance showForbiddenException :: Show ForbiddenException where
  show = genericShow
instance decodeForbiddenException :: Decode ForbiddenException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeForbiddenException :: Encode ForbiddenException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ForbiddenException from required parameters
newForbiddenException :: ForbiddenException
newForbiddenException  = ForbiddenException { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs ForbiddenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newForbiddenException' :: ( { "ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> ForbiddenException
newForbiddenException'  customize = (ForbiddenException <<< customize) { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



newtype GetApplicationPolicyRequest = GetApplicationPolicyRequest 
  { "ApplicationId" :: (String)
  }
derive instance newtypeGetApplicationPolicyRequest :: Newtype GetApplicationPolicyRequest _
derive instance repGenericGetApplicationPolicyRequest :: Generic GetApplicationPolicyRequest _
instance showGetApplicationPolicyRequest :: Show GetApplicationPolicyRequest where
  show = genericShow
instance decodeGetApplicationPolicyRequest :: Decode GetApplicationPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetApplicationPolicyRequest :: Encode GetApplicationPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetApplicationPolicyRequest from required parameters
newGetApplicationPolicyRequest :: String -> GetApplicationPolicyRequest
newGetApplicationPolicyRequest _ApplicationId = GetApplicationPolicyRequest { "ApplicationId": _ApplicationId }

-- | Constructs GetApplicationPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetApplicationPolicyRequest' :: String -> ( { "ApplicationId" :: (String) } -> {"ApplicationId" :: (String) } ) -> GetApplicationPolicyRequest
newGetApplicationPolicyRequest' _ApplicationId customize = (GetApplicationPolicyRequest <<< customize) { "ApplicationId": _ApplicationId }



newtype GetApplicationPolicyResponse = GetApplicationPolicyResponse 
  { "Statements" :: NullOrUndefined.NullOrUndefined (ListOfApplicationPolicyStatement')
  }
derive instance newtypeGetApplicationPolicyResponse :: Newtype GetApplicationPolicyResponse _
derive instance repGenericGetApplicationPolicyResponse :: Generic GetApplicationPolicyResponse _
instance showGetApplicationPolicyResponse :: Show GetApplicationPolicyResponse where
  show = genericShow
instance decodeGetApplicationPolicyResponse :: Decode GetApplicationPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetApplicationPolicyResponse :: Encode GetApplicationPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetApplicationPolicyResponse from required parameters
newGetApplicationPolicyResponse :: GetApplicationPolicyResponse
newGetApplicationPolicyResponse  = GetApplicationPolicyResponse { "Statements": (NullOrUndefined Nothing) }

-- | Constructs GetApplicationPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetApplicationPolicyResponse' :: ( { "Statements" :: NullOrUndefined.NullOrUndefined (ListOfApplicationPolicyStatement') } -> {"Statements" :: NullOrUndefined.NullOrUndefined (ListOfApplicationPolicyStatement') } ) -> GetApplicationPolicyResponse
newGetApplicationPolicyResponse'  customize = (GetApplicationPolicyResponse <<< customize) { "Statements": (NullOrUndefined Nothing) }



newtype GetApplicationRequest = GetApplicationRequest 
  { "ApplicationId" :: (String)
  , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeGetApplicationRequest :: Newtype GetApplicationRequest _
derive instance repGenericGetApplicationRequest :: Generic GetApplicationRequest _
instance showGetApplicationRequest :: Show GetApplicationRequest where
  show = genericShow
instance decodeGetApplicationRequest :: Decode GetApplicationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetApplicationRequest :: Encode GetApplicationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetApplicationRequest from required parameters
newGetApplicationRequest :: String -> GetApplicationRequest
newGetApplicationRequest _ApplicationId = GetApplicationRequest { "ApplicationId": _ApplicationId, "SemanticVersion": (NullOrUndefined Nothing) }

-- | Constructs GetApplicationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetApplicationRequest' :: String -> ( { "ApplicationId" :: (String) , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) } -> {"ApplicationId" :: (String) , "SemanticVersion" :: NullOrUndefined.NullOrUndefined (String) } ) -> GetApplicationRequest
newGetApplicationRequest' _ApplicationId customize = (GetApplicationRequest <<< customize) { "ApplicationId": _ApplicationId, "SemanticVersion": (NullOrUndefined Nothing) }



newtype GetApplicationResponse = GetApplicationResponse 
  { "ApplicationId" :: NullOrUndefined.NullOrUndefined (String)
  , "Author" :: NullOrUndefined.NullOrUndefined (String)
  , "CreationTime" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string')
  , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String)
  , "Version" :: NullOrUndefined.NullOrUndefined (Version)
  }
derive instance newtypeGetApplicationResponse :: Newtype GetApplicationResponse _
derive instance repGenericGetApplicationResponse :: Generic GetApplicationResponse _
instance showGetApplicationResponse :: Show GetApplicationResponse where
  show = genericShow
instance decodeGetApplicationResponse :: Decode GetApplicationResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetApplicationResponse :: Encode GetApplicationResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetApplicationResponse from required parameters
newGetApplicationResponse :: GetApplicationResponse
newGetApplicationResponse  = GetApplicationResponse { "ApplicationId": (NullOrUndefined Nothing), "Author": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "LicenseUrl": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs GetApplicationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetApplicationResponse' :: ( { "ApplicationId" :: NullOrUndefined.NullOrUndefined (String) , "Author" :: NullOrUndefined.NullOrUndefined (String) , "CreationTime" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (Version) } -> {"ApplicationId" :: NullOrUndefined.NullOrUndefined (String) , "Author" :: NullOrUndefined.NullOrUndefined (String) , "CreationTime" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (Version) } ) -> GetApplicationResponse
newGetApplicationResponse'  customize = (GetApplicationResponse <<< customize) { "ApplicationId": (NullOrUndefined Nothing), "Author": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "LicenseUrl": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



-- | <p>The AWS Serverless Application Repository service encountered an internal error.</p>
newtype InternalServerErrorException = InternalServerErrorException 
  { "ErrorCode" :: NullOrUndefined.NullOrUndefined (String)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInternalServerErrorException :: Newtype InternalServerErrorException _
derive instance repGenericInternalServerErrorException :: Generic InternalServerErrorException _
instance showInternalServerErrorException :: Show InternalServerErrorException where
  show = genericShow
instance decodeInternalServerErrorException :: Decode InternalServerErrorException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalServerErrorException :: Encode InternalServerErrorException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalServerErrorException from required parameters
newInternalServerErrorException :: InternalServerErrorException
newInternalServerErrorException  = InternalServerErrorException { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServerErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerErrorException' :: ( { "ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InternalServerErrorException
newInternalServerErrorException'  customize = (InternalServerErrorException <<< customize) { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



newtype ListApplicationVersionsRequest = ListApplicationVersionsRequest 
  { "ApplicationId" :: (String)
  , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItems)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListApplicationVersionsRequest :: Newtype ListApplicationVersionsRequest _
derive instance repGenericListApplicationVersionsRequest :: Generic ListApplicationVersionsRequest _
instance showListApplicationVersionsRequest :: Show ListApplicationVersionsRequest where
  show = genericShow
instance decodeListApplicationVersionsRequest :: Decode ListApplicationVersionsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListApplicationVersionsRequest :: Encode ListApplicationVersionsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListApplicationVersionsRequest from required parameters
newListApplicationVersionsRequest :: String -> ListApplicationVersionsRequest
newListApplicationVersionsRequest _ApplicationId = ListApplicationVersionsRequest { "ApplicationId": _ApplicationId, "MaxItems": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListApplicationVersionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListApplicationVersionsRequest' :: String -> ( { "ApplicationId" :: (String) , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItems) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"ApplicationId" :: (String) , "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItems) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListApplicationVersionsRequest
newListApplicationVersionsRequest' _ApplicationId customize = (ListApplicationVersionsRequest <<< customize) { "ApplicationId": _ApplicationId, "MaxItems": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListApplicationVersionsResponse = ListApplicationVersionsResponse 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  , "Versions" :: NullOrUndefined.NullOrUndefined (ListOfVersionSummary')
  }
derive instance newtypeListApplicationVersionsResponse :: Newtype ListApplicationVersionsResponse _
derive instance repGenericListApplicationVersionsResponse :: Generic ListApplicationVersionsResponse _
instance showListApplicationVersionsResponse :: Show ListApplicationVersionsResponse where
  show = genericShow
instance decodeListApplicationVersionsResponse :: Decode ListApplicationVersionsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListApplicationVersionsResponse :: Encode ListApplicationVersionsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListApplicationVersionsResponse from required parameters
newListApplicationVersionsResponse :: ListApplicationVersionsResponse
newListApplicationVersionsResponse  = ListApplicationVersionsResponse { "NextToken": (NullOrUndefined Nothing), "Versions": (NullOrUndefined Nothing) }

-- | Constructs ListApplicationVersionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListApplicationVersionsResponse' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (String) , "Versions" :: NullOrUndefined.NullOrUndefined (ListOfVersionSummary') } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (String) , "Versions" :: NullOrUndefined.NullOrUndefined (ListOfVersionSummary') } ) -> ListApplicationVersionsResponse
newListApplicationVersionsResponse'  customize = (ListApplicationVersionsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Versions": (NullOrUndefined Nothing) }



newtype ListApplicationsRequest = ListApplicationsRequest 
  { "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItems)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListApplicationsRequest :: Newtype ListApplicationsRequest _
derive instance repGenericListApplicationsRequest :: Generic ListApplicationsRequest _
instance showListApplicationsRequest :: Show ListApplicationsRequest where
  show = genericShow
instance decodeListApplicationsRequest :: Decode ListApplicationsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListApplicationsRequest :: Encode ListApplicationsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListApplicationsRequest from required parameters
newListApplicationsRequest :: ListApplicationsRequest
newListApplicationsRequest  = ListApplicationsRequest { "MaxItems": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListApplicationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListApplicationsRequest' :: ( { "MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItems) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"MaxItems" :: NullOrUndefined.NullOrUndefined (MaxItems) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListApplicationsRequest
newListApplicationsRequest'  customize = (ListApplicationsRequest <<< customize) { "MaxItems": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListApplicationsResponse = ListApplicationsResponse 
  { "Applications" :: NullOrUndefined.NullOrUndefined (ListOfApplicationSummary')
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListApplicationsResponse :: Newtype ListApplicationsResponse _
derive instance repGenericListApplicationsResponse :: Generic ListApplicationsResponse _
instance showListApplicationsResponse :: Show ListApplicationsResponse where
  show = genericShow
instance decodeListApplicationsResponse :: Decode ListApplicationsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListApplicationsResponse :: Encode ListApplicationsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListApplicationsResponse from required parameters
newListApplicationsResponse :: ListApplicationsResponse
newListApplicationsResponse  = ListApplicationsResponse { "Applications": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListApplicationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListApplicationsResponse' :: ( { "Applications" :: NullOrUndefined.NullOrUndefined (ListOfApplicationSummary') , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"Applications" :: NullOrUndefined.NullOrUndefined (ListOfApplicationSummary') , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListApplicationsResponse
newListApplicationsResponse'  customize = (ListApplicationsResponse <<< customize) { "Applications": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype MaxItems = MaxItems Int
derive instance newtypeMaxItems :: Newtype MaxItems _
derive instance repGenericMaxItems :: Generic MaxItems _
instance showMaxItems :: Show MaxItems where
  show = genericShow
instance decodeMaxItems :: Decode MaxItems where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxItems :: Encode MaxItems where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The resource (for example, an access policy statement) specified in the request does not exist.</p>
newtype NotFoundException = NotFoundException 
  { "ErrorCode" :: NullOrUndefined.NullOrUndefined (String)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where
  show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotFoundException :: Encode NotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



-- | <p>Parameters supported by the application.</p>
newtype ParameterDefinition = ParameterDefinition 
  { "AllowedPattern" :: NullOrUndefined.NullOrUndefined (String)
  , "AllowedValues" :: NullOrUndefined.NullOrUndefined (ListOf__string')
  , "ConstraintDescription" :: NullOrUndefined.NullOrUndefined (String)
  , "DefaultValue" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "MaxLength" :: NullOrUndefined.NullOrUndefined (Int)
  , "MaxValue" :: NullOrUndefined.NullOrUndefined (Int)
  , "MinLength" :: NullOrUndefined.NullOrUndefined (Int)
  , "MinValue" :: NullOrUndefined.NullOrUndefined (Int)
  , "Name" :: (String)
  , "NoEcho" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "ReferencedByResources" :: (ListOf__string')
  , "Type" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeParameterDefinition :: Newtype ParameterDefinition _
derive instance repGenericParameterDefinition :: Generic ParameterDefinition _
instance showParameterDefinition :: Show ParameterDefinition where
  show = genericShow
instance decodeParameterDefinition :: Decode ParameterDefinition where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeParameterDefinition :: Encode ParameterDefinition where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ParameterDefinition from required parameters
newParameterDefinition :: String -> ListOf__string' -> ParameterDefinition
newParameterDefinition _Name _ReferencedByResources = ParameterDefinition { "Name": _Name, "ReferencedByResources": _ReferencedByResources, "AllowedPattern": (NullOrUndefined Nothing), "AllowedValues": (NullOrUndefined Nothing), "ConstraintDescription": (NullOrUndefined Nothing), "DefaultValue": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "MaxLength": (NullOrUndefined Nothing), "MaxValue": (NullOrUndefined Nothing), "MinLength": (NullOrUndefined Nothing), "MinValue": (NullOrUndefined Nothing), "NoEcho": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs ParameterDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParameterDefinition' :: String -> ListOf__string' -> ( { "AllowedPattern" :: NullOrUndefined.NullOrUndefined (String) , "AllowedValues" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "ConstraintDescription" :: NullOrUndefined.NullOrUndefined (String) , "DefaultValue" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "MaxLength" :: NullOrUndefined.NullOrUndefined (Int) , "MaxValue" :: NullOrUndefined.NullOrUndefined (Int) , "MinLength" :: NullOrUndefined.NullOrUndefined (Int) , "MinValue" :: NullOrUndefined.NullOrUndefined (Int) , "Name" :: (String) , "NoEcho" :: NullOrUndefined.NullOrUndefined (Boolean) , "ReferencedByResources" :: (ListOf__string') , "Type" :: NullOrUndefined.NullOrUndefined (String) } -> {"AllowedPattern" :: NullOrUndefined.NullOrUndefined (String) , "AllowedValues" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "ConstraintDescription" :: NullOrUndefined.NullOrUndefined (String) , "DefaultValue" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "MaxLength" :: NullOrUndefined.NullOrUndefined (Int) , "MaxValue" :: NullOrUndefined.NullOrUndefined (Int) , "MinLength" :: NullOrUndefined.NullOrUndefined (Int) , "MinValue" :: NullOrUndefined.NullOrUndefined (Int) , "Name" :: (String) , "NoEcho" :: NullOrUndefined.NullOrUndefined (Boolean) , "ReferencedByResources" :: (ListOf__string') , "Type" :: NullOrUndefined.NullOrUndefined (String) } ) -> ParameterDefinition
newParameterDefinition' _Name _ReferencedByResources customize = (ParameterDefinition <<< customize) { "Name": _Name, "ReferencedByResources": _ReferencedByResources, "AllowedPattern": (NullOrUndefined Nothing), "AllowedValues": (NullOrUndefined Nothing), "ConstraintDescription": (NullOrUndefined Nothing), "DefaultValue": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "MaxLength": (NullOrUndefined Nothing), "MaxValue": (NullOrUndefined Nothing), "MinLength": (NullOrUndefined Nothing), "MinValue": (NullOrUndefined Nothing), "NoEcho": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



-- | <p>Parameter value of the application.</p>
newtype ParameterValue = ParameterValue 
  { "Name" :: (String)
  , "Value" :: (String)
  }
derive instance newtypeParameterValue :: Newtype ParameterValue _
derive instance repGenericParameterValue :: Generic ParameterValue _
instance showParameterValue :: Show ParameterValue where
  show = genericShow
instance decodeParameterValue :: Decode ParameterValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeParameterValue :: Encode ParameterValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ParameterValue from required parameters
newParameterValue :: String -> String -> ParameterValue
newParameterValue _Name _Value = ParameterValue { "Name": _Name, "Value": _Value }

-- | Constructs ParameterValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParameterValue' :: String -> String -> ( { "Name" :: (String) , "Value" :: (String) } -> {"Name" :: (String) , "Value" :: (String) } ) -> ParameterValue
newParameterValue' _Name _Value customize = (ParameterValue <<< customize) { "Name": _Name, "Value": _Value }



newtype PutApplicationPolicyRequest = PutApplicationPolicyRequest 
  { "ApplicationId" :: (String)
  , "Statements" :: NullOrUndefined.NullOrUndefined (ListOfApplicationPolicyStatement')
  }
derive instance newtypePutApplicationPolicyRequest :: Newtype PutApplicationPolicyRequest _
derive instance repGenericPutApplicationPolicyRequest :: Generic PutApplicationPolicyRequest _
instance showPutApplicationPolicyRequest :: Show PutApplicationPolicyRequest where
  show = genericShow
instance decodePutApplicationPolicyRequest :: Decode PutApplicationPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutApplicationPolicyRequest :: Encode PutApplicationPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutApplicationPolicyRequest from required parameters
newPutApplicationPolicyRequest :: String -> PutApplicationPolicyRequest
newPutApplicationPolicyRequest _ApplicationId = PutApplicationPolicyRequest { "ApplicationId": _ApplicationId, "Statements": (NullOrUndefined Nothing) }

-- | Constructs PutApplicationPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutApplicationPolicyRequest' :: String -> ( { "ApplicationId" :: (String) , "Statements" :: NullOrUndefined.NullOrUndefined (ListOfApplicationPolicyStatement') } -> {"ApplicationId" :: (String) , "Statements" :: NullOrUndefined.NullOrUndefined (ListOfApplicationPolicyStatement') } ) -> PutApplicationPolicyRequest
newPutApplicationPolicyRequest' _ApplicationId customize = (PutApplicationPolicyRequest <<< customize) { "ApplicationId": _ApplicationId, "Statements": (NullOrUndefined Nothing) }



newtype PutApplicationPolicyResponse = PutApplicationPolicyResponse 
  { "Statements" :: NullOrUndefined.NullOrUndefined (ListOfApplicationPolicyStatement')
  }
derive instance newtypePutApplicationPolicyResponse :: Newtype PutApplicationPolicyResponse _
derive instance repGenericPutApplicationPolicyResponse :: Generic PutApplicationPolicyResponse _
instance showPutApplicationPolicyResponse :: Show PutApplicationPolicyResponse where
  show = genericShow
instance decodePutApplicationPolicyResponse :: Decode PutApplicationPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutApplicationPolicyResponse :: Encode PutApplicationPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutApplicationPolicyResponse from required parameters
newPutApplicationPolicyResponse :: PutApplicationPolicyResponse
newPutApplicationPolicyResponse  = PutApplicationPolicyResponse { "Statements": (NullOrUndefined Nothing) }

-- | Constructs PutApplicationPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutApplicationPolicyResponse' :: ( { "Statements" :: NullOrUndefined.NullOrUndefined (ListOfApplicationPolicyStatement') } -> {"Statements" :: NullOrUndefined.NullOrUndefined (ListOfApplicationPolicyStatement') } ) -> PutApplicationPolicyResponse
newPutApplicationPolicyResponse'  customize = (PutApplicationPolicyResponse <<< customize) { "Statements": (NullOrUndefined Nothing) }



-- | <p>The client is sending more than the allowed number of requests per unit time.</p>
newtype TooManyRequestsException = TooManyRequestsException 
  { "ErrorCode" :: NullOrUndefined.NullOrUndefined (String)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where
  show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"ErrorCode" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



-- | <p>Update application request.</p>
newtype UpdateApplicationInput = UpdateApplicationInput 
  { "Author" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string')
  , "ReadmeBody" :: NullOrUndefined.NullOrUndefined (String)
  , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUpdateApplicationInput :: Newtype UpdateApplicationInput _
derive instance repGenericUpdateApplicationInput :: Generic UpdateApplicationInput _
instance showUpdateApplicationInput :: Show UpdateApplicationInput where
  show = genericShow
instance decodeUpdateApplicationInput :: Decode UpdateApplicationInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateApplicationInput :: Encode UpdateApplicationInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateApplicationInput from required parameters
newUpdateApplicationInput :: UpdateApplicationInput
newUpdateApplicationInput  = UpdateApplicationInput { "Author": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "ReadmeBody": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing) }

-- | Constructs UpdateApplicationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateApplicationInput' :: ( { "Author" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "ReadmeBody" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) } -> {"Author" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "ReadmeBody" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) } ) -> UpdateApplicationInput
newUpdateApplicationInput'  customize = (UpdateApplicationInput <<< customize) { "Author": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "ReadmeBody": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing) }



newtype UpdateApplicationRequest = UpdateApplicationRequest 
  { "ApplicationId" :: (String)
  , "Author" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string')
  , "ReadmeBody" :: NullOrUndefined.NullOrUndefined (String)
  , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUpdateApplicationRequest :: Newtype UpdateApplicationRequest _
derive instance repGenericUpdateApplicationRequest :: Generic UpdateApplicationRequest _
instance showUpdateApplicationRequest :: Show UpdateApplicationRequest where
  show = genericShow
instance decodeUpdateApplicationRequest :: Decode UpdateApplicationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateApplicationRequest :: Encode UpdateApplicationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateApplicationRequest from required parameters
newUpdateApplicationRequest :: String -> UpdateApplicationRequest
newUpdateApplicationRequest _ApplicationId = UpdateApplicationRequest { "ApplicationId": _ApplicationId, "Author": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "ReadmeBody": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing) }

-- | Constructs UpdateApplicationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateApplicationRequest' :: String -> ( { "ApplicationId" :: (String) , "Author" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "ReadmeBody" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) } -> {"ApplicationId" :: (String) , "Author" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "ReadmeBody" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) } ) -> UpdateApplicationRequest
newUpdateApplicationRequest' _ApplicationId customize = (UpdateApplicationRequest <<< customize) { "ApplicationId": _ApplicationId, "Author": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "ReadmeBody": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing) }



newtype UpdateApplicationResponse = UpdateApplicationResponse 
  { "ApplicationId" :: NullOrUndefined.NullOrUndefined (String)
  , "Author" :: NullOrUndefined.NullOrUndefined (String)
  , "CreationTime" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string')
  , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String)
  , "Version" :: NullOrUndefined.NullOrUndefined (Version)
  }
derive instance newtypeUpdateApplicationResponse :: Newtype UpdateApplicationResponse _
derive instance repGenericUpdateApplicationResponse :: Generic UpdateApplicationResponse _
instance showUpdateApplicationResponse :: Show UpdateApplicationResponse where
  show = genericShow
instance decodeUpdateApplicationResponse :: Decode UpdateApplicationResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateApplicationResponse :: Encode UpdateApplicationResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateApplicationResponse from required parameters
newUpdateApplicationResponse :: UpdateApplicationResponse
newUpdateApplicationResponse  = UpdateApplicationResponse { "ApplicationId": (NullOrUndefined Nothing), "Author": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "LicenseUrl": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs UpdateApplicationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateApplicationResponse' :: ( { "ApplicationId" :: NullOrUndefined.NullOrUndefined (String) , "Author" :: NullOrUndefined.NullOrUndefined (String) , "CreationTime" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (Version) } -> {"ApplicationId" :: NullOrUndefined.NullOrUndefined (String) , "Author" :: NullOrUndefined.NullOrUndefined (String) , "CreationTime" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "HomePageUrl" :: NullOrUndefined.NullOrUndefined (String) , "Labels" :: NullOrUndefined.NullOrUndefined (ListOf__string') , "LicenseUrl" :: NullOrUndefined.NullOrUndefined (String) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "ReadmeUrl" :: NullOrUndefined.NullOrUndefined (String) , "SpdxLicenseId" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (Version) } ) -> UpdateApplicationResponse
newUpdateApplicationResponse'  customize = (UpdateApplicationResponse <<< customize) { "ApplicationId": (NullOrUndefined Nothing), "Author": (NullOrUndefined Nothing), "CreationTime": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "HomePageUrl": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "LicenseUrl": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ReadmeUrl": (NullOrUndefined Nothing), "SpdxLicenseId": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



-- | <p>Application version details.</p>
newtype Version = Version 
  { "ApplicationId" :: (String)
  , "CreationTime" :: (String)
  , "ParameterDefinitions" :: (ListOfParameterDefinition')
  , "SemanticVersion" :: (String)
  , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String)
  , "TemplateUrl" :: (String)
  }
derive instance newtypeVersion :: Newtype Version _
derive instance repGenericVersion :: Generic Version _
instance showVersion :: Show Version where
  show = genericShow
instance decodeVersion :: Decode Version where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVersion :: Encode Version where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Version from required parameters
newVersion :: String -> String -> ListOfParameterDefinition' -> String -> String -> Version
newVersion _ApplicationId _CreationTime _ParameterDefinitions _SemanticVersion _TemplateUrl = Version { "ApplicationId": _ApplicationId, "CreationTime": _CreationTime, "ParameterDefinitions": _ParameterDefinitions, "SemanticVersion": _SemanticVersion, "TemplateUrl": _TemplateUrl, "SourceCodeUrl": (NullOrUndefined Nothing) }

-- | Constructs Version's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVersion' :: String -> String -> ListOfParameterDefinition' -> String -> String -> ( { "ApplicationId" :: (String) , "CreationTime" :: (String) , "ParameterDefinitions" :: (ListOfParameterDefinition') , "SemanticVersion" :: (String) , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) , "TemplateUrl" :: (String) } -> {"ApplicationId" :: (String) , "CreationTime" :: (String) , "ParameterDefinitions" :: (ListOfParameterDefinition') , "SemanticVersion" :: (String) , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) , "TemplateUrl" :: (String) } ) -> Version
newVersion' _ApplicationId _CreationTime _ParameterDefinitions _SemanticVersion _TemplateUrl customize = (Version <<< customize) { "ApplicationId": _ApplicationId, "CreationTime": _CreationTime, "ParameterDefinitions": _ParameterDefinitions, "SemanticVersion": _SemanticVersion, "TemplateUrl": _TemplateUrl, "SourceCodeUrl": (NullOrUndefined Nothing) }



-- | <p>Application version summary.</p>
newtype VersionSummary = VersionSummary 
  { "ApplicationId" :: (String)
  , "CreationTime" :: (String)
  , "SemanticVersion" :: (String)
  , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeVersionSummary :: Newtype VersionSummary _
derive instance repGenericVersionSummary :: Generic VersionSummary _
instance showVersionSummary :: Show VersionSummary where
  show = genericShow
instance decodeVersionSummary :: Decode VersionSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVersionSummary :: Encode VersionSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs VersionSummary from required parameters
newVersionSummary :: String -> String -> String -> VersionSummary
newVersionSummary _ApplicationId _CreationTime _SemanticVersion = VersionSummary { "ApplicationId": _ApplicationId, "CreationTime": _CreationTime, "SemanticVersion": _SemanticVersion, "SourceCodeUrl": (NullOrUndefined Nothing) }

-- | Constructs VersionSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVersionSummary' :: String -> String -> String -> ( { "ApplicationId" :: (String) , "CreationTime" :: (String) , "SemanticVersion" :: (String) , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) } -> {"ApplicationId" :: (String) , "CreationTime" :: (String) , "SemanticVersion" :: (String) , "SourceCodeUrl" :: NullOrUndefined.NullOrUndefined (String) } ) -> VersionSummary
newVersionSummary' _ApplicationId _CreationTime _SemanticVersion customize = (VersionSummary <<< customize) { "ApplicationId": _ApplicationId, "CreationTime": _CreationTime, "SemanticVersion": _SemanticVersion, "SourceCodeUrl": (NullOrUndefined Nothing) }



newtype ListOfApplicationPolicyStatement' = ListOfApplicationPolicyStatement' (Array ApplicationPolicyStatement)
derive instance newtypeListOfApplicationPolicyStatement' :: Newtype ListOfApplicationPolicyStatement' _
derive instance repGenericListOfApplicationPolicyStatement' :: Generic ListOfApplicationPolicyStatement' _
instance showListOfApplicationPolicyStatement' :: Show ListOfApplicationPolicyStatement' where
  show = genericShow
instance decodeListOfApplicationPolicyStatement' :: Decode ListOfApplicationPolicyStatement' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfApplicationPolicyStatement' :: Encode ListOfApplicationPolicyStatement' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfApplicationSummary' = ListOfApplicationSummary' (Array ApplicationSummary)
derive instance newtypeListOfApplicationSummary' :: Newtype ListOfApplicationSummary' _
derive instance repGenericListOfApplicationSummary' :: Generic ListOfApplicationSummary' _
instance showListOfApplicationSummary' :: Show ListOfApplicationSummary' where
  show = genericShow
instance decodeListOfApplicationSummary' :: Decode ListOfApplicationSummary' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfApplicationSummary' :: Encode ListOfApplicationSummary' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfParameterDefinition' = ListOfParameterDefinition' (Array ParameterDefinition)
derive instance newtypeListOfParameterDefinition' :: Newtype ListOfParameterDefinition' _
derive instance repGenericListOfParameterDefinition' :: Generic ListOfParameterDefinition' _
instance showListOfParameterDefinition' :: Show ListOfParameterDefinition' where
  show = genericShow
instance decodeListOfParameterDefinition' :: Decode ListOfParameterDefinition' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfParameterDefinition' :: Encode ListOfParameterDefinition' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfParameterValue' = ListOfParameterValue' (Array ParameterValue)
derive instance newtypeListOfParameterValue' :: Newtype ListOfParameterValue' _
derive instance repGenericListOfParameterValue' :: Generic ListOfParameterValue' _
instance showListOfParameterValue' :: Show ListOfParameterValue' where
  show = genericShow
instance decodeListOfParameterValue' :: Decode ListOfParameterValue' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfParameterValue' :: Encode ListOfParameterValue' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOfVersionSummary' = ListOfVersionSummary' (Array VersionSummary)
derive instance newtypeListOfVersionSummary' :: Newtype ListOfVersionSummary' _
derive instance repGenericListOfVersionSummary' :: Generic ListOfVersionSummary' _
instance showListOfVersionSummary' :: Show ListOfVersionSummary' where
  show = genericShow
instance decodeListOfVersionSummary' :: Decode ListOfVersionSummary' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOfVersionSummary' :: Encode ListOfVersionSummary' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListOf__string' = ListOf__string' (Array String)
derive instance newtypeListOf__string' :: Newtype ListOf__string' _
derive instance repGenericListOf__string' :: Generic ListOf__string' _
instance showListOf__string' :: Show ListOf__string' where
  show = genericShow
instance decodeListOf__string' :: Decode ListOf__string' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOf__string' :: Encode ListOf__string' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

