@interface TransparencyCertificateHelper
+ (BOOL)addTrustedCertificate:(id)a3 trustedKeys:(id)a4 error:(id *)a5;
+ (BOOL)verifyCertificates:(id)a3 intermediates:(id)a4 policy:(__SecPolicy *)a5 error:(id *)a6;
+ (BOOL)verifyLeaf:(id)a3 intermediates:(id)a4 policy:(__SecPolicy *)a5 error:(id *)a6;
+ (__SecCertificate)certificateFromData:(id)a3 error:(id *)a4;
+ (id)copyTrustedKeysFromDataArray:(id)a3 error:(id *)a4;
+ (id)createCACertificatesArray:(id)a3 error:(id *)a4;
@end

@implementation TransparencyCertificateHelper

+ (__SecCertificate)certificateFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = SecCertificateCreateWithData(0, v5);
  if (v6 || (v6 = SecCertificateCreateWithPEM()) != 0)
  {
    v7 = v6;
  }

  else
  {
    if (a4)
    {
      *a4 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-7 description:@"Unable to decode certificate"];
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

+ (BOOL)addTrustedCertificate:(id)a3 trustedKeys:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [TransparencyCertificateHelper certificateFromData:a3 error:a5];
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
    if (a5)
    {
      *a5 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-8 description:@"Unable to decode certificate public key"];
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
    if (a5)
    {
      *a5 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-30 description:@"Unable to copy certificate key SPKI hash"];
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
  [v7 setObject:v11 forKey:v12];
  CFRelease(v9);
  CFRelease(v11);

  v14 = 1;
LABEL_25:

  return v14;
}

+ (id)copyTrustedKeysFromDataArray:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
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

        if (![TransparencyCertificateHelper addTrustedCertificate:*(*(&v14 + 1) + 8 * v11) trustedKeys:v6 error:a4, v14])
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

+ (id)createCACertificatesArray:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
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

        v12 = [TransparencyCertificateHelper certificateFromData:*(*(&v17 + 1) + 8 * i) error:a4];
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

+ (BOOL)verifyLeaf:(id)a3 intermediates:(id)a4 policy:(__SecPolicy *)a5 error:(id *)a6
{
  v9 = a4;
  v10 = [TransparencyCertificateHelper certificateFromData:a3 error:a6];
  if (v10)
  {
    v11 = v10;
    v12 = [NSMutableArray arrayWithObject:v10];
    CFRelease(v11);
    [v12 addObjectsFromArray:v9];
    trust[0] = 0;
    v13 = SecTrustCreateWithCertificates(v12, a5, trust);
    if (v13)
    {
      if (a6)
      {
        *a6 = [TransparencyError errorWithDomain:kTransparencyErrorAlloc code:v13 description:@"SecTrustCreate failed"];
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
      if (a6 && v20[0])
      {
        *a6 = v20[0];
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

+ (BOOL)verifyCertificates:(id)a3 intermediates:(id)a4 policy:(__SecPolicy *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = objc_autoreleasePoolPush();
  v34 = 0;
  v13 = [a1 createCACertificatesArray:v11 error:&v34];
  v14 = v34;
  if (v13)
  {
    v25 = v12;
    v26 = v11;
    v27 = a6;
    v28 = v10;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = v10;
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
            v19 = [a1 verifyLeaf:v21 intermediates:v13 policy:a5 error:&v29];
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

    a6 = v27;
    v10 = v28;
    v12 = v25;
    v11 = v26;
  }

  else
  {
    v19 = 0;
  }

  objc_autoreleasePoolPop(v12);
  if (a6 && v14)
  {
    v23 = v14;
    *a6 = v14;
  }

  return v19;
}

@end