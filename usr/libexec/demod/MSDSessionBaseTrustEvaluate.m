@interface MSDSessionBaseTrustEvaluate
- (BOOL)trustServer:(__SecTrust *)a3 isRedirect:(BOOL)a4;
- (BOOL)trustServer:(__SecTrust *)a3 withRootCA:(__SecCertificate *)a4 withHostName:(id)a5;
- (BOOL)trustServerWithApplePKI:(__SecTrust *)a3;
- (BOOL)trustServerWithAxinoePKI:(__SecTrust *)a3;
- (id)hashForCertificate:(__SecCertificate *)a3;
- (id)identifierFor:(__SecCertificate *)a3 applePKI:(BOOL)a4;
@end

@implementation MSDSessionBaseTrustEvaluate

- (BOOL)trustServer:(__SecTrust *)a3 isRedirect:(BOOL)a4
{
  v4 = a4;
  v7 = +[MSDTargetDevice sharedInstance];
  [(MSDSessionBaseTrustEvaluate *)self setApplePKI:1];
  if (v4)
  {
    v20 = 0;
    v8 = 0;
    if (!SecTrustEvaluate(a3, &v20))
    {
      v8 = v20 == 4 || v20 == 1;
    }

    v10 = 0;
    goto LABEL_20;
  }

  if (![(MSDSessionBaseTrustEvaluate *)self trustServerWithApplePKI:a3])
  {
    [(MSDSessionBaseTrustEvaluate *)self setApplePKI:0];
    if (![(MSDSessionBaseTrustEvaluate *)self trustServerWithAxinoePKI:a3])
    {
      sub_1000E3970();
      goto LABEL_25;
    }
  }

  [(MSDSessionBaseTrustEvaluate *)self setLeafCertificate:SecTrustGetCertificateAtIndex(a3, 0)];
  if (![(MSDSessionBaseTrustEvaluate *)self leafCertificate])
  {
    sub_1000E3A38();
LABEL_25:
    v10 = 0;
LABEL_30:
    v8 = 0;
    goto LABEL_20;
  }

  v11 = [v7 certificateHash];
  v10 = v11;
  if (self->_applePKI || !v11)
  {
    [(MSDSessionBaseTrustEvaluate *)self setIsDone:0];
    v8 = 0;
    goto LABEL_22;
  }

  v12 = [(MSDSessionBaseTrustEvaluate *)self hashForCertificate:self->_leafCertificate];
  v13 = [v10 isEqualToData:v12];

  v14 = sub_100063A54();
  v15 = v14;
  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [v10 hexStringRepresentation];
      v18 = [(MSDSessionBaseTrustEvaluate *)self hashForCertificate:self->_leafCertificate];
      v19 = [v18 hexStringRepresentation];
      v20 = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = v19;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Certificate hash does not match the saved one - Saved:  %{public}@ - Current:  %{public}@", &v20, 0x16u);
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Migrating certificate pinning.", &v20, 2u);
  }

  if (![(MSDSessionBaseTrustEvaluate *)self saveHubCertificateIdentifer:[(MSDSessionBaseTrustEvaluate *)self leafCertificate] applePKI:[(MSDSessionBaseTrustEvaluate *)self applePKI]])
  {
    sub_1000E39DC();
    goto LABEL_30;
  }

  v8 = 1;
LABEL_20:
  [(MSDSessionBaseTrustEvaluate *)self setIsDone:1];
LABEL_22:

  return v8;
}

- (BOOL)trustServerWithApplePKI:(__SecTrust *)a3
{
  commonName = 0;
  v5 = CFDataCreate(kCFAllocatorDefault, byte_1001A4CB8, dword_1001A5040);
  if (!v5)
  {
    sub_1000E3C30();
    return 0;
  }

  v6 = v5;
  v7 = SecCertificateCreateWithData(kCFAllocatorDefault, v5);
  if (!v7)
  {
    sub_1000E3B88(v6);
    return 0;
  }

  v8 = v7;
  if (![(MSDSessionBaseTrustEvaluate *)self trustServer:a3 withRootCA:v7 withHostName:0])
  {
    v10 = 0;
LABEL_22:
    v11 = 0;
    goto LABEL_8;
  }

  CertificateAtIndex = SecTrustGetCertificateAtIndex(a3, 0);
  if (!CertificateAtIndex)
  {
    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000E3B48();
    }

    goto LABEL_18;
  }

  if (SecCertificateCopyCommonName(CertificateAtIndex, &commonName))
  {
    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000E3A94();
    }

LABEL_18:
    v10 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v10 = commonName;
  if (([(__CFString *)commonName hasSuffix:@".hubs.iosdm.demounit.net"]& 1) == 0)
  {
    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000E3AD4();
    }

    goto LABEL_21;
  }

  v11 = 1;
