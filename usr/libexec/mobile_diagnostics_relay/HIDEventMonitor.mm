@interface HIDEventMonitor
+ (id)sharedInstance;
- (BOOL)registerParingEventCallback:(id)callback;
- (BOOL)registerWakeupEventCallback:(id)callback;
- (HIDEventMonitor)init;
- (void)cancelLongPressTimer;
- (void)unregisterParingEventCallback;
- (void)unregisterWakeupEventCallback;
@end

@implementation HIDEventMonitor

- (HIDEventMonitor)init
{
  v12.receiver = self;
  v12.super_class = HIDEventMonitor;
  v2 = [(MDRBaseObject *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.MDR.hideventQ", v3);
    hidEventQ = v2->_hidEventQ;
    v2->_hidEventQ = v4;

    v2->_eventSystemClient = 0;
    longPressTimer = v2->_longPressTimer;
    v2->_longPressTimer = 0;

    v2->_longPressTimerRunning = 0;
    v2->_volumeUpPressed = 0;
    v2->_volumeDownPressed = 0;
    paringKeyCombo = v2->_paringKeyCombo;
    v2->_paringKeyCombo = 0;

    wakeupCallback = v2->_wakeupCallback;
    v2->_wakeupCallback = 0;

    paringCallback = v2->_paringCallback;
    v2->_paringCallback = 0;

    v10 = v2;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1000264E0 != -1)
  {
    sub_1000132DC();
  }

  v3 = qword_1000264D8;

  return v3;
}

- (void)cancelLongPressTimer
{
  if (self->_longPressTimer)
  {
    v3 = +[DeviceUtility sharedInstance];
    [v3 cancelTimer:self->_longPressTimer];

    longPressTimer = self->_longPressTimer;
    self->_longPressTimer = 0;
  }

  self->_longPressTimerRunning = 0;
  self->_volumeUpPressed = 0;
  self->_volumeDownPressed = 0;
}

- (BOOL)registerWakeupEventCallback:(id)callback
{
  callbackCopy = callback;
  if (self->_eventSystemClient)
  {
    v5 = [NSString stringWithFormat:@"Must unregister previous callback first"];
    logger = [(MDRBaseObject *)self logger];
    if (!os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      v7 = 0;
      goto LABEL_9;
    }

LABEL_3:
    sub_100013364();
    goto LABEL_4;
  }

  v8 = IOHIDEventSystemClientCreateWithType();
  self->_eventSystemClient = v8;
  if (!v8)
  {
    v5 = [NSString stringWithFormat:@"registerWakeupEventCallback failed"];
    logger = [(MDRBaseObject *)self logger];
    if (!os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = objc_retainBlock(callbackCopy);
  wakeupCallback = self->_wakeupCallback;
  self->_wakeupCallback = v9;

  eventSystemClient = self->_eventSystemClient;
  hidEventQ = self->_hidEventQ;
  IOHIDEventSystemClientScheduleWithDispatchQueue();
  v13 = self->_eventSystemClient;
  IOHIDEventSystemClientRegisterEventCallback();
  v5 = [NSString stringWithFormat:@"Wakeup event is registered!"];
  logger = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", &v15, 0xCu);
  }

  v7 = 1;
LABEL_9:

  return v7;
}

- (void)unregisterWakeupEventCallback
{
  if (self->_eventSystemClient)
  {
    hidEventQ = self->_hidEventQ;
    IOHIDEventSystemClientUnscheduleFromDispatchQueue();
    eventSystemClient = self->_eventSystemClient;
    IOHIDEventSystemClientUnregisterEventCallback();
    self->_eventSystemClient = 0;
  }

  wakeupCallback = self->_wakeupCallback;
  self->_wakeupCallback = 0;

  v6 = [NSString stringWithFormat:@"Wakeup event is unregistered"];
  logger = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }
}

- (BOOL)registerParingEventCallback:(id)callback
{
  callbackCopy = callback;
  if (self->_eventSystemClient)
  {
    v5 = [NSString stringWithFormat:@"Must unregister previous callback first"];
    logger = [(MDRBaseObject *)self logger];
    if (!os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      v7 = 0;
      goto LABEL_9;
    }

LABEL_3:
    sub_10001344C();
    goto LABEL_4;
  }

  v8 = IOHIDEventSystemClientCreateWithType();
  self->_eventSystemClient = v8;
  if (!v8)
  {
    v5 = [NSString stringWithFormat:@"registerParingEventCallback failed"];
    logger = [(MDRBaseObject *)self logger];
    if (!os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = objc_retainBlock(callbackCopy);
  paringCallback = self->_paringCallback;
  self->_paringCallback = v9;

  paringKeyCombo = self->_paringKeyCombo;
  self->_paringKeyCombo = 0;

  eventSystemClient = self->_eventSystemClient;
  hidEventQ = self->_hidEventQ;
  IOHIDEventSystemClientScheduleWithDispatchQueue();
  v14 = self->_eventSystemClient;
  IOHIDEventSystemClientRegisterEventCallback();
  v5 = [NSString stringWithFormat:@"Paring event is registered!"];
  logger = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", &v16, 0xCu);
  }

  v7 = 1;
LABEL_9:

  return v7;
}

- (void)unregisterParingEventCallback
{
  if (self->_eventSystemClient)
  {
    hidEventQ = self->_hidEventQ;
    IOHIDEventSystemClientUnscheduleFromDispatchQueue();
    eventSystemClient = self->_eventSystemClient;
    IOHIDEventSystemClientUnregisterEventCallback();
    self->_eventSystemClient = 0;
  }

  paringCallback = self->_paringCallback;
  self->_paringCallback = 0;

  paringKeyCombo = self->_paringKeyCombo;
  self->_paringKeyCombo = 0;

  v7 = [NSString stringWithFormat:@"Paring event is unregistered"];
  logger = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", &v9, 0xCu);
  }
}

@end