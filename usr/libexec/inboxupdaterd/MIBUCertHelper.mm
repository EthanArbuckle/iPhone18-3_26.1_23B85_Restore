@interface MIBUCertHelper
+ (BOOL)SUCertPresent;
+ (__SecKey)suCertKeyFromData:(id)data isSEPKey:(BOOL)key error:(id *)error;
+ (id)_getCertDataFromPath:(id)path error:(id *)error;
+ (id)_pandoraCertificates:(id *)certificates;
+ (id)_parseDERCertificates:(id)certificates error:(id *)error;
+ (id)certificatesFromData:(id)data error:(id *)error;
+ (id)pandoraCertsData:(id *)data;
+ (void)deleteSUCert:(id *)cert;
+ (void)readSUIdentityWithCompletion:(id)completion;
+ (void)trustCertificatesWithCompletion:(id)completion;
@end

@implementation MIBUCertHelper

+ (BOOL)SUCertPresent
{
  if (os_variant_has_internal_content() && (+[MIBUTestPreferences sharedInstance](MIBUTestPreferences, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 factorySUCertExist], v2, v3))
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005960C();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Overriding factory SU certificate existence to YES", buf, 2u);
    }

    return 1;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = off_1000B7908;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v19;
      v5 = 1;
      *&v8 = 138543362;
      v17 = v8;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          v13 = [NSFileManager defaultManager:v17];
          v14 = [v13 fileExistsAtPath:v12];

          if ((v14 & 1) == 0)
          {
            if (qword_1000B84A8[0] != -1)
            {
              sub_1000595E4();
            }

            v15 = qword_1000B84A0;
            v5 = 0;
            if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v23 = v12;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Certificate file %{public}@ does not exist", buf, 0xCu);
              v5 = 0;
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v9);
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

+ (void)trustCertificatesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!os_variant_has_internal_content())
  {
    v9 = 0;
    v10 = 0;
    v31 = 0;
    v11 = 0;
    v12 = @"retail-wifi-cert.apple.com";
    goto LABEL_31;
  }

  v5 = +[MIBUTestPreferences sharedInstance];
  iseTrustCertPaths = [v5 iseTrustCertPaths];

  if (iseTrustCertPaths)
  {
    v7 = +[MIBUTestPreferences sharedInstance];
    iseTrustCertPaths2 = [v7 iseTrustCertPaths];

    if (qword_1000B84A8[0] != -1)
    {
      sub_100059620();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v40 = iseTrustCertPaths2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding ISE trust certificate paths to: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    iseTrustCertPaths2 = 0;
  }

  v13 = +[MIBUTestPreferences sharedInstance];
  iseTrustCertName = [v13 iseTrustCertName];

  if (!iseTrustCertName)
  {
    v12 = @"retail-wifi-cert.apple.com";
    v11 = iseTrustCertPaths2;
    if (!iseTrustCertPaths2)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  v15 = +[MIBUTestPreferences sharedInstance];
  iseTrustCertName2 = [v15 iseTrustCertName];

  if (qword_1000B84A8[0] != -1)
  {
    sub_100059634();
  }

  v17 = qword_1000B84A0;
  v11 = iseTrustCertPaths2;
  if (!os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = iseTrustCertName2;
    if (!iseTrustCertPaths2)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  *buf = 138543362;
  v40 = iseTrustCertName2;
  v12 = iseTrustCertName2;
  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Overriding ISE trust certificate name to: %{public}@", buf, 0xCu);
  if (iseTrustCertPaths2)
  {
LABEL_16:
    v28 = v12;
    v29 = completionCopy;
    v31 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v10 = 0;
      v9 = 0;
      v21 = *v35;
      while (2)
      {
        v22 = 0;
        v23 = v10;
        v24 = v9;
        do
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v34 + 1) + 8 * v22);
          v33 = 0;
          v9 = [self _getCertDataFromPath:v25 error:{&v33, v28, v29}];
          v26 = v33;

          if (v26)
          {
            v10 = v23;
LABEL_34:
            v11 = v18;

            v27 = 0;
            v12 = v28;
            completionCopy = v29;
            goto LABEL_32;
          }

          v32 = 0;
          v10 = [self _parseDERCertificates:v9 error:&v32];
          v26 = v32;

          if (v26)
          {
            goto LABEL_34;
          }

          [v31 addObjectsFromArray:v10];
          v22 = v22 + 1;
          v23 = v10;
          v24 = v9;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    completionCopy = v29;
    v11 = iseTrustCertPaths2;
    v12 = v28;
    if (!v28)
    {
      goto LABEL_28;
    }

LABEL_31:
    v27 = objc_opt_new();
    [v27 addObject:v12];
    v26 = 0;
    goto LABEL_32;
  }

LABEL_27:
  v31 = 0;
  v10 = 0;
  v9 = 0;
  if (v12)
  {
    goto LABEL_31;
  }

LABEL_28:
  v26 = 0;
  v27 = 0;
LABEL_32:
  completionCopy[2](completionCopy, v31, v27, v26);
}

+ (__SecKey)suCertKeyFromData:(id)data isSEPKey:(BOOL)key error:(id *)error
{
  dataCopy = data;
  error = 0;
  if (!os_variant_has_internal_content() || key)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100059670();
    }

    v17 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Factory SU key is SEP key", buf, 2u);
    }

    v18 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &error);
    if (v18)
    {
      v35[0] = kSecAttrIsPermanent;
      v35[1] = kSecAttrTokenID;
      v36[0] = &__kCFBooleanFalse;
      v36[1] = kSecAttrTokenIDAppleKeyStore;
      v35[2] = kSecAttrTokenOID;
      v35[3] = kSecAttrAccessControl;
      v36[2] = dataCopy;
      v36[3] = v18;
      v16 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
      v14 = SecKeyCreateWithData(+[NSData data], v16, &error);
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v30 = 0;
        sub_100016130(&v30, 50331648, error, @"Failed to convert RK data blob.", v23, v24, v25, v26, v29);
        v15 = v30;
      }
    }

    else
    {
      v31 = 0;
      sub_100016130(&v31, 0x1000000, error, @"Failed to create access control.", v19, v20, v21, v22, v29);
      v15 = v31;
      v16 = 0;
      v14 = 0;
    }
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005965C();
    }

    v8 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Factory SU key is not SEP key", buf, 2u);
    }

    v37[0] = kSecAttrType;
    v37[1] = kSecAttrKeyClass;
    v38[0] = kSecAttrKeyTypeRSA;
    v38[1] = kSecAttrKeyClassPrivate;
    v9 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
    v14 = SecKeyCreateWithData(dataCopy, v9, &error);
    if (!v14 || error)
    {
      v32 = 0;
      sub_100016130(&v32, 50331648, error, @"Failed to create SecKeyRef with data", v10, v11, v12, v13, v29);
      v15 = v32;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0;
  }

  if (error)
  {
    v27 = v15;
    *error = v15;
  }

  return v14;
}

