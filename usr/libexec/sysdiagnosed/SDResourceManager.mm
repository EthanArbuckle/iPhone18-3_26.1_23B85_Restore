@interface SDResourceManager
+ (id)sharedResourceManager;
- (BOOL)areDiagnosticsInFlight;
- (BOOL)cancelAll:(id)all;
- (BOOL)checkAndIncreaseDiagnosticCountForDiagnosticID:(id)d collectingLocalLogs:(BOOL)logs;
- (BOOL)decreaseDiagnosticCount;
- (BOOL)decreaseDiagnosticCountForDiagnosticID:(id)d;
- (BOOL)diagnosticIDExists:(id)exists;
- (BOOL)initConnectionWithPeer:(id)peer forDiagnosticID:(id)d;
- (BOOL)initProgressTrackerWithConnection:(id)connection;
- (BOOL)registerActivityWithID:(id)d;
- (BOOL)registerDiagnosticObject:(id)object;
- (BOOL)setUpDiagnosticID:(id)d;
- (BOOL)setUpLibClient:(id)client clientPid:(id)pid;
- (BOOL)setUpSysdiagnoseLog:(id)log withID:(id)d;
- (BOOL)setUpSysdiagnoseSession:(id)session clientPid:(id)pid;
- (BOOL)setupProgressTotal:(unint64_t)total forPhase:(int)phase;
- (SDResourceManager)init;
- (double)getMinimumTimeBeforeTimeoutsForPhaseID:(int)d;
- (id)diagnosticObjectForDiagnosticID:(id)d;
- (id)elapsedMetricForPhaseID:(int)d;
- (id)getActivityID;
- (id)getContainersMetricForPhaseId:(int)id;
- (id)getCurrentInflightLocalDiagnostic;
- (id)getDiagnosticID;
- (id)getDiagnosticIDForPid:(id)pid;
- (id)getDiagnosticIDSimple;
- (id)registerActivity;
- (id)stringForPhaseID:(int)d;
- (int64_t)numberDiagnosticsInflight;
- (void)_closeSysdiagnoseSessionHelper:(id)helper;
- (void)_log:(id)_log;
- (void)clearAllResources;
- (void)cliWrite:(int)write logStr:(id)str withParameters:(char *)parameters;
- (void)closeCLI;
- (void)closeSysdiagnoseLog;
- (void)closeSysdiagnoseSession;
- (void)initPeerProgressHandler;
- (void)log:(id)log;
- (void)logWithSubsystem:(const char *)subsystem category:(const char *)category msg:(id)msg;
- (void)removeActivityIDs:(id)ds;
- (void)removeCLI:(id)i;
- (void)removeDiagnosticObject:(id)object;
- (void)removeFds:(id)fds;
- (void)removeLibClient:(id)client;
- (void)removeProgressTracking:(id)tracking;
- (void)sendProgress:(double)progress phase:(unint64_t)phase toPeers:(id)peers;
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

- (BOOL)registerDiagnosticObject:(id)object
{
  objectCopy = object;
  diagnosticID = [objectCopy diagnosticID];
  if (diagnosticID)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_diagnosticManager setObject:objectCopy forKey:diagnosticID];
    objc_sync_exit(selfCopy);
  }

  return diagnosticID != 0;
}

- (id)diagnosticObjectForDiagnosticID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_diagnosticManager objectForKey:dCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)checkAndIncreaseDiagnosticCountForDiagnosticID:(id)d collectingLocalLogs:(BOOL)logs
{
  logsCopy = logs;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (logsCopy)
  {
    if (!dCopy)
    {
      v9 = sub_100027970();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Rejected request for new diagnostic with local logs - given nil diagnosticID!", &v16, 2u);
      }

      goto LABEL_8;
    }

    localLogCollectionDiagnosticID = [(SDResourceManager *)selfCopy localLogCollectionDiagnosticID];

    if (localLogCollectionDiagnosticID)
    {
      v9 = sub_100027970();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        localLogCollectionDiagnosticID2 = [(SDResourceManager *)selfCopy localLogCollectionDiagnosticID];
        v16 = 138412290;
        v17 = localLogCollectionDiagnosticID2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Rejected request for new diagnostic with local logs. Already collecting local logs for %@", &v16, 0xCu);
      }

LABEL_8:
      v11 = 0;
      goto LABEL_15;
    }

    [(SDResourceManager *)selfCopy setLocalLogCollectionDiagnosticID:dCopy];
    v12 = sub_100027970();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Increasing diagnostic count for local log collection for diagnosticID: %@", &v16, 0xCu);
    }
  }

  [(SDResourceManager *)selfCopy setCount:[(SDResourceManager *)selfCopy count]+ 1];
  v9 = &_os_log_default;
  v13 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(SDResourceManager *)selfCopy count];
    v16 = 134217984;
    v17 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Increased diagnostic atomic count to %ld.", &v16, 0xCu);
  }

  v11 = 1;
