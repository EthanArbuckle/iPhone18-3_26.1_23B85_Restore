@interface TransparencyConfigBag
- (BOOL)configurationExpired;
- (BOOL)configureFromNetworkBagData:(id)data error:(id *)error;
- (BOOL)configureWithDisk:(id *)disk;
- (BOOL)processConfigBagData:(id)data error:(id *)error;
- (BOOL)shouldSetInternalHeader;
- (BOOL)tapToRadarEnabled;
- (BOOL)validateConfigBagCertificates:(id)certificates error:(id *)error;
- (BOOL)validateConfigBagEntries:(id)entries error:(id *)error;
- (BOOL)validateConfigBagSignature:(id)signature error:(id *)error;
- (BOOL)validateConfigEntries:(id)entries error:(id *)error;
- (BOOL)writeConfigToDisk:(id)disk error:(id *)error;
- (NSString)swtCFUDetailsURL;
- (TransparencyConfigBag)initWithRequiredKeys:(id)keys settings:(id)settings directory:(id)directory configApp:(unint64_t)app swtSettings:(id)swtSettings;
- (double)doubleForKey:(id)key;
- (id)checkBagKeyClass:(id)class keys:(id)keys;
- (id)checkMissingBagKeys:(id)keys keys:(id)a4;
- (id)configBagFileName;
- (id)configBagRequest;
- (id)configBagURL;
- (id)copyConfigurationBag:(id *)bag;
- (id)readConfigFromDisk:(id *)disk;
- (id)stringForKey:(id)key;
- (id)urlForKey:(id)key;
- (unint64_t)getConfigBagEnvironment;
- (unint64_t)percentageForKey:(id)key;
- (unint64_t)uintegerForKey:(id)key;
- (void)clearState:(id *)state;
- (void)configureFromNetworkWithFetcher:(id)fetcher networkTimeout:(double)timeout completionHandler:(id)handler;
- (void)configureWithFetcher:(id)fetcher networkTimeout:(double)timeout completionHandler:(id)handler;
- (void)getSettings;
@end

@implementation TransparencyConfigBag

- (unint64_t)getConfigBagEnvironment
{
  result = [(TransparencyConfigBag *)self configApp];
  if (result == 2)
  {
    swtSettings = [(TransparencyConfigBag *)self swtSettings];
    atEnvironment = [swtSettings atEnvironment];

    if (atEnvironment > 9)
    {
      return 1;
    }

    else
    {
      return qword_1002DF6F8[atEnvironment];
    }
  }

  else if (result == 1)
  {
    settings = [(TransparencyConfigBag *)self settings];
    getEnvironment = [settings getEnvironment];

    return getEnvironment;
  }

  return result;
}

- (id)configBagURL
{
  v3 = [[NSURLComponents alloc] initWithString:@"https://init-kt.apple.com/init/getBag"];
  currentEnvironment = [(TransparencyConfigBag *)self currentEnvironment];
  if (currentEnvironment == 2)
  {
    if (qword_10039CCC8 != -1)
    {
      sub_10025EA1C();
    }

    v7 = qword_10039CCD0;
    if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "requesting QA2 configuration bag", v15, 2u);
    }

    v6 = @"init-kt-qa2.ess.apple.com";
  }

  else
  {
    if (currentEnvironment != 1)
    {
      goto LABEL_14;
    }

    if (qword_10039CCC8 != -1)
    {
      sub_10025EA30();
    }

    v5 = qword_10039CCD0;
    if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "requesting QA1 configuration bag", v15, 2u);
    }

    v6 = @"init-kt-qa1.ess.apple.com";
  }

  [v3 setHost:v6];
LABEL_14:
  v8 = [[NSURLQueryItem alloc] initWithName:@"ix" value:@"3"];
  settings = [(TransparencyConfigBag *)self settings];
  devicePlatform = [settings devicePlatform];

  v11 = [[NSURLQueryItem alloc] initWithName:@"p" value:devicePlatform];
  v16[0] = v8;
  v16[1] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:2];
  [v3 setQueryItems:v12];

  v13 = [v3 URL];

  return v13;
}

