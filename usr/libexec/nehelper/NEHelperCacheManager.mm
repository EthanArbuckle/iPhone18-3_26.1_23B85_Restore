@interface NEHelperCacheManager
- (NEHelperCacheManager)init;
- (NEHelperCacheManager)initWithFirstMessage:(id)a3;
- (OS_dispatch_queue)handlerQueue;
- (void)dealloc;
- (void)handleMessage:(id)a3;
@end

@implementation NEHelperCacheManager

- (void)handleMessage:(id)a3
{
  v4 = a3;
  selfa = sub_100020804();
  if (self)
  {
    Property = objc_getProperty(self, v5, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = selfa;
  if (selfa)
  {
    objc_setProperty_atomic(selfa, v5, Property, 24);
    v7 = selfa;
  }

  sub_10002085C(v7, v4);
}

- (OS_dispatch_queue)handlerQueue
{
  v2 = sub_100020804();
  v4 = v2;
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 8, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;

  return Property;
}

- (void)dealloc
{
  myCFRelease();
  v3.receiver = self;
  v3.super_class = NEHelperCacheManager;
  [(NEHelperCacheManager *)&v3 dealloc];
}

- (NEHelperCacheManager)init
{
  v9.receiver = self;
  v9.super_class = NEHelperCacheManager;
  v2 = [(NEHelperCacheManager *)&v9 init];
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("nehelper cache manager", v3);
  queue = v2->_queue;
  v2->_queue = v4;

  v6 = SCPreferencesCreate(kCFAllocatorDefault, @"nehelper", @"/Library/Preferences/com.apple.networkextension.cache.plist");
  v2->_prefs = v6;
  if (!v6)
  {
    v7 = 0;
  }

  else
  {
LABEL_3:
    v7 = v2;
  }

  return v7;
}

- (NEHelperCacheManager)initWithFirstMessage:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NEHelperCacheManager;
  v5 = [(NEHelperCacheManager *)&v12 init];
  if (v5)
  {
    v6 = xpc_dictionary_get_remote_connection(v4);
    v7 = v6;
    if (v6)
    {
      pid = xpc_connection_get_pid(v6);
      if (proc_name(pid, buffer, 0x100u) < 1)
      {
        clientName = ne_log_obj();
        if (os_log_type_enabled(clientName, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v14 = pid;
          _os_log_error_impl(&_mh_execute_header, clientName, OS_LOG_TYPE_ERROR, "Failed to get the process name for %d", buf, 8u);
        }
      }

      else
      {
        v9 = [[NSString alloc] initWithCString:buffer encoding:4];
        clientName = v5->_clientName;
        v5->_clientName = v9;
      }
    }
  }

  return v5;
}

@end