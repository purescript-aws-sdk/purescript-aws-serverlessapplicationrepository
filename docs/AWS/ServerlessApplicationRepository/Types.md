## Module AWS.ServerlessApplicationRepository.Types

#### `options`

``` purescript
options :: Options
```

#### `Application`

``` purescript
newtype Application
  = Application { "ApplicationId" :: String, "Author" :: String, "CreationTime" :: NullOrUndefined (String), "Description" :: String, "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseUrl" :: NullOrUndefined (String), "Name" :: String, "ReadmeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "Version" :: NullOrUndefined (Version) }
```

<p>Details about the application.</p>

##### Instances
``` purescript
Newtype Application _
Generic Application _
Show Application
Decode Application
Encode Application
```

#### `newApplication`

``` purescript
newApplication :: String -> String -> String -> String -> Application
```

Constructs Application from required parameters

#### `newApplication'`

``` purescript
newApplication' :: String -> String -> String -> String -> ({ "ApplicationId" :: String, "Author" :: String, "CreationTime" :: NullOrUndefined (String), "Description" :: String, "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseUrl" :: NullOrUndefined (String), "Name" :: String, "ReadmeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "Version" :: NullOrUndefined (Version) } -> { "ApplicationId" :: String, "Author" :: String, "CreationTime" :: NullOrUndefined (String), "Description" :: String, "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseUrl" :: NullOrUndefined (String), "Name" :: String, "ReadmeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "Version" :: NullOrUndefined (Version) }) -> Application
```

Constructs Application's fields from required parameters

#### `ApplicationPage`

``` purescript
newtype ApplicationPage
  = ApplicationPage { "Applications" :: ListOfApplicationSummary', "NextToken" :: NullOrUndefined (String) }
```

<p>List of application details.</p>

##### Instances
``` purescript
Newtype ApplicationPage _
Generic ApplicationPage _
Show ApplicationPage
Decode ApplicationPage
Encode ApplicationPage
```

#### `newApplicationPage`

``` purescript
newApplicationPage :: ListOfApplicationSummary' -> ApplicationPage
```

Constructs ApplicationPage from required parameters

#### `newApplicationPage'`

``` purescript
newApplicationPage' :: ListOfApplicationSummary' -> ({ "Applications" :: ListOfApplicationSummary', "NextToken" :: NullOrUndefined (String) } -> { "Applications" :: ListOfApplicationSummary', "NextToken" :: NullOrUndefined (String) }) -> ApplicationPage
```

Constructs ApplicationPage's fields from required parameters

#### `ApplicationPolicy`

``` purescript
newtype ApplicationPolicy
  = ApplicationPolicy { "Statements" :: ListOfApplicationPolicyStatement' }
```

<p>Policy statements applied to the application.</p>

##### Instances
``` purescript
Newtype ApplicationPolicy _
Generic ApplicationPolicy _
Show ApplicationPolicy
Decode ApplicationPolicy
Encode ApplicationPolicy
```

#### `newApplicationPolicy`

``` purescript
newApplicationPolicy :: ListOfApplicationPolicyStatement' -> ApplicationPolicy
```

Constructs ApplicationPolicy from required parameters

#### `newApplicationPolicy'`

``` purescript
newApplicationPolicy' :: ListOfApplicationPolicyStatement' -> ({ "Statements" :: ListOfApplicationPolicyStatement' } -> { "Statements" :: ListOfApplicationPolicyStatement' }) -> ApplicationPolicy
```

Constructs ApplicationPolicy's fields from required parameters

#### `ApplicationPolicyStatement`

``` purescript
newtype ApplicationPolicyStatement
  = ApplicationPolicyStatement { "Actions" :: ListOf__string', "Principals" :: ListOf__string', "StatementId" :: NullOrUndefined (String) }
```

<p>Policy statement applied to the application.</p>

##### Instances
``` purescript
Newtype ApplicationPolicyStatement _
Generic ApplicationPolicyStatement _
Show ApplicationPolicyStatement
Decode ApplicationPolicyStatement
Encode ApplicationPolicyStatement
```

#### `newApplicationPolicyStatement`

``` purescript
newApplicationPolicyStatement :: ListOf__string' -> ListOf__string' -> ApplicationPolicyStatement
```

Constructs ApplicationPolicyStatement from required parameters

#### `newApplicationPolicyStatement'`

``` purescript
newApplicationPolicyStatement' :: ListOf__string' -> ListOf__string' -> ({ "Actions" :: ListOf__string', "Principals" :: ListOf__string', "StatementId" :: NullOrUndefined (String) } -> { "Actions" :: ListOf__string', "Principals" :: ListOf__string', "StatementId" :: NullOrUndefined (String) }) -> ApplicationPolicyStatement
```

Constructs ApplicationPolicyStatement's fields from required parameters

#### `ApplicationSummary`

``` purescript
newtype ApplicationSummary
  = ApplicationSummary { "ApplicationId" :: String, "Author" :: String, "CreationTime" :: NullOrUndefined (String), "Description" :: String, "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "Name" :: String, "SpdxLicenseId" :: NullOrUndefined (String) }
```

<p>Summary of details about the application.</p>

##### Instances
``` purescript
Newtype ApplicationSummary _
Generic ApplicationSummary _
Show ApplicationSummary
Decode ApplicationSummary
Encode ApplicationSummary
```

#### `newApplicationSummary`

``` purescript
newApplicationSummary :: String -> String -> String -> String -> ApplicationSummary
```

Constructs ApplicationSummary from required parameters

#### `newApplicationSummary'`

``` purescript
newApplicationSummary' :: String -> String -> String -> String -> ({ "ApplicationId" :: String, "Author" :: String, "CreationTime" :: NullOrUndefined (String), "Description" :: String, "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "Name" :: String, "SpdxLicenseId" :: NullOrUndefined (String) } -> { "ApplicationId" :: String, "Author" :: String, "CreationTime" :: NullOrUndefined (String), "Description" :: String, "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "Name" :: String, "SpdxLicenseId" :: NullOrUndefined (String) }) -> ApplicationSummary
```

