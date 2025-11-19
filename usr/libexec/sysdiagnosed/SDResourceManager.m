@interface SDResourceManager
+ (id)sharedResourceManager;
- (BOOL)areDiagnosticsInFlight;
- (BOOL)cancelAll:(id)a3;
- (BOOL)checkAndIncreaseDiagnosticCountForDiagnosticID:(id)a3 collectingLocalLogs:(BOOL)a4;
- (BOOL)decreaseDiagnosticCount;
- (BOOL)decreaseDiagnosticCountForDiagnosticID:(id)a3;
- (BOOL)diagnosticIDExists:(id)a3;
- (BOOL)initConnectionWithPeer:(id)a3 forDiagnosticID:(id)a4;
- (BOOL)initProgressTrackerWithConnection:(id)a3;
- (BOOL)registerActivityWithID:(id)a3;
- (BOOL)registerDiagnosticObject:(id)a3;
- (BOOL)setUpDiagnosticID:(id)a3;
- (BOOL)setUpLibClient:(id)a3 clientPid:(id)a4;
- (BOOL)setUpSysdiagnoseLog:(id)a3 withID:(id)a4;
- (BOOL)setUpSysdiagnoseSession:(id)a3 clientPid:(id)a4;
- (BOOL)setupProgressTotal:(unint64_t)a3 forPhase:(int)a4;
- (SDResourceManager)init;
- (double)getMinimumTimeBeforeTimeoutsForPhaseID:(int)a3;
- (id)diagnosticObjectForDiagnosticID:(id)a3;
- (id)elapsedMetricForPhaseID:(int)a3;
- (id)getActivityID;
- (id)getContainersMetricForPhaseId:(int)a3;
- (id)getCurrentInflightLocalDiagnostic;
- (id)getDiagnosticID;
- (id)getDiagnosticIDForPid:(id)a3;
- (id)getDiagnosticIDSimple;
- (id)registerActivity;
- (id)stringForPhaseID:(int)a3;
- (int64_t)numberDiagnosticsInflight;
- (void)_closeSysdiagnoseSessionHelper:(id)a3;
- (void)_log:(id)a3;
- (void)clearAllResources;
- (void)cliWrite:(int)a3 logStr:(id)a4 withParameters:(char *)a5;
- (void)closeCLI;
- (void)closeSysdiagnoseLog;
- (void)closeSysdiagnoseSession;
- (void)initPeerProgressHandler;
- (void)log:(id)a3;
- (void)logWithSubsystem:(const char *)a3 category:(const char *)a4 msg:(id)a5;
- (void)removeActivityIDs:(id)a3;
- (void)removeCLI:(id)a3;
- (void)removeDiagnosticObject:(id)a3;
- (void)removeFds:(id)a3;
- (void)removeLibClient:(id)a3;
- (void)removeProgressTracking:(id)a3;
- (void)sendProgress:(double)a3 phase:(unint64_t)a4 toPeers:(id)a5;
@end

@implementation SDResourceManager

+ (id)sharedResourceManager
{
  if (qword_1000C1020 != -1)
  {
    sub_100061DAC();
  }

  v3 = qword_1000C1018;

  return v3;
}

