@interface TransparencyConfigBag
- (BOOL)configurationExpired;
- (BOOL)configureFromNetworkBagData:(id)a3 error:(id *)a4;
- (BOOL)configureWithDisk:(id *)a3;
- (BOOL)processConfigBagData:(id)a3 error:(id *)a4;
- (BOOL)shouldSetInternalHeader;
- (BOOL)tapToRadarEnabled;
- (BOOL)validateConfigBagCertificates:(id)a3 error:(id *)a4;
- (BOOL)validateConfigBagEntries:(id)a3 error:(id *)a4;
- (BOOL)validateConfigBagSignature:(id)a3 error:(id *)a4;
- (BOOL)validateConfigEntries:(id)a3 error:(id *)a4;
- (BOOL)writeConfigToDisk:(id)a3 error:(id *)a4;
- (NSString)swtCFUDetailsURL;
- (TransparencyConfigBag)initWithRequiredKeys:(id)a3 settings:(id)a4 directory:(id)a5 configApp:(unint64_t)a6 swtSettings:(id)a7;
- (double)doubleForKey:(id)a3;
- (id)checkBagKeyClass:(id)a3 keys:(id)a4;
- (id)checkMissingBagKeys:(id)a3 keys:(id)a4;
- (id)configBagFileName;
- (id)configBagRequest;
- (id)configBagURL;
- (id)copyConfigurationBag:(id *)a3;
- (id)readConfigFromDisk:(id *)a3;
- (id)stringForKey:(id)a3;
- (id)urlForKey:(id)a3;
- (unint64_t)getConfigBagEnvironment;
- (unint64_t)percentageForKey:(id)a3;
- (unint64_t)uintegerForKey:(id)a3;
- (void)clearState:(id *)a3;
- (void)configureFromNetworkWithFetcher:(id)a3 networkTimeout:(double)a4 completionHandler:(id)a5;
- (void)configureWithFetcher:(id)a3 networkTimeout:(double)a4 completionHandler:(id)a5;
- (void)getSettings;
@end

@implementation TransparencyConfigBag

- (unint64_t)getConfigBagEnvironment
{
  result = [(TransparencyConfigBag *)self configApp];
  if (result == 2)
  {
    v6 = [(TransparencyConfigBag *)self swtSettings];
    v7 = [v6 atEnvironment];

    if (v7 > 9)
    {
      return 1;
    }

    else
    {
      return qword_1001030C8[v7];
    }
  }

  else if (result == 1)
  {
    v4 = [(TransparencyConfigBag *)self settings];
    v5 = [v4 getEnvironment];

    return v5;
  }

  return result;
}

- (id)configBagURL
{
  v3 = [[NSURLComponents alloc] initWithString:@"https://init-kt.apple.com/init/getBag"];
  v4 = [(TransparencyConfigBag *)self currentEnvironment];
  if (v4 == 2)
  {
    if (qword_100156120 != -1)
    {
      sub_1000F2F48();
    }

    v7 = qword_100156128;
    if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "requesting QA2 configuration bag", v15, 2u);
    }

    v6 = @"init-kt-qa2.ess.apple.com";
  }

  else
  {
    if (v4 != 1)
    {
      goto LABEL_14;
    }

    if (qword_100156120 != -1)
    {
      sub_1000F2F5C();
    }

    v5 = qword_100156128;
    if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "requesting QA1 configuration bag", v15, 2u);
    }

    v6 = @"init-kt-qa1.ess.apple.com";
  }

  [v3 setHost:v6];
LABEL_14:
  v8 = [[NSURLQueryItem alloc] initWithName:@"ix" value:@"3"];
  v9 = [(TransparencyConfigBag *)self settings];
  v10 = [v9 devicePlatform];

  v11 = [[NSURLQueryItem alloc] initWithName:@"p" value:v10];
  v16[0] = v8;
  v16[1] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:2];
  [v3 setQueryItems:v12];

  v13 = [v3 URL];

  return v13;
}