Constructs ApplicationSummary's fields from required parameters

#### `ApplicationVersionPage`

``` purescript
newtype ApplicationVersionPage
  = ApplicationVersionPage { "NextToken" :: NullOrUndefined (String), "Versions" :: ListOfVersionSummary' }
```

<p>List of version summaries for the application.</p>

##### Instances
``` purescript
Newtype ApplicationVersionPage _
Generic ApplicationVersionPage _
Show ApplicationVersionPage
Decode ApplicationVersionPage
Encode ApplicationVersionPage
```

#### `newApplicationVersionPage`

``` purescript
newApplicationVersionPage :: ListOfVersionSummary' -> ApplicationVersionPage
```

Constructs ApplicationVersionPage from required parameters

#### `newApplicationVersionPage'`

``` purescript
newApplicationVersionPage' :: ListOfVersionSummary' -> ({ "NextToken" :: NullOrUndefined (String), "Versions" :: ListOfVersionSummary' } -> { "NextToken" :: NullOrUndefined (String), "Versions" :: ListOfVersionSummary' }) -> ApplicationVersionPage
```

Constructs ApplicationVersionPage's fields from required parameters

#### `BadRequestException`

``` purescript
newtype BadRequestException
  = BadRequestException { "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }
```

<p>One of the parameters in the request is invalid.</p>

##### Instances
``` purescript
Newtype BadRequestException _
Generic BadRequestException _
Show BadRequestException
Decode BadRequestException
Encode BadRequestException
```

#### `newBadRequestException`

``` purescript
newBadRequestException :: BadRequestException
```

Constructs BadRequestException from required parameters

#### `newBadRequestException'`

``` purescript
newBadRequestException' :: ({ "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) } -> { "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }) -> BadRequestException
```

Constructs BadRequestException's fields from required parameters

#### `ChangeSetDetails`

``` purescript
newtype ChangeSetDetails
  = ChangeSetDetails { "ApplicationId" :: String, "ChangeSetId" :: String, "SemanticVersion" :: String, "StackId" :: String }
```

<p>Details of the change set.</p>

##### Instances
``` purescript
Newtype ChangeSetDetails _
Generic ChangeSetDetails _
Show ChangeSetDetails
Decode ChangeSetDetails
Encode ChangeSetDetails
```

#### `newChangeSetDetails`

``` purescript
newChangeSetDetails :: String -> String -> String -> String -> ChangeSetDetails
```

Constructs ChangeSetDetails from required parameters

#### `newChangeSetDetails'`

``` purescript
newChangeSetDetails' :: String -> String -> String -> String -> ({ "ApplicationId" :: String, "ChangeSetId" :: String, "SemanticVersion" :: String, "StackId" :: String } -> { "ApplicationId" :: String, "ChangeSetId" :: String, "SemanticVersion" :: String, "StackId" :: String }) -> ChangeSetDetails
```

Constructs ChangeSetDetails's fields from required parameters

#### `ConflictException`

``` purescript
newtype ConflictException
  = ConflictException { "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }
```

<p>The resource already exists.</p>

##### Instances
``` purescript
Newtype ConflictException _
Generic ConflictException _
Show ConflictException
Decode ConflictException
Encode ConflictException
```

#### `newConflictException`

``` purescript
newConflictException :: ConflictException
```

Constructs ConflictException from required parameters

#### `newConflictException'`

``` purescript
newConflictException' :: ({ "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) } -> { "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }) -> ConflictException
```

Constructs ConflictException's fields from required parameters

#### `CreateApplicationInput`

``` purescript
newtype CreateApplicationInput
  = CreateApplicationInput { "Author" :: String, "Description" :: String, "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseBody" :: NullOrUndefined (String), "LicenseUrl" :: NullOrUndefined (String), "Name" :: String, "ReadmeBody" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SemanticVersion" :: NullOrUndefined (String), "SourceCodeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "TemplateBody" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) }
```

<p>Create application request.</p>

##### Instances
``` purescript
Newtype CreateApplicationInput _
Generic CreateApplicationInput _
Show CreateApplicationInput
Decode CreateApplicationInput
Encode CreateApplicationInput
```

#### `newCreateApplicationInput`

``` purescript
newCreateApplicationInput :: String -> String -> String -> CreateApplicationInput
```

Constructs CreateApplicationInput from required parameters

#### `newCreateApplicationInput'`

``` purescript
newCreateApplicationInput' :: String -> String -> String -> ({ "Author" :: String, "Description" :: String, "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseBody" :: NullOrUndefined (String), "LicenseUrl" :: NullOrUndefined (String), "Name" :: String, "ReadmeBody" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SemanticVersion" :: NullOrUndefined (String), "SourceCodeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "TemplateBody" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) } -> { "Author" :: String, "Description" :: String, "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseBody" :: NullOrUndefined (String), "LicenseUrl" :: NullOrUndefined (String), "Name" :: String, "ReadmeBody" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SemanticVersion" :: NullOrUndefined (String), "SourceCodeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "TemplateBody" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) }) -> CreateApplicationInput
```

Constructs CreateApplicationInput's fields from required parameters

#### `CreateApplicationRequest`

``` purescript
newtype CreateApplicationRequest
  = CreateApplicationRequest { "Author" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseBody" :: NullOrUndefined (String), "LicenseUrl" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "ReadmeBody" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SemanticVersion" :: NullOrUndefined (String), "SourceCodeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "TemplateBody" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CreateApplicationRequest _
Generic CreateApplicationRequest _
Show CreateApplicationRequest
Decode CreateApplicationRequest
Encode CreateApplicationRequest
```

#### `newCreateApplicationRequest`

``` purescript
newCreateApplicationRequest :: CreateApplicationRequest
```

Constructs CreateApplicationRequest from required parameters

#### `newCreateApplicationRequest'`

