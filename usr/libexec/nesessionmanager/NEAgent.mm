@interface NEAgent
- (NEAgent)initWithPluginType:(id)type pluginVersion:(int64_t)version pluginClass:(int64_t)class pluginInfo:(id)info userID:(id)d;
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation NEAgent

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_sync(Property, v8);
}

- (NEAgent)initWithPluginType:(id)type pluginVersion:(int64_t)version pluginClass:(int64_t)class pluginInfo:(id)info userID:(id)d
{
  typeCopy = type;
  infoCopy = info;
  dCopy = d;
  v28.receiver = self;
  v28.super_class = NEAgent;
  v16 = [(NEAgent *)&v28 init];
  if (v16)
  {
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("NEAgent queue", v17);
    queue = v16->_queue;
    v16->_queue = v18;

    objc_storeStrong(&v16->_uid, d);
    objc_storeStrong(&v16->_pluginType, type);
    v16->_pluginClass = class;
    v20 = [infoCopy copy];
    pluginInfo = v16->_pluginInfo;
    v16->_pluginInfo = v20;

    objc_opt_self();
    if ((class - 2) > 8)
    {
      v22 = @"legacy";
    }

    else
    {
      v22 = *(&off_1000EAB08 + class - 2);
    }

    v23 = v22;
    v24 = [NSString stringWithFormat:@"%@[%@][inactive]", typeCopy, v23];
    description = v16->_description;
    v16->_description = v24;

    v16->_pid = 0;
    v16->_pluginVersion = version;
    v26 = v16;
  }

  return v16;
}

@end