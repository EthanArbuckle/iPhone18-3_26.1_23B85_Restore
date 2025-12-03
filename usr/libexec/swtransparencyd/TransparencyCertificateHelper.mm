@interface TransparencyCertificateHelper
+ (BOOL)addTrustedCertificate:(id)certificate trustedKeys:(id)keys error:(id *)error;
+ (BOOL)verifyCertificates:(id)certificates intermediates:(id)intermediates policy:(__SecPolicy *)policy error:(id *)error;
+ (BOOL)verifyLeaf:(id)leaf intermediates:(id)intermediates policy:(__SecPolicy *)policy error:(id *)error;
+ (__SecCertificate)certificateFromData:(id)data error:(id *)error;
+ (id)copyTrustedKeysFromDataArray:(id)array error:(id *)error;
+ (id)createCACertificatesArray:(id)array error:(id *)error;
@end

@implementation TransparencyCertificateHelper

+ (__SecCertificate)certificateFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = SecCertificateCreateWithData(0, dataCopy);
  if (v6 || (v6 = SecCertificateCreateWithPEM()) != 0)
  {
    v7 = v6;
  }

  else
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-7 description:@"Unable to decode certificate"];
    }

    if (qword_100156140 != -1)
    {
      sub_1000F3218();
    }

    v9 = qword_100156148;
    if (os_log_type_enabled(qword_100156148, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to decode certificate", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

+ (BOOL)addTrustedCertificate:(id)certificate trustedKeys:(id)keys error:(id *)error
{
  keysCopy = keys;
  v8 = [TransparencyCertificateHelper certificateFromData:certificate error:error];
  if (!v8)
  {
    if (qword_100156140 != -1)
    {
      sub_1000F3254();
    }

    v15 = qword_100156148;
    if (os_log_type_enabled(qword_100156148, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "failed to decode trusted certificate", buf, 2u);
    }

    goto LABEL_24;
  }

  v9 = v8;
  v10 = SecCertificateCopyKey(v8);
  if (!v10)
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-8 description:@"Unable to decode certificate public key"];
    }

    if (qword_100156140 != -1)
    {
      sub_1000F3240();
    }

    v16 = qword_100156148;
    if (os_log_type_enabled(qword_100156148, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unable to decode certificate public key", v21, 2u);
    }

    v17 = v9;
    goto LABEL_23;
  }

  v11 = v10;
  v12 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
  if (!v12)
  {
    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-30 description:@"Unable to copy certificate key SPKI hash"];
    }

    if (qword_100156140 != -1)
    {
      sub_1000F322C();
    }

    v18 = qword_100156148;
    if (os_log_type_enabled(qword_100156148, OS_LOG_TYPE_ERROR))
    {
      v20[0] = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unable to copy certificate key SPKI hash", v20, 2u);
    }

    CFRelease(v9);
    v17 = v11;
LABEL_23:
    CFRelease(v17);
LABEL_24:
    v14 = 0;
    goto LABEL_25;
  }

  v13 = v12;
  [keysCopy setObject:v11 forKey:v12];
  CFRelease(v9);
  CFRelease(v11);

  v14 = 1;
LABEL_25:

  return v14;
}

+ (id)copyTrustedKeysFromDataArray:(id)array error:(id *)error
{
  arrayCopy = array;
  v6 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = arrayCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![TransparencyCertificateHelper addTrustedCertificate:*(*(&v14 + 1) + 8 * v11) trustedKeys:v6 error:error, v14])
        {

          v12 = 0;
          goto LABEL_11;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = v6;
LABEL_11:

  return v12;
}

+ (id)createCACertificatesArray:(id)array error:(id *)error
{
  arrayCopy = array;
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [arrayCopy count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = arrayCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [TransparencyCertificateHelper certificateFromData:*(*(&v17 + 1) + 8 * i) error:error];
        if (!v12)
        {
          if (qword_100156140 != -1)
          {
            sub_1000F3268();
          }

          v14 = qword_100156148;
          if (os_log_type_enabled(qword_100156148, OS_LOG_TYPE_ERROR))
          {
            *v16 = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to decode intermediate certificate", v16, 2u);
          }

          v6 = 0;
          goto LABEL_15;
        }

        v13 = v12;
        [v6 addObject:v12];
        CFRelease(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v6;
}

+ (BOOL)verifyLeaf:(id)leaf intermediates:(id)intermediates policy:(__SecPolicy *)policy error:(id *)error
{
  intermediatesCopy = intermediates;
  v10 = [TransparencyCertificateHelper certificateFromData:leaf error:error];
  if (v10)
  {
    v11 = v10;
    v12 = [NSMutableArray arrayWithObject:v10];
    CFRelease(v11);
    [v12 addObjectsFromArray:intermediatesCopy];
    trust[0] = 0;
    v13 = SecTrustCreateWithCertificates(v12, policy, trust);
    if (v13)
    {
      if (error)
      {
        *error = [TransparencyError errorWithDomain:kTransparencyErrorAlloc code:v13 description:@"SecTrustCreate failed"];
      }

      if (qword_100156140 != -1)
      {
        sub_1000F3290();
      }

      v14 = qword_100156148;
      if (os_log_type_enabled(qword_100156148, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "SecTrustCreate failed", v20, 2u);
      }

      v15 = 0;
    }

    else
    {
      v20[0] = 0;
      v15 = SecTrustEvaluateWithError(trust[0], v20);
      v17 = v20[0];
      if (error && v20[0])
      {
        *error = v20[0];
        v20[0] = 0;
      }

      else if (v20[0])
      {
        v20[0] = 0;
        CFRelease(v17);
      }

      v18 = trust[0];
      if (trust[0])
      {
        trust[0] = 0;
        CFRelease(v18);
      }
    }
  }

  else
  {
    if (qword_100156140 != -1)
    {
      sub_1000F32B8();
    }

    v16 = qword_100156148;
    if (os_log_type_enabled(qword_100156148, OS_LOG_TYPE_ERROR))
    {
      LOWORD(trust[0]) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "failed to decode leaf certificate", trust, 2u);
    }

    v15 = 0;
  }

  return v15;
}

+ (BOOL)verifyCertificates:(id)certificates intermediates:(id)intermediates policy:(__SecPolicy *)policy error:(id *)error
{
  certificatesCopy = certificates;
  intermediatesCopy = intermediates;
  v12 = objc_autoreleasePoolPush();
  v34 = 0;
  v13 = [self createCACertificatesArray:intermediatesCopy error:&v34];
  v14 = v34;
  if (v13)
  {
    v25 = v12;
    v26 = intermediatesCopy;
    errorCopy = error;
    v28 = certificatesCopy;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = certificatesCopy;
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      v19 = 1;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if (v19)
          {
            v21 = *(*(&v30 + 1) + 8 * i);
            v29 = v14;
            v19 = [self verifyLeaf:v21 intermediates:v13 policy:policy error:&v29];
            v22 = v29;

            v14 = v22;
          }

          else
          {
            v19 = 0;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v17);
    }

    else
    {
      v19 = 1;
    }

    error = errorCopy;
    certificatesCopy = v28;
    v12 = v25;
    intermediatesCopy = v26;
  }

  else
  {
    v19 = 0;
  }

  objc_autoreleasePoolPop(v12);
  if (error && v14)
  {
    v23 = v14;
    *error = v14;
  }

  return v19;
}

@end