- (id)configBagFileName
{
  currentEnvironment = [(TransparencyConfigBag *)self currentEnvironment];
  if (currentEnvironment == 2)
  {
    if (qword_10039CCC8 != -1)
    {
      sub_10025EA44();
    }

    v5 = qword_10039CCD0;
    if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "using QA2 configuration bag", v6, 2u);
    }

    return @"KTConfig-qa2.plist";
  }

  else if (currentEnvironment == 1)
  {
    if (qword_10039CCC8 != -1)
    {
      sub_10025EA58();
    }

    v3 = qword_10039CCD0;
    if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_DEFAULT))
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
  configBagURL = [(TransparencyConfigBag *)self configBagURL];
  settings = [(TransparencyConfigBag *)self settings];
  [settings defaultNetworkTimeout];
  v5 = [NSMutableURLRequest requestWithURL:configBagURL cachePolicy:0 timeoutInterval:?];

  settings2 = [(TransparencyConfigBag *)self settings];
  LODWORD(settings) = [settings2 getBool:kTransparencyFlagUseTestConfig];

  if (settings)
  {
    [v5 setValue:@"true" forHTTPHeaderField:@"X-Apple-Test-Application"];
    if (qword_10039CCC8 != -1)
    {
      sub_10025EA80();
    }

    v7 = qword_10039CCD0;
    if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_DEBUG))
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
    if (qword_10039CCC8 != -1)
    {
      sub_10025EA6C();
    }

    v7 = qword_10039CCD0;
    if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v8 = "requesting carry configuration bag";
      v9 = buf;
      goto LABEL_11;
    }
  }

  settings3 = [(TransparencyConfigBag *)self settings];
  transparencyVersionStr = [settings3 transparencyVersionStr];
  [v5 setValue:transparencyVersionStr forHTTPHeaderField:off_10038B9F8];

  settings4 = [(TransparencyConfigBag *)self settings];
  automatedDeviceGroup = [settings4 automatedDeviceGroup];

  if (automatedDeviceGroup)
  {
    [v5 setValue:automatedDeviceGroup forHTTPHeaderField:off_10038B9F0];
  }

  if ([(TransparencyConfigBag *)self configApp]== 2 && ![(TransparencyConfigBag *)self currentEnvironment])
  {
    [v5 _setPrivacyProxyFailClosed:1];
    if (qword_10039CCC8 != -1)
    {
      sub_10025EA94();
    }

    v14 = qword_10039CCD0;
    if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Enforcing privacy proxy", v16, 2u);
    }
  }

  return v5;
}

- (BOOL)shouldSetInternalHeader
{
  settings = [(TransparencyConfigBag *)self settings];
  allowsInternalSecurityPolicies = [settings allowsInternalSecurityPolicies];

  if (!allowsInternalSecurityPolicies)
  {
    return 0;
  }

  if ([(TransparencyConfigBag *)self configApp]!= 2)
  {
    return 1;
  }

  swtSettings = [(TransparencyConfigBag *)self swtSettings];
  v6 = [swtSettings atEnvironment] != 7;

  return v6;
}

