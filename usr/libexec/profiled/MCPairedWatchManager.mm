@interface MCPairedWatchManager
- (id)_derCertificatesFromPersistentRefArray:(id)array;
- (id)_errorBadProfile;
- (id)_errorEnrollmentCannotBeStaged;
- (id)_errorEnrollmentMalformed;
- (id)_errorInvalidServiceURL;
- (id)_errorMissingMDMPayload;
- (id)_errorMissingServiceURL;
- (id)_errorPhoneUnsupervised;
- (id)_organizationNameFromProfile:(id)profile payload:(id)payload;
- (id)_serviceURLFromEnrollmentDictionary:(id)dictionary outError:(id *)error;
- (id)detailsFromMDMProfile:(id)profile error:(id *)error;
- (void)applyPairingWatchMDMEnrollmentData:(id)data source:(id)source usingProfileInstaller:(id)installer cloudConfigReader:(id)reader cloudConfigWriter:(id)writer completion:(id)completion;
- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)completion;
- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:(id)token completion:(id)completion;
- (void)fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:(id)completion;
- (void)installEnrollmentProfile:(id)profile devicePasscode:(id)passcode devicePasscodeContext:(id)context passcodeContextExtractable:(BOOL)extractable personaID:(id)d rmAccountIdentifier:(id)identifier isESSO:(BOOL)o essoAppITunesStoreID:(id)self0 managedProfileIdentifiers:(id)self1 installationSource:(id)self2 completionHandler:(id)self3;
- (void)unstageMDMEnrollmentInfoForPairingWatchWithCompletion:(id)completion;
- (void)updateMDMEnrollmentInfoForPairingWatch:(id)watch completion:(id)completion;
@end

@implementation MCPairedWatchManager

- (void)unstageMDMEnrollmentInfoForPairingWatchWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[NSFileManager defaultManager];
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "MCPairedWatchManager.unstageMDMEnrollmentInfoForPairingWatchWithCompletion", buf, 2u);
  }

  v6 = MCSystemWatchEnrollmentDataFilePath();
  if ([v4 fileExistsAtPath:v6])
  {
    v10 = 0;
    [v4 removeItemAtPath:v6 error:&v10];
    v7 = v10;
    if (v7)
    {
      v8 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Watch enrollment failed to unstage with error: %{public}@", buf, 0xCu);
      }
    }

    completionCopy[2](completionCopy, v7);
  }

  else
  {
    v9 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Watch enrollment could not be unstaged because it does not exist", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "MCPairedWatchManager.fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion", v7, 2u);
  }

  v5 = MCSystemWatchEnrollmentDataFilePath();
  v6 = [NSData MCDataFromFile:v5];

  completionCopy[2](completionCopy, v6, 0);
}

- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  v8 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "MCPairedWatchManager.fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken", buf, 2u);
  }

  v9 = MCSystemWatchEnrollmentDataFilePath();
  v10 = [NSData MCDataFromFile:v9];

  if (v10)
  {
    v19 = 0;
    v11 = [NSPropertyListSerialization propertyListWithData:v10 options:1 format:0 error:&v19];
    v12 = v19;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v11 setObject:tokenCopy forKeyedSubscript:kMCWatchEnrollmentPairingTokenKey];
      v18 = 0;
      _errorEnrollmentMalformed = [NSPropertyListSerialization dataWithPropertyList:v11 format:200 options:0 error:&v18];
      v14 = v18;

      if (_errorEnrollmentMalformed)
      {
        v15 = _errorEnrollmentMalformed;
        v16 = 0;
      }

      else
      {
        v15 = 0;
        v16 = v14;
      }

      completionCopy[2](completionCopy, v15, v16);
      v12 = v14;
    }

    else
    {
      v17 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Watch enrollment is malformed: %{public}@", buf, 0xCu);
      }

      _errorEnrollmentMalformed = [(MCPairedWatchManager *)self _errorEnrollmentMalformed];
      completionCopy[2](completionCopy, 0, _errorEnrollmentMalformed);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "MCPairedWatchManager.fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion", buf, 2u);
  }

  v6 = MCSystemWatchEnrollmentDataFilePath();
  v7 = [NSData MCDataFromFile:v6];

  if (v7)
  {
    v13 = 0;
    v8 = [NSPropertyListSerialization propertyListWithData:v7 options:0 format:0 error:&v13];
    v9 = v13;
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      _errorEnrollmentMalformed = [v8 objectForKeyedSubscript:kMCWatchEnrollmentDeclarationKeysKey];
      if (_errorEnrollmentMalformed && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = [NSSet setWithArray:_errorEnrollmentMalformed];
        completionCopy[2](completionCopy, v11, 0);
      }

      else
      {
        completionCopy[2](completionCopy, 0, 0);
      }
    }

    else
    {
      v12 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Watch enrollment is malformed: %{public}@", buf, 0xCu);
      }

      _errorEnrollmentMalformed = [(MCPairedWatchManager *)self _errorEnrollmentMalformed];
      (completionCopy)[2](completionCopy, 0, _errorEnrollmentMalformed);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)applyPairingWatchMDMEnrollmentData:(id)data source:(id)source usingProfileInstaller:(id)installer cloudConfigReader:(id)reader cloudConfigWriter:(id)writer completion:(id)completion
{
  dataCopy = data;
  sourceCopy = source;
  installerCopy = installer;
  readerCopy = reader;
  writerCopy = writer;
  completionCopy = completion;
  v19 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "MCPairedWatchManager.applyPairingWatchMDMEnrollmentData", buf, 2u);
  }

  v57 = 0;
  v47 = dataCopy;
  v20 = [NSPropertyListSerialization propertyListWithData:dataCopy options:0 format:0 error:&v57];
  v21 = v57;
  if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v24 = _MCLogObjects[0];
    v25 = readerCopy;
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v59 = v20;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Watch enrollment is malformed: %{public}@", buf, 0xCu);
    }

    _errorEnrollmentMalformed = [(MCPairedWatchManager *)self _errorEnrollmentMalformed];
    goto LABEL_11;
  }

  if (+[DMCFeatureOverrides watchEnrollmentAllowLocalProfile](DMCFeatureOverrides, "watchEnrollmentAllowLocalProfile") && ([v20 objectForKeyedSubscript:kMCWatchEnrollmentProfileDataKey], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v42 = 0;
    v23 = 0;
  }

  else
  {
    v56 = v21;
    v23 = [(MCPairedWatchManager *)self _serviceURLFromEnrollmentDictionary:v20 outError:&v56];
    _errorEnrollmentMalformed = v56;

    if (_errorEnrollmentMalformed)
    {
      v21 = v23;
      v25 = readerCopy;
LABEL_11:

      completionCopy[2](completionCopy, _errorEnrollmentMalformed);
      goto LABEL_12;
    }

    v22 = 0;
    v21 = 0;
    v42 = 1;
  }

  v46 = v22;
  v45 = [v20 objectForKeyedSubscript:kMCWatchEnrollmentAnchorCertificatesKey];
  v27 = [v20 objectForKeyedSubscript:kMCWatchEnrollmentPairingTokenKey];
  v44 = v27;
  if (v27)
  {
    [(MCPairedWatchManager *)self setPairingToken:v27];
    v28 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v29 = "applyPairingWatchMDMEnrollmentData: pairingToken extracted from enrollmentDictionary";
  }

  else
  {
    v28 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v29 = "applyPairingWatchMDMEnrollmentData: pairingToken in enrollmentDictionary is nil";
  }

  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, v29, buf, 2u);
LABEL_22:
  v30 = [v20 objectForKeyedSubscript:kMCWatchEnrollmentSupervisionKey];
  objc_opt_class();
  v43 = v23;
  v31 = v30;
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v30 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v25 = readerCopy;
  v55 = v21;
  [(MCPairedWatchManager *)self _updateSupervision:bOOLValue cloudConfigReader:readerCopy cloudConfigWriter:writerCopy outError:&v55];
  _errorEnrollmentMalformed = v55;

  if (_errorEnrollmentMalformed)
  {

    v21 = v46;
    goto LABEL_11;
  }

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100019894;
  v53[3] = &unk_10011BE40;
  v54 = completionCopy;
  v33 = objc_retainBlock(v53);
  v34 = v33;
  if (v42)
  {
    v35 = [DMCEnrollmentFlowController enrollmentFlowControllerWithPresenter:0 managedConfigurationHelper:self];
    [(MCPairedWatchManager *)self setEnrollmentController:v35];

    enrollmentController = [(MCPairedWatchManager *)self enrollmentController];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100019978;
    v49[3] = &unk_10011C080;
    v49[4] = self;
    v50 = v34;
    v37 = v34;
    v38 = v43;
    v39 = v45;
    [enrollmentController startWatchEnrollmentFlowWithServiceURL:v43 anchorCertificates:v45 restartIfFail:0 completionHandler:v49];

    v40 = v46;
  }

  else
  {
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100019964;
    v51[3] = &unk_10011C058;
    v52 = v33;
    v41 = v33;
    v40 = v46;
    [installerCopy installProfileData:v46 interactionClient:0 options:0 source:sourceCopy completion:v51];

    v39 = v45;
    v38 = v43;
  }

  _errorEnrollmentMalformed = 0;
  v25 = readerCopy;
