@interface MIIPAPatcherManifest
+ (id)_arrayFromPlistRepresentation:(id)a3 key:(id)a4 sub:(id)a5 index:(unint64_t)a6 withError:(id *)a7;
+ (id)_manifestErrorForKey:(id)a3 sub:(id)a4 index:(int64_t)a5 expected:(id)a6 value:(id)a7;
+ (id)_manifestFromPlistRepresentationV1:(id)a3 withError:(id *)a4;
+ (id)_numberFromPlistRepresentation:(id)a3 key:(id)a4 sub:(id)a5 index:(unint64_t)a6 withError:(id *)a7;
+ (id)_stringFromPlistRepresentation:(id)a3 key:(id)a4 sub:(id)a5 index:(unint64_t)a6 withError:(id *)a7;
+ (id)_targetsFromPlistRepresentationV1:(id)a3 withError:(id *)a4;
+ (id)manifestFromFileURL:(id)a3 fmRead:(id)a4 withError:(id *)a5;
+ (id)manifestFromFileURL:(id)a3 withError:(id *)a4;
+ (id)manifestFromPlistRepresentation:(id)a3 withError:(id *)a4;
- (BOOL)writeToFileURL:(id)a3 withError:(id *)a4;
- (MIIPAPatcherManifest)initWithCommandLineArgs:(id)a3 targets:(id)a4 toolVersion:(id)a5 toolArch:(id)a6 toolBuiltWithSDKVersion:(id)a7 toolBuiltWithXcodeVersion:(id)a8 hostVersion:(id)a9;
- (id)plistRepresentation;
@end

@implementation MIIPAPatcherManifest

- (MIIPAPatcherManifest)initWithCommandLineArgs:(id)a3 targets:(id)a4 toolVersion:(id)a5 toolArch:(id)a6 toolBuiltWithSDKVersion:(id)a7 toolBuiltWithXcodeVersion:(id)a8 hostVersion:(id)a9
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v16 = a8;
  v17 = a9;
  v27.receiver = self;
  v27.super_class = MIIPAPatcherManifest;
  v18 = [(MIIPAPatcherManifest *)&v27 init];
  if (v18)
  {
    v19 = +[MIIPAPatcherFileManager defaultManager];
    fmWrite = v18->_fmWrite;
    v18->_fmWrite = v19;

    if (qword_1000A95E0 != -1)
    {
      sub_100057C70();
    }

    objc_storeStrong(&v18->_manifestVersion, qword_1000A95D8);
    objc_storeStrong(&v18->_commandLineArgs, a3);
    objc_storeStrong(&v18->_targets, a4);
    objc_storeStrong(&v18->_toolVersion, a5);
    objc_storeStrong(&v18->_toolArch, a6);
    objc_storeStrong(&v18->_toolBuiltWithSDKVersion, a7);
    objc_storeStrong(&v18->_toolBuiltWithXcodeVersion, a8);
    objc_storeStrong(&v18->_hostVersion, a9);
  }

  return v18;
}

+ (id)manifestFromPlistRepresentation:(id)a3 withError:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v19 = 0;
    v9 = [a1 _manifestFromPlistRepresentationV1:v7 withError:&v19];
    v10 = v19;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v20[0] = NSLocalizedDescriptionKey;
    v11 = [NSString alloc];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 initWithFormat:@"Invalid manifest, expected NSDictionary, got [%@]", v13];
    v21[0] = v14;
    v21[1] = &off_10009B698;
    v20[1] = @"line";
    v20[2] = @"function";
    v15 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[MIIPAPatcherManifest manifestFromPlistRepresentation:withError:]");
    v21[2] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
    v10 = [NSError errorWithDomain:@"com.apple.MIIPAPatcher" code:7 userInfo:v16];

    v9 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }
  }

  if (!v9)
  {
    v17 = v10;
    *a4 = v10;
  }

LABEL_10:

  return v9;
}

+ (id)manifestFromFileURL:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = +[MIIPAPatcherFileManager defaultManager];
  v8 = [a1 manifestFromFileURL:v6 fmRead:v7 withError:a4];

  return v8;
}

