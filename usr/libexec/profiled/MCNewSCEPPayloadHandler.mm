@interface MCNewSCEPPayloadHandler
+ (id)atsOverrideDataWithInsecureHTTPForHost:(id)a3 fromATSOverrideData:(id)a4;
+ (id)mutableATSExceptionInExceptionDomains:(id)a3 matchingHost:(id)a4;
+ (void)allowInsecureHTTPLoadsOfURL:(id)a3 forConfiguration:(id)a4;
- (BOOL)_createKeyPairLength:(unint64_t)a3 outPublicKey:(__SecKey *)a4 outPrivateKey:(__SecKey *)a5;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (__SecIdentity)copyIdentityImmediatelyWithInteractionClient:(id)a3 outError:(id *)a4;
- (id)_SCEPOperationURLWithBaseURLString:(id)a3 operation:(id)a4 message:(id)a5;
- (id)_invalidRAResponse;
- (id)_performPKIOperation:(id)a3 withPayload:(id)a4 usingPost:(BOOL)a5 error:(id *)a6;
- (id)_synchronousTransactionWithURL:(id)a3 method:(id)a4 content:(id)a5 contentType:(id)a6 outResponseCode:(int64_t *)a7 outContentType:(id *)a8 outError:(id *)a9;
- (id)userInputFields;
- (void)dealloc;
@end

@implementation MCNewSCEPPayloadHandler

- (void)dealloc
{
  identity = self->_identity;
  if (identity)
  {
    CFRelease(identity);
  }

  v4.receiver = self;
  v4.super_class = MCNewSCEPPayloadHandler;
  [(MCNewSCEPPayloadHandler *)&v4 dealloc];
}

- (id)userInputFields
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 challenge];

  if (v3)
  {
    v4 = +[NSArray array];
  }

  else
  {
    v4 = +[NSMutableArray array];
    v5 = MCLocalizedString();
    v6 = [v2 friendlyName];
    v7 = MCLocalizedFormat();
    v8 = [MCNewPayloadHandler promptDictionaryForKey:@"challenge" title:v5 description:v7 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:3 flags:?];
    [v4 addObject:v8];
  }

  return v4;
}

- (id)_SCEPOperationURLWithBaseURLString:(id)a3 operation:(id)a4 message:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[NSURLComponents alloc] initWithString:v9];

  v11 = [[NSURLQueryItem alloc] initWithName:@"operation" value:v8];
  v17 = v11;
  v12 = [NSArray arrayWithObjects:&v17 count:1];
  v13 = [v12 mutableCopy];

  if (v7)
  {
    v14 = [[NSURLQueryItem alloc] initWithName:@"message" value:v7];
    [v13 addObject:v14];
  }

  [v10 setQueryItems:v13];
  v15 = [v10 URL];

  return v15;
}

+ (id)mutableATSExceptionInExceptionDomains:(id)a3 matchingHost:(id)a4
{
  v5 = a3;
  v6 = a4;
  for (i = v6; ; i = v14)
  {
    v8 = [v5 objectForKeyedSubscript:i];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = v8;
    v10 = v9;
    if (i == v6)
    {
      goto LABEL_10;
    }

    v11 = [v9 objectForKeyedSubscript:@"NSIncludesSubdomains"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v11 BOOLValue])
    {
      break;
    }

LABEL_7:
    v12 = [i rangeOfString:@"."];
    if (!v13)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v14 = [i substringFromIndex:v12 + 1];
  }

LABEL_10:

  return v10;
}