LABEL_15:

  objc_sync_exit(selfCopy);
  return v11;
}

- (BOOL)decreaseDiagnosticCountForDiagnosticID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SDResourceManager *)selfCopy setCount:[(SDResourceManager *)selfCopy count]- 1];
  v6 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134217984;
    v23 = [(SDResourceManager *)selfCopy count];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Decreased diagnostic atomic count to %ld.", &v22, 0xCu);
  }

  v7 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    currentClient = [(SDResourceManager *)selfCopy currentClient];
    v22 = 138412290;
    v23 = currentClient;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Current client %@", &v22, 0xCu);
  }

  v9 = [(SDResourceManager *)selfCopy count];
  fdManager = [(SDResourceManager *)selfCopy fdManager];
  LOBYTE(v9) = v9 == [fdManager count];

  if ((v9 & 1) == 0)
  {
    fdManager2 = [(SDResourceManager *)selfCopy fdManager];
    -[SDResourceManager setCount:](selfCopy, "setCount:", [fdManager2 count]);

    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100061DC0(buf, [(SDResourceManager *)selfCopy count]);
    }

    v13 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      fdManager3 = [(SDResourceManager *)selfCopy fdManager];
      v22 = 138412290;
      v23 = fdManager3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Current fds: %@", &v22, 0xCu);
    }
  }

  localLogCollectionDiagnosticID = [(SDResourceManager *)selfCopy localLogCollectionDiagnosticID];
  v16 = localLogCollectionDiagnosticID == dCopy;

  if (v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Resetting local log collection ID for caller: %@", &v22, 0xCu);
    }

    [(SDResourceManager *)selfCopy setLocalLogCollectionDiagnosticID:0];
  }

  localLogCollectionDiagnosticID2 = [(SDResourceManager *)selfCopy localLogCollectionDiagnosticID];
  if (localLogCollectionDiagnosticID2)
  {
    v18 = [(SDResourceManager *)selfCopy count]== 0;

    if (v18)
    {
      v19 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        localLogCollectionDiagnosticID3 = [(SDResourceManager *)selfCopy localLogCollectionDiagnosticID];
        sub_100061E0C(localLogCollectionDiagnosticID3, dCopy, &v22);
      }

      [(SDResourceManager *)selfCopy setLocalLogCollectionDiagnosticID:0];
    }
  }

  objc_sync_exit(selfCopy);

  return 1;
}

- (BOOL)decreaseDiagnosticCount
{
  selfCopy = self;
  getDiagnosticID = [(SDResourceManager *)self getDiagnosticID];
  LOBYTE(selfCopy) = [(SDResourceManager *)selfCopy decreaseDiagnosticCountForDiagnosticID:getDiagnosticID];

  return selfCopy;
}

- (BOOL)areDiagnosticsInFlight
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(SDResourceManager *)selfCopy count]> 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (int64_t)numberDiagnosticsInflight
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_fdManager count];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)getCurrentInflightLocalDiagnostic
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(SDResourceManager *)selfCopy numberDiagnosticsInflight]== 1)
  {
    allValues = [(NSMutableDictionary *)selfCopy->_idManager allValues];
    v4 = [allValues objectAtIndex:0];

    objc_sync_exit(selfCopy);
  }

  else
  {
    v5 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      numberDiagnosticsInflight = [(SDResourceManager *)selfCopy numberDiagnosticsInflight];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Number of sysdiagnoses in flight are %ld when should be 1 -- ABORT", &v7, 0xCu);
    }

    objc_sync_exit(selfCopy);
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
  getActivityID = [(SDResourceManager *)self getActivityID];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_idManager objectForKey:getActivityID];
  objc_sync_exit(selfCopy);

  return v5;
}

