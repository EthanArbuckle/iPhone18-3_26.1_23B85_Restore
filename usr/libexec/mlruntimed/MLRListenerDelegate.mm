@interface MLRListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MLRListenerDelegate)initWithXPCActivityManager:(id)manager;
@end

@implementation MLRListenerDelegate

- (MLRListenerDelegate)initWithXPCActivityManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v10.receiver = self;
    v10.super_class = MLRListenerDelegate;
    v6 = [(MLRListenerDelegate *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_XPCActivityManager, manager);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  XPCActivityManager = self->_XPCActivityManager;
  connectionCopy = connection;
  [(MLRXPCActivityManager *)XPCActivityManager registerIfNeeded];
  v6 = [[MLRServiceConnection alloc] initWithXPCConnection:connectionCopy];
  v7 = DESServiceGetXPCInterface();
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setExportedObject:v6];
  [connectionCopy resume];

  return 1;
}

@end