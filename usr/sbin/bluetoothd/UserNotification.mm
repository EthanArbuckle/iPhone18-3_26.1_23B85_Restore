@interface UserNotification
- (UserNotification)initWithType:(int)type device:(id)device bundleID:(id)d;
- (void)dealloc;
- (void)setNotification:(__CFUserNotification *)notification;
- (void)setRunLoopSource:(__CFRunLoopSource *)source;
@end

@implementation UserNotification

- (UserNotification)initWithType:(int)type device:(id)device bundleID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = UserNotification;
  v11 = [(UserNotification *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_device, device);
    objc_storeStrong(&v12->_bundleID, d);
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

- (void)setNotification:(__CFUserNotification *)notification
{
  notification = self->_notification;
  if (notification)
  {
    v5 = CFRetain(notification);
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

- (void)setRunLoopSource:(__CFRunLoopSource *)source
{
  runLoopSource = self->_runLoopSource;
  if (source)
  {
    v6 = CFRetain(source);
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

  if (source)
  {
    v8 = CFRunLoopGetMain();

    CFRunLoopAddSource(v8, source, kCFRunLoopDefaultMode);
  }
}

@end