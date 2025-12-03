@interface MIIPAPatcherManifest
+ (id)_arrayFromPlistRepresentation:(id)representation key:(id)key sub:(id)sub index:(unint64_t)index withError:(id *)error;
+ (id)_manifestErrorForKey:(id)key sub:(id)sub index:(int64_t)index expected:(id)expected value:(id)value;
+ (id)_manifestFromPlistRepresentationV1:(id)v1 withError:(id *)error;
+ (id)_numberFromPlistRepresentation:(id)representation key:(id)key sub:(id)sub index:(unint64_t)index withError:(id *)error;
+ (id)_stringFromPlistRepresentation:(id)representation key:(id)key sub:(id)sub index:(unint64_t)index withError:(id *)error;
+ (id)_targetsFromPlistRepresentationV1:(id)v1 withError:(id *)error;
+ (id)manifestFromFileURL:(id)l fmRead:(id)read withError:(id *)error;
+ (id)manifestFromFileURL:(id)l withError:(id *)error;
+ (id)manifestFromPlistRepresentation:(id)representation withError:(id *)error;
- (BOOL)writeToFileURL:(id)l withError:(id *)error;
- (MIIPAPatcherManifest)initWithCommandLineArgs:(id)args targets:(id)targets toolVersion:(id)version toolArch:(id)arch toolBuiltWithSDKVersion:(id)kVersion toolBuiltWithXcodeVersion:(id)xcodeVersion hostVersion:(id)hostVersion;
- (id)plistRepresentation;
@end

@implementation MIIPAPatcherManifest

- (MIIPAPatcherManifest)initWithCommandLineArgs:(id)args targets:(id)targets toolVersion:(id)version toolArch:(id)arch toolBuiltWithSDKVersion:(id)kVersion toolBuiltWithXcodeVersion:(id)xcodeVersion hostVersion:(id)hostVersion
{
  argsCopy = args;
  targetsCopy = targets;
  versionCopy = version;
  archCopy = arch;
  kVersionCopy = kVersion;
  xcodeVersionCopy = xcodeVersion;
  hostVersionCopy = hostVersion;
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
    objc_storeStrong(&v18->_commandLineArgs, args);
    objc_storeStrong(&v18->_targets, targets);
    objc_storeStrong(&v18->_toolVersion, version);
    objc_storeStrong(&v18->_toolArch, arch);
    objc_storeStrong(&v18->_toolBuiltWithSDKVersion, kVersion);
    objc_storeStrong(&v18->_toolBuiltWithXcodeVersion, xcodeVersion);
    objc_storeStrong(&v18->_hostVersion, hostVersion);
  }

  return v18;
}

+ (id)manifestFromPlistRepresentation:(id)representation withError:(id *)error
{
  representationCopy = representation;
  objc_opt_class();
  v7 = representationCopy;
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
    v9 = [self _manifestFromPlistRepresentationV1:v7 withError:&v19];
    v10 = v19;
    if (!error)
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
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v9)
  {
    v17 = v10;
    *error = v10;
  }

LABEL_10:

  return v9;
}

+ (id)manifestFromFileURL:(id)l withError:(id *)error
{
  lCopy = l;
  v7 = +[MIIPAPatcherFileManager defaultManager];
  v8 = [self manifestFromFileURL:lCopy fmRead:v7 withError:error];

  return v8;
}

+ (id)manifestFromFileURL:(id)l fmRead:(id)read withError:(id *)error
{
  v13 = 0;
  v6 = [read plistRepresentationFromFileURL:l withError:&v13];
  v7 = v13;
  if (v6)
  {
    v12 = v7;
    v8 = [MIIPAPatcherManifest manifestFromPlistRepresentation:v6 withError:&v12];
    v9 = v12;

    v7 = v9;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v10 = v7;
    *error = v7;
  }

LABEL_7:

  return v8;
}

