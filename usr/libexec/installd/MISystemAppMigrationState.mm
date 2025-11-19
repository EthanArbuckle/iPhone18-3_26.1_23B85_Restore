@interface MISystemAppMigrationState
+ (id)defaultManager;
- (BOOL)systemAppMigrationComplete;
- (MISystemAppMigrationState)init;
- (void)setSystemAppMigrationComplete:(BOOL)a3;
- (void)waitForSystemAppMigrationToComplete:(id)a3;
@end

@implementation MISystemAppMigrationState

- (MISystemAppMigrationState)init
{
  v8.receiver = self;
  v8.super_class = MISystemAppMigrationState;
  v2 = [(MISystemAppMigrationState *)&v8 init];
  if (!v2)
  {
    return v2;
  }

  v3 = dispatch_queue_create("com.apple.installd.SystemAppMigrationState", 0);
  systemAppMigrationStateQueue = v2->_systemAppMigrationStateQueue;
  v2->_systemAppMigrationStateQueue = v3;

  if (sub_10002B994())
  {
    goto LABEL_9;
  }

  if (!&_DMIsMigrationNeeded || (DMIsMigrationNeeded() & 1) == 0)
  {
    v5 = +[MIDaemonConfiguration sharedInstance];
    v6 = [v5 migrationPlistURL];
    MIRecordCurrentBuildVersion();

LABEL_9:
    v2->_systemAppMigrationComplete = 1;
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      goto LABEL_11;
    }

    return v2;
  }

  v2->_systemAppMigrationComplete = 0;
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
LABEL_11:
    MOLogWrite();
  }

  return v2;
}

+ (id)defaultManager
{
  if (qword_1000A9668 != -1)
  {
    sub_1000587B4();
  }

  v3 = qword_1000A9670;

  return v3;
}

- (void)setSystemAppMigrationComplete:(BOOL)a3
{
  v5 = [(MISystemAppMigrationState *)self systemAppMigrationStateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002CB68;
  v6[3] = &unk_1000915A8;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

- (BOOL)systemAppMigrationComplete
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MISystemAppMigrationState *)self systemAppMigrationStateQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002CDD8;
  v5[3] = &unk_1000915D0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)waitForSystemAppMigrationToComplete:(id)a3
{
  v4 = a3;
  v5 = [(MISystemAppMigrationState *)self systemAppMigrationStateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002CEA0;
  v7[3] = &unk_100090FA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

@end