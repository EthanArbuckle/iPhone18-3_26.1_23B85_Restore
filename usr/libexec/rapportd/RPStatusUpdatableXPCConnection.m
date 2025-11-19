@interface RPStatusUpdatableXPCConnection
- (BOOL)_entitledAndReturnError:(id *)a3;
- (RPStatusUpdatableXPCConnection)initWithDaemon:(id)a3 xpcCnx:(id)a4;
- (void)connectionInvalidated;
- (void)xpcStatusProviderActivate:(id)a3 completion:(id)a4;
- (void)xpcStatusSubscriberActivate:(id)a3 completion:(id)a4;
- (void)xpcStatusUpdatableCancelProvideStatus:(id)a3;
- (void)xpcStatusUpdatableProvideStatus:(id)a3 statusInfo:(id)a4;
- (void)xpcStatusUpdatableSubscribeToStatus:(id)a3;
- (void)xpcStatusUpdatableUnsubscribeToStatus:(id)a3;
@end

@implementation RPStatusUpdatableXPCConnection

- (RPStatusUpdatableXPCConnection)initWithDaemon:(id)a3 xpcCnx:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = RPStatusUpdatableXPCConnection;
  v9 = [(RPStatusUpdatableXPCConnection *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, a3);
    objc_storeStrong(&v10->_xpcCnx, a4);
    v11 = v10;
  }

  return v10;
}

- (void)connectionInvalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4D10 <= 20 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B048(self);
  }

  provider = self->_provider;
  if (provider)
  {
    [(RPStatusProvider *)provider invalidate];
    v4 = self->_provider;
    self->_provider = 0;
  }

  subscriber = self->_subscriber;
  if (subscriber)
  {
    [(RPStatusSubscriber *)subscriber invalidate];
    v6 = self->_subscriber;
    self->_subscriber = 0;
  }

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;
}

- (BOOL)_entitledAndReturnError:(id *)a3
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.rapport.StatusUpdates"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_1001D4D10 <= 90 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B090(p_xpcCnx);
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else if (a3)
  {
LABEL_9:
    v9 = RPErrorF();
    v10 = v9;
    result = 0;
    *a3 = v9;
    return result;
  }

  return 0;
}

- (void)xpcStatusUpdatableProvideStatus:(id)a3 statusInfo:(id)a4
{
  v7 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)xpcStatusUpdatableCancelProvideStatus:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B0E0();
  }
}

- (void)xpcStatusUpdatableSubscribeToStatus:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B120();
  }
}

- (void)xpcStatusUpdatableUnsubscribeToStatus:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B160();
  }
}

- (void)xpcStatusProviderActivate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v11 = 0;
  [(RPStatusUpdatableXPCConnection *)self _entitledAndReturnError:&v11];
  v9 = v11;
  if (v9)
  {
    if (v8)
    {
      v8[2](v8, 0, v9);
    }
  }

  else
  {
    if (self->_provider)
    {
      if (dword_1001D4D10 <= 90 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
      {
        sub_10012B1A0();
        if (!v8)
        {
          goto LABEL_16;
        }
      }

      else if (!v8)
      {
        goto LABEL_16;
      }

      v10 = RPErrorF();
      (v8)[2](v8, &__NSArray0__struct, v10);

      goto LABEL_16;
    }

    if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
    {
      sub_10012B1D4(self);
    }

    [v7 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_provider, a3);
    if (v8)
    {
      (v8)[2](v8, &__NSArray0__struct, 0);
    }

    [(RPStatusDaemon *)self->_daemon _update];
  }

LABEL_16:
}

- (void)xpcStatusSubscriberActivate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v11 = 0;
  [(RPStatusUpdatableXPCConnection *)self _entitledAndReturnError:&v11];
  v9 = v11;
  if (v9)
  {
    if (v8)
    {
      v8[2](v8, 0, v9);
    }
  }

  else
  {
    if (self->_subscriber)
    {
      if (dword_1001D4D10 <= 90 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
      {
        sub_10012B228();
        if (!v8)
        {
          goto LABEL_16;
        }
      }

      else if (!v8)
      {
        goto LABEL_16;
      }

      v10 = RPErrorF();
      (v8)[2](v8, &__NSArray0__struct, v10);

      goto LABEL_16;
    }

    if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
    {
      sub_10012B25C(self);
    }

    [(RPStatusSubscriber *)self->_subscriber setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_subscriber, a3);
    if (v8)
    {
      (v8)[2](v8, &__NSArray0__struct, 0);
    }

    [(RPStatusDaemon *)self->_daemon _update];
  }

LABEL_16:
}

@end