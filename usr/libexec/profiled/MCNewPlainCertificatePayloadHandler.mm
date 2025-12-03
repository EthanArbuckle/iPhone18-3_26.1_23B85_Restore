@interface MCNewPlainCertificatePayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (BOOL)preflightUserInputResponses:(id)responses outError:(id *)error;
- (__SecIdentity)_copyContentsOfPKCS12DataWithPasscode:(id)passcode outError:(id *)error;
- (__SecIdentity)copyIdentityImmediatelyWithInteractionClient:(id)client outError:(id *)error;
- (id)_cannotStoreCertificateError;
- (id)_cannotStoreRootCertificateError;
- (id)_invalidPasscodeError;
- (id)_malformedCertificateError;
- (id)_storeCertificate:(__SecCertificate *)certificate allowSSLTrust:(BOOL)trust outError:(id *)error;
- (id)_tooManyCertificatesError;
- (id)userInputFields;
- (int)_grantPartialNonSSLTrustPolicyForCertificate:(__SecCertificate *)certificate;
- (void)_revertFullSSLTrustIfNeeded;
- (void)dealloc;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCNewPlainCertificatePayloadHandler

- (id)userInputFields
{
  payload = [(MCNewPayloadHandler *)self payload];
  if ([payload dataEncoding] == 1)
  {
    v3 = +[NSMutableArray array];
    password = [payload password];
    v5 = [password length];

    if (!v5)
    {
      v6 = MCLocalizedString();
      certificateFileName = [payload certificateFileName];
      v8 = MCLocalizedFormat();
      v9 = [MCNewPayloadHandler promptDictionaryForKey:@"certificatePassword" title:v6 description:v8 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:3 flags:?];
      [v3 addObject:v9];
    }
  }

  else
  {
    v3 = +[NSArray array];
  }

  return v3;
}

- (void)dealloc
{
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  v4.receiver = self;
  v4.super_class = MCNewPlainCertificatePayloadHandler;
  [(MCNewPlainCertificatePayloadHandler *)&v4 dealloc];
}