- (id)plistRepresentation
{
  v3 = [NSMutableArray alloc];
  targets = [(MIIPAPatcherManifest *)self targets];
  v5 = [v3 initWithCapacity:{objc_msgSend(targets, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  targets2 = [(MIIPAPatcherManifest *)self targets];
  v7 = [targets2 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(targets2);
        }

        plistRepresentation = [*(*(&v22 + 1) + 8 * i) plistRepresentation];
        [v5 addObject:plistRepresentation];
      }

      v8 = [targets2 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  v26[0] = @"version";
  manifestVersion = [(MIIPAPatcherManifest *)self manifestVersion];
  v27[0] = manifestVersion;
  v26[1] = @"commandLineArgs";
  commandLineArgs = [(MIIPAPatcherManifest *)self commandLineArgs];
  v27[1] = commandLineArgs;
  v26[2] = @"targets";
  v14 = [v5 copy];
  v27[2] = v14;
  v26[3] = @"toolVersion";
  toolVersion = [(MIIPAPatcherManifest *)self toolVersion];
  v27[3] = toolVersion;
  v26[4] = @"toolArch";
  toolArch = [(MIIPAPatcherManifest *)self toolArch];
  v27[4] = toolArch;
  v26[5] = @"toolBuiltWithSDKVersion";
  toolBuiltWithSDKVersion = [(MIIPAPatcherManifest *)self toolBuiltWithSDKVersion];
  v27[5] = toolBuiltWithSDKVersion;
  v26[6] = @"toolBuiltWithXcodeVersion";
  toolBuiltWithXcodeVersion = [(MIIPAPatcherManifest *)self toolBuiltWithXcodeVersion];
  v27[6] = toolBuiltWithXcodeVersion;
  v26[7] = @"hostVersion";
  hostVersion = [(MIIPAPatcherManifest *)self hostVersion];
  v27[7] = hostVersion;
  v20 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:8];

  return v20;
}

- (BOOL)writeToFileURL:(id)l withError:(id *)error
{
  lCopy = l;
  plistRepresentation = [(MIIPAPatcherManifest *)self plistRepresentation];
  fmWrite = [(MIIPAPatcherManifest *)self fmWrite];
  LOBYTE(error) = [fmWrite writePlistRepresentation:plistRepresentation format:0 toFileURL:lCopy mode:384 withError:error];

  return error;
}

+ (id)_manifestErrorForKey:(id)key sub:(id)sub index:(int64_t)index expected:(id)expected value:(id)value
{
  keyCopy = key;
  subCopy = sub;
  expectedCopy = expected;
  valueCopy = value;
  index = &stru_100092CF8;
  if (subCopy)
  {
    v15 = subCopy;
  }

  else
  {
    v15 = &stru_100092CF8;
  }

  v16 = v15;
  if ((index & 0x8000000000000000) == 0)
  {
    index = [NSString stringWithFormat:@" at index %lu", index];
  }

  v26[0] = NSLocalizedDescriptionKey;
  v17 = [NSString alloc];
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v20 = [v17 initWithFormat:@"Invalid manifest %@key [%@]%@. Expected [%@], got [%@].", v16, keyCopy, index, expectedCopy, v19];
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

+ (id)_arrayFromPlistRepresentation:(id)representation key:(id)key sub:(id)sub index:(unint64_t)index withError:(id *)error
{
  keyCopy = key;
  subCopy = sub;
  v14 = [representation objectForKeyedSubscript:keyCopy];
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

  if (error && !v16)
  {
    *error = [self _manifestErrorForKey:keyCopy sub:subCopy index:index expected:@"NSArray" value:v15];
  }

  return v16;
}

+ (id)_stringFromPlistRepresentation:(id)representation key:(id)key sub:(id)sub index:(unint64_t)index withError:(id *)error
{
  keyCopy = key;
  subCopy = sub;
  v14 = [representation objectForKeyedSubscript:keyCopy];
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

  if (error && !v16)
  {
    *error = [self _manifestErrorForKey:keyCopy sub:subCopy index:index expected:@"NSString" value:v15];
  }

  return v16;
}

+ (id)_numberFromPlistRepresentation:(id)representation key:(id)key sub:(id)sub index:(unint64_t)index withError:(id *)error
{
  keyCopy = key;
  subCopy = sub;
  v14 = [representation objectForKeyedSubscript:keyCopy];
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

  if (error && !v16)
  {
    *error = [self _manifestErrorForKey:keyCopy sub:subCopy index:index expected:@"NSNumber" value:v15];
  }

  return v16;
}

+ (id)_manifestFromPlistRepresentationV1:(id)v1 withError:(id *)error
{
  v1Copy = v1;
  v32 = 0;
  v7 = [self _numberFromPlistRepresentation:v1Copy key:@"version" sub:0 index:-1 withError:&v32];
  v8 = v32;
  v9 = v8;
  obj = v7;
  if (v7)
  {
    errorCopy = error;
    v31 = v8;
    v10 = [self _arrayFromPlistRepresentation:v1Copy key:@"commandLineArgs" sub:0 index:-1 withError:&v31];
    v11 = v31;

    if (v10)
    {
      objc_opt_class();
      if (sub_100010AB8(v10))
      {
        v30 = v11;
        v12 = [self _arrayFromPlistRepresentation:v1Copy key:@"targets" sub:0 index:-1 withError:&v30];
        v9 = v30;

        if (v12)
        {
          v29 = v9;
          v13 = [self _targetsFromPlistRepresentationV1:v12 withError:&v29];
          v11 = v29;

          if (v13)
          {
            v28 = v11;
            v14 = [self _stringFromPlistRepresentation:v1Copy key:@"toolVersion" sub:0 index:-1 withError:&v28];
            v9 = v28;

            if (!v14)
            {
              v22 = 0;
              v15 = 0;
              goto LABEL_21;
            }

            v22 = v14;
            v27 = v9;
            v15 = [self _stringFromPlistRepresentation:v1Copy key:@"toolArch" sub:0 index:-1 withError:&v27];
            v11 = v27;

            if (v15)
            {
              v26 = v11;
              v14 = [self _stringFromPlistRepresentation:v1Copy key:@"toolBuiltWithSDKVersion" sub:0 index:-1 withError:&v26];
              v9 = v26;

              if (v14)
              {
                v25 = v9;
                v7 = [self _stringFromPlistRepresentation:v1Copy key:@"toolBuiltWithXcodeVersion" sub:0 index:-1 withError:&v25];
                v11 = v25;

                if (v7)
                {
                  v24 = v11;
                  v16 = [self _stringFromPlistRepresentation:v1Copy key:@"hostVersion" sub:0 index:-1 withError:&v24];
                  v9 = v24;

                  if (v16)
                  {
                    error = [[MIIPAPatcherManifest alloc] initWithCommandLineArgs:v10 targets:v13 toolVersion:v22 toolArch:v15 toolBuiltWithSDKVersion:v14 toolBuiltWithXcodeVersion:v7 hostVersion:v16];
                    objc_storeStrong(error + 2, obj);
                    goto LABEL_24;
                  }

LABEL_22:
                  error = errorCopy;
                  if (errorCopy)
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
        v17 = [v1Copy objectForKeyedSubscript:@"commandLineArgs"];
        v9 = [self _manifestErrorForKey:@"commandLineArgs" sub:0 index:-1 expected:@"NSArray<NSString>" value:v17];

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
  if (!error)
  {
    goto LABEL_13;
  }

LABEL_23:
  v18 = v9;
  v16 = 0;
  errorCopy2 = error;
  error = 0;
  *errorCopy2 = v9;
LABEL_24:

  return error;
}

+ (id)_targetsFromPlistRepresentationV1:(id)v1 withError:(id *)error
{
  v1Copy = v1;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v1Copy, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v1Copy;
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
  selfCopy = self;
  errorCopy = error;
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
        v26 = [self _manifestErrorForKey:@"targets" sub:@"target " index:v12 expected:@"NSDictionary" value:v11];

        v20 = 0;
        v8 = v26;
LABEL_39:
        error = errorCopy;
        v7 = v31;
        if (!errorCopy)
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
      v13 = [self _stringFromPlistRepresentation:v11 key:kCFBundleVersionKey sub:@"target " index:v38 withError:&v45];
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
      v15 = [self _stringFromPlistRepresentation:v11 key:v32 sub:@"target " index:v38 withError:&v44];
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
      v13 = [self _stringFromPlistRepresentation:v11 key:kCFBundleIdentifierKey sub:@"target " index:v38 withError:&v43];
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
      v17 = [self _arrayFromPlistRepresentation:v11 key:@"UISupportedDevices" sub:0 index:v38 withError:&v42];
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
        v24 = [self _manifestErrorForKey:@"UISupportedDevices" sub:@"target " index:v38 expected:@"NSArray<NSString>" value:v23];

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
      v19 = [self _stringFromPlistRepresentation:v11 key:@"infoPlistHash" sub:@"target " index:v38 withError:&v41];
      v8 = v41;

      if (!v19)
      {
        v18 = 0;
        goto LABEL_18;
      }

      v40 = v8;
      v21 = [self _stringFromPlistRepresentation:v11 key:@"infoPlistHashAlgorithm" sub:@"target " index:v38 withError:&v40];
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
      self = selfCopy;
    }

    while (v36 != v9);
    v25 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    error = errorCopy;
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
  if (error)
  {
LABEL_40:
    if (!v20)
    {
      v27 = v8;
      *error = v8;
    }
  }

LABEL_42:

  return v20;
}

@end