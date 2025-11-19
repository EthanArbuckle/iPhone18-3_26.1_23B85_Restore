@interface MSDMacAppPkg
+ (BOOL)isMacApp:(id)a3;
+ (id)codeSignaturePath:(id)a3;
@end

@implementation MSDMacAppPkg

+ (BOOL)isMacApp:(id)a3
{
  v3 = a3;
  v23 = 0;
  v4 = [NSBundle bundleWithPath:v3];
  v5 = v4;
  if (!v4)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDA6C();
    }

    goto LABEL_19;
  }

  v6 = [v4 infoDictionary];

  if (!v6)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD9EC();
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  v7 = [v5 infoDictionary];
  v8 = [v7 objectForKey:@"CFBundleSupportedPlatforms"];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            if ([*(*(&v19 + 1) + 8 * i) isEqualToString:{@"MacOSX", v19}])
            {

              v17 = 1;
              v8 = v9;
              goto LABEL_20;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v14 = +[NSFileManager defaultManager];
  v15 = [v3 stringByAppendingPathComponent:@"Contents/MacOS"];
  v16 = [v14 fileExistsAtPath:v15 isDirectory:&v23];
  v17 = v16 & v23;

LABEL_20:
  return v17;
}

+ (id)codeSignaturePath:(id)a3
{
  v3 = [a3 stringByAppendingPathComponent:@"Contents"];
  v4 = [v3 stringByAppendingPathComponent:@"_CodeSignature"];

  return v4;
}

@end