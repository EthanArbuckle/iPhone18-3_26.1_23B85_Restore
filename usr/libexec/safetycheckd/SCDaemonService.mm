@interface SCDaemonService
+ (id)exportedInterface;
- (SCDaemonService)initWithClient:(id)client;
- (void)fetchSharedResourcesWithCompletion:(id)completion;
- (void)fetchStatusWithCompletion:(id)completion;
- (void)handleSignals:(id)signals completion:(id)completion;
- (void)postWifiSyncNotificationWithCompletion:(id)completion;
- (void)rejectBlockingRequest:(id)request withCompletion:(id)completion;
- (void)rejectRequest:(id)request withCompletion:(id)completion;
- (void)resetFeatureWithCompletion:(id)completion;
- (void)setReminderDelays:(id)delays completion:(id)completion;
- (void)stopSharingWithParticipants:(id)participants completion:(id)completion;
- (void)userOpenedSafetyCheckWithCompletion:(id)completion;
@end

@implementation SCDaemonService

- (SCDaemonService)initWithClient:(id)client
{
  clientCopy = client;
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

    [(SCDaemonService *)v5 setClient:clientCopy];
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

- (void)userOpenedSafetyCheckWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(SCDaemonService *)self client];
  if (client && (v5 = client, -[SCDaemonService client](self, "client"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasSharingReminderAccess], v6, v5, v7))
  {
    sharingReminderService = [(SCDaemonService *)self sharingReminderService];
    [sharingReminderService userOpenedSafetyCheckWithCompletion:completionCopy];
  }

  else
  {
    [(SCDaemonService *)self rejectRequest:@"userOpenedSafetyCheck" withCompletion:completionCopy];
  }
}

- (void)handleSignals:(id)signals completion:(id)completion
{
  signalsCopy = signals;
  completionCopy = completion;
  client = [(SCDaemonService *)self client];
  if (client && (v8 = client, -[SCDaemonService client](self, "client"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasSharingReminderAccess], v9, v8, v10))
  {
    sharingReminderService = [(SCDaemonService *)self sharingReminderService];
    [sharingReminderService handleSignals:signalsCopy completion:completionCopy];
  }

  else
  {
    [(SCDaemonService *)self rejectRequest:@"handleSignals" withCompletion:completionCopy];
  }
}

- (void)fetchStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(SCDaemonService *)self client];
  if (client && (v6 = client, -[SCDaemonService client](self, "client"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasSharingReminderFeatureAccess], v7, v6, v8))
  {
    sharingReminderService = [(SCDaemonService *)self sharingReminderService];
    [sharingReminderService fetchStatusWithCompletion:completionCopy];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000020FC;
    v10[3] = &unk_100010488;
    v11 = completionCopy;
    [(SCDaemonService *)self rejectRequest:@"fetchStatus" withCompletion:v10];
  }
}

- (void)postWifiSyncNotificationWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(SCDaemonService *)self client];
  if (client && (v5 = client, -[SCDaemonService client](self, "client"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasSharingReminderFeatureAccess], v6, v5, v7))
  {
    sharingReminderService = [(SCDaemonService *)self sharingReminderService];
    [sharingReminderService postWifiSyncNotificationWithCompletion:completionCopy];
  }

  else
  {
    [(SCDaemonService *)self rejectRequest:@"postWifiSyncNotification" withCompletion:completionCopy];
  }
}

- (void)resetFeatureWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(SCDaemonService *)self client];
  if (client && (v5 = client, -[SCDaemonService client](self, "client"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 hasSharingReminderFeatureAccess], v6, v5, v7))
  {
    sharingReminderService = [(SCDaemonService *)self sharingReminderService];
    [sharingReminderService resetFeatureWithCompletion:completionCopy];
  }

  else
  {
    [(SCDaemonService *)self rejectRequest:@"resetFeatureWithCompletion" withCompletion:completionCopy];
  }
}

- (void)setReminderDelays:(id)delays completion:(id)completion
{
  delaysCopy = delays;
  completionCopy = completion;
  client = [(SCDaemonService *)self client];
  if (client && (v8 = client, -[SCDaemonService client](self, "client"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasSharingReminderFeatureAccess], v9, v8, v10))
  {
    sharingReminderService = [(SCDaemonService *)self sharingReminderService];
    [sharingReminderService setReminderDelays:delaysCopy completion:completionCopy];
  }

  else
  {
    [(SCDaemonService *)self rejectRequest:@"setReminderDelays" withCompletion:completionCopy];
  }
}

- (void)fetchSharedResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(SCDaemonService *)self client];
  if (client && (v6 = client, -[SCDaemonService client](self, "client"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasBlockingAccess], v7, v6, v8))
  {
    sharingPermissionsService = [(SCDaemonService *)self sharingPermissionsService];
    [sharingPermissionsService fetchSharedResourcesOnQueue:&_dispatch_main_q withCompletion:completionCopy];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000250C;
    v10[3] = &unk_1000104B0;
    v11 = completionCopy;
    [(SCDaemonService *)self rejectBlockingRequest:@"fetchSharingPeopleWithCompletion:" withCompletion:v10];
  }
}

- (void)stopSharingWithParticipants:(id)participants completion:(id)completion
{
  participantsCopy = participants;
  completionCopy = completion;
  client = [(SCDaemonService *)self client];
  if (client && (v8 = client, -[SCDaemonService client](self, "client"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hasBlockingAccess], v9, v8, v10))
  {
    sharingPermissionsService = [(SCDaemonService *)self sharingPermissionsService];
    [sharingPermissionsService stopSharingWithParticipants:participantsCopy completion:completionCopy];
  }

  else
  {
    [(SCDaemonService *)self rejectBlockingRequest:@"stopSharingSources:" withCompletion:completionCopy];
  }
}

- (void)rejectRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  client = [(SCDaemonService *)self client];

  v9 = sub_100002AF4();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (client)
  {
    if (v10)
    {
      sub_1000095C8(requestCopy, self);
    }
  }

  else if (v10)
  {
    sub_10000966C(requestCopy, v9);
  }

  v11 = [SCDaemonError errorWithCode:5];
  completionCopy[2](completionCopy, 0, v11);
}

- (void)rejectBlockingRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  client = [(SCDaemonService *)self client];

  v9 = sub_100002AF4();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (client)
  {
    if (v10)
    {
      sub_1000095C8(requestCopy, self);
    }
  }

  else if (v10)
  {
    sub_10000966C(requestCopy, v9);
  }

  v11 = [SCDaemonError errorWithCode:5];
  completionCopy[2](completionCopy, v11);
}

@end