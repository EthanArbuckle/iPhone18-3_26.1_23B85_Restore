@interface MIBUTatsuVerifier
+ (BOOL)verifyTatsuEntitlement:(id)a3 error:(id *)a4;
+ (id)_copyDeviceTreeInt:(id)a3 key:(id)a4 defaultValue:(id)a5;
+ (id)_copyDeviceTreeProperty:(id)a3 key:(id)a4;
+ (id)apNonce;
+ (id)sepNonce;
+ (id)sikaFuse;
@end

@implementation MIBUTatsuVerifier

+ (id)apNonce
{
  v2 = MGCopyAnswer();
  v3 = qword_1000B83B0;
  qword_1000B83B0 = v2;

  v4 = qword_1000B83B0;

  return v4;
}

+ (id)sepNonce
{
  v2 = [NSData generateRandomBytesOfSize:20];
  v3 = qword_1000B83B8;
  qword_1000B83B8 = v2;

  v4 = qword_1000B83B8;

  return v4;
}

+ (id)sikaFuse
{
  v3 = [@"IODeviceTree" stringByAppendingString:@":/chosen"];
  v4 = [a1 _copyDeviceTreeInt:v3 key:@"esdm-fuses" defaultValue:0];

  return v4;
}

+ (BOOL)verifyTatsuEntitlement:(id)a3 error:(id *)a4
{
  v4 = a3;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0;
  v14 = off_10009ABC0;
  v15 = 0;
  if (os_variant_has_internal_content())
  {
    v5 = +[MIBUTestPreferences sharedInstance];
    v6 = [v5 useLiveTatsu];

    if ((v6 & 1) == 0)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100058168();
      }

      v12 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Faking Tatsu entitlement verification, return success", v13, 2u);
      }

      goto LABEL_10;
    }
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005817C();
  }

  v7 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Verifying Tatsu entitlement...", v13, 2u);
  }

  [v4 bytes];
  [v4 length];
  inited = Img4DecodeInitManifest();
  if (inited)
  {
    sub_100058190(inited);
LABEL_19:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = Img4DecodePerformManifestTrustEvaluationWithCallbacks();
  if (v9)
  {
    sub_100058274(v9);
    goto LABEL_19;
  }

  if (v16 != 511)
  {
    sub_100058354(&v16);
    goto LABEL_19;
  }

LABEL_10:
  v10 = 1;
LABEL_11:

  return v10;
}

+ (id)_copyDeviceTreeProperty:(id)a3 key:(id)a4
{
  v5 = a4;
  v6 = v5;
  CFProperty = 0;
  if (a3 && v5)
  {
    v8 = IORegistryEntryFromPath(kIOMainPortDefault, [a3 fileSystemRepresentation]);
    if (v8)
    {
      v9 = v8;
      CFProperty = IORegistryEntryCreateCFProperty(v8, v6, 0, 0);
      IOObjectRelease(v9);
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100058440();
      }

      v10 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "entry == MACH_PORT_NULL", v12, 2u);
      }

      CFProperty = 0;
    }
  }

  return CFProperty;
}

+ (id)_copyDeviceTreeInt:(id)a3 key:(id)a4 defaultValue:(id)a5
{
  v8 = a5;
  v9 = v8;
  v10 = 0;
  v13 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

  v11 = v8;
  if (a4)
  {
    v10 = [a1 _copyDeviceTreeProperty:a3 key:a4];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 length] == 4)
    {
      [v10 getBytes:&v13 length:4];
      v11 = [NSNumber numberWithInt:v13];

      goto LABEL_7;
    }

LABEL_6:
    v11 = v9;
  }

LABEL_7:

  return v11;
}

@end