LABEL_12:
}

- (void)updateMDMEnrollmentInfoForPairingWatch:(id)watch completion:(id)completion
{
  v5 = kDMCPairingParametersSecurityTokenKey;
  completionCopy = completion;
  watchCopy = watch;
  v8 = [watchCopy objectForKeyedSubscript:v5];
  v9 = +[DMCMobileGestalt deviceUDID];
  v10 = [watchCopy objectForKeyedSubscript:kDMCPairingParametersWatchUDIDKey];

  v11 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "MCPairedWatchManager.updateMDMEnrollmentInfoForPairingWatch security token: %@ ; deviceID : %@ ; watchID : %@", &v12, 0x20u);
  }

  [MDMConfiguration getWatchPairingTokenForPhoneID:v9 watchID:v10 securityToken:v8 completionHandler:completionCopy];
}

- (id)detailsFromMDMProfile:(id)profile error:(id *)error
{
  v6 = [MCProfile profileWithData:profile outError:?];
  if (v6)
  {
    v7 = [v6 payloadsWithClass:objc_opt_class()];
    firstObject = [v7 firstObject];

    if (firstObject)
    {
      v9 = [NSMutableDictionary dictionaryWithCapacity:7];
      identifier = [v6 identifier];
      [v9 setObject:identifier forKeyedSubscript:kMCBridgeProfileIdentifierKey];

      managedAppleID = [firstObject managedAppleID];
      [v9 setObject:managedAppleID forKeyedSubscript:kMCBridgeManagedAppleIDKey];

      assignedManagedAppleID = [firstObject assignedManagedAppleID];
      [v9 setObject:assignedManagedAppleID forKeyedSubscript:kMCBridgeAssignedManagedAppleIDKey];

      friendlyName = [firstObject friendlyName];
      [v9 setObject:friendlyName forKeyedSubscript:kMCBridgeFriendlyNameKey];

      v14 = [(MCPairedWatchManager *)self _organizationNameFromProfile:v6 payload:firstObject];
      [v9 setObject:v14 forKeyedSubscript:kMCBridgeOrganizationNameKey];

      enrollmentMode = [firstObject enrollmentMode];
      [v9 setObject:enrollmentMode forKeyedSubscript:kMCBridgeEnrollmentModeKey];

      serverCapabilities = [firstObject serverCapabilities];
      [v9 setObject:serverCapabilities forKeyedSubscript:kMCBridgeServerCapabilitiesKey];

      v17 = [v9 copy];
    }

    else if (error)
    {
      [(MCPairedWatchManager *)self _errorMissingMDMPayload];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else if (error)
  {
    [(MCPairedWatchManager *)self _errorBadProfile];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_organizationNameFromProfile:(id)profile payload:(id)payload
{
  profileCopy = profile;
  payloadCopy = payload;
  organization = [payloadCopy organization];

  if (organization)
  {
    v8 = payloadCopy;
LABEL_5:
    organization2 = [v8 organization];
    goto LABEL_6;
  }

  organization3 = [profileCopy organization];

  if (organization3)
  {
    v8 = profileCopy;
    goto LABEL_5;
  }

  organization2 = [payloadCopy serverURLString];

  if (organization2)
  {
    serverURLString = [payloadCopy serverURLString];
    v13 = [NSURL URLWithString:serverURLString];

    if (v13)
    {
      organization2 = [v13 host];
    }

    else
    {
      organization2 = 0;
    }
  }

LABEL_6:

  return organization2;
}

- (void)installEnrollmentProfile:(id)profile devicePasscode:(id)passcode devicePasscodeContext:(id)context passcodeContextExtractable:(BOOL)extractable personaID:(id)d rmAccountIdentifier:(id)identifier isESSO:(BOOL)o essoAppITunesStoreID:(id)self0 managedProfileIdentifiers:(id)self1 installationSource:(id)self2 completionHandler:(id)self3
{
  handlerCopy = handler;
  identifierCopy = identifier;
  dCopy = d;
  profileCopy = profile;
  v20 = objc_opt_new();
  [v20 setObject:dCopy forKeyedSubscript:kMCInstallProfileOptionPersonaID];

  [v20 setObject:identifierCopy forKeyedSubscript:kMCInstallProfileOptionRMAccountIdentifier];
  if (dCopy)
  {
    [v20 setObject:kDMCProfileInstallationSourceAccountDrivenUserEnrollment forKeyedSubscript:kMCInstallProfileOptionInstallationSource];
  }

  [v20 setObject:&__kCFBooleanTrue forKeyedSubscript:kMCInstallProfileOptionIsCloudLocked];
  [v20 setObject:&__kCFBooleanTrue forKeyedSubscript:kMCInstallProfileOptionIsCloudProfile];
  v21 = +[MCProfileServiceServer sharedServer];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10001A194;
  v23[3] = &unk_10011C058;
  v24 = handlerCopy;
  v22 = handlerCopy;
  [v21 installProfileData:profileCopy interactionClient:0 options:v20 source:@"MCPairedWatchManager" completion:v23];
}

- (id)_derCertificatesFromPersistentRefArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy)
  {
    v15 = arrayCopy;
    v4 = [objc_opt_class() copyCertificatesWithPersistentIDs:arrayCopy useSystemKeychain:1 enforcePersonalPersona:0];
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = SecCertificateCopyData(*(*(&v16 + 1) + 8 * i));
          [v5 addObject:v11];
          v12 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "_derCertificatesFromPersistentRefArray :: converted persistentRef to der NSData", buf, 2u);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }

    arrayCopy = v15;
  }

  else
  {
    v13 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
    }

    v5 = 0;
  }

  return v5;
}

