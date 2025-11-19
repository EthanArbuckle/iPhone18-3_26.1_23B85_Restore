@interface KTSystemStateProvider
- (BOOL)pendingChanges;
- (BOOL)treeStateUnstable:(id)a3 logBeginTime:(unint64_t)a4;
- (KTSystemStateProvider)initWithDataStore:(id)a3 notificationCenter:(id)a4;
- (void)reset;
- (void)setAccountStatus:(unint64_t)a3;
- (void)setIDSAccountStatus:(unint64_t)a3;
- (void)setKTAccountKey:(id)a3;
- (void)setPendingChanges:(BOOL)a3;
- (void)setSelfDevices:(id)a3;
- (void)setSelfStatus:(unint64_t)a3;
- (void)setServerOptInState:(unint64_t)a3;
- (void)setSystemStatus:(unint64_t)a3;
@end

@implementation KTSystemStateProvider

- (KTSystemStateProvider)initWithDataStore:(id)a3 notificationCenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = KTSystemStateProvider;
  v8 = [(KTSystemStateProvider *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(KTSystemStateProvider *)v8 setDataStore:v6];
    v10 = objc_alloc_init(KTSelfStatusResult);
    [(KTSystemStateProvider *)v9 setKtStatus:v10];

    [(KTSystemStateProvider *)v9 setDnc:v7];
    v11 = objc_alloc_init(KTCondition);
    [(KTSystemStateProvider *)v9 setStatusFilled:v11];

    v12 = v9;
  }

  return v9;
}

- (BOOL)treeStateUnstable:(id)a3 logBeginTime:(unint64_t)a4
{
  v6 = a3;
  v7 = [(KTSystemStateProvider *)self dataStore];
  v12 = 0;
  v8 = [v7 isMapStillPopulating:v6 logBeginMs:a4 error:&v12];

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

- (void)setPendingChanges:(BOOL)a3
{
  v3 = a3;
  v5 = [(KTSystemStateProvider *)self ktStatus];
  v6 = [v5 pendingStatusChanges];

  if (v6 != v3)
  {
    v7 = [(KTSystemStateProvider *)self ktStatus];
    v8 = v7;
    if (v3)
    {
      [v7 setPendingStatusChanges:1];

      v9 = objc_alloc_init(KTCondition);
      [(KTSystemStateProvider *)self setStatusFilled:?];
    }

    else
    {
      [v7 setPendingStatusChanges:0];

      v9 = [(KTSystemStateProvider *)self statusFilled];
      [(KTCondition *)v9 fulfill];
    }
  }
}

- (BOOL)pendingChanges
{
  v2 = [(KTSystemStateProvider *)self ktStatus];
  v3 = [v2 pendingStatusChanges];

  return v3;
}

- (void)reset
{
  v3 = objc_alloc_init(KTSelfStatusResult);
  [(KTSystemStateProvider *)self setKtStatus:v3];
}

- (void)setServerOptInState:(unint64_t)a3
{
  v5 = [(KTSystemStateProvider *)self ktStatus];
  v6 = [v5 serverOptIn];

  if (v6 != a3)
  {
    v7 = [(KTSystemStateProvider *)self ktStatus];
    [v7 setServerOptIn:a3];

    v8 = [(KTSystemStateProvider *)self dnc];
    v9 = kTransparencyNotificationStatusChanged;
    v12 = kKTStatusServerOptInState;
    v10 = [NSNumber numberWithUnsignedInteger:a3];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v8 postNotificationName:v9 object:0 userInfo:v11 deliverImmediately:1];
  }
}

- (void)setAccountStatus:(unint64_t)a3
{
  v5 = [(KTSystemStateProvider *)self ktStatus];
  v6 = [v5 accountStatus];

  if (v6 != a3)
  {
    v7 = [(KTSystemStateProvider *)self ktStatus];
    [v7 setAccountStatus:a3];

    v8 = [(KTSystemStateProvider *)self dnc];
    v9 = kTransparencyNotificationAccountStatusChanged;
    v10 = kKTStatusAccountStatus;
    v19 = kKTStatusAccountStatus;
    v11 = [NSNumber numberWithUnsignedInteger:a3];
    v20 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [v8 postNotificationName:v9 object:0 userInfo:v12 deliverImmediately:1];

    v13 = [(KTSystemStateProvider *)self dnc];
    v14 = kTransparencyNotificationStatusChanged;
    v17 = v10;
    v15 = [NSNumber numberWithUnsignedInteger:a3];
    v18 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v13 postNotificationName:v14 object:0 userInfo:v16 deliverImmediately:1];
  }
}

- (void)setSelfStatus:(unint64_t)a3
{
  v5 = [(KTSystemStateProvider *)self ktStatus];
  v6 = [v5 selfStatus];

  if (v6 != a3)
  {
    v7 = [(KTSystemStateProvider *)self ktStatus];
    [v7 setSelfStatus:a3];

    v8 = [(KTSystemStateProvider *)self dnc];
    v9 = kTransparencyNotificationStatusChanged;
    v12 = kKTStatusSelfStatus;
    v10 = [NSNumber numberWithUnsignedInteger:a3];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v8 postNotificationName:v9 object:0 userInfo:v11 deliverImmediately:1];
  }
}

- (void)setSelfDevices:(id)a3
{
  v4 = a3;
  v5 = [(KTSystemStateProvider *)self ktStatus];
  [v5 setSelfDevices:v4];
}

- (void)setSystemStatus:(unint64_t)a3
{
  v5 = [(KTSystemStateProvider *)self ktStatus];
  v6 = [v5 systemStatus];

  if (v6 != a3)
  {
    v7 = [(KTSystemStateProvider *)self ktStatus];
    [v7 setSystemStatus:a3];

    v8 = [(KTSystemStateProvider *)self dnc];
    v9 = kTransparencyNotificationStatusChanged;
    v12 = kKTStatusSystemStatus;
    v10 = [NSNumber numberWithUnsignedInteger:a3];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v8 postNotificationName:v9 object:0 userInfo:v11 deliverImmediately:1];
  }
}

- (void)setKTAccountKey:(id)a3
{
  v4 = a3;
  v5 = [(KTSystemStateProvider *)self ktStatus];
  v6 = [v5 accountKey];
  v7 = [v6 isEqual:v4];

  if ((v7 & 1) == 0)
  {
    v8 = [(KTSystemStateProvider *)self ktStatus];
    [v8 setAccountKey:v4];

    v9 = [(KTSystemStateProvider *)self dnc];
    v10 = kTransparencyNotificationStatusChanged;
    v12 = kKTStatusAccountKey;
    v13 = &__kCFBooleanTrue;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v9 postNotificationName:v10 object:0 userInfo:v11 deliverImmediately:1];
  }
}

- (void)setIDSAccountStatus:(unint64_t)a3
{
  v5 = [(KTSystemStateProvider *)self ktStatus];
  v6 = [v5 idsAccountStatus];

  if (v6 != a3)
  {
    v7 = [(KTSystemStateProvider *)self ktStatus];
    [v7 setIdsAccountStatus:a3];

    v8 = [(KTSystemStateProvider *)self dnc];
    v9 = kTransparencyNotificationStatusChanged;
    v12 = kKTStatusIDSAccount;
    v10 = [NSNumber numberWithUnsignedInteger:a3];
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v8 postNotificationName:v9 object:0 userInfo:v11 deliverImmediately:1];
  }
}

@end