- (void)getSettings
{
  v3 = [TransparencySettings getOverride:kTransparencyOverrideReversePushPercentage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
    if (unsignedIntegerValue <= 0x64)
    {
      v5 = unsignedIntegerValue;
      if (qword_10039CCC8 != -1)
      {
        sub_10025EABC();
      }

      v6 = qword_10039CCD0;
      if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_DEFAULT))
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

- (TransparencyConfigBag)initWithRequiredKeys:(id)keys settings:(id)settings directory:(id)directory configApp:(unint64_t)app swtSettings:(id)swtSettings
{
  keysCopy = keys;
  settingsCopy = settings;
  directoryCopy = directory;
  swtSettingsCopy = swtSettings;
  v21.receiver = self;
  v21.super_class = TransparencyConfigBag;
  v16 = [(TransparencyConfigBag *)&v21 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_6;
  }

  [(TransparencyConfigBag *)v16 getSettings];
  [(TransparencyConfigBag *)v17 setSettings:settingsCopy];
  [(TransparencyConfigBag *)v17 setConfigApp:app];
  if (app != 2 || swtSettingsCopy)
  {
    [(TransparencyConfigBag *)v17 setSwtSettings:swtSettingsCopy];
    [(TransparencyConfigBag *)v17 setCurrentEnvironment:[(TransparencyConfigBag *)v17 getConfigBagEnvironment]];
    v19 = [NSMutableDictionary dictionaryWithDictionary:keysCopy];
    [v19 setObject:objc_opt_class() forKeyedSubscript:@"bag-expiry-timestamp"];
    [(TransparencyConfigBag *)v17 setRequiredKeys:v19];
    [(TransparencyConfigBag *)v17 setDirectory:directoryCopy];

LABEL_6:
    v18 = v17;
    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:

  return v18;
}

- (unint64_t)percentageForKey:(id)key
{
  result = [(TransparencyConfigBag *)self uintegerForKey:key];
  if (result >= 0x64)
  {
    return 100;
  }

  return result;
}

- (unint64_t)uintegerForKey:(id)key
{
  keyCopy = key;
  config = [(TransparencyConfigBag *)self config];
  v6 = [config objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 integerValue] & 0x8000000000000000) != 0)
  {
    unsignedIntegerValue = 0;
  }

  else
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  return unsignedIntegerValue;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  config = [(TransparencyConfigBag *)self config];
  v6 = [config objectForKeyedSubscript:keyCopy];

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

- (id)urlForKey:(id)key
{
  v3 = [(TransparencyConfigBag *)self stringForKey:key];
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

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  config = [(TransparencyConfigBag *)self config];
  v6 = [config objectForKeyedSubscript:keyCopy];

  objc_opt_class();
  v7 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v6 doubleValue];
    v7 = v8;
  }

  return v7;
}

