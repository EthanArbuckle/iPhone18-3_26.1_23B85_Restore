@interface MSDiOSApp
+ (id)appWithPath:(id)path;
- (BOOL)isAlmondApp;
- (MSDiOSApp)initWithPath:(id)path;
- (id)codeSignaturePathForAlmondApp;
- (id)getCodeResourcesURL;
- (id)getExcutableURL;
- (id)serachForFileWithSuffix:(id)suffix inFolder:(id)folder;
- (id)uniqueIdentifier;
- (id)versionInfo;
- (void)dealloc;
@end

@implementation MSDiOSApp

+ (id)appWithPath:(id)path
{
  pathCopy = path;
  v4 = [[MSDiOSApp alloc] initWithPath:pathCopy];

  return v4;
}

- (MSDiOSApp)initWithPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = MSDiOSApp;
  v5 = [(MSDiOSApp *)&v11 init];
  if (!v5)
  {
    infoDictionary = 0;
    goto LABEL_8;
  }

  if ([pathCopy rangeOfString:@".app"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E435C();
    }
  }

  else
  {
    v6 = [NSBundle bundleWithPath:pathCopy];
    if (v6)
    {
      v7 = v6;
      infoDictionary = [v6 infoDictionary];

      if (infoDictionary)
      {
        [(MSDiOSApp *)v5 setPath:pathCopy];
        infoDictionary2 = [v7 infoDictionary];
        [(MSDiOSApp *)v5 setInfo:infoDictionary2];

        infoDictionary = v5;
      }

      else
      {
        sub_1000E4258();
      }

      goto LABEL_6;
    }

    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000E42F0();
    }
  }

  infoDictionary = 0;
LABEL_6:

LABEL_8:
  return infoDictionary;
}

- (void)dealloc
{
  [(MSDiOSApp *)self setPath:0];
  [(MSDiOSApp *)self setInfo:0];
  v3.receiver = self;
  v3.super_class = MSDiOSApp;
  [(MSDiOSApp *)&v3 dealloc];
}

- (id)uniqueIdentifier
{
  v3 = [(MSDiOSApp *)self getExcutableURL:0];
  v4 = sub_100063A54();
  v5 = v4;
  if (!v3)
  {
    sub_1000E4640(v4, self);
    getCodeResourcesURL = 0;
LABEL_22:
    v14 = 0;
    v17 = 0;
    hexStringRepresentation = 0;
    goto LABEL_16;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    path = [v3 path];
    *buf = 136315394;
    v26 = "[MSDiOSApp uniqueIdentifier]";
    v27 = 2114;
    v28 = path;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - executableFileURL:  %{public}@", buf, 0x16u);
  }

  getCodeResourcesURL = [(MSDiOSApp *)self getCodeResourcesURL];
  v8 = sub_100063A54();
  v9 = v8;
  if (!getCodeResourcesURL)
  {
    sub_1000E4588(v8, self);
    goto LABEL_22;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    path2 = [getCodeResourcesURL path];
    *buf = 136315394;
    v26 = "[MSDiOSApp uniqueIdentifier]";
    v27 = 2114;
    v28 = path2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - codeResourcesURL:  %{public}@", buf, 0x16u);
  }

  CC_SHA1_Init(&v23);
  path3 = [v3 path];
  v12 = [NSInputStream inputStreamWithFileAtPath:path3];

  if (!v12)
  {
    sub_1000E44E0(v3);
    goto LABEL_22;
  }

  v13 = +[NSRunLoop currentRunLoop];
  [v12 scheduleInRunLoop:v13 forMode:NSDefaultRunLoopMode];

  [v12 open];
  v14 = malloc_type_calloc(0x40000uLL, 1uLL, 0x2F5A33F3uLL);
  v15 = [v12 read:v14 maxLength:0x40000];
  if (v15 >= 1)
  {
    do
    {
      CC_SHA1_Update(&v23, v14, v15);
      v15 = [v12 read:v14 maxLength:0x40000];
    }

    while (v15 > 0);
  }

  if (v15)
  {
    v22 = sub_100063A54();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E43C8(v3);
    }
  }

  else
  {
    [v12 close];
    path4 = [getCodeResourcesURL path];
    v17 = [NSInputStream inputStreamWithFileAtPath:path4];

    if (v17)
    {
      v18 = +[NSRunLoop currentRunLoop];
      [v17 scheduleInRunLoop:v18 forMode:NSDefaultRunLoopMode];

      [v17 open];
      v19 = [v17 read:v14 maxLength:0x40000];
      if (v19 >= 1)
      {
        do
        {
          CC_SHA1_Update(&v23, v14, v19);
          v19 = [v17 read:v14 maxLength:0x40000];
        }

        while (v19 > 0);
      }

      if (!v19)
      {
        [v17 close];
        free(v14);
        CC_SHA1_Final(md, &v23);
        v14 = [NSData dataWithBytes:md length:20];
        hexStringRepresentation = [v14 hexStringRepresentation];
        goto LABEL_16;
      }

      v22 = sub_100063A54();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E43C8(getCodeResourcesURL);
      }

      v12 = v17;
    }

    else
    {
      v22 = sub_100063A54();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000E4454(getCodeResourcesURL);
      }

      v12 = 0;
    }
  }

  if (v14)
  {
    free(v14);
    v14 = 0;
  }

  hexStringRepresentation = 0;
  v17 = v12;
