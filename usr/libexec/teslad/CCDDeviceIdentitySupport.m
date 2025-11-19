@interface CCDDeviceIdentitySupport
+ (id)_signPayloadData:(id)a3 withPrivateKey:(id)a4 outError:(id *)a5;
+ (id)requestWithPayload:(id)a3 URL:(id)a4 privateKey:(id)a5 clientCertificates:(id)a6 outError:(id *)a7;
+ (void)retrieveClientCertificateWithNameSuffix:(id)a3 completion:(id)a4;
@end

@implementation CCDDeviceIdentitySupport

+ (void)retrieveClientCertificateWithNameSuffix:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Retrieve Client Certificate.\n", buf, 2u);
  }

  v8 = @"DEP-client-cert";
  if ([v5 length])
  {
    v9 = [(__CFString *)v8 stringByAppendingFormat:@"-%@", v5];

    v8 = v9;
  }

  v10 = kMAOptionsBAAOIDSToInclude;
  v25[0] = kMAOptionsBAAOIDSToInclude;
  v24[0] = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
  v24[1] = kMAOptionsBAAOIDIMG4Manifest;
  v24[2] = kMAOptionsBAAOIDDeviceIdentifiers;
  v24[3] = kMAOptionsBAAOIDHardwareProperties;
  v24[4] = kMAOptionsBAAOIDKeyUsageProperties;
  v24[5] = kMAOptionsBAAOIDDeviceOSInformation;
  v11 = [NSArray arrayWithObjects:v24 count:6];
  v12 = [NSMutableArray arrayWithArray:v11];
  v26[0] = v12;
  v26[1] = v8;
  v25[1] = kMAOptionsBAAKeychainLabel;
  v25[2] = kMAOptionsBAAKeychainAccessGroup;
  v26[2] = @"com.apple.cloudconfigd";
  v13 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
  v14 = [v13 mutableCopy];

  if (+[CCDDeviceUtilities isInternalBuild](CCDDeviceUtilities, "isInternalBuild") && !+[CCDDeviceUtilities isRunningInRootLaunchdContext](CCDDeviceUtilities, "isRunningInRootLaunchdContext") && !+[CCDDeviceUtilities isRunningInRecovery](CCDDeviceUtilities, "isRunningInRecovery") && !+[CCDDeviceUtilities isRunningInDiagnosticsMode])
  {
    v15 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, 0);
    v16 = [v14 objectForKeyedSubscript:v10];
    [v16 addObject:kMAOptionsBAAOIDAccessControls];

    [v14 setObject:v15 forKeyedSubscript:kMAOptionsBAAAccessControls];
  }

  [v14 setObject:v5 forKeyedSubscript:kMAOptionsBAAClientNameSuffix];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100001F18;
  v20[3] = &unk_10001C938;
  v21 = v14;
  v22 = v6;
  v17 = v6;
  v18 = v14;
  v19 = objc_retainBlock(v20);
  (v19[2])();
}

