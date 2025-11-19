@interface MobileRecertifyEngine
- (MobileRecertifyEngine)initWithQueue:(id)a3 dark:(id)a4;
- (id)createRecertInfoWithDataArk:(id)a3 alcoholBlob:(NACContextOpaque_ *)a4 options:(id)a5 error:(id *)a6;
- (void)recertifyDevice:(id)a3;
@end

@implementation MobileRecertifyEngine

- (MobileRecertifyEngine)initWithQueue:(id)a3 dark:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MobileRecertifyEngine;
  v9 = [(MobileRecertifyEngine *)&v13 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    if (!v7 || !v8)
    {
      maLog("[MobileRecertifyEngine initWithQueue:dark:]", 0, @"Invalid input");
      v11 = 0;
      goto LABEL_7;
    }

    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(p_isa + 1, a4);
  }

  v11 = p_isa;
LABEL_7:

  return v11;
}

- (id)createRecertInfoWithDataArk:(id)a3 alcoholBlob:(NACContextOpaque_ *)a4 options:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a5;
  v71 = 0uLL;
  v72 = 0;
  memset(v70, 0, 35);
  memset(v69, 0, sizeof(v69));
  v63 = 256;
  bzero(v68, 0x1000uLL);
  v62 = 4096;
  cf = 0;
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v50 = v9;
  v51 = v8;
  if (!v8 || !a4)
  {
    v12 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 104, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input(s).");
    v10 = 0;
LABEL_10:
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v13 = 0;
    v47 = 0;
    v48 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v49 = 0;
    goto LABEL_11;
  }

  v10 = objc_alloc_init(NSMutableDictionary);
  if (!v10)
  {
    v12 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 110, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Could not create dictionary.");
    goto LABEL_10;
  }

  v57 = 0;
  v49 = +[GestaltHlpr getSharedInstance];
  [v49 updateRecertInfo:v10 errors:&v57];
  v11 = v57;
  v48 = v11;
  if (![v11 count])
  {
    v24 = copy_device_certificate(0);
    if (v24)
    {
      [v10 setObject:v24 forKeyedSubscript:@"DeviceCertificate"];
    }

    v47 = v24;
    v56 = 0;
    v13 = create_cert_request(v8, &v56);
    v25 = v56;
    if (!v13)
    {
      v12 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 132, @"com.apple.MobileActivation.ErrorDomain", -1, v25, @"Failed to create certificate request.");

      v45 = 0;
      v46 = 0;
      v44 = 0;
      goto LABEL_6;
    }

    [v10 setObject:v13 forKeyedSubscript:@"DeviceCertRequest"];
    v26 = +[NSUUID UUID];
    v46 = v13;
    if (!v26)
    {
      v12 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 142, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Could not create UUID.");

      v44 = 0;
      v45 = 0;
      v13 = 0;
      goto LABEL_6;
    }

    v45 = v26;
    v27 = [v9 objectForKeyedSubscript:@"ReCertRandomness"];
    v15 = isNSString(v27);

    v44 = v27;
    if (!v15)
    {
      v12 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 148, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid nonce.");

      v13 = 0;
      v14 = 0;
      goto LABEL_7;
    }

    [v10 setObject:v27 forKeyedSubscript:@"ActivationRandomness"];
    v66 = @"UseSystemKeychainSharediPadOnly";
    v67 = &__kCFBooleanTrue;
    v43 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    if (load_identity(&v61, @"lockdown-identities", @"com.apple.lockdown.identity.activation", v43, 0, 0))
    {
      v28 = SecIdentityCopyPrivateKey(v61, &cf);
      if (v28 || !cf)
      {
        v12 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 165, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy private key: %d", v28);

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
LABEL_45:
        v18 = 0;
        v19 = 0;
LABEL_46:
        v20 = 0;
        goto LABEL_12;
      }

      v55 = v25;
      v17 = lockcrypto_sign(cf, v13, &v55);
      v29 = v55;

      if (!v17)
      {
        v12 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 171, @"com.apple.MobileActivation.ErrorDomain", -1, v29, @"Failed to sign data.");

        v13 = 0;
        goto LABEL_44;
      }

      [v10 setObject:v17 forKeyedSubscript:@"IdentitySignature"];
    }

    else
    {
      v17 = 0;
      v29 = v25;
    }

    v54 = 0;
    v13 = [NSPropertyListSerialization dataWithPropertyList:v10 format:100 options:0 error:&v54];
    v30 = v54;

    if (!v13)
    {
      MobileActivationError = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 182, @"com.apple.MobileActivation.ErrorDomain", -1, v30, @"Could not convert dictionary to xml data.");
      goto LABEL_43;
    }

    t1BoNctgaUu66(a4, [v13 bytes], objc_msgSend(v13, "length"), &v59);
    if (v31)
    {
      MobileActivationError = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 192, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to sign data: %d", v31);
LABEL_43:
      v12 = MobileActivationError;

LABEL_44:
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_45;
    }

    v33 = [NSData alloc];
    v34 = [v33 initWithBytes:v59 length:v58];
    v19 = v34;
    if (!v34)
    {
      v12 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 199, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to convert signed data.");

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v18 = 0;
      goto LABEL_46;
    }

    v20 = [v34 base64EncodedStringWithOptions:0];
    if (!v20)
    {
      v12 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 205, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode data as base64.");

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v18 = 0;
      goto LABEL_12;
    }

    v35 = objc_alloc_init(NSMutableDictionary);
    v18 = v35;
    if (!v35)
    {
      v12 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 211, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create dictionary.");

      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_12;
    }

    [v35 setObject:v20 forKeyedSubscript:@"ValidationData"];
    v36 = [NSDictionary dictionaryWithDictionary:v10];
    [v18 setObject:v36 forKeyedSubscript:@"payload"];

    v53 = 0;
    v15 = [NSPropertyListSerialization dataWithPropertyList:v18 format:100 options:0 error:&v53];
    v12 = v53;

    if (!v15)
    {
      v42 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 220, @"com.apple.MobileActivation.ErrorDomain", -1, v12, @"Failed to convert dictionary to xml data.");

      v13 = 0;
      v14 = 0;
