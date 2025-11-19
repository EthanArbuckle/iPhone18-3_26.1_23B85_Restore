@interface NEAgent
- (NEAgent)initWithPluginType:(id)a3 pluginVersion:(int64_t)a4 pluginClass:(int64_t)a5 pluginInfo:(id)a6 userID:(id)a7;
- (void)startWithCompletionHandler:(id)a3;
@end

@implementation NEAgent

- (void)startWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000930E4;
  v8[3] = &unk_1000EB310;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(Property, v8);
}

- (NEAgent)initWithPluginType:(id)a3 pluginVersion:(int64_t)a4 pluginClass:(int64_t)a5 pluginInfo:(id)a6 userID:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v28.receiver = self;
  v28.super_class = NEAgent;
  v16 = [(NEAgent *)&v28 init];
  if (v16)
  {
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("NEAgent queue", v17);
    queue = v16->_queue;
    v16->_queue = v18;

    objc_storeStrong(&v16->_uid, a7);
    objc_storeStrong(&v16->_pluginType, a3);
    v16->_pluginClass = a5;
    v20 = [v14 copy];
    pluginInfo = v16->_pluginInfo;
    v16->_pluginInfo = v20;

    objc_opt_self();
    if ((a5 - 2) > 8)
    {
      v22 = @"legacy";
    }

    else
    {
      v22 = *(&off_1000EAB08 + a5 - 2);
    }

    v23 = v22;
    v24 = [NSString stringWithFormat:@"%@[%@][inactive]", v13, v23];
    description = v16->_description;
    v16->_description = v24;

    v16->_pid = 0;
    v16->_pluginVersion = a4;
    v26 = v16;
  }

  return v16;
}

@end