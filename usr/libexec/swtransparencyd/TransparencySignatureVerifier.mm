@interface TransparencySignatureVerifier
+ (BOOL)verifyMessage:(id)a3 signature:(id)a4 spkiHash:(id)a5 trustedKeys:(id)a6 algorithm:(__CFString *)a7 error:(id *)a8;
+ (__CFString)secKeyAlgorithmForProtoAlgorithm:(int)a3;
+ (int)protoAlgorithmForSecKeyAlgorithm:(__CFString *)a3;
- (BOOL)verifyMessage:(id)a3 signature:(id)a4 spkiHash:(id)a5 algorithm:(__CFString *)a6 error:(id *)a7;
- (TransparencySignatureVerifier)initWithTrustedKeys:(id)a3;
@end

@implementation TransparencySignatureVerifier

+ (__CFString)secKeyAlgorithmForProtoAlgorithm:(int)a3
{
  if (a3 == 1)
  {
    return kSecKeyAlgorithmECDSASignatureMessageX962SHA256;
  }

  if (qword_100156010 != -1)
  {
    sub_1000F2598();
  }

  v5 = qword_100156018;
  if (os_log_type_enabled(qword_100156018, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109120;
    v6[1] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unknown signature algorithm: %d", v6, 8u);
  }

  return 0;
}

+ (int)protoAlgorithmForSecKeyAlgorithm:(__CFString *)a3
{
  v3 = a3;
  if (([(__CFString *)v3 isEqualToString:kSecKeyAlgorithmECDSASignatureMessageX962SHA256]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    if (qword_100156010 != -1)
    {
      sub_1000F25AC();
    }

    v5 = qword_100156018;
    if (os_log_type_enabled(qword_100156018, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unknown signature algorithm: %@", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (TransparencySignatureVerifier)initWithTrustedKeys:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TransparencySignatureVerifier;
  v6 = [(TransparencySignatureVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trustedKeys, a3);
  }

  return v7;
}

- (BOOL)verifyMessage:(id)a3 signature:(id)a4 spkiHash:(id)a5 algorithm:(__CFString *)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(TransparencySignatureVerifier *)self trustedKeys];
  v20 = 0;
  v16 = [TransparencySignatureVerifier verifyMessage:v14 signature:v13 spkiHash:v12 trustedKeys:v15 algorithm:a6 error:&v20];

  v17 = v20;
  if (!v16 && [TransparencyError hasUnknownSPKIHashError:v17])
  {
    [(TransparencySignatureVerifier *)self setNeedsRefresh:1];
  }

  if (a7 && v17)
  {
    v18 = v17;
    *a7 = v17;
  }

  return v16;
}

+ (BOOL)verifyMessage:(id)a3 signature:(id)a4 spkiHash:(id)a5 trustedKeys:(id)a6 algorithm:(__CFString *)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = v16;
  if (a7)
  {
    v18 = [v16 objectForKey:v15];
    if (v18)
    {
      error = 0;
      v19 = SecKeyVerifySignature(v18, a7, v13, v14, &error) == 1;
      v20 = error;
      if (error)
      {
        if (qword_100156010 != -1)
        {
          sub_1000F25C0();
        }

        v21 = qword_100156018;
        if (os_log_type_enabled(qword_100156018, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v33 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Signature verification failed: %@", buf, 0xCu);
        }

        if (a8)
        {
          v22 = v20;
LABEL_13:
          *a8 = v20;
        }
      }
    }

    else
    {
      v25 = [v15 base64EncodedStringWithOptions:0];
      v20 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-9 description:@"Unable to find trusted key for SPKI hash: %@", v25];

      if (a8 && v20)
      {
        v26 = v20;
        *a8 = v20;
      }

      if (qword_100156010 != -1)
      {
        sub_1000F25E8();
      }

      v27 = qword_100156018;
      if (os_log_type_enabled(qword_100156018, OS_LOG_TYPE_ERROR))
      {
        v28 = v27;
        v29 = [v15 base64EncodedStringWithOptions:0];
        *buf = 138543362;
        v33 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Unable to find trusted key for SPKI hash: %{public}@", buf, 0xCu);
      }

      v19 = 0;
    }
  }

  else
  {
    v23 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-136 description:@"Unknown signature algorithm"];
    v20 = v23;
    v19 = 0;
    if (a8 && v23)
    {
      v24 = v23;
      v19 = 0;
      goto LABEL_13;
    }
  }

  return v19;
}

@end