+ (id)manifestFromFileURL:(id)a3 fmRead:(id)a4 withError:(id *)a5
{
  v13 = 0;
  v6 = [a4 plistRepresentationFromFileURL:a3 withError:&v13];
  v7 = v13;
  if (v6)
  {
    v12 = v7;
    v8 = [MIIPAPatcherManifest manifestFromPlistRepresentation:v6 withError:&v12];
    v9 = v12;

    v7 = v9;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v10 = v7;
    *a5 = v7;
  }

LABEL_7:

  return v8;
}

- (id)plistRepresentation
{
  v3 = [NSMutableArray alloc];
  v4 = [(MIIPAPatcherManifest *)self targets];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(MIIPAPatcherManifest *)self targets];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v22 + 1) + 8 * i) plistRepresentation];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  v26[0] = @"version";
  v12 = [(MIIPAPatcherManifest *)self manifestVersion];
  v27[0] = v12;
  v26[1] = @"commandLineArgs";
  v13 = [(MIIPAPatcherManifest *)self commandLineArgs];
  v27[1] = v13;
  v26[2] = @"targets";
  v14 = [v5 copy];
  v27[2] = v14;
  v26[3] = @"toolVersion";
  v15 = [(MIIPAPatcherManifest *)self toolVersion];
  v27[3] = v15;
  v26[4] = @"toolArch";
  v16 = [(MIIPAPatcherManifest *)self toolArch];
  v27[4] = v16;
  v26[5] = @"toolBuiltWithSDKVersion";
  v17 = [(MIIPAPatcherManifest *)self toolBuiltWithSDKVersion];
  v27[5] = v17;
  v26[6] = @"toolBuiltWithXcodeVersion";
  v18 = [(MIIPAPatcherManifest *)self toolBuiltWithXcodeVersion];
  v27[6] = v18;
  v26[7] = @"hostVersion";
  v19 = [(MIIPAPatcherManifest *)self hostVersion];
  v27[7] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:8];

  return v20;
}

- (BOOL)writeToFileURL:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(MIIPAPatcherManifest *)self plistRepresentation];
  v8 = [(MIIPAPatcherManifest *)self fmWrite];
  LOBYTE(a4) = [v8 writePlistRepresentation:v7 format:0 toFileURL:v6 mode:384 withError:a4];

  return a4;
}

+ (id)_manifestErrorForKey:(id)a3 sub:(id)a4 index:(int64_t)a5 expected:(id)a6 value:(id)a7
{
  v25 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = &stru_100092CF8;
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = &stru_100092CF8;
  }

  v16 = v15;
  if ((a5 & 0x8000000000000000) == 0)
  {
    v14 = [NSString stringWithFormat:@" at index %lu", a5];
  }

  v26[0] = NSLocalizedDescriptionKey;
  v17 = [NSString alloc];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v20 = [v17 initWithFormat:@"Invalid manifest %@key [%@]%@. Expected [%@], got [%@].", v16, v25, v14, v12, v19];
  v27[0] = v20;
  v27[1] = &off_10009B6B0;
  v26[1] = @"line";
  v26[2] = @"function";
  v21 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[MIIPAPatcherManifest _manifestErrorForKey:sub:index:expected:value:]");
  v27[2] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
  v23 = [NSError errorWithDomain:@"com.apple.MIIPAPatcher" code:5 userInfo:v22];

  return v23;
}

+ (id)_arrayFromPlistRepresentation:(id)a3 key:(id)a4 sub:(id)a5 index:(unint64_t)a6 withError:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = [a3 objectForKeyedSubscript:v12];
  objc_opt_class();
  v15 = v14;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (a7 && !v16)
  {
    *a7 = [a1 _manifestErrorForKey:v12 sub:v13 index:a6 expected:@"NSArray" value:v15];
  }

  return v16;
}

+ (id)_stringFromPlistRepresentation:(id)a3 key:(id)a4 sub:(id)a5 index:(unint64_t)a6 withError:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = [a3 objectForKeyedSubscript:v12];
  objc_opt_class();
  v15 = v14;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (a7 && !v16)
  {
    *a7 = [a1 _manifestErrorForKey:v12 sub:v13 index:a6 expected:@"NSString" value:v15];
  }

  return v16;
}

+ (id)_numberFromPlistRepresentation:(id)a3 key:(id)a4 sub:(id)a5 index:(unint64_t)a6 withError:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = [a3 objectForKeyedSubscript:v12];
  objc_opt_class();
  v15 = v14;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (a7 && !v16)
  {
    *a7 = [a1 _manifestErrorForKey:v12 sub:v13 index:a6 expected:@"NSNumber" value:v15];
  }

  return v16;
}