+ (id)_signPayloadData:(id)a3 withPrivateKey:(id)a4 outError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = DEPLogObjects();
  v10 = *(v9 + 8);
  if (v7 && v8)
  {
    if (os_log_type_enabled(*(v9 + 8), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Signing the payload with the private key...", buf, 2u);
    }

    error = 0;
    v11 = SecKeyCreateSignature(v8, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v7, &error);
    if (!v11)
    {
      v12 = error;
      v13 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = [(__CFError *)v12 description];
        v16 = [v15 UTF8String];
        *buf = 136446210;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to create signature: %{public}s\n", buf, 0xCu);
      }

      if (a5)
      {
        *a5 = [CCDError internalErrorWithCode:33010];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(*(v9 + 8), OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "No private key, can't sign the payload", buf, 2u);
    }

    if (a5)
    {
      [CCDError internalErrorWithCode:33011];
      *a5 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (id)requestWithPayload:(id)a3 URL:(id)a4 privateKey:(id)a5 clientCertificates:(id)a6 outError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (v15 && [v15 count] == 2)
  {
    v17 = [v12 dictionary];
    v60 = 0;
    v18 = [NSJSONSerialization dataWithJSONObject:v17 options:0 error:&v60];
    v19 = v60;
    if (!v18)
    {
      if (a7)
      {
        [CCDError internalErrorWithCode:33009];
        *a7 = v34 = 0;
      }

      else
      {
        v34 = 0;
      }

      goto LABEL_42;
    }

    v59 = 0;
    v20 = [a1 _signPayloadData:v18 withPrivateKey:v14 outError:&v59];
    v21 = v59;
    v58 = v21;
    if (!v20 || v21)
    {
      v39 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Error while signing the request payload", buf, 2u);
      }

      v34 = 0;
      if (a7)
      {
        *a7 = v58;
      }

      goto LABEL_41;
    }

    v50 = v14;
    v52 = v13;
    v56 = v20;
    v57 = v17;
    v55 = [v20 base64EncodedDataWithOptions:0];
    v22 = [[NSString alloc] initWithData:v55 encoding:4];
    v23 = [v16 objectAtIndexedSubscript:0];
    v24 = [CCDCertificateSupport base64Encodedx509CertificateStringFromCertificate:v23];

    v25 = [v16 objectAtIndexedSubscript:1];
    v26 = [CCDCertificateSupport base64Encodedx509CertificateStringFromCertificate:v25];

    v27 = [NSString alloc];
    v53 = v18;
    v28 = [v18 base64EncodedDataWithOptions:0];
    v29 = [v27 initWithData:v28 encoding:4];

    v30 = objc_opt_new();
    v48 = v29;
    [v30 setObject:v29 forKeyedSubscript:@"payload"];
    v54 = v22;
    [v30 setObject:v22 forKeyedSubscript:@"payload_signature"];
    v51 = v24;
    [v30 setObject:v24 forKeyedSubscript:@"sign_cert"];
    v49 = v26;
    [v30 setObject:v26 forKeyedSubscript:@"intermediate_cert"];
    v46 = [NSDictionary dictionaryWithDictionary:v30];
    v31 = [NSJSONSerialization dataWithJSONObject:"dataWithJSONObject:options:error:" options:? error:?];
    v47 = v19;

    v45 = v31;
    if (v31)
    {
      v32 = *(DEPLogObjects() + 8);
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      v13 = v52;
      if (v52)
      {
        v17 = v57;
        v18 = v53;
        v14 = v50;
        if (v33)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Setting up the request.", buf, 2u);
        }

        v34 = [[NSMutableURLRequest alloc] initWithURL:v52 cachePolicy:0 timeoutInterval:30.0];
        [v34 setHTTPMethod:@"POST"];
        [v34 setValue:@"3" forHTTPHeaderField:@"X-Profile-Protocol-Version"];
        v35 = +[CCDRequestSupport userAgentString];
        [v34 setValue:v35 forHTTPHeaderField:@"User-Agent"];

        v36 = v45;
        v37 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v45 length]);
        [v34 setValue:v37 forHTTPHeaderField:@"Content-Length"];

        [v34 setHTTPBody:v45];
        v19 = v47;
        goto LABEL_40;
      }

      v17 = v57;
      v18 = v53;
      v14 = v50;
      if (v33)
      {
        v42 = v32;
        v43 = [0 description];
        *buf = 138543362;
        v62 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Couldn't build up the URL from string: %{public}@", buf, 0xCu);
      }

      if (a7)
      {
        [CCDError internalErrorWithCode:33012];
        *a7 = v34 = 0;
      }

      else
      {
        v34 = 0;
      }

      v19 = v47;
    }

    else
    {
      v40 = *(DEPLogObjects() + 8);
      v13 = v52;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "No serial request data", buf, 2u);
      }

      v17 = v57;
      v18 = v53;
      v14 = v50;
      v19 = v47;
      if (a7 && v47)
      {
        goto LABEL_31;
      }

      v41 = *(DEPLogObjects() + 8);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Unknown error while serializing the request dictionary", buf, 2u);
      }

      if (a7)
      {
LABEL_31:
        [CCDError internalErrorWithCode:33009];
        *a7 = v34 = 0;
      }

      else
      {
        v34 = 0;
      }
    }

    v36 = v45;
LABEL_40:

    v20 = v56;
LABEL_41:

LABEL_42:
    goto LABEL_43;
  }

  v38 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "No certificate, can't do the request", buf, 2u);
  }

  if (a7)
  {
    [CCDError internalErrorWithCode:33013];
    *a7 = v34 = 0;
  }

  else
  {
    v34 = 0;
  }

LABEL_43:

  return v34;
}

@end