- (id)configBagFileName
{
  v2 = [(TransparencyConfigBag *)self currentEnvironment];
  if (v2 == 2)
  {
    if (qword_100156120 != -1)
    {
      sub_1000F2F70();
    }

    v5 = qword_100156128;
    if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "using QA2 configuration bag", v6, 2u);
    }

    return @"KTConfig-qa2.plist";
  }

  else if (v2 == 1)
  {
    if (qword_100156120 != -1)
    {
      sub_1000F2F84();
    }

    v3 = qword_100156128;
    if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "using QA1 configuration bag", buf, 2u);
    }

    return @"KTConfig-qa1.plist";
  }

  else
  {
    return @"KTConfig.plist";
  }
}

- (id)configBagRequest
{
  v3 = [(TransparencyConfigBag *)self configBagURL];
  v4 = [(TransparencyConfigBag *)self settings];
  [v4 defaultNetworkTimeout];
  v5 = [NSMutableURLRequest requestWithURL:v3 cachePolicy:0 timeoutInterval:?];

  v6 = [(TransparencyConfigBag *)self settings];
  LODWORD(v4) = [v6 getBool:kTransparencyFlagUseTestConfig];

  if (v4)
  {
    [v5 setValue:@"true" forHTTPHeaderField:@"X-Apple-Test-Application"];
    if (qword_100156120 != -1)
    {
      sub_1000F2FAC();
    }

    v7 = qword_100156128;
    if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_DEBUG))
    {
      v18 = 0;
      v8 = "requesting test configuration bag";
      v9 = &v18;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v8, v9, 2u);
    }
  }

  else if ([(TransparencyConfigBag *)self shouldSetInternalHeader])
  {
    [v5 setValue:@"true" forHTTPHeaderField:@"x-internal"];
    if (qword_100156120 != -1)
    {
      sub_1000F2F98();
    }

    v7 = qword_100156128;
    if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v8 = "requesting carry configuration bag";
      v9 = buf;
      goto LABEL_11;
    }
  }

  v10 = [(TransparencyConfigBag *)self settings];
  v11 = [v10 transparencyVersionStr];
  [v5 setValue:v11 forHTTPHeaderField:off_1001523B8];

  v12 = [(TransparencyConfigBag *)self settings];
  v13 = [v12 automatedDeviceGroup];

  if (v13)
  {
    [v5 setValue:v13 forHTTPHeaderField:off_1001523B0];
  }

  if ([(TransparencyConfigBag *)self configApp]== 2 && ![(TransparencyConfigBag *)self currentEnvironment])
  {
    [v5 _setPrivacyProxyFailClosed:1];
    if (qword_100156120 != -1)
    {
      sub_1000F2FC0();
    }

    v14 = qword_100156128;
    if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Enforcing privacy proxy", v16, 2u);
    }
  }

  return v5;
}

- (BOOL)shouldSetInternalHeader
{
  v3 = [(TransparencyConfigBag *)self settings];
  v4 = [v3 allowsInternalSecurityPolicies];

  if (!v4)
  {
    return 0;
  }

  if ([(TransparencyConfigBag *)self configApp]!= 2)
  {
    return 1;
  }

  v5 = [(TransparencyConfigBag *)self swtSettings];
  v6 = [v5 atEnvironment] != 7;

  return v6;
}

- (void)getSettings
{
  v3 = [TransparencySettings getOverride:kTransparencyOverrideReversePushPercentage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedIntegerValue];
    if (v4 <= 0x64)
    {
      v5 = v4;
      if (qword_100156120 != -1)
      {
        sub_1000F2FE8();
      }

      v6 = qword_100156128;
      if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        v8 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Overriding bag reverse push percentage with %lu", &v7, 0xCu);
      }

      [(TransparencyConfigBag *)self setOverrideReversePushConfig:1];
      [(TransparencyConfigBag *)self setOverrideReversePushPercentage:v5];
    }
  }
}

