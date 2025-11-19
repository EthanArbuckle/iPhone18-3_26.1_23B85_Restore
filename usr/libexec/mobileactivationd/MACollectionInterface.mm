@interface MACollectionInterface
+ (id)copyIngestURL;
- (BOOL)processSUInfo:(id)a3 withError:(id *)a4;
- (MACollectionInterface)initWithContext:(id)a3;
- (__SecKey)signingKey;
- (id)collectPCRT:(id *)a3;
- (id)collectSIK:(id *)a3;
- (id)collectSigningAttestation:(id *)a3;
- (id)copyIngestData:(id *)a3;
- (id)copyIngestHeaders:(id)a3 withError:(id *)a4;
- (id)signatureForData:(id)a3 error:(id *)a4;
- (id)signingKeyPublicKeyWithError:(id *)a3;
- (void)dealloc;
@end

@implementation MACollectionInterface

- (MACollectionInterface)initWithContext:(id)a3
{
  v7.receiver = self;
  v7.super_class = MACollectionInterface;
  v4 = [(MACollectionInterface *)&v7 init];
  v5 = v4;
  if (!v4)
  {
LABEL_5:
    a3 = v5;
    goto LABEL_6;
  }

  if (a3)
  {
    v4->_dark = a3;
    if (libInFieldCollectionLibraryCore())
    {
      v5->_collectionLibraryLoaded = 1;
    }

    goto LABEL_5;
  }

LABEL_6:

  return a3;
}

- (void)dealloc
{
  signingKey = self->_signingKey;
  if (signingKey)
  {
    CFRelease(signingKey);
  }

  self->_signingKey = 0;
  v4.receiver = self;
  v4.super_class = MACollectionInterface;
  [(MACollectionInterface *)&v4 dealloc];
}

+ (id)copyIngestURL
{
  v2 = @"https://tbsc.apple.com/ingest/register";
  if (is_internal_build())
  {
    v3 = [NSUserDefaults alloc];
    v4 = [v3 persistentDomainForName:@"com.apple.mobileactivationd"];

    v5 = [v4 objectForKeyedSubscript:@"InFieldCollectionOverrideURL"];
    v6 = isNSString(v5);

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"InFieldCollectionOverrideURL"];

      v2 = v7;
    }
  }

  else
  {
    v4 = 0;
  }

  v8 = [NSURL URLWithString:v2];

  return v8;
}

- (__SecKey)signingKey
{
  v3 = kSecAttrKeyTypeECSECPrimeRandom;
  error = 0;
  if (self->_signingKey)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  v6 = +[GestaltHlpr getSharedInstance];
  v4 = [v6 copyAnswer:@"HasPKA"];

  v7 = isNSNumber(v4);
  if (v7)
  {
    if ([v4 BOOLValue])
    {
      v8 = kSecAttrKeyTypeECSECPrimeRandomPKA;

      v3 = v8;
    }

    v9 = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &error);
    if (v9)
    {
      v10 = v9;
      v15[0] = kSecAttrIsPermanent;
      v15[1] = kSecAttrTokenID;
      v16[0] = &__kCFBooleanFalse;
      v16[1] = kSecAttrTokenIDAppleKeyStore;
      v15[2] = kSecAttrKeyType;
      v15[3] = kSecAttrAccessControl;
      v16[2] = v3;
      v16[3] = v9;
      v5 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
      v11 = SecKeyCreateRandomKey(v5, &error);
      self->_signingKey = v11;
      if (!v11)
      {
        maLog("[MACollectionInterface signingKey]", 0, @"Failed to create ref key: %@", error);
      }

      CFRelease(v10);
      goto LABEL_13;
    }

    maLog("[MACollectionInterface signingKey]", 0, @"Failed to create access control: %@", error);
  }

  else
  {
    maLog("[MACollectionInterface signingKey]", 0, @"Failed to retrieve PKA state.");
  }

  v5 = 0;
LABEL_13:
  if (error)
  {
    CFRelease(error);
  }

LABEL_15:
  signingKey = self->_signingKey;

  return signingKey;
}