- (SDResourceManager)init
{
  v23.receiver = self;
  v23.super_class = SDResourceManager;
  v2 = [(SDResourceManager *)&v23 init];
  v3 = v2;
  if (v2)
  {
    v2->_count = 0;
    v4 = +[NSMutableDictionary dictionary];
    idManager = v3->_idManager;
    v3->_idManager = v4;

    v6 = +[NSMutableDictionary dictionary];
    fdManager = v3->_fdManager;
    v3->_fdManager = v6;

    v8 = +[NSMutableDictionary dictionary];
    cliManager = v3->_cliManager;
    v3->_cliManager = v8;

    v10 = +[NSMutableDictionary dictionary];
    diagnosticManager = v3->_diagnosticManager;
    v3->_diagnosticManager = v10;

    v12 = +[NSMutableDictionary dictionary];
    pidManager = v3->_pidManager;
    v3->_pidManager = v12;

    v14 = +[NSMutableDictionary dictionary];
    progressManager = v3->_progressManager;
    v3->_progressManager = v14;

    v16 = +[NSMutableDictionary dictionary];
    peerManager = v3->_peerManager;
    v3->_peerManager = v16;

    possibleClient = v3->_possibleClient;
    v3->_possibleClient = @"(NONE)";

    currentClient = v3->_currentClient;
    v3->_currentClient = @"(NONE)";

    v20 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v3->_dateFormatter;
    v3->_dateFormatter = v20;

    [(NSDateFormatter *)v3->_dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  }

  return v3;
}

- (BOOL)registerDiagnosticObject:(id)a3
{
  v4 = a3;
  v5 = [v4 diagnosticID];
  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    [(NSMutableDictionary *)v6->_diagnosticManager setObject:v4 forKey:v5];
    objc_sync_exit(v6);
  }

  return v5 != 0;
}

- (id)diagnosticObjectForDiagnosticID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)v5->_diagnosticManager objectForKey:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)checkAndIncreaseDiagnosticCountForDiagnosticID:(id)a3 collectingLocalLogs:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (v4)
  {
    if (!v6)
    {
      v9 = sub_100027970();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Rejected request for new diagnostic with local logs - given nil diagnosticID!", &v16, 2u);
      }

      goto LABEL_8;
    }

    v8 = [(SDResourceManager *)v7 localLogCollectionDiagnosticID];

    if (v8)
    {
      v9 = sub_100027970();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(SDResourceManager *)v7 localLogCollectionDiagnosticID];
        v16 = 138412290;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Rejected request for new diagnostic with local logs. Already collecting local logs for %@", &v16, 0xCu);
      }

LABEL_8:
      v11 = 0;
      goto LABEL_15;
    }

    [(SDResourceManager *)v7 setLocalLogCollectionDiagnosticID:v6];
    v12 = sub_100027970();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Increasing diagnostic count for local log collection for diagnosticID: %@", &v16, 0xCu);
    }
  }

  [(SDResourceManager *)v7 setCount:[(SDResourceManager *)v7 count]+ 1];
  v9 = &_os_log_default;
  v13 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(SDResourceManager *)v7 count];
    v16 = 134217984;
    v17 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Increased diagnostic atomic count to %ld.", &v16, 0xCu);
  }

  v11 = 1;
LABEL_15:

  objc_sync_exit(v7);
  return v11;
}

- (BOOL)decreaseDiagnosticCountForDiagnosticID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(SDResourceManager *)v5 setCount:[(SDResourceManager *)v5 count]- 1];
  v6 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134217984;
    v23 = [(SDResourceManager *)v5 count];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Decreased diagnostic atomic count to %ld.", &v22, 0xCu);
  }

  v7 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SDResourceManager *)v5 currentClient];
    v22 = 138412290;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Current client %@", &v22, 0xCu);
  }

  v9 = [(SDResourceManager *)v5 count];
  v10 = [(SDResourceManager *)v5 fdManager];
  LOBYTE(v9) = v9 == [v10 count];

  if ((v9 & 1) == 0)
  {
    v11 = [(SDResourceManager *)v5 fdManager];
    -[SDResourceManager setCount:](v5, "setCount:", [v11 count]);

    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061DC0(buf, [(SDResourceManager *)v5 count]);
    }

    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(SDResourceManager *)v5 fdManager];
      v22 = 138412290;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Current fds: %@", &v22, 0xCu);
    }
  }

  v15 = [(SDResourceManager *)v5 localLogCollectionDiagnosticID];
  v16 = v15 == v4;

  if (v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Resetting local log collection ID for caller: %@", &v22, 0xCu);
    }

    [(SDResourceManager *)v5 setLocalLogCollectionDiagnosticID:0];
  }

  v17 = [(SDResourceManager *)v5 localLogCollectionDiagnosticID];
  if (v17)
  {
    v18 = [(SDResourceManager *)v5 count]== 0;

    if (v18)
    {
      v19 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v20 = [(SDResourceManager *)v5 localLogCollectionDiagnosticID];
        sub_100061E0C(v20, v4, &v22);
      }

      [(SDResourceManager *)v5 setLocalLogCollectionDiagnosticID:0];
    }
  }

  objc_sync_exit(v5);

  return 1;
}