``` purescript
newCreateApplicationRequest' :: ({ "Author" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseBody" :: NullOrUndefined (String), "LicenseUrl" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "ReadmeBody" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SemanticVersion" :: NullOrUndefined (String), "SourceCodeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "TemplateBody" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) } -> { "Author" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseBody" :: NullOrUndefined (String), "LicenseUrl" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "ReadmeBody" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SemanticVersion" :: NullOrUndefined (String), "SourceCodeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "TemplateBody" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) }) -> CreateApplicationRequest
```

Constructs CreateApplicationRequest's fields from required parameters

#### `CreateApplicationResponse`

``` purescript
newtype CreateApplicationResponse
  = CreateApplicationResponse { "ApplicationId" :: NullOrUndefined (String), "Author" :: NullOrUndefined (String), "CreationTime" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseUrl" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "Version" :: NullOrUndefined (Version) }
```

##### Instances
``` purescript
Newtype CreateApplicationResponse _
Generic CreateApplicationResponse _
Show CreateApplicationResponse
Decode CreateApplicationResponse
Encode CreateApplicationResponse
```

#### `newCreateApplicationResponse`

``` purescript
newCreateApplicationResponse :: CreateApplicationResponse
```

Constructs CreateApplicationResponse from required parameters

#### `newCreateApplicationResponse'`

``` purescript
newCreateApplicationResponse' :: ({ "ApplicationId" :: NullOrUndefined (String), "Author" :: NullOrUndefined (String), "CreationTime" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseUrl" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "Version" :: NullOrUndefined (Version) } -> { "ApplicationId" :: NullOrUndefined (String), "Author" :: NullOrUndefined (String), "CreationTime" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseUrl" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "Version" :: NullOrUndefined (Version) }) -> CreateApplicationResponse
```

Constructs CreateApplicationResponse's fields from required parameters

#### `CreateApplicationVersionInput`

``` purescript
newtype CreateApplicationVersionInput
  = CreateApplicationVersionInput { "SourceCodeUrl" :: NullOrUndefined (String), "TemplateBody" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) }
```

<p>Create version request.</p>

##### Instances
``` purescript
Newtype CreateApplicationVersionInput _
Generic CreateApplicationVersionInput _
Show CreateApplicationVersionInput
Decode CreateApplicationVersionInput
Encode CreateApplicationVersionInput
```

#### `newCreateApplicationVersionInput`

``` purescript
newCreateApplicationVersionInput :: CreateApplicationVersionInput
```

Constructs CreateApplicationVersionInput from required parameters

#### `newCreateApplicationVersionInput'`

``` purescript
newCreateApplicationVersionInput' :: ({ "SourceCodeUrl" :: NullOrUndefined (String), "TemplateBody" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) } -> { "SourceCodeUrl" :: NullOrUndefined (String), "TemplateBody" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) }) -> CreateApplicationVersionInput
```

Constructs CreateApplicationVersionInput's fields from required parameters

#### `CreateApplicationVersionRequest`

``` purescript
newtype CreateApplicationVersionRequest
  = CreateApplicationVersionRequest { "ApplicationId" :: String, "SemanticVersion" :: String, "SourceCodeUrl" :: NullOrUndefined (String), "TemplateBody" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CreateApplicationVersionRequest _
Generic CreateApplicationVersionRequest _
Show CreateApplicationVersionRequest
Decode CreateApplicationVersionRequest
Encode CreateApplicationVersionRequest
```

#### `newCreateApplicationVersionRequest`

``` purescript
newCreateApplicationVersionRequest :: String -> String -> CreateApplicationVersionRequest
```

Constructs CreateApplicationVersionRequest from required parameters

#### `newCreateApplicationVersionRequest'`

``` purescript
newCreateApplicationVersionRequest' :: String -> String -> ({ "ApplicationId" :: String, "SemanticVersion" :: String, "SourceCodeUrl" :: NullOrUndefined (String), "TemplateBody" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) } -> { "ApplicationId" :: String, "SemanticVersion" :: String, "SourceCodeUrl" :: NullOrUndefined (String), "TemplateBody" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) }) -> CreateApplicationVersionRequest
```

Constructs CreateApplicationVersionRequest's fields from required parameters

#### `CreateApplicationVersionResponse`

``` purescript
newtype CreateApplicationVersionResponse
  = CreateApplicationVersionResponse { "ApplicationId" :: NullOrUndefined (String), "CreationTime" :: NullOrUndefined (String), "ParameterDefinitions" :: NullOrUndefined (ListOfParameterDefinition'), "SemanticVersion" :: NullOrUndefined (String), "SourceCodeUrl" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CreateApplicationVersionResponse _
Generic CreateApplicationVersionResponse _
Show CreateApplicationVersionResponse
Decode CreateApplicationVersionResponse
Encode CreateApplicationVersionResponse
```

#### `newCreateApplicationVersionResponse`

``` purescript
newCreateApplicationVersionResponse :: CreateApplicationVersionResponse
```

Constructs CreateApplicationVersionResponse from required parameters

#### `newCreateApplicationVersionResponse'`

``` purescript
newCreateApplicationVersionResponse' :: ({ "ApplicationId" :: NullOrUndefined (String), "CreationTime" :: NullOrUndefined (String), "ParameterDefinitions" :: NullOrUndefined (ListOfParameterDefinition'), "SemanticVersion" :: NullOrUndefined (String), "SourceCodeUrl" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) } -> { "ApplicationId" :: NullOrUndefined (String), "CreationTime" :: NullOrUndefined (String), "ParameterDefinitions" :: NullOrUndefined (ListOfParameterDefinition'), "SemanticVersion" :: NullOrUndefined (String), "SourceCodeUrl" :: NullOrUndefined (String), "TemplateUrl" :: NullOrUndefined (String) }) -> CreateApplicationVersionResponse
```

Constructs CreateApplicationVersionResponse's fields from required parameters

#### `CreateCloudFormationChangeSetInput`

``` purescript
newtype CreateCloudFormationChangeSetInput
  = CreateCloudFormationChangeSetInput { "ParameterOverrides" :: NullOrUndefined (ListOfParameterValue'), "SemanticVersion" :: NullOrUndefined (String), "StackName" :: String }
```

<p>Create application ChangeSet request.</p>