+ (id)certificatesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = dataCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = SecCertificateCreateWithData(0, *(*(&v21 + 1) + 8 * i));
        if (!v11)
        {
          v20 = 0;
          sub_100016130(&v20, 50331648, 0, @"Failed to create certificate from data.", v12, v13, v14, v15, v19);
          v8 = v20;
          goto LABEL_11;
        }

        v16 = v11;
        [v6 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (error)
  {
    v17 = v8;
    *error = v8;
  }

  return v6;
}

+ (void)deleteSUCert:(id *)cert
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_100059684();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deleting SU Certificate ...", buf, 2u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = off_1000B7908;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = +[NSFileManager defaultManager];
        v12 = [v11 fileExistsAtPath:v10];

        if (v12)
        {
          v13 = +[NSFileManager defaultManager];
          v23 = v7;
          v14 = [v13 removeItemAtPath:v10 error:&v23];
          v15 = v23;

          if ((v14 & 1) == 0)
          {
            if (qword_1000B84A8[0] != -1)
            {
              sub_1000596C0();
            }

            v16 = qword_1000B84A0;
            if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v29 = v10;
              v30 = 2114;
              v31 = v15;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to delete %{public}@ with error: %{public}@", buf, 0x16u);
            }

            sub_100016130(cert, 50331650, v15, @"Failed to delete %@", v17, v18, v19, v20, v10);
          }

          v7 = v15;
        }

        else
        {
          if (qword_1000B84A8[0] != -1)
          {
            sub_100059698();
          }

          v21 = qword_1000B84A0;
          if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v29 = v10;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Certificate file %{public}@ does not exist, skip deletion...", buf, 0xCu);
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }
}

+ (id)_getCertDataFromPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:pathCopy];

  if (v7)
  {
    v8 = [[NSData alloc] initWithContentsOfFile:pathCopy];
    if (!v8)
    {
      sub_1000597D8(pathCopy, error);
    }
  }

  else
  {
    sub_1000596E8(pathCopy, error);
    v8 = 0;
  }

  return v8;
}