- (id)checkMissingBagKeys:(id)keys keys:(id)a4
{
  keysCopy = keys;
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
        v14 = [keysCopy objectForKeyedSubscript:{v13, v16}];

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

- (id)checkBagKeyClass:(id)class keys:(id)keys
{
  classCopy = class;
  keysCopy = keys;
  v7 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = keysCopy;
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
        v14 = [classCopy objectForKeyedSubscript:{v13, v17}];
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

- (BOOL)validateConfigEntries:(id)entries error:(id *)error
{
  entriesCopy = entries;
  requiredKeys = [(TransparencyConfigBag *)self requiredKeys];
  v8 = [(TransparencyConfigBag *)self checkMissingBagKeys:entriesCopy keys:requiredKeys];

  if ([v8 count])
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-114 description:@"Missing required field in config bag data"];
    }

    if (qword_10039CCC8 != -1)
    {
      sub_10025EAD0();
    }

    v9 = qword_10039CCD0;
    if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
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
    requiredKeys2 = [(TransparencyConfigBag *)self requiredKeys];
    v14 = [(TransparencyConfigBag *)self checkBagKeyClass:entriesCopy keys:requiredKeys2];

    v15 = [v14 count];
    v12 = v15 == 0;
    if (v15)
    {
      if (error)
      {
        *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-115 description:@"Required field has unexpected class"];
      }

      if (qword_10039CCC8 != -1)
      {
        sub_10025EAE4();
      }

      v16 = qword_10039CCD0;
      if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
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

- (BOOL)processConfigBagData:(id)data error:(id *)error
{
  v6 = [NSPropertyListSerialization propertyListWithData:data options:0 format:0 error:error];
  if (v6 && [(TransparencyConfigBag *)self validateConfigEntries:v6 error:error])
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

- (BOOL)validateConfigBagCertificates:(id)certificates error:(id *)error
{
  certificatesCopy = certificates;
  settings = [(TransparencyConfigBag *)self settings];
  if ([settings allowsInternalSecurityPolicies])
  {
    settings2 = [(TransparencyConfigBag *)self settings];
    v9 = [settings2 getBool:kTransparencyFlagDisableVerifyBagCertificate];

    if (v9)
    {
      v10 = 1;
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ([certificatesCopy count])
  {
    [(TransparencyConfigBag *)self currentEnvironment];
    AppleIDSService = SecPolicyCreateAppleIDSService();
    v12 = [certificatesCopy objectAtIndexedSubscript:0];
    v20 = v12;
    v13 = [NSArray arrayWithObjects:&v20 count:1];
    v10 = [TransparencyCertificateHelper verifyCertificates:v13 intermediates:certificatesCopy policy:AppleIDSService error:error];

    if (!v10)
    {
      if (error)
      {
        *error = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-28 underlyingError:*error description:@"bag certificates failed trust evaluation"];
      }

      if (qword_10039CCC8 != -1)
      {
        sub_10025EAF8();
      }

      v14 = qword_10039CCD0;
      if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
      {
        if (error)
        {
          v15 = *error;
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
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-113 description:@"Config bag missing certificates"];
    }

    if (qword_10039CCC8 != -1)
    {
      sub_10025EB20();
    }

    v16 = qword_10039CCD0;
    if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Config bag missing certificates", &v18, 2u);
    }

    v10 = 0;
  }

LABEL_25:

  return v10;
}

- (BOOL)validateConfigBagSignature:(id)signature error:(id *)error
{
  signatureCopy = signature;
  settings = [(TransparencyConfigBag *)self settings];
  if ([settings allowsInternalSecurityPolicies])
  {
    settings2 = [(TransparencyConfigBag *)self settings];
    v9 = [settings2 getBool:kTransparencyFlagDisableVerifyBagSignature];

    if (v9)
    {
      v10 = 1;
      goto LABEL_38;
    }
  }

  else
  {
  }

  v11 = [signatureCopy objectForKeyedSubscript:@"bag"];
  v12 = [signatureCopy objectForKeyedSubscript:@"signature"];
  v13 = [signatureCopy objectForKeyedSubscript:@"certs"];
  v14 = [v13 objectAtIndexedSubscript:0];
  v15 = [TransparencyCertificateHelper certificateFromData:v14 error:error];

  if (v15)
  {
    v16 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
    if (v16)
    {
      v17 = [TransparencyCertificateHelper copyTrustedKeysFromDataArray:v13 error:error];
      if (v17)
      {
        v10 = [TransparencySignatureVerifier verifyMessage:v11 signature:v12 spkiHash:v16 trustedKeys:v17 algorithm:kSecKeyAlgorithmRSASignatureMessagePKCS1v15SHA256 error:error];
        if (!v10)
        {
          if (qword_10039CCC8 != -1)
          {
            sub_10025EB34();
          }

          v18 = qword_10039CCD0;
          if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
          {
            if (error)
            {
              v19 = *error;
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
        if (error)
        {
          *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-7 description:@"Failed to decode certs in bag"];
        }

        if (qword_10039CCC8 != -1)
        {
          sub_10025EB48();
        }

        v22 = qword_10039CCD0;
        if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
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
      if (error)
      {
        *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-30 description:@"Failed to get SPKI hash from cert"];
      }

      if (qword_10039CCC8 != -1)
      {
        sub_10025EB5C();
      }

      v21 = qword_10039CCD0;
      if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
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
    if (qword_10039CCC8 != -1)
    {
      sub_10025EB70();
    }

    v20 = qword_10039CCD0;
    if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to decode config bag leaf cert", &v24, 2u);
    }

    v10 = 0;
  }

LABEL_38:
  return v10;
}

- (BOOL)validateConfigBagEntries:(id)entries error:(id *)error
{
  entriesCopy = entries;
  v7 = [entriesCopy objectForKeyedSubscript:@"bag"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [entriesCopy objectForKeyedSubscript:@"certs"];
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
              if (error)
              {
                *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-114 description:@"cert wrong type"];
              }

              v8 = v30;
              if (qword_10039CCC8 != -1)
              {
                sub_10025EB98();
              }

              v23 = qword_10039CCD0;
              if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
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

      v15 = [entriesCopy objectForKeyedSubscript:@"signature"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [entriesCopy objectForKeyedSubscript:@"certs"];
        v17 = [(TransparencyConfigBag *)self validateConfigBagCertificates:v16 error:error];

        if (v17)
        {
          v18 = [(TransparencyConfigBag *)self validateConfigBagSignature:entriesCopy error:error];
        }

        else
        {
          v18 = 0;
        }

        v8 = v30;
      }

      else
      {
        if (error)
        {
          *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-114 description:@"sigature missing required field or type"];
        }

        if (qword_10039CCC8 != -1)
        {
          sub_10025EBC0();
        }

        v8 = v30;
        v27 = qword_10039CCD0;
        if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
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
      if (error)
      {
        *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-114 description:@"certs missing required field or type"];
      }

      if (qword_10039CCC8 != -1)
      {
        sub_10025EBE8();
      }

      v21 = qword_10039CCD0;
      if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
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
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-114 description:@"bag missing required field or type"];
    }

    if (qword_10039CCC8 != -1)
    {
      sub_10025EB84();
    }

    v19 = qword_10039CCD0;
    if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
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

- (BOOL)configureFromNetworkBagData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [NSPropertyListSerialization propertyListWithData:dataCopy options:0 format:0 error:error];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (v7 && [(TransparencyConfigBag *)selfCopy validateConfigBagEntries:v7 error:error])
  {
    v9 = [v7 objectForKeyedSubscript:@"bag"];
    v10 = [(TransparencyConfigBag *)selfCopy processConfigBagData:v9 error:error];

    if (v10)
    {
      v15 = 0;
      v11 = [(TransparencyConfigBag *)selfCopy writeConfigToDisk:v7 error:&v15];
      v12 = v15;
      if ((v11 & 1) == 0)
      {
        if (qword_10039CCC8 != -1)
        {
          sub_10025EBFC();
        }

        v13 = qword_10039CCD0;
        if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v17 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to write config bag to disk: %@", buf, 0xCu);
        }
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_sync_exit(selfCopy);

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
    if (qword_10039CCC8 != -1)
    {
      sub_10025EC24();
    }

    v7 = qword_10039CCD0;
    if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_DEFAULT))
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

- (id)readConfigFromDisk:(id *)disk
{
  configBagFileName = [(TransparencyConfigBag *)self configBagFileName];
  directory = [(TransparencyConfigBag *)self directory];
  v13 = 0;
  v7 = [TransparencyFileSupport readDictionaryFromFile:configBagFileName inDirectory:directory error:&v13];
  v8 = v13;

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = disk == 0;
  }

  if (!v9 && v8 != 0)
  {
    v12 = v8;
    *disk = v8;
  }

  return v7;
}

- (BOOL)writeConfigToDisk:(id)disk error:(id *)error
{
  diskCopy = disk;
  configBagFileName = [(TransparencyConfigBag *)self configBagFileName];
  directory = [(TransparencyConfigBag *)self directory];
  LOBYTE(error) = [TransparencyFileSupport writeDictionaryToFile:diskCopy fileName:configBagFileName inDirectory:directory error:error];

  return error;
}

- (BOOL)configureWithDisk:(id *)disk
{
  v5 = [(TransparencyConfigBag *)self readConfigFromDisk:?];
  if (v5 && [(TransparencyConfigBag *)self validateConfigBagEntries:v5 error:disk])
  {
    v6 = [v5 objectForKeyedSubscript:@"bag"];
    v7 = [(TransparencyConfigBag *)self processConfigBagData:v6 error:disk];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)configureFromNetworkWithFetcher:(id)fetcher networkTimeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  fetcherCopy = fetcher;
  configBagRequest = [(TransparencyConfigBag *)self configBagRequest];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10021923C;
  v11[3] = &unk_10031D5D0;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [fetcherCopy fetchConfigBag:configBagRequest completionHandler:v11];
}

- (void)configureWithFetcher:(id)fetcher networkTimeout:(double)timeout completionHandler:(id)handler
{
  fetcherCopy = fetcher;
  handlerCopy = handler;
  getConfigBagEnvironment = [(TransparencyConfigBag *)self getConfigBagEnvironment];
  if ([(TransparencyConfigBag *)self configured]&& [(TransparencyConfigBag *)self currentEnvironment]== getConfigBagEnvironment && (fetcherCopy || ![(TransparencyConfigBag *)self configurationExpired]))
  {
    if ([(TransparencyConfigBag *)self configurationExpired])
    {
      if (qword_10039CCC8 != -1)
      {
        sub_10025EC38();
      }

      v16 = qword_10039CCD0;
      if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Configuration already loaded, but need to kick off config bag fetch because configuration expired", buf, 2u);
      }

      [fetcherCopy triggerConfigBagFetch:0.0];
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v18 = 0;
    v12 = [(TransparencyConfigBag *)selfCopy configureWithDisk:&v18];
    v13 = v18;
    if (!v12)
    {
      goto LABEL_13;
    }

    if ([(TransparencyConfigBag *)selfCopy configurationExpired])
    {
      if (qword_10039CCC8 != -1)
      {
        sub_10025EC4C();
      }

      v14 = qword_10039CCD0;
      if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Configuration loaded from disk, but need to kick off config bag fetch because configuration expired", buf, 2u);
      }

      [fetcherCopy triggerConfigBagFetch:0.0];
    }

    if (!v13)
    {
      if (qword_10039CCC8 != -1)
      {
        sub_10025EC9C();
      }

      v17 = qword_10039CCD0;
      if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Loaded configuration bag from disk", buf, 2u);
      }

      handlerCopy[2](handlerCopy, 0);
      objc_sync_exit(selfCopy);
    }

    else
    {
LABEL_13:

      objc_sync_exit(selfCopy);
      if (qword_10039CCC8 != -1)
      {
        sub_10025EC74();
      }

      v15 = qword_10039CCD0;
      if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating configuration from network", buf, 2u);
      }

      [(TransparencyConfigBag *)selfCopy configureFromNetworkWithFetcher:fetcherCopy networkTimeout:handlerCopy completionHandler:timeout];
    }
  }
}