- (BOOL)decreaseDiagnosticCount
{
  v2 = self;
  v3 = [(SDResourceManager *)self getDiagnosticID];
  LOBYTE(v2) = [(SDResourceManager *)v2 decreaseDiagnosticCountForDiagnosticID:v3];

  return v2;
}

- (BOOL)areDiagnosticsInFlight
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SDResourceManager *)v2 count]> 0;
  objc_sync_exit(v2);

  return v3;
}

- (int64_t)numberDiagnosticsInflight
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_fdManager count];
  objc_sync_exit(v2);

  return v3;
}

- (id)getCurrentInflightLocalDiagnostic
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(SDResourceManager *)v2 numberDiagnosticsInflight]== 1)
  {
    v3 = [(NSMutableDictionary *)v2->_idManager allValues];
    v4 = [v3 objectAtIndex:0];

    objc_sync_exit(v2);
  }

  else
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = [(SDResourceManager *)v2 numberDiagnosticsInflight];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Number of sysdiagnoses in flight are %ld when should be 1 -- ABORT", &v7, 0xCu);
    }

    objc_sync_exit(v2);
    v4 = 0;
  }

  return v4;
}

- (id)getActivityID
{
  identifier = os_activity_get_identifier(&_os_activity_current, 0);

  return [NSNumber numberWithUnsignedLongLong:identifier];
}

- (id)getDiagnosticIDSimple
{
  v3 = [(SDResourceManager *)self getActivityID];
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)v4->_idManager objectForKey:v3];
  objc_sync_exit(v4);

  return v5;
}

- (id)getDiagnosticID
{
  v3 = [(SDResourceManager *)self getDiagnosticIDSimple];
  if (!v3)
  {
    v3 = [(SDResourceManager *)self registerActivity];
  }

  return v3;
}

- (BOOL)diagnosticIDExists:(id)a3
{
  v4 = a3;
  v5 = [(SDResourceManager *)self getDiagnosticIDSimple];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (BOOL)setUpLibClient:(id)a3 clientPid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  [(NSMutableDictionary *)v8->_pidManager setObject:v6 forKey:v7];
  objc_sync_exit(v8);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = [v7 intValue];
    v11 = 2080;
    v12 = [v6 UTF8String];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Set up pid %d with diagnosticID %s", v10, 0x12u);
  }

  return 1;
}

- (BOOL)setUpDiagnosticID:(id)a3
{
  v4 = a3;
  v5 = [(SDResourceManager *)self getActivityID];
  v6 = self;
  objc_sync_enter(v6);
  [(NSMutableDictionary *)v6->_idManager setObject:v4 forKey:v5];
  objc_sync_exit(v6);

  return 1;
}

- (BOOL)setUpSysdiagnoseSession:(id)a3 clientPid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SDResourceManager *)self fdManager];
  v9 = [v8 objectForKey:v6];

  if (!v9)
  {
    [(SDResourceManager *)self setUpDiagnosticID:v6];
  }

  [(SDResourceManager *)self setUpLibClient:v6 clientPid:v7];

  return 1;
}

