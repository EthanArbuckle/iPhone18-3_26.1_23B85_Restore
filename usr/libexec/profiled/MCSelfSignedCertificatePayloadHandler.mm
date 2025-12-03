@interface MCSelfSignedCertificatePayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (__SecIdentity)copyIdentityImmediatelyWithInteractionClient:(id)client outError:(id *)error;
- (id)_createKeyPairType:(id)type size:(unint64_t)size hardwareBound:(BOOL)bound outPublicKey:(__SecKey *)key outPrivateKey:(__SecKey *)privateKey;
- (id)generateSelfSignedCertificatePublicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey keyUsage:(unsigned int)usage extendedKeyUsage:(id)keyUsage lifetime:(unint64_t)lifetime outCert:(__SecCertificate *)cert;
- (void)dealloc;
@end

@implementation MCSelfSignedCertificatePayloadHandler

- (void)dealloc
{
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  v4.receiver = self;
  v4.super_class = MCSelfSignedCertificatePayloadHandler;
  [(MCSelfSignedCertificatePayloadHandler *)&v4 dealloc];
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  clientCopy = client;
  payload = [(MCNewPayloadHandler *)self payload];
  v27 = 0;
  v10 = [(MCSelfSignedCertificatePayloadHandler *)self copyIdentityImmediatelyWithInteractionClient:clientCopy outError:&v27];
  userCancelledError = v27;
  if (!userCancelledError)
  {
    errorCopy = error;
    accessibility = [(MCNewCertificatePayloadHandler *)self accessibility];
    v13 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = accessibility;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Storing self-signed identity with accessibility %@", buf, 0xCu);
    }

    uUID = [payload UUID];
    v15 = kMCAppleIdentitiesKeychainGroup;
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    profile = [profileHandler profile];
    v18 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v10, uUID, v15, [profile isInstalledForSystem], accessibility);

    CFRelease(v10);
    if (v18)
    {
      uUID2 = [payload UUID];
      [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v18 andUUID:uUID2];

      if (clientCopy && ([clientCopy didUpdateStatus:0] & 1) == 0)
      {
        profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
        userCancelledError = [profileHandler2 userCancelledError];
      }

      else
      {
        userCancelledError = 0;
      }

      [payload setCertificatePersistentID:v18];
      uUID3 = [payload UUID];
      [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v18 andUUID:uUID3];

      v24 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Successfully installed certificate.", buf, 2u);
      }
    }

    else
    {
      v20 = MCCertificateErrorDomain;
      v21 = MCErrorArray();
      userCancelledError = [NSError MCErrorWithDomain:v20 code:9002 descriptionArray:v21 errorType:MCErrorTypeFatal, 0];
    }

    error = errorCopy;
  }

  if (error && userCancelledError)
  {
    *error = [userCancelledError MCCopyAsPrimaryError];
  }

  return userCancelledError == 0;
}

