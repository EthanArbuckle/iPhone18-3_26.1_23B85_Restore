@interface MSDBAAInterface
+ (id)sharedInstance;
- (BOOL)addBAAAuthenticationHeadersToRequest:(id)a3 withBody:(id)a4 error:(id *)a5;
- (BOOL)generateBAACertficate:(id)a3;
- (__SecKey)lockcrypto_extract_public:(id)a3;
- (id)certificatesEncodeToBase64:(id)a3 status:(id *)a4;
- (id)serializeCertificateChain:(id)a3;
- (id)signDataAndEncodeToBase64:(id)a3 withPrivateKey:(__SecKey *)a4 status:(id *)a5;
- (void)printAllKeys:(id)a3;
- (void)writeCertsToDevice:(id)a3;
@end

@implementation MSDBAAInterface

+ (id)sharedInstance
{
  if (qword_1001A58A0 != -1)
  {
    sub_1000D9DE0();
  }

  v3 = qword_1001A5898;

  return v3;
}

- (BOOL)generateBAACertficate:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = dispatch_semaphore_create(0);
  IsSupported = DeviceIdentityIsSupported();
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = IsSupported;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device identity supported on this device: %d", buf, 8u);
  }

  v7 = [NSMutableArray alloc];
  v21[0] = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
  v21[1] = kMAOptionsBAAOIDDeviceIdentifiers;
  v21[2] = kMAOptionsBAAOIDHardwareProperties;
  v21[3] = kMAOptionsBAAOIDDeviceOSInformation;
  v8 = [NSArray arrayWithObjects:v21 count:4];
  v9 = [v7 initWithArray:v8];

  if (IsSupported)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    [v10 setObject:&off_10017B140 forKey:kMAOptionsBAACACert];
    [v10 setObject:&off_10017B158 forKey:kMAOptionsBAANetworkTimeoutInterval];
    [v10 setObject:&off_10017B170 forKey:kMAOptionsBAAValidity];
    [v10 setObject:v9 forKey:kMAOptionsBAAOIDSToInclude];
    [v10 setObject:@"DeKOTA-BAA-Cert" forKey:kMAOptionsBAAKeychainLabel];
    v16 = v3;
    v15 = v4;
    DeviceIdentityIssueClientCertificateWithCompletion();
    v11 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v15, v11))
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000D9DF4(v12);
      }
    }
  }

  v13 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v13 & 1;
}

- (BOOL)addBAAAuthenticationHeadersToRequest:(id)a3 withBody:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MSDBAAInterface *)self signDataAndEncodeToBase64:v9 withPrivateKey:[(MSDBAAInterface *)self privateKey] status:a5];

  v11 = [(MSDBAAInterface *)self clientCertArray];
  v12 = [(MSDBAAInterface *)self certificatesEncodeToBase64:v11 status:a5];

  if (v10)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000D9E88(v15);
    }
  }

  else
  {
    [v8 setValue:v10 forHTTPHeaderField:@"X-Apple-RM-Signature-Data"];
    [v8 setValue:v12 forHTTPHeaderField:@"X-Apple-RM-Signature-Certificates"];
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v8 allHTTPHeaderFields];
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Request header with BAA certificate: %{public}@", &v18, 0xCu);
    }
  }

  return v14;
}

- (id)signDataAndEncodeToBase64:(id)a3 withPrivateKey:(__SecKey *)a4 status:(id *)a5
{
  error = 0;
  v5 = SecKeyCreateSignature(a4, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, a3, &error);
  v6 = v5;
  if (v5)
  {
    v7 = [(__CFData *)v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)certificatesEncodeToBase64:(id)a3 status:(id *)a4
{
  v4 = [(MSDBAAInterface *)self serializeCertificateChain:a3, a4];
  v9 = 0;
  v5 = [NSJSONSerialization dataWithJSONObject:v4 options:0 error:&v9];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 base64EncodedStringWithOptions:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)serializeCertificateChain:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = SecCertificateCopyData(*(*(&v14 + 1) + 8 * i));
        v11 = [(__CFData *)v10 base64EncodedStringWithOptions:0, v14];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (void)writeCertsToDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 objectAtIndex:0];
  v5 = [v3 objectAtIndex:1];

  v7 = SecCertificateCopyData(v4);
  v6 = SecCertificateCopyData(v5);
  [(__CFData *)v7 writeToFile:@"/tmp/leafCertificate" atomically:1];
  [(__CFData *)v6 writeToFile:@"/tmp/intermediateCertificate" atomically:1];
}

- (__SecKey)lockcrypto_extract_public:(id)a3
{
  v3 = a3;
  trust = 0;
  if (v3 && (BasicX509 = SecPolicyCreateBasicX509()) != 0 && !SecTrustCreateWithCertificates(v3, BasicX509, &trust) && (v8 = SecTrustCopyPublicKey(trust)) != 0)
  {
    v6 = v8;
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D9ECC(v6, v9);
    }

    v13 = 0;
    v10 = SecKeyCopyExternalRepresentation(v6, &v13);
    v11 = [[NSString alloc] initWithData:v10 encoding:4];
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D9F44(v10, v11, v12);
    }
  }

  else
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D9FCC(v5);
    }

    v6 = 0;
  }

  return v6;
}

- (void)printAllKeys:(id)a3
{
  v4 = a3;
  v5 = &IDSSendMessageOptionFireAndForgetKey_ptr;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      v10 = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
      v11 = kMAOptionsBAAOIDDeviceIdentifiers;
      v25 = kMAOptionsBAAOIDHardwareProperties;
      do
      {
        v12 = 0;
        do
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v30 + 1) + 8 * v12);
          if (([v13 isEqualToString:v10] & 1) == 0 && (objc_msgSend(v13, "isEqualToString:", v11) & 1) == 0)
          {
            [v13 isEqualToString:v25];
          }

          v14 = [v6 objectForKey:v13];
          v15 = v5[148];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            [(MSDBAAInterface *)self printAllKeys:v14];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[NSString alloc] initWithData:v14 encoding:4];
              NSLog(@"Key:%@ val:%@", v13, v16);

              v5 = &IDSSendMessageOptionFireAndForgetKey_ptr;
            }

            else
            {
              NSLog(@"Key:%@ val:%@", v13, v14);
            }
          }

          v12 = v12 + 1;
        }

        while (v8 != v12);
        v17 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
        v8 = v17;
      }

      while (v17);
    }

    v4 = v24;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = v4;
      v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v27;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }
            }

            [(MSDBAAInterface *)self printAllKeys:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v20);
      }
    }

    else
    {
      NSLog(@"object:%@", v4);
    }
  }
}

@end