LABEL_8:
  CFRelease(v6);
  CFRelease(v8);

  return v11;
}

- (BOOL)trustServerWithAxinoePKI:(__SecTrust *)a3
{
  v5 = CFDataCreate(kCFAllocatorDefault, byte_1001A48A8, dword_1001A4CB4);
  if (!v5)
  {
    sub_1000E3D74();
    return 0;
  }

  v6 = v5;
  v7 = SecCertificateCreateWithData(kCFAllocatorDefault, v5);
  if (!v7)
  {
    sub_1000E3CCC(v6);
    return 0;
  }

  v8 = v7;
  if ([(MSDSessionBaseTrustEvaluate *)self trustServer:a3 withRootCA:v7 withHostName:@"hub.iosdm.local"])
  {
    v9 = 1;
  }

  else
  {
    v9 = [(MSDSessionBaseTrustEvaluate *)self trustServer:a3 withRootCA:v8 withHostName:@"hub.iosdm.net"];
  }

  CFRelease(v6);
  CFRelease(v8);
  return v9;
}

- (BOOL)trustServer:(__SecTrust *)a3 withRootCA:(__SecCertificate *)a4 withHostName:(id)a5
{
  trust = 0;
  SSL = SecPolicyCreateSSL(1u, a5);
  if (!SSL)
  {
    sub_1000E3F68();
    v16 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v8 = SSL;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  CertificateCount = SecTrustGetCertificateCount(a3);
  if (CertificateCount >= 1)
  {
    v11 = CertificateCount;
    for (i = 0; i != v11; ++i)
    {
      CertificateAtIndex = SecTrustGetCertificateAtIndex(a3, i);
      CFArrayAppendValue(Mutable, CertificateAtIndex);
    }
  }

  if (SecTrustCreateWithCertificates(Mutable, v8, &trust))
  {
    sub_1000E3E10();
    v16 = 0;
    v14 = 0;
  }

  else
  {
    v14 = [NSArray arrayWithObjects:a4, 0];
    v15 = SecTrustSetAnchorCertificates(trust, v14);
    if (v15)
    {
      sub_1000E3EAC(v15);
    }

    else
    {
      result = kSecTrustResultInvalid;
      if (SecTrustEvaluate(trust, &result))
      {
        sub_1000DC14C();
      }

      else if (result == kSecTrustResultUnspecified || result == kSecTrustResultProceed)
      {
        v16 = 1;
        goto LABEL_16;
      }
    }

    v16 = 0;
  }

LABEL_16:
  CFRelease(v8);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_18:
  if (trust)
  {
    CFRelease(trust);
  }

  return v16;
}

- (id)hashForCertificate:(__SecCertificate *)a3
{
  v3 = SecCertificateCopyData(a3);
  if (v3)
  {
    v4 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    CC_SHA1([(__CFData *)v3 bytes], [(__CFData *)v3 length], v4);
    v5 = [NSData dataWithBytes:v4 length:20];
    free(v4);
  }

  else
  {
    sub_1000E4004();
    v5 = 0;
  }

  return v5;
}

- (id)identifierFor:(__SecCertificate *)a3 applePKI:(BOOL)a4
{
  commonName = 0;
  if (!a4)
  {
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = SecCertificateCopyProperties();
    v25 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v25)
    {
      v8 = *v31;
      v23 = *v31;
      v24 = v7;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [v10 objectForKey:@"label"];
          v12 = [v11 isEqualToString:@"Subject Name"];

          if (v12)
          {
            v13 = [v10 objectForKey:@"value"];
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v14 = v13;
            v15 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v27;
              while (2)
              {
                for (j = 0; j != v16; j = j + 1)
                {
                  if (*v27 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v26 + 1) + 8 * j);
                  v20 = [v19 objectForKey:@"label"];
                  v21 = [v20 isEqualToString:@"2.5.4.45"];

                  if (v21)
                  {
                    v6 = [v19 objectForKey:@"value"];

                    v4 = 0;
                    goto LABEL_26;
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }
            }

            v8 = v23;
            v7 = v24;
          }
        }

        v25 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v25);
    }

    goto LABEL_23;
  }

  if (SecCertificateCopyCommonName(a3, &commonName))
  {
LABEL_23:
    v4 = 0;
    goto LABEL_24;
  }

  v4 = commonName;
  v5 = [(__CFString *)commonName rangeOfString:@".hubs.iosdm.demounit.net"];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(__CFString *)v4 substringWithRange:0, v5];
    goto LABEL_26;
  }

LABEL_24:
  v6 = 0;
LABEL_26:

  return v6;
}

@end