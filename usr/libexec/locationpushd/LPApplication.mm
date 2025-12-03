@interface LPApplication
- (BOOL)hasLocationPushEntitlement;
- (BOOL)hasLocationPushServiceExtension;
- (LPApplication)initWithAppBundleIdentifier:(id)identifier;
- (NSString)apsEnvironment;
- (id)serviceExtensionForBundleIdentifier:(id)identifier;
- (void)_extensionQueue_deliverLocationPayloadToExtension:(id)extension;
- (void)addPendingTokenReply:(id)reply;
- (void)deliverLocationPayloadToExtension:(id)extension;
- (void)deliverToken:(id)token;
@end

@implementation LPApplication

- (LPApplication)initWithAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];
  if (v6)
  {
    v18.receiver = self;
    v18.super_class = LPApplication;
    v7 = [(LPApplication *)&v18 init];
    if (v7)
    {
      v8 = [identifierCopy stringByAppendingString:@".extension-run"];
      v9 = dispatch_queue_create([v8 UTF8String], 0);
      extensionQueue = v7->_extensionQueue;
      v7->_extensionQueue = v9;

      v11 = [identifierCopy stringByAppendingString:@".token-reply"];
      v12 = dispatch_queue_create([v11 UTF8String], 0);
      pendingReplyQueue = v7->_pendingReplyQueue;
      v7->_pendingReplyQueue = v12;

      v14 = +[NSMutableArray array];
      pendingReplies = v7->_pendingReplies;
      v7->_pendingReplies = v14;

      objc_storeStrong(&v7->_bundleIdentifier, identifier);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)deliverToken:(id)token
{
  tokenCopy = token;
  pendingReplyQueue = [(LPApplication *)self pendingReplyQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000011A0;
  v7[3] = &unk_10000C2F0;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  dispatch_sync(pendingReplyQueue, v7);
}

- (void)addPendingTokenReply:(id)reply
{
  replyCopy = reply;
  pendingReplyQueue = [(LPApplication *)self pendingReplyQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001370;
  v7[3] = &unk_10000C318;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_sync(pendingReplyQueue, v7);
}

- (void)deliverLocationPayloadToExtension:(id)extension
{
  extensionCopy = extension;
  extensionQueue = [(LPApplication *)self extensionQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000148C;
  v7[3] = &unk_10000C2F0;
  v7[4] = self;
  v8 = extensionCopy;
  v6 = extensionCopy;
  dispatch_async(extensionQueue, v7);
}

- (NSString)apsEnvironment
{
  v3 = [LSApplicationRecord alloc];
  bundleIdentifier = [(LPApplication *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  entitlements = [v5 entitlements];
  v7 = [entitlements objectForKey:@"aps-environment" ofClass:objc_opt_class()];
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
  bundleIdentifier = [(LPApplication *)self bundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  entitlements = [v5 entitlements];
  v7 = [entitlements objectForKey:@"com.apple.developer.location.push" ofClass:objc_opt_class()];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasLocationPushServiceExtension
{
  selfCopy = self;
  bundleIdentifier = [(LPApplication *)self bundleIdentifier];
  v4 = [(LPApplication *)selfCopy serviceExtensionForBundleIdentifier:bundleIdentifier];
  LOBYTE(selfCopy) = v4 != 0;

  return selfCopy;
}

- (void)_extensionQueue_deliverLocationPayloadToExtension:(id)extension
{
  extensionCopy = extension;
  bundleIdentifier = [(LPApplication *)self bundleIdentifier];
  v6 = [(LPApplication *)self serviceExtensionForBundleIdentifier:bundleIdentifier];

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_100001968;
  v14[4] = sub_100001978;
  identifier = [v6 identifier];
  if (v6)
  {
    bundleIdentifier2 = [(LPApplication *)self bundleIdentifier];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001980;
    v10[3] = &unk_10000C3E0;
    v10[4] = self;
    v13 = v14;
    v11 = v6;
    v12 = extensionCopy;
    [CLLocationManager _checkAndExerciseForPushClientWithBundleID:bundleIdentifier2 completionHandler:v10];
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
      bundleIdentifier3 = [(LPApplication *)self bundleIdentifier];
      *buf = 138543362;
      v17 = bundleIdentifier3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Tried to deliver payload to %{public}@, but couldn't find a location push extension", buf, 0xCu);
    }
  }

  _Block_object_dispose(v14, 8);
}

- (id)serviceExtensionForBundleIdentifier:(id)identifier
{
  v4 = [LSApplicationRecord alloc];
  bundleIdentifier = [(LPApplication *)self bundleIdentifier];
  v6 = [v4 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  if (v6)
  {
    v15[0] = @"com.apple.location.push.service";
    v14[0] = NSExtensionPointName;
    v14[1] = NSExtensionContainingAppName;
    v7 = [v6 URL];
    path = [v7 path];
    v15[1] = path;
    v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

    v13 = 0;
    v10 = [NSExtension extensionsWithMatchingAttributes:v9 error:&v13];
    firstObject = [v10 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end