LABEL_62:
      v16 = 0;
      v12 = v42;
      goto LABEL_12;
    }

    v13 = v15;
    [(NSData *)v15 bytes];
    [(NSData *)v15 length];
    if (CCDigest())
    {
      v37 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 229, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to digest data.");
    }

    else
    {
      *&v70[0] = 0xE2B050609302130;
      DWORD2(v70[0]) = 85590531;
      WORD6(v70[0]) = 1024;
      BYTE14(v70[0]) = 20;
      *(v70 + 15) = v71;
      *(&v70[1] + 15) = v72;
      wyjYwk(v70, 35, v69, &v63, v68, &v62);
      if (!v38)
      {
        v39 = [NSData alloc];
        v14 = [v39 initWithBytes:v69 length:v63];
        if (v14)
        {
          v40 = [NSData alloc];
          v41 = [v40 initWithBytes:v68 length:v62];
          v15 = v41;
          if (v41)
          {
            v64[0] = @"CertificateInfoXML";
            v64[1] = @"FairPlaySignature";
            v65[0] = v13;
            v65[1] = v14;
            v64[2] = @"FairPlayCertChain";
            v65[2] = v41;
            v16 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:3];
            goto LABEL_12;
          }

          v42 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 275, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to serialize cert chain.");

          goto LABEL_62;
        }

        v42 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 269, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to serialize signature data.");

        goto LABEL_61;
      }

      v37 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 263, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to compute fairplay activation signature: %ld", v38);
    }

    v42 = v37;

    v14 = 0;