+ (id)atsOverrideDataWithInsecureHTTPForHost:(id)a3 fromATSOverrideData:(id)a4
{
  v5 = a3;
  v6 = [NSPropertyListSerialization propertyListWithData:a4 options:1 format:0 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  v8 = v7;
  v9 = [v7 objectForKeyedSubscript:@"NSExceptionDomains"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = [NSMutableDictionary dictionaryWithCapacity:1];
    [v8 setObject:v10 forKeyedSubscript:@"NSExceptionDomains"];
  }

  v11 = [objc_opt_class() mutableATSExceptionInExceptionDomains:v10 matchingHost:v5];
  if (!v11)
  {
    v11 = [NSMutableDictionary dictionaryWithCapacity:1];
    [v10 setObject:v11 forKeyedSubscript:v5];
  }

  v12 = [NSNumber numberWithBool:1];
  [v11 setObject:v12 forKeyedSubscript:@"NSExceptionAllowsInsecureHTTPLoads"];

  v13 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:0];

  return v13;
}

+ (void)allowInsecureHTTPLoadsOfURL:(id)a3 forConfiguration:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v11 = [v6 host];

  v8 = [v11 lowercaseString];
  v9 = [v5 _atsContext];
  v10 = [v7 atsOverrideDataWithInsecureHTTPForHost:v8 fromATSOverrideData:v9];
  [v5 set_atsContext:v10];
}

- (id)_synchronousTransactionWithURL:(id)a3 method:(id)a4 content:(id)a5 contentType:(id)a6 outResponseCode:(int64_t *)a7 outContentType:(id *)a8 outError:(id *)a9
{
  v14 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = v14;
  v15 = [NSMutableURLRequest requestWithURL:v14];
  [v15 setHTTPMethod:v39];
  if (v40)
  {
    [v15 setHTTPBody:?];
  }

  if (v41)
  {
    [v15 setValue:v41 forHTTPHeaderField:@"Content-Type"];
  }

  v16 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v42;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Performing synchronous URL request: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v51 = 0x3032000000;
  v52 = sub_100077290;
  v53 = sub_1000772A0;
  v54 = 0;
  v17 = dispatch_semaphore_create(0);
  v18 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  [objc_opt_class() allowInsecureHTTPLoadsOfURL:v42 forConfiguration:v18];
  v37 = v18;
  v19 = [NSURLSession sessionWithConfiguration:v18];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000772A8;
  v43[3] = &unk_10011CB38;
  p_buf = &buf;
  v20 = v17;
  v44 = v20;
  v21 = [v19 dataTaskWithRequest:v15 completionHandler:v43];
  [v21 resume];
  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  v38 = [v21 response];
  v22 = [v21 error];
  v36 = v19;
  v23 = _MCLogObjects[0];
  if (v22)
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v46 = 138543618;
      v47 = v42;
      v48 = 2114;
      v49 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "URL request to %{public}@ failed. Error: %{public}@", v46, 0x16u);
    }

    if (a9)
    {
      v24 = [v22 domain];
      v25 = [v22 code];
      v26 = [v22 localizedDescription];
      v27 = MCErrorArrayFromLocalizedDescription();
      v28 = MCErrorTypeFatal;
      v29 = [NSError MCErrorWithDomain:v24 code:v25 descriptionArray:v27 errorType:MCErrorTypeFatal];

      v30 = MCErrorArray();
      *a9 = [NSError MCErrorWithDomain:MCSCEPErrorDomain code:22005 descriptionArray:v30 underlyingError:v29 errorType:v28, 0];
    }

    v31 = _MCLogObjects[0];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = [v38 statusCode];
      *v46 = 134217984;
      v47 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "URL request failed. Status code: %ld", v46, 0xCu);
    }

    v33 = 0;
  }

  else
  {
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
    {
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "URL request succeeded.", v46, 2u);
    }

    if (a7)
    {
      *a7 = [v38 statusCode];
    }

    if (a8)
    {
      v34 = [v38 allHeaderFields];
      *a8 = [v34 objectForKey:@"Content-Type"];
    }

    v33 = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&buf, 8);

  return v33;
}