- (id)getDiagnosticID
{
  getDiagnosticIDSimple = [(SDResourceManager *)self getDiagnosticIDSimple];
  if (!getDiagnosticIDSimple)
  {
    getDiagnosticIDSimple = [(SDResourceManager *)self registerActivity];
  }

  return getDiagnosticIDSimple;
}

- (BOOL)diagnosticIDExists:(id)exists
{
  existsCopy = exists;
  getDiagnosticIDSimple = [(SDResourceManager *)self getDiagnosticIDSimple];
  v6 = [getDiagnosticIDSimple isEqualToString:existsCopy];

  return v6;
}

- (BOOL)setUpLibClient:(id)client clientPid:(id)pid
{
  clientCopy = client;
  pidCopy = pid;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_pidManager setObject:clientCopy forKey:pidCopy];
  objc_sync_exit(selfCopy);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = [pidCopy intValue];
    v11 = 2080;
    uTF8String = [clientCopy UTF8String];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Set up pid %d with diagnosticID %s", v10, 0x12u);
  }

  return 1;
}

- (BOOL)setUpDiagnosticID:(id)d
{
  dCopy = d;
  getActivityID = [(SDResourceManager *)self getActivityID];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_idManager setObject:dCopy forKey:getActivityID];
  objc_sync_exit(selfCopy);

  return 1;
}

- (BOOL)setUpSysdiagnoseSession:(id)session clientPid:(id)pid
{
  sessionCopy = session;
  pidCopy = pid;
  fdManager = [(SDResourceManager *)self fdManager];
  v9 = [fdManager objectForKey:sessionCopy];

  if (!v9)
  {
    [(SDResourceManager *)self setUpDiagnosticID:sessionCopy];
  }

  [(SDResourceManager *)self setUpLibClient:sessionCopy clientPid:pidCopy];

  return 1;
}

