@interface NEAppPushPlugin
- (void)handleProviderError:(id)a3;
- (void)handleProviderError:(id)a3 forMessageID:(id)a4;
- (void)handleProviderInstallationStatus:(int64_t)a3;
- (void)handleProviderStopped;
- (void)reportIncomingCall:(id)a3;
- (void)reportPushToTalkMessage:(id)a3;
- (void)sendExtensionFailed;
- (void)unmatchEthernet;
@end

@implementation NEAppPushPlugin

- (void)handleProviderInstallationStatus:(int64_t)a3
{
  v5 = [(NEPlugin *)self delegateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100017DB0;
  v6[3] = &unk_1000EB0D8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (void)handleProviderStopped
{
  v3 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017E8C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)sendExtensionFailed
{
  v3 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017F68;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)unmatchEthernet
{
  v3 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018044;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)reportPushToTalkMessage:(id)a3
{
  v4 = a3;
  v5 = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001814C;
  v7[3] = &unk_1000EB198;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)reportIncomingCall:(id)a3
{
  v4 = a3;
  v5 = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018254;
  v7[3] = &unk_1000EB198;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)handleProviderError:(id)a3 forMessageID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NEPlugin *)self delegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018380;
  block[3] = &unk_1000EABC8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handleProviderError:(id)a3
{
  v4 = a3;
  v5 = [(NEPlugin *)self delegateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001848C;
  v7[3] = &unk_1000EB198;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end