- (__SecIdentity)_copyContentsOfPKCS12DataWithPasscode:(id)passcode outError:(id *)error
{
  passcodeCopy = passcode;
  payload = [(MCNewPayloadHandler *)self payload];
  theArray = 0;
  if (passcodeCopy)
  {
    v17 = kSecImportExportPassphrase;
    v18 = passcodeCopy;
    v8 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    if (SecPKCS12Import([payload certificateData], v8, &theArray))
    {
      _invalidPasscodeError = [(MCNewPlainCertificatePayloadHandler *)self _invalidPasscodeError];
    }

    else
    {
      if (CFArrayGetCount(theArray) == 1)
      {
        _invalidPasscodeError2 = 0;
        goto LABEL_10;
      }

      _invalidPasscodeError = [(MCNewPlainCertificatePayloadHandler *)self _tooManyCertificatesError];
    }

    _invalidPasscodeError2 = _invalidPasscodeError;
LABEL_10:

    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  _invalidPasscodeError2 = [(MCNewPlainCertificatePayloadHandler *)self _invalidPasscodeError];
  if (!error)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (_invalidPasscodeError2)
  {
    v11 = _invalidPasscodeError2;
    v12 = 0;
    *error = _invalidPasscodeError2;
    goto LABEL_17;
  }

LABEL_13:
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  Value = CFDictionaryGetValue(ValueAtIndex, kSecImportItemIdentity);
  v12 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_17:

  return v12;
}

- (BOOL)preflightUserInputResponses:(id)responses outError:(id *)error
{
  responsesCopy = responses;
  payload = [(MCNewPayloadHandler *)self payload];
  if ([payload dataEncoding] == 1)
  {
    password = [payload password];
    v9 = [MCNewPayloadHandler prioritizeUserInput:responsesCopy key:@"certificatePassword" overField:password];

    v15 = 0;
    v10 = [(MCNewPlainCertificatePayloadHandler *)self _copyContentsOfPKCS12DataWithPasscode:v9 outError:&v15];
    v11 = v15;
    if (v10)
    {
      CFRelease(v10);
    }

    v12 = v11 == 0;
    if (error && v11)
    {
      v13 = v11;
      *error = v11;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (id)_storeCertificate:(__SecCertificate *)certificate allowSSLTrust:(BOOL)trust outError:(id *)error
{
  trustCopy = trust;
  payload = [(MCNewPayloadHandler *)self payload];
  accessibility = [(MCNewCertificatePayloadHandler *)self accessibility];
  v10 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v70 = accessibility;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Storing certificate, storing with accessibility %@", buf, 0xCu);
  }

  uUID = [payload UUID];
  v12 = kMCAppleCertificatesKeychainGroup;
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  profile = [profileHandler profile];
  v15 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", certificate, uUID, v12, [profile isInstalledForSystem], accessibility);

  v56 = payload;
  if (!v15)
  {
    _cannotStoreCertificateError = [(MCNewPlainCertificatePayloadHandler *)self _cannotStoreCertificateError];
    goto LABEL_10;
  }

  uUID2 = [payload UUID];
  [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v15 andUUID:uUID2];

  [payload setCertificatePersistentID:v15];
  certificateCopy2 = certificate;
  if (([payload isFullyTrustedRootCert] & 1) == 0 && SecCertificateIsSelfSignedCA())
  {
    if (trustCopy)
    {
      SecTrustStoreForDomain();
      if (SecTrustStoreSetTrustSettings())
      {
LABEL_8:
        _cannotStoreCertificateError = [(MCNewPlainCertificatePayloadHandler *)self _cannotStoreRootCertificateError];
LABEL_10:
        v19 = _cannotStoreCertificateError;
        if (!_cannotStoreCertificateError)
        {
          goto LABEL_56;
        }

        if (error)
        {
          v20 = _cannotStoreCertificateError;
          v21 = 0;
          *error = v19;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_57;
      }
    }

    else if ([(MCNewPlainCertificatePayloadHandler *)self _grantPartialNonSSLTrustPolicyForCertificate:certificate])
    {
      goto LABEL_8;
    }
  }

  v22 = SecCertificateCopyRFC822Names();
  if (!v22)
  {
    goto LABEL_56;
  }

  v54 = v15;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (!v24)
  {
    goto LABEL_55;
  }

  v25 = v24;
  v26 = *v63;
  v57 = v23;
  do
  {
    v27 = 0;
    do
    {
      if (*v63 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v62 + 1) + 8 * v27);
      v29 = [MFMessageKeychainManager copySMIMEEncryptionPolicyForAddress:v28];
      if (v29)
      {
        v30 = v29;
        trust = 0;
        if (SecTrustCreateWithCertificates(certificateCopy2, v29, &trust))
        {
          v31 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Cannot create certificate trust for S/MIME processing.", buf, 2u);
          }

          goto LABEL_41;
        }

        if (SecTrustGetCertificateCount(trust) < 1)
        {
          goto LABEL_40;
        }

        v33 = [MCCrypto copyLeafCertificateFromTrust:trust];
        v34 = SecCertificateGetSHA1Digest();
        if (v33)
        {
          CFRelease(v33);
        }

        mCHexString = [v34 MCHexString];
        v36 = [NSString stringWithFormat:@"S/MIME: %@ - %@", v28, mCHexString];

        v66[0] = kSecClass;
        v66[1] = kSecAttrGeneric;
        v67[1] = v34;
        v67[2] = @"com.apple.certui";
        v66[2] = kSecAttrService;
        v66[3] = kSecAttrAccount;
        v66[4] = kSecReturnData;
        v67[0] = kSecClassGenericPassword;
        v67[3] = v36;
        v67[4] = &__kCFBooleanTrue;
        v37 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:5];
        result = 0;
        v38 = SecItemCopyMatching(v37, &result);
        v39 = result;
        if (v38 == -25300)
        {
          goto LABEL_39;
        }

        v40 = v38;
        if (v38)
        {
          v47 = _MCLogObjects[0];
          if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }

          *buf = 67109120;
          LODWORD(v70) = v40;
          v44 = v47;
          v45 = OS_LOG_TYPE_ERROR;
          v46 = "Could not query keychain for existing S/MIME certificate. Status: %d";
LABEL_37:
          v48 = 8;
        }

        else
        {
          SecTrustSetExceptions(trust, result);
          v59 = kSecTrustResultInvalid;
          SecTrustEvaluateWithError(trust, 0);
          TrustResult = SecTrustGetTrustResult(trust, &v59);
          if (TrustResult)
          {
            v42 = TrustResult;
            v43 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v70) = v42;
              v44 = v43;
              v45 = OS_LOG_TYPE_ERROR;
              v46 = "Could not evaluate S/MIME certificate trust. Status: %d";
              goto LABEL_37;
            }

LABEL_39:

            v23 = v57;
            certificateCopy2 = certificate;
LABEL_40:
            CFRelease(trust);
LABEL_41:
            CFRelease(v30);
            goto LABEL_42;
          }

          if (v59 == kSecTrustResultDeny)
          {
            v49 = _MCLogObjects[0];
            if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
            {
              goto LABEL_39;
            }

            *buf = 0;
            v44 = v49;
            v45 = OS_LOG_TYPE_INFO;
            v46 = "Not using certificate for S/MIME because we are denying this certificate.";
          }

          else
          {
            if ((SecCertificateGetKeyUsage() & 4) != 0)
            {
              log = _MCLogObjects[0];
              if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v70 = v28;
                _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Saving certificate as the S/MIME encryption certificate for %{public}@", buf, 0xCu);
              }

              v51 = [MFMessageKeychainManager saveEncryptionCertificate:certificate forAddress:v28];
              goto LABEL_39;
            }

            v50 = _MCLogObjects[0];
            if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
            {
              goto LABEL_39;
            }

            *buf = 0;
            v44 = v50;
            v45 = OS_LOG_TYPE_INFO;
            v46 = "Not using certificate for S/MIME because it doesn't have the Key Encipherment usage.";
          }

          v48 = 2;
        }

        _os_log_impl(&_mh_execute_header, v44, v45, v46, buf, v48);
        goto LABEL_39;
      }

      v32 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v70 = v28;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Cannot copy S/MIME policy for email address %{public}@", buf, 0xCu);
      }

