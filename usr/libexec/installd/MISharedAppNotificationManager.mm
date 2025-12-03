@interface MISharedAppNotificationManager
+ (id)instanceForCurrentUser;
- (BOOL)clearPendingUpdates:(id)updates error:(id *)error;
- (BOOL)markAppAsUpdatedForOtherUsers:(id)users error:(id *)error;
- (MISharedAppNotificationManager)init;
- (id)updatedAppsWithError:(id *)error;
@end

@implementation MISharedAppNotificationManager

+ (id)instanceForCurrentUser
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021808;
  block[3] = &unk_100090CF8;
  block[4] = self;
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

- (BOOL)markAppAsUpdatedForOtherUsers:(id)users error:(id *)error
{
  v6 = sub_100010734("[MISharedAppNotificationManager markAppAsUpdatedForOtherUsers:error:]", 42, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v4, "[MISharedAppNotificationManager markAppAsUpdatedForOtherUsers:error:]");
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return 0;
}

- (id)updatedAppsWithError:(id *)error
{
  v5 = sub_100010734("[MISharedAppNotificationManager updatedAppsWithError:]", 51, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v3, "[MISharedAppNotificationManager updatedAppsWithError:]");
  if (error)
  {
    v5 = v5;
    *error = v5;
  }

  return 0;
}

- (BOOL)clearPendingUpdates:(id)updates error:(id *)error
{
  v6 = sub_100010734("[MISharedAppNotificationManager clearPendingUpdates:error:]", 60, MIInstallerErrorDomain, 4, 0, 0, @"%s is not yet implemented", v4, "[MISharedAppNotificationManager clearPendingUpdates:error:]");
  if (error)
  {
    v6 = v6;
    *error = v6;
  }

  return 0;
}

@end