@interface AUHelperInstance
+ (AUHelperInstance)sharedInstance;
+ (id)xpcConnectionToHelper;
- (AUHelperInstance)init;
- (AUHelperServiceProtocol)remoteObject;
@end

@implementation AUHelperInstance

- (AUHelperInstance)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AUHelperInstance;
  v8 = [(AUHelperInstance *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v2 = +[AUHelperInstance xpcConnectionToHelper];
    xpcConnection = v8->_xpcConnection;
    v8->_xpcConnection = v2;
  }

  v5 = v8;
  objc_storeStrong(&v8, 0);
  return v5;
}

+ (AUHelperInstance)sharedInstance
{
  v11 = a1;
  v10 = a2;
  obj = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = __34__AUHelperInstance_sharedInstance__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  v9 = a1;
  v13 = &sharedInstance_onceToken;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance_DefaultInstance;

  return v2;
}

void __34__AUHelperInstance_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = [objc_allocWithZone(*(a1 + 32)) init];
  v2 = sharedInstance_DefaultInstance;
  sharedInstance_DefaultInstance = v1;
}

- (AUHelperServiceProtocol)remoteObject
{
  v5 = self;
  v4[1] = a2;
  if (self->_xpcConnection)
  {
    v4[0] = [(NSXPCConnection *)v5->_xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global];
    v6 = v4[0];
    objc_storeStrong(v4, 0);
  }

  else
  {
    v6 = 0;
  }

  v2 = v6;

  return v2;
}

void __32__AUHelperInstance_remoteObject__block_invoke(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = &_os_log_default;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_64(v5, "[AUHelperInstance remoteObject]_block_invoke", location[0]);
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "%s: Failed to get remote object: %@", v5, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

+ (id)xpcConnectionToHelper
{
  v24 = "+[AUHelperInstance xpcConnectionToHelper]";
  v30[2] = a1;
  v30[1] = a2;
  v30[0] = 0;
  v29 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.accessoryupdater.launchauhelper" options:4096];
  if (v29)
  {
    v20 = &v25;
    v25 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AUHelperServiceProtocol];
    [v29 setRemoteObjectInterface:v25];
    v14 = NSSet;
    v13 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    obj = 0;
    v2 = [NSSet setWithObjects:v13, v8, v9, v10, v11, v12, objc_opt_class(), 0];
    v3 = v30[0];
    v30[0] = v2;

    v15 = [v29 remoteObjectInterface];
    v16 = 0;
    v18 = 1;
    [v15 setClasses:v30[0] forSelector:"userPreferenceSetObject:forSuite:withKey:" argumentIndex:? ofReply:?];

    v17 = [v29 remoteObjectInterface];
    [v17 setClasses:v30[0] forSelector:"userPreferenceObjectForSuite:withKey:withReply:" argumentIndex:v16 ofReply:v18 & 1];

    [v29 resume];
    v31 = v29;
    v26 = v18;
    objc_storeStrong(v20, obj);
  }

  else
  {
    location = &_os_log_default;
    v27 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      v21 = location;
      v22 = v27;
      v23 = v32;
      __os_log_helper_16_2_1_8_32(v32, v24);
      _os_log_error_impl(&_mh_execute_header, location, v27, "%s: Failed to get xpc connection", v32, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v31 = 0;
    v26 = 1;
  }

  v6 = 0;
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v30, v6);
  v7 = v31;
  v4 = v31;

  return v4;
}

@end