##### Instances
``` purescript
Newtype CreateCloudFormationChangeSetInput _
Generic CreateCloudFormationChangeSetInput _
Show CreateCloudFormationChangeSetInput
Decode CreateCloudFormationChangeSetInput
Encode CreateCloudFormationChangeSetInput
```

#### `newCreateCloudFormationChangeSetInput`

``` purescript
newCreateCloudFormationChangeSetInput :: String -> CreateCloudFormationChangeSetInput
```

Constructs CreateCloudFormationChangeSetInput from required parameters

#### `newCreateCloudFormationChangeSetInput'`

``` purescript
newCreateCloudFormationChangeSetInput' :: String -> ({ "ParameterOverrides" :: NullOrUndefined (ListOfParameterValue'), "SemanticVersion" :: NullOrUndefined (String), "StackName" :: String } -> { "ParameterOverrides" :: NullOrUndefined (ListOfParameterValue'), "SemanticVersion" :: NullOrUndefined (String), "StackName" :: String }) -> CreateCloudFormationChangeSetInput
```

Constructs CreateCloudFormationChangeSetInput's fields from required parameters

#### `CreateCloudFormationChangeSetRequest`

``` purescript
newtype CreateCloudFormationChangeSetRequest
  = CreateCloudFormationChangeSetRequest { "ApplicationId" :: String, "ParameterOverrides" :: NullOrUndefined (ListOfParameterValue'), "SemanticVersion" :: NullOrUndefined (String), "StackName" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CreateCloudFormationChangeSetRequest _
Generic CreateCloudFormationChangeSetRequest _
Show CreateCloudFormationChangeSetRequest
Decode CreateCloudFormationChangeSetRequest
Encode CreateCloudFormationChangeSetRequest
```

#### `newCreateCloudFormationChangeSetRequest`

``` purescript
newCreateCloudFormationChangeSetRequest :: String -> CreateCloudFormationChangeSetRequest
```

Constructs CreateCloudFormationChangeSetRequest from required parameters

#### `newCreateCloudFormationChangeSetRequest'`

``` purescript
newCreateCloudFormationChangeSetRequest' :: String -> ({ "ApplicationId" :: String, "ParameterOverrides" :: NullOrUndefined (ListOfParameterValue'), "SemanticVersion" :: NullOrUndefined (String), "StackName" :: NullOrUndefined (String) } -> { "ApplicationId" :: String, "ParameterOverrides" :: NullOrUndefined (ListOfParameterValue'), "SemanticVersion" :: NullOrUndefined (String), "StackName" :: NullOrUndefined (String) }) -> CreateCloudFormationChangeSetRequest
```

Constructs CreateCloudFormationChangeSetRequest's fields from required parameters

#### `CreateCloudFormationChangeSetResponse`

``` purescript
newtype CreateCloudFormationChangeSetResponse
  = CreateCloudFormationChangeSetResponse { "ApplicationId" :: NullOrUndefined (String), "ChangeSetId" :: NullOrUndefined (String), "SemanticVersion" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CreateCloudFormationChangeSetResponse _
Generic CreateCloudFormationChangeSetResponse _
Show CreateCloudFormationChangeSetResponse
Decode CreateCloudFormationChangeSetResponse
Encode CreateCloudFormationChangeSetResponse
```

#### `newCreateCloudFormationChangeSetResponse`

``` purescript
newCreateCloudFormationChangeSetResponse :: CreateCloudFormationChangeSetResponse
```

Constructs CreateCloudFormationChangeSetResponse from required parameters

#### `newCreateCloudFormationChangeSetResponse'`

``` purescript
newCreateCloudFormationChangeSetResponse' :: ({ "ApplicationId" :: NullOrUndefined (String), "ChangeSetId" :: NullOrUndefined (String), "SemanticVersion" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String) } -> { "ApplicationId" :: NullOrUndefined (String), "ChangeSetId" :: NullOrUndefined (String), "SemanticVersion" :: NullOrUndefined (String), "StackId" :: NullOrUndefined (String) }) -> CreateCloudFormationChangeSetResponse
```

Constructs CreateCloudFormationChangeSetResponse's fields from required parameters

#### `DeleteApplicationRequest`

``` purescript
newtype DeleteApplicationRequest
  = DeleteApplicationRequest { "ApplicationId" :: String }
```

##### Instances
``` purescript
Newtype DeleteApplicationRequest _
Generic DeleteApplicationRequest _
Show DeleteApplicationRequest
Decode DeleteApplicationRequest
Encode DeleteApplicationRequest
```

#### `newDeleteApplicationRequest`

``` purescript
newDeleteApplicationRequest :: String -> DeleteApplicationRequest
```

Constructs DeleteApplicationRequest from required parameters

#### `newDeleteApplicationRequest'`

``` purescript
newDeleteApplicationRequest' :: String -> ({ "ApplicationId" :: String } -> { "ApplicationId" :: String }) -> DeleteApplicationRequest
```

Constructs DeleteApplicationRequest's fields from required parameters

#### `ForbiddenException`

``` purescript
newtype ForbiddenException
  = ForbiddenException { "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }
```

<p>The client is not authenticated.</p>

##### Instances
``` purescript
Newtype ForbiddenException _
Generic ForbiddenException _
Show ForbiddenException
Decode ForbiddenException
Encode ForbiddenException
```

#### `newForbiddenException`

``` purescript
newForbiddenException :: ForbiddenException
```

Constructs ForbiddenException from required parameters

#### `newForbiddenException'`

``` purescript
newForbiddenException' :: ({ "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) } -> { "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }) -> ForbiddenException
```

Constructs ForbiddenException's fields from required parameters

#### `GetApplicationPolicyRequest`

``` purescript
newtype GetApplicationPolicyRequest
  = GetApplicationPolicyRequest { "ApplicationId" :: String }
```

##### Instances
``` purescript
Newtype GetApplicationPolicyRequest _
Generic GetApplicationPolicyRequest _
Show GetApplicationPolicyRequest
Decode GetApplicationPolicyRequest
Encode GetApplicationPolicyRequest
```