- (id)copyConfigurationBag:(id *)bag
{
  v5 = [(TransparencyConfigBag *)self readConfigFromDisk:?];
  if (v5 && [(TransparencyConfigBag *)self validateConfigBagEntries:v5 error:bag])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)clearState:(id *)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  configBagFileName = [(TransparencyConfigBag *)selfCopy configBagFileName];
  directory = [(TransparencyConfigBag *)selfCopy directory];
  v7 = [TransparencyFileSupport deleteFile:configBagFileName inDirectory:directory error:state];

  if (v7)
  {
    [(TransparencyConfigBag *)selfCopy setConfigured:0];
    [(TransparencyConfigBag *)selfCopy setExpirationTime:0.0];
    [(TransparencyConfigBag *)selfCopy setConfig:0];
  }

  else
  {
    if (qword_10039CCC8 != -1)
    {
      sub_10025ECC4();
    }

    v8 = qword_10039CCD0;
    if (os_log_type_enabled(qword_10039CCD0, OS_LOG_TYPE_ERROR))
    {
      if (state)
      {
        v9 = *state;
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

  objc_sync_exit(selfCopy);
}

- (BOOL)tapToRadarEnabled
{
  config = [(TransparencyConfigBag *)self config];
  v3 = [config objectForKeyedSubscript:@"ttr-enabled"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (NSString)swtCFUDetailsURL
{
  config = [(TransparencyConfigBag *)self config];
  v3 = [config objectForKeyedSubscript:@"swt-cfu-url"];

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