- (id)_invalidRAResponse
{
  v2 = MCSCEPErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:22003 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (BOOL)_createKeyPairLength:(unint64_t)a3 outPublicKey:(__SecKey *)a4 outPrivateKey:(__SecKey *)a5
{
  v21[0] = kSecAttrKeyTypeRSA;
  v20[0] = kSecAttrKeyType;
  v20[1] = kSecAttrKeySizeInBits;
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v21[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  error = 0;
  v9 = SecKeyCreateRandomKey(v8, &error);
  v10 = error;
  if (error)
  {
    if (v9)
    {
      CFRelease(v9);
      v10 = error;
    }

    v11 = CFErrorCopyDescription(v10);
    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not generate public/private key pair: %{public}@", buf, 0xCu);
    }

    CFRelease(v11);
    v13 = error;
    goto LABEL_7;
  }

  v15 = SecKeyCopyPublicKey(v9);
  if (v15)
  {
    *a5 = v9;
    *a4 = v15;
    v14 = 1;
    goto LABEL_11;
  }

  if (v9)
  {
    v13 = v9;
LABEL_7:
    CFRelease(v13);
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)_performPKIOperation:(id)a3 withPayload:(id)a4 usingPost:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = @"GET";
  if (v7)
  {
    v12 = @"POST";
  }

  v13 = v12;
  if (v7)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v11 base64EncodedStringWithOptions:0];
  }

  v15 = [(MCNewSCEPPayloadHandler *)self _SCEPOperationURLWithBaseURLString:v10 operation:@"PKIOperation" message:v14];
  v16 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Sending CSR via %{public}@.", buf, 0xCu);
  }

  if (v7)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(MCNewSCEPPayloadHandler *)self _synchronousTransactionWithURL:v15 method:v13 content:v17 contentType:@"application/x-pki-message" outResponseCode:0 outContentType:0 outError:a6];

  return v18;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v8 = a5;
  v9 = [(MCNewPayloadHandler *)self payload];
  v27 = 0;
  v10 = [(MCNewSCEPPayloadHandler *)self copyIdentityImmediatelyWithInteractionClient:v8 outError:&v27];
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
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Storing SCEP identity, storing with accessibility %@", buf, 0xCu);
    }

    v14 = [v9 UUID];
    v15 = kMCAppleIdentitiesKeychainGroup;
    v16 = [(MCNewPayloadHandler *)self profileHandler];
    v17 = [v16 profile];
    v18 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v10, v14, v15, [v17 isInstalledForSystem], v12);

    v19 = [v9 UUID];
    [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v18 andUUID:v19];

    CFRelease(v10);
    if (v18)
    {
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

- (__SecIdentity)copyIdentityImmediatelyWithInteractionClient:(id)a3 outError:(id *)a4
{
  v6 = a3;
  identity = self->_identity;
  if (identity)
  {
    CFRetain(identity);
    v8 = self->_identity;
    goto LABEL_34;
  }

  v9 = [(MCNewPayloadHandler *)self payload];
  v10 = [(MCNewPayloadHandler *)self userInputResponses];
  v11 = [v9 challenge];
  v12 = [MCNewPayloadHandler prioritizeUserInput:v10 key:@"challenge" overField:v11];

  v166 = 0;
  v167 = 0;
  if (v6)
  {
    v13 = MCLocalizedString();
    v14 = [v6 didUpdateStatus:v13];

    if ((v14 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (!-[MCNewSCEPPayloadHandler _createKeyPairLength:outPublicKey:outPrivateKey:](self, "_createKeyPairLength:outPublicKey:outPrivateKey:", [v9 keySize], &v167, &v166))
  {
    v28 = MCSCEPErrorDomain;
    MCErrorArray();
    v30 = v29 = a4;
    v23 = [NSError MCErrorWithDomain:v28 code:22001 descriptionArray:v30 errorType:MCErrorTypeFatal, 0];

    a4 = v29;
    goto LABEL_16;
  }

  if (v6)
  {
    v15 = MCLocalizedString();
    v16 = [v6 didUpdateStatus:v15];

    if ((v16 & 1) == 0)
    {
LABEL_14:
      v27 = [(MCNewPayloadHandler *)self profileHandler];
      v23 = [v27 userCancelledError];

LABEL_16:
      v26 = 0;
      v24 = 0;
      goto LABEL_17;
    }
  }

  v17 = [v9 URLString];
  v18 = [v9 CAInstanceName];
  v19 = [(MCNewSCEPPayloadHandler *)self _SCEPOperationURLWithBaseURLString:v17 operation:@"GetCACert" message:v18];

  v164 = 0;
  v165 = 0;
  v158 = v19;
  v20 = [(MCNewSCEPPayloadHandler *)self _synchronousTransactionWithURL:v19 method:@"GET" content:0 contentType:0 outResponseCode:0 outContentType:&v165 outError:&v164];
  v21 = v165;
  v22 = v164;
  v157 = v21;
  if (v22)
  {
    v23 = v22;
LABEL_10:
    v24 = 0;
    v25 = 0;
    v159 = 0;
    goto LABEL_11;
  }

  data = v20;
  if (![v21 isEqualToString:@"application/x-x509-ca-cert"])
  {
    if (![v21 isEqualToString:@"application/x-x509-ca-ra-cert"])
    {
      v25 = 0;
      v39 = 0;
      goto LABEL_45;
    }

    v25 = SecCMSCertificatesOnlyMessageCopyCertificates();
    if (v25)
    {
      *buf = 0;
      v163 = 0;
      [v9 CAFingerprint];
      if (!SecSCEPValidateCACertMessage())
      {
        if (*buf)
        {
          v119 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
          {
            *v162 = 0;
            _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEBUG, "GetCACert returned an RA certificate.", v162, 2u);
          }

          v39 = [NSArray arrayWithObject:*buf];
          v120 = *buf;
          CFRetain(*buf);
        }

        else
        {
          v120 = 0;
          v39 = 0;
        }

        CFRelease(v25);
        v25 = v120;
        goto LABEL_45;
      }

      v23 = [(MCNewSCEPPayloadHandler *)self _invalidRAResponse];
      CFRelease(v25);
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v23 = [(MCNewSCEPPayloadHandler *)self _invalidRAResponse];
      v24 = 0;
    }

    v159 = 0;
    goto LABEL_11;
  }

  v37 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "GetCACert returned a CA certificate.", buf, 2u);
  }

  v38 = SecCertificateCreateWithData(kCFAllocatorDefault, v20);
  if (!v38)
  {
    v65 = MCSCEPErrorDomain;
    MCErrorArray();
    v66 = v152 = a4;
    v23 = [NSError MCErrorWithDomain:v65 code:22002 descriptionArray:v66 errorType:MCErrorTypeFatal, 0];

    a4 = v152;
    goto LABEL_10;
  }

  v25 = v38;
  v39 = [NSArray arrayWithObject:v38];
LABEL_45:
  v40 = [v39 count];
  v155 = v12;
  v159 = v39;
  if (!v25 || !v40)
  {
    v63 = MCSCEPErrorDomain;
    v64 = MCErrorArray();
    v20 = data;
    v23 = [NSError MCErrorWithDomain:v63 code:22004 descriptionArray:v64 errorType:MCErrorTypeFatal, 0];

    v12 = v155;
    v24 = 0;
    goto LABEL_11;
  }

  v150 = v25;
  v151 = a4;
  v41 = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
  v42 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v41;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Temporarily storing SCEP server certificate, storing with accessibility %@", buf, 0xCu);
  }

  v43 = [v9 UUID];
  v44 = [NSString stringWithFormat:@"%@-signing", v43];
  v45 = kMCAppleCertificatesKeychainGroup;
  v46 = [(MCNewPayloadHandler *)self profileHandler];
  v47 = [v46 profile];
  v148 = v45;
  v24 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v150, v44, v45, [v47 isInstalledForSystem], v41);

  v144 = v24;
  if (!v24)
  {
    v67 = MCSCEPErrorDomain;
    v68 = MCErrorArray();
    v69 = v67;
    v70 = v68;
    v23 = [NSError MCErrorWithDomain:v69 code:22012 descriptionArray:v68 errorType:MCErrorTypeFatal, 0];
    v12 = v155;
    v20 = data;
    a4 = v151;
    goto LABEL_143;
  }

  v48 = [v9 UUID];
  [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v24 andUUID:v48];

  v49 = [v9 CACaps];
  if (v49)
  {
    v50 = v49;
LABEL_52:
    v145 = [v50 containsObject:@"POSTPKIOperation"];
    v51 = [v50 containsObject:@"AES"];
    v52 = [v50 containsObject:@"DES3"];
    v53 = [v50 containsObject:@"SHA-512"];
    v54 = [v50 containsObject:@"SHA-256"];
    v139 = v50;
    v153 = [v50 containsObject:@"SHA-1"];
    goto LABEL_53;
  }

  v74 = [v9 URLString];
  v75 = [v9 CAInstanceName];
  v76 = [(MCNewSCEPPayloadHandler *)self _SCEPOperationURLWithBaseURLString:v74 operation:@"GetCACaps" message:v75];

  v70 = v76;
  v161 = 0;
  v77 = [(MCNewSCEPPayloadHandler *)self _synchronousTransactionWithURL:v76 method:@"GET" content:0 contentType:0 outResponseCode:0 outContentType:0 outError:&v161];
  v78 = v161;
  if (v78)
  {
    v23 = v78;
    v141 = v77;
    v24 = 0;
    v12 = v155;
    v20 = data;
    a4 = v151;

    goto LABEL_143;
  }

  if ([v77 length])
  {
    v121 = [[NSString alloc] initWithData:v77 encoding:4];
    v122 = [NSCharacterSet characterSetWithCharactersInString:@"\r\n"];
    v123 = [v121 componentsSeparatedByCharactersInSet:v122];

    if (v123)
    {
      v50 = v123;
      goto LABEL_52;
    }
  }

  else
  {
  }

  v133 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "Did not receive GetCACaps information from SCEP server. Assuming support for SHA-1 only.", buf, 2u);
  }

  v139 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v145 = 0;
  v153 = 1;
