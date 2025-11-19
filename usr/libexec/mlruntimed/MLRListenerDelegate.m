@interface MLRListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MLRListenerDelegate)initWithXPCActivityManager:(id)a3;
@end

@implementation MLRListenerDelegate

- (MLRListenerDelegate)initWithXPCActivityManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = MLRListenerDelegate;
    v6 = [(MLRListenerDelegate *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_XPCActivityManager, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  XPCActivityManager = self->_XPCActivityManager;
  v5 = a4;
  [(MLRXPCActivityManager *)XPCActivityManager registerIfNeeded];
  v6 = [[MLRServiceConnection alloc] initWithXPCConnection:v5];
  v7 = DESServiceGetXPCInterface();
  [v5 setExportedInterface:v7];

  [v5 setExportedObject:v6];
  [v5 resume];

  return 1;
}

@end