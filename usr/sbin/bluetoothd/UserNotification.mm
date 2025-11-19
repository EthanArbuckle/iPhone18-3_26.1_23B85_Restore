@interface UserNotification
- (UserNotification)initWithType:(int)a3 device:(id)a4 bundleID:(id)a5;
- (void)dealloc;
- (void)setNotification:(__CFUserNotification *)a3;
- (void)setRunLoopSource:(__CFRunLoopSource *)a3;
@end

@implementation UserNotification

- (UserNotification)initWithType:(int)a3 device:(id)a4 bundleID:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = UserNotification;
  v11 = [(UserNotification *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_device, a4);
    objc_storeStrong(&v12->_bundleID, a5);
    v12->_notification = 0;
    v12->_runLoopSource = 0;
  }

  return v12;
}

- (void)dealloc
{
  notification = self->_notification;
  if (notification)
  {
    CFUserNotificationCancel(notification);
    CFRelease(self->_notification);
  }

  if (self->_runLoopSource)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, self->_runLoopSource, kCFRunLoopDefaultMode);
    CFRelease(self->_runLoopSource);
  }

  v5.receiver = self;
  v5.super_class = UserNotification;
  [(UserNotification *)&v5 dealloc];
}

- (void)setNotification:(__CFUserNotification *)a3
{
  notification = self->_notification;
  if (a3)
  {
    v5 = CFRetain(a3);
  }

  else
  {
    v5 = 0;
  }

  self->_notification = v5;
  if (notification)
  {
    CFUserNotificationCancel(notification);

    CFRelease(notification);
  }
}

- (void)setRunLoopSource:(__CFRunLoopSource *)a3
{
  runLoopSource = self->_runLoopSource;
  if (a3)
  {
    v6 = CFRetain(a3);
  }

  else
  {
    v6 = 0;
  }

  self->_runLoopSource = v6;
  if (runLoopSource)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, runLoopSource, kCFRunLoopDefaultMode);
    CFRelease(runLoopSource);
  }

  if (a3)
  {
    v8 = CFRunLoopGetMain();

    CFRunLoopAddSource(v8, a3, kCFRunLoopDefaultMode);
  }
}

@end