LABEL_53:
  v55 = [NSMutableDictionary dictionaryWithCapacity:5];
  v56 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 usageFlags]);
  [v55 setObject:v56 forKeyedSubscript:kSecCertificateKeyUsage];

  [v55 setObject:v155 forKeyedSubscript:kSecCSRChallengePassword];
  v57 = [v9 subjectAltName];
  [v55 setObject:v57 forKeyedSubscript:kSecSubjectAltName];

  if (v51)
  {
    [v55 setObject:kSecCMSEncryptionAlgorithmAESCBC forKeyedSubscript:kSecCMSBulkEncryptionAlgorithm];
    v58 = _MCLogObjects[0];
    v59 = v55;
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      goto LABEL_65;
    }

    *buf = 0;
    v60 = "SCEP: AES is supported.";
    v61 = v58;
    v62 = OS_LOG_TYPE_INFO;
    goto LABEL_64;
  }

  v59 = v55;
  if ((v52 & 1) == 0)
  {
    v71 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v60 = "Insufficient required capability from Certificate Authority. AES, 3DES not supported. Falling back to 3DES anyway.";
      v61 = v71;
      v62 = OS_LOG_TYPE_ERROR;
LABEL_64:
      _os_log_impl(&_mh_execute_header, v61, v62, v60, buf, 2u);
    }
  }

