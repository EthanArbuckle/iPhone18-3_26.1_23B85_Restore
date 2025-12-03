@interface MSDFileDownloadCredentials
+ (MSDFileDownloadCredentials)sharedInstance;
- (BOOL)isCachingHubAvailable;
- (BOOL)isExpired:(id)expired;
- (BOOL)isValidForOriginServer:(id)server;
- (BOOL)loadFromFile;
- (BOOL)saveInfoToFile:(id)file;
- (BOOL)updateWithResponseFromGetFileDownloadCredentials:(id)credentials;
- (BOOL)updateWithResponseFromGetManifestInfo:(id)info;
- (NSDictionary)manifestInfo;
- (id)localCredentialForOriginServer:(id)server;
- (id)remoteCredentialForOriginServer:(id)server;
@end

@implementation MSDFileDownloadCredentials

+ (MSDFileDownloadCredentials)sharedInstance
{
  if (qword_1001A59B0 != -1)
  {
    sub_1000E5AA8();
  }

  v3 = qword_1001A59A8;

  return v3;
}

- (BOOL)updateWithResponseFromGetManifestInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    v6 = [infoCopy objectForKey:@"FileDownloadCredentials"];
    [(MSDFileDownloadCredentials *)self setCredentials:v6];

    credentials = [(MSDFileDownloadCredentials *)self credentials];

    if (!credentials)
    {
      v8 = +[NSDictionary dictionary];
      [(MSDFileDownloadCredentials *)self setCredentials:v8];
    }

    v9 = [v5 mutableCopy];
    [v9 removeObjectForKey:@"FileDownloadCredentials"];
    v10 = [v9 mutableCopy];
    [(MSDFileDownloadCredentials *)self setManifestInfo:v10];

    credentials2 = [(MSDFileDownloadCredentials *)self credentials];
    [v9 setObject:credentials2 forKey:@"FileDownloadCredentials"];

    v12 = [(MSDFileDownloadCredentials *)self saveInfoToFile:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)updateWithResponseFromGetFileDownloadCredentials:(id)credentials
{
  credentialsCopy = credentials;
  manifestInfo = [(MSDFileDownloadCredentials *)self manifestInfo];
  v6 = [manifestInfo mutableCopy];

  [(MSDFileDownloadCredentials *)self setCredentials:credentialsCopy];
  credentials = [(MSDFileDownloadCredentials *)self credentials];

  if (!credentials)
  {
    v8 = +[NSDictionary dictionary];
    [(MSDFileDownloadCredentials *)self setCredentials:v8];
  }

  credentials2 = [(MSDFileDownloadCredentials *)self credentials];
  [v6 setObject:credentials2 forKey:@"FileDownloadCredentials"];

  v10 = [(MSDFileDownloadCredentials *)self saveInfoToFile:v6];
  return v10;
}

- (id)localCredentialForOriginServer:(id)server
{
  serverCopy = server;
  if (serverCopy)
  {
    v5 = serverCopy;
  }

  else
  {
    v5 = @"default";
  }

  credentials = [(MSDFileDownloadCredentials *)self credentials];
  v7 = [credentials objectForKey:@"local"];

  if (v7)
  {
    v8 = [v7 objectForKey:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)remoteCredentialForOriginServer:(id)server
{
  serverCopy = server;
  if (serverCopy)
  {
    v5 = serverCopy;
  }

  else
  {
    v5 = @"default";
  }

  credentials = [(MSDFileDownloadCredentials *)self credentials];
  v7 = [credentials objectForKey:@"remote"];

  if (v7)
  {
    v8 = [v7 objectForKey:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isValidForOriginServer:(id)server
{
  serverCopy = server;
  v5 = [(MSDFileDownloadCredentials *)self localCredentialForOriginServer:serverCopy];
  v6 = [(MSDFileDownloadCredentials *)self remoteCredentialForOriginServer:serverCopy];

  if (v5 | v6 && ![(MSDFileDownloadCredentials *)self isExpired:v5])
  {
    v7 = ![(MSDFileDownloadCredentials *)self isExpired:v6];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isCachingHubAvailable
{
  credentials = [(MSDFileDownloadCredentials *)self credentials];
  v3 = [credentials objectForKey:@"local"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isExpired:(id)expired
{
  expiredCopy = expired;
  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  if (expiredCopy)
  {
    v7 = [expiredCopy objectForKey:@"Expires"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [v7 longLongValue] < v6 + 30;
    }

    else
    {
      sub_1000E5ABC();
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)loadFromFile
{
  v3 = +[MSDTargetDevice sharedInstance];
  manifestAndFileDownloadInfoPath = [v3 manifestAndFileDownloadInfoPath];
  v5 = [NSURL fileURLWithPath:manifestAndFileDownloadInfoPath];

  v11 = 0;
  v6 = [NSDictionary dictionaryWithContentsOfURL:v5 error:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = [NSMutableDictionary dictionaryWithDictionary:v6];
    v9 = [v8 objectForKey:@"FileDownloadCredentials"];
    [(MSDFileDownloadCredentials *)self setCredentials:v9];

    [v8 removeObjectForKey:@"FileDownloadCredentials"];
    [(MSDFileDownloadCredentials *)self setManifestInfo:v8];
  }

  else
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5B24(v5, v7);
    }
  }

  return v6 != 0;
}

- (BOOL)saveInfoToFile:(id)file
{
  fileCopy = file;
  v4 = +[NSFileManager defaultManager];
  v5 = +[MSDTargetDevice sharedInstance];
  manifestAndFileDownloadInfoPath = [v5 manifestAndFileDownloadInfoPath];

  stringByDeletingLastPathComponent = [manifestAndFileDownloadInfoPath stringByDeletingLastPathComponent];
  if ([v4 fileExistsAtPath:stringByDeletingLastPathComponent])
  {
    v8 = 0;
  }

  else
  {
    v17 = 0;
    v9 = [v4 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v17];
    v8 = v17;
    if ((v9 & 1) == 0)
    {
      v15 = sub_100063A54();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5BD4(stringByDeletingLastPathComponent, v8);
      }

      v11 = 0;
      goto LABEL_12;
    }
  }

  v10 = v8;
  v11 = [NSURL fileURLWithPath:manifestAndFileDownloadInfoPath];
  v16 = v8;
  v12 = [fileCopy writeToURL:v11 error:&v16];
  v8 = v16;

  if ((v12 & 1) == 0)
  {
    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5C88(v11, v8);
    }

LABEL_12:

    v13 = 0;
    goto LABEL_6;
  }

  v13 = 1;
LABEL_6:

  return v13;
}

- (NSDictionary)manifestInfo
{
  manifestInfo = self->_manifestInfo;
  if (manifestInfo)
  {
    goto LABEL_4;
  }

  if ([(MSDFileDownloadCredentials *)self loadFromFile])
  {
    manifestInfo = self->_manifestInfo;
LABEL_4:
    v4 = manifestInfo;
    goto LABEL_5;
  }

  v4 = 0;
LABEL_5:

  return v4;
}

@end