- (TransparencyConfigBag)initWithRequiredKeys:(id)a3 settings:(id)a4 directory:(id)a5 configApp:(unint64_t)a6 swtSettings:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = TransparencyConfigBag;
  v16 = [(TransparencyConfigBag *)&v21 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_6;
  }

  [(TransparencyConfigBag *)v16 getSettings];
  [(TransparencyConfigBag *)v17 setSettings:v13];
  [(TransparencyConfigBag *)v17 setConfigApp:a6];
  if (a6 != 2 || v15)
  {
    [(TransparencyConfigBag *)v17 setSwtSettings:v15];
    [(TransparencyConfigBag *)v17 setCurrentEnvironment:[(TransparencyConfigBag *)v17 getConfigBagEnvironment]];
    v19 = [NSMutableDictionary dictionaryWithDictionary:v12];
    [v19 setObject:objc_opt_class() forKeyedSubscript:@"bag-expiry-timestamp"];
    [(TransparencyConfigBag *)v17 setRequiredKeys:v19];
    [(TransparencyConfigBag *)v17 setDirectory:v14];

LABEL_6:
    v18 = v17;
    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:

  return v18;
}

- (unint64_t)percentageForKey:(id)a3
{
  result = [(TransparencyConfigBag *)self uintegerForKey:a3];
  if (result >= 0x64)
  {
    return 100;
  }

  return result;
}

- (unint64_t)uintegerForKey:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyConfigBag *)self config];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 integerValue] & 0x8000000000000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 unsignedIntegerValue];
  }

  return v7;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyConfigBag *)self config];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)urlForKey:(id)a3
{
  v3 = [(TransparencyConfigBag *)self stringForKey:a3];
  if (v3)
  {
    v4 = [NSURL URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = [(TransparencyConfigBag *)self config];
  v6 = [v5 objectForKeyedSubscript:v4];

  objc_opt_class();
  v7 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v6 doubleValue];
    v7 = v8;
  }

  return v7;
}

- (id)checkMissingBagKeys:(id)a3 keys:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v5 objectForKeyedSubscript:{v13, v16}];

        if (!v14)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)checkBagKeyClass:(id)a3 keys:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v5 objectForKeyedSubscript:{v13, v17}];
        [v8 objectForKeyedSubscript:v13];
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (BOOL)validateConfigEntries:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TransparencyConfigBag *)self requiredKeys];
  v8 = [(TransparencyConfigBag *)self checkMissingBagKeys:v6 keys:v7];

  if ([v8 count])
  {
    if (a4)
    {
      *a4 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-114 description:@"Missing required field in config bag data"];
    }

    if (qword_100156120 != -1)
    {
      sub_1000F2FFC();
    }

    v9 = qword_100156128;
    if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [v8 componentsJoinedByString:{@", "}];
      v20 = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Missing required field in config bag data: %@", &v20, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v13 = [(TransparencyConfigBag *)self requiredKeys];
    v14 = [(TransparencyConfigBag *)self checkBagKeyClass:v6 keys:v13];

    v15 = [v14 count];
    v12 = v15 == 0;
    if (v15)
    {
      if (a4)
      {
        *a4 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-115 description:@"Required field has unexpected class"];
      }

      if (qword_100156120 != -1)
      {
        sub_1000F3010();
      }

      v16 = qword_100156128;
      if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        v18 = [v14 componentsJoinedByString:{@", "}];
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Required field has unexpected class: %@", &v20, 0xCu);
      }
    }
  }

  return v12;
}

