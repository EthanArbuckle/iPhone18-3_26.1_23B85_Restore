@interface MCACMEPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (__SecIdentity)copyIdentityImmediatelyWithInteractionClient:(id)client outError:(id *)error;
- (void)dealloc;
@end

@implementation MCACMEPayloadHandler

- (void)dealloc
{
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  v4.receiver = self;
  v4.super_class = MCACMEPayloadHandler;
  [(MCACMEPayloadHandler *)&v4 dealloc];
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  optionsCopy = options;
  clientCopy = client;
  payload = [(MCNewPayloadHandler *)self payload];
  profile = [payload profile];
  isUserEnrollmentProfile = [profile isUserEnrollmentProfile];

  if (isUserEnrollmentProfile)
  {
    self->_anonymous = 1;
  }

  else
  {
    v14 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      v16 = +[MDMConfiguration sharedConfiguration];
      self->_anonymous = [v16 isUserEnrollment];
    }

    else
    {
      self->_anonymous = 0;
    }
  }

  v35 = 0;
  v17 = [(MCACMEPayloadHandler *)self copyIdentityImmediatelyWithInteractionClient:clientCopy outError:&v35];
  userCancelledError = v35;
  if (!userCancelledError)
  {
    errorCopy = error;
    v34 = optionsCopy;
    accessibility = [(MCNewCertificatePayloadHandler *)self accessibility];
    v20 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v37 = accessibility;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Storing ACME identity with accessibility %@", buf, 0xCu);
    }

    uUID = [payload UUID];
    v22 = kMCAppleIdentitiesKeychainGroup;
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    profile2 = [profileHandler profile];
    v25 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v17, uUID, v22, [profile2 isInstalledForSystem], accessibility);

    if (v17)
    {
      CFRelease(v17);
    }

    if (v25)
    {
      uUID2 = [payload UUID];
      [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v25 andUUID:uUID2];

      if (clientCopy)
      {
        error = errorCopy;
        if ([clientCopy didUpdateStatus:0])
        {
          userCancelledError = 0;
        }

        else
        {
          profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
          userCancelledError = [profileHandler2 userCancelledError];
        }
      }

      else
      {
        userCancelledError = 0;
        error = errorCopy;
      }

      [payload setCertificatePersistentID:v25];
      uUID3 = [payload UUID];
      [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v25 andUUID:uUID3];

      v31 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Successfully installed certificate.", buf, 2u);
      }

      optionsCopy = v34;
    }

    else
    {
      v27 = MCCertificateErrorDomain;
      v28 = MCErrorArray();
      userCancelledError = [NSError MCErrorWithDomain:v27 code:9002 descriptionArray:v28 errorType:MCErrorTypeFatal, 0];

      error = errorCopy;
      optionsCopy = v34;
    }
  }

  if (error && userCancelledError)
  {
    *error = [userCancelledError MCCopyAsPrimaryError];
  }

  return userCancelledError == 0;
}