+ (id)_manifestFromPlistRepresentationV1:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v32 = 0;
  v7 = [a1 _numberFromPlistRepresentation:v6 key:@"version" sub:0 index:-1 withError:&v32];
  v8 = v32;
  v9 = v8;
  obj = v7;
  if (v7)
  {
    v21 = a4;
    v31 = v8;
    v10 = [a1 _arrayFromPlistRepresentation:v6 key:@"commandLineArgs" sub:0 index:-1 withError:&v31];
    v11 = v31;

    if (v10)
    {
      objc_opt_class();
      if (sub_100010AB8(v10))
      {
        v30 = v11;
        v12 = [a1 _arrayFromPlistRepresentation:v6 key:@"targets" sub:0 index:-1 withError:&v30];
        v9 = v30;

        if (v12)
        {
          v29 = v9;
          v13 = [a1 _targetsFromPlistRepresentationV1:v12 withError:&v29];
          v11 = v29;

          if (v13)
          {
            v28 = v11;
            v14 = [a1 _stringFromPlistRepresentation:v6 key:@"toolVersion" sub:0 index:-1 withError:&v28];
            v9 = v28;

            if (!v14)
            {
              v22 = 0;
              v15 = 0;
              goto LABEL_21;
            }

            v22 = v14;
            v27 = v9;
            v15 = [a1 _stringFromPlistRepresentation:v6 key:@"toolArch" sub:0 index:-1 withError:&v27];
            v11 = v27;

            if (v15)
            {
              v26 = v11;
              v14 = [a1 _stringFromPlistRepresentation:v6 key:@"toolBuiltWithSDKVersion" sub:0 index:-1 withError:&v26];
              v9 = v26;

              if (v14)
              {
                v25 = v9;
                v7 = [a1 _stringFromPlistRepresentation:v6 key:@"toolBuiltWithXcodeVersion" sub:0 index:-1 withError:&v25];
                v11 = v25;

                if (v7)
                {
                  v24 = v11;
                  v16 = [a1 _stringFromPlistRepresentation:v6 key:@"hostVersion" sub:0 index:-1 withError:&v24];
                  v9 = v24;

                  if (v16)
                  {
                    a4 = [[MIIPAPatcherManifest alloc] initWithCommandLineArgs:v10 targets:v13 toolVersion:v22 toolArch:v15 toolBuiltWithSDKVersion:v14 toolBuiltWithXcodeVersion:v7 hostVersion:v16];
                    objc_storeStrong(a4 + 2, obj);
                    goto LABEL_24;
                  }

LABEL_22:
                  a4 = v21;
                  if (v21)
                  {
                    goto LABEL_23;
                  }

LABEL_13:
                  v16 = 0;
                  goto LABEL_24;
                }

LABEL_17:
                v9 = v11;
                goto LABEL_22;
              }

LABEL_21:
              v7 = 0;
              goto LABEL_22;
            }

LABEL_16:
            v14 = 0;
            v7 = 0;
            goto LABEL_17;
          }

LABEL_15:
          v22 = 0;
          v15 = 0;
          goto LABEL_16;
        }

        v13 = 0;
      }

      else
      {
        v17 = [v6 objectForKeyedSubscript:@"commandLineArgs"];
        v9 = [a1 _manifestErrorForKey:@"commandLineArgs" sub:0 index:-1 expected:@"NSArray<NSString>" value:v17];

        v13 = 0;
        v12 = 0;
      }

      v22 = 0;
      v15 = 0;
      v14 = 0;
      goto LABEL_21;
    }

    v13 = 0;
    v12 = 0;
    goto LABEL_15;
  }

  v10 = 0;
  v13 = 0;
  v12 = 0;
  v22 = 0;
  v15 = 0;
  v14 = 0;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_23:
  v18 = v9;
  v16 = 0;
  v19 = a4;
  a4 = 0;
  *v19 = v9;
LABEL_24:

  return a4;
}

