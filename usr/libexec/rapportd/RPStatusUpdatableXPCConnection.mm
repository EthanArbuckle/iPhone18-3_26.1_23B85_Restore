@interface RPStatusUpdatableXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (RPStatusUpdatableXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx;
- (void)connectionInvalidated;
- (void)xpcStatusProviderActivate:(id)activate completion:(id)completion;
- (void)xpcStatusSubscriberActivate:(id)activate completion:(id)completion;
- (void)xpcStatusUpdatableCancelProvideStatus:(id)status;
- (void)xpcStatusUpdatableProvideStatus:(id)status statusInfo:(id)info;
- (void)xpcStatusUpdatableSubscribeToStatus:(id)status;
- (void)xpcStatusUpdatableUnsubscribeToStatus:(id)status;
@end

@implementation RPStatusUpdatableXPCConnection

- (RPStatusUpdatableXPCConnection)initWithDaemon:(id)daemon xpcCnx:(id)cnx
{
  daemonCopy = daemon;
  cnxCopy = cnx;
  v13.receiver = self;
  v13.super_class = RPStatusUpdatableXPCConnection;
  v9 = [(RPStatusUpdatableXPCConnection *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daemon, daemon);
    objc_storeStrong(&v10->_xpcCnx, cnx);
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

- (BOOL)_entitledAndReturnError:(id *)error
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
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    v9 = RPErrorF();
    v10 = v9;
    result = 0;
    *error = v9;
    return result;
  }

  return 0;
}

- (void)xpcStatusUpdatableProvideStatus:(id)status statusInfo:(id)info
{
  statusCopy = status;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)xpcStatusUpdatableCancelProvideStatus:(id)status
{
  statusCopy = status;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B0E0();
  }
}

- (void)xpcStatusUpdatableSubscribeToStatus:(id)status
{
  statusCopy = status;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B120();
  }
}

- (void)xpcStatusUpdatableUnsubscribeToStatus:(id)status
{
  statusCopy = status;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B160();
  }
}

- (void)xpcStatusProviderActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v11 = 0;
  [(RPStatusUpdatableXPCConnection *)self _entitledAndReturnError:&v11];
  v9 = v11;
  if (v9)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    if (self->_provider)
    {
      if (dword_1001D4D10 <= 90 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
      {
        sub_10012B1A0();
        if (!completionCopy)
        {
          goto LABEL_16;
        }
      }

      else if (!completionCopy)
      {
        goto LABEL_16;
      }

      v10 = RPErrorF();
      (completionCopy)[2](completionCopy, &__NSArray0__struct, v10);

      goto LABEL_16;
    }

    if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
    {
      sub_10012B1D4(self);
    }

    [activateCopy setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_provider, activate);
    if (completionCopy)
    {
      (completionCopy)[2](completionCopy, &__NSArray0__struct, 0);
    }

    [(RPStatusDaemon *)self->_daemon _update];
  }

LABEL_16:
}

- (void)xpcStatusSubscriberActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v11 = 0;
  [(RPStatusUpdatableXPCConnection *)self _entitledAndReturnError:&v11];
  v9 = v11;
  if (v9)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v9);
    }
  }

  else
  {
    if (self->_subscriber)
    {
      if (dword_1001D4D10 <= 90 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
      {
        sub_10012B228();
        if (!completionCopy)
        {
          goto LABEL_16;
        }
      }

      else if (!completionCopy)
      {
        goto LABEL_16;
      }

      v10 = RPErrorF();
      (completionCopy)[2](completionCopy, &__NSArray0__struct, v10);

      goto LABEL_16;
    }

    if (dword_1001D4D10 <= 30 && (dword_1001D4D10 != -1 || _LogCategory_Initialize()))
    {
      sub_10012B25C(self);
    }

    [(RPStatusSubscriber *)self->_subscriber setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_subscriber, activate);
    if (completionCopy)
    {
      (completionCopy)[2](completionCopy, &__NSArray0__struct, 0);
    }

    [(RPStatusDaemon *)self->_daemon _update];
  }

LABEL_16:
}

@end