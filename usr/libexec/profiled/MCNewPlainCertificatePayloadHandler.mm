@interface MCNewPlainCertificatePayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4;
- (__SecIdentity)_copyContentsOfPKCS12DataWithPasscode:(id)a3 outError:(id *)a4;
- (__SecIdentity)copyIdentityImmediatelyWithInteractionClient:(id)a3 outError:(id *)a4;
- (id)_cannotStoreCertificateError;
- (id)_cannotStoreRootCertificateError;
- (id)_invalidPasscodeError;
- (id)_malformedCertificateError;
- (id)_storeCertificate:(__SecCertificate *)a3 allowSSLTrust:(BOOL)a4 outError:(id *)a5;
- (id)_tooManyCertificatesError;
- (id)userInputFields;
- (int)_grantPartialNonSSLTrustPolicyForCertificate:(__SecCertificate *)a3;
- (void)_revertFullSSLTrustIfNeeded;
- (void)dealloc;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCNewPlainCertificatePayloadHandler

- (id)userInputFields
{
  v2 = [(MCNewPayloadHandler *)self payload];
  if ([v2 dataEncoding] == 1)
  {
    v3 = +[NSMutableArray array];
    v4 = [v2 password];
    v5 = [v4 length];

    if (!v5)
    {
      v6 = MCLocalizedString();
      v7 = [v2 certificateFileName];
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

- (__SecIdentity)_copyContentsOfPKCS12DataWithPasscode:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [(MCNewPayloadHandler *)self payload];
  theArray = 0;
  if (v6)
  {
    v17 = kSecImportExportPassphrase;
    v18 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    if (SecPKCS12Import([v7 certificateData], v8, &theArray))
    {
      v9 = [(MCNewPlainCertificatePayloadHandler *)self _invalidPasscodeError];
    }

    else
    {
      if (CFArrayGetCount(theArray) == 1)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v9 = [(MCNewPlainCertificatePayloadHandler *)self _tooManyCertificatesError];
    }

    v10 = v9;
LABEL_10:

    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v10 = [(MCNewPlainCertificatePayloadHandler *)self _invalidPasscodeError];
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    *a4 = v10;
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

- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [(MCNewPayloadHandler *)self payload];
  if ([v7 dataEncoding] == 1)
  {
    v8 = [v7 password];
    v9 = [MCNewPayloadHandler prioritizeUserInput:v6 key:@"certificatePassword" overField:v8];

    v15 = 0;
    v10 = [(MCNewPlainCertificatePayloadHandler *)self _copyContentsOfPKCS12DataWithPasscode:v9 outError:&v15];
    v11 = v15;
    if (v10)
    {
      CFRelease(v10);
    }

    v12 = v11 == 0;
    if (a4 && v11)
    {
      v13 = v11;
      *a4 = v11;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (id)_storeCertificate:(__SecCertificate *)a3 allowSSLTrust:(BOOL)a4 outError:(id *)a5
{
  v6 = a4;
  v8 = [(MCNewPayloadHandler *)self payload];
  v9 = [(MCNewCertificatePayloadHandler *)self accessibility];
  v10 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v70 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Storing certificate, storing with accessibility %@", buf, 0xCu);
  }

  v11 = [v8 UUID];
  v12 = kMCAppleCertificatesKeychainGroup;
  v13 = [(MCNewPayloadHandler *)self profileHandler];
  v14 = [v13 profile];
  v15 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", a3, v11, v12, [v14 isInstalledForSystem], v9);

  v56 = v8;
  if (!v15)
  {
    v18 = [(MCNewPlainCertificatePayloadHandler *)self _cannotStoreCertificateError];
    goto LABEL_10;
  }

  v16 = [v8 UUID];
  [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v15 andUUID:v16];

  [v8 setCertificatePersistentID:v15];
  v17 = a3;
  if (([v8 isFullyTrustedRootCert] & 1) == 0 && SecCertificateIsSelfSignedCA())
  {
    if (v6)
    {
      SecTrustStoreForDomain();
      if (SecTrustStoreSetTrustSettings())
      {
LABEL_8:
        v18 = [(MCNewPlainCertificatePayloadHandler *)self _cannotStoreRootCertificateError];
LABEL_10:
        v19 = v18;
        if (!v18)
        {
          goto LABEL_56;
        }

        if (a5)
        {
          v20 = v18;
          v21 = 0;
          *a5 = v19;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_57;
      }
    }

    else if ([(MCNewPlainCertificatePayloadHandler *)self _grantPartialNonSSLTrustPolicyForCertificate:a3])
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
        if (SecTrustCreateWithCertificates(v17, v29, &trust))
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

        v35 = [v34 MCHexString];
        v36 = [NSString stringWithFormat:@"S/MIME: %@ - %@", v28, v35];

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
            v17 = a3;
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

              v51 = [MFMessageKeychainManager saveEncryptionCertificate:a3 forAddress:v28];
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

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = [(MCNewPayloadHandler *)self payload];
  v12 = [v11 UUID];
  if ([v11 dataEncoding] != 1)
  {
    if ([v11 dataEncoding])
    {
      v14 = [(MCNewPlainCertificatePayloadHandler *)self _malformedCertificateError];
      v20 = 0;
LABEL_13:
      [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v20 andUUID:v12];

      goto LABEL_14;
    }

    v33 = a6;
    v22 = [v11 certificateData];
    v23 = [MCCrypto copyCertificateRefFromPKCS1Data:v22];

    if (v23 || ([v11 certificateData], v24 = objc_claimAutoreleasedReturnValue(), v23 = +[MCCrypto copyCertificateRefFromPEMData:](MCCrypto, "copyCertificateRefFromPEMData:", v24), v24, v23))
    {
      v25 = [v9 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
      v26 = [v25 BOOLValue];

      v27 = [v11 profile];
      v28 = [v27 containsPayloadOfClass:objc_opt_class()];

      v34 = 0;
      v20 = [(MCNewPlainCertificatePayloadHandler *)self _storeCertificate:v23 allowSSLTrust:(v10 == 0) | v28 & 1 | v26 & 1u outError:&v34];
      v14 = v34;
      CFRelease(v23);
      if (v20)
      {
        [v11 setCertificatePersistentID:v20];
        a6 = v33;
        goto LABEL_13;
      }

      v30 = [(MCNewPlainCertificatePayloadHandler *)self _cannotStoreCertificateError];

      v14 = v30;
    }

    else
    {
      v14 = [(MCNewPlainCertificatePayloadHandler *)self _malformedCertificateError];
    }

    a6 = v33;
    goto LABEL_14;
  }

  v35 = 0;
  v13 = [(MCNewPlainCertificatePayloadHandler *)self copyIdentityImmediatelyWithInteractionClient:v10 outError:&v35];
  v14 = v35;
  if (!v14)
  {
    v31 = v9;
    v32 = a6;
    v15 = [(MCNewCertificatePayloadHandler *)self accessibility];
    v16 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Storing identity, storing with accessibility %@", buf, 0xCu);
    }

    v17 = kMCAppleIdentitiesKeychainGroup;
    v18 = [(MCNewPayloadHandler *)self profileHandler];
    v19 = [v18 profile];
    v20 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v13, v12, v17, [v19 isInstalledForSystem], -[MCNewCertificatePayloadHandler accessibility](self, "accessibility"));

    if (!v20)
    {
      CFRelease(v13);
      v14 = [(MCNewPlainCertificatePayloadHandler *)self _cannotStoreCertificateError];
      v9 = v31;
      a6 = v32;
      goto LABEL_14;
    }

    [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v20 andUUID:v12];
    [v11 setCertificatePersistentID:v20];
    *buf = 0;
    SecIdentityCopyCertificate(v13, buf);
    v21 = SecCertificateCopySubjectSummary(*buf);
    CFRelease(v13);
    CFRelease(*buf);
    [v11 setDisplayName:v21];

    v14 = 0;
    v9 = v31;
    a6 = v32;
    goto LABEL_13;
  }

LABEL_14:
  if (a6 && v14)
  {
    *a6 = [v14 MCCopyAsPrimaryError];
  }

  return v14 == 0;
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
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 profile];
  if ([v4 shouldHaveFullSSLTrust] && objc_msgSend(v3, "isRoot"))
  {
    v5 = [v3 copyCertificate];
    if (v5)
    {
      v6 = v5;
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
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if ((v4 & 1) == 0)
  {
    [(MCNewPlainCertificatePayloadHandler *)self _revertFullSSLTrustIfNeeded];
  }

  v5.receiver = self;
  v5.super_class = MCNewPlainCertificatePayloadHandler;
  [(MCNewCertificatePayloadHandler *)&v5 remove];
}

- (void)_revertFullSSLTrustIfNeeded
{
  v2 = self;
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 profile];
  if (![v4 shouldHaveFullSSLTrust])
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

  v5 = [v3 isFullyTrustedRootCert];
  v6 = _MCLogObjects[0];
  v7 = os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO);
  if (!v5)
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

  v8 = [v3 UUID];
  v9 = +[MCDependencyManager sharedManager];
  v10 = [v3 persistentResourceID];
  v11 = [v9 dependentsOfParent:v10 inDomain:kMCDMCertificateToPayloadUUIDDependencyKey];
  v12 = [v11 mutableCopy];

  [v12 removeObject:v8];
  if ([v12 count])
  {
    v13 = [v4 identifier];
    v14 = +[MCManifest sharedManifest];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v15 = [v14 allInstalledProfileIdentifiers];
    v45 = [v15 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v45)
    {
      v16 = *v51;
      v38 = v8;
      v39 = v4;
      v43 = v13;
      v44 = v12;
      v36 = *v51;
      v37 = v2;
      v41 = v15;
      v42 = v14;
      do
      {
        for (i = 0; i != v45; i = i + 1)
        {
          if (*v51 != v16)
          {
            objc_enumerationMutation(v15);
          }

          v18 = *(*(&v50 + 1) + 8 * i);
          if (([v18 isEqual:{v13, v36, v37}] & 1) == 0)
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
                    v28 = [v19 shouldHaveFullSSLTrust];

                    if (v28)
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
                      v8 = v38;
                      v4 = v39;
                      v13 = v43;
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

            v13 = v43;
            v12 = v44;
            v16 = v36;
            v2 = v37;
            v15 = v41;
            v14 = v42;
          }
        }

        v8 = v38;
        v4 = v39;
        v45 = [v15 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v45);
    }

    v29 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Root cert was installed with full trust, and no other certs have a full-trust dependency. Attempting to restore partial trust.", buf, 2u);
    }

    v30 = [v3 copyCertificate];
    if (v30)
    {
      v31 = v30;
      [(MCNewPlainCertificatePayloadHandler *)v2 _grantPartialNonSSLTrustPolicyForCertificate:v30];
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

- (int)_grantPartialNonSSLTrustPolicyForCertificate:(__SecCertificate *)a3
{
  CFRetain(a3);
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

  CFRelease(a3);
  return v10;
}

- (id)_invalidPasscodeError
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  v4 = [v2 certificateFileName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9000 descriptionArray:v5 errorType:MCErrorTypeNeedsRetry, v4, 0];

  return v6;
}

- (id)_tooManyCertificatesError
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  v4 = [v2 certificateFileName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9001 descriptionArray:v5 errorType:MCErrorTypeFatal, v4, 0];

  return v6;
}

- (id)_cannotStoreCertificateError
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  v4 = [v2 certificateFileName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9002 descriptionArray:v5 errorType:MCErrorTypeFatal, v4, 0];

  return v6;
}

- (id)_cannotStoreRootCertificateError
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  v4 = [v2 certificateFileName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9004 descriptionArray:v5 errorType:MCErrorTypeFatal, v4, 0];

  return v6;
}

- (id)_malformedCertificateError
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  v4 = [v2 certificateFileName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9005 descriptionArray:v5 errorType:MCErrorTypeFatal, v4, 0];

  return v6;
}

- (__SecIdentity)copyIdentityImmediatelyWithInteractionClient:(id)a3 outError:(id *)a4
{
  identity = self->_identity;
  if (!identity)
  {
    v8 = [(MCNewPayloadHandler *)self payload];
    if ([v8 dataEncoding] == 1)
    {
      v9 = [(MCNewPayloadHandler *)self userInputResponses];
      v10 = [v8 password];
      v11 = [MCNewPayloadHandler prioritizeUserInput:v9 key:@"certificatePassword" overField:v10];

      if (v11)
      {
        v23 = 0;
        v12 = [(MCNewPlainCertificatePayloadHandler *)self _copyContentsOfPKCS12DataWithPasscode:v11 outError:&v23];
        v13 = v23;
        self->_identity = v12;
      }

      else
      {
        v13 = [(MCNewPlainCertificatePayloadHandler *)self _invalidPasscodeError];
      }

      if (!v13)
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
      v15 = [v8 friendlyName];
      v16 = MCErrorArray();
      v13 = [NSError MCErrorWithDomain:v14 code:9006 descriptionArray:v16 errorType:MCErrorTypeFatal, v15, 0];

      if (!v13)
      {
        goto LABEL_13;
      }
    }

    if (a4)
    {
      v17 = v13;
      *a4 = v13;
    }

    v18 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = [v13 MCVerboseDescription];
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Cannot copy identity: %{public}@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  CFRetain(identity);
  return self->_identity;
}

@end