- (id)collectSigningAttestation:(id *)a3
{
  if ([(MACollectionInterface *)self signingKey])
  {
    v11 = 0;
    v5 = security_create_system_key_attestation([(MACollectionInterface *)self signingKey], 0, 0, &v11);
    v6 = v11;
    if (v5)
    {
      v7 = v5;
      goto LABEL_8;
    }

    v9 = createMobileActivationError("[MACollectionInterface collectSigningAttestation:]", 160, @"com.apple.MobileActivation.ErrorDomain", -11, v6, @"Failed to attest RK to SIK.");

    v6 = v9;
    if (!a3)
    {
      goto LABEL_7;
    }

LABEL_5:
    v8 = v6;
    v7 = 0;
    *a3 = v6;
    goto LABEL_8;
  }

  v6 = createMobileActivationError("[MACollectionInterface collectSigningAttestation:]", 154, @"com.apple.MobileActivation.ErrorDomain", -2, 0, @"Invalid input");
  if (a3)
  {
    goto LABEL_5;
  }

LABEL_7:
  v7 = 0;
LABEL_8:

  return v7;
}

- (id)collectSIK:(id *)a3
{
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v4 = +[GestaltHlpr getSharedInstance];
  v5 = [v4 copyAnswer:@"HasPKA"];

  v6 = isNSNumber(v5);
  if (!v6)
  {
    v7 = createMobileActivationError("[MACollectionInterface collectSIK:]", 190, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve PKA state.");
    v11 = 0;
    goto LABEL_16;
  }

  if ([v5 BOOLValue])
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v19 = 0;
    v6 = copyPersonalizedFirmwareData(2, &v19);
    v7 = v19;
    if (!v6)
    {
      v9 = @"Failed to load boot manifest.";
      v10 = 197;
      v13 = v7;
      goto LABEL_14;
    }

    v12 = aks_sik_optional_params(0, 0, [v6 bytes], objc_msgSend(v6, "length"), &v23, &v22);
    if (v12)
    {
      v18 = v12;
      v9 = @"Failed to decode SIK data: 0x%08x";
      v10 = 203;
      goto LABEL_10;
    }
  }

  v8 = aks_sik_collection();
  if (v8)
  {
    v18 = v8;
    v9 = @"Failed to perform SIK collection: 0x%08x";
    v10 = 210;
LABEL_10:
    v13 = 0;
LABEL_14:
    v15 = createMobileActivationError("[MACollectionInterface collectSIK:]", v10, @"com.apple.MobileActivation.ErrorDomain", -1, v13, v9, v18);

    v11 = 0;
    goto LABEL_15;
  }

  v14 = [NSData alloc];
  v11 = [v14 initWithBytesNoCopy:v21 length:v20];
  if (v11)
  {
    v21 = 0;
    goto LABEL_16;
  }

  v15 = createMobileActivationError("[MACollectionInterface collectSIK:]", 216, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to convert data.");

LABEL_15:
  v7 = v15;
LABEL_16:
  if (v23)
  {
    free(v23);
  }

  v23 = 0;
  if (v21)
  {
    free(v21);
  }

  v21 = 0;
  if (a3 && !v11)
  {
    v16 = v7;
    *a3 = v7;
  }

  return v11;
}

- (id)collectPCRT:(id *)a3
{
  v20 = 0;
  v19 = 0;
  if ([(MACollectionInterface *)self collectionLibraryLoaded])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v4 = getvsPHbdGfSymbolLoc_ptr;
    v29 = getvsPHbdGfSymbolLoc_ptr;
    if (!getvsPHbdGfSymbolLoc_ptr)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3254779904;
      v23 = __getvsPHbdGfSymbolLoc_block_invoke;
      v24 = &__block_descriptor_40_e8_32r_e5_v8__0l;
      v25 = &v26;
      v5 = libInFieldCollectionLibrary();
      v27[3] = dlsym(v5, "vsPHbdGf");
      getvsPHbdGfSymbolLoc_ptr = *(v25[1] + 24);
      v4 = v27[3];
    }

    _Block_object_dispose(&v26, 8);
    if (!v4)
    {
      [MACollectionInterface collectPCRT:];
    }

    v6 = v4(&v20, &v19);
    if (v6)
    {
      MobileActivationError = createMobileActivationError("[MACollectionInterface collectPCRT:]", 249, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to collect PCRT: %ld", v6);
    }

    else
    {
      v12 = [NSData alloc];
      v13 = [v12 initWithBytes:v20 length:v19];
      if (v13)
      {
        v11 = v13;
        v9 = 0;
        goto LABEL_13;
      }

      MobileActivationError = createMobileActivationError("[MACollectionInterface collectPCRT:]", 255, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to convert data.");
    }
  }

  else
  {
    MobileActivationError = createMobileActivationError("[MACollectionInterface collectPCRT:]", 243, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Collection library not loaded.");
  }

  v8 = MobileActivationError;
  v9 = v8;
  if (a3)
  {
    v10 = v8;
    v11 = 0;
    *a3 = v9;
  }

  else
  {
    v11 = 0;
  }

LABEL_13:
  v14 = v20;
  if (v20)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v15 = getZshgJnRaSlwnSymbolLoc_ptr;
    v29 = getZshgJnRaSlwnSymbolLoc_ptr;
    if (!getZshgJnRaSlwnSymbolLoc_ptr)
    {
      v21 = _NSConcreteStackBlock;
      v22 = 3254779904;
      v23 = __getZshgJnRaSlwnSymbolLoc_block_invoke;
      v24 = &__block_descriptor_40_e8_32r_e5_v8__0l;
      v25 = &v26;
      v16 = libInFieldCollectionLibrary();
      v17 = dlsym(v16, "ZshgJnRaSlwn");
      *(v25[1] + 24) = v17;
      getZshgJnRaSlwnSymbolLoc_ptr = *(v25[1] + 24);
      v15 = v27[3];
    }

    _Block_object_dispose(&v26, 8);
    if (!v15)
    {
      [MACollectionInterface collectPCRT:];
    }

    v15(v14);
  }

  return v11;
}

- (id)signingKeyPublicKeyWithError:(id *)a3
{
  error = 0;
  v4 = SecKeyCopyPublicKey([(MACollectionInterface *)self signingKey]);
  v5 = v4;
  if (v4)
  {
    v6 = SecKeyCopyExternalRepresentation(v4, &error);
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      goto LABEL_9;
    }

    MobileActivationError = createMobileActivationError("[MACollectionInterface signingKeyPublicKeyWithError:]", 288, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to RK public key as data.");
  }

  else
  {
    MobileActivationError = createMobileActivationError("[MACollectionInterface signingKeyPublicKeyWithError:]", 282, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy RK public key.");
  }

  v10 = MobileActivationError;
  v8 = v10;
  if (a3)
  {
    v11 = v10;
    v7 = 0;
    *a3 = v8;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

- (id)signatureForData:(id)a3 error:(id *)a4
{
  error = 0;
  v6 = a3;
  v7 = SecKeyCreateSignature([(MACollectionInterface *)self signingKey], kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v6, &error);

  if (v7)
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v9 = createMobileActivationError("[MACollectionInterface signatureForData:error:]", 317, @"com.apple.MobileActivation.ErrorDomain", -1, error, @"Failed to sign activation data with ref key.");
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  if (a4 && !v7)
  {
    v10 = v9;
    *a4 = v9;
  }

  return v7;
}

- (id)copyIngestHeaders:(id)a3 withError:(id *)a4
{
  v6 = a3;
  if ([(MACollectionInterface *)self collectionLibraryLoaded])
  {
    v22 = 0;
    v7 = [(MACollectionInterface *)self signatureForData:v6 error:&v22];
    v8 = v22;
    v9 = v8;
    if (v7)
    {
      v21 = v8;
      v10 = [(MACollectionInterface *)self signingKeyPublicKeyWithError:&v21];
      v11 = v21;

      if (v10)
      {
        v12 = [v7 base64EncodedStringWithOptions:0];
        v13 = [v10 base64EncodedStringWithOptions:0];
        v14 = v13;
        if (v12 && v13)
        {
          v23[0] = @"X-Apple-Signature";
          v23[1] = @"X-Apple-Sig-Key";
          v24[0] = v12;
          v24[1] = v13;
          v23[2] = @"Content-Type";
          v23[3] = @"User-Agent";
          v24[2] = @"application/octet-stream";
          v24[3] = @"iOS Device Activator (MobileActivation-1068.42.2)";
          v23[4] = @"X-Apple-AL-ID";
          v15 = +[NSUUID UUID];
          v16 = [(NSUUID *)v15 UUIDString];
          v24[4] = v16;
          v17 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];

          if (!a4)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        v18 = createMobileActivationError("[MACollectionInterface copyIngestHeaders:withError:]", 368, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode data as string.");
      }

      else
      {
        v18 = createMobileActivationError("[MACollectionInterface copyIngestHeaders:withError:]", 358, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to copy signing key public key: %@", v11);

        v12 = 0;
        v14 = 0;
      }

      v17 = 0;
      v11 = v18;
      if (!a4)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v11 = createMobileActivationError("[MACollectionInterface copyIngestHeaders:withError:]", 352, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create signature for data: %@", v8);

    v12 = 0;
    v14 = 0;
  }

  else
  {
    v11 = createMobileActivationError("[MACollectionInterface copyIngestHeaders:withError:]", 344, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Collection library not loaded.");
    v12 = 0;
    v14 = 0;
    v7 = 0;
  }

  v10 = 0;
  v17 = 0;
  if (!a4)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v17)
  {
    v19 = v11;
    *a4 = v11;
  }

LABEL_17:

  return v17;
}

- (id)copyIngestData:(id *)a3
{
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = __Block_byref_object_copy__1;
  v76[4] = __Block_byref_object_dispose__1;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__1;
  v74 = __Block_byref_object_dispose__1;
  v75 = 0;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy__1;
  v68[4] = __Block_byref_object_dispose__1;
  v69 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__1;
  v66 = __Block_byref_object_dispose__1;
  v67 = 0;
  if (copyIngestData__onceToken != -1)
  {
    v45 = self;
    [MACollectionInterface copyIngestData:];
    self = v45;
  }

  if (!copyIngestData__queue)
  {
    v11 = createMobileActivationError("[MACollectionInterface copyIngestData:]", 419, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to create queue.");
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v51 = 0;
    v49 = 0;
LABEL_26:
    v50 = 0;
LABEL_27:
    v48 = 0;
    goto LABEL_28;
  }

  location = self;
  if (!is_product_cellular())
  {
    v49 = 0;
    v50 = 0;
    goto LABEL_13;
  }

  v3 = +[GestaltHlpr getSharedInstance];
  v49 = [v3 copyAnswer:@"InternationalMobileEquipmentIdentity"];

  v4 = isNSString(v49);
  LODWORD(v3) = v4 == 0;

  if (v3)
  {
    v11 = createMobileActivationError("[MACollectionInterface copyIngestData:]", 428, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve IMEI.");
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v51 = 0;
    goto LABEL_26;
  }

  v5 = +[GestaltHlpr getSharedInstance];
  v50 = [v5 copyAnswer:@"xRyzf9zFE/ycr/wJPweZvQ"];

  if (v50)
  {
    v6 = isNSString(v50);
    v7 = v6 == 0;

    if (v7)
    {
      v11 = createMobileActivationError("[MACollectionInterface copyIngestData:]", 434, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid IMEI2.");
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v51 = 0;
      goto LABEL_27;
    }
  }

  v8 = +[GestaltHlpr getSharedInstance];
  v48 = [v8 copyAnswer:@"MobileEquipmentIdentifier"];

  if (!v48)
  {
LABEL_13:
    v48 = 0;
    goto LABEL_14;
  }

  v9 = isNSString(v48);
  v10 = v9 == 0;

  if (v10)
  {
    v11 = createMobileActivationError("[MACollectionInterface copyIngestData:]", 442, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Invalid MEID.");
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v51 = 0;
LABEL_28:
    v18 = 0;
LABEL_29:
    v21 = 0;
LABEL_30:
    v26 = 0;
LABEL_31:
    v29 = 0;
LABEL_32:
    v33 = 0;
    v34 = 0;
LABEL_33:
    v35 = v63[5];
    v63[5] = v11;

    v31 = v26;
LABEL_34:
    v36 = 0;
    if (a3)
    {
      *a3 = v63[5];
    }

    goto LABEL_36;
  }

LABEL_14:
  v15 = +[GestaltHlpr getSharedInstance];
  v51 = [v15 copyAnswer:@"SerialNumber"];

  v16 = isNSString(v51);
  LODWORD(v15) = v16 == 0;

  if (v15)
  {
    v11 = createMobileActivationError("[MACollectionInterface copyIngestData:]", 449, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve serial number.");
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_28;
  }

  v17 = +[GestaltHlpr getSharedInstance];
  v18 = [v17 copyAnswer:@"ProductType"];

  v19 = isNSString(v18);
  LODWORD(v17) = v19 == 0;

  if (v17)
  {
    v11 = createMobileActivationError("[MACollectionInterface copyIngestData:]", 455, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve product type.");
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_29;
  }

  v20 = +[GestaltHlpr getSharedInstance];
  v21 = [v20 copyAnswer:@"ProductVersion"];

  v22 = isNSString(v21);
  LODWORD(v20) = v22 == 0;

  if (v20)
  {
    v11 = createMobileActivationError("[MACollectionInterface copyIngestData:]", 461, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve product version.");
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_30;
  }

  v23 = +[GestaltHlpr getSharedInstance];
  v14 = [v23 copyAnswer:@"UniqueDeviceID"];

  v24 = isNSString(v14);
  LODWORD(v23) = v24 == 0;

  if (v23)
  {
    v11 = createMobileActivationError("[MACollectionInterface copyIngestData:]", 467, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve UDID.");
    v12 = 0;
    v13 = 0;
    goto LABEL_30;
  }

  v25 = +[GestaltHlpr getSharedInstance];
  v26 = [v25 copyAnswer:@"BuildVersion"];

  v27 = isNSString(v26);
  LOBYTE(v25) = v27 == 0;

  if (v25)
  {
    MobileActivationError = createMobileActivationError("[MACollectionInterface copyIngestData:]", 473, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to retrieve OS build.");
LABEL_43:
    v11 = MobileActivationError;
    v12 = 0;
LABEL_44:
    v13 = 0;
    goto LABEL_31;
  }

  v28 = (v63 + 5);
  obj = v63[5];
  v12 = [(MACollectionInterface *)location collectSIK:&obj];
  objc_storeStrong(v28, obj);
  if (!v12)
  {
    MobileActivationError = createMobileActivationError("[MACollectionInterface copyIngestData:]", 481, @"com.apple.MobileActivation.ErrorDomain", -1, v63[5], @"Failed to collect SIK.");
    goto LABEL_43;
  }

  v29 = [v12 base64EncodedStringWithOptions:0];
  if (!v29)
  {
    v11 = createMobileActivationError("[MACollectionInterface copyIngestData:]", 487, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode data as string.");
    goto LABEL_44;
  }

  if (![(MACollectionInterface *)location collectionLibraryLoaded])
  {
    v39 = createMobileActivationError("[MACollectionInterface copyIngestData:]", 492, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to load collection library (verify this is a UI build).");
LABEL_47:
    v11 = v39;
    v13 = 0;
    goto LABEL_32;
  }

  v30 = copyIngestData__queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __40__MACollectionInterface_copyIngestData___block_invoke_2;
  block[3] = &__block_descriptor_80_e8_32s40s48r56r64r72r_e5_v8__0l;
  v57 = &v70;
  block[4] = location;
  v58 = v68;
  v31 = v26;
  v56 = v31;
  v59 = v76;
  v60 = &v62;
  dispatch_sync(v30, block);

  v32 = (v63 + 5);
  if (v63[5])
  {
    v13 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_34;
  }

  v54 = 0;
  v13 = [(MACollectionInterface *)location collectSigningAttestation:&v54];
  objc_storeStrong(v32, v54);
  if (!v13)
  {
    v39 = createMobileActivationError("[MACollectionInterface copyIngestData:]", 528, @"com.apple.MobileActivation.ErrorDomain", -1, v63[5], @"Failed to collect signing key attestation.");
    goto LABEL_47;
  }

  v40 = [v13 base64EncodedStringWithOptions:0];
  v33 = v40;
  if (!v40)
  {
    v11 = createMobileActivationError("[MACollectionInterface copyIngestData:]", 534, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode data as string.");
    v33 = 0;
    v34 = 0;
LABEL_64:
    v26 = v31;
    goto LABEL_33;
  }

  if ([v40 length] > 0xFA0)
  {
    v41 = [(MACollectionInterface *)location dark];
    [v33 length];
    writeSplunkLog(v41, 14, -1, "[MACollectionInterface copyIngestData:]", 539, 0, @"%@ is too long: %ld > 4000", v42, @"scrt-part2");
  }

  v78[0] = @"scrt-part1";
  v78[1] = @"scrt-part2";
  v79[0] = v29;
  v79[1] = v33;
  v78[2] = @"serial-number";
  v78[3] = @"productType";
  v79[2] = v51;
  v79[3] = v18;
  v78[4] = @"os-version";
  v78[5] = @"udid";
  v79[4] = v21;
  v79[5] = v14;
  v78[6] = @"os-build";
  v79[6] = v31;
  v43 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:7];
  v34 = [NSMutableDictionary dictionaryWithDictionary:v43];

  if (v49)
  {
    [(NSMutableDictionary *)v34 setObject:v49 forKeyedSubscript:@"imei"];
  }

  if (v50)
  {
    [(NSMutableDictionary *)v34 setObject:v50 forKeyedSubscript:@"ime2"];
  }

  if (v48)
  {
    [(NSMutableDictionary *)v34 setObject:v48 forKeyedSubscript:@"meid"];
  }

  v44 = v71[5];
  if (v44)
  {
    [(NSMutableDictionary *)v34 setObject:v44 forKeyedSubscript:@"pcrt"];
  }

  locationa = (v63 + 5);
  v53 = v63[5];
  v36 = [NSJSONSerialization dataWithJSONObject:v34 options:0 error:&v53];
  objc_storeStrong(locationa, v53);
  if (!v36)
  {
    v11 = createMobileActivationError("[MACollectionInterface copyIngestData:]", 572, @"com.apple.MobileActivation.ErrorDomain", -1, v63[5], @"Failed to convert dictionary to JSON data.");
    goto LABEL_64;
  }

LABEL_36:
  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(v68, 8);
  _Block_object_dispose(&v70, 8);

  _Block_object_dispose(v76, 8);
  return v36;
}

void __40__MACollectionInterface_copyIngestData___block_invoke(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.mobileactivationd.collection", v1);
  v3 = copyIngestData__queue;
  copyIngestData__queue = v2;
}

void __40__MACollectionInterface_copyIngestData___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) dark];
  v3 = data_ark_copy(v2, 0, @"PCRTCollectionString");
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) dark];
  v7 = data_ark_copy(v6, 0, @"PCRTCollectionStringBuild");
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = isNSString(*(*(*(a1 + 48) + 8) + 40));
  if (!v10)
  {
LABEL_6:
    v15 = *(a1 + 32);
    v16 = *(*(a1 + 72) + 8);
    obj = *(v16 + 40);
    v17 = [v15 collectPCRT:&obj];
    objc_storeStrong((v16 + 40), obj);
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = *(*(*(a1 + 64) + 8) + 40);
    if (v20)
    {
      v21 = [v20 base64EncodedStringWithOptions:0];
      v22 = *(*(a1 + 48) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        v24 = [*(a1 + 32) dark];
        data_ark_set(v24, 0, @"PCRTCollectionString", *(*(*(a1 + 48) + 8) + 40), 1);

        v25 = [*(a1 + 32) dark];
        data_ark_set(v25, 0, @"PCRTCollectionStringBuild", *(a1 + 40), 1);
LABEL_12:

        return;
      }

      MobileActivationError = createMobileActivationError("[MACollectionInterface copyIngestData:]_block_invoke_2", 510, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to encode data as string.");
    }

    else
    {
      MobileActivationError = createMobileActivationError("[MACollectionInterface copyIngestData:]_block_invoke_2", 504, @"com.apple.MobileActivation.ErrorDomain", -1, *(*(*(a1 + 72) + 8) + 40), @"Failed to collect PCRT.");
    }

    v27 = MobileActivationError;
    v28 = *(*(a1 + 72) + 8);
    v25 = *(v28 + 40);
    *(v28 + 40) = v27;
    goto LABEL_12;
  }

  v11 = v10;
  v12 = isNSString(*(*(*(a1 + 56) + 8) + 40));
  if (!v12)
  {

    goto LABEL_6;
  }

  v13 = v12;
  v14 = [*(*(*(a1 + 56) + 8) + 40) isEqualToString:*(a1 + 40)];

  if ((v14 & 1) == 0)
  {
    goto LABEL_6;
  }
}

- (BOOL)processSUInfo:(id)a3 withError:(id *)a4
{
  v6 = a3;
  if ([(MACollectionInterface *)self collectionLibraryLoaded])
  {
    v7 = NAAB([v6 bytes], objc_msgSend(v6, "length"));
    if (!v7)
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_9;
    }

    MobileActivationError = createMobileActivationError("[MACollectionInterface processSUInfo:withError:]", 600, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Failed to process SUInfo: %d", v7);
  }

  else
  {
    MobileActivationError = createMobileActivationError("[MACollectionInterface processSUInfo:withError:]", 592, @"com.apple.MobileActivation.ErrorDomain", -1, 0, @"Collection library not loaded.");
  }

  v9 = MobileActivationError;
  if (a4)
  {
    v9 = v9;
    v10 = 0;
    *a4 = v9;
  }

  else
  {
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (void)collectPCRT:.cold.1()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"void gFreeInFieldManifest(UInt8 *)"];
  [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"MACollectionInterface.m" lineNumber:44 description:@"%s", dlerror()];

  __break(1u);
}

- (void)collectPCRT:.cold.2()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"OSStatus gCollectInFieldManifest(UInt8 **, UInt32 *)"];
  [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"MACollectionInterface.m" lineNumber:43 description:@"%s", dlerror()];

  __break(1u);
}

@end