@interface NEAppPushPlugin
- (void)handleProviderError:(id)error;
- (void)handleProviderError:(id)error forMessageID:(id)d;
- (void)handleProviderInstallationStatus:(int64_t)status;
- (void)handleProviderStopped;
- (void)reportIncomingCall:(id)call;
- (void)reportPushToTalkMessage:(id)message;
- (void)sendExtensionFailed;
- (void)unmatchEthernet;
@end

@implementation NEAppPushPlugin

- (void)handleProviderInstallationStatus:(int64_t)status
{
  delegateQueue = [(NEPlugin *)self delegateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100017DB0;
  v6[3] = &unk_1000EB0D8;
  v6[4] = self;
  v6[5] = status;
  dispatch_async(delegateQueue, v6);
}

- (void)handleProviderStopped
{
  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017E8C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)sendExtensionFailed
{
  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017F68;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)unmatchEthernet
{
  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018044;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

- (void)reportPushToTalkMessage:(id)message
{
  messageCopy = message;
  delegateQueue = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001814C;
  v7[3] = &unk_1000EB198;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(delegateQueue, v7);
}

- (void)reportIncomingCall:(id)call
{
  callCopy = call;
  delegateQueue = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018254;
  v7[3] = &unk_1000EB198;
  v7[4] = self;
  v8 = callCopy;
  v6 = callCopy;
  dispatch_async(delegateQueue, v7);
}

- (void)handleProviderError:(id)error forMessageID:(id)d
{
  errorCopy = error;
  dCopy = d;
  delegateQueue = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018380;
  block[3] = &unk_1000EABC8;
  block[4] = self;
  v12 = errorCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = errorCopy;
  dispatch_async(delegateQueue, block);
}

- (void)handleProviderError:(id)error
{
  errorCopy = error;
  delegateQueue = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001848C;
  v7[3] = &unk_1000EB198;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(delegateQueue, v7);
}

@end