- (id)_serviceURLFromEnrollmentDictionary:(id)dictionary outError:(id *)error
{
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:kMCWatchEnrollmentServiceURLKey];
  if (v7)
  {
    v8 = [NSURL URLWithString:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v14 = 138543362;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Watch enrollment service URL is invalid: %{public}@", &v14, 0xCu);
      }

      if (error)
      {
        *error = [(MCPairedWatchManager *)self _errorInvalidServiceURL];
      }
    }
  }

  else
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = dictionaryCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Watch enrollment is missing a profile service URL: %{public}@", &v14, 0xCu);
    }

    if (error)
    {
      [(MCPairedWatchManager *)self _errorMissingServiceURL];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_errorEnrollmentCannotBeStaged
{
  v2 = MDMErrorDomain;
  v3 = DMCErrorArray();
  v4 = [NSError DMCErrorWithDomain:v2 code:12116 descriptionArray:v3 errorType:DMCErrorTypeFatal, 0];

  return v4;
}

- (id)_errorPhoneUnsupervised
{
  v2 = MDMErrorDomain;
  v3 = DMCErrorArray();
  v4 = [NSError DMCErrorWithDomain:v2 code:12121 descriptionArray:v3 errorType:DMCErrorTypeFatal, 0];

  return v4;
}

- (id)_errorEnrollmentMalformed
{
  v2 = MDMErrorDomain;
  v3 = DMCErrorArray();
  v4 = [NSError DMCErrorWithDomain:v2 code:12008 descriptionArray:v3 errorType:DMCErrorTypeFatal, 0];

  return v4;
}

- (id)_errorMissingServiceURL
{
  v2 = MDMErrorDomain;
  v3 = DMCErrorArray();
  v4 = [NSError DMCErrorWithDomain:v2 code:12117 descriptionArray:v3 errorType:DMCErrorTypeFatal, 0];

  return v4;
}

- (id)_errorInvalidServiceURL
{
  v2 = MDMErrorDomain;
  v3 = DMCErrorArray();
  v4 = [NSError DMCErrorWithDomain:v2 code:12118 descriptionArray:v3 errorType:DMCErrorTypeFatal, 0];

  return v4;
}

- (id)_errorBadProfile
{
  v2 = MDMErrorDomain;
  v3 = DMCErrorArray();
  v4 = [NSError DMCErrorWithDomain:v2 code:12119 descriptionArray:v3 errorType:DMCErrorTypeFatal, 0];

  return v4;
}

- (id)_errorMissingMDMPayload
{
  v2 = MDMErrorDomain;
  v3 = DMCErrorArray();
  v4 = [NSError DMCErrorWithDomain:v2 code:12120 descriptionArray:v3 errorType:DMCErrorTypeFatal, 0];

  return v4;
}

@end