@interface SDAutoUnlockWiFiManagerContext
- (SDAutoUnlockWiFiManager)wiFiManager;
- (SDAutoUnlockWiFiManagerContext)initWithRequest:(id)a3 wiFiManager:(id)a4;
@end

@implementation SDAutoUnlockWiFiManagerContext

- (SDAutoUnlockWiFiManagerContext)initWithRequest:(id)a3 wiFiManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SDAutoUnlockWiFiManagerContext;
  v9 = [(SDAutoUnlockWiFiManagerContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeWeak(&v10->_wiFiManager, v8);
  }

  return v10;
}

- (SDAutoUnlockWiFiManager)wiFiManager
{
  WeakRetained = objc_loadWeakRetained(&self->_wiFiManager);

  return WeakRetained;
}

@end