#### `newGetApplicationPolicyRequest`

``` purescript
newGetApplicationPolicyRequest :: String -> GetApplicationPolicyRequest
```

Constructs GetApplicationPolicyRequest from required parameters

#### `newGetApplicationPolicyRequest'`

``` purescript
newGetApplicationPolicyRequest' :: String -> ({ "ApplicationId" :: String } -> { "ApplicationId" :: String }) -> GetApplicationPolicyRequest
```

Constructs GetApplicationPolicyRequest's fields from required parameters

#### `GetApplicationPolicyResponse`

``` purescript
newtype GetApplicationPolicyResponse
  = GetApplicationPolicyResponse { "Statements" :: NullOrUndefined (ListOfApplicationPolicyStatement') }
```

##### Instances
``` purescript
Newtype GetApplicationPolicyResponse _
Generic GetApplicationPolicyResponse _
Show GetApplicationPolicyResponse
Decode GetApplicationPolicyResponse
Encode GetApplicationPolicyResponse
```

#### `newGetApplicationPolicyResponse`

``` purescript
newGetApplicationPolicyResponse :: GetApplicationPolicyResponse
```

Constructs GetApplicationPolicyResponse from required parameters

#### `newGetApplicationPolicyResponse'`

``` purescript
newGetApplicationPolicyResponse' :: ({ "Statements" :: NullOrUndefined (ListOfApplicationPolicyStatement') } -> { "Statements" :: NullOrUndefined (ListOfApplicationPolicyStatement') }) -> GetApplicationPolicyResponse
```

Constructs GetApplicationPolicyResponse's fields from required parameters

#### `GetApplicationRequest`

``` purescript
newtype GetApplicationRequest
  = GetApplicationRequest { "ApplicationId" :: String, "SemanticVersion" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype GetApplicationRequest _
Generic GetApplicationRequest _
Show GetApplicationRequest
Decode GetApplicationRequest
Encode GetApplicationRequest
```

#### `newGetApplicationRequest`

``` purescript
newGetApplicationRequest :: String -> GetApplicationRequest
```

Constructs GetApplicationRequest from required parameters

#### `newGetApplicationRequest'`

``` purescript
newGetApplicationRequest' :: String -> ({ "ApplicationId" :: String, "SemanticVersion" :: NullOrUndefined (String) } -> { "ApplicationId" :: String, "SemanticVersion" :: NullOrUndefined (String) }) -> GetApplicationRequest
```

Constructs GetApplicationRequest's fields from required parameters

#### `GetApplicationResponse`

``` purescript
newtype GetApplicationResponse
  = GetApplicationResponse { "ApplicationId" :: NullOrUndefined (String), "Author" :: NullOrUndefined (String), "CreationTime" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseUrl" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "Version" :: NullOrUndefined (Version) }
```

##### Instances
``` purescript
Newtype GetApplicationResponse _
Generic GetApplicationResponse _
Show GetApplicationResponse
Decode GetApplicationResponse
Encode GetApplicationResponse
```

#### `newGetApplicationResponse`

``` purescript
newGetApplicationResponse :: GetApplicationResponse
```

Constructs GetApplicationResponse from required parameters

#### `newGetApplicationResponse'`

``` purescript
newGetApplicationResponse' :: ({ "ApplicationId" :: NullOrUndefined (String), "Author" :: NullOrUndefined (String), "CreationTime" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseUrl" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "Version" :: NullOrUndefined (Version) } -> { "ApplicationId" :: NullOrUndefined (String), "Author" :: NullOrUndefined (String), "CreationTime" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseUrl" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "Version" :: NullOrUndefined (Version) }) -> GetApplicationResponse
```

Constructs GetApplicationResponse's fields from required parameters

#### `InternalServerErrorException`

``` purescript
newtype InternalServerErrorException
  = InternalServerErrorException { "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }
```

<p>The AWS Serverless Application Repository service encountered an internal error.</p>

##### Instances
``` purescript
Newtype InternalServerErrorException _
Generic InternalServerErrorException _
Show InternalServerErrorException
Decode InternalServerErrorException
Encode InternalServerErrorException
```

#### `newInternalServerErrorException`

``` purescript
newInternalServerErrorException :: InternalServerErrorException
```

Constructs InternalServerErrorException from required parameters

#### `newInternalServerErrorException'`

``` purescript
newInternalServerErrorException' :: ({ "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) } -> { "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }) -> InternalServerErrorException
```

Constructs InternalServerErrorException's fields from required parameters

#### `ListApplicationVersionsRequest`

``` purescript
newtype ListApplicationVersionsRequest
  = ListApplicationVersionsRequest { "ApplicationId" :: String, "MaxItems" :: NullOrUndefined (MaxItems), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListApplicationVersionsRequest _
Generic ListApplicationVersionsRequest _
Show ListApplicationVersionsRequest
Decode ListApplicationVersionsRequest
Encode ListApplicationVersionsRequest
```

#### `newListApplicationVersionsRequest`

``` purescript
newListApplicationVersionsRequest :: String -> ListApplicationVersionsRequest
```

Constructs ListApplicationVersionsRequest from required parameters

#### `newListApplicationVersionsRequest'`

``` purescript
newListApplicationVersionsRequest' :: String -> ({ "ApplicationId" :: String, "MaxItems" :: NullOrUndefined (MaxItems), "NextToken" :: NullOrUndefined (String) } -> { "ApplicationId" :: String, "MaxItems" :: NullOrUndefined (MaxItems), "NextToken" :: NullOrUndefined (String) }) -> ListApplicationVersionsRequest
```

Constructs ListApplicationVersionsRequest's fields from required parameters

#### `ListApplicationVersionsResponse`

``` purescript
newtype ListApplicationVersionsResponse
  = ListApplicationVersionsResponse { "NextToken" :: NullOrUndefined (String), "Versions" :: NullOrUndefined (ListOfVersionSummary') }
```

