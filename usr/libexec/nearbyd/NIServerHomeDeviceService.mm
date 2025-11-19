@interface NIServerHomeDeviceService
+ (id)sharedInstance;
- (id)_initInternal;
- (id)_internalPrintableState;
- (id)printableState;
- (void)_processCommonConfiguration;
- (void)addServiceClient:(id)a3 identifier:(id)a4 configuration:(id)a5;
- (void)removeServiceClientWithIdentifier:(id)a3;
@end

@implementation NIServerHomeDeviceService

+ (id)sharedInstance
{
  if (qword_1009F2198 != -1)
  {
    sub_1004AE7F8();
  }

  v3 = qword_1009F2190;

  return v3;
}

- (id)_initInternal
{
  v15.receiver = self;
  v15.super_class = NIServerHomeDeviceService;
  v2 = [(NIServerHomeDeviceService *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.nearbyd.home-device-service", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = +[NSMapTable strongToWeakObjectsMapTable];
    clients = v2->_clients;
    v2->_clients = v6;

    v8 = objc_opt_new();
    configurations = v2->_configurations;
    v2->_configurations = v8;

    if (+[NIPlatformInfo isInternalBuild](NIPlatformInfo, "isInternalBuild") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 BOOLForKey:@"EnableStateDump"], v10, v11))
    {
      v12 = v2->_queue;
      v14 = v2;
      os_state_add_handler();
    }
  }

  return v2;
}

- (void)addServiceClient:(id)a3 identifier:(id)a4 configuration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    queue = self->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100231D10;
    v12[3] = &unk_10099C2A0;
    v12[4] = self;
    v13 = v9;
    v14 = v10;
    v15 = v8;
    dispatch_sync(queue, v12);
  }
}

- (void)removeServiceClientWithIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100231F48;
  v7[3] = &unk_10098A2E8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)printableState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100232124;
  v10 = sub_100232134;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10023213C;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_internalPrintableState
{
  v3 = objc_opt_new();
  dispatch_assert_queue_V2(self->_queue);
  v4 = objc_autoreleasePoolPush();
  v5 = [NSString stringWithFormat:@"%d clients", [(NSMapTable *)self->_clients count]];
  [v3 addObject:v5];

  objc_autoreleasePoolPop(v4);

  return v3;
}

- (void)_processCommonConfiguration
{
  dispatch_assert_queue_V2(self->_queue);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 3;
  configurations = self->_configurations;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100232394;
  v7[3] = &unk_10099FAD8;
  v7[4] = &v8;
  [(NSMutableDictionary *)configurations enumerateKeysAndObjectsUsingBlock:v7];
  v4 = [(NSMapTable *)self->_clients objectEnumerator];
  v5 = 0;
  while (1)
  {
    v6 = [v4 nextObject];

    if (!v6)
    {
      break;
    }

    v5 = v6;
    if (objc_opt_respondsToSelector())
    {
      v5 = v6;
      [v6 didUpdateMinimumPreferredUpdateRate:v9[3]];
    }
  }

  _Block_object_dispose(&v8, 8);
}

@end