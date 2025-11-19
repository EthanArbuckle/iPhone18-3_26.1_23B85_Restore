@interface SCDaemonService
+ (id)exportedInterface;
- (SCDaemonService)initWithClient:(id)a3;
- (void)fetchSharedResourcesWithCompletion:(id)a3;
- (void)fetchStatusWithCompletion:(id)a3;
- (void)handleSignals:(id)a3 completion:(id)a4;
- (void)postWifiSyncNotificationWithCompletion:(id)a3;
- (void)rejectBlockingRequest:(id)a3 withCompletion:(id)a4;
- (void)rejectRequest:(id)a3 withCompletion:(id)a4;
- (void)resetFeatureWithCompletion:(id)a3;
- (void)setReminderDelays:(id)a3 completion:(id)a4;
- (void)stopSharingWithParticipants:(id)a3 completion:(id)a4;
- (void)userOpenedSafetyCheckWithCompletion:(id)a3;
@end

@implementation SCDaemonService

- (SCDaemonService)initWithClient:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCDaemonService;
  v5 = [(SCDaemonService *)&v9 init];
  if (v5)
  {
    if (_os_feature_enabled_impl())
    {
      v6 = objc_alloc_init(SCSharingReminderServiceProvider);
      [(SCDaemonService *)v5 setSharingReminderService:v6];
    }

    v7 = objc_alloc_init(SCPermissionsService);
    [(SCDaemonService *)v5 setSharingPermissionsService:v7];

    [(SCDaemonService *)v5 setClient:v4];
  }

  return v5;
}

+ (id)exportedInterface
{
  if (qword_100015130 != -1)
  {
    sub_1000095B4();
  }

  v3 = qword_100015128;

  return v3;
}

- (void)userOpenedSafetyCheckWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(SCDaemonService *)self client];
  if (v4 && (v5 = v4, -[SCDaemonService client](self, "client"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasSharingReminderAccess], v6, v5, v7))
  {
    v8 = [(SCDaemonService *)self sharingReminderService];
    [v8 userOpenedSafetyCheckWithCompletion:v9];
  }

  else
  {
    [(SCDaemonService *)self rejectRequest:@"userOpenedSafetyCheck" withCompletion:v9];
  }
}

- (void)handleSignals:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(SCDaemonService *)self client];
  if (v7 && (v8 = v7, -[SCDaemonService client](self, "client"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasSharingReminderAccess], v9, v8, v10))
  {
    v11 = [(SCDaemonService *)self sharingReminderService];
    [v11 handleSignals:v12 completion:v6];
  }

  else
  {
    [(SCDaemonService *)self rejectRequest:@"handleSignals" withCompletion:v6];
  }
}

- (void)fetchStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCDaemonService *)self client];
  if (v5 && (v6 = v5, -[SCDaemonService client](self, "client"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasSharingReminderFeatureAccess], v7, v6, v8))
  {
    v9 = [(SCDaemonService *)self sharingReminderService];
    [v9 fetchStatusWithCompletion:v4];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000020FC;
    v10[3] = &unk_100010488;
    v11 = v4;
    [(SCDaemonService *)self rejectRequest:@"fetchStatus" withCompletion:v10];
  }
}

- (void)postWifiSyncNotificationWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(SCDaemonService *)self client];
  if (v4 && (v5 = v4, -[SCDaemonService client](self, "client"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasSharingReminderFeatureAccess], v6, v5, v7))
  {
    v8 = [(SCDaemonService *)self sharingReminderService];
    [v8 postWifiSyncNotificationWithCompletion:v9];
  }

  else
  {
    [(SCDaemonService *)self rejectRequest:@"postWifiSyncNotification" withCompletion:v9];
  }
}

- (void)resetFeatureWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(SCDaemonService *)self client];
  if (v4 && (v5 = v4, -[SCDaemonService client](self, "client"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasSharingReminderFeatureAccess], v6, v5, v7))
  {
    v8 = [(SCDaemonService *)self sharingReminderService];
    [v8 resetFeatureWithCompletion:v9];
  }

  else
  {
    [(SCDaemonService *)self rejectRequest:@"resetFeatureWithCompletion" withCompletion:v9];
  }
}

- (void)setReminderDelays:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(SCDaemonService *)self client];
  if (v7 && (v8 = v7, -[SCDaemonService client](self, "client"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasSharingReminderFeatureAccess], v9, v8, v10))
  {
    v11 = [(SCDaemonService *)self sharingReminderService];
    [v11 setReminderDelays:v12 completion:v6];
  }

  else
  {
    [(SCDaemonService *)self rejectRequest:@"setReminderDelays" withCompletion:v6];
  }
}

- (void)fetchSharedResourcesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SCDaemonService *)self client];
  if (v5 && (v6 = v5, -[SCDaemonService client](self, "client"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasBlockingAccess], v7, v6, v8))
  {
    v9 = [(SCDaemonService *)self sharingPermissionsService];
    [v9 fetchSharedResourcesOnQueue:&_dispatch_main_q withCompletion:v4];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000250C;
    v10[3] = &unk_1000104B0;
    v11 = v4;
    [(SCDaemonService *)self rejectBlockingRequest:@"fetchSharingPeopleWithCompletion:" withCompletion:v10];
  }
}

- (void)stopSharingWithParticipants:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(SCDaemonService *)self client];
  if (v7 && (v8 = v7, -[SCDaemonService client](self, "client"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasBlockingAccess], v9, v8, v10))
  {
    v11 = [(SCDaemonService *)self sharingPermissionsService];
    [v11 stopSharingWithParticipants:v12 completion:v6];
  }

  else
  {
    [(SCDaemonService *)self rejectBlockingRequest:@"stopSharingSources:" withCompletion:v6];
  }
}

- (void)rejectRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCDaemonService *)self client];

  v9 = sub_100002AF4();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v10)
    {
      sub_1000095C8(v6, self);
    }
  }

  else if (v10)
  {
    sub_10000966C(v6, v9);
  }

  v11 = [SCDaemonError errorWithCode:5];
  v7[2](v7, 0, v11);
}

- (void)rejectBlockingRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCDaemonService *)self client];

  v9 = sub_100002AF4();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v10)
    {
      sub_1000095C8(v6, self);
    }
  }

  else if (v10)
  {
    sub_10000966C(v6, v9);
  }

  v11 = [SCDaemonError errorWithCode:5];
  v7[2](v7, v11);
}

@end