##### Instances
``` purescript
Newtype ListApplicationVersionsResponse _
Generic ListApplicationVersionsResponse _
Show ListApplicationVersionsResponse
Decode ListApplicationVersionsResponse
Encode ListApplicationVersionsResponse
```

#### `newListApplicationVersionsResponse`

``` purescript
newListApplicationVersionsResponse :: ListApplicationVersionsResponse
```

Constructs ListApplicationVersionsResponse from required parameters

#### `newListApplicationVersionsResponse'`

``` purescript
newListApplicationVersionsResponse' :: ({ "NextToken" :: NullOrUndefined (String), "Versions" :: NullOrUndefined (ListOfVersionSummary') } -> { "NextToken" :: NullOrUndefined (String), "Versions" :: NullOrUndefined (ListOfVersionSummary') }) -> ListApplicationVersionsResponse
```

Constructs ListApplicationVersionsResponse's fields from required parameters

#### `ListApplicationsRequest`

``` purescript
newtype ListApplicationsRequest
  = ListApplicationsRequest { "MaxItems" :: NullOrUndefined (MaxItems), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListApplicationsRequest _
Generic ListApplicationsRequest _
Show ListApplicationsRequest
Decode ListApplicationsRequest
Encode ListApplicationsRequest
```

#### `newListApplicationsRequest`

``` purescript
newListApplicationsRequest :: ListApplicationsRequest
```

Constructs ListApplicationsRequest from required parameters

#### `newListApplicationsRequest'`

``` purescript
newListApplicationsRequest' :: ({ "MaxItems" :: NullOrUndefined (MaxItems), "NextToken" :: NullOrUndefined (String) } -> { "MaxItems" :: NullOrUndefined (MaxItems), "NextToken" :: NullOrUndefined (String) }) -> ListApplicationsRequest
```

Constructs ListApplicationsRequest's fields from required parameters

#### `ListApplicationsResponse`

``` purescript
newtype ListApplicationsResponse
  = ListApplicationsResponse { "Applications" :: NullOrUndefined (ListOfApplicationSummary'), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListApplicationsResponse _
Generic ListApplicationsResponse _
Show ListApplicationsResponse
Decode ListApplicationsResponse
Encode ListApplicationsResponse
```

#### `newListApplicationsResponse`

``` purescript
newListApplicationsResponse :: ListApplicationsResponse
```

Constructs ListApplicationsResponse from required parameters

#### `newListApplicationsResponse'`

``` purescript
newListApplicationsResponse' :: ({ "Applications" :: NullOrUndefined (ListOfApplicationSummary'), "NextToken" :: NullOrUndefined (String) } -> { "Applications" :: NullOrUndefined (ListOfApplicationSummary'), "NextToken" :: NullOrUndefined (String) }) -> ListApplicationsResponse
```

Constructs ListApplicationsResponse's fields from required parameters

#### `MaxItems`

``` purescript
newtype MaxItems
  = MaxItems Int
```

##### Instances
``` purescript
Newtype MaxItems _
Generic MaxItems _
Show MaxItems
Decode MaxItems
Encode MaxItems
```

#### `NotFoundException`

``` purescript
newtype NotFoundException
  = NotFoundException { "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }
```

<p>The resource (for example, an access policy statement) specified in the request does not exist.</p>

##### Instances
``` purescript
Newtype NotFoundException _
Generic NotFoundException _
Show NotFoundException
Decode NotFoundException
Encode NotFoundException
```

#### `newNotFoundException`

``` purescript
newNotFoundException :: NotFoundException
```

Constructs NotFoundException from required parameters

#### `newNotFoundException'`

``` purescript
newNotFoundException' :: ({ "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) } -> { "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }) -> NotFoundException
```

Constructs NotFoundException's fields from required parameters

#### `ParameterDefinition`

``` purescript
newtype ParameterDefinition
  = ParameterDefinition { "AllowedPattern" :: NullOrUndefined (String), "AllowedValues" :: NullOrUndefined (ListOf__string'), "ConstraintDescription" :: NullOrUndefined (String), "DefaultValue" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "MaxLength" :: NullOrUndefined (Int), "MaxValue" :: NullOrUndefined (Int), "MinLength" :: NullOrUndefined (Int), "MinValue" :: NullOrUndefined (Int), "Name" :: String, "NoEcho" :: NullOrUndefined (Boolean), "ReferencedByResources" :: ListOf__string', "Type" :: NullOrUndefined (String) }
```

<p>Parameters supported by the application.</p>

##### Instances
``` purescript
Newtype ParameterDefinition _
Generic ParameterDefinition _
Show ParameterDefinition
Decode ParameterDefinition
Encode ParameterDefinition
```

#### `newParameterDefinition`

``` purescript
newParameterDefinition :: String -> ListOf__string' -> ParameterDefinition
```

Constructs ParameterDefinition from required parameters

#### `newParameterDefinition'`

``` purescript
newParameterDefinition' :: String -> ListOf__string' -> ({ "AllowedPattern" :: NullOrUndefined (String), "AllowedValues" :: NullOrUndefined (ListOf__string'), "ConstraintDescription" :: NullOrUndefined (String), "DefaultValue" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "MaxLength" :: NullOrUndefined (Int), "MaxValue" :: NullOrUndefined (Int), "MinLength" :: NullOrUndefined (Int), "MinValue" :: NullOrUndefined (Int), "Name" :: String, "NoEcho" :: NullOrUndefined (Boolean), "ReferencedByResources" :: ListOf__string', "Type" :: NullOrUndefined (String) } -> { "AllowedPattern" :: NullOrUndefined (String), "AllowedValues" :: NullOrUndefined (ListOf__string'), "ConstraintDescription" :: NullOrUndefined (String), "DefaultValue" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "MaxLength" :: NullOrUndefined (Int), "MaxValue" :: NullOrUndefined (Int), "MinLength" :: NullOrUndefined (Int), "MinValue" :: NullOrUndefined (Int), "Name" :: String, "NoEcho" :: NullOrUndefined (Boolean), "ReferencedByResources" :: ListOf__string', "Type" :: NullOrUndefined (String) }) -> ParameterDefinition
```

