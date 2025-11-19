@interface LPApplication
- (BOOL)hasLocationPushEntitlement;
- (BOOL)hasLocationPushServiceExtension;
- (LPApplication)initWithAppBundleIdentifier:(id)a3;
- (NSString)apsEnvironment;
- (id)serviceExtensionForBundleIdentifier:(id)a3;
- (void)_extensionQueue_deliverLocationPayloadToExtension:(id)a3;
- (void)addPendingTokenReply:(id)a3;
- (void)deliverLocationPayloadToExtension:(id)a3;
- (void)deliverToken:(id)a3;
@end

@implementation LPApplication

- (LPApplication)initWithAppBundleIdentifier:(id)a3
{
  v5 = a3;
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];
  if (v6)
  {
    v18.receiver = self;
    v18.super_class = LPApplication;
    v7 = [(LPApplication *)&v18 init];
    if (v7)
    {
      v8 = [v5 stringByAppendingString:@".extension-run"];
      v9 = dispatch_queue_create([v8 UTF8String], 0);
      extensionQueue = v7->_extensionQueue;
      v7->_extensionQueue = v9;

      v11 = [v5 stringByAppendingString:@".token-reply"];
      v12 = dispatch_queue_create([v11 UTF8String], 0);
      pendingReplyQueue = v7->_pendingReplyQueue;
      v7->_pendingReplyQueue = v12;

      v14 = +[NSMutableArray array];
      pendingReplies = v7->_pendingReplies;
      v7->_pendingReplies = v14;

      objc_storeStrong(&v7->_bundleIdentifier, a3);
    }

    self = v7;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)deliverToken:(id)a3
{
  v4 = a3;
  v5 = [(LPApplication *)self pendingReplyQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000011A0;
  v7[3] = &unk_10000C2F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)addPendingTokenReply:(id)a3
{
  v4 = a3;
  v5 = [(LPApplication *)self pendingReplyQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001370;
  v7[3] = &unk_10000C318;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)deliverLocationPayloadToExtension:(id)a3
{
  v4 = a3;
  v5 = [(LPApplication *)self extensionQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000148C;
  v7[3] = &unk_10000C2F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (NSString)apsEnvironment
{
  v3 = [LSApplicationRecord alloc];
  v4 = [(LPApplication *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

  v6 = [v5 entitlements];
  v7 = [v6 objectForKey:@"aps-environment" ofClass:objc_opt_class()];
  if (([v7 isEqualToString:APSEnvironmentProduction] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", APSEnvironmentDevelopment))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasLocationPushEntitlement
{
  v3 = [LSApplicationRecord alloc];
  v4 = [(LPApplication *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

  v6 = [v5 entitlements];
  v7 = [v6 objectForKey:@"com.apple.developer.location.push" ofClass:objc_opt_class()];
  v8 = [v7 BOOLValue];

  return v8;
}

- (BOOL)hasLocationPushServiceExtension
{
  v2 = self;
  v3 = [(LPApplication *)self bundleIdentifier];
  v4 = [(LPApplication *)v2 serviceExtensionForBundleIdentifier:v3];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (void)_extensionQueue_deliverLocationPayloadToExtension:(id)a3
{
  v4 = a3;
  v5 = [(LPApplication *)self bundleIdentifier];
  v6 = [(LPApplication *)self serviceExtensionForBundleIdentifier:v5];

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_100001968;
  v14[4] = sub_100001978;
  v15 = [v6 identifier];
  if (v6)
  {
    v7 = [(LPApplication *)self bundleIdentifier];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001980;
    v10[3] = &unk_10000C3E0;
    v10[4] = self;
    v13 = v14;
    v11 = v6;
    v12 = v4;
    [CLLocationManager _checkAndExerciseForPushClientWithBundleID:v7 completionHandler:v10];
  }

  else
  {
    if (qword_100010A78 != -1)
    {
      sub_1000050B8();
    }

    v8 = qword_100010A80;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(LPApplication *)self bundleIdentifier];
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Tried to deliver payload to %{public}@, but couldn't find a location push extension", buf, 0xCu);
    }
  }

  _Block_object_dispose(v14, 8);
}

- (id)serviceExtensionForBundleIdentifier:(id)a3
{
  v4 = [LSApplicationRecord alloc];
  v5 = [(LPApplication *)self bundleIdentifier];
  v6 = [v4 initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];

  if (v6)
  {
    v15[0] = @"com.apple.location.push.service";
    v14[0] = NSExtensionPointName;
    v14[1] = NSExtensionContainingAppName;
    v7 = [v6 URL];
    v8 = [v7 path];
    v15[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

    v13 = 0;
    v10 = [NSExtension extensionsWithMatchingAttributes:v9 error:&v13];
    v11 = [v10 firstObject];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end