LABEL_65:
  v140 = v59;
  if (v53)
  {
    [v59 setObject:kSecCMSHashingAlgorithmSHA512 forKeyedSubscript:kSecCMSSignHashAlgorithm];
    v72 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      goto LABEL_78;
    }

    *buf = 0;
    v73 = "SHA-512 is supported.";
    goto LABEL_77;
  }

  if (v54)
  {
    [v59 setObject:kSecCMSHashingAlgorithmSHA256 forKeyedSubscript:kSecCMSSignHashAlgorithm];
    v72 = _MCLogObjects[0];
    if (!os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      goto LABEL_78;
    }

    *buf = 0;
    v73 = "SHA-512 not supported. Falling back to SHA-256 hash.";
    goto LABEL_77;
  }

  if (!v153)
  {
    v127 = _MCLogObjects[0];
    v12 = v155;
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "Insufficient required capability from Certificate Authority. SHA-512, SHA-256, and SHA-1 not supported.", buf, 2u);
    }

    v128 = MCSCEPErrorDomain;
    v129 = MCErrorArray();
    v23 = [NSError MCErrorWithDomain:v128 code:22006 descriptionArray:v129 errorType:MCErrorTypeFatal, 0];
    v115 = v129;
    v24 = 0;
    goto LABEL_124;
  }

  [v59 setObject:kSecCMSHashingAlgorithmSHA1 forKeyedSubscript:kSecCMSSignHashAlgorithm];
  v72 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v73 = "SHA-512 & SHA-256 not supported. Falling back to SHA-1 hash.";
