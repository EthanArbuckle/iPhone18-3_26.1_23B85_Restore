@interface USBListener
- (BOOL)addDisconnectHandler:(id)handler;
- (BOOL)startOnQueue:(id)queue;
- (USBListener)init;
- (void)dealloc;
- (void)dispatchDisconnectListeners;
@end

@implementation USBListener

- (USBListener)init
{
  v11.receiver = self;
  v11.super_class = USBListener;
  v2 = [(USBListener *)&v11 init];
  v3 = v2;
  if (!v2)
  {
LABEL_6:

    return 0;
  }

  browser = v2->_browser;
  v2->_browser = 0;

  v3->_active = 0;
  v5 = os_log_create("com.apple.dt.remotepairing", "usblistener");
  log = v3->_log;
  v3->_log = v5;

  v7 = objc_alloc_init(NSMutableArray);
  disconnectHandlers = v3->_disconnectHandlers;
  v3->_disconnectHandlers = v7;

  if (!v3->_disconnectHandlers)
  {
    v9 = [(USBListener *)v3 log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100073490();
    }

    goto LABEL_6;
  }

  return v3;
}

- (BOOL)startOnQueue:(id)queue
{
  queueCopy = queue;
  v5 = queueCopy;
  if (!queueCopy)
  {
    v9 = [(USBListener *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000734F8();
    }

    goto LABEL_8;
  }

  v11 = queueCopy;
  started = remote_device_start_browsing();
  [(USBListener *)self setBrowser:started, _NSConcreteStackBlock, 3221225472, sub_100011420, &unk_10008E9D0, self];

  browser = [(USBListener *)self browser];

  if (!browser)
  {
    v9 = [(USBListener *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000734C4();
    }

LABEL_8:

    v8 = 0;
    goto LABEL_9;
  }

  v8 = 1;
  [(USBListener *)self setActive:1];
LABEL_9:

  return v8;
}

- (BOOL)addDisconnectHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    disconnectHandlers = [(USBListener *)self disconnectHandlers];
    objc_sync_enter(disconnectHandlers);
    disconnectHandlers2 = [(USBListener *)self disconnectHandlers];
    v7 = [handlerCopy copy];
    v8 = objc_retainBlock(v7);
    [disconnectHandlers2 addObject:v8];

    objc_sync_exit(disconnectHandlers);
  }

  else
  {
    disconnectHandlers = [(USBListener *)self log];
    if (os_log_type_enabled(disconnectHandlers, OS_LOG_TYPE_ERROR))
    {
      sub_1000734F8();
    }
  }

  return handlerCopy != 0;
}

- (void)dispatchDisconnectListeners
{
  disconnectHandlers = [(USBListener *)self disconnectHandlers];
  objc_sync_enter(disconnectHandlers);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  disconnectHandlers2 = [(USBListener *)self disconnectHandlers];
  v5 = [disconnectHandlers2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(disconnectHandlers2);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))();
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [disconnectHandlers2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_sync_exit(disconnectHandlers);
}

- (void)dealloc
{
  self->_active = 0;
  browser = self->_browser;
  remote_device_browser_cancel();
  v4.receiver = self;
  v4.super_class = USBListener;
  [(USBListener *)&v4 dealloc];
}

@end