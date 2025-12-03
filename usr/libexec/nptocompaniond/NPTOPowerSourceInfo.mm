@interface NPTOPowerSourceInfo
- (BOOL)_hasExternalPowerSourceConnected;
- (NPTOPowerSourceInfoDelegate)delegate;
- (void)_handlePowerSourceNotification;
- (void)setDelegate:(id)delegate;
@end

@implementation NPTOPowerSourceInfo

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    v6 = objc_storeWeak(&self->_delegate, delegateCopy);

    if (delegateCopy)
    {
      objc_initWeak(&location, self);
      v7 = [NPTODarwinNotificationObserver alloc];
      v8 = &_dispatch_main_q;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10005D9E0;
      v12[3] = &unk_10008B1C0;
      objc_copyWeak(&v13, &location);
      v9 = [v7 initWithNotificationName:@"com.apple.system.powersources.source" queue:&_dispatch_main_q block:v12];
      powerSourceNotificationObserver = self->_powerSourceNotificationObserver;
      self->_powerSourceNotificationObserver = v9;

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else
    {
      v11 = self->_powerSourceNotificationObserver;
      self->_powerSourceNotificationObserver = 0;
    }
  }
}

- (BOOL)_hasExternalPowerSourceConnected
{
  v2 = IOPSCopyPowerSourcesByType();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = IOPSCopyPowerSourcesList(v2);
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4) < 1)
    {
      bOOLValue = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      v7 = IOPSGetPowerSourceDescription(v3, ValueAtIndex);
      v8 = [v7 objectForKeyedSubscript:@"Raw External Connected"];
      bOOLValue = [v8 BOOLValue];
    }

    CFRelease(v5);
  }

  else
  {
    bOOLValue = 0;
  }

  CFRelease(v3);
  return bOOLValue;
}

- (void)_handlePowerSourceNotification
{
  v3 = sub_10000268C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[NPTOPowerSourceInfo _handlePowerSourceNotification]";
    v13 = 2080;
    v14 = "/Library/Caches/com.apple.xbs/Sources/NanoPhotos/NanoPhotosSync/Utilities/NPTOPowerSourceInfo.m";
    v15 = 1024;
    v16 = 60;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s (%s:%d)", &v11, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    _hasExternalPowerSourceConnected = [(NPTOPowerSourceInfo *)self _hasExternalPowerSourceConnected];
    lastNotifiedExternalPowerSourceConnected = self->_lastNotifiedExternalPowerSourceConnected;
    if (!lastNotifiedExternalPowerSourceConnected || _hasExternalPowerSourceConnected != [(NSNumber *)lastNotifiedExternalPowerSourceConnected BOOLValue])
    {
      v8 = [NSNumber numberWithBool:_hasExternalPowerSourceConnected];
      v9 = self->_lastNotifiedExternalPowerSourceConnected;
      self->_lastNotifiedExternalPowerSourceConnected = v8;

      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 powerSourceInfoHasExternalPowerSourceConnectedDidChange:self];
    }
  }
}

- (NPTOPowerSourceInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end