LABEL_61:
    v15 = 0;
    goto LABEL_62;
  }

  v12 = createMobileActivationError("[MobileRecertifyEngine createRecertInfoWithDataArk:alcoholBlob:options:error:]", 119, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve gestalt values: %@", v11);
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v13 = 0;
  v47 = 0;
LABEL_6:
  v14 = 0;
  v15 = 0;
LABEL_7:
  v16 = 0;
LABEL_11:
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v43 = 0;
LABEL_12:
  if (a6 && !v16)
  {
    v21 = v12;
    *a6 = v12;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v61)
  {
    CFRelease(v61);
  }

  v61 = 0;
  if (v59)
  {
    Be81a395Bf0(v59);
  }

  v22 = v16;

  return v22;
}

- (void)recertifyDevice:(id)a3
{
  v4 = a3;
  v128 = 0;
  v129 = 0;
  v127 = 0;
  v126 = 0;
  v5 = [(MobileRecertifyEngine *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [[NSURL alloc] initWithString:@"https://albert.apple.com/deviceservices/certifySB"];
  v7 = [[NSURL alloc] initWithString:@"https://static.ips.apple.com/absinthe-cert/certificate.cer"];
  v8 = [[NSURL alloc] initWithString:@"https://albert.apple.com/deviceservices/session"];
  v103 = v7;
  v104 = v6;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v106 = v8;
  if (v9 || v8 == 0)
  {
    v11 = v4;
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 350, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate URL.");
    v13 = 0;
    v100 = 0;
    v101 = 0;
    v107 = 0;
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    v105 = 0;
    v102 = 0;
LABEL_25:
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v32 = 0;
    v108 = 0;
LABEL_26:
    v30 = 0;
    goto LABEL_37;
  }

  if (is_internal_build())
  {
    v15 = [NSUserDefaults alloc];
    v16 = [v15 persistentDomainForName:@"com.apple.mobileactivationd"];

    v17 = [v16 objectForKeyedSubscript:@"UseReverseProxy"];
    v18 = isNSNumber(v17);
    if (v18)
    {
      v19 = v18;
      v20 = [v16 objectForKeyedSubscript:@"UseReverseProxy"];
      v21 = [v20 BOOLValue];

      if (v21)
      {
        v22 = copyReverseProxyDictionary(0, 0, 0);
        if (v22)
        {
          v23 = v22;
          v11 = v4;
          v24 = 0;
          goto LABEL_20;
        }
      }

      v11 = v4;
    }

    else
    {
      v11 = v4;
    }
  }

  else
  {
    v11 = v4;
    v16 = 0;
  }

  v125 = 0;
  v25 = networkReachable(&v125);
  v24 = v125;
  if (!v25)
  {
    v102 = v16;
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 365, @"com.apple.MobileActivation.ErrorDomain", -17, v24, @"Network is unavailable.");

    v13 = 0;
    v100 = 0;
    v101 = 0;
    v107 = 0;
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    v105 = 0;
    goto LABEL_25;
  }

  v23 = 0;
LABEL_20:
  v26 = [NSMutableURLRequest alloc];
  LODWORD(v27) = NETWORK_TIMEOUT_SECONDS;
  v28 = v27;
  v29 = [v26 initWithURL:v7 cachePolicy:1 timeoutInterval:v27];
  v30 = v29;
  v102 = v16;
  v105 = v23;
  if (!v29)
  {
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 373, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate request.");

    v13 = 0;
    v100 = 0;
    v101 = 0;
    v107 = 0;
    v108 = 0;
LABEL_35:
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    v33 = 0;
    v34 = 0;
LABEL_36:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v32 = 0;
    goto LABEL_37;
  }

  [(NSData *)v29 setValue:@"Absinthe/2.0 iOS Device Activator (MobileActivation-1068.42.2 built on Oct 10 2025 at 21:44:07)" forHTTPHeaderField:@"User-Agent"];
  v123 = v24;
  v124 = 0;
  v13 = talkToServerWithError(v30, 0, 0, v23, &v124, &v126, &v123);
  v108 = v124;
  v31 = v123;

  v32 = v126;
  if (v126 != 200)
  {
    if (!v126)
    {
      v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 382, @"com.apple.MobileActivation.ErrorDomain", -6, v31, @"Network communication error.");

      v100 = 0;
      v101 = 0;
      v107 = 0;
      v98 = 0;
      v99 = 0;
      v96 = 0;
      v97 = 0;
      v95 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      goto LABEL_37;
    }

    v40 = [NSHTTPURLResponse localizedStringForStatusCode:v126];
    v41 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 387, @"com.apple.MobileActivation.ServerErrorDomain", v32, v31, @"Server error: %ld (%@)", v32, v40);

    v42 = v126;
    v43 = [NSHTTPURLResponse localizedStringForStatusCode:v126];
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 387, @"com.apple.MobileActivation.ErrorDomain", -6, v41, @"Server error: %ld (%@)", v42, v43);

    goto LABEL_34;
  }

  if (!v13)
  {
    MobileActivationError = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 392, @"com.apple.MobileActivation.ErrorDomain", -6, v31, @"Failed to get a response from the server.");
    goto LABEL_33;
  }

  KxmB0CKvgWt([v13 bytes], objc_msgSend(v13, "length"));
  if (v38)
  {
    MobileActivationError = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 398, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to initialize NAC: %d", v38);
LABEL_33:
    v12 = MobileActivationError;
LABEL_34:

    v100 = 0;
    v101 = 0;
    v107 = 0;
    goto LABEL_35;
  }

  v137[0] = @"id";
  v137[1] = @"request";
  v138[0] = &off_1003FBE10;
  v44 = [NSData alloc];
  v45 = [v44 initWithBytesNoCopy:v128 length:v127 freeWhenDone:0];
  v46 = [v45 base64EncodedStringWithOptions:0];
  v138[1] = v46;
  v47 = [NSDictionary dictionaryWithObjects:v138 forKeys:v137 count:2];

  v135 = @"absinthe-operations";
  v132 = v47;
  v133 = @"create-session-info";
  v101 = v47;
  v48 = [NSArray arrayWithObjects:&v132 count:1];
  v134 = v48;
  v49 = [NSDictionary dictionaryWithObjects:&v134 forKeys:&v133 count:1];
  v136 = v49;
  v50 = [NSDictionary dictionaryWithObjects:&v136 forKeys:&v135 count:1];

  v122 = v31;
  v34 = [NSJSONSerialization dataWithJSONObject:v50 options:0 error:&v122];
  v51 = v122;

  v107 = v34;
  v100 = v50;
  if (!v34)
  {
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 411, @"com.apple.MobileActivation.ErrorDomain", -1, v51, @"Failed to serialize data.");

    v107 = 0;
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    v33 = 0;
    goto LABEL_36;
  }

  v34 = [[NSMutableURLRequest alloc] initWithURL:v106 cachePolicy:1 timeoutInterval:v28];

  if (!v34)
  {
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 420, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to allocate request.");

    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    v33 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v32 = 0;
    goto LABEL_26;
  }

  [(NSData *)v34 setHTTPBody:v107];
  [(NSData *)v34 setValue:@"Absinthe/2.0 iOS Device Activator (MobileActivation-1068.42.2 built on Oct 10 2025 at 21:44:07)" forHTTPHeaderField:@"User-Agent"];
  [(NSData *)v34 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [(NSData *)v34 setHTTPMethod:@"POST"];
  v120 = v51;
  v121 = v108;
  v52 = talkToServerWithError(v34, 0, 0, v105, &v121, &v126, &v120);
  v53 = v121;

  v54 = v120;
  v55 = v126;
  if (v126 != 200)
  {
    v91 = v34;
    v92 = v53;
    v13 = v52;
    if (v126)
    {
      v63 = [NSHTTPURLResponse localizedStringForStatusCode:v126];
      v64 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 438, @"com.apple.MobileActivation.ServerErrorDomain", v55, v54, @"Server error: %ld (%@)", v55, v63);

      v65 = v126;
      v66 = [NSHTTPURLResponse localizedStringForStatusCode:v126];
      v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 438, @"com.apple.MobileActivation.ErrorDomain", -6, v64, @"Server error: %ld (%@)", v65, v66);
    }

    else
    {
      v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 433, @"com.apple.MobileActivation.ErrorDomain", -6, v54, @"Network communication error.");
    }

    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v32 = 0;
    goto LABEL_61;
  }

  if (!v52)
  {
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 443, @"com.apple.MobileActivation.ErrorDomain", -6, v54, @"Failed to get response from server.");

    v13 = 0;
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    v67 = v53;
    v33 = 0;
    v30 = v34;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v32 = 0;