Constructs ParameterDefinition's fields from required parameters

#### `ParameterValue`

``` purescript
newtype ParameterValue
  = ParameterValue { "Name" :: String, "Value" :: String }
```

<p>Parameter value of the application.</p>

##### Instances
``` purescript
Newtype ParameterValue _
Generic ParameterValue _
Show ParameterValue
Decode ParameterValue
Encode ParameterValue
```

#### `newParameterValue`

``` purescript
newParameterValue :: String -> String -> ParameterValue
```

Constructs ParameterValue from required parameters

#### `newParameterValue'`

``` purescript
newParameterValue' :: String -> String -> ({ "Name" :: String, "Value" :: String } -> { "Name" :: String, "Value" :: String }) -> ParameterValue
```

Constructs ParameterValue's fields from required parameters

#### `PutApplicationPolicyRequest`

``` purescript
newtype PutApplicationPolicyRequest
  = PutApplicationPolicyRequest { "ApplicationId" :: String, "Statements" :: NullOrUndefined (ListOfApplicationPolicyStatement') }
```

##### Instances
``` purescript
Newtype PutApplicationPolicyRequest _
Generic PutApplicationPolicyRequest _
Show PutApplicationPolicyRequest
Decode PutApplicationPolicyRequest
Encode PutApplicationPolicyRequest
```

#### `newPutApplicationPolicyRequest`

``` purescript
newPutApplicationPolicyRequest :: String -> PutApplicationPolicyRequest
```

Constructs PutApplicationPolicyRequest from required parameters

#### `newPutApplicationPolicyRequest'`

``` purescript
newPutApplicationPolicyRequest' :: String -> ({ "ApplicationId" :: String, "Statements" :: NullOrUndefined (ListOfApplicationPolicyStatement') } -> { "ApplicationId" :: String, "Statements" :: NullOrUndefined (ListOfApplicationPolicyStatement') }) -> PutApplicationPolicyRequest
```

Constructs PutApplicationPolicyRequest's fields from required parameters

#### `PutApplicationPolicyResponse`

``` purescript
newtype PutApplicationPolicyResponse
  = PutApplicationPolicyResponse { "Statements" :: NullOrUndefined (ListOfApplicationPolicyStatement') }
```

##### Instances
``` purescript
Newtype PutApplicationPolicyResponse _
Generic PutApplicationPolicyResponse _
Show PutApplicationPolicyResponse
Decode PutApplicationPolicyResponse
Encode PutApplicationPolicyResponse
```

#### `newPutApplicationPolicyResponse`

``` purescript
newPutApplicationPolicyResponse :: PutApplicationPolicyResponse
```

Constructs PutApplicationPolicyResponse from required parameters

#### `newPutApplicationPolicyResponse'`

``` purescript
newPutApplicationPolicyResponse' :: ({ "Statements" :: NullOrUndefined (ListOfApplicationPolicyStatement') } -> { "Statements" :: NullOrUndefined (ListOfApplicationPolicyStatement') }) -> PutApplicationPolicyResponse
```

Constructs PutApplicationPolicyResponse's fields from required parameters

#### `TooManyRequestsException`

``` purescript
newtype TooManyRequestsException
  = TooManyRequestsException { "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }
```

<p>The client is sending more than the allowed number of requests per unit time.</p>

##### Instances
``` purescript
Newtype TooManyRequestsException _
Generic TooManyRequestsException _
Show TooManyRequestsException
Decode TooManyRequestsException
Encode TooManyRequestsException
```

#### `newTooManyRequestsException`

``` purescript
newTooManyRequestsException :: TooManyRequestsException
```

Constructs TooManyRequestsException from required parameters

#### `newTooManyRequestsException'`

``` purescript
newTooManyRequestsException' :: ({ "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) } -> { "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }) -> TooManyRequestsException
```

Constructs TooManyRequestsException's fields from required parameters

#### `UpdateApplicationInput`

``` purescript
newtype UpdateApplicationInput
  = UpdateApplicationInput { "Author" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "ReadmeBody" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String) }
```

<p>Update application request.</p>

##### Instances
``` purescript
Newtype UpdateApplicationInput _
Generic UpdateApplicationInput _
Show UpdateApplicationInput
Decode UpdateApplicationInput
Encode UpdateApplicationInput
```

#### `newUpdateApplicationInput`

``` purescript
newUpdateApplicationInput :: UpdateApplicationInput
```

Constructs UpdateApplicationInput from required parameters

#### `newUpdateApplicationInput'`

``` purescript
newUpdateApplicationInput' :: ({ "Author" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "ReadmeBody" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String) } -> { "Author" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "ReadmeBody" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String) }) -> UpdateApplicationInput
```

Constructs UpdateApplicationInput's fields from required parameters

#### `UpdateApplicationRequest`

``` purescript
newtype UpdateApplicationRequest
  = UpdateApplicationRequest { "ApplicationId" :: String, "Author" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "ReadmeBody" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype UpdateApplicationRequest _
Generic UpdateApplicationRequest _
Show UpdateApplicationRequest
Decode UpdateApplicationRequest
Encode UpdateApplicationRequest
```

#### `newUpdateApplicationRequest`

``` purescript
newUpdateApplicationRequest :: String -> UpdateApplicationRequest
```

Constructs UpdateApplicationRequest from required parameters

#### `newUpdateApplicationRequest'`

``` purescript
newUpdateApplicationRequest' :: String -> ({ "ApplicationId" :: String, "Author" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "ReadmeBody" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String) } -> { "ApplicationId" :: String, "Author" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "ReadmeBody" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String) }) -> UpdateApplicationRequest
```

Constructs UpdateApplicationRequest's fields from required parameters

#### `UpdateApplicationResponse`

``` purescript
newtype UpdateApplicationResponse
  = UpdateApplicationResponse { "ApplicationId" :: NullOrUndefined (String), "Author" :: NullOrUndefined (String), "CreationTime" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseUrl" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "Version" :: NullOrUndefined (Version) }
```

