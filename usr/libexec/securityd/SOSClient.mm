@interface SOSClient
- (BOOL)SOSMonitorModeSOSIsActive;
- (id)SOSMonitorModeSOSIsActiveDescription;
- (id)initSOSClientWithAccount:(id)account;
- (void)SOSMonitorModeDisableSOS;
- (void)SOSMonitorModeEnableSOS;
- (void)SOSMonitorModeSOSIsActiveWithCallback:(id)callback;
- (void)accountStatus:(id)status;
- (void)assertStashedAccountCredential:(id)credential;
- (void)circleHash:(id)hash;
- (void)getWatchdogParameters:(id)parameters;
- (void)ghostBustInfo:(id)info;
- (void)iCloudIdentityStatus:(id)status;
- (void)iCloudIdentityStatus_internal:(id)status_internal;
- (void)importInitialSyncCredentials:(id)credentials complete:(id)complete;
- (void)kvsPerformanceCounters:(id)counters;
- (void)rateLimitingPerformanceCounters:(id)counters;
- (void)removeV0Peers:(id)peers;
- (void)rpcTriggerBackup:(id)backup complete:(id)complete;
- (void)rpcTriggerRingUpdate:(id)update;
- (void)rpcTriggerSync:(id)sync complete:(id)complete;
- (void)setWatchdogParmeters:(id)parmeters complete:(id)complete;
- (void)stashedCredentialPublicKey:(id)key;
- (void)userPublicKey:(id)key;
@end

@implementation SOSClient

- (id)SOSMonitorModeSOSIsActiveDescription
{
  account = [(SOSClient *)self account];
  sOSMonitorModeSOSIsActiveDescription = [account SOSMonitorModeSOSIsActiveDescription];

  return sOSMonitorModeSOSIsActiveDescription;
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

- (void)SOSMonitorModeSOSIsActiveWithCallback:(id)callback
{
  callbackCopy = callback;
  account = [(SOSClient *)self account];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025A100;
  v7[3] = &unk_100347638;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  [account performTransaction:v7];
}

- (void)SOSMonitorModeEnableSOS
{
  account = [(SOSClient *)self account];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025A238;
  v4[3] = &unk_1003475E8;
  v4[4] = self;
  [account performTransaction:v4];
}

- (void)SOSMonitorModeDisableSOS
{
  account = [(SOSClient *)self account];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025A304;
  v4[3] = &unk_1003475E8;
  v4[4] = self;
  [account performTransaction:v4];
}

- (void)removeV0Peers:(id)peers
{
  peersCopy = peers;
  account = [(SOSClient *)self account];
  [account removeV0Peers:peersCopy];
}

- (void)iCloudIdentityStatus_internal:(id)status_internal
{
  status_internalCopy = status_internal;
  account = [(SOSClient *)self account];
  [account iCloudIdentityStatus_internal:status_internalCopy];
}

- (void)rpcTriggerRingUpdate:(id)update
{
  updateCopy = update;
  if ([(SOSClient *)self SOSMonitorModeSOSIsActive])
  {
    account = [(SOSClient *)self account];
    [account rpcTriggerRingUpdate:updateCopy];
  }

  else
  {
    v5 = [NSError alloc];
    account = [v5 initWithDomain:kSOSErrorDomain code:10 userInfo:&__NSDictionary0__struct];
    updateCopy[2](updateCopy);
  }
}

- (void)rpcTriggerBackup:(id)backup complete:(id)complete
{
  backupCopy = backup;
  completeCopy = complete;
  if ([(SOSClient *)self SOSMonitorModeSOSIsActive])
  {
    account = [(SOSClient *)self account];
    [account rpcTriggerBackup:backupCopy complete:completeCopy];
  }

  else
  {
    v8 = [NSError alloc];
    account = [v8 initWithDomain:kSOSErrorDomain code:10 userInfo:&__NSDictionary0__struct];
    completeCopy[2](completeCopy, account);
  }
}

- (void)accountStatus:(id)status
{
  statusCopy = status;
  account = [(SOSClient *)self account];
  [account accountStatus:statusCopy];
}

- (void)iCloudIdentityStatus:(id)status
{
  statusCopy = status;
  account = [(SOSClient *)self account];
  [account iCloudIdentityStatus:statusCopy];
}

- (void)ghostBustInfo:(id)info
{
  infoCopy = info;
  account = [(SOSClient *)self account];
  [account ghostBustInfo:infoCopy];
}

- (void)setWatchdogParmeters:(id)parmeters complete:(id)complete
{
  completeCopy = complete;
  parmetersCopy = parmeters;
  account = [(SOSClient *)self account];
  [account setWatchdogParmeters:parmetersCopy complete:completeCopy];
}

- (void)getWatchdogParameters:(id)parameters
{
  parametersCopy = parameters;
  account = [(SOSClient *)self account];
  [account getWatchdogParameters:parametersCopy];
}

- (void)rpcTriggerSync:(id)sync complete:(id)complete
{
  syncCopy = sync;
  completeCopy = complete;
  if ([(SOSClient *)self SOSMonitorModeSOSIsActive])
  {
    account = [(SOSClient *)self account];
    [account rpcTriggerSync:syncCopy complete:completeCopy];
  }

  else
  {
    completeCopy[2](completeCopy, 1, 0);
  }
}

- (void)importInitialSyncCredentials:(id)credentials complete:(id)complete
{
  credentialsCopy = credentials;
  completeCopy = complete;
  if ([(SOSClient *)self checkEntitlement:@"com.apple.private.security.initial-sync"])
  {
    account = [(SOSClient *)self account];
    [account importInitialSyncCredentials:credentialsCopy complete:completeCopy];
  }

  else
  {
    account = [NSError errorWithDomain:kSOSErrorDomain code:7 userInfo:0];
    completeCopy[2](completeCopy, 0, account);
  }
}

- (void)circleHash:(id)hash
{
  hashCopy = hash;
  account = [(SOSClient *)self account];
  [account circleHash:hashCopy];
}

- (void)assertStashedAccountCredential:(id)credential
{
  credentialCopy = credential;
  account = [(SOSClient *)self account];
  [account assertStashedAccountCredential:credentialCopy];
}

- (void)stashedCredentialPublicKey:(id)key
{
  keyCopy = key;
  account = [(SOSClient *)self account];
  [account stashedCredentialPublicKey:keyCopy];
}

- (void)rateLimitingPerformanceCounters:(id)counters
{
  countersCopy = counters;
  account = [(SOSClient *)self account];
  [account rateLimitingPerformanceCounters:countersCopy];
}

- (void)kvsPerformanceCounters:(id)counters
{
  countersCopy = counters;
  account = [(SOSClient *)self account];
  [account kvsPerformanceCounters:countersCopy];
}

- (void)userPublicKey:(id)key
{
  keyCopy = key;
  account = [(SOSClient *)self account];
  [account userPublicKey:keyCopy];
}

- (id)initSOSClientWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = SOSClient;
  v6 = [(SOSClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

@end