LABEL_42:
      v27 = v27 + 1;
    }

    while (v25 != v27);
    v52 = [v23 countByEnumeratingWithState:&v62 objects:v68 count:16];
    v25 = v52;
  }

  while (v52);
LABEL_55:

  CFRelease(v23);
  v15 = v54;
LABEL_56:
  v21 = v15;
  v19 = 0;
LABEL_57:

  return v21;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  optionsCopy = options;
  clientCopy = client;
  payload = [(MCNewPayloadHandler *)self payload];
  uUID = [payload UUID];
  if ([payload dataEncoding] != 1)
  {
    if ([payload dataEncoding])
    {
      _malformedCertificateError = [(MCNewPlainCertificatePayloadHandler *)self _malformedCertificateError];
      v20 = 0;
LABEL_13:
      [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v20 andUUID:uUID];

      goto LABEL_14;
    }

    errorCopy = error;
    certificateData = [payload certificateData];
    v23 = [MCCrypto copyCertificateRefFromPKCS1Data:certificateData];

    if (v23 || ([payload certificateData], v24 = objc_claimAutoreleasedReturnValue(), v23 = +[MCCrypto copyCertificateRefFromPEMData:](MCCrypto, "copyCertificateRefFromPEMData:", v24), v24, v23))
    {
      v25 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
      bOOLValue = [v25 BOOLValue];

      profile = [payload profile];
      v28 = [profile containsPayloadOfClass:objc_opt_class()];

      v34 = 0;
      v20 = [(MCNewPlainCertificatePayloadHandler *)self _storeCertificate:v23 allowSSLTrust:(clientCopy == 0) | v28 & 1 | bOOLValue & 1u outError:&v34];
      _malformedCertificateError = v34;
      CFRelease(v23);
      if (v20)
      {
        [payload setCertificatePersistentID:v20];
        error = errorCopy;
        goto LABEL_13;
      }

      _cannotStoreCertificateError = [(MCNewPlainCertificatePayloadHandler *)self _cannotStoreCertificateError];

      _malformedCertificateError = _cannotStoreCertificateError;
    }

    else
    {
      _malformedCertificateError = [(MCNewPlainCertificatePayloadHandler *)self _malformedCertificateError];
    }

    error = errorCopy;
    goto LABEL_14;
  }

  v35 = 0;
  v13 = [(MCNewPlainCertificatePayloadHandler *)self copyIdentityImmediatelyWithInteractionClient:clientCopy outError:&v35];
  _malformedCertificateError = v35;
  if (!_malformedCertificateError)
  {
    v31 = optionsCopy;
    errorCopy2 = error;
    accessibility = [(MCNewCertificatePayloadHandler *)self accessibility];
    v16 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = accessibility;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Storing identity, storing with accessibility %@", buf, 0xCu);
    }

    v17 = kMCAppleIdentitiesKeychainGroup;
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    profile2 = [profileHandler profile];
    v20 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v13, uUID, v17, [profile2 isInstalledForSystem], -[MCNewCertificatePayloadHandler accessibility](self, "accessibility"));

    if (!v20)
    {
      CFRelease(v13);
      _malformedCertificateError = [(MCNewPlainCertificatePayloadHandler *)self _cannotStoreCertificateError];
      optionsCopy = v31;
      error = errorCopy2;
      goto LABEL_14;
    }

    [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v20 andUUID:uUID];
    [payload setCertificatePersistentID:v20];
    *buf = 0;
    SecIdentityCopyCertificate(v13, buf);
    v21 = SecCertificateCopySubjectSummary(*buf);
    CFRelease(v13);
    CFRelease(*buf);
    [payload setDisplayName:v21];

    _malformedCertificateError = 0;
    optionsCopy = v31;
    error = errorCopy2;
    goto LABEL_13;
  }

