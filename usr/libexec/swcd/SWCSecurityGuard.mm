@interface SWCSecurityGuard
+ (SWCSecurityGuard)sharedSecurityGuard;
- (BOOL)_isSystemTrusted:(__SecTrust *)trusted;
- (BOOL)_verifyExtendedValidationOfTrust:(__SecTrust *)trust error:(id *)error;
- (BOOL)verifyTrust:(__SecTrust *)trust allowInstalledRootCertificates:(BOOL)certificates error:(id *)error;
- (id)JSONObjectWithSignedJSONData:(id)data error:(id *)error;
- (id)_errorForUntrustedRootCertificateOfTrust:(__SecTrust *)trust;
- (id)_init;
- (optional<SecTrustResultType>)_evaluateTrust:(__SecTrust *)trust allowingKeychains:(BOOL)keychains error:(id *)error;
- (optional<SecTrustResultType>)_evaluateTrust:(__SecTrust *)trust error:(id *)error;
@end

@implementation SWCSecurityGuard

+ (SWCSecurityGuard)sharedSecurityGuard
{
  if (qword_10003AD38 != -1)
  {
    dispatch_once(&qword_10003AD38, &stru_1000351E0);
  }

  v3 = qword_10003AD30;

  return v3;
}

- (id)JSONObjectWithSignedJSONData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_autoreleasePoolPush();
  v24 = 0;
  v7 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:&v24];
  v8 = v24;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v23 = 0;
    v10 = SecCMSVerifyCopyDataAndAttributes();
    v11 = v10;
    if (v10 == -26275)
    {
      v9 = 0;
    }

    else
    {
      if (v10)
      {
        v20 = [NSError alloc];
        v28[0] = &off_100036B28;
        v27[0] = @"Line";
        v27[1] = @"Function";
        v21 = [NSString stringWithUTF8String:"[SWCSecurityGuard JSONObjectWithSignedJSONData:error:]"];
        v28[1] = v21;
        v28[2] = @"Failed to extract JSON object when assuming signed";
        v27[2] = NSDebugDescriptionErrorKey;
        v27[3] = NSUnderlyingErrorKey;
        v13 = [NSError alloc];
        v25[1] = @"Function";
        v26[0] = &off_100036B28;
        v25[0] = @"Line";
        v14 = [NSString stringWithUTF8String:"[SWCSecurityGuard JSONObjectWithSignedJSONData:error:]"];
        v26[1] = v14;
        v15 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
        v16 = [v13 initWithDomain:NSOSStatusErrorDomain code:v11 userInfo:v15];
        v28[3] = v16;
        v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4];
        v12 = [v20 initWithDomain:_SWCErrorDomain code:104 userInfo:v17];

        v9 = 0;
        v8 = v21;
      }

      else
      {
        v22 = v8;
        v9 = [NSJSONSerialization JSONObjectWithData:v23 options:0 error:&v22];
        v12 = v22;
      }

      v8 = v12;
    }
  }

  objc_autoreleasePoolPop(v6);
  if (error && !v9)
  {
    v18 = v8;
    *error = v8;
  }

  return v9;
}

- (BOOL)verifyTrust:(__SecTrust *)trust allowInstalledRootCertificates:(BOOL)certificates error:(id *)error
{
  v9 = [(SWCSecurityGuard *)self _evaluateTrust:trust allowingKeychains:0 error:?];
  if ((*&v9 & 0x1FFFFFFFFLL) == 0x100000005)
  {
    v9 = [(SWCSecurityGuard *)self _evaluateTrust:trust allowingKeychains:1 error:error];
  }

  if ((*&v9 & 0x100000000) == 0)
  {
    v10 = 0;
    goto LABEL_14;
  }

  if (v9.var0.var1 == 1)
  {
    if (certificates || [(SWCSecurityGuard *)self _isSystemTrusted:trust])
    {
      v10 = 0;
      v11 = 1;
      goto LABEL_17;
    }

    v10 = [(SWCSecurityGuard *)self _errorForUntrustedRootCertificateOfTrust:trust];
    goto LABEL_14;
  }

  if (v9.var0.var1 != 4)
  {
    v12 = [NSError alloc];
    v19[0] = &off_100036B40;
    v18[0] = @"Line";
    v18[1] = @"Function";
    v13 = [NSString stringWithUTF8String:"[SWCSecurityGuard verifyTrust:allowInstalledRootCertificates:error:]"];
    v19[1] = v13;
    v19[2] = @"Disallowed trust result type.";
    v18[2] = NSDebugDescriptionErrorKey;
    v18[3] = @"TrustResultType";
    v14 = [NSNumber numberWithUnsignedInt:v9];
    v19[3] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
    v10 = [v12 initWithDomain:_SWCErrorDomain code:100 userInfo:v15];

LABEL_14:
    v11 = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v11 = [(SWCSecurityGuard *)self _verifyExtendedValidationOfTrust:trust error:error];
  v10 = 0;
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v11)
  {
    v16 = v10;
    v11 = 0;
    *error = v10;
  }

LABEL_17:

  return v11;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SWCSecurityGuard;
  return [(SWCSecurityGuard *)&v3 init];
}

