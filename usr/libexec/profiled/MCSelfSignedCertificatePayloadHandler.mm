@interface MCSelfSignedCertificatePayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (__SecIdentity)copyIdentityImmediatelyWithInteractionClient:(id)a3 outError:(id *)a4;
- (id)_createKeyPairType:(id)a3 size:(unint64_t)a4 hardwareBound:(BOOL)a5 outPublicKey:(__SecKey *)a6 outPrivateKey:(__SecKey *)a7;
- (id)generateSelfSignedCertificatePublicKey:(__SecKey *)a3 privateKey:(__SecKey *)a4 keyUsage:(unsigned int)a5 extendedKeyUsage:(id)a6 lifetime:(unint64_t)a7 outCert:(__SecCertificate *)a8;
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

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v8 = a5;
  v9 = [(MCNewPayloadHandler *)self payload];
  v27 = 0;
  v10 = [(MCSelfSignedCertificatePayloadHandler *)self copyIdentityImmediatelyWithInteractionClient:v8 outError:&v27];
  v11 = v27;
  if (!v11)
  {
    v26 = a6;
    v12 = [(MCNewCertificatePayloadHandler *)self accessibility];
    v13 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Storing self-signed identity with accessibility %@", buf, 0xCu);
    }

    v14 = [v9 UUID];
    v15 = kMCAppleIdentitiesKeychainGroup;
    v16 = [(MCNewPayloadHandler *)self profileHandler];
    v17 = [v16 profile];
    v18 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v10, v14, v15, [v17 isInstalledForSystem], v12);

    CFRelease(v10);
    if (v18)
    {
      v19 = [v9 UUID];
      [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v18 andUUID:v19];

      if (v8 && ([v8 didUpdateStatus:0] & 1) == 0)
      {
        v22 = [(MCNewPayloadHandler *)self profileHandler];
        v11 = [v22 userCancelledError];
      }

      else
      {
        v11 = 0;
      }

      [v9 setCertificatePersistentID:v18];
      v23 = [v9 UUID];
      [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v18 andUUID:v23];

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
      v11 = [NSError MCErrorWithDomain:v20 code:9002 descriptionArray:v21 errorType:MCErrorTypeFatal, 0];
    }

    a6 = v26;
  }

  if (a6 && v11)
  {
    *a6 = [v11 MCCopyAsPrimaryError];
  }

  return v11 == 0;
}

