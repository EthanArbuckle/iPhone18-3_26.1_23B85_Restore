@interface NICarKeyEventNotifier
- (NICarKeyEventNotifier)initWithParentSession:(id)a3;
- (void)notifyRangingIntentSentToVehicleWithReason:(int64_t)a3;
- (void)notifyVehicleLockedWithReason:(int64_t)a3;
- (void)notifyVehicleReadyToDriveWithReason:(int64_t)a3;
- (void)notifyVehicleSentRangingSuspendedSubEvent;
- (void)notifyVehicleTerminatedRangingSession;
- (void)notifyVehicleUnlockedWithReason:(int64_t)a3;
@end

@implementation NICarKeyEventNotifier

- (NICarKeyEventNotifier)initWithParentSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NICarKeyEventNotifier;
  v5 = [(NICarKeyEventNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, v4);
  }

  return v6;
}

- (void)notifyVehicleUnlockedWithReason:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v16[0] = &off_1009C4148;
    v15[0] = @"CarKeyEventType";
    v15[1] = @"CarKeyEventReason";
    v7 = [NSNumber numberWithInteger:a3];
    v16[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

    v9 = [WeakRetained getInternalConnectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100353AE0;
    block[3] = &unk_10098A2E8;
    v13 = WeakRetained;
    v14 = v8;
    v10 = v8;
    dispatch_sync(v9, block);
  }

  else
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2455 description:@"Parent session is nil"];
  }
}

- (void)notifyVehicleLockedWithReason:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v16[0] = &off_1009C4160;
    v15[0] = @"CarKeyEventType";
    v15[1] = @"CarKeyEventReason";
    v7 = [NSNumber numberWithInteger:a3];
    v16[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

    v9 = [WeakRetained getInternalConnectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100353D34;
    block[3] = &unk_10098A2E8;
    v13 = WeakRetained;
    v14 = v8;
    v10 = v8;
    dispatch_sync(v9, block);
  }

  else
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2469 description:@"Parent session is nil"];
  }
}

- (void)notifyVehicleReadyToDriveWithReason:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v16[0] = &off_1009C4178;
    v15[0] = @"CarKeyEventType";
    v15[1] = @"CarKeyEventReason";
    v7 = [NSNumber numberWithInteger:a3];
    v16[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

    v9 = [WeakRetained getInternalConnectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100353F88;
    block[3] = &unk_10098A2E8;
    v13 = WeakRetained;
    v14 = v8;
    v10 = v8;
    dispatch_sync(v9, block);
  }

  else
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2483 description:@"Parent session is nil"];
  }
}

- (void)notifyRangingIntentSentToVehicleWithReason:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v16[0] = &off_1009C4190;
    v15[0] = @"CarKeyEventType";
    v15[1] = @"CarKeyEventReason";
    v7 = [NSNumber numberWithInteger:a3];
    v16[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

    v9 = [WeakRetained getInternalConnectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003541DC;
    block[3] = &unk_10098A2E8;
    v13 = WeakRetained;
    v14 = v8;
    v10 = v8;
    dispatch_sync(v9, block);
  }

  else
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2497 description:@"Parent session is nil"];
  }
}

- (void)notifyVehicleTerminatedRangingSession
{
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v12 = @"CarKeyEventType";
    v13 = &off_1009C41A8;
    v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v6 = [WeakRetained getInternalConnectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003543F4;
    block[3] = &unk_10098A2E8;
    v10 = WeakRetained;
    v11 = v5;
    v7 = v5;
    dispatch_sync(v6, block);
  }

  else
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2511 description:@"Parent session is nil"];
  }
}

- (void)notifyVehicleSentRangingSuspendedSubEvent
{
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v12 = @"CarKeyEventType";
    v13 = &off_1009C41C0;
    v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v6 = [WeakRetained getInternalConnectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10035460C;
    block[3] = &unk_10098A2E8;
    v10 = WeakRetained;
    v11 = v5;
    v7 = v5;
    dispatch_sync(v6, block);
  }

  else
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2525 description:@"Parent session is nil"];
  }
}

@end