LABEL_70:
    v108 = v67;
    goto LABEL_37;
  }

  v92 = v53;
  v119 = v54;
  v32 = [NSJSONSerialization JSONObjectWithData:v52 options:1 error:&v119];
  v56 = v119;

  if (!v32)
  {
    v13 = v52;
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 449, @"com.apple.MobileActivation.ErrorDomain", -1, v56, @"Failed to serialize json data.");

    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    v33 = 0;
    v30 = v34;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
LABEL_69:
    v67 = v92;
    goto LABEL_70;
  }

  v57 = [(NSString *)v32 objectForKeyedSubscript:@"absinthe-results"];
  v58 = [v57 objectForKeyedSubscript:@"create-session-info"];

  v33 = isNSArray(v58);
  v98 = v58;
  v99 = v32;
  if (!v33)
  {
    v13 = v52;
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 486, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Missing one drink: %@", v32);

    v96 = 0;
    v97 = 0;
    v95 = 0;
    v30 = v34;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v32 = 0;
    goto LABEL_69;
  }

  v90 = v52;
  v59 = [v58 objectAtIndexedSubscript:0];
  v33 = isNSDictionary(v59);

  v97 = v59;
  if (!v33)
  {
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 492, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Missing two drinks: %@", v32);

    v96 = 0;
LABEL_68:
    v95 = 0;
    v30 = v34;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v32 = 0;
    v13 = v90;
    goto LABEL_69;
  }

  v60 = [v59 objectForKeyedSubscript:@"session-info"];
  v33 = isNSString(v60);

  v96 = v60;
  if (!v33)
  {
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 498, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Missing three drinks: %@", v32);

    goto LABEL_68;
  }

  v91 = v34;
  v61 = [[NSData alloc] initWithBase64EncodedString:v60 options:1];
  v34 = v61;
  if (!v61)
  {
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 504, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Missing four drinks: %@", v32);

    v95 = 0;
    v33 = 0;
    goto LABEL_72;
  }

  v95 = v61;
  nDYmeMqvWb(v129, [(NSData *)v61 bytes], [(NSData *)v61 length]);
  if (v62)
  {
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 510, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"NACKeyEstablishment failed: %d", v62);

    v33 = 0;
    v34 = 0;