LABEL_77:
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, v73, buf, 2u);
  }

LABEL_78:
  v79 = SecSCEPCreateTemporaryIdentity();
  if (!v79)
  {
    v113 = MCSCEPErrorDomain;
    v114 = MCErrorArray();
    v23 = [NSError MCErrorWithDomain:v113 code:22009 descriptionArray:v114 errorType:MCErrorTypeFatal, 0];
    v115 = v114;
    v24 = 0;
    v12 = v155;
LABEL_124:
    a4 = v151;
    v20 = data;
    v70 = v139;
    goto LABEL_142;
  }

  v24 = v79;
  v80 = [v9 UUID];
  v81 = [NSString stringWithFormat:@"%@-tempID", v80];
  v82 = [(MCNewPayloadHandler *)self profileHandler];
  v83 = [v82 profile];
  v84 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:", v24, v81, v148, [v83 isInstalledForSystem]);

  v138 = v84;
  if (!v84)
  {
    v116 = MCSCEPErrorDomain;
    v117 = MCErrorArray();
    v23 = [NSError MCErrorWithDomain:v116 code:22010 descriptionArray:v117 errorType:MCErrorTypeFatal, 0];
    v118 = v117;
    v12 = v155;
    v20 = data;
    a4 = v151;
    v70 = v139;
    goto LABEL_141;
  }

  v85 = [v9 UUID];
  [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v84 andUUID:v85];

  [v9 subject];
  v86 = SecSCEPGenerateCertificateRequest();
  v137 = v86;
  if (!v86)
  {
    v124 = MCSCEPErrorDomain;
    v125 = MCErrorArray();
    v23 = [NSError MCErrorWithDomain:v124 code:22011 descriptionArray:v125 errorType:MCErrorTypeFatal, 0];
    v126 = v125;
    v12 = v155;
    v20 = data;
    a4 = v151;
    v70 = v139;
    goto LABEL_140;
  }

  v87 = v86;
  v88 = [v9 retries] + 1;
  v135 = [v9 retryDelay];
  v89 = v87;
  v23 = 0;
  v146 = MCErrorTypeFatal;
  v142 = MCSCEPErrorDomain;
  v136 = 1;
  v147 = v89;
  v12 = v155;
  a4 = v151;
