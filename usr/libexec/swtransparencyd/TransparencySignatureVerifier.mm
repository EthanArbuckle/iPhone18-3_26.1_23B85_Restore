@interface TransparencySignatureVerifier
+ (BOOL)verifyMessage:(id)message signature:(id)signature spkiHash:(id)hash trustedKeys:(id)keys algorithm:(__CFString *)algorithm error:(id *)error;
+ (__CFString)secKeyAlgorithmForProtoAlgorithm:(int)algorithm;
+ (int)protoAlgorithmForSecKeyAlgorithm:(__CFString *)algorithm;
- (BOOL)verifyMessage:(id)message signature:(id)signature spkiHash:(id)hash algorithm:(__CFString *)algorithm error:(id *)error;
- (TransparencySignatureVerifier)initWithTrustedKeys:(id)keys;
@end

@implementation TransparencySignatureVerifier

+ (__CFString)secKeyAlgorithmForProtoAlgorithm:(int)algorithm
{
  if (algorithm == 1)
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
    v6[1] = algorithm;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unknown signature algorithm: %d", v6, 8u);
  }

  return 0;
}

+ (int)protoAlgorithmForSecKeyAlgorithm:(__CFString *)algorithm
{
  algorithmCopy = algorithm;
  if (([(__CFString *)algorithmCopy isEqualToString:kSecKeyAlgorithmECDSASignatureMessageX962SHA256]& 1) != 0)
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
      v8 = algorithmCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unknown signature algorithm: %@", &v7, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (TransparencySignatureVerifier)initWithTrustedKeys:(id)keys
{
  keysCopy = keys;
  v9.receiver = self;
  v9.super_class = TransparencySignatureVerifier;
  v6 = [(TransparencySignatureVerifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trustedKeys, keys);
  }

  return v7;
}

- (BOOL)verifyMessage:(id)message signature:(id)signature spkiHash:(id)hash algorithm:(__CFString *)algorithm error:(id *)error
{
  hashCopy = hash;
  signatureCopy = signature;
  messageCopy = message;
  trustedKeys = [(TransparencySignatureVerifier *)self trustedKeys];
  v20 = 0;
  v16 = [TransparencySignatureVerifier verifyMessage:messageCopy signature:signatureCopy spkiHash:hashCopy trustedKeys:trustedKeys algorithm:algorithm error:&v20];

  v17 = v20;
  if (!v16 && [TransparencyError hasUnknownSPKIHashError:v17])
  {
    [(TransparencySignatureVerifier *)self setNeedsRefresh:1];
  }

  if (error && v17)
  {
    v18 = v17;
    *error = v17;
  }

  return v16;
}

+ (BOOL)verifyMessage:(id)message signature:(id)signature spkiHash:(id)hash trustedKeys:(id)keys algorithm:(__CFString *)algorithm error:(id *)error
{
  messageCopy = message;
  signatureCopy = signature;
  hashCopy = hash;
  keysCopy = keys;
  v17 = keysCopy;
  if (algorithm)
  {
    v18 = [keysCopy objectForKey:hashCopy];
    if (v18)
    {
      error = 0;
      v19 = SecKeyVerifySignature(v18, algorithm, messageCopy, signatureCopy, &error) == 1;
      errorCopy = error;
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
          v33 = errorCopy;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Signature verification failed: %@", buf, 0xCu);
        }

        if (error)
        {
          v22 = errorCopy;
LABEL_13:
          *error = errorCopy;
        }
      }
    }

    else
    {
      v25 = [hashCopy base64EncodedStringWithOptions:0];
      errorCopy = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-9 description:@"Unable to find trusted key for SPKI hash: %@", v25];

      if (error && errorCopy)
      {
        v26 = errorCopy;
        *error = errorCopy;
      }

      if (qword_100156010 != -1)
      {
        sub_1000F25E8();
      }

      v27 = qword_100156018;
      if (os_log_type_enabled(qword_100156018, OS_LOG_TYPE_ERROR))
      {
        v28 = v27;
        v29 = [hashCopy base64EncodedStringWithOptions:0];
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
    errorCopy = v23;
    v19 = 0;
    if (error && v23)
    {
      v24 = v23;
      v19 = 0;
      goto LABEL_13;
    }
  }

  return v19;
}

@end