LABEL_72:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v32 = 0;
LABEL_73:
    v13 = v90;
LABEL_61:
    v108 = v92;
LABEL_62:
    v30 = v91;
    goto LABEL_37;
  }

  v68 = +[NSUUID UUID];
  v32 = [(NSUUID *)v68 UUIDString];

  if (!v32)
  {
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 516, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create nonce.");

    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    goto LABEL_73;
  }

  v130 = @"ReCertRandomness";
  v131 = v32;
  v37 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
  v69 = [(MobileRecertifyEngine *)self dark];
  v118 = v56;
  v33 = [(MobileRecertifyEngine *)self createRecertInfoWithDataArk:v69 alcoholBlob:v129 options:v37 error:&v118];
  v70 = v118;

  if (!v33)
  {
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 524, @"com.apple.MobileActivation.ErrorDomain", -1, v70, @"Failed to create recert info.");

    v34 = 0;
LABEL_87:
    v35 = 0;
    v36 = 0;
    goto LABEL_73;
  }

  v116 = v70;
  v117 = 0;
  v71 = createActivationRequest(v33, &v117, 1, &v116);
  v34 = v117;
  v72 = v116;

  if ((v71 & 1) == 0)
  {
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 531, @"com.apple.MobileActivation.ErrorDomain", -1, v72, @"Failed to create recert request.");

    goto LABEL_87;
  }

  [(NSData *)v34 setURL:v104];
  [(NSData *)v34 setTimeoutInterval:v28];
  if (is_internal_build())
  {
    v73 = formatURLRequest(v34);
    v74 = copy_log_directory_path();
    v75 = [v74 stringByAppendingPathComponent:@"recert_request.txt"];
    [(NSMutableString *)v73 writeToFile:v75 atomically:0 encoding:4 error:0];
  }

  v114 = v72;
  v115 = v92;
  v35 = talkToServerWithError(v34, 0, 0, v105, &v115, &v126, &v114);
  v108 = v115;

  v93 = v114;
  if (is_internal_build())
  {
    v76 = formatURLResponse(v35, v126, v108);
    v77 = copy_log_directory_path();
    v78 = [v77 stringByAppendingPathComponent:@"recert_response.txt"];
    [(NSMutableString *)v76 writeToFile:v78 atomically:0 encoding:4 error:0];
  }

  v79 = v126;
  if (v126 != 200)
  {
    if (v126)
    {
      v85 = [NSHTTPURLResponse localizedStringForStatusCode:v126];
      v86 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 554, @"com.apple.MobileActivation.ServerErrorDomain", v79, v93, @"Server error: %ld (%@)", v79, v85);

      v87 = v126;
      v88 = [NSHTTPURLResponse localizedStringForStatusCode:v126];
      v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 554, @"com.apple.MobileActivation.ErrorDomain", -6, v86, @"Server error: %ld (%@)", v87, v88);

      v89 = v93;
