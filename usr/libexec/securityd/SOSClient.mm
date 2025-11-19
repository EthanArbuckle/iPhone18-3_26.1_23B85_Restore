@interface SOSClient
- (BOOL)SOSMonitorModeSOSIsActive;
- (id)SOSMonitorModeSOSIsActiveDescription;
- (id)initSOSClientWithAccount:(id)a3;
- (void)SOSMonitorModeDisableSOS;
- (void)SOSMonitorModeEnableSOS;
- (void)SOSMonitorModeSOSIsActiveWithCallback:(id)a3;
- (void)accountStatus:(id)a3;
- (void)assertStashedAccountCredential:(id)a3;
- (void)circleHash:(id)a3;
- (void)getWatchdogParameters:(id)a3;
- (void)ghostBustInfo:(id)a3;
- (void)iCloudIdentityStatus:(id)a3;
- (void)iCloudIdentityStatus_internal:(id)a3;
- (void)importInitialSyncCredentials:(id)a3 complete:(id)a4;
- (void)kvsPerformanceCounters:(id)a3;
- (void)rateLimitingPerformanceCounters:(id)a3;
- (void)removeV0Peers:(id)a3;
- (void)rpcTriggerBackup:(id)a3 complete:(id)a4;
- (void)rpcTriggerRingUpdate:(id)a3;
- (void)rpcTriggerSync:(id)a3 complete:(id)a4;
- (void)setWatchdogParmeters:(id)a3 complete:(id)a4;
- (void)stashedCredentialPublicKey:(id)a3;
- (void)userPublicKey:(id)a3;
@end

@implementation SOSClient

- (id)SOSMonitorModeSOSIsActiveDescription
{
  v2 = [(SOSClient *)self account];
  v3 = [v2 SOSMonitorModeSOSIsActiveDescription];

  return v3;
}

- (BOOL)SOSMonitorModeSOSIsActive
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10025A038;
  v5[3] = &unk_100347660;
  v7 = &v8;
  v3 = dispatch_semaphore_create(0);
  v6 = v3;
  [(SOSClient *)self SOSMonitorModeSOSIsActiveWithCallback:v5];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return self;
}

- (void)SOSMonitorModeSOSIsActiveWithCallback:(id)a3
{
  v4 = a3;
  v5 = [(SOSClient *)self account];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025A100;
  v7[3] = &unk_100347638;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performTransaction:v7];
}

- (void)SOSMonitorModeEnableSOS
{
  v3 = [(SOSClient *)self account];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025A238;
  v4[3] = &unk_1003475E8;
  v4[4] = self;
  [v3 performTransaction:v4];
}

- (void)SOSMonitorModeDisableSOS
{
  v3 = [(SOSClient *)self account];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025A304;
  v4[3] = &unk_1003475E8;
  v4[4] = self;
  [v3 performTransaction:v4];
}

- (void)removeV0Peers:(id)a3
{
  v4 = a3;
  v5 = [(SOSClient *)self account];
  [v5 removeV0Peers:v4];
}

- (void)iCloudIdentityStatus_internal:(id)a3
{
  v4 = a3;
  v5 = [(SOSClient *)self account];
  [v5 iCloudIdentityStatus_internal:v4];
}

- (void)rpcTriggerRingUpdate:(id)a3
{
  v4 = a3;
  if ([(SOSClient *)self SOSMonitorModeSOSIsActive])
  {
    v6 = [(SOSClient *)self account];
    [v6 rpcTriggerRingUpdate:v4];
  }

  else
  {
    v5 = [NSError alloc];
    v6 = [v5 initWithDomain:kSOSErrorDomain code:10 userInfo:&__NSDictionary0__struct];
    v4[2](v4);
  }
}

- (void)rpcTriggerBackup:(id)a3 complete:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(SOSClient *)self SOSMonitorModeSOSIsActive])
  {
    v7 = [(SOSClient *)self account];
    [v7 rpcTriggerBackup:v9 complete:v6];
  }

  else
  {
    v8 = [NSError alloc];
    v7 = [v8 initWithDomain:kSOSErrorDomain code:10 userInfo:&__NSDictionary0__struct];
    v6[2](v6, v7);
  }
}

- (void)accountStatus:(id)a3
{
  v4 = a3;
  v5 = [(SOSClient *)self account];
  [v5 accountStatus:v4];
}

- (void)iCloudIdentityStatus:(id)a3
{
  v4 = a3;
  v5 = [(SOSClient *)self account];
  [v5 iCloudIdentityStatus:v4];
}

- (void)ghostBustInfo:(id)a3
{
  v4 = a3;
  v5 = [(SOSClient *)self account];
  [v5 ghostBustInfo:v4];
}

- (void)setWatchdogParmeters:(id)a3 complete:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SOSClient *)self account];
  [v8 setWatchdogParmeters:v7 complete:v6];
}

- (void)getWatchdogParameters:(id)a3
{
  v4 = a3;
  v5 = [(SOSClient *)self account];
  [v5 getWatchdogParameters:v4];
}

- (void)rpcTriggerSync:(id)a3 complete:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(SOSClient *)self SOSMonitorModeSOSIsActive])
  {
    v7 = [(SOSClient *)self account];
    [v7 rpcTriggerSync:v8 complete:v6];
  }

  else
  {
    v6[2](v6, 1, 0);
  }
}

- (void)importInitialSyncCredentials:(id)a3 complete:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(SOSClient *)self checkEntitlement:@"com.apple.private.security.initial-sync"])
  {
    v7 = [(SOSClient *)self account];
    [v7 importInitialSyncCredentials:v8 complete:v6];
  }

  else
  {
    v7 = [NSError errorWithDomain:kSOSErrorDomain code:7 userInfo:0];
    v6[2](v6, 0, v7);
  }
}

- (void)circleHash:(id)a3
{
  v4 = a3;
  v5 = [(SOSClient *)self account];
  [v5 circleHash:v4];
}

- (void)assertStashedAccountCredential:(id)a3
{
  v4 = a3;
  v5 = [(SOSClient *)self account];
  [v5 assertStashedAccountCredential:v4];
}

- (void)stashedCredentialPublicKey:(id)a3
{
  v4 = a3;
  v5 = [(SOSClient *)self account];
  [v5 stashedCredentialPublicKey:v4];
}

- (void)rateLimitingPerformanceCounters:(id)a3
{
  v4 = a3;
  v5 = [(SOSClient *)self account];
  [v5 rateLimitingPerformanceCounters:v4];
}

- (void)kvsPerformanceCounters:(id)a3
{
  v4 = a3;
  v5 = [(SOSClient *)self account];
  [v5 kvsPerformanceCounters:v4];
}

- (void)userPublicKey:(id)a3
{
  v4 = a3;
  v5 = [(SOSClient *)self account];
  [v5 userPublicKey:v4];
}

- (id)initSOSClientWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SOSClient;
  v6 = [(SOSClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

@end