- (BOOL)processConfigBagData:(id)a3 error:(id *)a4
{
  v6 = [NSPropertyListSerialization propertyListWithData:a3 options:0 format:0 error:a4];
  if (v6 && [(TransparencyConfigBag *)self validateConfigEntries:v6 error:a4])
  {
    v7 = 1;
    [(TransparencyConfigBag *)self setConfigured:1];
    [(TransparencyConfigBag *)self setCurrentEnvironment:[(TransparencyConfigBag *)self getConfigBagEnvironment]];
    v8 = [v6 objectForKeyedSubscript:@"bag-expiry-timestamp"];
    -[TransparencyConfigBag setExpirationTime:](self, "setExpirationTime:", [v8 longLongValue]);

    [(TransparencyConfigBag *)self setConfig:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)validateConfigBagCertificates:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TransparencyConfigBag *)self settings];
  if ([v7 allowsInternalSecurityPolicies])
  {
    v8 = [(TransparencyConfigBag *)self settings];
    v9 = [v8 getBool:kTransparencyFlagDisableVerifyBagCertificate];

    if (v9)
    {
      v10 = 1;
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ([v6 count])
  {
    [(TransparencyConfigBag *)self currentEnvironment];
    AppleIDSService = SecPolicyCreateAppleIDSService();
    v12 = [v6 objectAtIndexedSubscript:0];
    v20 = v12;
    v13 = [NSArray arrayWithObjects:&v20 count:1];
    v10 = [TransparencyCertificateHelper verifyCertificates:v13 intermediates:v6 policy:AppleIDSService error:a4];

    if (!v10)
    {
      if (a4)
      {
        *a4 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-28 underlyingError:*a4 description:@"bag certificates failed trust evaluation"];
      }

      if (qword_100156120 != -1)
      {
        sub_1000F3024();
      }

      v14 = qword_100156128;
      if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
      {
        if (a4)
        {
          v15 = *a4;
        }

        else
        {
          v15 = 0;
        }

        v18 = 138412290;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "bag certificates failed trust evaluation: %@", &v18, 0xCu);
      }
    }

    if (AppleIDSService)
    {
      CFRelease(AppleIDSService);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-113 description:@"Config bag missing certificates"];
    }

    if (qword_100156120 != -1)
    {
      sub_1000F304C();
    }

    v16 = qword_100156128;
    if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Config bag missing certificates", &v18, 2u);
    }

    v10 = 0;
  }

LABEL_25:

  return v10;
}

- (BOOL)validateConfigBagSignature:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TransparencyConfigBag *)self settings];
  if ([v7 allowsInternalSecurityPolicies])
  {
    v8 = [(TransparencyConfigBag *)self settings];
    v9 = [v8 getBool:kTransparencyFlagDisableVerifyBagSignature];

    if (v9)
    {
      v10 = 1;
      goto LABEL_38;
    }
  }

  else
  {
  }

  v11 = [v6 objectForKeyedSubscript:@"bag"];
  v12 = [v6 objectForKeyedSubscript:@"signature"];
  v13 = [v6 objectForKeyedSubscript:@"certs"];
  v14 = [v13 objectAtIndexedSubscript:0];
  v15 = [TransparencyCertificateHelper certificateFromData:v14 error:a4];

  if (v15)
  {
    v16 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
    if (v16)
    {
      v17 = [TransparencyCertificateHelper copyTrustedKeysFromDataArray:v13 error:a4];
      if (v17)
      {
        v10 = [TransparencySignatureVerifier verifyMessage:v11 signature:v12 spkiHash:v16 trustedKeys:v17 algorithm:kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA256 error:a4];
        if (!v10)
        {
          if (qword_100156120 != -1)
          {
            sub_1000F3060();
          }

          v18 = qword_100156128;
          if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
          {
            if (a4)
            {
              v19 = *a4;
            }

            else
            {
              v19 = 0;
            }

            v24 = 138412290;
            v25 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Config bag signature verification failed: %@", &v24, 0xCu);
          }
        }
      }

      else
      {
        if (a4)
        {
          *a4 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-7 description:@"Failed to decode certs in bag"];
        }

        if (qword_100156120 != -1)
        {
          sub_1000F3074();
        }

        v22 = qword_100156128;
        if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to decode certs in bag", &v24, 2u);
        }

        v10 = 0;
      }

      CFRelease(v15);
    }

    else
    {
      if (a4)
      {
        *a4 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-30 description:@"Failed to get SPKI hash from cert"];
      }

      if (qword_100156120 != -1)
      {
        sub_1000F3088();
      }

      v21 = qword_100156128;
      if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to get SPKI hash from cert", &v24, 2u);
      }

      CFRelease(v15);
      v10 = 0;
    }
  }

  else
  {
    if (qword_100156120 != -1)
    {
      sub_1000F309C();
    }

    v20 = qword_100156128;
    if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to decode config bag leaf cert", &v24, 2u);
    }

    v10 = 0;
  }

LABEL_38:
  return v10;
}