LABEL_94:

      v36 = 0;
      goto LABEL_95;
    }

    v80 = @"Network communication error.";
    v81 = 549;
LABEL_93:
    v12 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", v81, @"com.apple.MobileActivation.ErrorDomain", -6, v93, v80);
    v89 = v93;
    goto LABEL_94;
  }

  if (!v35)
  {
    v80 = @"Failed to get response from server.";
    v81 = 559;
    goto LABEL_93;
  }

  v113 = v93;
  v82 = getRecertInfoFromData(v35, &v113);
  v12 = v113;

  if (v82)
  {
    v83 = [(MobileRecertifyEngine *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3254779904;
    block[2] = __41__MobileRecertifyEngine_recertifyDevice___block_invoke;
    block[3] = &__block_descriptor_64_e8_32s40s48s56bs_e5_v8__0l;
    block[4] = self;
    v36 = v82;
    v110 = v36;
    v37 = v37;
    v111 = v37;
    v112 = v11;
    v84 = v11;
    dispatch_async(v83, block);

    v11 = 0;
LABEL_95:
    v13 = v90;
    goto LABEL_62;
  }

  v94 = createMobileActivationError("[MobileRecertifyEngine recertifyDevice:]", 568, @"com.apple.MobileActivation.ErrorDomain", -1, v12, @"Failed to retrieve recert info from data.");

  v36 = 0;
  v13 = v90;
  v30 = v91;
  v12 = v94;
LABEL_37:
  if (v129)
  {
    IW1PcFszqNK(v129);
  }

  if (v128)
  {
    Be81a395Bf0(v128);
  }

  if (v11)
  {
    (v11)[2](v11, v12);
  }
}

void __41__MobileRecertifyEngine_recertifyDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dark];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = 0;
  handle_recert(v2, v3, v4, &v7);
  v5 = v7;

  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

@end