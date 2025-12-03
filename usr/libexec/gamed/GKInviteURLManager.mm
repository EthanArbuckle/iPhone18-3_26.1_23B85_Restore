@interface GKInviteURLManager
+ (id)sharedManager;
- (BOOL)isRecordEqualToMostRecentInviteShare:(id)share;
- (CKRecordID)mostRecentInviteShareRootRecordID;
- (GKInviteURLManager)init;
- (void)setMostRecentInviteShareRootRecordID:(id)d;
@end

@implementation GKInviteURLManager

+ (id)sharedManager
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "GKInviteURLManager sharedManager", v6, 2u);
  }

  if (qword_1003B9190 != -1)
  {
    sub_10028D49C();
  }

  v4 = qword_1003B9188;

  return v4;
}

- (GKInviteURLManager)init
{
  v6.receiver = self;
  v6.super_class = GKInviteURLManager;
  v2 = [(GKInviteURLManager *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    [(GKInviteURLManager *)v2 setAcceptingInProgressRecordIDs:v3];

    v4 = dispatch_queue_create("com.apple.gamecenter.inviteurlmanager", &_dispatch_queue_attr_concurrent);
    [(GKInviteURLManager *)v2 setInviteManagerQueue:v4];
  }

  return v2;
}

- (BOOL)isRecordEqualToMostRecentInviteShare:(id)share
{
  if (!share)
  {
    return 0;
  }

  recordID = [share recordID];
  mostRecentInviteShareRootRecordID = [(GKInviteURLManager *)self mostRecentInviteShareRootRecordID];
  v6 = [recordID isEqual:mostRecentInviteShareRootRecordID];

  return v6;
}

- (CKRecordID)mostRecentInviteShareRootRecordID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000F7C3C;
  v11 = sub_1000F7C4C;
  v12 = 0;
  inviteManagerQueue = [(GKInviteURLManager *)self inviteManagerQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F7C54;
  v6[3] = &unk_1003624A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(inviteManagerQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setMostRecentInviteShareRootRecordID:(id)d
{
  dCopy = d;
  if (self->_mostRecentInviteShareRootRecordID != dCopy)
  {
    inviteManagerQueue = [(GKInviteURLManager *)self inviteManagerQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000F7D28;
    v6[3] = &unk_1003610B8;
    v6[4] = self;
    v7 = dCopy;
    dispatch_barrier_async(inviteManagerQueue, v6);
  }
}

@end