@interface MCNewWAPIIdentityCertificatePayloadHandler
- (BOOL)_storePEMDataInKeychain:(id)keychain UUID:(id)d outError:(id *)error;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (id)_cannotStoreCertificateError;
- (id)_cannotStorePEMDataError;
- (id)_malformedCertificateError;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCNewWAPIIdentityCertificatePayloadHandler

- (id)_malformedCertificateError
{
  payload = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  friendlyName = [payload friendlyName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9005 descriptionArray:v5 errorType:MCErrorTypeFatal, friendlyName, 0];

  return v6;
}

- (id)_cannotStorePEMDataError
{
  payload = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  friendlyName = [payload friendlyName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9003 descriptionArray:v5 errorType:MCErrorTypeFatal, friendlyName, 0];

  return v6;
}

- (id)_cannotStoreCertificateError
{
  payload = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  friendlyName = [payload friendlyName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9002 descriptionArray:v5 errorType:MCErrorTypeFatal, friendlyName, 0];

  return v6;
}

- (BOOL)_storePEMDataInKeychain:(id)keychain UUID:(id)d outError:(id *)error
{
  keychainCopy = keychain;
  dCopy = d;
  v10 = [MCCrypto copyCertificateRefFromPEMData:keychainCopy];
  if (!v10)
  {
    _malformedCertificateError = [(MCNewWAPIIdentityCertificatePayloadHandler *)self _malformedCertificateError];
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v11 = v10;
  v12 = SecCertificateCopyData(v10);
  CFRelease(v11);
  if (v12)
  {
    v24[0] = @"pemData";
    v24[1] = @"certData";
    v25[0] = keychainCopy;
    v25[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    v14 = [NSPropertyListSerialization dataWithPropertyList:v13 format:200 options:0 error:0];
    if (v14)
    {
      v22 = v13;
      profileHandler = [(MCNewPayloadHandler *)self profileHandler];
      profile = [profileHandler profile];
      v23 = 0;
      v17 = +[MCKeychain setData:forService:account:label:description:useSystemKeychain:outError:](MCKeychain, "setData:forService:account:label:description:useSystemKeychain:outError:", v14, @"com.apple.managedconfiguration.wapi-identity", dCopy, 0, 0, [profile isInstalledForSystem], &v23);
      _malformedCertificateError = v23;

      if ((v17 & 1) == 0)
      {
        _cannotStorePEMDataError = [(MCNewWAPIIdentityCertificatePayloadHandler *)self _cannotStorePEMDataError];

        _malformedCertificateError = _cannotStorePEMDataError;
      }

      v13 = v22;
    }

    else
    {
      _malformedCertificateError = [(MCNewWAPIIdentityCertificatePayloadHandler *)self _malformedCertificateError];
    }
  }

  else
  {
    _malformedCertificateError = [(MCNewWAPIIdentityCertificatePayloadHandler *)self _malformedCertificateError];
  }

  if (error)
  {
LABEL_13:
    if (_malformedCertificateError)
    {
      v20 = _malformedCertificateError;
      *error = _malformedCertificateError;
    }
  }

LABEL_15:

  return _malformedCertificateError == 0;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  v8 = [(MCNewPayloadHandler *)self payload:installer];
  pemData = [v8 pemData];
  uUID = [v8 UUID];
  v26 = 0;
  [(MCNewWAPIIdentityCertificatePayloadHandler *)self _storePEMDataInKeychain:pemData UUID:uUID outError:&v26];
  _cannotStoreCertificateError = v26;

  if (!_cannotStoreCertificateError)
  {
    pemData2 = [v8 pemData];
    v13 = [MCCrypto copyCertificateRefFromPEMData:pemData2];

    if (v13)
    {
      accessibility = [(MCNewCertificatePayloadHandler *)self accessibility];
      v15 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = accessibility;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Storing WAPI certificate, storing with accessibility %@", buf, 0xCu);
      }

      uUID2 = [v8 UUID];
      v17 = kMCAppleIdentitiesKeychainGroup;
      profileHandler = [(MCNewPayloadHandler *)self profileHandler];
      profile = [profileHandler profile];
      v20 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v13, uUID2, v17, [profile isInstalledForSystem], -[MCNewCertificatePayloadHandler accessibility](self, "accessibility"));

      CFRelease(v13);
      if (v20)
      {
        uUID3 = [v8 UUID];
        [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v20 andUUID:uUID3];

        [v8 setCertificatePersistentID:v20];
        _cannotStoreCertificateError = 0;
      }

      else
      {
        _cannotStoreCertificateError = [(MCNewWAPIIdentityCertificatePayloadHandler *)self _cannotStoreCertificateError];
        uUID4 = [v8 UUID];
        profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
        profile2 = [profileHandler2 profile];
        +[MCKeychain removeItemForService:account:label:description:useSystemKeychain:group:](MCKeychain, "removeItemForService:account:label:description:useSystemKeychain:group:", @"com.apple.managedconfiguration.wapi-identity", uUID4, 0, 0, [profile2 isInstalledForSystem], 0);
      }
    }

    else
    {
      _cannotStoreCertificateError = [(MCNewWAPIIdentityCertificatePayloadHandler *)self _malformedCertificateError];
    }
  }

  if (error && _cannotStoreCertificateError)
  {
    *error = [_cannotStoreCertificateError MCCopyAsPrimaryError];
  }

  return _cannotStoreCertificateError == 0;
}

- (void)setAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  uUID = [payload UUID];
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  profile = [profileHandler profile];
  +[MCKeychain removeItemForService:account:label:description:useSystemKeychain:group:](MCKeychain, "removeItemForService:account:label:description:useSystemKeychain:group:", @"com.apple.managedconfiguration.wapi-identity", uUID, 0, 0, [profile isInstalledForSystem], 0);

  v7.receiver = self;
  v7.super_class = MCNewWAPIIdentityCertificatePayloadHandler;
  [(MCNewCertificatePayloadHandler *)&v7 setAside];
}

- (void)unsetAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  pemData = [payload pemData];
  uUID = [payload UUID];
  [(MCNewWAPIIdentityCertificatePayloadHandler *)self _storePEMDataInKeychain:pemData UUID:uUID outError:0];
}

- (void)remove
{
  payload = [(MCNewPayloadHandler *)self payload];
  v8.receiver = self;
  v8.super_class = MCNewWAPIIdentityCertificatePayloadHandler;
  if (![(MCNewCertificatePayloadHandler *)&v8 isSetAside])
  {
    uUID = [payload UUID];
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    profile = [profileHandler profile];
    +[MCKeychain removeItemForService:account:label:description:useSystemKeychain:group:](MCKeychain, "removeItemForService:account:label:description:useSystemKeychain:group:", @"com.apple.managedconfiguration.wapi-identity", uUID, 0, 0, [profile isInstalledForSystem], 0);
  }

  v7.receiver = self;
  v7.super_class = MCNewWAPIIdentityCertificatePayloadHandler;
  [(MCNewCertificatePayloadHandler *)&v7 remove];
}

@end