@interface MCNewWAPIIdentityCertificatePayloadHandler
- (BOOL)_storePEMDataInKeychain:(id)a3 UUID:(id)a4 outError:(id *)a5;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
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
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  v4 = [v2 friendlyName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9005 descriptionArray:v5 errorType:MCErrorTypeFatal, v4, 0];

  return v6;
}

- (id)_cannotStorePEMDataError
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  v4 = [v2 friendlyName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9003 descriptionArray:v5 errorType:MCErrorTypeFatal, v4, 0];

  return v6;
}

- (id)_cannotStoreCertificateError
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = MCCertificateErrorDomain;
  v4 = [v2 friendlyName];
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:9002 descriptionArray:v5 errorType:MCErrorTypeFatal, v4, 0];

  return v6;
}

- (BOOL)_storePEMDataInKeychain:(id)a3 UUID:(id)a4 outError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MCCrypto copyCertificateRefFromPEMData:v8];
  if (!v10)
  {
    v18 = [(MCNewWAPIIdentityCertificatePayloadHandler *)self _malformedCertificateError];
    if (!a5)
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
    v25[0] = v8;
    v25[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    v14 = [NSPropertyListSerialization dataWithPropertyList:v13 format:200 options:0 error:0];
    if (v14)
    {
      v22 = v13;
      v15 = [(MCNewPayloadHandler *)self profileHandler];
      v16 = [v15 profile];
      v23 = 0;
      v17 = +[MCKeychain setData:forService:account:label:description:useSystemKeychain:outError:](MCKeychain, "setData:forService:account:label:description:useSystemKeychain:outError:", v14, @"com.apple.managedconfiguration.wapi-identity", v9, 0, 0, [v16 isInstalledForSystem], &v23);
      v18 = v23;

      if ((v17 & 1) == 0)
      {
        v19 = [(MCNewWAPIIdentityCertificatePayloadHandler *)self _cannotStorePEMDataError];

        v18 = v19;
      }

      v13 = v22;
    }

    else
    {
      v18 = [(MCNewWAPIIdentityCertificatePayloadHandler *)self _malformedCertificateError];
    }
  }

  else
  {
    v18 = [(MCNewWAPIIdentityCertificatePayloadHandler *)self _malformedCertificateError];
  }

  if (a5)
  {
LABEL_13:
    if (v18)
    {
      v20 = v18;
      *a5 = v18;
    }
  }

LABEL_15:

  return v18 == 0;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v8 = [(MCNewPayloadHandler *)self payload:a3];
  v9 = [v8 pemData];
  v10 = [v8 UUID];
  v26 = 0;
  [(MCNewWAPIIdentityCertificatePayloadHandler *)self _storePEMDataInKeychain:v9 UUID:v10 outError:&v26];
  v11 = v26;

  if (!v11)
  {
    v12 = [v8 pemData];
    v13 = [MCCrypto copyCertificateRefFromPEMData:v12];

    if (v13)
    {
      v14 = [(MCNewCertificatePayloadHandler *)self accessibility];
      v15 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Storing WAPI certificate, storing with accessibility %@", buf, 0xCu);
      }

      v16 = [v8 UUID];
      v17 = kMCAppleIdentitiesKeychainGroup;
      v18 = [(MCNewPayloadHandler *)self profileHandler];
      v19 = [v18 profile];
      v20 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v13, v16, v17, [v19 isInstalledForSystem], -[MCNewCertificatePayloadHandler accessibility](self, "accessibility"));

      CFRelease(v13);
      if (v20)
      {
        v21 = [v8 UUID];
        [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v20 andUUID:v21];

        [v8 setCertificatePersistentID:v20];
        v11 = 0;
      }

      else
      {
        v11 = [(MCNewWAPIIdentityCertificatePayloadHandler *)self _cannotStoreCertificateError];
        v22 = [v8 UUID];
        v23 = [(MCNewPayloadHandler *)self profileHandler];
        v24 = [v23 profile];
        +[MCKeychain removeItemForService:account:label:description:useSystemKeychain:group:](MCKeychain, "removeItemForService:account:label:description:useSystemKeychain:group:", @"com.apple.managedconfiguration.wapi-identity", v22, 0, 0, [v24 isInstalledForSystem], 0);
      }
    }

    else
    {
      v11 = [(MCNewWAPIIdentityCertificatePayloadHandler *)self _malformedCertificateError];
    }
  }

  if (a6 && v11)
  {
    *a6 = [v11 MCCopyAsPrimaryError];
  }

  return v11 == 0;
}

- (void)setAside
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 UUID];
  v5 = [(MCNewPayloadHandler *)self profileHandler];
  v6 = [v5 profile];
  +[MCKeychain removeItemForService:account:label:description:useSystemKeychain:group:](MCKeychain, "removeItemForService:account:label:description:useSystemKeychain:group:", @"com.apple.managedconfiguration.wapi-identity", v4, 0, 0, [v6 isInstalledForSystem], 0);

  v7.receiver = self;
  v7.super_class = MCNewWAPIIdentityCertificatePayloadHandler;
  [(MCNewCertificatePayloadHandler *)&v7 setAside];
}

- (void)unsetAside
{
  v5 = [(MCNewPayloadHandler *)self payload];
  v3 = [v5 pemData];
  v4 = [v5 UUID];
  [(MCNewWAPIIdentityCertificatePayloadHandler *)self _storePEMDataInKeychain:v3 UUID:v4 outError:0];
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v8.receiver = self;
  v8.super_class = MCNewWAPIIdentityCertificatePayloadHandler;
  if (![(MCNewCertificatePayloadHandler *)&v8 isSetAside])
  {
    v4 = [v3 UUID];
    v5 = [(MCNewPayloadHandler *)self profileHandler];
    v6 = [v5 profile];
    +[MCKeychain removeItemForService:account:label:description:useSystemKeychain:group:](MCKeychain, "removeItemForService:account:label:description:useSystemKeychain:group:", @"com.apple.managedconfiguration.wapi-identity", v4, 0, 0, [v6 isInstalledForSystem], 0);
  }

  v7.receiver = self;
  v7.super_class = MCNewWAPIIdentityCertificatePayloadHandler;
  [(MCNewCertificatePayloadHandler *)&v7 remove];
}

@end