+ (id)_targetsFromPlistRepresentationV1:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v6;
  v36 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  v8 = 0;
  if (!v36)
  {
    goto LABEL_35;
  }

  v37 = *v47;
  v38 = 0;
  v32 = _kCFBundleShortVersionStringKey;
  v31 = v7;
  v35 = a1;
  v30 = a4;
  while (2)
  {
    v9 = 0;
    do
    {
      if (*v47 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v46 + 1) + 8 * v9);
      objc_opt_class();
      v11 = v10;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v12 = v38;
LABEL_38:
        v26 = [a1 _manifestErrorForKey:@"targets" sub:@"target " index:v12 expected:@"NSDictionary" value:v11];

        v20 = 0;
        v8 = v26;
LABEL_39:
        a4 = v30;
        v7 = v31;
        if (!v30)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v12 = v38;
      if (!v11)
      {
        goto LABEL_38;
      }

      v45 = v8;
      v13 = [a1 _stringFromPlistRepresentation:v11 key:kCFBundleVersionKey sub:@"target " index:v38 withError:&v45];
      v14 = v45;

      v39 = v13;
      if (!v13)
      {
        v18 = 0;
        v15 = 0;
LABEL_20:
        v17 = 0;
        v19 = 0;
        v20 = 0;
        v33 = 1;
LABEL_21:
        v8 = v14;
        goto LABEL_22;
      }

      v44 = v14;
      v15 = [a1 _stringFromPlistRepresentation:v11 key:v32 sub:@"target " index:v38 withError:&v44];
      v8 = v44;

      if (!v15)
      {
        v18 = 0;
        v13 = 0;
        v17 = 0;
LABEL_17:
        v19 = 0;
LABEL_18:
        v20 = 0;
        v33 = 1;
        goto LABEL_22;
      }

      v43 = v8;
      v13 = [a1 _stringFromPlistRepresentation:v11 key:kCFBundleIdentifierKey sub:@"target " index:v38 withError:&v43];
      v14 = v43;

      if (!v13)
      {
        v18 = 0;
        goto LABEL_20;
      }

      v16 = [v11 objectForKeyedSubscript:@"UISupportedDevices"];

      if (!v16)
      {
        v17 = 0;
        goto LABEL_26;
      }

      v42 = v14;
      v17 = [a1 _arrayFromPlistRepresentation:v11 key:@"UISupportedDevices" sub:0 index:v38 withError:&v42];
      v8 = v42;

      if (!v17)
      {
        v18 = 0;
        goto LABEL_17;
      }

      objc_opt_class();
      if ((sub_100010AB8(v17) & 1) == 0)
      {
        v23 = [v11 objectForKeyedSubscript:@"UISupportedDevices"];
        v24 = [a1 _manifestErrorForKey:@"UISupportedDevices" sub:@"target " index:v38 expected:@"NSArray<NSString>" value:v23];

        v22 = v23;
        v14 = v24;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v33 = 1;
        goto LABEL_32;
      }

      v14 = v8;
LABEL_26:
      v41 = v14;
      v19 = [a1 _stringFromPlistRepresentation:v11 key:@"infoPlistHash" sub:@"target " index:v38 withError:&v41];
      v8 = v41;

      if (!v19)
      {
        v18 = 0;
        goto LABEL_18;
      }

      v40 = v8;
      v21 = [a1 _stringFromPlistRepresentation:v11 key:@"infoPlistHashAlgorithm" sub:@"target " index:v38 withError:&v40];
      v29 = v40;

      if (v21)
      {
        v22 = v21;
        v18 = [[MIIPAPatcherManifestTarget alloc] initWithCFBundleVersion:v39 cfBundleShortVersion:v15 bundleIdentifier:v13 uiSupportedDevices:v17 infoPlistHash:v19 infoPlistHashAlgorithm:v21];
        [v31 addObject:v18];
        v33 = 0;
        ++v38;
        v20 = 1;
        v14 = v29;
LABEL_32:

        goto LABEL_21;
      }

      v18 = 0;
      v20 = 0;
      v33 = 1;
      v8 = v29;
LABEL_22:

      if (!v20)
      {

        if (!v33)
        {
          v7 = v31;
          goto LABEL_42;
        }

        v20 = 0;
        goto LABEL_39;
      }

      v9 = v9 + 1;
      a1 = v35;
    }

    while (v36 != v9);
    v25 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    a4 = v30;
    v7 = v31;
    v36 = v25;
    if (v25)
    {
      continue;
    }

    break;
  }

LABEL_35:

  v20 = [v7 copy];
  if (a4)
  {
LABEL_40:
    if (!v20)
    {
      v27 = v8;
      *a4 = v8;
    }
  }

LABEL_42:

  return v20;
}

@end