- (optional<SecTrustResultType>)_evaluateTrust:(__SecTrust *)trust error:(id *)error
{
  error = 0;
  v6 = objc_autoreleasePoolPush();
  v7 = SecTrustEvaluateWithError(trust, &error);
  result = kSecTrustResultInvalid;
  TrustResult = SecTrustGetTrustResult(trust, &result);
  if (!TrustResult)
  {
    v26 = result & 0xFFFFFF00;
    v27 = result;
    v28 = &_mh_execute_header;
    goto LABEL_18;
  }

  if (v7)
  {
    v9 = [NSError alloc];
    v40[0] = &off_100036B58;
    v39[0] = @"Line";
    v39[1] = @"Function";
    v30 = [NSString stringWithUTF8String:"[SWCSecurityGuard(Private) _evaluateTrust:error:]"];
    v40[1] = v30;
    v40[2] = @"Failed to get trust result type.";
    v39[2] = NSDebugDescriptionErrorKey;
    v39[3] = NSUnderlyingErrorKey;
    v10 = [NSError alloc];
    v37[1] = @"Function";
    v38[0] = &off_100036B58;
    v37[0] = @"Line";
    v11 = [NSString stringWithUTF8String:"[SWCSecurityGuard(Private) _evaluateTrust:error:]"];
    v38[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
    v13 = [v10 initWithDomain:NSOSStatusErrorDomain code:TrustResult userInfo:v12];
    v40[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];
    v15 = [v9 initWithDomain:_SWCErrorDomain code:100 userInfo:v14];
    errorCopy = error;
    error = v15;
  }

  userInfo = [(__CFError *)error userInfo];
  v18 = [userInfo mutableCopy];

  if (v18)
  {
    v19 = SecTrustCopyResult(trust);
    if (v19)
    {
      [v18 setObject:v19 forKeyedSubscript:@"TrustResult"];
    }

    v20 = SecTrustCopyFailureDescription();
    if (v20)
    {
      [v18 setObject:v20 forKeyedSubscript:@"TrustFailureReason"];
    }

    v21 = [NSError alloc];
    domain = [(__CFError *)error domain];
    v23 = [v21 initWithDomain:domain code:-[__CFError code](error userInfo:{"code"), v18}];
    errorCopy2 = error;
    error = v23;
  }

  if (qword_10003AD48 != -1)
  {
    dispatch_once(&qword_10003AD48, &stru_100035200);
  }

  v25 = qword_10003AD40;
  if (os_log_type_enabled(qword_10003AD40, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    trustCopy = trust;
    v35 = 2112;
    errorCopy3 = error;
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Error evaluating trust %@: %@", buf, 0x16u);
    if (error)
    {
      goto LABEL_14;
    }

LABEL_17:
    v26 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_18;
  }

  if (!error)
  {
    goto LABEL_17;
  }

LABEL_14:
  v26 = 0;
  v27 = 0;
  v28 = 0;
  *error = error;
LABEL_18:
  objc_autoreleasePoolPop(v6);

  return (v28 | v27 | v26);
}

- (optional<SecTrustResultType>)_evaluateTrust:(__SecTrust *)trust allowingKeychains:(BOOL)keychains error:(id *)error
{
  keychainsCopy = keychains;
  v23 = 0;
  KeychainsAllowed = SecTrustGetKeychainsAllowed();
  if (KeychainsAllowed)
  {
    v10 = [NSError alloc];
    v33[0] = &off_100036B70;
    v32[0] = @"Line";
    v32[1] = @"Function";
    v17 = [NSString stringWithUTF8String:"[SWCSecurityGuard(Private) _evaluateTrust:allowingKeychains:error:]"];
    v33[1] = v17;
    v33[2] = @"Failed to get whether keychains are allowed as a source of trust.";
    v32[2] = NSDebugDescriptionErrorKey;
    v32[3] = NSUnderlyingErrorKey;
    v11 = [NSError alloc];
    v30[1] = @"Function";
    v31[0] = &off_100036B70;
    v30[0] = @"Line";
    v12 = [NSString stringWithUTF8String:"[SWCSecurityGuard(Private) _evaluateTrust:allowingKeychains:error:]"];
    v31[1] = v12;
    v16 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
    v13 = [v11 initWithDomain:NSOSStatusErrorDomain code:KeychainsAllowed userInfo:v16];
    v33[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
    v15 = [v10 initWithDomain:_SWCErrorDomain code:-1 userInfo:v14];

    LOBYTE(v16) = 0;
    LOBYTE(v17) = 0;
    goto LABEL_10;
  }

  SecTrustSetKeychainsAllowed();
  v22 = 0;
  v17 = [(SWCSecurityGuard *)self _evaluateTrust:trust error:&v22];
  v15 = v22;
  SecTrustSetKeychainsAllowed();
  v16 = HIDWORD(v17);
  LODWORD(v13) = v17 >> 8;
  if ((v17 & 0x100000000) == 0)
  {
LABEL_10:
    if (error)
    {
      v20 = v15;
      *error = v15;
    }

    goto LABEL_12;
  }

  if (qword_10003AD48 != -1)
  {
    dispatch_once(&qword_10003AD48, &stru_100035200);
  }

  v18 = qword_10003AD40;
  if (os_log_type_enabled(qword_10003AD40, OS_LOG_TYPE_DEBUG))
  {
    v19 = @"NOT ";
    *buf = 138412802;
    trustCopy = trust;
    if (keychainsCopy)
    {
      v19 = &stru_100035ED8;
    }

    v26 = 2114;
    v27 = v19;
    v28 = 2048;
    v29 = v17;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Trust result for %@ (keychains %{public}@allowed): %llu", buf, 0x20u);
  }

LABEL_12:

  return (v17 | ((v13 & 0xFFFFFF) << 8) | (v16 << 32));
}

- (id)_errorForUntrustedRootCertificateOfTrust:(__SecTrust *)trust
{
  CertificateCount = SecTrustGetCertificateCount(trust);
  if (CertificateCount < 1)
  {
    CertificateAtIndex = 0;
LABEL_9:
    v8 = @"Certificate is not rooted in the system trust store.";
    goto LABEL_10;
  }

  CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, CertificateCount - 1);
  if (!CertificateAtIndex)
  {
    goto LABEL_9;
  }

  v6 = +[_SWCPrefs sharedPrefs];
  isAppleInternal = [v6 isAppleInternal];

  if (!isAppleInternal)
  {
    goto LABEL_9;
  }

  v17 = 0;
  v8 = @"Certificate is not rooted in the system trust store.";
  if (!SecCertificateCopyCommonName(CertificateAtIndex, &v17) && [(__CFString *)v17 hasPrefix:@"Apple Corporate"])
  {
    v8 = @"Root certificate appears to be issued by an internal Apple authority. Such certificates cannot be used with the public associated domains API. Internal Apple applications should use the internal associated domains API instead.";
  }

LABEL_10:
  v9 = [NSError alloc];
  v19[0] = &off_100036B88;
  v18[0] = @"Line";
  v18[1] = @"Function";
  v10 = [NSString stringWithUTF8String:"[SWCSecurityGuard(Private) _errorForUntrustedRootCertificateOfTrust:]"];
  v19[1] = v10;
  v18[2] = @"RootCertificate";
  v11 = [(__SecCertificate *)CertificateAtIndex description];
  v12 = v11;
  v13 = @"<none>";
  if (v11)
  {
    v13 = v11;
  }

  v18[3] = NSDebugDescriptionErrorKey;
  v19[2] = v13;
  v19[3] = v8;
  v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
  v15 = [v9 initWithDomain:_SWCErrorDomain code:103 userInfo:v14];

  return v15;
}

- (BOOL)_verifyExtendedValidationOfTrust:(__SecTrust *)trust error:(id *)error
{
  v6 = +[_SWCPrefs sharedPrefs];
  verifyExtendedValidation = [v6 verifyExtendedValidation];

  if (!verifyExtendedValidation)
  {
    return 1;
  }

  v8 = SecTrustCopyResult(trust);
  v9 = v8;
  if (v8)
  {
    v10 = [(__CFDictionary *)v8 objectForKeyedSubscript:kSecTrustExtendedValidation];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 isEqual:&__kCFBooleanTrue];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if (error && (v12 & 1) == 0)
  {
    v13 = [NSError alloc];
    v18[0] = &off_100036BA0;
    v17[0] = @"Line";
    v17[1] = @"Function";
    v14 = [NSString stringWithUTF8String:"[SWCSecurityGuard(Private) _verifyExtendedValidationOfTrust:error:]"];
    v18[1] = v14;
    v17[2] = NSDebugDescriptionErrorKey;
    v18[2] = @"Extended validation failed.";
    v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
    *error = [v13 initWithDomain:_SWCErrorDomain code:102 userInfo:v15];

    return 0;
  }

  return v12;
}

- (BOOL)_isSystemTrusted:(__SecTrust *)trusted
{
  CertificateCount = SecTrustGetCertificateCount(trusted);
  if (CertificateCount < 1)
  {
    LOBYTE(CertificateAtIndex) = 0;
  }

  else
  {
    CertificateAtIndex = SecTrustGetCertificateAtIndex(trusted, CertificateCount - 1);
    if (CertificateAtIndex)
    {
      SecTrustStoreForDomain();
      LOBYTE(CertificateAtIndex) = SecTrustStoreContains() != 0;
    }
  }

  return CertificateAtIndex;
}

@end