+ (id)_pandoraCertificates:(id *)certificates
{
  v4 = objc_alloc_init(NSMutableArray);
  if (os_variant_has_internal_content())
  {
    v5 = +[MIBUTestPreferences sharedInstance];
    usePandoraNonProdCerts = [v5 usePandoraNonProdCerts];
  }

  else
  {
    usePandoraNonProdCerts = 0;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_1000598C4();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"Prod";
    if (usePandoraNonProdCerts)
    {
      v8 = @"Non-Prod";
    }

    *v26 = 138543362;
    *&v26[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Use Pandora Key Server certificates of grade: %{public}@", v26, 0xCu);
  }

  v9 = [NSData alloc];
  if (usePandoraNonProdCerts)
  {
    v10 = aBeginCertifica_0;
  }

  else
  {
    v10 = aBeginCertifica;
  }

  if (usePandoraNonProdCerts)
  {
    v11 = aBeginCertifica_2;
  }

  else
  {
    v11 = aBeginCertifica_1;
  }

  v12 = &unk_1000B70DC;
  if (usePandoraNonProdCerts)
  {
    v13 = &unk_1000B6D74;
  }

  else
  {
    v12 = &unk_1000B7780;
    v13 = &unk_1000B7424;
  }

  v14 = [v9 initWithBytesNoCopy:v10 length:*v12 freeWhenDone:0];
  v15 = [[NSData alloc] initWithBytesNoCopy:v11 length:*v13 freeWhenDone:0];
  v16 = SecCertificateCreateWithPEM();
  if (v16 && (v21 = v16, [v4 addObject:v16], v21, (v22 = SecCertificateCreateWithPEM()) != 0))
  {
    v23 = v22;
    [v4 addObject:v22];

    v24 = [v4 copy];
  }

  else
  {
    sub_100016130(certificates, 50331651, 0, @"Failed to create certificate from PEM data", v17, v18, v19, v20, *v26);
    v24 = 0;
  }

  return v24;
}

+ (void)readSUIdentityWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!os_variant_has_internal_content())
  {
    factorySUCertPath2 = @"/private/var/hardware/factory/su/su0-cert.der";
LABEL_14:
    factorySUKeyPath2 = @"/private/var/hardware/factory/su/su0-key.der";
    goto LABEL_15;
  }

  v5 = +[MIBUTestPreferences sharedInstance];
  factorySUCertPath = [v5 factorySUCertPath];

  if (factorySUCertPath)
  {
    v7 = +[MIBUTestPreferences sharedInstance];
    factorySUCertPath2 = [v7 factorySUCertPath];

    if (qword_1000B84A8[0] != -1)
    {
      dispatch_once(qword_1000B84A8, &stru_10009B5C8);
    }

    v9 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = factorySUCertPath2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Overriding SU certificate path to %{public}@", buf, 0xCu);
    }
  }

  else
  {
    factorySUCertPath2 = @"/private/var/hardware/factory/su/su0-cert.der";
  }

  v10 = +[MIBUTestPreferences sharedInstance];
  factorySUKeyPath = [v10 factorySUKeyPath];

  if (!factorySUKeyPath)
  {
    goto LABEL_14;
  }

  v12 = +[MIBUTestPreferences sharedInstance];
  factorySUKeyPath2 = [v12 factorySUKeyPath];

  if (qword_1000B84A8[0] != -1)
  {
    dispatch_once(qword_1000B84A8, &stru_10009B5E8);
  }

  v14 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = factorySUKeyPath2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Overriding SU key path to %{public}@", buf, 0xCu);
  }

LABEL_15:
  v23 = 0;
  v15 = [self _getCertDataFromPath:factorySUCertPath2 error:&v23];
  v16 = v23;
  if (v16)
  {
    v20 = v16;
    v19 = 0;
    v17 = 0;
  }

  else
  {
    v22 = 0;
    v17 = [self _parseDERCertificates:v15 error:&v22];
    v18 = v22;
    if (v18)
    {
      v20 = v18;
      v19 = 0;
    }

    else
    {
      v21 = 0;
      v19 = [self _getCertDataFromPath:factorySUKeyPath2 error:&v21];
      v20 = v21;
    }
  }

  completionCopy[2](completionCopy, v17, v19, v20);
}

+ (id)pandoraCertsData:(id *)data
{
  v13 = 0;
  v4 = [MIBUCertHelper _pandoraCertificates:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = 0;
    if (data)
    {
LABEL_6:
      v10 = v5;
      *data = v5;
    }
  }

  else
  {
    v6 = objc_alloc_init(NSMutableData);
    if ([v4 count])
    {
      v7 = 0;
      do
      {
        v8 = [v4 objectAtIndexedSubscript:v7];

        v9 = SecCertificateCopyData(v8);
        [v6 appendData:v9];

        ++v7;
      }

      while (v7 < [v4 count]);
    }

    if (data)
    {
      goto LABEL_6;
    }
  }

  v11 = [v6 copy];

  return v11;
}

+ (id)_parseDERCertificates:(id)certificates error:(id *)error
{
  certificatesCopy = certificates;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  bytes = [certificatesCopy bytes];
  v7 = CTParseCertificateSet(bytes, [certificatesCopy length] + bytes, v18, 3, &v17);
  if (v7 || !v17)
  {
    sub_100016130(error, 50331648, 0, @"Failed to parse certificate set: 0x%08x", v8, v9, v10, v11, v7);
    v12 = 0;
  }

  else
  {
    v12 = objc_alloc_init(NSMutableArray);
    if (v12 && v17)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = [[NSData alloc] initWithBytes:*&v18[v13] length:*(&v18[v13] + 1)];
        [v12 setObject:v15 atIndexedSubscript:v13];

        v13 = ++v14;
      }

      while (v17 > v14);
    }
  }

  return v12;
}

@end