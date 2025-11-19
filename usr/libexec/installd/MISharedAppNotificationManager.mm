@interface MISharedAppNotificationManager
+ (id)instanceForCurrentUser;
- (BOOL)clearPendingUpdates:(id)a3 error:(id *)a4;
- (BOOL)markAppAsUpdatedForOtherUsers:(id)a3 error:(id *)a4;
- (MISharedAppNotificationManager)init;
- (id)updatedAppsWithError:(id *)a3;
@end

@implementation MISharedAppNotificationManager

+ (id)instanceForCurrentUser
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021808;
  block[3] = &unk_100090CF8;
  block[4] = a1;
  if (qword_1000A9640 != -1)
  {
    dispatch_once(&qword_1000A9640, block);
  }

  v2 = qword_1000A9638;

  return v2;
}

- (MISharedAppNotificationManager)init
{
  v3.receiver = self;
  v3.super_class = MISharedAppNotificationManager;
  return [(MISharedAppNotificationManager *)&v3 init];
}

- (BOOL)markAppAsUpdatedForOtherUsers:(id)a3 error:(id *)a4
{
  v6 = sub_100010734("[MISharedAppNotificationManager markAppAsUpdatedForOtherUsers:error:]", 42, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v4, "[MISharedAppNotificationManager markAppAsUpdatedForOtherUsers:error:]");
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
  }

  return 0;
}

- (id)updatedAppsWithError:(id *)a3
{
  v5 = sub_100010734("[MISharedAppNotificationManager updatedAppsWithError:]", 51, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v3, "[MISharedAppNotificationManager updatedAppsWithError:]");
  if (a3)
  {
    v5 = v5;
    *a3 = v5;
  }

  return 0;
}

- (BOOL)clearPendingUpdates:(id)a3 error:(id *)a4
{
  v6 = sub_100010734("[MISharedAppNotificationManager clearPendingUpdates:error:]", 60, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v4, "[MISharedAppNotificationManager clearPendingUpdates:error:]");
  if (a4)
  {
    v6 = v6;
    *a4 = v6;
  }

  return 0;
}

@end