- (id)getDiagnosticIDForPid:(id)pid
{
  pidCopy = pid;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_pidManager objectForKey:pidCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)registerActivityWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    getActivityID = [(SDResourceManager *)self getActivityID];
    if ([getActivityID isEqual:&off_1000B58C0])
    {
      v6 = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218242;
        longLongValue = [getActivityID longLongValue];
        v14 = 2080;
        uTF8String = [dCopy UTF8String];
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Activity %016llX requested to register with diagnostic ID %s -- ABORT", &v12, 0x16u);
        v6 = 0;
      }
    }

    else
    {
      getDiagnosticIDSimple = [(SDResourceManager *)self getDiagnosticIDSimple];

      if (getDiagnosticIDSimple)
      {
        v6 = 1;
      }

      else
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        v9 = [(NSMutableDictionary *)selfCopy->_fdManager objectForKey:dCopy];
        objc_sync_exit(selfCopy);

        v6 = v9 != 0;
        if (v9)
        {
          v10 = selfCopy;
          objc_sync_enter(v10);
          [v10[6] setObject:dCopy forKey:getActivityID];
          objc_sync_exit(v10);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 134218242;
          longLongValue = [getActivityID longLongValue];
          v14 = 2080;
          uTF8String = [dCopy UTF8String];
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
  getDiagnosticIDSimple = [(SDResourceManager *)self getDiagnosticIDSimple];
  if (getDiagnosticIDSimple)
  {
    v4 = getDiagnosticIDSimple;
  }

  else
  {
    parent_id = 0;
    identifier = os_activity_get_identifier(&_os_activity_current, &parent_id);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    idManager = selfCopy->_idManager;
    v8 = [NSNumber numberWithUnsignedLongLong:parent_id];
    v4 = [(NSMutableDictionary *)idManager objectForKey:v8];

    objc_sync_exit(selfCopy);
    if (v4)
    {
      v9 = [NSNumber numberWithUnsignedLongLong:identifier];
      v10 = selfCopy;
      objc_sync_enter(v10);
      [(NSMutableDictionary *)selfCopy->_idManager setObject:v4 forKey:v9];
      objc_sync_exit(v10);

      v11 = v4;
    }

    else if (identifier && [(SDResourceManager *)selfCopy numberDiagnosticsInflight]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
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

- (void)cliWrite:(int)write logStr:(id)str withParameters:(char *)parameters
{
  strCopy = str;
  getDiagnosticID = [(SDResourceManager *)self getDiagnosticID];
  if (getDiagnosticID || ![(SDResourceManager *)self isDaemon])
  {
    v9 = [[NSString alloc] initWithFormat:strCopy arguments:parameters];
    v10 = [v9 stringByAppendingString:@"\n"];

    if ([(SDResourceManager *)self isDaemon])
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v12 = [(NSMutableDictionary *)selfCopy->_cliManager objectForKey:getDiagnosticID];
      v13 = v12;
      if (v12)
      {
        writeCopy = write;
        v15 = [v12 objectAtIndexedSubscript:write];
        v16 = [(NSMutableDictionary *)selfCopy->_fdManager objectForKey:getDiagnosticID];
        v17 = "stderr";
        if (!write)
        {
          v17 = "stdout";
        }

        v18 = [NSString stringWithFormat:@"writing to %s. Resetting file descriptor to /dev/null.", v17];
        if ((sub_100027578(v15, v16, v10, v18) & 1) == 0)
        {
          [v15 closeFile];
          v19 = [(SDResourceManager *)selfCopy setUpFH:0xFFFFFFFFLL];
          v20 = [NSIndexSet indexSetWithIndex:writeCopy];
          v21 = [NSArray arrayWithObject:v19];
          [v13 replaceObjectsAtIndexes:v20 withObjects:v21];
        }
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      v22 = &__stdoutp;
      if (write)
      {
        v22 = &__stderrp;
      }

      fputs([v10 UTF8String], *v22);
    }
  }
}

- (void)_log:(id)_log
{
  _logCopy = _log;
  getDiagnosticID = [(SDResourceManager *)self getDiagnosticID];
  if (getDiagnosticID)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_fdManager objectForKey:getDiagnosticID];
    sub_100027578(v6, 0, _logCopy, 0);

    objc_sync_exit(selfCopy);
  }
}

- (BOOL)setUpSysdiagnoseLog:(id)log withID:(id)d
{
  logCopy = log;
  dCopy = d;
  v8 = dCopy;
  if (logCopy && dCopy)
  {
    if ([(SDResourceManager *)self diagnosticIDExists:dCopy])
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v10 = [(NSMutableDictionary *)selfCopy->_fdManager objectForKey:v8];

      if (v10)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error: diagnosticID already set up by another process.", &v23, 2u);
        }

        objc_sync_exit(selfCopy);

        goto LABEL_13;
      }

      objc_sync_exit(selfCopy);

      v15 = [logCopy stringByAppendingPathComponent:@"sysdiagnose.log"];
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
        v20 = selfCopy;
        objc_sync_enter(v20);
        [(NSMutableDictionary *)selfCopy->_fdManager setObject:v19 forKey:v8];
        objc_sync_exit(v20);

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138412546;
          uTF8String = v8;
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
      uTF8String = [v8 UTF8String];
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
  getDiagnosticID = [(SDResourceManager *)self getDiagnosticID];
  if (getDiagnosticID)
  {
    [(SDResourceManager *)self removeFds:getDiagnosticID];
  }

  _objc_release_x1();
}

- (void)log:(id)log
{
  dateFormatter = self->_dateFormatter;
  logCopy = log;
  v6 = +[NSDate date];
  v7 = [(NSDateFormatter *)dateFormatter stringFromDate:v6];
  v8 = [[NSString alloc] initWithFormat:logCopy arguments:&v10];

  v9 = [NSString stringWithFormat:@"%@: %@\n", v7, v8];

  [(SDResourceManager *)self _log:v9];
}

- (void)logWithSubsystem:(const char *)subsystem category:(const char *)category msg:(id)msg
{
  dateFormatter = self->_dateFormatter;
  msgCopy = msg;
  v10 = +[NSDate date];
  v11 = [(NSDateFormatter *)dateFormatter stringFromDate:v10];
  v12 = [[NSString alloc] initWithFormat:msgCopy arguments:&v14];

  v13 = [NSString stringWithFormat:@"%@: [Subsystem %s, Category: %s] Log: %@\n", v11, subsystem, category, v12];

  [(SDResourceManager *)self _log:v13];
}

- (void)removeDiagnosticObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_diagnosticManager objectForKey:objectCopy];
  if (v5)
  {
    [(NSMutableDictionary *)selfCopy->_diagnosticManager removeObjectForKey:objectCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeActivityIDs:(id)ds
{
  dsCopy = ds;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_idManager allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)selfCopy->_idManager objectForKey:v10];
        v12 = [v11 isEqualToString:dsCopy];

        if (v12)
        {
          [(NSMutableDictionary *)selfCopy->_idManager removeObjectForKey:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)removeFds:(id)fds
{
  fdsCopy = fds;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_fdManager objectForKey:fdsCopy];
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = fdsCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Closing fd %@ for diagnosticid %@", &v7, 0x16u);
    }

    [(NSMutableDictionary *)selfCopy->_fdManager removeObjectForKey:fdsCopy];
    [v6 closeFile];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeCLI:(id)i
{
  iCopy = i;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_cliManager objectForKey:iCopy];
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

    [(NSMutableDictionary *)selfCopy->_cliManager removeObjectForKey:iCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeLibClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_pidManager allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)selfCopy->_pidManager objectForKey:v10];
        v12 = [v11 isEqualToString:clientCopy];

        if (v12)
        {
          [(NSMutableDictionary *)selfCopy->_pidManager removeObjectForKey:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

- (void)removeProgressTracking:(id)tracking
{
  trackingCopy = tracking;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  progressManager = [(SDResourceManager *)selfCopy progressManager];
  [progressManager removeObjectForKey:trackingCopy];

  peerManager = [(SDResourceManager *)selfCopy peerManager];
  [peerManager removeObjectForKey:trackingCopy];

  objc_sync_exit(selfCopy);
}

- (void)_closeSysdiagnoseSessionHelper:(id)helper
{
  helperCopy = helper;
  [(SDResourceManager *)self decreaseDiagnosticCountForDiagnosticID:?];
  getDiagnosticID = [(SDResourceManager *)self getDiagnosticID];
  if (getDiagnosticID)
  {
    [(SDResourceManager *)self removeDiagnosticObject:helperCopy];
    [(SDResourceManager *)self removeActivityIDs:getDiagnosticID];
    [(SDResourceManager *)self removeLibClient:getDiagnosticID];
    [(SDResourceManager *)self removeProgressTracking:getDiagnosticID];
  }
}

- (void)closeSysdiagnoseSession
{
  getDiagnosticID = [(SDResourceManager *)self getDiagnosticID];
  [(SDResourceManager *)self _closeSysdiagnoseSessionHelper:getDiagnosticID];
}

- (void)closeCLI
{
  getDiagnosticID = [(SDResourceManager *)self getDiagnosticID];
  if (getDiagnosticID)
  {
    [(SDResourceManager *)self removeCLI:getDiagnosticID];
  }

  _objc_release_x1();
}

- (void)clearAllResources
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_fdManager allKeys];
  objc_sync_exit(selfCopy);

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = allKeys;
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
        [(SDResourceManager *)selfCopy cancelAll:v8, v10];
        v9 = objc_alloc_init(SDPromptDelegate);
        [(SDPromptDelegate *)v9 setDiagnosticID:v8];
        [(SDPromptDelegate *)v9 setOpenIssueFiler:0];
        [(SDPromptDelegate *)v9 setDidPartnerTimeout:0];
        sub_10002A5EC(v9);
        [(SDResourceManager *)selfCopy removeDiagnosticObject:v8];
        [(SDResourceManager *)selfCopy removeActivityIDs:v8];
        [(SDResourceManager *)selfCopy removeFds:v8];
        [(SDResourceManager *)selfCopy removeCLI:v8];
        [(SDResourceManager *)selfCopy removeLibClient:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (BOOL)initProgressTrackerWithConnection:(id)connection
{
  connectionCopy = connection;
  getDiagnosticID = [(SDResourceManager *)self getDiagnosticID];
  v6 = getDiagnosticID;
  if (connectionCopy)
  {
    v7 = getDiagnosticID == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = objc_alloc_init(ProgressTracker);
    for (i = 0; i != 64; i += 8)
    {
      *([(ProgressTracker *)v10 phaseTracker]+ i) = 0;
    }

    [(NSMutableDictionary *)selfCopy->_progressManager setObject:v10 forKeyedSubscript:v6];
    v14 = connectionCopy;
    v12 = [NSArray arrayWithObjects:&v14 count:1];
    [(NSMutableDictionary *)selfCopy->_peerManager setObject:v12 forKeyedSubscript:v6];

    objc_sync_exit(selfCopy);
  }

  return v8;
}

- (BOOL)initConnectionWithPeer:(id)peer forDiagnosticID:(id)d
{
  peerCopy = peer;
  dCopy = d;
  v8 = dCopy;
  v9 = 0;
  if (peerCopy && dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [(NSMutableDictionary *)selfCopy->_peerManager objectForKeyedSubscript:v8];

    v9 = v11 != 0;
    if (v11)
    {
      v12 = [(NSMutableDictionary *)selfCopy->_peerManager objectForKeyedSubscript:v8];
      v13 = [v12 mutableCopy];

      [v13 addObject:peerCopy];
      v14 = [v13 copy];
      [(NSMutableDictionary *)selfCopy->_peerManager setObject:v14 forKeyedSubscript:v8];
    }

    objc_sync_exit(selfCopy);
  }

  return v9;
}

- (BOOL)setupProgressTotal:(unint64_t)total forPhase:(int)phase
{
  getDiagnosticID = [(SDResourceManager *)self getDiagnosticID];
  if (getDiagnosticID)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [(NSMutableDictionary *)selfCopy->_progressManager objectForKeyedSubscript:getDiagnosticID];
    v10 = v9;
    v11 = v9 != 0;
    if (v9)
    {
      *([v9 phaseTracker] + phase) = total;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)sendProgress:(double)progress phase:(unint64_t)phase toPeers:(id)peers
{
  peersCopy = peers;
  getDiagnosticID = [(SDResourceManager *)self getDiagnosticID];
  v10 = peersCopy;
  v11 = v10;
  if (v10)
  {
    goto LABEL_2;
  }

  if (!getDiagnosticID)
  {
    goto LABEL_18;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(NSMutableDictionary *)selfCopy->_peerManager objectForKeyedSubscript:getDiagnosticID];
  objc_sync_exit(selfCopy);

  if (v11)
  {
LABEL_2:
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_double(v12, [sdProgressPercent UTF8String], progress);
    xpc_dictionary_set_uint64(v12, [sdProgressPhase UTF8String], phase);
    if (getDiagnosticID)
    {
      xpc_dictionary_set_string(v12, [sdProgressDiagnosticId UTF8String], objc_msgSend(getDiagnosticID, "UTF8String"));
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
  getDiagnosticID = [(SDResourceManager *)self getDiagnosticID];
  if (getDiagnosticID)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v5 = [(NSMutableDictionary *)selfCopy->_peerManager objectForKeyedSubscript:getDiagnosticID];
    objc_sync_exit(selfCopy);

    if (v5)
    {
      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_double(v6, [sdProgressPercent UTF8String], 0.0);
      xpc_dictionary_set_uint64(v6, [sdProgressPhase UTF8String], 1uLL);
      xpc_dictionary_set_string(v6, [sdProgressDiagnosticId UTF8String], objc_msgSend(getDiagnosticID, "UTF8String"));
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

- (BOOL)cancelAll:(id)all
{
  allCopy = all;
  if (allCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_cliManager objectForKey:allCopy];
    objc_sync_exit(selfCopy);

    v7 = v6 != 0;
    if (v6)
    {
      [(SDResourceManager *)selfCopy removeCLI:allCopy];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)stringForPhaseID:(int)d
{
  if (d > 3)
  {
    return @"Unknown phase";
  }

  else
  {
    return off_1000A1160[d];
  }
}

- (id)elapsedMetricForPhaseID:(int)d
{
  if (d > 3)
  {
    v4 = @"Unknown metric";
  }

  else
  {
    v4 = **(&off_1000A1180 + d);
  }

  return v4;
}

- (id)getContainersMetricForPhaseId:(int)id
{
  if (id > 3)
  {
    v4 = @"Unknown get container metric";
  }

  else
  {
    v4 = **(&off_1000A11A0 + id);
  }

  return v4;
}

- (double)getMinimumTimeBeforeTimeoutsForPhaseID:(int)d
{
  result = 0.0;
  if (d <= 3)
  {
    return dbl_100075EF8[d];
  }

  return result;
}

@end