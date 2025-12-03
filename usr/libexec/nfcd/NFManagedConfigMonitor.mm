@interface NFManagedConfigMonitor
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation NFManagedConfigMonitor

- (void)dealloc
{
  v4 = sub_10027E8B0(v2);
  sharedConnection = [*(v5 + 4040) sharedConnection];
  [sharedConnection unregisterObserver:self];

  v7.receiver = self;
  v7.super_class = NFManagedConfigMonitor;
  [(NFManagedConfigMonitor *)&v7 dealloc];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  if (self)
  {
    v6 = sub_10027E8B0(v4);
    sharedConnection = [*(v7 + 4040) sharedConnection];
    self->_isAllowed = [sharedConnection isNFCAllowed];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained managedConfigChanged:self->_isAllowed];
  }
}

@end