- (id)_createKeyPairType:(id)a3 size:(unint64_t)a4 hardwareBound:(BOOL)a5 outPublicKey:(__SecKey *)a6 outPrivateKey:(__SecKey *)a7
{
  v9 = a5;
  v11 = a3;
  error = 0;
  v12 = [NSMutableDictionary dictionaryWithCapacity:3];
  if ([v11 isEqualToString:kMCSSCKeyTypeRSA])
  {
    v13 = &kSecAttrKeyTypeRSA;
  }

  else
  {
    if (![v11 isEqualToString:kMCSSCKeyTypeECSECPrimeRandom])
    {
      goto LABEL_6;
    }

    v13 = &kSecAttrKeyTypeECSECPrimeRandom;
  }

  [v12 setObject:*v13 forKeyedSubscript:kSecAttrKeyType];
LABEL_6:
  v14 = [NSNumber numberWithUnsignedInteger:a4];
  [v12 setObject:v14 forKeyedSubscript:kSecAttrKeySizeInBits];

  if (v9)
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

  if (a6)
  {
    *a6 = v17;
  }

  else if (v17)
  {
    CFRelease(v17);
  }

  if (a7)
  {
    *a7 = v16;
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

- (id)generateSelfSignedCertificatePublicKey:(__SecKey *)a3 privateKey:(__SecKey *)a4 keyUsage:(unsigned int)a5 extendedKeyUsage:(id)a6 lifetime:(unint64_t)a7 outCert:(__SecCertificate *)a8
{
  v9 = kSecOidCommonName;
  v34[0] = kSecOidCommonName;
  v31 = a6;
  v10 = [(MCNewPayloadHandler *)self payload];
  v11 = [v10 identifier];
  v34[1] = v11;
  v12 = [NSArray arrayWithObjects:v34 count:2];
  v35 = v12;
  v13 = [NSArray arrayWithObjects:&v35 count:1];
  v36[0] = v13;
  v32[0] = v9;
  v14 = [(MCNewPayloadHandler *)self profileHandler];
  v15 = [v14 profile];
  v16 = [v15 identifier];
  v32[1] = v16;
  v17 = [NSArray arrayWithObjects:v32 count:2];
  v33 = v17;
  v18 = [NSArray arrayWithObjects:&v33 count:1];
  v36[1] = v18;
  v19 = [NSArray arrayWithObjects:v36 count:2];

  v20 = [NSMutableDictionary dictionaryWithCapacity:3];
  v21 = [NSNumber numberWithUnsignedInt:a5];
  [v20 setObject:v21 forKeyedSubscript:kSecCertificateKeyUsage];

  v22 = [NSNumber numberWithUnsignedInteger:a7];
  [v20 setObject:v22 forKeyedSubscript:kSecCertificateLifetime];

  [v20 setObject:v31 forKeyedSubscript:kSecCertificateExtendedKeyUsage];
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (SelfSignedCertificate)
  {
    if (a8)
    {
      v24 = 0;
      *a8 = SelfSignedCertificate;
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

- (__SecIdentity)copyIdentityImmediatelyWithInteractionClient:(id)a3 outError:(id *)a4
{
  v6 = a3;
  identity = self->_identity;
  if (!identity)
  {
    v9 = [(MCNewPayloadHandler *)self payload];
    v38 = 0;
    cf = 0;
    v37 = 0;
    if (v6)
    {
      v10 = MCLocalizedString();
      v11 = [v6 didUpdateStatus:v10];

      if ((v11 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v12 = [v9 keyType];
    v13 = -[MCSelfSignedCertificatePayloadHandler _createKeyPairType:size:hardwareBound:outPublicKey:outPrivateKey:](self, "_createKeyPairType:size:hardwareBound:outPublicKey:outPrivateKey:", v12, [v9 keySize], objc_msgSend(v9, "isHardwareBound"), &v38, &v37);

    if (v13)
    {
      v14 = MCSelfSignedCertificateErrorDomain;
      v15 = MCErrorArray();
      v16 = MCErrorTypeFatal;
      v17 = v14;
      v18 = 59000;
LABEL_11:
      v26 = [NSError MCErrorWithDomain:v17 code:v18 descriptionArray:v15 underlyingError:v13 errorType:v16, 0];

      goto LABEL_13;
    }

    if (v6 && (MCLocalizedString(), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v6 didUpdateStatus:v19], v19, (v20 & 1) == 0))
    {
LABEL_12:
      v27 = [(MCNewPayloadHandler *)self profileHandler];
      v26 = [v27 userCancelledError];
    }

    else
    {
      v22 = v37;
      v21 = v38;
      v23 = [v9 keyUsage];
      v24 = [v9 extendedKeyUsage];
      v13 = -[MCSelfSignedCertificatePayloadHandler generateSelfSignedCertificatePublicKey:privateKey:keyUsage:extendedKeyUsage:lifetime:outCert:](self, "generateSelfSignedCertificatePublicKey:privateKey:keyUsage:extendedKeyUsage:lifetime:outCert:", v21, v22, v23, v24, [v9 lifetime], &cf);

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
        v26 = 0;
      }

      else
      {
        v35 = MCSelfSignedCertificateErrorDomain;
        v36 = MCErrorArray();
        v26 = [NSError MCErrorWithDomain:v35 code:59003 descriptionArray:v36 errorType:MCErrorTypeFatal, 0];
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

    if (v6)
    {
      [v6 didUpdateStatus:0];
    }

    if (v26)
    {
      if (a4)
      {
        v28 = v26;
        *a4 = v26;
      }

      v29 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v30 = v29;
        v31 = [v26 MCVerboseDescription];
        *buf = 138543362;
        v41 = v31;
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