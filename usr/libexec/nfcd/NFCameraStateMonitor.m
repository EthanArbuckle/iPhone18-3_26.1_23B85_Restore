@interface NFCameraStateMonitor
- (NFCameraStateMonitor)init;
- (void)dealloc;
@end

@implementation NFCameraStateMonitor

- (NFCameraStateMonitor)init
{
  v11.receiver = self;
  v11.super_class = NFCameraStateMonitor;
  v2 = [(NFCameraStateMonitor *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_cameraStates = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v6 = dispatch_queue_create("com.apple.nfcd.cameraMonitor", v5);
    workQueue = v3->_workQueue;
    v3->_workQueue = v6;

    v8 = +[NSMapTable strongToWeakObjectsMapTable];
    delegates = v3->_delegates;
    v3->_delegates = v8;

    v3->_delegatesLock._os_unfair_lock_opaque = 0;
    v3->_cameraStateBeforeDebounceStarted = -1;
  }

  return v3;
}

- (void)dealloc
{
  ioNotifyPort = self->_ioNotifyPort;
  if (ioNotifyPort)
  {
    IONotificationPortDestroy(ioNotifyPort);
  }

  notificationObj = self->_notificationObj;
  if (notificationObj)
  {
    IOObjectRelease(notificationObj);
  }

  v5.receiver = self;
  v5.super_class = NFCameraStateMonitor;
  [(NFCameraStateMonitor *)&v5 dealloc];
}

@end