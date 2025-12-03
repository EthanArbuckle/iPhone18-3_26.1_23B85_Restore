@interface LIFSClientConnector
+ (void)getLiveFSClientForProvider:(id)provider handler:(id)handler;
+ (void)getLiveFilesConnectionForProvider:(id)provider volume:(id)volume withHandler:(id)handler;
@end

@implementation LIFSClientConnector

+ (void)getLiveFSClientForProvider:(id)provider handler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  if ([providerCopy isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"])
  {
    v7 = @"machp://com.apple.filesystems.localLiveFiles";
LABEL_5:
    v8 = [LiveFSClient newConnectionForService:v7];
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:65 userInfo:0];
    }

    handlerCopy[2](handlerCopy, v8, v9);

    goto LABEL_12;
  }

  if ([providerCopy isEqualToString:@"com.apple.SMBClientProvider.FileProvider"])
  {
    v7 = @"machp://com.apple.filesystems.smbclientd";
    goto LABEL_5;
  }

  v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:65 userInfo:0];
  v10 = livefs_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    sub_100041198();
  }

  handlerCopy[2](handlerCopy, 0, v9);
LABEL_12:
}

+ (void)getLiveFilesConnectionForProvider:(id)provider volume:(id)volume withHandler:(id)handler
{
  providerCopy = provider;
  volumeCopy = volume;
  handlerCopy = handler;
  v27 = 0;
  v28[0] = &v27;
  v28[1] = 0x3032000000;
  v28[2] = sub_10003A7E8;
  v28[3] = sub_10003A7F8;
  v29 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10003A7E8;
  v25 = sub_10003A7F8;
  v26 = 0;
  v10 = objc_autoreleasePoolPush();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003A800;
  v20[3] = &unk_100061EB8;
  v20[4] = &v27;
  v20[5] = &v21;
  [LIFSClientConnector getLiveFSClientForProvider:providerCopy handler:v20];
  v11 = v22[5];
  if (v11 && (v12 = (v28[0] + 40), obj = *(v28[0] + 40), [v11 listenerForVolume:volumeCopy error:&obj], v13 = objc_claimAutoreleasedReturnValue(), objc_storeStrong(v12, obj), v13))
  {
    v14 = v22[5];
    v22[5] = 0;

    v15 = [[NSXPCConnection alloc] initWithListenerEndpoint:v13];
    if (!v15)
    {
      v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:65 userInfo:0];
      v17 = *(v28[0] + 40);
      *(v28[0] + 40) = v16;
    }

    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10004120C(v15, v28, v18);
    }

    handlerCopy[2](handlerCopy, v15, *(v28[0] + 40));
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, *(v28[0] + 40));
    v15 = 0;
    v13 = 0;
  }

  objc_autoreleasePoolPop(v10);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

@end