LABEL_14:
  if (error && _malformedCertificateError)
  {
    *error = [_malformedCertificateError MCCopyAsPrimaryError];
  }

  return _malformedCertificateError == 0;
}

- (void)setAside
{
  [(MCNewPlainCertificatePayloadHandler *)self _revertFullSSLTrustIfNeeded];
  v3.receiver = self;
  v3.super_class = MCNewPlainCertificatePayloadHandler;
  [(MCNewCertificatePayloadHandler *)&v3 setAside];
}

- (void)unsetAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  profile = [payload profile];
  if ([profile shouldHaveFullSSLTrust] && objc_msgSend(payload, "isRoot"))
  {
    copyCertificate = [payload copyCertificate];
    if (copyCertificate)
    {
      v6 = copyCertificate;
      v7 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "On payload unset aside: restoring full SSL trust policy of root cert.", buf, 2u);
      }

      SecTrustStoreForDomain();
      v8 = SecTrustStoreSetTrustSettings();
      if (v8)
      {
        v9 = v8;
        v10 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v14 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to restore full SSL trust trust policy for certificate: %ld", buf, 0xCu);
        }
      }

      CFRelease(v6);
    }
  }

  else
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Root cert was not installed with full trust from payload.", buf, 2u);
    }
  }

  v12.receiver = self;
  v12.super_class = MCNewPlainCertificatePayloadHandler;
  [(MCNewCertificatePayloadHandler *)&v12 unsetAside];
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {
    [(MCNewPlainCertificatePayloadHandler *)self _revertFullSSLTrustIfNeeded];
  }

  v5.receiver = self;
  v5.super_class = MCNewPlainCertificatePayloadHandler;
  [(MCNewCertificatePayloadHandler *)&v5 remove];
}