- (id)getDiagnosticIDForPid:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_pidManager objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (BOOL)registerActivityWithID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SDResourceManager *)self getActivityID];
    if ([v5 isEqual:&off_1000B58C0])
    {
      v6 = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218242;
        v13 = [v5 longLongValue];
        v14 = 2080;
        v15 = [v4 UTF8String];
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Activity %016llX requested to register with diagnostic ID %s -- ABORT", &v12, 0x16u);
        v6 = 0;
      }
    }

    else
    {
      v7 = [(SDResourceManager *)self getDiagnosticIDSimple];

      if (v7)
      {
        v6 = 1;
      }

      else
      {
        v8 = self;
        objc_sync_enter(v8);
        v9 = [(NSMutableDictionary *)v8->_fdManager objectForKey:v4];
        objc_sync_exit(v8);

        v6 = v9 != 0;
        if (v9)
        {
          v10 = v8;
          objc_sync_enter(v10);
          [v10[6] setObject:v4 forKey:v5];
          objc_sync_exit(v10);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 134218242;
          v13 = [v5 longLongValue];
          v14 = 2080;
          v15 = [v4 UTF8String];
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Did not find CLI file descriptors -- Activity %016llX not registered with diagnostic ID %s", &v12, 0x16u);
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)registerActivity
{
  v3 = [(SDResourceManager *)self getDiagnosticIDSimple];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    parent_id = 0;
    identifier = os_activity_get_identifier(&_os_activity_current, &parent_id);
    v6 = self;
    objc_sync_enter(v6);
    idManager = v6->_idManager;
    v8 = [NSNumber numberWithUnsignedLongLong:parent_id];
    v4 = [(NSMutableDictionary *)idManager objectForKey:v8];

    objc_sync_exit(v6);
    if (v4)
    {
      v9 = [NSNumber numberWithUnsignedLongLong:identifier];
      v10 = v6;
      objc_sync_enter(v10);
      [(NSMutableDictionary *)v6->_idManager setObject:v4 forKey:v9];
      objc_sync_exit(v10);

      v11 = v4;
    }

    else if (identifier && [(SDResourceManager *)v6 numberDiagnosticsInflight]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v15 = identifier;
      v16 = 2048;
      v17 = parent_id;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "SDResourceManager failed to register activity %016llX due to missing parent %016llX.", buf, 0x16u);
    }
  }

  return v4;
}

- (void)cliWrite:(int)a3 logStr:(id)a4 withParameters:(char *)a5
{
  v23 = a4;
  v8 = [(SDResourceManager *)self getDiagnosticID];
  if (v8 || ![(SDResourceManager *)self isDaemon])
  {
    v9 = [[NSString alloc] initWithFormat:v23 arguments:a5];
    v10 = [v9 stringByAppendingString:@"\n"];

    if ([(SDResourceManager *)self isDaemon])
    {
      v11 = self;
      objc_sync_enter(v11);
      v12 = [(NSMutableDictionary *)v11->_cliManager objectForKey:v8];
      v13 = v12;
      if (v12)
      {
        v14 = a3;
        v15 = [v12 objectAtIndexedSubscript:a3];
        v16 = [(NSMutableDictionary *)v11->_fdManager objectForKey:v8];
        v17 = "stderr";
        if (!a3)
        {
          v17 = "stdout";
        }

        v18 = [NSString stringWithFormat:@"writing to %s. Resetting file descriptor to /dev/null.", v17];
        if ((sub_100027578(v15, v16, v10, v18) & 1) == 0)
        {
          [v15 closeFile];
          v19 = [(SDResourceManager *)v11 setUpFH:0xFFFFFFFFLL];
          v20 = [NSIndexSet indexSetWithIndex:v14];
          v21 = [NSArray arrayWithObject:v19];
          [v13 replaceObjectsAtIndexes:v20 withObjects:v21];
        }
      }

      objc_sync_exit(v11);
    }

    else
    {
      v22 = &__stdoutp;
      if (a3)
      {
        v22 = &__stderrp;
      }

      fputs([v10 UTF8String], *v22);
    }
  }
}

- (void)_log:(id)a3
{
  v7 = a3;
  v4 = [(SDResourceManager *)self getDiagnosticID];
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)v5->_fdManager objectForKey:v4];
    sub_100027578(v6, 0, v7, 0);

    objc_sync_exit(v5);
  }
}

