## Module AWS.ServerlessApplicationRepository.Requests

#### `createApplication`

``` purescript
createApplication :: forall eff. Service -> CreateApplicationRequest -> Aff (exception :: EXCEPTION | eff) CreateApplicationResponse
```

<p>Creates an application, optionally including an AWS SAM file to create the first application version in the same call.</p>

#### `createApplicationVersion`

``` purescript
createApplicationVersion :: forall eff. Service -> CreateApplicationVersionRequest -> Aff (exception :: EXCEPTION | eff) CreateApplicationVersionResponse
```

<p>Creates an application version.</p>

#### `createCloudFormationChangeSet`

``` purescript
createCloudFormationChangeSet :: forall eff. Service -> CreateCloudFormationChangeSetRequest -> Aff (exception :: EXCEPTION | eff) CreateCloudFormationChangeSetResponse
```

<p>Creates an AWS CloudFormation ChangeSet for the given application.</p>

#### `deleteApplication`

``` purescript
deleteApplication :: forall eff. Service -> DeleteApplicationRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified application.</p>

#### `getApplication`

``` purescript
getApplication :: forall eff. Service -> GetApplicationRequest -> Aff (exception :: EXCEPTION | eff) GetApplicationResponse
```

<p>Gets the specified application.</p>

#### `getApplicationPolicy`

``` purescript
getApplicationPolicy :: forall eff. Service -> GetApplicationPolicyRequest -> Aff (exception :: EXCEPTION | eff) GetApplicationPolicyResponse
```

<p>Gets the policy for the specified application.</p>

#### `listApplicationVersions`

``` purescript
listApplicationVersions :: forall eff. Service -> ListApplicationVersionsRequest -> Aff (exception :: EXCEPTION | eff) ListApplicationVersionsResponse
```

<p>Lists versions for the specified application.</p>

#### `listApplications`

``` purescript
listApplications :: forall eff. Service -> ListApplicationsRequest -> Aff (exception :: EXCEPTION | eff) ListApplicationsResponse
```

<p>Lists applications owned by the requester.</p>

#### `putApplicationPolicy`

``` purescript
putApplicationPolicy :: forall eff. Service -> PutApplicationPolicyRequest -> Aff (exception :: EXCEPTION | eff) PutApplicationPolicyResponse
```

<p>Puts the policy for the specified application.</p>

#### `updateApplication`

``` purescript
updateApplication :: forall eff. Service -> UpdateApplicationRequest -> Aff (exception :: EXCEPTION | eff) UpdateApplicationResponse
```

<p>Updates the specified application.</p>