- (id)_createKeyPairType:(id)type size:(unint64_t)size hardwareBound:(BOOL)bound outPublicKey:(__SecKey *)key outPrivateKey:(__SecKey *)privateKey
{
  boundCopy = bound;
  typeCopy = type;
  error = 0;
  v12 = [NSMutableDictionary dictionaryWithCapacity:3];
  if ([typeCopy isEqualToString:kMCSSCKeyTypeRSA])
  {
    v13 = &kSecAttrKeyTypeRSA;
  }

  else
  {
    if (![typeCopy isEqualToString:kMCSSCKeyTypeECSECPrimeRandom])
    {
      goto LABEL_6;
    }

    v13 = &kSecAttrKeyTypeECSECPrimeRandom;
  }

  [v12 setObject:*v13 forKeyedSubscript:kSecAttrKeyType];
LABEL_6:
  v14 = [NSNumber numberWithUnsignedInteger:size];
  [v12 setObject:v14 forKeyedSubscript:kSecAttrKeySizeInBits];

  if (boundCopy)
  {
    [v12 setObject:kSecAttrTokenIDSecureEnclave forKeyedSubscript:kSecAttrTokenID];
  }

  v15 = SecKeyCreateRandomKey(v12, &error);
  v16 = v15;
  if (error)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v17 = SecKeyCopyPublicKey(v15);
  if (!v17)
  {
    v18 = MCSelfSignedCertificateErrorDomain;
    v19 = MCErrorArray();
    error = [NSError MCErrorWithDomain:v18 code:59001 descriptionArray:v19 errorType:MCErrorTypeFatal, 0];
  }

  if (error)
  {
LABEL_13:
    if (v16)
    {
      CFRelease(v16);
    }

    if (v17)
    {
      v20 = v17;
LABEL_17:
      CFRelease(v20);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (key)
  {
    *key = v17;
  }

  else if (v17)
  {
    CFRelease(v17);
  }

  if (privateKey)
  {
    *privateKey = v16;
  }

  else if (v16)
  {
    v20 = v16;
    goto LABEL_17;
  }

LABEL_18:
  v21 = error;

  return v21;
}

- (id)generateSelfSignedCertificatePublicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey keyUsage:(unsigned int)usage extendedKeyUsage:(id)keyUsage lifetime:(unint64_t)lifetime outCert:(__SecCertificate *)cert
{
  v9 = kSecOidCommonName;
  v34[0] = kSecOidCommonName;
  keyUsageCopy = keyUsage;
  payload = [(MCNewPayloadHandler *)self payload];
  identifier = [payload identifier];
  v34[1] = identifier;
  v12 = [NSArray arrayWithObjects:v34 count:2];
  v35 = v12;
  v13 = [NSArray arrayWithObjects:&v35 count:1];
  v36[0] = v13;
  v32[0] = v9;
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  profile = [profileHandler profile];
  identifier2 = [profile identifier];
  v32[1] = identifier2;
  v17 = [NSArray arrayWithObjects:v32 count:2];
  v33 = v17;
  v18 = [NSArray arrayWithObjects:&v33 count:1];
  v36[1] = v18;
  v19 = [NSArray arrayWithObjects:v36 count:2];

  v20 = [NSMutableDictionary dictionaryWithCapacity:3];
  v21 = [NSNumber numberWithUnsignedInt:usage];
  [v20 setObject:v21 forKeyedSubscript:kSecCertificateKeyUsage];

  v22 = [NSNumber numberWithUnsignedInteger:lifetime];
  [v20 setObject:v22 forKeyedSubscript:kSecCertificateLifetime];

  [v20 setObject:keyUsageCopy forKeyedSubscript:kSecCertificateExtendedKeyUsage];
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (SelfSignedCertificate)
  {
    if (cert)
    {
      v24 = 0;
      *cert = SelfSignedCertificate;
    }

    else
    {
      CFRelease(SelfSignedCertificate);
      v24 = 0;
    }
  }

  else
  {
    v25 = MCSelfSignedCertificateErrorDomain;
    v26 = MCErrorArray();
    v24 = [NSError MCErrorWithDomain:v25 code:59002 descriptionArray:v26 errorType:MCErrorTypeFatal, 0];
  }

  return v24;
}

- (__SecIdentity)copyIdentityImmediatelyWithInteractionClient:(id)client outError:(id *)error
{
  clientCopy = client;
  identity = self->_identity;
  if (!identity)
  {
    payload = [(MCNewPayloadHandler *)self payload];
    v38 = 0;
    cf = 0;
    v37 = 0;
    if (clientCopy)
    {
      v10 = MCLocalizedString();
      v11 = [clientCopy didUpdateStatus:v10];

      if ((v11 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    keyType = [payload keyType];
    v13 = -[MCSelfSignedCertificatePayloadHandler _createKeyPairType:size:hardwareBound:outPublicKey:outPrivateKey:](self, "_createKeyPairType:size:hardwareBound:outPublicKey:outPrivateKey:", keyType, [payload keySize], objc_msgSend(payload, "isHardwareBound"), &v38, &v37);

    if (v13)
    {
      v14 = MCSelfSignedCertificateErrorDomain;
      v15 = MCErrorArray();
      v16 = MCErrorTypeFatal;
      v17 = v14;
      v18 = 59000;
LABEL_11:
      userCancelledError = [NSError MCErrorWithDomain:v17 code:v18 descriptionArray:v15 underlyingError:v13 errorType:v16, 0];

      goto LABEL_13;
    }

    if (clientCopy && (MCLocalizedString(), v19 = objc_claimAutoreleasedReturnValue(), v20 = [clientCopy didUpdateStatus:v19], v19, (v20 & 1) == 0))
    {
LABEL_12:
      profileHandler = [(MCNewPayloadHandler *)self profileHandler];
      userCancelledError = [profileHandler userCancelledError];
    }

    else
    {
      v22 = v37;
      v21 = v38;
      keyUsage = [payload keyUsage];
      extendedKeyUsage = [payload extendedKeyUsage];
      v13 = -[MCSelfSignedCertificatePayloadHandler generateSelfSignedCertificatePublicKey:privateKey:keyUsage:extendedKeyUsage:lifetime:outCert:](self, "generateSelfSignedCertificatePublicKey:privateKey:keyUsage:extendedKeyUsage:lifetime:outCert:", v21, v22, keyUsage, extendedKeyUsage, [payload lifetime], &cf);

      if (v13)
      {
        v25 = MCSelfSignedCertificateErrorDomain;
        v15 = MCErrorArray();
        v16 = MCErrorTypeFatal;
        v17 = v25;
        v18 = 59002;
        goto LABEL_11;
      }

      v34 = SecIdentityCreate();
      self->_identity = v34;
      if (v34)
      {
        userCancelledError = 0;
      }

      else
      {
        v35 = MCSelfSignedCertificateErrorDomain;
        v36 = MCErrorArray();
        userCancelledError = [NSError MCErrorWithDomain:v35 code:59003 descriptionArray:v36 errorType:MCErrorTypeFatal, 0];
      }
    }

LABEL_13:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    if (clientCopy)
    {
      [clientCopy didUpdateStatus:0];
    }

    if (userCancelledError)
    {
      if (error)
      {
        v28 = userCancelledError;
        *error = userCancelledError;
      }

      v29 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v30 = v29;
        mCVerboseDescription = [userCancelledError MCVerboseDescription];
        *buf = 138543362;
        v41 = mCVerboseDescription;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Cannot generate self-signed certificate: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v32 = self->_identity;
      if (v32)
      {
        CFRetain(v32);
        v8 = self->_identity;
LABEL_29:

        goto LABEL_30;
      }
    }

    v8 = 0;
    goto LABEL_29;
  }

  CFRetain(identity);
  v8 = self->_identity;
LABEL_30:

  return v8;
}

@end