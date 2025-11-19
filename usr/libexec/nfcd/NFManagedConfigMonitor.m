@interface NFManagedConfigMonitor
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation NFManagedConfigMonitor

- (void)dealloc
{
  v4 = sub_10027E8B0(v2);
  v6 = [*(v5 + 4040) sharedConnection];
  [v6 unregisterObserver:self];

  v7.receiver = self;
  v7.super_class = NFManagedConfigMonitor;
  [(NFManagedConfigMonitor *)&v7 dealloc];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  if (self)
  {
    v6 = sub_10027E8B0(v4);
    v8 = [*(v7 + 4040) sharedConnection];
    self->_isAllowed = [v8 isNFCAllowed];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained managedConfigChanged:self->_isAllowed];
  }
}

@end