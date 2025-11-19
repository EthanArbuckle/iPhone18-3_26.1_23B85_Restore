@interface DMDUserNotification
- (DMDUserNotification)init;
- (void)dealloc;
- (void)setNotificationRef:(__CFUserNotification *)a3;
@end

@implementation DMDUserNotification

- (DMDUserNotification)init
{
  v6.receiver = self;
  v6.super_class = DMDUserNotification;
  v2 = [(DMDUserNotification *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    identifier = v2->_identifier;
    v2->_identifier = v3;

    v2->_displayWhenLocked = 1;
    v2->_timeout = 0.0;
  }

  return v2;
}

- (void)dealloc
{
  notificationRef = self->_notificationRef;
  if (notificationRef)
  {
    CFRelease(notificationRef);
  }

  v4.receiver = self;
  v4.super_class = DMDUserNotification;
  [(DMDUserNotification *)&v4 dealloc];
}

- (void)setNotificationRef:(__CFUserNotification *)a3
{
  notificationRef = self->_notificationRef;
  if (notificationRef != a3)
  {
    if (notificationRef)
    {
      CFRelease(notificationRef);
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_notificationRef = v6;
  }
}

@end