LABEL_82:
  v90 = v88;
  while (1)
  {
    v154 = v90;
    v91 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "Attempting to retrieve issued certificate...", buf, 2u);
    }

    v92 = [v9 URLString];
    v160 = 0;
    v93 = [(MCNewSCEPPayloadHandler *)self _performPKIOperation:v92 withPayload:v147 usingPost:v145 error:&v160];
    v23 = v160;

    if (v23)
    {

      v154 = 0;
      goto LABEL_101;
    }

    v163 = 0;
    v149 = v93;
    v94 = SecSCEPVerifyReply();
    v95 = v163;
    v143 = v94;
    if (v94)
    {
      break;
    }

    if (v163)
    {
      v96 = [v163 domain];
      v97 = [v95 code];
      v98 = [v95 localizedDescription];
      v99 = MCErrorArrayFromLocalizedDescription();
      v23 = [NSError MCErrorWithDomain:v96 code:v97 descriptionArray:v99 errorType:v146];

      v100 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        v101 = v100;
        v102 = [v23 MCVerboseDescription];
        *buf = 138543362;
        *&buf[4] = v102;
        _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "Certificate retrieval reported error: %{public}@", buf, 0xCu);
      }

      v103 = [v95 domain];
      if ([v103 isEqualToString:@"PENDING"])
      {
        v104 = [v95 userInfo];

        a4 = v151;
        if (v104)
        {
          [v9 subject];
          [v95 userInfo];
          v105 = v147;
          v147 = SecSCEPGetCertInitial();
          goto LABEL_96;
        }
      }

      else
      {

        a4 = v151;
      }
    }

    else
    {
      v23 = 0;
    }

    v105 = MCErrorArray();
    v106 = [NSError MCErrorWithDomain:v142 code:22013 descriptionArray:v105 errorType:v146, 0];

    v154 = 0;
    v23 = v106;
LABEL_96:

    if (v23)
    {
      v12 = v155;
LABEL_101:
      v107 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        v108 = v107;
        v109 = [v23 MCVerboseDescription];
        *buf = 138543362;
        *&buf[4] = v109;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "Could not retrieve issued certificate: %{public}@", buf, 0xCu);
      }

      v110 = v154;
      if ((v154 == 0) | v136 & 1)
      {
        v111 = (v154 == 0) & v136;
      }

      else
      {
        v112 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Sleeping before polling SCEP server again.", buf, 2u);
        }

        sleep(v135);
        v111 = 0;
        v110 = v154;
      }

      v136 = v111;
      v88 = (v110 - 1);
      if (v110 < 2)
      {
        v143 = 0;
        goto LABEL_139;
      }

      goto LABEL_82;
    }

    v12 = v155;
    v90 = (v154 - 1);
    if (v154 <= 1)
    {
      goto LABEL_128;
    }
  }

  v130 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "Issued certificate received.", buf, 2u);
  }

LABEL_128:
  if ([v143 count])
  {
    [v143 objectAtIndex:0];
    v131 = SecIdentityCreate();
    self->_identity = v131;
    if (v131)
    {
      v23 = 0;
      goto LABEL_139;
    }

    v132 = 22008;
  }

  else
  {
    v132 = 22007;
  }

  v134 = MCErrorArray();
  v23 = [NSError MCErrorWithDomain:v142 code:v132 descriptionArray:v134 errorType:v146, 0];

  a4 = v151;
LABEL_139:

  v20 = data;
  v70 = v139;
  v126 = v143;
LABEL_140:

  v118 = v137;
LABEL_141:

  v115 = v138;
LABEL_142:

LABEL_143:
  v25 = v150;
LABEL_11:

  if (v25)
  {
    CFRelease(v25);
  }

  v26 = v159;
LABEL_17:
  if (v167)
  {
    CFRelease(v167);
    v167 = 0;
  }

  if (v166)
  {
    CFRelease(v166);
    v166 = 0;
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v6)
  {
    [v6 didUpdateStatus:0];
  }

  if (v23)
  {
    if (a4)
    {
      v31 = v23;
      *a4 = v23;
    }

    v32 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v33 = v32;
      v34 = [v23 MCVerboseDescription];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Cannot retrieve SCEP identity: %{public}@", buf, 0xCu);
    }

LABEL_32:
    v8 = 0;
  }

  else
  {
    v35 = self->_identity;
    if (!v35)
    {
      goto LABEL_32;
    }

    CFRetain(v35);
    v8 = self->_identity;
  }

LABEL_34:
  return v8;
}

@end