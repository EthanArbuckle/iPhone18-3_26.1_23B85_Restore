@interface SDSmartCoverMonitor
- (BOOL)isSmartCoverClosed:(__IOHIDEventSystemClient *)closed;
- (SDSmartCoverMonitor)init;
- (id)description;
- (unsigned)getSmartCoverState:(__CFArray *)state usage:(unsigned int)usage;
- (void)dealloc;
- (void)handleButtonEvent:(__IOHIDEvent *)event;
- (void)handleEvent:(__IOHIDEvent *)event;
- (void)installSmartCoverMonitor;
- (void)postNotification:(id)notification;
- (void)updateSmartCoverIsClosed:(BOOL)closed;
@end

@implementation SDSmartCoverMonitor

- (void)postNotification:(id)notification
{
  notificationCopy = notification;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:notificationCopy object:0 userInfo:0];
}

- (SDSmartCoverMonitor)init
{
  v5.receiver = self;
  v5.super_class = SDSmartCoverMonitor;
  v2 = [(SDSmartCoverMonitor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_smartCoverIsClosed = 0;
    v2->_openStateIsEngaged = 0;
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_mHIDClient = 0;
    [(SDSmartCoverMonitor *)v2 installSmartCoverMonitor];
  }

  return v3;
}

- (void)dealloc
{
  mHIDClient = self->_mHIDClient;
  if (mHIDClient)
  {
    CFRelease(mHIDClient);
  }

  v4.receiver = self;
  v4.super_class = SDSmartCoverMonitor;
  [(SDSmartCoverMonitor *)&v4 dealloc];
}

- (void)installSmartCoverMonitor
{
  v3 = SFDeviceClassCodeGet();
  v4 = daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 3)
  {
    if (v5)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting smart cover monitor", v12, 2u);
    }

    os_unfair_lock_lock(&self->_lock);
    v6 = [NSNumber numberWithInteger:65280];
    v13[0] = v6;
    v14[0] = @"PrimaryUsagePage";
    v7 = [NSNumber numberWithInteger:6];
    v13[1] = v7;
    v14[1] = @"PrimaryUsage";
    v4 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

    v8 = IOHIDEventSystemClientCreateWithType();
    self->_mHIDClient = v8;
    if (v8)
    {
      IOHIDEventSystemClientSetMatching();
      mHIDClient = self->_mHIDClient;
      IOHIDEventSystemClientRegisterEventCallback();
      v10 = self->_mHIDClient;
      CFRunLoopGetMain();
      IOHIDEventSystemClientScheduleWithRunLoop();
      v11 = self->_mHIDClient;
    }

    else
    {
      v11 = 0;
    }

    [(SDSmartCoverMonitor *)self updateSmartCoverIsClosed:[(SDSmartCoverMonitor *)self isSmartCoverClosed:v11]];
    os_unfair_lock_unlock(&self->_lock);
  }

  else if (v5)
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not starting smart cover monitor", v12, 2u);
  }
}

- (id)description
{
  NSAppendPrintF();
  v3 = 0;
  [(SDSmartCoverMonitor *)self smartCoverIsClosed];
  NSAppendPrintF();
  v4 = v3;

  return v3;
}

- (void)updateSmartCoverIsClosed:(BOOL)closed
{
  if (self->_smartCoverIsClosed != closed)
  {
    closedCopy = closed;
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (closedCopy)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "smartCoverIsClosed changed: closed %@", &v7, 0xCu);
    }

    self->_smartCoverIsClosed = closedCopy;
    [(SDSmartCoverMonitor *)self postNotification:@"com.apple.sharingd.SmartCoverClosedChanged"];
  }
}

