@interface DataStreamBulkSendPendingSessionContext
- (BOOL)shouldCloseSessionWithTimeoutReason;
- (DataStreamBulkSendPendingSessionContext)initWithSessionStartCallback:(id)a3 handleOpenRequestResponseTimer:(id)a4 sendCloseEventTimer:(id)a5;
@end

@implementation DataStreamBulkSendPendingSessionContext

- (DataStreamBulkSendPendingSessionContext)initWithSessionStartCallback:(id)a3 handleOpenRequestResponseTimer:(id)a4 sendCloseEventTimer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = DataStreamBulkSendPendingSessionContext;
  v11 = [(DataStreamBulkSendPendingSessionContext *)&v15 init];
  if (v11)
  {
    v12 = objc_retainBlock(v8);
    sessionStartCallback = v11->_sessionStartCallback;
    v11->_sessionStartCallback = v12;

    objc_storeStrong(&v11->_handleOpenRequestResponseTimer, a4);
    objc_storeStrong(&v11->_sendCloseEventTimer, a5);
  }

  return v11;
}

- (BOOL)shouldCloseSessionWithTimeoutReason
{
  v3 = [(DataStreamBulkSendPendingSessionContext *)self handleOpenRequestResponseTimer];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(DataStreamBulkSendPendingSessionContext *)self sendCloseEventTimer];
    v4 = v5 != 0;
  }

  return v4;
}

@end