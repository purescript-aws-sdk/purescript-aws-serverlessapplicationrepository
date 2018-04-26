
module AWS.ServerlessApplicationRepository.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Details about the application.</p>
newtype Application = Application 
  { "ApplicationId" :: (String)
  , "Author" :: (String)
  , "CreationTime" :: Maybe (String)
  , "Description" :: (String)
  , "HomePageUrl" :: Maybe (String)
  , "Labels" :: Maybe (ListOf__string')
  , "LicenseUrl" :: Maybe (String)
  , "Name" :: (String)
  , "ReadmeUrl" :: Maybe (String)
  , "SpdxLicenseId" :: Maybe (String)
  , "Version" :: Maybe (Version)
  }
derive instance newtypeApplication :: Newtype Application _
derive instance repGenericApplication :: Generic Application _
instance showApplication :: Show Application where show = genericShow
instance decodeApplication :: Decode Application where decode = genericDecode options
instance encodeApplication :: Encode Application where encode = genericEncode options

-- | Constructs Application from required parameters
newApplication :: String -> String -> String -> String -> Application
newApplication _ApplicationId _Author _Description _Name = Application { "ApplicationId": _ApplicationId, "Author": _Author, "Description": _Description, "Name": _Name, "CreationTime": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "LicenseUrl": Nothing, "ReadmeUrl": Nothing, "SpdxLicenseId": Nothing, "Version": Nothing }

-- | Constructs Application's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplication' :: String -> String -> String -> String -> ( { "ApplicationId" :: (String) , "Author" :: (String) , "CreationTime" :: Maybe (String) , "Description" :: (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "LicenseUrl" :: Maybe (String) , "Name" :: (String) , "ReadmeUrl" :: Maybe (String) , "SpdxLicenseId" :: Maybe (String) , "Version" :: Maybe (Version) } -> {"ApplicationId" :: (String) , "Author" :: (String) , "CreationTime" :: Maybe (String) , "Description" :: (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "LicenseUrl" :: Maybe (String) , "Name" :: (String) , "ReadmeUrl" :: Maybe (String) , "SpdxLicenseId" :: Maybe (String) , "Version" :: Maybe (Version) } ) -> Application
newApplication' _ApplicationId _Author _Description _Name customize = (Application <<< customize) { "ApplicationId": _ApplicationId, "Author": _Author, "Description": _Description, "Name": _Name, "CreationTime": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "LicenseUrl": Nothing, "ReadmeUrl": Nothing, "SpdxLicenseId": Nothing, "Version": Nothing }



-- | <p>List of application details.</p>
newtype ApplicationPage = ApplicationPage 
  { "Applications" :: (ListOfApplicationSummary')
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeApplicationPage :: Newtype ApplicationPage _
derive instance repGenericApplicationPage :: Generic ApplicationPage _
instance showApplicationPage :: Show ApplicationPage where show = genericShow
instance decodeApplicationPage :: Decode ApplicationPage where decode = genericDecode options
instance encodeApplicationPage :: Encode ApplicationPage where encode = genericEncode options

-- | Constructs ApplicationPage from required parameters
newApplicationPage :: ListOfApplicationSummary' -> ApplicationPage
newApplicationPage _Applications = ApplicationPage { "Applications": _Applications, "NextToken": Nothing }

-- | Constructs ApplicationPage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationPage' :: ListOfApplicationSummary' -> ( { "Applications" :: (ListOfApplicationSummary') , "NextToken" :: Maybe (String) } -> {"Applications" :: (ListOfApplicationSummary') , "NextToken" :: Maybe (String) } ) -> ApplicationPage
newApplicationPage' _Applications customize = (ApplicationPage <<< customize) { "Applications": _Applications, "NextToken": Nothing }



-- | <p>Policy statements applied to the application.</p>
newtype ApplicationPolicy = ApplicationPolicy 
  { "Statements" :: (ListOfApplicationPolicyStatement')
  }
derive instance newtypeApplicationPolicy :: Newtype ApplicationPolicy _
derive instance repGenericApplicationPolicy :: Generic ApplicationPolicy _
instance showApplicationPolicy :: Show ApplicationPolicy where show = genericShow
instance decodeApplicationPolicy :: Decode ApplicationPolicy where decode = genericDecode options
instance encodeApplicationPolicy :: Encode ApplicationPolicy where encode = genericEncode options

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
  , "StatementId" :: Maybe (String)
  }
derive instance newtypeApplicationPolicyStatement :: Newtype ApplicationPolicyStatement _
derive instance repGenericApplicationPolicyStatement :: Generic ApplicationPolicyStatement _
instance showApplicationPolicyStatement :: Show ApplicationPolicyStatement where show = genericShow
instance decodeApplicationPolicyStatement :: Decode ApplicationPolicyStatement where decode = genericDecode options
instance encodeApplicationPolicyStatement :: Encode ApplicationPolicyStatement where encode = genericEncode options

-- | Constructs ApplicationPolicyStatement from required parameters
newApplicationPolicyStatement :: ListOf__string' -> ListOf__string' -> ApplicationPolicyStatement
newApplicationPolicyStatement _Actions _Principals = ApplicationPolicyStatement { "Actions": _Actions, "Principals": _Principals, "StatementId": Nothing }

-- | Constructs ApplicationPolicyStatement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationPolicyStatement' :: ListOf__string' -> ListOf__string' -> ( { "Actions" :: (ListOf__string') , "Principals" :: (ListOf__string') , "StatementId" :: Maybe (String) } -> {"Actions" :: (ListOf__string') , "Principals" :: (ListOf__string') , "StatementId" :: Maybe (String) } ) -> ApplicationPolicyStatement
newApplicationPolicyStatement' _Actions _Principals customize = (ApplicationPolicyStatement <<< customize) { "Actions": _Actions, "Principals": _Principals, "StatementId": Nothing }



-- | <p>Summary of details about the application.</p>
newtype ApplicationSummary = ApplicationSummary 
  { "ApplicationId" :: (String)
  , "Author" :: (String)
  , "CreationTime" :: Maybe (String)
  , "Description" :: (String)
  , "HomePageUrl" :: Maybe (String)
  , "Labels" :: Maybe (ListOf__string')
  , "Name" :: (String)
  , "SpdxLicenseId" :: Maybe (String)
  }
derive instance newtypeApplicationSummary :: Newtype ApplicationSummary _
derive instance repGenericApplicationSummary :: Generic ApplicationSummary _
instance showApplicationSummary :: Show ApplicationSummary where show = genericShow
instance decodeApplicationSummary :: Decode ApplicationSummary where decode = genericDecode options
instance encodeApplicationSummary :: Encode ApplicationSummary where encode = genericEncode options

-- | Constructs ApplicationSummary from required parameters
newApplicationSummary :: String -> String -> String -> String -> ApplicationSummary
newApplicationSummary _ApplicationId _Author _Description _Name = ApplicationSummary { "ApplicationId": _ApplicationId, "Author": _Author, "Description": _Description, "Name": _Name, "CreationTime": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "SpdxLicenseId": Nothing }

-- | Constructs ApplicationSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationSummary' :: String -> String -> String -> String -> ( { "ApplicationId" :: (String) , "Author" :: (String) , "CreationTime" :: Maybe (String) , "Description" :: (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "Name" :: (String) , "SpdxLicenseId" :: Maybe (String) } -> {"ApplicationId" :: (String) , "Author" :: (String) , "CreationTime" :: Maybe (String) , "Description" :: (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "Name" :: (String) , "SpdxLicenseId" :: Maybe (String) } ) -> ApplicationSummary
newApplicationSummary' _ApplicationId _Author _Description _Name customize = (ApplicationSummary <<< customize) { "ApplicationId": _ApplicationId, "Author": _Author, "Description": _Description, "Name": _Name, "CreationTime": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "SpdxLicenseId": Nothing }



-- | <p>List of version summaries for the application.</p>
newtype ApplicationVersionPage = ApplicationVersionPage 
  { "NextToken" :: Maybe (String)
  , "Versions" :: (ListOfVersionSummary')
  }
derive instance newtypeApplicationVersionPage :: Newtype ApplicationVersionPage _
derive instance repGenericApplicationVersionPage :: Generic ApplicationVersionPage _
instance showApplicationVersionPage :: Show ApplicationVersionPage where show = genericShow
instance decodeApplicationVersionPage :: Decode ApplicationVersionPage where decode = genericDecode options
instance encodeApplicationVersionPage :: Encode ApplicationVersionPage where encode = genericEncode options

-- | Constructs ApplicationVersionPage from required parameters
newApplicationVersionPage :: ListOfVersionSummary' -> ApplicationVersionPage
newApplicationVersionPage _Versions = ApplicationVersionPage { "Versions": _Versions, "NextToken": Nothing }

-- | Constructs ApplicationVersionPage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplicationVersionPage' :: ListOfVersionSummary' -> ( { "NextToken" :: Maybe (String) , "Versions" :: (ListOfVersionSummary') } -> {"NextToken" :: Maybe (String) , "Versions" :: (ListOfVersionSummary') } ) -> ApplicationVersionPage
newApplicationVersionPage' _Versions customize = (ApplicationVersionPage <<< customize) { "Versions": _Versions, "NextToken": Nothing }



-- | <p>One of the parameters in the request is invalid.</p>
newtype BadRequestException = BadRequestException 
  { "ErrorCode" :: Maybe (String)
  , "Message" :: Maybe (String)
  }
derive instance newtypeBadRequestException :: Newtype BadRequestException _
derive instance repGenericBadRequestException :: Generic BadRequestException _
instance showBadRequestException :: Show BadRequestException where show = genericShow
instance decodeBadRequestException :: Decode BadRequestException where decode = genericDecode options
instance encodeBadRequestException :: Encode BadRequestException where encode = genericEncode options

-- | Constructs BadRequestException from required parameters
newBadRequestException :: BadRequestException
newBadRequestException  = BadRequestException { "ErrorCode": Nothing, "Message": Nothing }

-- | Constructs BadRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBadRequestException' :: ( { "ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } -> {"ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } ) -> BadRequestException
newBadRequestException'  customize = (BadRequestException <<< customize) { "ErrorCode": Nothing, "Message": Nothing }



-- | <p>Details of the change set.</p>
newtype ChangeSetDetails = ChangeSetDetails 
  { "ApplicationId" :: (String)
  , "ChangeSetId" :: (String)
  , "SemanticVersion" :: (String)
  , "StackId" :: (String)
  }
derive instance newtypeChangeSetDetails :: Newtype ChangeSetDetails _
derive instance repGenericChangeSetDetails :: Generic ChangeSetDetails _
instance showChangeSetDetails :: Show ChangeSetDetails where show = genericShow
instance decodeChangeSetDetails :: Decode ChangeSetDetails where decode = genericDecode options
instance encodeChangeSetDetails :: Encode ChangeSetDetails where encode = genericEncode options

-- | Constructs ChangeSetDetails from required parameters
newChangeSetDetails :: String -> String -> String -> String -> ChangeSetDetails
newChangeSetDetails _ApplicationId _ChangeSetId _SemanticVersion _StackId = ChangeSetDetails { "ApplicationId": _ApplicationId, "ChangeSetId": _ChangeSetId, "SemanticVersion": _SemanticVersion, "StackId": _StackId }

-- | Constructs ChangeSetDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChangeSetDetails' :: String -> String -> String -> String -> ( { "ApplicationId" :: (String) , "ChangeSetId" :: (String) , "SemanticVersion" :: (String) , "StackId" :: (String) } -> {"ApplicationId" :: (String) , "ChangeSetId" :: (String) , "SemanticVersion" :: (String) , "StackId" :: (String) } ) -> ChangeSetDetails
newChangeSetDetails' _ApplicationId _ChangeSetId _SemanticVersion _StackId customize = (ChangeSetDetails <<< customize) { "ApplicationId": _ApplicationId, "ChangeSetId": _ChangeSetId, "SemanticVersion": _SemanticVersion, "StackId": _StackId }



-- | <p>The resource already exists.</p>
newtype ConflictException = ConflictException 
  { "ErrorCode" :: Maybe (String)
  , "Message" :: Maybe (String)
  }
derive instance newtypeConflictException :: Newtype ConflictException _
derive instance repGenericConflictException :: Generic ConflictException _
instance showConflictException :: Show ConflictException where show = genericShow
instance decodeConflictException :: Decode ConflictException where decode = genericDecode options
instance encodeConflictException :: Encode ConflictException where encode = genericEncode options

-- | Constructs ConflictException from required parameters
newConflictException :: ConflictException
newConflictException  = ConflictException { "ErrorCode": Nothing, "Message": Nothing }

-- | Constructs ConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConflictException' :: ( { "ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } -> {"ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } ) -> ConflictException
newConflictException'  customize = (ConflictException <<< customize) { "ErrorCode": Nothing, "Message": Nothing }



-- | <p>Create application request.</p>
newtype CreateApplicationInput = CreateApplicationInput 
  { "Author" :: (String)
  , "Description" :: (String)
  , "HomePageUrl" :: Maybe (String)
  , "Labels" :: Maybe (ListOf__string')
  , "LicenseBody" :: Maybe (String)
  , "LicenseUrl" :: Maybe (String)
  , "Name" :: (String)
  , "ReadmeBody" :: Maybe (String)
  , "ReadmeUrl" :: Maybe (String)
  , "SemanticVersion" :: Maybe (String)
  , "SourceCodeUrl" :: Maybe (String)
  , "SpdxLicenseId" :: Maybe (String)
  , "TemplateBody" :: Maybe (String)
  , "TemplateUrl" :: Maybe (String)
  }
derive instance newtypeCreateApplicationInput :: Newtype CreateApplicationInput _
derive instance repGenericCreateApplicationInput :: Generic CreateApplicationInput _
instance showCreateApplicationInput :: Show CreateApplicationInput where show = genericShow
instance decodeCreateApplicationInput :: Decode CreateApplicationInput where decode = genericDecode options
instance encodeCreateApplicationInput :: Encode CreateApplicationInput where encode = genericEncode options

-- | Constructs CreateApplicationInput from required parameters
newCreateApplicationInput :: String -> String -> String -> CreateApplicationInput
newCreateApplicationInput _Author _Description _Name = CreateApplicationInput { "Author": _Author, "Description": _Description, "Name": _Name, "HomePageUrl": Nothing, "Labels": Nothing, "LicenseBody": Nothing, "LicenseUrl": Nothing, "ReadmeBody": Nothing, "ReadmeUrl": Nothing, "SemanticVersion": Nothing, "SourceCodeUrl": Nothing, "SpdxLicenseId": Nothing, "TemplateBody": Nothing, "TemplateUrl": Nothing }

-- | Constructs CreateApplicationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationInput' :: String -> String -> String -> ( { "Author" :: (String) , "Description" :: (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "LicenseBody" :: Maybe (String) , "LicenseUrl" :: Maybe (String) , "Name" :: (String) , "ReadmeBody" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) , "SemanticVersion" :: Maybe (String) , "SourceCodeUrl" :: Maybe (String) , "SpdxLicenseId" :: Maybe (String) , "TemplateBody" :: Maybe (String) , "TemplateUrl" :: Maybe (String) } -> {"Author" :: (String) , "Description" :: (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "LicenseBody" :: Maybe (String) , "LicenseUrl" :: Maybe (String) , "Name" :: (String) , "ReadmeBody" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) , "SemanticVersion" :: Maybe (String) , "SourceCodeUrl" :: Maybe (String) , "SpdxLicenseId" :: Maybe (String) , "TemplateBody" :: Maybe (String) , "TemplateUrl" :: Maybe (String) } ) -> CreateApplicationInput
newCreateApplicationInput' _Author _Description _Name customize = (CreateApplicationInput <<< customize) { "Author": _Author, "Description": _Description, "Name": _Name, "HomePageUrl": Nothing, "Labels": Nothing, "LicenseBody": Nothing, "LicenseUrl": Nothing, "ReadmeBody": Nothing, "ReadmeUrl": Nothing, "SemanticVersion": Nothing, "SourceCodeUrl": Nothing, "SpdxLicenseId": Nothing, "TemplateBody": Nothing, "TemplateUrl": Nothing }



newtype CreateApplicationRequest = CreateApplicationRequest 
  { "Author" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "HomePageUrl" :: Maybe (String)
  , "Labels" :: Maybe (ListOf__string')
  , "LicenseBody" :: Maybe (String)
  , "LicenseUrl" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "ReadmeBody" :: Maybe (String)
  , "ReadmeUrl" :: Maybe (String)
  , "SemanticVersion" :: Maybe (String)
  , "SourceCodeUrl" :: Maybe (String)
  , "SpdxLicenseId" :: Maybe (String)
  , "TemplateBody" :: Maybe (String)
  , "TemplateUrl" :: Maybe (String)
  }
derive instance newtypeCreateApplicationRequest :: Newtype CreateApplicationRequest _
derive instance repGenericCreateApplicationRequest :: Generic CreateApplicationRequest _
instance showCreateApplicationRequest :: Show CreateApplicationRequest where show = genericShow
instance decodeCreateApplicationRequest :: Decode CreateApplicationRequest where decode = genericDecode options
instance encodeCreateApplicationRequest :: Encode CreateApplicationRequest where encode = genericEncode options

-- | Constructs CreateApplicationRequest from required parameters
newCreateApplicationRequest :: CreateApplicationRequest
newCreateApplicationRequest  = CreateApplicationRequest { "Author": Nothing, "Description": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "LicenseBody": Nothing, "LicenseUrl": Nothing, "Name": Nothing, "ReadmeBody": Nothing, "ReadmeUrl": Nothing, "SemanticVersion": Nothing, "SourceCodeUrl": Nothing, "SpdxLicenseId": Nothing, "TemplateBody": Nothing, "TemplateUrl": Nothing }

-- | Constructs CreateApplicationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationRequest' :: ( { "Author" :: Maybe (String) , "Description" :: Maybe (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "LicenseBody" :: Maybe (String) , "LicenseUrl" :: Maybe (String) , "Name" :: Maybe (String) , "ReadmeBody" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) , "SemanticVersion" :: Maybe (String) , "SourceCodeUrl" :: Maybe (String) , "SpdxLicenseId" :: Maybe (String) , "TemplateBody" :: Maybe (String) , "TemplateUrl" :: Maybe (String) } -> {"Author" :: Maybe (String) , "Description" :: Maybe (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "LicenseBody" :: Maybe (String) , "LicenseUrl" :: Maybe (String) , "Name" :: Maybe (String) , "ReadmeBody" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) , "SemanticVersion" :: Maybe (String) , "SourceCodeUrl" :: Maybe (String) , "SpdxLicenseId" :: Maybe (String) , "TemplateBody" :: Maybe (String) , "TemplateUrl" :: Maybe (String) } ) -> CreateApplicationRequest
newCreateApplicationRequest'  customize = (CreateApplicationRequest <<< customize) { "Author": Nothing, "Description": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "LicenseBody": Nothing, "LicenseUrl": Nothing, "Name": Nothing, "ReadmeBody": Nothing, "ReadmeUrl": Nothing, "SemanticVersion": Nothing, "SourceCodeUrl": Nothing, "SpdxLicenseId": Nothing, "TemplateBody": Nothing, "TemplateUrl": Nothing }



newtype CreateApplicationResponse = CreateApplicationResponse 
  { "ApplicationId" :: Maybe (String)
  , "Author" :: Maybe (String)
  , "CreationTime" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "HomePageUrl" :: Maybe (String)
  , "Labels" :: Maybe (ListOf__string')
  , "LicenseUrl" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "ReadmeUrl" :: Maybe (String)
  , "SpdxLicenseId" :: Maybe (String)
  , "Version" :: Maybe (Version)
  }
derive instance newtypeCreateApplicationResponse :: Newtype CreateApplicationResponse _
derive instance repGenericCreateApplicationResponse :: Generic CreateApplicationResponse _
instance showCreateApplicationResponse :: Show CreateApplicationResponse where show = genericShow
instance decodeCreateApplicationResponse :: Decode CreateApplicationResponse where decode = genericDecode options
instance encodeCreateApplicationResponse :: Encode CreateApplicationResponse where encode = genericEncode options

-- | Constructs CreateApplicationResponse from required parameters
newCreateApplicationResponse :: CreateApplicationResponse
newCreateApplicationResponse  = CreateApplicationResponse { "ApplicationId": Nothing, "Author": Nothing, "CreationTime": Nothing, "Description": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "LicenseUrl": Nothing, "Name": Nothing, "ReadmeUrl": Nothing, "SpdxLicenseId": Nothing, "Version": Nothing }

-- | Constructs CreateApplicationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationResponse' :: ( { "ApplicationId" :: Maybe (String) , "Author" :: Maybe (String) , "CreationTime" :: Maybe (String) , "Description" :: Maybe (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "LicenseUrl" :: Maybe (String) , "Name" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) , "SpdxLicenseId" :: Maybe (String) , "Version" :: Maybe (Version) } -> {"ApplicationId" :: Maybe (String) , "Author" :: Maybe (String) , "CreationTime" :: Maybe (String) , "Description" :: Maybe (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "LicenseUrl" :: Maybe (String) , "Name" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) , "SpdxLicenseId" :: Maybe (String) , "Version" :: Maybe (Version) } ) -> CreateApplicationResponse
newCreateApplicationResponse'  customize = (CreateApplicationResponse <<< customize) { "ApplicationId": Nothing, "Author": Nothing, "CreationTime": Nothing, "Description": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "LicenseUrl": Nothing, "Name": Nothing, "ReadmeUrl": Nothing, "SpdxLicenseId": Nothing, "Version": Nothing }



-- | <p>Create version request.</p>
newtype CreateApplicationVersionInput = CreateApplicationVersionInput 
  { "SourceCodeUrl" :: Maybe (String)
  , "TemplateBody" :: Maybe (String)
  , "TemplateUrl" :: Maybe (String)
  }
derive instance newtypeCreateApplicationVersionInput :: Newtype CreateApplicationVersionInput _
derive instance repGenericCreateApplicationVersionInput :: Generic CreateApplicationVersionInput _
instance showCreateApplicationVersionInput :: Show CreateApplicationVersionInput where show = genericShow
instance decodeCreateApplicationVersionInput :: Decode CreateApplicationVersionInput where decode = genericDecode options
instance encodeCreateApplicationVersionInput :: Encode CreateApplicationVersionInput where encode = genericEncode options

-- | Constructs CreateApplicationVersionInput from required parameters
newCreateApplicationVersionInput :: CreateApplicationVersionInput
newCreateApplicationVersionInput  = CreateApplicationVersionInput { "SourceCodeUrl": Nothing, "TemplateBody": Nothing, "TemplateUrl": Nothing }

-- | Constructs CreateApplicationVersionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationVersionInput' :: ( { "SourceCodeUrl" :: Maybe (String) , "TemplateBody" :: Maybe (String) , "TemplateUrl" :: Maybe (String) } -> {"SourceCodeUrl" :: Maybe (String) , "TemplateBody" :: Maybe (String) , "TemplateUrl" :: Maybe (String) } ) -> CreateApplicationVersionInput
newCreateApplicationVersionInput'  customize = (CreateApplicationVersionInput <<< customize) { "SourceCodeUrl": Nothing, "TemplateBody": Nothing, "TemplateUrl": Nothing }



newtype CreateApplicationVersionRequest = CreateApplicationVersionRequest 
  { "ApplicationId" :: (String)
  , "SemanticVersion" :: (String)
  , "SourceCodeUrl" :: Maybe (String)
  , "TemplateBody" :: Maybe (String)
  , "TemplateUrl" :: Maybe (String)
  }
derive instance newtypeCreateApplicationVersionRequest :: Newtype CreateApplicationVersionRequest _
derive instance repGenericCreateApplicationVersionRequest :: Generic CreateApplicationVersionRequest _
instance showCreateApplicationVersionRequest :: Show CreateApplicationVersionRequest where show = genericShow
instance decodeCreateApplicationVersionRequest :: Decode CreateApplicationVersionRequest where decode = genericDecode options
instance encodeCreateApplicationVersionRequest :: Encode CreateApplicationVersionRequest where encode = genericEncode options

-- | Constructs CreateApplicationVersionRequest from required parameters
newCreateApplicationVersionRequest :: String -> String -> CreateApplicationVersionRequest
newCreateApplicationVersionRequest _ApplicationId _SemanticVersion = CreateApplicationVersionRequest { "ApplicationId": _ApplicationId, "SemanticVersion": _SemanticVersion, "SourceCodeUrl": Nothing, "TemplateBody": Nothing, "TemplateUrl": Nothing }

-- | Constructs CreateApplicationVersionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationVersionRequest' :: String -> String -> ( { "ApplicationId" :: (String) , "SemanticVersion" :: (String) , "SourceCodeUrl" :: Maybe (String) , "TemplateBody" :: Maybe (String) , "TemplateUrl" :: Maybe (String) } -> {"ApplicationId" :: (String) , "SemanticVersion" :: (String) , "SourceCodeUrl" :: Maybe (String) , "TemplateBody" :: Maybe (String) , "TemplateUrl" :: Maybe (String) } ) -> CreateApplicationVersionRequest
newCreateApplicationVersionRequest' _ApplicationId _SemanticVersion customize = (CreateApplicationVersionRequest <<< customize) { "ApplicationId": _ApplicationId, "SemanticVersion": _SemanticVersion, "SourceCodeUrl": Nothing, "TemplateBody": Nothing, "TemplateUrl": Nothing }



newtype CreateApplicationVersionResponse = CreateApplicationVersionResponse 
  { "ApplicationId" :: Maybe (String)
  , "CreationTime" :: Maybe (String)
  , "ParameterDefinitions" :: Maybe (ListOfParameterDefinition')
  , "SemanticVersion" :: Maybe (String)
  , "SourceCodeUrl" :: Maybe (String)
  , "TemplateUrl" :: Maybe (String)
  }
derive instance newtypeCreateApplicationVersionResponse :: Newtype CreateApplicationVersionResponse _
derive instance repGenericCreateApplicationVersionResponse :: Generic CreateApplicationVersionResponse _
instance showCreateApplicationVersionResponse :: Show CreateApplicationVersionResponse where show = genericShow
instance decodeCreateApplicationVersionResponse :: Decode CreateApplicationVersionResponse where decode = genericDecode options
instance encodeCreateApplicationVersionResponse :: Encode CreateApplicationVersionResponse where encode = genericEncode options

-- | Constructs CreateApplicationVersionResponse from required parameters
newCreateApplicationVersionResponse :: CreateApplicationVersionResponse
newCreateApplicationVersionResponse  = CreateApplicationVersionResponse { "ApplicationId": Nothing, "CreationTime": Nothing, "ParameterDefinitions": Nothing, "SemanticVersion": Nothing, "SourceCodeUrl": Nothing, "TemplateUrl": Nothing }

-- | Constructs CreateApplicationVersionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateApplicationVersionResponse' :: ( { "ApplicationId" :: Maybe (String) , "CreationTime" :: Maybe (String) , "ParameterDefinitions" :: Maybe (ListOfParameterDefinition') , "SemanticVersion" :: Maybe (String) , "SourceCodeUrl" :: Maybe (String) , "TemplateUrl" :: Maybe (String) } -> {"ApplicationId" :: Maybe (String) , "CreationTime" :: Maybe (String) , "ParameterDefinitions" :: Maybe (ListOfParameterDefinition') , "SemanticVersion" :: Maybe (String) , "SourceCodeUrl" :: Maybe (String) , "TemplateUrl" :: Maybe (String) } ) -> CreateApplicationVersionResponse
newCreateApplicationVersionResponse'  customize = (CreateApplicationVersionResponse <<< customize) { "ApplicationId": Nothing, "CreationTime": Nothing, "ParameterDefinitions": Nothing, "SemanticVersion": Nothing, "SourceCodeUrl": Nothing, "TemplateUrl": Nothing }



-- | <p>Create application ChangeSet request.</p>
newtype CreateCloudFormationChangeSetInput = CreateCloudFormationChangeSetInput 
  { "ParameterOverrides" :: Maybe (ListOfParameterValue')
  , "SemanticVersion" :: Maybe (String)
  , "StackName" :: (String)
  }
derive instance newtypeCreateCloudFormationChangeSetInput :: Newtype CreateCloudFormationChangeSetInput _
derive instance repGenericCreateCloudFormationChangeSetInput :: Generic CreateCloudFormationChangeSetInput _
instance showCreateCloudFormationChangeSetInput :: Show CreateCloudFormationChangeSetInput where show = genericShow
instance decodeCreateCloudFormationChangeSetInput :: Decode CreateCloudFormationChangeSetInput where decode = genericDecode options
instance encodeCreateCloudFormationChangeSetInput :: Encode CreateCloudFormationChangeSetInput where encode = genericEncode options

-- | Constructs CreateCloudFormationChangeSetInput from required parameters
newCreateCloudFormationChangeSetInput :: String -> CreateCloudFormationChangeSetInput
newCreateCloudFormationChangeSetInput _StackName = CreateCloudFormationChangeSetInput { "StackName": _StackName, "ParameterOverrides": Nothing, "SemanticVersion": Nothing }

-- | Constructs CreateCloudFormationChangeSetInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCloudFormationChangeSetInput' :: String -> ( { "ParameterOverrides" :: Maybe (ListOfParameterValue') , "SemanticVersion" :: Maybe (String) , "StackName" :: (String) } -> {"ParameterOverrides" :: Maybe (ListOfParameterValue') , "SemanticVersion" :: Maybe (String) , "StackName" :: (String) } ) -> CreateCloudFormationChangeSetInput
newCreateCloudFormationChangeSetInput' _StackName customize = (CreateCloudFormationChangeSetInput <<< customize) { "StackName": _StackName, "ParameterOverrides": Nothing, "SemanticVersion": Nothing }



newtype CreateCloudFormationChangeSetRequest = CreateCloudFormationChangeSetRequest 
  { "ApplicationId" :: (String)
  , "ParameterOverrides" :: Maybe (ListOfParameterValue')
  , "SemanticVersion" :: Maybe (String)
  , "StackName" :: Maybe (String)
  }
derive instance newtypeCreateCloudFormationChangeSetRequest :: Newtype CreateCloudFormationChangeSetRequest _
derive instance repGenericCreateCloudFormationChangeSetRequest :: Generic CreateCloudFormationChangeSetRequest _
instance showCreateCloudFormationChangeSetRequest :: Show CreateCloudFormationChangeSetRequest where show = genericShow
instance decodeCreateCloudFormationChangeSetRequest :: Decode CreateCloudFormationChangeSetRequest where decode = genericDecode options
instance encodeCreateCloudFormationChangeSetRequest :: Encode CreateCloudFormationChangeSetRequest where encode = genericEncode options

-- | Constructs CreateCloudFormationChangeSetRequest from required parameters
newCreateCloudFormationChangeSetRequest :: String -> CreateCloudFormationChangeSetRequest
newCreateCloudFormationChangeSetRequest _ApplicationId = CreateCloudFormationChangeSetRequest { "ApplicationId": _ApplicationId, "ParameterOverrides": Nothing, "SemanticVersion": Nothing, "StackName": Nothing }

-- | Constructs CreateCloudFormationChangeSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCloudFormationChangeSetRequest' :: String -> ( { "ApplicationId" :: (String) , "ParameterOverrides" :: Maybe (ListOfParameterValue') , "SemanticVersion" :: Maybe (String) , "StackName" :: Maybe (String) } -> {"ApplicationId" :: (String) , "ParameterOverrides" :: Maybe (ListOfParameterValue') , "SemanticVersion" :: Maybe (String) , "StackName" :: Maybe (String) } ) -> CreateCloudFormationChangeSetRequest
newCreateCloudFormationChangeSetRequest' _ApplicationId customize = (CreateCloudFormationChangeSetRequest <<< customize) { "ApplicationId": _ApplicationId, "ParameterOverrides": Nothing, "SemanticVersion": Nothing, "StackName": Nothing }



newtype CreateCloudFormationChangeSetResponse = CreateCloudFormationChangeSetResponse 
  { "ApplicationId" :: Maybe (String)
  , "ChangeSetId" :: Maybe (String)
  , "SemanticVersion" :: Maybe (String)
  , "StackId" :: Maybe (String)
  }
derive instance newtypeCreateCloudFormationChangeSetResponse :: Newtype CreateCloudFormationChangeSetResponse _
derive instance repGenericCreateCloudFormationChangeSetResponse :: Generic CreateCloudFormationChangeSetResponse _
instance showCreateCloudFormationChangeSetResponse :: Show CreateCloudFormationChangeSetResponse where show = genericShow
instance decodeCreateCloudFormationChangeSetResponse :: Decode CreateCloudFormationChangeSetResponse where decode = genericDecode options
instance encodeCreateCloudFormationChangeSetResponse :: Encode CreateCloudFormationChangeSetResponse where encode = genericEncode options

-- | Constructs CreateCloudFormationChangeSetResponse from required parameters
newCreateCloudFormationChangeSetResponse :: CreateCloudFormationChangeSetResponse
newCreateCloudFormationChangeSetResponse  = CreateCloudFormationChangeSetResponse { "ApplicationId": Nothing, "ChangeSetId": Nothing, "SemanticVersion": Nothing, "StackId": Nothing }

-- | Constructs CreateCloudFormationChangeSetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCloudFormationChangeSetResponse' :: ( { "ApplicationId" :: Maybe (String) , "ChangeSetId" :: Maybe (String) , "SemanticVersion" :: Maybe (String) , "StackId" :: Maybe (String) } -> {"ApplicationId" :: Maybe (String) , "ChangeSetId" :: Maybe (String) , "SemanticVersion" :: Maybe (String) , "StackId" :: Maybe (String) } ) -> CreateCloudFormationChangeSetResponse
newCreateCloudFormationChangeSetResponse'  customize = (CreateCloudFormationChangeSetResponse <<< customize) { "ApplicationId": Nothing, "ChangeSetId": Nothing, "SemanticVersion": Nothing, "StackId": Nothing }



newtype DeleteApplicationRequest = DeleteApplicationRequest 
  { "ApplicationId" :: (String)
  }
derive instance newtypeDeleteApplicationRequest :: Newtype DeleteApplicationRequest _
derive instance repGenericDeleteApplicationRequest :: Generic DeleteApplicationRequest _
instance showDeleteApplicationRequest :: Show DeleteApplicationRequest where show = genericShow
instance decodeDeleteApplicationRequest :: Decode DeleteApplicationRequest where decode = genericDecode options
instance encodeDeleteApplicationRequest :: Encode DeleteApplicationRequest where encode = genericEncode options

-- | Constructs DeleteApplicationRequest from required parameters
newDeleteApplicationRequest :: String -> DeleteApplicationRequest
newDeleteApplicationRequest _ApplicationId = DeleteApplicationRequest { "ApplicationId": _ApplicationId }

-- | Constructs DeleteApplicationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteApplicationRequest' :: String -> ( { "ApplicationId" :: (String) } -> {"ApplicationId" :: (String) } ) -> DeleteApplicationRequest
newDeleteApplicationRequest' _ApplicationId customize = (DeleteApplicationRequest <<< customize) { "ApplicationId": _ApplicationId }



-- | <p>The client is not authenticated.</p>
newtype ForbiddenException = ForbiddenException 
  { "ErrorCode" :: Maybe (String)
  , "Message" :: Maybe (String)
  }
derive instance newtypeForbiddenException :: Newtype ForbiddenException _
derive instance repGenericForbiddenException :: Generic ForbiddenException _
instance showForbiddenException :: Show ForbiddenException where show = genericShow
instance decodeForbiddenException :: Decode ForbiddenException where decode = genericDecode options
instance encodeForbiddenException :: Encode ForbiddenException where encode = genericEncode options

-- | Constructs ForbiddenException from required parameters
newForbiddenException :: ForbiddenException
newForbiddenException  = ForbiddenException { "ErrorCode": Nothing, "Message": Nothing }

-- | Constructs ForbiddenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newForbiddenException' :: ( { "ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } -> {"ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } ) -> ForbiddenException
newForbiddenException'  customize = (ForbiddenException <<< customize) { "ErrorCode": Nothing, "Message": Nothing }



newtype GetApplicationPolicyRequest = GetApplicationPolicyRequest 
  { "ApplicationId" :: (String)
  }
derive instance newtypeGetApplicationPolicyRequest :: Newtype GetApplicationPolicyRequest _
derive instance repGenericGetApplicationPolicyRequest :: Generic GetApplicationPolicyRequest _
instance showGetApplicationPolicyRequest :: Show GetApplicationPolicyRequest where show = genericShow
instance decodeGetApplicationPolicyRequest :: Decode GetApplicationPolicyRequest where decode = genericDecode options
instance encodeGetApplicationPolicyRequest :: Encode GetApplicationPolicyRequest where encode = genericEncode options

-- | Constructs GetApplicationPolicyRequest from required parameters
newGetApplicationPolicyRequest :: String -> GetApplicationPolicyRequest
newGetApplicationPolicyRequest _ApplicationId = GetApplicationPolicyRequest { "ApplicationId": _ApplicationId }

-- | Constructs GetApplicationPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetApplicationPolicyRequest' :: String -> ( { "ApplicationId" :: (String) } -> {"ApplicationId" :: (String) } ) -> GetApplicationPolicyRequest
newGetApplicationPolicyRequest' _ApplicationId customize = (GetApplicationPolicyRequest <<< customize) { "ApplicationId": _ApplicationId }



newtype GetApplicationPolicyResponse = GetApplicationPolicyResponse 
  { "Statements" :: Maybe (ListOfApplicationPolicyStatement')
  }
derive instance newtypeGetApplicationPolicyResponse :: Newtype GetApplicationPolicyResponse _
derive instance repGenericGetApplicationPolicyResponse :: Generic GetApplicationPolicyResponse _
instance showGetApplicationPolicyResponse :: Show GetApplicationPolicyResponse where show = genericShow
instance decodeGetApplicationPolicyResponse :: Decode GetApplicationPolicyResponse where decode = genericDecode options
instance encodeGetApplicationPolicyResponse :: Encode GetApplicationPolicyResponse where encode = genericEncode options

-- | Constructs GetApplicationPolicyResponse from required parameters
newGetApplicationPolicyResponse :: GetApplicationPolicyResponse
newGetApplicationPolicyResponse  = GetApplicationPolicyResponse { "Statements": Nothing }

-- | Constructs GetApplicationPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetApplicationPolicyResponse' :: ( { "Statements" :: Maybe (ListOfApplicationPolicyStatement') } -> {"Statements" :: Maybe (ListOfApplicationPolicyStatement') } ) -> GetApplicationPolicyResponse
newGetApplicationPolicyResponse'  customize = (GetApplicationPolicyResponse <<< customize) { "Statements": Nothing }



newtype GetApplicationRequest = GetApplicationRequest 
  { "ApplicationId" :: (String)
  , "SemanticVersion" :: Maybe (String)
  }
derive instance newtypeGetApplicationRequest :: Newtype GetApplicationRequest _
derive instance repGenericGetApplicationRequest :: Generic GetApplicationRequest _
instance showGetApplicationRequest :: Show GetApplicationRequest where show = genericShow
instance decodeGetApplicationRequest :: Decode GetApplicationRequest where decode = genericDecode options
instance encodeGetApplicationRequest :: Encode GetApplicationRequest where encode = genericEncode options

-- | Constructs GetApplicationRequest from required parameters
newGetApplicationRequest :: String -> GetApplicationRequest
newGetApplicationRequest _ApplicationId = GetApplicationRequest { "ApplicationId": _ApplicationId, "SemanticVersion": Nothing }

-- | Constructs GetApplicationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetApplicationRequest' :: String -> ( { "ApplicationId" :: (String) , "SemanticVersion" :: Maybe (String) } -> {"ApplicationId" :: (String) , "SemanticVersion" :: Maybe (String) } ) -> GetApplicationRequest
newGetApplicationRequest' _ApplicationId customize = (GetApplicationRequest <<< customize) { "ApplicationId": _ApplicationId, "SemanticVersion": Nothing }



newtype GetApplicationResponse = GetApplicationResponse 
  { "ApplicationId" :: Maybe (String)
  , "Author" :: Maybe (String)
  , "CreationTime" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "HomePageUrl" :: Maybe (String)
  , "Labels" :: Maybe (ListOf__string')
  , "LicenseUrl" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "ReadmeUrl" :: Maybe (String)
  , "SpdxLicenseId" :: Maybe (String)
  , "Version" :: Maybe (Version)
  }
derive instance newtypeGetApplicationResponse :: Newtype GetApplicationResponse _
derive instance repGenericGetApplicationResponse :: Generic GetApplicationResponse _
instance showGetApplicationResponse :: Show GetApplicationResponse where show = genericShow
instance decodeGetApplicationResponse :: Decode GetApplicationResponse where decode = genericDecode options
instance encodeGetApplicationResponse :: Encode GetApplicationResponse where encode = genericEncode options

-- | Constructs GetApplicationResponse from required parameters
newGetApplicationResponse :: GetApplicationResponse
newGetApplicationResponse  = GetApplicationResponse { "ApplicationId": Nothing, "Author": Nothing, "CreationTime": Nothing, "Description": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "LicenseUrl": Nothing, "Name": Nothing, "ReadmeUrl": Nothing, "SpdxLicenseId": Nothing, "Version": Nothing }

-- | Constructs GetApplicationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetApplicationResponse' :: ( { "ApplicationId" :: Maybe (String) , "Author" :: Maybe (String) , "CreationTime" :: Maybe (String) , "Description" :: Maybe (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "LicenseUrl" :: Maybe (String) , "Name" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) , "SpdxLicenseId" :: Maybe (String) , "Version" :: Maybe (Version) } -> {"ApplicationId" :: Maybe (String) , "Author" :: Maybe (String) , "CreationTime" :: Maybe (String) , "Description" :: Maybe (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "LicenseUrl" :: Maybe (String) , "Name" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) , "SpdxLicenseId" :: Maybe (String) , "Version" :: Maybe (Version) } ) -> GetApplicationResponse
newGetApplicationResponse'  customize = (GetApplicationResponse <<< customize) { "ApplicationId": Nothing, "Author": Nothing, "CreationTime": Nothing, "Description": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "LicenseUrl": Nothing, "Name": Nothing, "ReadmeUrl": Nothing, "SpdxLicenseId": Nothing, "Version": Nothing }



-- | <p>The AWS Serverless Application Repository service encountered an internal error.</p>
newtype InternalServerErrorException = InternalServerErrorException 
  { "ErrorCode" :: Maybe (String)
  , "Message" :: Maybe (String)
  }
derive instance newtypeInternalServerErrorException :: Newtype InternalServerErrorException _
derive instance repGenericInternalServerErrorException :: Generic InternalServerErrorException _
instance showInternalServerErrorException :: Show InternalServerErrorException where show = genericShow
instance decodeInternalServerErrorException :: Decode InternalServerErrorException where decode = genericDecode options
instance encodeInternalServerErrorException :: Encode InternalServerErrorException where encode = genericEncode options

-- | Constructs InternalServerErrorException from required parameters
newInternalServerErrorException :: InternalServerErrorException
newInternalServerErrorException  = InternalServerErrorException { "ErrorCode": Nothing, "Message": Nothing }

-- | Constructs InternalServerErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerErrorException' :: ( { "ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } -> {"ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } ) -> InternalServerErrorException
newInternalServerErrorException'  customize = (InternalServerErrorException <<< customize) { "ErrorCode": Nothing, "Message": Nothing }



newtype ListApplicationVersionsRequest = ListApplicationVersionsRequest 
  { "ApplicationId" :: (String)
  , "MaxItems" :: Maybe (MaxItems)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListApplicationVersionsRequest :: Newtype ListApplicationVersionsRequest _
derive instance repGenericListApplicationVersionsRequest :: Generic ListApplicationVersionsRequest _
instance showListApplicationVersionsRequest :: Show ListApplicationVersionsRequest where show = genericShow
instance decodeListApplicationVersionsRequest :: Decode ListApplicationVersionsRequest where decode = genericDecode options
instance encodeListApplicationVersionsRequest :: Encode ListApplicationVersionsRequest where encode = genericEncode options

-- | Constructs ListApplicationVersionsRequest from required parameters
newListApplicationVersionsRequest :: String -> ListApplicationVersionsRequest
newListApplicationVersionsRequest _ApplicationId = ListApplicationVersionsRequest { "ApplicationId": _ApplicationId, "MaxItems": Nothing, "NextToken": Nothing }

-- | Constructs ListApplicationVersionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListApplicationVersionsRequest' :: String -> ( { "ApplicationId" :: (String) , "MaxItems" :: Maybe (MaxItems) , "NextToken" :: Maybe (String) } -> {"ApplicationId" :: (String) , "MaxItems" :: Maybe (MaxItems) , "NextToken" :: Maybe (String) } ) -> ListApplicationVersionsRequest
newListApplicationVersionsRequest' _ApplicationId customize = (ListApplicationVersionsRequest <<< customize) { "ApplicationId": _ApplicationId, "MaxItems": Nothing, "NextToken": Nothing }



newtype ListApplicationVersionsResponse = ListApplicationVersionsResponse 
  { "NextToken" :: Maybe (String)
  , "Versions" :: Maybe (ListOfVersionSummary')
  }
derive instance newtypeListApplicationVersionsResponse :: Newtype ListApplicationVersionsResponse _
derive instance repGenericListApplicationVersionsResponse :: Generic ListApplicationVersionsResponse _
instance showListApplicationVersionsResponse :: Show ListApplicationVersionsResponse where show = genericShow
instance decodeListApplicationVersionsResponse :: Decode ListApplicationVersionsResponse where decode = genericDecode options
instance encodeListApplicationVersionsResponse :: Encode ListApplicationVersionsResponse where encode = genericEncode options

-- | Constructs ListApplicationVersionsResponse from required parameters
newListApplicationVersionsResponse :: ListApplicationVersionsResponse
newListApplicationVersionsResponse  = ListApplicationVersionsResponse { "NextToken": Nothing, "Versions": Nothing }

-- | Constructs ListApplicationVersionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListApplicationVersionsResponse' :: ( { "NextToken" :: Maybe (String) , "Versions" :: Maybe (ListOfVersionSummary') } -> {"NextToken" :: Maybe (String) , "Versions" :: Maybe (ListOfVersionSummary') } ) -> ListApplicationVersionsResponse
newListApplicationVersionsResponse'  customize = (ListApplicationVersionsResponse <<< customize) { "NextToken": Nothing, "Versions": Nothing }



newtype ListApplicationsRequest = ListApplicationsRequest 
  { "MaxItems" :: Maybe (MaxItems)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListApplicationsRequest :: Newtype ListApplicationsRequest _
derive instance repGenericListApplicationsRequest :: Generic ListApplicationsRequest _
instance showListApplicationsRequest :: Show ListApplicationsRequest where show = genericShow
instance decodeListApplicationsRequest :: Decode ListApplicationsRequest where decode = genericDecode options
instance encodeListApplicationsRequest :: Encode ListApplicationsRequest where encode = genericEncode options

-- | Constructs ListApplicationsRequest from required parameters
newListApplicationsRequest :: ListApplicationsRequest
newListApplicationsRequest  = ListApplicationsRequest { "MaxItems": Nothing, "NextToken": Nothing }

-- | Constructs ListApplicationsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListApplicationsRequest' :: ( { "MaxItems" :: Maybe (MaxItems) , "NextToken" :: Maybe (String) } -> {"MaxItems" :: Maybe (MaxItems) , "NextToken" :: Maybe (String) } ) -> ListApplicationsRequest
newListApplicationsRequest'  customize = (ListApplicationsRequest <<< customize) { "MaxItems": Nothing, "NextToken": Nothing }



newtype ListApplicationsResponse = ListApplicationsResponse 
  { "Applications" :: Maybe (ListOfApplicationSummary')
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListApplicationsResponse :: Newtype ListApplicationsResponse _
derive instance repGenericListApplicationsResponse :: Generic ListApplicationsResponse _
instance showListApplicationsResponse :: Show ListApplicationsResponse where show = genericShow
instance decodeListApplicationsResponse :: Decode ListApplicationsResponse where decode = genericDecode options
instance encodeListApplicationsResponse :: Encode ListApplicationsResponse where encode = genericEncode options

-- | Constructs ListApplicationsResponse from required parameters
newListApplicationsResponse :: ListApplicationsResponse
newListApplicationsResponse  = ListApplicationsResponse { "Applications": Nothing, "NextToken": Nothing }

-- | Constructs ListApplicationsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListApplicationsResponse' :: ( { "Applications" :: Maybe (ListOfApplicationSummary') , "NextToken" :: Maybe (String) } -> {"Applications" :: Maybe (ListOfApplicationSummary') , "NextToken" :: Maybe (String) } ) -> ListApplicationsResponse
newListApplicationsResponse'  customize = (ListApplicationsResponse <<< customize) { "Applications": Nothing, "NextToken": Nothing }



newtype MaxItems = MaxItems Int
derive instance newtypeMaxItems :: Newtype MaxItems _
derive instance repGenericMaxItems :: Generic MaxItems _
instance showMaxItems :: Show MaxItems where show = genericShow
instance decodeMaxItems :: Decode MaxItems where decode = genericDecode options
instance encodeMaxItems :: Encode MaxItems where encode = genericEncode options



-- | <p>The resource (for example, an access policy statement) specified in the request does not exist.</p>
newtype NotFoundException = NotFoundException 
  { "ErrorCode" :: Maybe (String)
  , "Message" :: Maybe (String)
  }
derive instance newtypeNotFoundException :: Newtype NotFoundException _
derive instance repGenericNotFoundException :: Generic NotFoundException _
instance showNotFoundException :: Show NotFoundException where show = genericShow
instance decodeNotFoundException :: Decode NotFoundException where decode = genericDecode options
instance encodeNotFoundException :: Encode NotFoundException where encode = genericEncode options

-- | Constructs NotFoundException from required parameters
newNotFoundException :: NotFoundException
newNotFoundException  = NotFoundException { "ErrorCode": Nothing, "Message": Nothing }

-- | Constructs NotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotFoundException' :: ( { "ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } -> {"ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } ) -> NotFoundException
newNotFoundException'  customize = (NotFoundException <<< customize) { "ErrorCode": Nothing, "Message": Nothing }



-- | <p>Parameters supported by the application.</p>
newtype ParameterDefinition = ParameterDefinition 
  { "AllowedPattern" :: Maybe (String)
  , "AllowedValues" :: Maybe (ListOf__string')
  , "ConstraintDescription" :: Maybe (String)
  , "DefaultValue" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "MaxLength" :: Maybe (Int)
  , "MaxValue" :: Maybe (Int)
  , "MinLength" :: Maybe (Int)
  , "MinValue" :: Maybe (Int)
  , "Name" :: (String)
  , "NoEcho" :: Maybe (Boolean)
  , "ReferencedByResources" :: (ListOf__string')
  , "Type" :: Maybe (String)
  }
derive instance newtypeParameterDefinition :: Newtype ParameterDefinition _
derive instance repGenericParameterDefinition :: Generic ParameterDefinition _
instance showParameterDefinition :: Show ParameterDefinition where show = genericShow
instance decodeParameterDefinition :: Decode ParameterDefinition where decode = genericDecode options
instance encodeParameterDefinition :: Encode ParameterDefinition where encode = genericEncode options

-- | Constructs ParameterDefinition from required parameters
newParameterDefinition :: String -> ListOf__string' -> ParameterDefinition
newParameterDefinition _Name _ReferencedByResources = ParameterDefinition { "Name": _Name, "ReferencedByResources": _ReferencedByResources, "AllowedPattern": Nothing, "AllowedValues": Nothing, "ConstraintDescription": Nothing, "DefaultValue": Nothing, "Description": Nothing, "MaxLength": Nothing, "MaxValue": Nothing, "MinLength": Nothing, "MinValue": Nothing, "NoEcho": Nothing, "Type": Nothing }

-- | Constructs ParameterDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParameterDefinition' :: String -> ListOf__string' -> ( { "AllowedPattern" :: Maybe (String) , "AllowedValues" :: Maybe (ListOf__string') , "ConstraintDescription" :: Maybe (String) , "DefaultValue" :: Maybe (String) , "Description" :: Maybe (String) , "MaxLength" :: Maybe (Int) , "MaxValue" :: Maybe (Int) , "MinLength" :: Maybe (Int) , "MinValue" :: Maybe (Int) , "Name" :: (String) , "NoEcho" :: Maybe (Boolean) , "ReferencedByResources" :: (ListOf__string') , "Type" :: Maybe (String) } -> {"AllowedPattern" :: Maybe (String) , "AllowedValues" :: Maybe (ListOf__string') , "ConstraintDescription" :: Maybe (String) , "DefaultValue" :: Maybe (String) , "Description" :: Maybe (String) , "MaxLength" :: Maybe (Int) , "MaxValue" :: Maybe (Int) , "MinLength" :: Maybe (Int) , "MinValue" :: Maybe (Int) , "Name" :: (String) , "NoEcho" :: Maybe (Boolean) , "ReferencedByResources" :: (ListOf__string') , "Type" :: Maybe (String) } ) -> ParameterDefinition
newParameterDefinition' _Name _ReferencedByResources customize = (ParameterDefinition <<< customize) { "Name": _Name, "ReferencedByResources": _ReferencedByResources, "AllowedPattern": Nothing, "AllowedValues": Nothing, "ConstraintDescription": Nothing, "DefaultValue": Nothing, "Description": Nothing, "MaxLength": Nothing, "MaxValue": Nothing, "MinLength": Nothing, "MinValue": Nothing, "NoEcho": Nothing, "Type": Nothing }



-- | <p>Parameter value of the application.</p>
newtype ParameterValue = ParameterValue 
  { "Name" :: (String)
  , "Value" :: (String)
  }
derive instance newtypeParameterValue :: Newtype ParameterValue _
derive instance repGenericParameterValue :: Generic ParameterValue _
instance showParameterValue :: Show ParameterValue where show = genericShow
instance decodeParameterValue :: Decode ParameterValue where decode = genericDecode options
instance encodeParameterValue :: Encode ParameterValue where encode = genericEncode options

-- | Constructs ParameterValue from required parameters
newParameterValue :: String -> String -> ParameterValue
newParameterValue _Name _Value = ParameterValue { "Name": _Name, "Value": _Value }

-- | Constructs ParameterValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParameterValue' :: String -> String -> ( { "Name" :: (String) , "Value" :: (String) } -> {"Name" :: (String) , "Value" :: (String) } ) -> ParameterValue
newParameterValue' _Name _Value customize = (ParameterValue <<< customize) { "Name": _Name, "Value": _Value }



newtype PutApplicationPolicyRequest = PutApplicationPolicyRequest 
  { "ApplicationId" :: (String)
  , "Statements" :: Maybe (ListOfApplicationPolicyStatement')
  }
derive instance newtypePutApplicationPolicyRequest :: Newtype PutApplicationPolicyRequest _
derive instance repGenericPutApplicationPolicyRequest :: Generic PutApplicationPolicyRequest _
instance showPutApplicationPolicyRequest :: Show PutApplicationPolicyRequest where show = genericShow
instance decodePutApplicationPolicyRequest :: Decode PutApplicationPolicyRequest where decode = genericDecode options
instance encodePutApplicationPolicyRequest :: Encode PutApplicationPolicyRequest where encode = genericEncode options

-- | Constructs PutApplicationPolicyRequest from required parameters
newPutApplicationPolicyRequest :: String -> PutApplicationPolicyRequest
newPutApplicationPolicyRequest _ApplicationId = PutApplicationPolicyRequest { "ApplicationId": _ApplicationId, "Statements": Nothing }

-- | Constructs PutApplicationPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutApplicationPolicyRequest' :: String -> ( { "ApplicationId" :: (String) , "Statements" :: Maybe (ListOfApplicationPolicyStatement') } -> {"ApplicationId" :: (String) , "Statements" :: Maybe (ListOfApplicationPolicyStatement') } ) -> PutApplicationPolicyRequest
newPutApplicationPolicyRequest' _ApplicationId customize = (PutApplicationPolicyRequest <<< customize) { "ApplicationId": _ApplicationId, "Statements": Nothing }



newtype PutApplicationPolicyResponse = PutApplicationPolicyResponse 
  { "Statements" :: Maybe (ListOfApplicationPolicyStatement')
  }
derive instance newtypePutApplicationPolicyResponse :: Newtype PutApplicationPolicyResponse _
derive instance repGenericPutApplicationPolicyResponse :: Generic PutApplicationPolicyResponse _
instance showPutApplicationPolicyResponse :: Show PutApplicationPolicyResponse where show = genericShow
instance decodePutApplicationPolicyResponse :: Decode PutApplicationPolicyResponse where decode = genericDecode options
instance encodePutApplicationPolicyResponse :: Encode PutApplicationPolicyResponse where encode = genericEncode options

-- | Constructs PutApplicationPolicyResponse from required parameters
newPutApplicationPolicyResponse :: PutApplicationPolicyResponse
newPutApplicationPolicyResponse  = PutApplicationPolicyResponse { "Statements": Nothing }

-- | Constructs PutApplicationPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutApplicationPolicyResponse' :: ( { "Statements" :: Maybe (ListOfApplicationPolicyStatement') } -> {"Statements" :: Maybe (ListOfApplicationPolicyStatement') } ) -> PutApplicationPolicyResponse
newPutApplicationPolicyResponse'  customize = (PutApplicationPolicyResponse <<< customize) { "Statements": Nothing }



-- | <p>The client is sending more than the allowed number of requests per unit time.</p>
newtype TooManyRequestsException = TooManyRequestsException 
  { "ErrorCode" :: Maybe (String)
  , "Message" :: Maybe (String)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where decode = genericDecode options
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where encode = genericEncode options

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "ErrorCode": Nothing, "Message": Nothing }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } -> {"ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "ErrorCode": Nothing, "Message": Nothing }



-- | <p>Update application request.</p>
newtype UpdateApplicationInput = UpdateApplicationInput 
  { "Author" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "HomePageUrl" :: Maybe (String)
  , "Labels" :: Maybe (ListOf__string')
  , "ReadmeBody" :: Maybe (String)
  , "ReadmeUrl" :: Maybe (String)
  }
derive instance newtypeUpdateApplicationInput :: Newtype UpdateApplicationInput _
derive instance repGenericUpdateApplicationInput :: Generic UpdateApplicationInput _
instance showUpdateApplicationInput :: Show UpdateApplicationInput where show = genericShow
instance decodeUpdateApplicationInput :: Decode UpdateApplicationInput where decode = genericDecode options
instance encodeUpdateApplicationInput :: Encode UpdateApplicationInput where encode = genericEncode options

-- | Constructs UpdateApplicationInput from required parameters
newUpdateApplicationInput :: UpdateApplicationInput
newUpdateApplicationInput  = UpdateApplicationInput { "Author": Nothing, "Description": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "ReadmeBody": Nothing, "ReadmeUrl": Nothing }

-- | Constructs UpdateApplicationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateApplicationInput' :: ( { "Author" :: Maybe (String) , "Description" :: Maybe (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "ReadmeBody" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) } -> {"Author" :: Maybe (String) , "Description" :: Maybe (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "ReadmeBody" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) } ) -> UpdateApplicationInput
newUpdateApplicationInput'  customize = (UpdateApplicationInput <<< customize) { "Author": Nothing, "Description": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "ReadmeBody": Nothing, "ReadmeUrl": Nothing }



newtype UpdateApplicationRequest = UpdateApplicationRequest 
  { "ApplicationId" :: (String)
  , "Author" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "HomePageUrl" :: Maybe (String)
  , "Labels" :: Maybe (ListOf__string')
  , "ReadmeBody" :: Maybe (String)
  , "ReadmeUrl" :: Maybe (String)
  }
derive instance newtypeUpdateApplicationRequest :: Newtype UpdateApplicationRequest _
derive instance repGenericUpdateApplicationRequest :: Generic UpdateApplicationRequest _
instance showUpdateApplicationRequest :: Show UpdateApplicationRequest where show = genericShow
instance decodeUpdateApplicationRequest :: Decode UpdateApplicationRequest where decode = genericDecode options
instance encodeUpdateApplicationRequest :: Encode UpdateApplicationRequest where encode = genericEncode options

-- | Constructs UpdateApplicationRequest from required parameters
newUpdateApplicationRequest :: String -> UpdateApplicationRequest
newUpdateApplicationRequest _ApplicationId = UpdateApplicationRequest { "ApplicationId": _ApplicationId, "Author": Nothing, "Description": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "ReadmeBody": Nothing, "ReadmeUrl": Nothing }

-- | Constructs UpdateApplicationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateApplicationRequest' :: String -> ( { "ApplicationId" :: (String) , "Author" :: Maybe (String) , "Description" :: Maybe (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "ReadmeBody" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) } -> {"ApplicationId" :: (String) , "Author" :: Maybe (String) , "Description" :: Maybe (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "ReadmeBody" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) } ) -> UpdateApplicationRequest
newUpdateApplicationRequest' _ApplicationId customize = (UpdateApplicationRequest <<< customize) { "ApplicationId": _ApplicationId, "Author": Nothing, "Description": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "ReadmeBody": Nothing, "ReadmeUrl": Nothing }



newtype UpdateApplicationResponse = UpdateApplicationResponse 
  { "ApplicationId" :: Maybe (String)
  , "Author" :: Maybe (String)
  , "CreationTime" :: Maybe (String)
  , "Description" :: Maybe (String)
  , "HomePageUrl" :: Maybe (String)
  , "Labels" :: Maybe (ListOf__string')
  , "LicenseUrl" :: Maybe (String)
  , "Name" :: Maybe (String)
  , "ReadmeUrl" :: Maybe (String)
  , "SpdxLicenseId" :: Maybe (String)
  , "Version" :: Maybe (Version)
  }
derive instance newtypeUpdateApplicationResponse :: Newtype UpdateApplicationResponse _
derive instance repGenericUpdateApplicationResponse :: Generic UpdateApplicationResponse _
instance showUpdateApplicationResponse :: Show UpdateApplicationResponse where show = genericShow
instance decodeUpdateApplicationResponse :: Decode UpdateApplicationResponse where decode = genericDecode options
instance encodeUpdateApplicationResponse :: Encode UpdateApplicationResponse where encode = genericEncode options

-- | Constructs UpdateApplicationResponse from required parameters
newUpdateApplicationResponse :: UpdateApplicationResponse
newUpdateApplicationResponse  = UpdateApplicationResponse { "ApplicationId": Nothing, "Author": Nothing, "CreationTime": Nothing, "Description": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "LicenseUrl": Nothing, "Name": Nothing, "ReadmeUrl": Nothing, "SpdxLicenseId": Nothing, "Version": Nothing }

-- | Constructs UpdateApplicationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateApplicationResponse' :: ( { "ApplicationId" :: Maybe (String) , "Author" :: Maybe (String) , "CreationTime" :: Maybe (String) , "Description" :: Maybe (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "LicenseUrl" :: Maybe (String) , "Name" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) , "SpdxLicenseId" :: Maybe (String) , "Version" :: Maybe (Version) } -> {"ApplicationId" :: Maybe (String) , "Author" :: Maybe (String) , "CreationTime" :: Maybe (String) , "Description" :: Maybe (String) , "HomePageUrl" :: Maybe (String) , "Labels" :: Maybe (ListOf__string') , "LicenseUrl" :: Maybe (String) , "Name" :: Maybe (String) , "ReadmeUrl" :: Maybe (String) , "SpdxLicenseId" :: Maybe (String) , "Version" :: Maybe (Version) } ) -> UpdateApplicationResponse
newUpdateApplicationResponse'  customize = (UpdateApplicationResponse <<< customize) { "ApplicationId": Nothing, "Author": Nothing, "CreationTime": Nothing, "Description": Nothing, "HomePageUrl": Nothing, "Labels": Nothing, "LicenseUrl": Nothing, "Name": Nothing, "ReadmeUrl": Nothing, "SpdxLicenseId": Nothing, "Version": Nothing }



-- | <p>Application version details.</p>
newtype Version = Version 
  { "ApplicationId" :: (String)
  , "CreationTime" :: (String)
  , "ParameterDefinitions" :: (ListOfParameterDefinition')
  , "SemanticVersion" :: (String)
  , "SourceCodeUrl" :: Maybe (String)
  , "TemplateUrl" :: (String)
  }
derive instance newtypeVersion :: Newtype Version _
derive instance repGenericVersion :: Generic Version _
instance showVersion :: Show Version where show = genericShow
instance decodeVersion :: Decode Version where decode = genericDecode options
instance encodeVersion :: Encode Version where encode = genericEncode options

-- | Constructs Version from required parameters
newVersion :: String -> String -> ListOfParameterDefinition' -> String -> String -> Version
newVersion _ApplicationId _CreationTime _ParameterDefinitions _SemanticVersion _TemplateUrl = Version { "ApplicationId": _ApplicationId, "CreationTime": _CreationTime, "ParameterDefinitions": _ParameterDefinitions, "SemanticVersion": _SemanticVersion, "TemplateUrl": _TemplateUrl, "SourceCodeUrl": Nothing }

-- | Constructs Version's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVersion' :: String -> String -> ListOfParameterDefinition' -> String -> String -> ( { "ApplicationId" :: (String) , "CreationTime" :: (String) , "ParameterDefinitions" :: (ListOfParameterDefinition') , "SemanticVersion" :: (String) , "SourceCodeUrl" :: Maybe (String) , "TemplateUrl" :: (String) } -> {"ApplicationId" :: (String) , "CreationTime" :: (String) , "ParameterDefinitions" :: (ListOfParameterDefinition') , "SemanticVersion" :: (String) , "SourceCodeUrl" :: Maybe (String) , "TemplateUrl" :: (String) } ) -> Version
newVersion' _ApplicationId _CreationTime _ParameterDefinitions _SemanticVersion _TemplateUrl customize = (Version <<< customize) { "ApplicationId": _ApplicationId, "CreationTime": _CreationTime, "ParameterDefinitions": _ParameterDefinitions, "SemanticVersion": _SemanticVersion, "TemplateUrl": _TemplateUrl, "SourceCodeUrl": Nothing }



-- | <p>Application version summary.</p>
newtype VersionSummary = VersionSummary 
  { "ApplicationId" :: (String)
  , "CreationTime" :: (String)
  , "SemanticVersion" :: (String)
  , "SourceCodeUrl" :: Maybe (String)
  }
derive instance newtypeVersionSummary :: Newtype VersionSummary _
derive instance repGenericVersionSummary :: Generic VersionSummary _
instance showVersionSummary :: Show VersionSummary where show = genericShow
instance decodeVersionSummary :: Decode VersionSummary where decode = genericDecode options
instance encodeVersionSummary :: Encode VersionSummary where encode = genericEncode options

-- | Constructs VersionSummary from required parameters
newVersionSummary :: String -> String -> String -> VersionSummary
newVersionSummary _ApplicationId _CreationTime _SemanticVersion = VersionSummary { "ApplicationId": _ApplicationId, "CreationTime": _CreationTime, "SemanticVersion": _SemanticVersion, "SourceCodeUrl": Nothing }

-- | Constructs VersionSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVersionSummary' :: String -> String -> String -> ( { "ApplicationId" :: (String) , "CreationTime" :: (String) , "SemanticVersion" :: (String) , "SourceCodeUrl" :: Maybe (String) } -> {"ApplicationId" :: (String) , "CreationTime" :: (String) , "SemanticVersion" :: (String) , "SourceCodeUrl" :: Maybe (String) } ) -> VersionSummary
newVersionSummary' _ApplicationId _CreationTime _SemanticVersion customize = (VersionSummary <<< customize) { "ApplicationId": _ApplicationId, "CreationTime": _CreationTime, "SemanticVersion": _SemanticVersion, "SourceCodeUrl": Nothing }



newtype ListOfApplicationPolicyStatement' = ListOfApplicationPolicyStatement' (Array ApplicationPolicyStatement)
derive instance newtypeListOfApplicationPolicyStatement' :: Newtype ListOfApplicationPolicyStatement' _
derive instance repGenericListOfApplicationPolicyStatement' :: Generic ListOfApplicationPolicyStatement' _
instance showListOfApplicationPolicyStatement' :: Show ListOfApplicationPolicyStatement' where show = genericShow
instance decodeListOfApplicationPolicyStatement' :: Decode ListOfApplicationPolicyStatement' where decode = genericDecode options
instance encodeListOfApplicationPolicyStatement' :: Encode ListOfApplicationPolicyStatement' where encode = genericEncode options



newtype ListOfApplicationSummary' = ListOfApplicationSummary' (Array ApplicationSummary)
derive instance newtypeListOfApplicationSummary' :: Newtype ListOfApplicationSummary' _
derive instance repGenericListOfApplicationSummary' :: Generic ListOfApplicationSummary' _
instance showListOfApplicationSummary' :: Show ListOfApplicationSummary' where show = genericShow
instance decodeListOfApplicationSummary' :: Decode ListOfApplicationSummary' where decode = genericDecode options
instance encodeListOfApplicationSummary' :: Encode ListOfApplicationSummary' where encode = genericEncode options



newtype ListOfParameterDefinition' = ListOfParameterDefinition' (Array ParameterDefinition)
derive instance newtypeListOfParameterDefinition' :: Newtype ListOfParameterDefinition' _
derive instance repGenericListOfParameterDefinition' :: Generic ListOfParameterDefinition' _
instance showListOfParameterDefinition' :: Show ListOfParameterDefinition' where show = genericShow
instance decodeListOfParameterDefinition' :: Decode ListOfParameterDefinition' where decode = genericDecode options
instance encodeListOfParameterDefinition' :: Encode ListOfParameterDefinition' where encode = genericEncode options



newtype ListOfParameterValue' = ListOfParameterValue' (Array ParameterValue)
derive instance newtypeListOfParameterValue' :: Newtype ListOfParameterValue' _
derive instance repGenericListOfParameterValue' :: Generic ListOfParameterValue' _
instance showListOfParameterValue' :: Show ListOfParameterValue' where show = genericShow
instance decodeListOfParameterValue' :: Decode ListOfParameterValue' where decode = genericDecode options
instance encodeListOfParameterValue' :: Encode ListOfParameterValue' where encode = genericEncode options



newtype ListOfVersionSummary' = ListOfVersionSummary' (Array VersionSummary)
derive instance newtypeListOfVersionSummary' :: Newtype ListOfVersionSummary' _
derive instance repGenericListOfVersionSummary' :: Generic ListOfVersionSummary' _
instance showListOfVersionSummary' :: Show ListOfVersionSummary' where show = genericShow
instance decodeListOfVersionSummary' :: Decode ListOfVersionSummary' where decode = genericDecode options
instance encodeListOfVersionSummary' :: Encode ListOfVersionSummary' where encode = genericEncode options



newtype ListOf__string' = ListOf__string' (Array String)
derive instance newtypeListOf__string' :: Newtype ListOf__string' _
derive instance repGenericListOf__string' :: Generic ListOf__string' _
instance showListOf__string' :: Show ListOf__string' where show = genericShow
instance decodeListOf__string' :: Decode ListOf__string' where decode = genericDecode options
instance encodeListOf__string' :: Encode ListOf__string' where encode = genericEncode options