- (BOOL)validateConfigBagEntries:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"bag"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 objectForKeyedSubscript:@"certs"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = v8;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v32;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v32 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v31 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (a4)
              {
                *a4 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-114 description:@"cert wrong type"];
              }

              v8 = v30;
              if (qword_100156120 != -1)
              {
                sub_1000F30C4();
              }

              v23 = qword_100156128;
              if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
              {
                v24 = v23;
                ClassName = object_getClassName(v14);
                *buf = 136315138;
                v37 = ClassName;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "cert wrong type): %s", buf, 0xCu);
              }

              goto LABEL_35;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v15 = [v6 objectForKeyedSubscript:@"signature"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v6 objectForKeyedSubscript:@"certs"];
        v17 = [(TransparencyConfigBag *)self validateConfigBagCertificates:v16 error:a4];

        if (v17)
        {
          v18 = [(TransparencyConfigBag *)self validateConfigBagSignature:v6 error:a4];
        }

        else
        {
          v18 = 0;
        }

        v8 = v30;
      }

      else
      {
        if (a4)
        {
          *a4 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-114 description:@"sigature missing required field or type"];
        }

        if (qword_100156120 != -1)
        {
          sub_1000F30EC();
        }

        v8 = v30;
        v27 = qword_100156128;
        if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
        {
          v28 = v27;
          v29 = object_getClassName(v15);
          *buf = 136315138;
          v37 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "sigature bag missing (or wrong type): %s", buf, 0xCu);
        }

        v18 = 0;
      }
    }

    else
    {
      if (a4)
      {
        *a4 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-114 description:@"certs missing required field or type"];
      }

      if (qword_100156120 != -1)
      {
        sub_1000F3114();
      }

      v21 = qword_100156128;
      if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        *buf = 136315138;
        v37 = object_getClassName(v8);
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "certs bag missing (or wrong type): %s", buf, 0xCu);
      }

LABEL_35:
      v18 = 0;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-114 description:@"bag missing required field or type"];
    }

    if (qword_100156120 != -1)
    {
      sub_1000F30B0();
    }

    v19 = qword_100156128;
    if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      *buf = 136315138;
      v37 = object_getClassName(v7);
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "bag missing (or wrong type): %s", buf, 0xCu);
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)configureFromNetworkBagData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:a4];
  v8 = self;
  objc_sync_enter(v8);
  if (v7 && [(TransparencyConfigBag *)v8 validateConfigBagEntries:v7 error:a4])
  {
    v9 = [v7 objectForKeyedSubscript:@"bag"];
    v10 = [(TransparencyConfigBag *)v8 processConfigBagData:v9 error:a4];

    if (v10)
    {
      v15 = 0;
      v11 = [(TransparencyConfigBag *)v8 writeConfigToDisk:v7 error:&v15];
      v12 = v15;
      if ((v11 & 1) == 0)
      {
        if (qword_100156120 != -1)
        {
          sub_1000F3128();
        }

        v13 = qword_100156128;
        if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v17 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to write config bag to disk: %@", buf, 0xCu);
        }
      }
    }

    objc_sync_exit(v8);
  }

  else
  {
    objc_sync_exit(v8);

    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)configurationExpired
{
  +[NSDate kt_currentTimeMs];
  v4 = v3;
  [(TransparencyConfigBag *)self expirationTime];
  v6 = v5;
  if (v4 > v5)
  {
    if (qword_100156120 != -1)
    {
      sub_1000F3150();
    }

    v7 = qword_100156128;
    if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      [(TransparencyConfigBag *)self expirationTime];
      v11 = 134217984;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Configuration bag expired at %f", &v11, 0xCu);
    }

    [(TransparencyConfigBag *)self setConfigured:0];
  }

  return v4 > v6;
}

- (id)readConfigFromDisk:(id *)a3
{
  v5 = [(TransparencyConfigBag *)self configBagFileName];
  v6 = [(TransparencyConfigBag *)self directory];
  v13 = 0;
  v7 = [TransparencyFileSupport readDictionaryFromFile:v5 inDirectory:v6 error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3 == 0;
  }

  if (!v9 && v8 != 0)
  {
    v12 = v8;
    *a3 = v8;
  }

  return v7;
}

- (BOOL)writeConfigToDisk:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TransparencyConfigBag *)self configBagFileName];
  v8 = [(TransparencyConfigBag *)self directory];
  LOBYTE(a4) = [TransparencyFileSupport writeDictionaryToFile:v6 fileName:v7 inDirectory:v8 error:a4];

  return a4;
}