- (void)handleButtonEvent:(__IOHIDEvent *)event
{
  IntegerValue = IOHIDEventGetIntegerValue();
  v5 = IOHIDEventGetIntegerValue();
  if (IntegerValue == 65289 && v5 == 2)
  {
    self->_flap1StateIsEngaged = IOHIDEventGetIntegerValue() == 1;
    v7 = daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "NO";
      if (self->_flap1StateIsEngaged)
      {
        v12 = "YES";
      }

      else
      {
        v12 = "NO";
      }

      if (self->_openStateIsEngaged)
      {
        v11 = "YES";
      }

      *v14 = 136446466;
      *&v14[4] = v12;
      *&v14[12] = 2082;
      *&v14[14] = v11;
      v10 = "flap1IsEngaged (updated) = %{public}s openIsEngaged = %{public}s";
      goto LABEL_21;
    }
  }

  else
  {
    if (IntegerValue != 65289 || v5 != 1)
    {
      goto LABEL_23;
    }

    self->_openStateIsEngaged = IOHIDEventGetIntegerValue() == 1;
    v7 = daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "NO";
      if (self->_flap1StateIsEngaged)
      {
        v9 = "YES";
      }

      else
      {
        v9 = "NO";
      }

      if (self->_openStateIsEngaged)
      {
        v8 = "YES";
      }

      *v14 = 136446466;
      *&v14[4] = v9;
      *&v14[12] = 2082;
      *&v14[14] = v8;
      v10 = "flap1IsEngaged = %{public}s openIsEngaged (updated) = %{public}s";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v10, v14, 0x16u);
    }
  }

LABEL_23:
  v13 = self->_flap1StateIsEngaged && self->_openStateIsEngaged;
  [(SDSmartCoverMonitor *)self updateSmartCoverIsClosed:v13, *v14, *&v14[16]];
}

- (void)handleEvent:(__IOHIDEvent *)event
{
  if (event)
  {
    CFRetain(event);
  }

  os_unfair_lock_lock(&self->_lock);
  smartCoverIsClosed = [(SDSmartCoverMonitor *)self smartCoverIsClosed];
  if (IOHIDEventGetType() == 3)
  {
    [(SDSmartCoverMonitor *)self handleButtonEvent:event];
  }

  smartCoverIsClosed2 = [(SDSmartCoverMonitor *)self smartCoverIsClosed];
  if (smartCoverIsClosed != smartCoverIsClosed2)
  {
    [(SDSmartCoverMonitor *)self updateSmartCoverIsClosed:smartCoverIsClosed2];
  }

  if (event)
  {
    CFRelease(event);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSmartCoverClosed:(__IOHIDEventSystemClient *)closed
{
  if (!closed)
  {
    return 0;
  }

  v4 = IOHIDEventSystemClientCopyServices(closed);
  v5 = [(SDSmartCoverMonitor *)self getSmartCoverState:v4 usage:1];
  v6 = [(SDSmartCoverMonitor *)self getSmartCoverState:v4 usage:2];
  v7 = v6 | v5;
  v8 = (v6 | v5) == 3;
  self->_flap1StateIsEngaged = (v7 & 2) != 0;
  self->_openStateIsEngaged = v7 & 1;
  v9 = daemon_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "NO";
    if (self->_flap1StateIsEngaged)
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    if (self->_openStateIsEngaged)
    {
      v10 = "YES";
    }

    v13 = 136446466;
    v14 = v11;
    v15 = 2082;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "flap1IsEngaged = %{public}s openIsEngaged = %{public}s", &v13, 0x16u);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

- (unsigned)getSmartCoverState:(__CFArray *)state usage:(unsigned int)usage
{
  if (!state)
  {
    return 0;
  }

  Count = CFArrayGetCount(state);
  if (Count < 1)
  {
    return 0;
  }

  v7 = Count;
  v8 = 0;
  for (i = 0; i != v7; ++i)
  {
    CFArrayGetValueAtIndex(state, i);
    KeyboardEvent = IOHIDEventCreateKeyboardEvent();
    v11 = IOHIDServiceClientCopyEvent();
    if (v11)
    {
      v12 = v11;
      if (IOHIDEventGetIntegerValue())
      {
        usageCopy = usage;
      }

      else
      {
        usageCopy = 0;
      }

      v8 |= usageCopy;
      CFRelease(v12);
    }

    if (KeyboardEvent)
    {
      CFRelease(KeyboardEvent);
    }
  }

  return v8;
}

@end