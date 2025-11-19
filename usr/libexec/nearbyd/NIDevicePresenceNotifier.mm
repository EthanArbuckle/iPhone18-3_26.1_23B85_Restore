@interface NIDevicePresenceNotifier
- (NIDevicePresenceNotifier)initWithParentSession:(id)a3;
- (void)notifyBluetoothSample:(id)a3;
@end

@implementation NIDevicePresenceNotifier

- (NIDevicePresenceNotifier)initWithParentSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NIDevicePresenceNotifier;
  v5 = [(NIDevicePresenceNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, v4);
  }

  return v6;
}

- (void)notifyBluetoothSample:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained getInternalConnectionQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10035600C;
    v10[3] = &unk_10098A2E8;
    v11 = v7;
    v12 = v5;
    dispatch_sync(v8, v10);
  }

  else
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2809 description:@"Parent session is nil"];
  }
}

@end