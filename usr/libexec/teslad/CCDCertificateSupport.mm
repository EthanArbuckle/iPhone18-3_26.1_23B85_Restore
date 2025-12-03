@interface CCDCertificateSupport
+ (BOOL)verifySignature:(id)signature payload:(id)payload clientCertificate:(id)certificate;
+ (id)base64Encodedx509CertificateStringFromCertificate:(id)certificate;
+ (id)decodeCertificateFromBase64String:(id)string;
@end

@implementation CCDCertificateSupport

+ (BOOL)verifySignature:(id)signature payload:(id)payload clientCertificate:(id)certificate
{
  signatureCopy = signature;
  payloadCopy = payload;
  certificateCopy = certificate;
  v10 = *(DEPLogObjects() + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Create signature", buf, 2u);
  }

  v11 = SecCertificateCopyKey(certificateCopy);

  v12 = *(DEPLogObjects() + 8);
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Verify signature", buf, 2u);
    }

    error = 0;
    v13 = SecKeyVerifySignature(v11, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, payloadCopy, signatureCopy, &error);
    v14 = v13 != 0;
    CFRelease(v11);
    v15 = *(DEPLogObjects() + 8);
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Signature verified", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = error;
      v17 = v15;
      v18 = [(__CFError *)v16 description];
      uTF8String = [v18 UTF8String];
      *buf = 136446210;
      v23 = uTF8String;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to verify signature: %{public}s\n", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to copy public key.\n", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

+ (id)base64Encodedx509CertificateStringFromCertificate:(id)certificate
{
  if (certificate)
  {
    v3 = SecCertificateCopyData(certificate);
    v4 = [(__CFData *)v3 base64EncodedDataWithOptions:0];
    v5 = [[NSString alloc] initWithData:v4 encoding:4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)decodeCertificateFromBase64String:(id)string
{
  stringCopy = string;
  v4 = [[NSData alloc] initWithBase64EncodedString:stringCopy options:1];

  if (v4 && (v5 = SecCertificateCreateWithData(0, v4)) != 0)
  {
    CFRelease(v5);
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end