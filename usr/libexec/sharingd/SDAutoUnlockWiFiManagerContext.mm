@interface SDAutoUnlockWiFiManagerContext
- (SDAutoUnlockWiFiManager)wiFiManager;
- (SDAutoUnlockWiFiManagerContext)initWithRequest:(id)request wiFiManager:(id)manager;
@end

@implementation SDAutoUnlockWiFiManagerContext

- (SDAutoUnlockWiFiManagerContext)initWithRequest:(id)request wiFiManager:(id)manager
{
  requestCopy = request;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = SDAutoUnlockWiFiManagerContext;
  v9 = [(SDAutoUnlockWiFiManagerContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeWeak(&v10->_wiFiManager, managerCopy);
  }

  return v10;
}

- (SDAutoUnlockWiFiManager)wiFiManager
{
  WeakRetained = objc_loadWeakRetained(&self->_wiFiManager);

  return WeakRetained;
}

@end