##### Instances
``` purescript
Newtype UpdateApplicationResponse _
Generic UpdateApplicationResponse _
Show UpdateApplicationResponse
Decode UpdateApplicationResponse
Encode UpdateApplicationResponse
```

#### `newUpdateApplicationResponse`

``` purescript
newUpdateApplicationResponse :: UpdateApplicationResponse
```

Constructs UpdateApplicationResponse from required parameters

#### `newUpdateApplicationResponse'`

``` purescript
newUpdateApplicationResponse' :: ({ "ApplicationId" :: NullOrUndefined (String), "Author" :: NullOrUndefined (String), "CreationTime" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseUrl" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "Version" :: NullOrUndefined (Version) } -> { "ApplicationId" :: NullOrUndefined (String), "Author" :: NullOrUndefined (String), "CreationTime" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "HomePageUrl" :: NullOrUndefined (String), "Labels" :: NullOrUndefined (ListOf__string'), "LicenseUrl" :: NullOrUndefined (String), "Name" :: NullOrUndefined (String), "ReadmeUrl" :: NullOrUndefined (String), "SpdxLicenseId" :: NullOrUndefined (String), "Version" :: NullOrUndefined (Version) }) -> UpdateApplicationResponse
```

Constructs UpdateApplicationResponse's fields from required parameters

#### `Version`

``` purescript
newtype Version
  = Version { "ApplicationId" :: String, "CreationTime" :: String, "ParameterDefinitions" :: ListOfParameterDefinition', "SemanticVersion" :: String, "SourceCodeUrl" :: NullOrUndefined (String), "TemplateUrl" :: String }
```

<p>Application version details.</p>

##### Instances
``` purescript
Newtype Version _
Generic Version _
Show Version
Decode Version
Encode Version
```

#### `newVersion`

``` purescript
newVersion :: String -> String -> ListOfParameterDefinition' -> String -> String -> Version
```

Constructs Version from required parameters

#### `newVersion'`

``` purescript
newVersion' :: String -> String -> ListOfParameterDefinition' -> String -> String -> ({ "ApplicationId" :: String, "CreationTime" :: String, "ParameterDefinitions" :: ListOfParameterDefinition', "SemanticVersion" :: String, "SourceCodeUrl" :: NullOrUndefined (String), "TemplateUrl" :: String } -> { "ApplicationId" :: String, "CreationTime" :: String, "ParameterDefinitions" :: ListOfParameterDefinition', "SemanticVersion" :: String, "SourceCodeUrl" :: NullOrUndefined (String), "TemplateUrl" :: String }) -> Version
```

Constructs Version's fields from required parameters

#### `VersionSummary`

``` purescript
newtype VersionSummary
  = VersionSummary { "ApplicationId" :: String, "CreationTime" :: String, "SemanticVersion" :: String, "SourceCodeUrl" :: NullOrUndefined (String) }
```

<p>Application version summary.</p>

##### Instances
``` purescript
Newtype VersionSummary _
Generic VersionSummary _
Show VersionSummary
Decode VersionSummary
Encode VersionSummary
```

#### `newVersionSummary`

``` purescript
newVersionSummary :: String -> String -> String -> VersionSummary
```

Constructs VersionSummary from required parameters

#### `newVersionSummary'`

``` purescript
newVersionSummary' :: String -> String -> String -> ({ "ApplicationId" :: String, "CreationTime" :: String, "SemanticVersion" :: String, "SourceCodeUrl" :: NullOrUndefined (String) } -> { "ApplicationId" :: String, "CreationTime" :: String, "SemanticVersion" :: String, "SourceCodeUrl" :: NullOrUndefined (String) }) -> VersionSummary
```

Constructs VersionSummary's fields from required parameters

#### `ListOfApplicationPolicyStatement'`

``` purescript
newtype ListOfApplicationPolicyStatement'
  = ListOfApplicationPolicyStatement' (Array ApplicationPolicyStatement)
```

##### Instances
``` purescript
Newtype ListOfApplicationPolicyStatement' _
Generic ListOfApplicationPolicyStatement' _
Show ListOfApplicationPolicyStatement'
Decode ListOfApplicationPolicyStatement'
Encode ListOfApplicationPolicyStatement'
```

#### `ListOfApplicationSummary'`

``` purescript
newtype ListOfApplicationSummary'
  = ListOfApplicationSummary' (Array ApplicationSummary)
```

##### Instances
``` purescript
Newtype ListOfApplicationSummary' _
Generic ListOfApplicationSummary' _
Show ListOfApplicationSummary'
Decode ListOfApplicationSummary'
Encode ListOfApplicationSummary'
```

#### `ListOfParameterDefinition'`

``` purescript
newtype ListOfParameterDefinition'
  = ListOfParameterDefinition' (Array ParameterDefinition)
```

##### Instances
``` purescript
Newtype ListOfParameterDefinition' _
Generic ListOfParameterDefinition' _
Show ListOfParameterDefinition'
Decode ListOfParameterDefinition'
Encode ListOfParameterDefinition'
```

#### `ListOfParameterValue'`

``` purescript
newtype ListOfParameterValue'
  = ListOfParameterValue' (Array ParameterValue)
```

##### Instances
``` purescript
Newtype ListOfParameterValue' _
Generic ListOfParameterValue' _
Show ListOfParameterValue'
Decode ListOfParameterValue'
Encode ListOfParameterValue'
```

#### `ListOfVersionSummary'`

``` purescript
newtype ListOfVersionSummary'
  = ListOfVersionSummary' (Array VersionSummary)
```

##### Instances
``` purescript
Newtype ListOfVersionSummary' _
Generic ListOfVersionSummary' _
Show ListOfVersionSummary'
Decode ListOfVersionSummary'
Encode ListOfVersionSummary'
```

#### `ListOf__string'`

``` purescript
newtype ListOf__string'
  = ListOf__string' (Array String)
```

##### Instances
``` purescript
Newtype ListOf__string' _
Generic ListOf__string' _
Show ListOf__string'
Decode ListOf__string'
Encode ListOf__string'
```