- (BOOL)setUpSysdiagnoseLog:(id)a3 withID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    if ([(SDResourceManager *)self diagnosticIDExists:v7])
    {
      v9 = self;
      objc_sync_enter(v9);
      v10 = [(NSMutableDictionary *)v9->_fdManager objectForKey:v8];

      if (v10)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error: diagnosticID already set up by another process.", &v23, 2u);
        }

        objc_sync_exit(v9);

        goto LABEL_13;
      }

      objc_sync_exit(v9);

      v15 = [v6 stringByAppendingPathComponent:@"sysdiagnose.log"];
      v16 = +[NSFileManager defaultManager];
      v27 = NSFilePosixPermissions;
      v28 = &off_1000B58D8;
      v17 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v18 = [v16 createFileAtPath:v15 contents:0 attributes:v17];

      if ((v18 & 1) == 0)
      {
        v13 = 0;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Bad sysdiagnosePath, unable to create sysdiagnose.log.", &v23, 2u);
          v13 = 0;
        }

        goto LABEL_25;
      }

      v19 = [NSFileHandle fileHandleForWritingAtPath:v15];
      v13 = v19 != 0;
      if (v19)
      {
        v20 = v9;
        objc_sync_enter(v20);
        [(NSMutableDictionary *)v9->_fdManager setObject:v19 forKey:v8];
        objc_sync_exit(v20);

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138412546;
          v24 = v8;
          v25 = 2112;
          v26 = v19;
          v21 = "Set up sysdiagnose.log with diagnostic ID %@, filehandle: %@";
          v22 = 22;
LABEL_23:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v21, &v23, v22);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        v21 = "Failed to create file handle for sysdiagnose.log";
        v22 = 2;
        goto LABEL_23;
      }

LABEL_25:
      goto LABEL_14;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315138;
      v24 = [v8 UTF8String];
      v11 = "ERROR: Trying to set up log for non-existent diagnosticID %s";
      v12 = 12;
      goto LABEL_12;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    v11 = "sysdiagnose path or diagnosticID was null while trying to set up sysdiagnose.log.";
    v12 = 2;
LABEL_12:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, &v23, v12);
  }

LABEL_13:
  v13 = 0;
LABEL_14:

  return v13;
}

- (void)closeSysdiagnoseLog
{
  v3 = [(SDResourceManager *)self getDiagnosticID];
  if (v3)
  {
    [(SDResourceManager *)self removeFds:v3];
  }

  _objc_release_x1();
}

- (void)log:(id)a3
{
  dateFormatter = self->_dateFormatter;
  v5 = a3;
  v6 = +[NSDate date];
  v7 = [(NSDateFormatter *)dateFormatter stringFromDate:v6];
  v8 = [[NSString alloc] initWithFormat:v5 arguments:&v10];

  v9 = [NSString stringWithFormat:@"%@: %@\n", v7, v8];

  [(SDResourceManager *)self _log:v9];
}

- (void)logWithSubsystem:(const char *)a3 category:(const char *)a4 msg:(id)a5
{
  dateFormatter = self->_dateFormatter;
  v9 = a5;
  v10 = +[NSDate date];
  v11 = [(NSDateFormatter *)dateFormatter stringFromDate:v10];
  v12 = [[NSString alloc] initWithFormat:v9 arguments:&v14];

  v13 = [NSString stringWithFormat:@"%@: [Subsystem %s, Category: %s] Log: %@\n", v11, a3, a4, v12];

  [(SDResourceManager *)self _log:v13];
}

- (void)removeDiagnosticObject:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)v4->_diagnosticManager objectForKey:v6];
  if (v5)
  {
    [(NSMutableDictionary *)v4->_diagnosticManager removeObjectForKey:v6];
  }

  objc_sync_exit(v4);
}

- (void)removeActivityIDs:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableDictionary *)v5->_idManager allKeys];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)v5->_idManager objectForKey:v10];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          [(NSMutableDictionary *)v5->_idManager removeObjectForKey:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)removeFds:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_fdManager objectForKey:v4];
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Closing fd %@ for diagnosticid %@", &v7, 0x16u);
    }

    [(NSMutableDictionary *)v5->_fdManager removeObjectForKey:v4];
    [v6 closeFile];
  }

  objc_sync_exit(v5);
}