- (void)_revertFullSSLTrustIfNeeded
{
  selfCopy = self;
  payload = [(MCNewPayloadHandler *)self payload];
  profile = [payload profile];
  if (![profile shouldHaveFullSSLTrust])
  {
    v6 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v32 = "Root cert was not installed with full trust from payload.";
LABEL_32:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v32, buf, 2u);
    goto LABEL_41;
  }

  isFullyTrustedRootCert = [payload isFullyTrustedRootCert];
  v6 = _MCLogObjects[0];
  v7 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO);
  if (!isFullyTrustedRootCert)
  {
    if (!v7)
    {
      goto LABEL_41;
    }

    *buf = 0;
    v32 = "Root cert is not fully trusted root cert, skipping partial trust restore.";
    goto LABEL_32;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Removing fully-trusted root cert payload.", buf, 2u);
  }

  uUID = [payload UUID];
  v9 = +[MCDependencyManager sharedManager];
  persistentResourceID = [payload persistentResourceID];
  v11 = [v9 dependentsOfParent:persistentResourceID inDomain:kMCDMCertificateToPayloadUUIDDependencyKey];
  v12 = [v11 mutableCopy];

  [v12 removeObject:uUID];
  if ([v12 count])
  {
    identifier = [profile identifier];
    v14 = +[MCManifest sharedManifest];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    allInstalledProfileIdentifiers = [v14 allInstalledProfileIdentifiers];
    v45 = [allInstalledProfileIdentifiers countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v45)
    {
      v16 = *v51;
      v38 = uUID;
      v39 = profile;
      v43 = identifier;
      v44 = v12;
      v36 = *v51;
      v37 = selfCopy;
      v41 = allInstalledProfileIdentifiers;
      v42 = v14;
      do
      {
        for (i = 0; i != v45; i = i + 1)
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(allInstalledProfileIdentifiers);
          }

          v18 = *(*(&v50 + 1) + 8 * i);
          if (([v18 isEqual:{identifier, v36, v37}] & 1) == 0)
          {
            v40 = v18;
            v19 = [v14 installedProfileWithIdentifier:v18];
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v20 = v12;
            v21 = [v20 countByEnumeratingWithState:&v46 objects:v58 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v47;
              while (2)
              {
                for (j = 0; j != v22; j = j + 1)
                {
                  if (*v47 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v46 + 1) + 8 * j);
                  v26 = [v19 payloadWithUUID:v25];
                  if (v26)
                  {
                    v27 = v26;
                    shouldHaveFullSSLTrust = [v19 shouldHaveFullSSLTrust];

                    if (shouldHaveFullSSLTrust)
                    {
                      v33 = _MCLogObjects[0];
                      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
                      {
                        *buf = 138543618;
                        v55 = v25;
                        v56 = 2114;
                        v57 = v40;
                        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Payload %{public}@ from profile %{public}@ has installed this root cert with full trust.", buf, 0x16u);
                      }

                      v34 = _MCLogObjects[0];
                      uUID = v38;
                      profile = v39;
                      identifier = v43;
                      v12 = v44;
                      v14 = v42;
                      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Root cert was installed with full trust, but other certs may have a full-trust dependency. Skipping restore of partial trust.", buf, 2u);
                      }

                      goto LABEL_37;
                    }
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v46 objects:v58 count:16];
                if (v22)
                {
                  continue;
                }

                break;
              }
            }

            identifier = v43;
            v12 = v44;
            v16 = v36;
            selfCopy = v37;
            allInstalledProfileIdentifiers = v41;
            v14 = v42;
          }
        }

        uUID = v38;
        profile = v39;
        v45 = [allInstalledProfileIdentifiers countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v45);
    }

    v29 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Root cert was installed with full trust, and no other certs have a full-trust dependency. Attempting to restore partial trust.", buf, 2u);
    }

    copyCertificate = [payload copyCertificate];
    if (copyCertificate)
    {
      v31 = copyCertificate;
      [(MCNewPlainCertificatePayloadHandler *)selfCopy _grantPartialNonSSLTrustPolicyForCertificate:copyCertificate];
      CFRelease(v31);
    }

LABEL_37:
  }

  else
  {
    v35 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "No other payloads are dependent on fully-trusted root cert that is about to be removed. Skipping restore of partial trust.", buf, 2u);
    }
  }

LABEL_41:
}

