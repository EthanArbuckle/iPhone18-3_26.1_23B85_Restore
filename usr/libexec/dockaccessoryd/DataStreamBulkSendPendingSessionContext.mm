@interface DataStreamBulkSendPendingSessionContext
- (BOOL)shouldCloseSessionWithTimeoutReason;
- (DataStreamBulkSendPendingSessionContext)initWithSessionStartCallback:(id)callback handleOpenRequestResponseTimer:(id)timer sendCloseEventTimer:(id)eventTimer;
@end

@implementation DataStreamBulkSendPendingSessionContext

- (DataStreamBulkSendPendingSessionContext)initWithSessionStartCallback:(id)callback handleOpenRequestResponseTimer:(id)timer sendCloseEventTimer:(id)eventTimer
{
  callbackCopy = callback;
  timerCopy = timer;
  eventTimerCopy = eventTimer;
  v15.receiver = self;
  v15.super_class = DataStreamBulkSendPendingSessionContext;
  v11 = [(DataStreamBulkSendPendingSessionContext *)&v15 init];
  if (v11)
  {
    v12 = objc_retainBlock(callbackCopy);
    sessionStartCallback = v11->_sessionStartCallback;
    v11->_sessionStartCallback = v12;

    objc_storeStrong(&v11->_handleOpenRequestResponseTimer, timer);
    objc_storeStrong(&v11->_sendCloseEventTimer, eventTimer);
  }

  return v11;
}

- (BOOL)shouldCloseSessionWithTimeoutReason
{
  handleOpenRequestResponseTimer = [(DataStreamBulkSendPendingSessionContext *)self handleOpenRequestResponseTimer];
  if (handleOpenRequestResponseTimer)
  {
    v4 = 0;
  }

  else
  {
    sendCloseEventTimer = [(DataStreamBulkSendPendingSessionContext *)self sendCloseEventTimer];
    v4 = sendCloseEventTimer != 0;
  }

  return v4;
}

@end