- (void)removeCLI:(id)a3
{
  v11 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)v4->_cliManager objectForKey:v11];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:0];

    if (v7)
    {
      v8 = [v6 objectAtIndexedSubscript:0];
      [v8 closeFile];
    }

    v9 = [v6 objectAtIndexedSubscript:1];

    if (v9)
    {
      v10 = [v6 objectAtIndexedSubscript:1];
      [v10 closeFile];
    }

    [(NSMutableDictionary *)v4->_cliManager removeObjectForKey:v11];
  }

  objc_sync_exit(v4);
}

- (void)removeLibClient:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableDictionary *)v5->_pidManager allKeys];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)v5->_pidManager objectForKey:v10];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          [(NSMutableDictionary *)v5->_pidManager removeObjectForKey:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)removeProgressTracking:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(SDResourceManager *)v4 progressManager];
  [v5 removeObjectForKey:v7];

  v6 = [(SDResourceManager *)v4 peerManager];
  [v6 removeObjectForKey:v7];

  objc_sync_exit(v4);
}

- (void)_closeSysdiagnoseSessionHelper:(id)a3
{
  v5 = a3;
  [(SDResourceManager *)self decreaseDiagnosticCountForDiagnosticID:?];
  v4 = [(SDResourceManager *)self getDiagnosticID];
  if (v4)
  {
    [(SDResourceManager *)self removeDiagnosticObject:v5];
    [(SDResourceManager *)self removeActivityIDs:v4];
    [(SDResourceManager *)self removeLibClient:v4];
    [(SDResourceManager *)self removeProgressTracking:v4];
  }
}

- (void)closeSysdiagnoseSession
{
  v3 = [(SDResourceManager *)self getDiagnosticID];
  [(SDResourceManager *)self _closeSysdiagnoseSessionHelper:v3];
}

- (void)closeCLI
{
  v3 = [(SDResourceManager *)self getDiagnosticID];
  if (v3)
  {
    [(SDResourceManager *)self removeCLI:v3];
  }

  _objc_release_x1();
}

- (void)clearAllResources
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_fdManager allKeys];
  objc_sync_exit(v2);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [(SDResourceManager *)v2 cancelAll:v8, v10];
        v9 = objc_alloc_init(SDPromptDelegate);
        [(SDPromptDelegate *)v9 setDiagnosticID:v8];
        [(SDPromptDelegate *)v9 setOpenIssueFiler:0];
        [(SDPromptDelegate *)v9 setDidPartnerTimeout:0];
        sub_10002A5EC(v9);
        [(SDResourceManager *)v2 removeDiagnosticObject:v8];
        [(SDResourceManager *)v2 removeActivityIDs:v8];
        [(SDResourceManager *)v2 removeFds:v8];
        [(SDResourceManager *)v2 removeCLI:v8];
        [(SDResourceManager *)v2 removeLibClient:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (BOOL)initProgressTrackerWithConnection:(id)a3
{
  v4 = a3;
  v5 = [(SDResourceManager *)self getDiagnosticID];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    v9 = self;
    objc_sync_enter(v9);
    v10 = objc_alloc_init(ProgressTracker);
    for (i = 0; i != 64; i += 8)
    {
      *([(ProgressTracker *)v10 phaseTracker]+ i) = 0;
    }

    [(NSMutableDictionary *)v9->_progressManager setObject:v10 forKeyedSubscript:v6];
    v14 = v4;
    v12 = [NSArray arrayWithObjects:&v14 count:1];
    [(NSMutableDictionary *)v9->_peerManager setObject:v12 forKeyedSubscript:v6];

    objc_sync_exit(v9);
  }

  return v8;
}

- (BOOL)initConnectionWithPeer:(id)a3 forDiagnosticID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [(NSMutableDictionary *)v10->_peerManager objectForKeyedSubscript:v8];

    v9 = v11 != 0;
    if (v11)
    {
      v12 = [(NSMutableDictionary *)v10->_peerManager objectForKeyedSubscript:v8];
      v13 = [v12 mutableCopy];

      [v13 addObject:v6];
      v14 = [v13 copy];
      [(NSMutableDictionary *)v10->_peerManager setObject:v14 forKeyedSubscript:v8];
    }

    objc_sync_exit(v10);
  }

  return v9;
}