- (int)_grantPartialNonSSLTrustPolicyForCertificate:(__SecCertificate *)certificate
{
  CFRetain(certificate);
  SSL = SecPolicyCreateSSL(1u, 0);
  v5 = _MCLogObjects[0];
  if (SSL)
  {
    v6 = SSL;
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting partial trust policy for root cert.", &v13, 2u);
    }

    v17[0] = @"kSecTrustSettingsPolicy";
    v17[1] = @"kSecTrustSettingsResult";
    v18[0] = v6;
    v18[1] = &off_100127180;
    v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v19[0] = v7;
    v15 = @"kSecTrustSettingsResult";
    v16 = &off_100127198;
    v8 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v19[1] = v8;
    v9 = [NSArray arrayWithObjects:v19 count:2];

    SecTrustStoreForDomain();
    v10 = SecTrustStoreSetTrustSettings();
    if (v10)
    {
      v11 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v13 = 134217984;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to set partial trust policy for certificate: %ld", &v13, 0xCu);
      }
    }

    CFRelease(v6);
  }

  else
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to create partial trust policy for certificate.", &v13, 2u);
    }

    v10 = -50;
  }

  CFRelease(certificate);
  return v10;
}

- (id)_invalidPasscodeError
{
  payload = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  certificateFileName = [payload certificateFileName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9000 descriptionArray:v5 errorType:MCErrorTypeNeedsRetry, certificateFileName, 0];

  return v6;
}

- (id)_tooManyCertificatesError
{
  payload = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  certificateFileName = [payload certificateFileName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9001 descriptionArray:v5 errorType:MCErrorTypeFatal, certificateFileName, 0];

  return v6;
}

- (id)_cannotStoreCertificateError
{
  payload = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  certificateFileName = [payload certificateFileName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9002 descriptionArray:v5 errorType:MCErrorTypeFatal, certificateFileName, 0];

  return v6;
}

- (id)_cannotStoreRootCertificateError
{
  payload = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  certificateFileName = [payload certificateFileName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9004 descriptionArray:v5 errorType:MCErrorTypeFatal, certificateFileName, 0];

  return v6;
}

- (id)_malformedCertificateError
{
  payload = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  certificateFileName = [payload certificateFileName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9005 descriptionArray:v5 errorType:MCErrorTypeFatal, certificateFileName, 0];

  return v6;
}

- (__SecIdentity)copyIdentityImmediatelyWithInteractionClient:(id)client outError:(id *)error
{
  identity = self->_identity;
  if (!identity)
  {
    payload = [(MCNewPayloadHandler *)self payload];
    if ([payload dataEncoding] == 1)
    {
      userInputResponses = [(MCNewPayloadHandler *)self userInputResponses];
      password = [payload password];
      v11 = [MCNewPayloadHandler prioritizeUserInput:userInputResponses key:@"certificatePassword" overField:password];

      if (v11)
      {
        v23 = 0;
        v12 = [(MCNewPlainCertificatePayloadHandler *)self _copyContentsOfPKCS12DataWithPasscode:v11 outError:&v23];
        _invalidPasscodeError = v23;
        self->_identity = v12;
      }

      else
      {
        _invalidPasscodeError = [(MCNewPlainCertificatePayloadHandler *)self _invalidPasscodeError];
      }

      if (!_invalidPasscodeError)
      {
LABEL_13:
        v21 = self->_identity;
        if (v21)
        {
          CFRetain(v21);
          v6 = self->_identity;
LABEL_16:

          return v6;
        }

LABEL_15:
        v6 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v14 = MCCertificateErrorDomain;
      friendlyName = [payload friendlyName];
      v16 = MCErrorArray();
      _invalidPasscodeError = [NSError MCErrorWithDomain:v14 code:9006 descriptionArray:v16 errorType:MCErrorTypeFatal, friendlyName, 0];

      if (!_invalidPasscodeError)
      {
        goto LABEL_13;
      }
    }

    if (error)
    {
      v17 = _invalidPasscodeError;
      *error = _invalidPasscodeError;
    }

    v18 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      mCVerboseDescription = [_invalidPasscodeError MCVerboseDescription];
      *buf = 138543362;
      v25 = mCVerboseDescription;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Cannot copy identity: %{public}@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  CFRetain(identity);
  return self->_identity;
}

@end