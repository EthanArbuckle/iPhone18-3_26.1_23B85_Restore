@interface KTSystemStateProvider
- (BOOL)pendingChanges;
- (BOOL)treeStateUnstable:(id)unstable logBeginTime:(unint64_t)time;
- (KTSystemStateProvider)initWithDataStore:(id)store notificationCenter:(id)center;
- (void)reset;
- (void)setAccountStatus:(unint64_t)status;
- (void)setIDSAccountStatus:(unint64_t)status;
- (void)setKTAccountKey:(id)key;
- (void)setPendingChanges:(BOOL)changes;
- (void)setSelfDevices:(id)devices;
- (void)setSelfStatus:(unint64_t)status;
- (void)setServerOptInState:(unint64_t)state;
- (void)setSystemStatus:(unint64_t)status;
@end

@implementation KTSystemStateProvider

- (KTSystemStateProvider)initWithDataStore:(id)store notificationCenter:(id)center
{
  storeCopy = store;
  centerCopy = center;
  v14.receiver = self;
  v14.super_class = KTSystemStateProvider;
  v8 = [(KTSystemStateProvider *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(KTSystemStateProvider *)v8 setDataStore:storeCopy];
    v10 = objc_alloc_init(KTSelfStatusResult);
    [(KTSystemStateProvider *)v9 setKtStatus:v10];

    [(KTSystemStateProvider *)v9 setDnc:centerCopy];
    v11 = objc_alloc_init(KTCondition);
    [(KTSystemStateProvider *)v9 setStatusFilled:v11];

    v12 = v9;
  }

  return v9;
}

- (BOOL)treeStateUnstable:(id)unstable logBeginTime:(unint64_t)time
{
  unstableCopy = unstable;
  dataStore = [(KTSystemStateProvider *)self dataStore];
  v12 = 0;
  v8 = [dataStore isMapStillPopulating:unstableCopy logBeginMs:time error:&v12];

  v9 = v12;
  if (v9)
  {
    if (qword_10039CAB8 != -1)
    {
      sub_10025CFDC();
    }

    v10 = qword_10039CAC0;
    if (os_log_type_enabled(qword_10039CAC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "KTSystemStateProvider could not fetch tree state: %@", buf, 0xCu);
    }
  }

  return v8;
}

- (void)setPendingChanges:(BOOL)changes
{
  changesCopy = changes;
  ktStatus = [(KTSystemStateProvider *)self ktStatus];
  pendingStatusChanges = [ktStatus pendingStatusChanges];

  if (pendingStatusChanges != changesCopy)
  {
    ktStatus2 = [(KTSystemStateProvider *)self ktStatus];
    v8 = ktStatus2;
    if (changesCopy)
    {
      [ktStatus2 setPendingStatusChanges:1];

      statusFilled = objc_alloc_init(KTCondition);
      [(KTSystemStateProvider *)self setStatusFilled:?];
    }

    else
    {
      [ktStatus2 setPendingStatusChanges:0];

      statusFilled = [(KTSystemStateProvider *)self statusFilled];
      [(KTCondition *)statusFilled fulfill];
    }
  }
}

- (BOOL)pendingChanges
{
  ktStatus = [(KTSystemStateProvider *)self ktStatus];
  pendingStatusChanges = [ktStatus pendingStatusChanges];

  return pendingStatusChanges;
}

- (void)reset
{
  v3 = objc_alloc_init(KTSelfStatusResult);
  [(KTSystemStateProvider *)self setKtStatus:v3];
}

- (void)setServerOptInState:(unint64_t)state
{
  ktStatus = [(KTSystemStateProvider *)self ktStatus];
  serverOptIn = [ktStatus serverOptIn];

  if (serverOptIn != state)
  {
    ktStatus2 = [(KTSystemStateProvider *)self ktStatus];
    [ktStatus2 setServerOptIn:state];

    v8 = [(KTSystemStateProvider *)self dnc];
    v9 = kTransparencyNotificationStatusChanged;
    v12 = kKTStatusServerOptInState;
    v10 = [NSNumber numberWithUnsignedInteger:state];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v8 postNotificationName:v9 object:0 userInfo:v11 deliverImmediately:1];
  }
}

