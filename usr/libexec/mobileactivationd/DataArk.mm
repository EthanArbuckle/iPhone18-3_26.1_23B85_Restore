@interface DataArk
- (DataArk)initWithPath:(id)a3;
- (void)postNotification:(id)a3;
@end

@implementation DataArk

- (DataArk)initWithPath:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = DataArk;
  v5 = [(DataArk *)&v29 init];
  if (!v5)
  {
    goto LABEL_18;
  }

  if (!v4)
  {
    maLog("[DataArk initWithPath:]", 0, @"Invalid input.");
LABEL_23:
    v26 = 0;
    goto LABEL_24;
  }

  v6 = +[NSFileManager defaultManager];
  v30 = NSFilePosixPermissions;
  v31 = &off_1003FBC30;
  v7 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v28 = 0;
  v8 = [(NSFileManager *)v6 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:v7 error:&v28];
  v9 = v28;

  if ((v8 & 1) == 0)
  {
    maLog("[DataArk initWithPath:]", 0, @"Could not create path %@: %@", v4, v9);
LABEL_10:
    v15 = v9;
LABEL_22:

    goto LABEL_23;
  }

  v10 = [v4 stringByAppendingPathComponent:@"data_ark.plist"];
  path = v5->_path;
  v5->_path = v10;

  v12 = v5->_path;
  if (!v12)
  {
    maLog("[DataArk initWithPath:]", 0, @"Failed to create string.");
    goto LABEL_10;
  }

  v13 = load_dict(v12);
  if (v13)
  {
    v14 = [NSMutableDictionary dictionaryWithDictionary:v13];
  }

  else
  {
    v14 = objc_alloc_init(NSMutableDictionary);
  }

  store = v5->_store;
  v5->_store = v14;

  if (!v5->_store)
  {
    maLog("[DataArk initWithPath:]", 0, @"Failed to create dictionary.");
    goto LABEL_21;
  }

  v17 = objc_alloc_init(NSMutableDictionary);
  set_notifications = v5->_set_notifications;
  v5->_set_notifications = v17;

  v19 = objc_alloc_init(NSMutableDictionary);
  change_notifications = v5->_change_notifications;
  v5->_change_notifications = v19;

  v21 = objc_alloc_init(NSMutableDictionary);
  remove_notifications = v5->_remove_notifications;
  v5->_remove_notifications = v21;

  if (!v5->_set_notifications || !v5->_change_notifications || !v5->_remove_notifications)
  {
    maLog("[DataArk initWithPath:]", 0, @"Failed to allocate dictionary.");
LABEL_21:

    v15 = v13;
    goto LABEL_22;
  }

  v23 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v24 = dispatch_queue_create("com.apple.mobileactivationd.dark", v23);
  queue = v5->_queue;
  v5->_queue = v24;

  if (!v5->_queue)
  {
    maLog("[DataArk initWithPath:]", 0, @"Failed to create queue.");
    goto LABEL_21;
  }

LABEL_18:
  v26 = v5;
LABEL_24:

  return v26;
}

- (void)postNotification:(id)a3
{
  v3 = a3;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, v3, 0, 1u);
}

@end