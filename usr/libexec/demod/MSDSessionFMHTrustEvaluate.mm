@interface MSDSessionFMHTrustEvaluate
- (BOOL)trustServer:(__SecTrust *)a3 isRedirect:(BOOL)a4;
@end

@implementation MSDSessionFMHTrustEvaluate

- (BOOL)trustServer:(__SecTrust *)a3 isRedirect:(BOOL)a4
{
  v5 = CFDataCreate(kCFAllocatorDefault, byte_1001A4CB8, dword_1001A5040);
  if (!v5)
  {
    sub_1000E41BC();
    return 0;
  }

  v6 = v5;
  v7 = SecCertificateCreateWithData(kCFAllocatorDefault, v5);
  if (!v7)
  {
    sub_1000E4114(v6);
    return 0;
  }

  v8 = v7;
  v9 = [NSArray arrayWithObjects:v7, 0];
  v10 = SecTrustSetAnchorCertificates(a3, v9);
  if (v10)
  {
    v14 = v10;
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[MSDSessionFMHTrustEvaluate trustServer:isRedirect:]";
      v18 = 2048;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Cannot set demounit anchor certificates: %ld", buf, 0x16u);
    }

    goto LABEL_21;
  }

  result = kSecTrustResultInvalid;
  if (SecTrustEvaluate(a3, &result))
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E40A0();
    }

LABEL_21:
    v12 = 0;
    goto LABEL_10;
  }

  if (result != kSecTrustResultUnspecified && result != kSecTrustResultProceed)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v11 = sub_100063A54();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Demounit server certificate is valid.", buf, 2u);
  }

  v12 = 1;
LABEL_10:

LABEL_12:
  CFRelease(v6);
  CFRelease(v8);

  return v12;
}

@end