- (void)setAccountStatus:(unint64_t)status
{
  ktStatus = [(KTSystemStateProvider *)self ktStatus];
  accountStatus = [ktStatus accountStatus];

  if (accountStatus != status)
  {
    ktStatus2 = [(KTSystemStateProvider *)self ktStatus];
    [ktStatus2 setAccountStatus:status];

    v8 = [(KTSystemStateProvider *)self dnc];
    v9 = kTransparencyNotificationAccountStatusChanged;
    v10 = kKTStatusAccountStatus;
    v19 = kKTStatusAccountStatus;
    v11 = [NSNumber numberWithUnsignedInteger:status];
    v20 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [v8 postNotificationName:v9 object:0 userInfo:v12 deliverImmediately:1];

    v13 = [(KTSystemStateProvider *)self dnc];
    v14 = kTransparencyNotificationStatusChanged;
    v17 = v10;
    v15 = [NSNumber numberWithUnsignedInteger:status];
    v18 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v13 postNotificationName:v14 object:0 userInfo:v16 deliverImmediately:1];
  }
}

- (void)setSelfStatus:(unint64_t)status
{
  ktStatus = [(KTSystemStateProvider *)self ktStatus];
  selfStatus = [ktStatus selfStatus];

  if (selfStatus != status)
  {
    ktStatus2 = [(KTSystemStateProvider *)self ktStatus];
    [ktStatus2 setSelfStatus:status];

    v8 = [(KTSystemStateProvider *)self dnc];
    v9 = kTransparencyNotificationStatusChanged;
    v12 = kKTStatusSelfStatus;
    v10 = [NSNumber numberWithUnsignedInteger:status];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v8 postNotificationName:v9 object:0 userInfo:v11 deliverImmediately:1];
  }
}

- (void)setSelfDevices:(id)devices
{
  devicesCopy = devices;
  ktStatus = [(KTSystemStateProvider *)self ktStatus];
  [ktStatus setSelfDevices:devicesCopy];
}

- (void)setSystemStatus:(unint64_t)status
{
  ktStatus = [(KTSystemStateProvider *)self ktStatus];
  systemStatus = [ktStatus systemStatus];

  if (systemStatus != status)
  {
    ktStatus2 = [(KTSystemStateProvider *)self ktStatus];
    [ktStatus2 setSystemStatus:status];

    v8 = [(KTSystemStateProvider *)self dnc];
    v9 = kTransparencyNotificationStatusChanged;
    v12 = kKTStatusSystemStatus;
    v10 = [NSNumber numberWithUnsignedInteger:status];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v8 postNotificationName:v9 object:0 userInfo:v11 deliverImmediately:1];
  }
}

- (void)setKTAccountKey:(id)key
{
  keyCopy = key;
  ktStatus = [(KTSystemStateProvider *)self ktStatus];
  accountKey = [ktStatus accountKey];
  v7 = [accountKey isEqual:keyCopy];

  if ((v7 & 1) == 0)
  {
    ktStatus2 = [(KTSystemStateProvider *)self ktStatus];
    [ktStatus2 setAccountKey:keyCopy];

    v9 = [(KTSystemStateProvider *)self dnc];
    v10 = kTransparencyNotificationStatusChanged;
    v12 = kKTStatusAccountKey;
    v13 = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v9 postNotificationName:v10 object:0 userInfo:v11 deliverImmediately:1];
  }
}

- (void)setIDSAccountStatus:(unint64_t)status
{
  ktStatus = [(KTSystemStateProvider *)self ktStatus];
  idsAccountStatus = [ktStatus idsAccountStatus];

  if (idsAccountStatus != status)
  {
    ktStatus2 = [(KTSystemStateProvider *)self ktStatus];
    [ktStatus2 setIdsAccountStatus:status];

    v8 = [(KTSystemStateProvider *)self dnc];
    v9 = kTransparencyNotificationStatusChanged;
    v12 = kKTStatusIDSAccount;
    v10 = [NSNumber numberWithUnsignedInteger:status];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v8 postNotificationName:v9 object:0 userInfo:v11 deliverImmediately:1];
  }
}

@end