- (__SecIdentity)copyIdentityImmediatelyWithInteractionClient:(id)client outError:(id *)error
{
  clientCopy = client;
  identity = self->_identity;
  if (!identity)
  {
    payload = [(MCNewPayloadHandler *)self payload];
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = sub_1000269C8;
    v72 = sub_1000269D8;
    v73 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0;
    if ([payload isHardwareBound])
    {
      v8 = +[MCDeviceCapabilities currentDevice];
      hasSEP = [v8 hasSEP];

      if ((hasSEP & 1) == 0)
      {
        v10 = MCErrorArray();
        v11 = [NSError MCErrorWithDomain:MCACMEErrorDomain code:60001 descriptionArray:v10 underlyingError:0 errorType:MCErrorTypeFatal, 0];
        v12 = v69[5];
        v69[5] = v11;
      }
    }

    if (clientCopy && (MCLocalizedString(), v13 = objc_claimAutoreleasedReturnValue(), v14 = [clientCopy didUpdateStatus:v13], v13, (v14 & 1) == 0))
    {
      profileHandler = [(MCNewPayloadHandler *)self profileHandler];
      userCancelledError = [profileHandler userCancelledError];
      v35 = v69[5];
      v69[5] = userCancelledError;
    }

    else
    {
      keyType = [payload keyType];
      v16 = [keyType isEqualToString:kMCACMEKeyTypeRSA];

      if (v16)
      {
        v17 = &kSecAttrKeyTypeRSA;
      }

      else
      {
        keyType2 = [payload keyType];
        v19 = [keyType2 isEqualToString:kMCACMEKeyTypeECSECPrimeRandom];

        if ((v19 & 1) == 0)
        {
          v40 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Invalid ACME key type", &buf, 2u);
          }

          if (!error)
          {
            goto LABEL_52;
          }

          v41 = MCErrorArray();
          *error = [NSError MCErrorWithDomain:MCACMEErrorDomain code:60000 descriptionArray:v41 underlyingError:0 errorType:MCErrorTypeFatal, 0];

          goto LABEL_51;
        }

        v17 = &kSecAttrKeyTypeECSECPrimeRandom;
      }

      v54 = *v17;
      directoryURLString = [payload directoryURLString];
      v21 = [NSURL URLWithString:directoryURLString];

      if (!v21)
      {
        if (error)
        {
          v39 = MCErrorArray();
          *error = [NSError MCErrorWithDomain:MCACMEErrorDomain code:60000 descriptionArray:v39 underlyingError:0 errorType:MCErrorTypeFatal, 0];
        }

        goto LABEL_51;
      }

      v22 = +[NSMutableDictionary dictionary];
      [v22 setObject:v21 forKeyedSubscript:kSecACMEDirectoryURL];
      isHardwareBound = [payload isHardwareBound];
      v24 = &kCFBooleanTrue;
      if (!isHardwareBound)
      {
        v24 = &kCFBooleanFalse;
      }

      [v22 setObject:*v24 forKeyedSubscript:kSecUseHardwareBoundKey];
      [v22 setObject:v54 forKeyedSubscript:kSecAttrKeyType];
      v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [payload keySize]);
      [v22 setObject:v25 forKeyedSubscript:kSecAttrKeySizeInBits];

      subjectAltName = [payload subjectAltName];
      [v22 setObject:subjectAltName forKeyedSubscript:kSecSubjectAltName];

      v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [payload usageFlags]);
      [v22 setObject:v27 forKeyedSubscript:kSecCertificateKeyUsage];

      extendedKeyUsage = [payload extendedKeyUsage];
      [v22 setObject:extendedKeyUsage forKeyedSubscript:kSecCertificateExtendedKeyUsage];

      clientIdentifier = [payload clientIdentifier];
      [v22 setObject:clientIdentifier forKeyedSubscript:kSecClientIdentifier];

      [v22 setObject:kSecCMSHashingAlgorithmSHA256 forKeyedSubscript:kSecCMSSignHashAlgorithm];
      if ([payload attest])
      {
        v30 = [NSSet setWithObjects:&off_100127138, &off_100127150, &off_100127168, 0];
        v31 = +[DMCMobileGestalt chipID];
        if (v31 && ![v30 containsObject:v31])
        {
          v43 = +[MDMConfiguration sharedConfiguration];
          v44 = [MDMSharedDefinitions oidsAnonymous:self->_anonymous nonce:1 coresidency:0];
          [v22 setObject:v44 forKeyedSubscript:kSecAttestationOids];
        }

        else
        {
          v32 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Ignoring request for attestation on unsupported device. Continuing without attestation.", &buf, 2u);
          }
        }
      }

      v45 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
      {
        if (self->_anonymous)
        {
          v46 = &stru_10011E740;
        }

        else
        {
          v46 = @"non-";
        }

        LODWORD(buf) = 138412290;
        *(&buf + 4) = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Requesting %@anonymous ACME attestation", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v75 = 0x3032000000;
      v76 = sub_1000269C8;
      v77 = sub_1000269D8;
      v78 = dispatch_semaphore_create(0);
      subject = [payload subject];
      v48 = dispatch_get_global_queue(0, 0);
      v57 = _NSConcreteStackBlock;
      v58 = 3221225472;
      v59 = sub_1000269E0;
      v60 = &unk_10011C2A8;
      v61 = &v68;
      v62 = &v64;
      p_buf = &buf;
      SecRequestClientIdentity();

      v49 = *(*(&buf + 1) + 40);
      v50 = dispatch_time(0, 60000000000);
      if (dispatch_semaphore_wait(v49, v50))
      {
        v51 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Timeout waiting for ACME identity", v56, 2u);
        }

        if (error)
        {
          v52 = MCErrorArray();
          *error = [NSError MCErrorWithDomain:MCACMEErrorDomain code:60002 descriptionArray:v52 underlyingError:0 errorType:MCErrorTypeFatal, 0];
        }

        _Block_object_dispose(&buf, 8);

        goto LABEL_51;
      }

      _Block_object_dispose(&buf, 8);

      if (!clientCopy)
      {
LABEL_22:
        v36 = v69[5];
        if (!v36)
        {
          v42 = v65[3];
          if (v42)
          {
            CFRetain(v42);
            error = v65[3];
            self->_identity = error;
          }

          else
          {
            error = self->_identity;
          }

          goto LABEL_52;
        }

        if (error)
        {
          *error = v36;
        }

        v37 = _MCLogObjects[0];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          mCVerboseDescription = [v69[5] MCVerboseDescription];
          LODWORD(buf) = 138543362;
          *(&buf + 4) = mCVerboseDescription;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Cannot obtain ACME certificate: %{public}@", &buf, 0xCu);
        }

LABEL_51:
        error = 0;
LABEL_52:
        _Block_object_dispose(&v64, 8);
        _Block_object_dispose(&v68, 8);

        goto LABEL_53;
      }
    }

    [clientCopy didUpdateStatus:0];
    goto LABEL_22;
  }

  CFRetain(identity);
  error = self->_identity;
LABEL_53:

  return error;
}

@end