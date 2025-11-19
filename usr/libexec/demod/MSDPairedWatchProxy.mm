@interface MSDPairedWatchProxy
+ (id)sharedInstance;
- (BOOL)canLockSnapshot;
- (BOOL)canRevertSnapshot;
- (BOOL)canUnlockSnapshot;
- (BOOL)canUpdateContent;
- (BOOL)lockSnapshot;
- (BOOL)revertSnapshot;
- (BOOL)unlockSnapshot;
- (MSDPairedWatchProxy)init;
- (void)_updateSyncStatusFromSyncSession:(id)a3;
- (void)bootstrap;
- (void)syncSessionObserver:(id)a3 didReceiveUpdate:(id)a4;
@end

@implementation MSDPairedWatchProxy

+ (id)sharedInstance
{
  if (qword_1001A5660 != -1)
  {
    sub_1000CCB60();
  }

  v3 = qword_1001A5658;

  return v3;
}

- (MSDPairedWatchProxy)init
{
  v5.receiver = self;
  v5.super_class = MSDPairedWatchProxy;
  v2 = [(MSDPairedDeviceProxy *)&v5 init];
  if (v2)
  {
    v3 = [(MSDIDSHandler *)[MSDCompanionIDSHandler alloc] initWithDelegate:v2];
    [(MSDPairedWatchProxy *)v2 setIdsHandler:v3];
  }

  return v2;
}

- (void)bootstrap
{
  v7.receiver = self;
  v7.super_class = MSDPairedWatchProxy;
  [(MSDPairedDeviceProxy *)&v7 bootstrap];
  v3 = [(MSDPairedWatchProxy *)self idsHandler];
  [v3 start];

  [(MSDPairedWatchProxy *)self setSyncState:0];
  v4 = objc_alloc_init(PSYSyncSessionObserver);
  [(MSDPairedWatchProxy *)self setSyncSessionObserver:v4];

  v5 = [(MSDPairedWatchProxy *)self syncSessionObserver];
  [v5 setDelegate:self];

  v6 = [(MSDPairedWatchProxy *)self syncSessionObserver];
  [v6 startObservingSyncSessionsWithCompletion:&stru_10016A6F0];
}

- (BOOL)canUpdateContent
{
  v5 = @"ForDryRun";
  v6 = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:0 withPayload:v3];

  return self;
}

- (BOOL)canLockSnapshot
{
  v5[0] = @"SnapshotAction";
  v5[1] = @"ForDryRun";
  v6[0] = &off_10017AF78;
  v6[1] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:1 withPayload:v3];

  return self;
}

- (BOOL)canUnlockSnapshot
{
  v5[0] = @"SnapshotAction";
  v5[1] = @"ForDryRun";
  v6[0] = &off_10017AF90;
  v6[1] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:1 withPayload:v3];

  return self;
}

- (BOOL)canRevertSnapshot
{
  v5[0] = @"SnapshotAction";
  v5[1] = @"ForDryRun";
  v6[0] = &off_10017AFA8;
  v6[1] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:1 withPayload:v3];

  return self;
}

- (BOOL)lockSnapshot
{
  v5 = @"SnapshotAction";
  v6 = &off_10017AF78;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:1 withPayload:v3];

  return self;
}

- (BOOL)unlockSnapshot
{
  v5 = @"SnapshotAction";
  v6 = &off_10017AF90;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:1 withPayload:v3];

  return self;
}

- (BOOL)revertSnapshot
{
  v5 = @"SnapshotAction";
  v6 = &off_10017AFA8;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:1 withPayload:v3];

  return self;
}

- (void)syncSessionObserver:(id)a3 didReceiveUpdate:(id)a4
{
  v5 = [a4 updatedSession];
  [(MSDPairedWatchProxy *)self _updateSyncStatusFromSyncSession:v5];
}

- (void)_updateSyncStatusFromSyncSession:(id)a3
{
  v4 = a3;
  if ([v4 syncSessionType] != 1)
  {
    v5 = [v4 syncSessionState];
    v6 = [v4 syncSessionType];
    v7 = NSStringfromPSYSyncSessionType();
    if (v5 == 2)
    {
      if ([(MSDPairedWatchProxy *)self syncState]== 2)
      {
        goto LABEL_18;
      }

      [(MSDPairedWatchProxy *)self setSyncState:2];
      v10 = sub_100063A54();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Paired device sync just completed! Type: %{public}@", &v13, 0xCu);
      }

      v11 = +[MSDTargetDevice sharedInstance];
      [v11 setWaitingForCommand:1];

      if (v6)
      {
        goto LABEL_18;
      }

      v12 = +[MSDProgressUpdater sharedInstance];
      [v12 updateStage:100];

      v8 = +[MSDUIHelper sharedInstance];
      [v8 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1];
    }

    else if (v5 == 1)
    {
      if ([(MSDPairedWatchProxy *)self syncState]== 1)
      {
LABEL_18:

        goto LABEL_19;
      }

      [(MSDPairedWatchProxy *)self setSyncState:1];
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Paired device sync has started! Type: %{public}@", &v13, 0xCu);
      }

      v8 = +[MSDProgressUpdater sharedInstance];
      [v8 updateStage:32];
    }

    else
    {
      if (v5 || ![(MSDPairedWatchProxy *)self syncState])
      {
        goto LABEL_18;
      }

      [(MSDPairedWatchProxy *)self setSyncState:0];
      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Paired device sync is inactive! Type: %{public}@", &v13, 0xCu);
      }
    }

    goto LABEL_18;
  }

LABEL_19:
}

@end