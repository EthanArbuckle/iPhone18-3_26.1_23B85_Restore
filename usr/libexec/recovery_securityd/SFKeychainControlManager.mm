@interface SFKeychainControlManager
+ (id)sharedManager;
- (BOOL)deleteCorruptedItemsWithError:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_init;
- (id)findCorruptedItemsWithError:(id *)error;
- (id)xpcControlEndpoint;
- (void)rpcDeleteCorruptedItemsWithReply:(id)reply;
- (void)rpcFindCorruptedItemsWithReply:(id)reply;
@end

@implementation SFKeychainControlManager

+ (id)sharedManager
{
  if (qword_1000736D8 != -1)
  {
    sub_10003E17C();
  }

  v3 = qword_1000736D0;

  return v3;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = SFKeychainControlManager;
  v2 = [(SFKeychainControlManager *)&v6 init];
  if (v2)
  {
    v3 = +[NSXPCListener anonymousListener];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (id)xpcControlEndpoint
{
  endpoint = [(NSXPCListener *)self->_listener endpoint];
  _endpoint = [endpoint _endpoint];

  return _endpoint;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:off_100072F38];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = +[SecXPCHelper safeErrorClasses];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SFKeychainControl];
    v9 = 1;
    [v8 setClasses:v7 forSelector:"rpcFindCorruptedItemsWithReply:" argumentIndex:1 ofReply:1];
    [v8 setClasses:v7 forSelector:"rpcDeleteCorruptedItemsWithReply:" argumentIndex:1 ofReply:1];
    [connectionCopy setExportedInterface:v8];
    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
  }

  else
  {
    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109378;
      v12[1] = [connectionCopy processIdentifier];
      v13 = 2112;
      v14 = off_100072F38;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SFKeychainControl: Client pid (%d) doesn't have entitlement: %@", v12, 0x12u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)findCorruptedItemsWithError:(id *)error
{
  v21 = objc_alloc_init(NSMutableArray);
  v25 = objc_alloc_init(NSMutableArray);
  result = 0;
  v44[0] = kSecClass;
  v44[1] = kSecReturnPersistentRef;
  v45[0] = kSecClassGenericPassword;
  v45[1] = &__kCFBooleanTrue;
  v44[2] = kSecUseDataProtectionKeychain;
  v44[3] = kSecMatchLimit;
  v45[2] = &__kCFBooleanTrue;
  v45[3] = kSecMatchLimitAll;
  v23 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:4];
  v3 = SecItemCopyMatching(v23, &result);
  v34 = 0;
  if (v3 != -25300)
  {
    SecError(v3, &v34, @"generic password query failed");
    v4 = v34;
    if (v34)
    {
      [v25 addObject:v34];
    }
  }

  v33 = 0;
  v42[0] = kSecClass;
  v42[1] = kSecReturnPersistentRef;
  v43[0] = kSecClassInternetPassword;
  v43[1] = &__kCFBooleanTrue;
  v42[2] = kSecUseDataProtectionKeychain;
  v42[3] = kSecMatchLimit;
  v43[2] = &__kCFBooleanTrue;
  v43[3] = kSecMatchLimitAll;
  v22 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:4];
  v5 = SecItemCopyMatching(v22, &v33);
  v32 = 0;
  if (v5 != -25300)
  {
    SecError(v5, &v32, @"internet password query failed");
    v6 = v32;
    if (v32)
    {
      [v25 addObject:v32];
    }
  }

  v31 = 0;
  v40[0] = kSecClass;
  v40[1] = kSecReturnPersistentRef;
  v41[0] = kSecClassKey;
  v41[1] = &__kCFBooleanTrue;
  v40[2] = kSecUseDataProtectionKeychain;
  v40[3] = kSecMatchLimit;
  v41[2] = &__kCFBooleanTrue;
  v41[3] = kSecMatchLimitAll;
  v20 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:4];
  SecItemCopyMatching(v20, &v31);
  v30 = 0;
  v38[0] = kSecClass;
  v38[1] = kSecReturnPersistentRef;
  v39[0] = kSecClassCertificate;
  v39[1] = &__kCFBooleanTrue;
  v38[2] = kSecUseDataProtectionKeychain;
  v38[3] = kSecMatchLimit;
  v39[2] = &__kCFBooleanTrue;
  v39[3] = kSecMatchLimitAll;
  v7 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
  v8 = SecItemCopyMatching(v7, &v30);
  v9 = v8;
  v29 = 0;
  if (v8 != -25300)
  {
    SecError(v8, &v29, @"certificate query failed");
    v10 = v29;
    if (v29)
    {
      [v25 addObject:v29];
    }
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100008200;
  v26[3] = &unk_1000597D8;
  v28 = v9;
  v11 = v21;
  v27 = v11;
  v12 = objc_retainBlock(v26);
  (v12[2])(v12, result, kSecClassGenericPassword);
  (v12[2])(v12, v33, kSecClassInternetPassword);
  (v12[2])(v12, v31, kSecClassKey);
  (v12[2])(v12, v30, kSecClassCertificate);
  v13 = [v25 count];
  if (error && v13)
  {
    v36[0] = NSLocalizedDescriptionKey;
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"encountered %d errors searching for corrupted items", [v25 count]);
    v37[0] = v14;
    v36[1] = NSUnderlyingErrorKey;
    firstObject = [v25 firstObject];
    v37[1] = firstObject;
    v36[2] = @"searchingErrorCount";
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v25 count]);
    v37[2] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
    *error = [NSError errorWithDomain:@"com.apple.security.keychainhealth" code:1 userInfo:v17];
  }

  v18 = v11;

  return v18;
}

- (BOOL)deleteCorruptedItemsWithError:(id *)error
{
  v25 = 0;
  v4 = [(SFKeychainControlManager *)self findCorruptedItemsWithError:&v25];
  v5 = v25;
  v6 = v5 == 0;
  v7 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = SecItemDelete(*(*(&v21 + 1) + 8 * i));
        if (v13)
        {
          v20 = 0;
          SecError(v13, &v20, @"failed to delete corrupted item");
          v14 = v20;
          [v7 addObject:v20];

          v6 = 0;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v10);
  }

  if (error && (v5 || [v7 count]))
  {
    v26 = NSLocalizedDescriptionKey;
    userInfo = [v5 userInfo];
    v16 = [userInfo objectForKeyedSubscript:@"searchingErrorCount"];
    v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"encountered %@ errors searching for corrupted items and %d errors attempting to delete corrupted items", v16, [v7 count]);
    v27 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *error = [NSError errorWithDomain:@"com.apple.security.keychainhealth" code:2 userInfo:v18];
  }

  return v6;
}

- (void)rpcFindCorruptedItemsWithReply:(id)reply
{
  v7 = 0;
  replyCopy = reply;
  v5 = [(SFKeychainControlManager *)self findCorruptedItemsWithError:&v7];
  v6 = v7;
  replyCopy[2](replyCopy, v5, v6);
}

- (void)rpcDeleteCorruptedItemsWithReply:(id)reply
{
  v7 = 0;
  replyCopy = reply;
  v5 = [(SFKeychainControlManager *)self deleteCorruptedItemsWithError:&v7];
  v6 = v7;
  replyCopy[2](replyCopy, v5, v6);
}

@end