- (BOOL)configureWithDisk:(id *)a3
{
  v5 = [(TransparencyConfigBag *)self readConfigFromDisk:?];
  if (v5 && [(TransparencyConfigBag *)self validateConfigBagEntries:v5 error:a3])
  {
    v6 = [v5 objectForKeyedSubscript:@"bag"];
    v7 = [(TransparencyConfigBag *)self processConfigBagData:v6 error:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)configureFromNetworkWithFetcher:(id)a3 networkTimeout:(double)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(TransparencyConfigBag *)self configBagRequest];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100017A28;
  v11[3] = &unk_100133018;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v8 fetchConfigBag:v9 completionHandler:v11];
}

- (void)configureWithFetcher:(id)a3 networkTimeout:(double)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(TransparencyConfigBag *)self getConfigBagEnvironment];
  if ([(TransparencyConfigBag *)self configured]&& [(TransparencyConfigBag *)self currentEnvironment]== v10 && (v8 || ![(TransparencyConfigBag *)self configurationExpired]))
  {
    if ([(TransparencyConfigBag *)self configurationExpired])
    {
      if (qword_100156120 != -1)
      {
        sub_1000F3164();
      }

      v16 = qword_100156128;
      if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Configuration already loaded, but need to kick off config bag fetch because configuration expired", buf, 2u);
      }

      [v8 triggerConfigBagFetch:0.0];
    }

    v9[2](v9, 0);
  }

  else
  {
    v11 = self;
    objc_sync_enter(v11);
    v18 = 0;
    v12 = [(TransparencyConfigBag *)v11 configureWithDisk:&v18];
    v13 = v18;
    if (!v12)
    {
      goto LABEL_13;
    }

    if ([(TransparencyConfigBag *)v11 configurationExpired])
    {
      if (qword_100156120 != -1)
      {
        sub_1000F3178();
      }

      v14 = qword_100156128;
      if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Configuration loaded from disk, but need to kick off config bag fetch because configuration expired", buf, 2u);
      }

      [v8 triggerConfigBagFetch:0.0];
    }

    if (!v13)
    {
      if (qword_100156120 != -1)
      {
        sub_1000F31C8();
      }

      v17 = qword_100156128;
      if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Loaded configuration bag from disk", buf, 2u);
      }

      v9[2](v9, 0);
      objc_sync_exit(v11);
    }

    else
    {
LABEL_13:

      objc_sync_exit(v11);
      if (qword_100156120 != -1)
      {
        sub_1000F31A0();
      }

      v15 = qword_100156128;
      if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating configuration from network", buf, 2u);
      }

      [(TransparencyConfigBag *)v11 configureFromNetworkWithFetcher:v8 networkTimeout:v9 completionHandler:a4];
    }
  }
}

- (id)copyConfigurationBag:(id *)a3
{
  v5 = [(TransparencyConfigBag *)self readConfigFromDisk:?];
  if (v5 && [(TransparencyConfigBag *)self validateConfigBagEntries:v5 error:a3])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)clearState:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(TransparencyConfigBag *)v4 configBagFileName];
  v6 = [(TransparencyConfigBag *)v4 directory];
  v7 = [TransparencyFileSupport deleteFile:v5 inDirectory:v6 error:a3];

  if (v7)
  {
    [(TransparencyConfigBag *)v4 setConfigured:0];
    [(TransparencyConfigBag *)v4 setExpirationTime:0.0];
    [(TransparencyConfigBag *)v4 setConfig:0];
  }

  else
  {
    if (qword_100156120 != -1)
    {
      sub_1000F31F0();
    }

    v8 = qword_100156128;
    if (os_log_type_enabled(qword_100156128, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v9 = *a3;
      }

      else
      {
        v9 = 0;
      }

      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to delete KTLogClient configuration state: %@", &v10, 0xCu);
    }
  }

  objc_sync_exit(v4);
}

- (BOOL)tapToRadarEnabled
{
  v2 = [(TransparencyConfigBag *)self config];
  v3 = [v2 objectForKeyedSubscript:@"ttr-enabled"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (NSString)swtCFUDetailsURL
{
  v2 = [(TransparencyConfigBag *)self config];
  v3 = [v2 objectForKeyedSubscript:@"swt-cfu-url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end