LABEL_16:

  return hexStringRepresentation;
}

- (id)versionInfo
{
  info = [(MSDiOSApp *)self info];
  v4 = @"CFBundleShortVersionString";
  v5 = [info objectForKey:@"CFBundleShortVersionString"];

  if (!v5)
  {
    v4 = kCFBundleVersionKey;
    info2 = [(MSDiOSApp *)self info];
    v5 = [info2 objectForKey:v4];

    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      sub_1000E4794();
      goto LABEL_11;
    }

LABEL_6:
    v7 = [NSDictionary dictionaryWithObjectsAndKeys:v5, v4, 0];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  sub_1000E46F8();
LABEL_11:
  v7 = 0;
LABEL_7:

  return v7;
}

- (id)getExcutableURL
{
  path = [(MSDiOSApp *)self path];
  v4 = [NSBundle bundleWithPath:path];

  if (v4)
  {
    executableURL = [v4 executableURL];
    if (executableURL)
    {
      goto LABEL_3;
    }

    sub_1000E482C(self, &v7);
  }

  else
  {
    sub_1000E48E8(self, &v7);
  }

  executableURL = 0;
LABEL_3:

  return executableURL;
}

- (id)getCodeResourcesURL
{
  path = [(MSDiOSApp *)self path];
  v4 = [MSDMacAppPkg isMacApp:path];

  if (v4)
  {
    path2 = [(MSDiOSApp *)self path];
    v6 = [MSDMacAppPkg codeSignaturePath:path2];
  }

  else
  {
    if ([(MSDiOSApp *)self isAlmondApp])
    {
      codeSignaturePathForAlmondApp = [(MSDiOSApp *)self codeSignaturePathForAlmondApp];
      goto LABEL_7;
    }

    path2 = [(MSDiOSApp *)self path];
    v6 = [path2 stringByAppendingPathComponent:@"_CodeSignature"];
  }

  codeSignaturePathForAlmondApp = v6;

LABEL_7:
  if (codeSignaturePathForAlmondApp)
  {
    path3 = [codeSignaturePathForAlmondApp stringByAppendingPathComponent:@"CodeResources"];
    v9 = [NSURL fileURLWithPath:path3];
  }

  else
  {
    path3 = [(MSDiOSApp *)self path];
    NSLog(@"Error - Failed to get CodeSignature path for app:  %@", path3);
    v9 = 0;
  }

  return v9;
}

- (BOOL)isAlmondApp
{
  v7 = 0;
  path = [(MSDiOSApp *)self path];
  v3 = [path stringByAppendingPathComponent:@"Wrapper"];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v7];

  LOBYTE(v4) = v7;
  return v5 & v4;
}

- (id)codeSignaturePathForAlmondApp
{
  path = [(MSDiOSApp *)self path];
  v4 = [path stringByAppendingPathComponent:@"Wrapper"];

  v5 = [(MSDiOSApp *)self serachForFileWithSuffix:@".app" inFolder:v4];
  if (v5)
  {
    v6 = [NSString stringWithFormat:@"%@/%@/%@", v4, v5, @"_CodeSignature"];
  }

  else
  {
    sub_1000E49A4();
    v6 = 0;
  }

  return v6;
}

- (id)serachForFileWithSuffix:(id)suffix inFolder:(id)folder
{
  suffixCopy = suffix;
  folderCopy = folder;
  v7 = +[NSFileManager defaultManager];
  v23 = 0;
  v8 = [v7 contentsOfDirectoryAtPath:folderCopy error:&v23];
  v9 = v23;

  if (v8)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v20;
      while (2)
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v13 = *(*(&v19 + 1) + 8 * v15);

          if ([v13 hasSuffix:{suffixCopy, v19}])
          {
            v17 = v13;

            goto LABEL_14;
          }

          v15 = v15 + 1;
          v16 = v13;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    sub_1000E4A48(folderCopy, v9);
  }

  v17 = 0;
LABEL_14:

  return v17;
}

@end