- (BOOL)setupProgressTotal:(unint64_t)a3 forPhase:(int)a4
{
  v7 = [(SDResourceManager *)self getDiagnosticID];
  if (v7)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(NSMutableDictionary *)v8->_progressManager objectForKeyedSubscript:v7];
    v10 = v9;
    v11 = v9 != 0;
    if (v9)
    {
      *([v9 phaseTracker] + a4) = a3;
    }

    objc_sync_exit(v8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)sendProgress:(double)a3 phase:(unint64_t)a4 toPeers:(id)a5
{
  v8 = a5;
  v9 = [(SDResourceManager *)self getDiagnosticID];
  v10 = v8;
  v11 = v10;
  if (v10)
  {
    goto LABEL_2;
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v13 = self;
  objc_sync_enter(v13);
  v11 = [(NSMutableDictionary *)v13->_peerManager objectForKeyedSubscript:v9];
  objc_sync_exit(v13);

  if (v11)
  {
LABEL_2:
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_double(v12, [sdProgressPercent UTF8String], a3);
    xpc_dictionary_set_uint64(v12, [sdProgressPhase UTF8String], a4);
    if (v9)
    {
      xpc_dictionary_set_string(v12, [sdProgressDiagnosticId UTF8String], objc_msgSend(v9, "UTF8String"));
    }

    else
    {
      v22 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v22)
      {
        sub_100061ECC(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = v11;
    v31 = [v30 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v31)
    {
      v32 = *v35;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v35 != v32)
          {
            objc_enumerationMutation(v30);
          }

          xpc_connection_send_message(*(*(&v34 + 1) + 8 * i), v12);
        }

        v31 = [v30 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v31);
    }
  }

  else
  {
    v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      sub_100061F08(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

LABEL_18:
}

- (void)initPeerProgressHandler
{
  v3 = [(SDResourceManager *)self getDiagnosticID];
  if (v3)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(NSMutableDictionary *)v4->_peerManager objectForKeyedSubscript:v3];
    objc_sync_exit(v4);

    if (v5)
    {
      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_double(v6, [sdProgressPercent UTF8String], 0.0);
      xpc_dictionary_set_uint64(v6, [sdProgressPhase UTF8String], 1uLL);
      xpc_dictionary_set_string(v6, [sdProgressDiagnosticId UTF8String], objc_msgSend(v3, "UTF8String"));
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        v9 = *v20;
        do
        {
          v10 = 0;
          do
          {
            if (*v20 != v9)
            {
              objc_enumerationMutation(v7);
            }

            xpc_connection_send_message(*(*(&v19 + 1) + 8 * v10), v6);
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        sub_100061F44(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }
}

- (BOOL)cancelAll:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)v5->_cliManager objectForKey:v4];
    objc_sync_exit(v5);

    v7 = v6 != 0;
    if (v6)
    {
      [(SDResourceManager *)v5 removeCLI:v4];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)stringForPhaseID:(int)a3
{
  if (a3 > 3)
  {
    return @"Unknown phase";
  }

  else
  {
    return off_1000A1160[a3];
  }
}

- (id)elapsedMetricForPhaseID:(int)a3
{
  if (a3 > 3)
  {
    v4 = @"Unknown metric";
  }

  else
  {
    v4 = **(&off_1000A1180 + a3);
  }

  return v4;
}

- (id)getContainersMetricForPhaseId:(int)a3
{
  if (a3 > 3)
  {
    v4 = @"Unknown get container metric";
  }

  else
  {
    v4 = **(&off_1000A11A0 + a3);
  }

  return v4;
}

- (double)getMinimumTimeBeforeTimeoutsForPhaseID:(int)a3
{
  result = 0.0;
  if (a3 <= 3)
  {
    return dbl_100075EF8[a3];
  }

  return result;
}

@end