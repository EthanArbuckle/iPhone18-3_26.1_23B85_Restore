@interface NRRootCommander
+ (BOOL)_supportsWatchCompanionCapability;
- (NRRootCommander)init;
- (id)_daemonConnection;
- (id)_daemonProxyWithErrorString:(id)a3 withErrorHandler:(id)a4;
- (id)_enableNanoDaemons:(unint64_t)a3 didEnable:(BOOL *)a4;
- (id)_getLocalPairingStorePairingID:(id)a3;
- (id)_syncDaemonProxyWithErrorString:(id)a3 withErrorHandler:(id)a4;
- (id)backupHash;
- (void)_deletePairedStoreWithUUID:(id)a3 withQueue:(id)a4 withCompletion:(id)a5;
- (void)_initialize;
- (void)checkIfFlaggedForRecoveryWithQueue:(id)a3 completion:(id)a4;
- (void)cleanupPairedStoreWithUUIDs:(id)a3 withIndex:(unint64_t)a4 withQueue:(id)a5 withCompletion:(id)a6;
- (void)clearRecoveryFlagWithQueue:(id)a3 completion:(id)a4;
- (void)deletePairedStoreWithUUID:(id)a3 withQueue:(id)a4 withCompletion:(id)a5;
- (void)deleteQuarantinedDataWithStoreUUID:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)quarantineDataWithStoreUUID:(id)a3 services:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)unquarantineDataWithStoreUUID:(id)a3 services:(id)a4 queue:(id)a5 completion:(id)a6;
@end

@implementation NRRootCommander

- (NRRootCommander)init
{
  v5.receiver = self;
  v5.super_class = NRRootCommander;
  v2 = [(NRRootCommander *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NRRootCommander *)v2 _initialize];
  }

  return v3;
}

+ (BOOL)_supportsWatchCompanionCapability
{
  if (qword_1001B3828 != -1)
  {
    sub_1001000F8();
  }

  return byte_1001B3820;
}

- (void)_initialize
{
  if (qword_1001B3830 != -1)
  {
    sub_10010010C();
  }
}

- (id)_daemonConnection
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056E08;
  block[3] = &unk_100175660;
  block[4] = self;
  if (qword_1001B3848 != -1)
  {
    dispatch_once(&qword_1001B3848, block);
  }

  return qword_1001B3840;
}

- (id)_daemonProxyWithErrorString:(id)a3 withErrorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NRRootCommander *)self _daemonConnection];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100057040;
  v13[3] = &unk_100177938;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 remoteObjectProxyWithErrorHandler:v13];

  return v11;
}

- (id)_syncDaemonProxyWithErrorString:(id)a3 withErrorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NRRootCommander *)self _daemonConnection];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000571C8;
  v13[3] = &unk_100177938;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];

  return v11;
}

- (id)_enableNanoDaemons:(unint64_t)a3 didEnable:(BOOL *)a4
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100057740;
  v29 = sub_100057750;
  v30 = 0;
  if ([objc_opt_class() _supportsWatchCompanionCapability])
  {
    v7 = [qword_1001B3838 objectForKeyedSubscript:@"daemonsEnabled"];
    v8 = [v7 integerValue];
    v9 = nr_daemon_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "prefs value: %d", &buf, 8u);
      }
    }

    if ((v8 == 0) == v8 < 4)
    {
      if (!v8)
      {
LABEL_9:
        v12 = nr_daemon_log();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

        if (v13)
        {
          v14 = nr_daemon_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [&off_100187EC8 objectAtIndexedSubscript:a3];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ NanoLaunchDaemons", &buf, 0xCu);
          }
        }

        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100057758;
        v24[3] = &unk_100175880;
        v24[4] = &v25;
        v16 = [(NRRootCommander *)self _syncDaemonProxyWithErrorString:@"setting nano daemon state" withErrorHandler:v24];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v36 = 0x3032000000;
        v37 = sub_100057740;
        v38 = sub_100057750;
        v39 = [NROSTransaction transactionWithName:@"daemons"];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10005780C;
        v23[3] = &unk_100177A08;
        v23[4] = &v31;
        v23[5] = &v25;
        v23[6] = &buf;
        v23[7] = a3;
        [v16 xpcEnableNanoDaemons:a3 withCompletion:v23];
        _Block_object_dispose(&buf, 8);

LABEL_21:
        goto LABEL_22;
      }
    }

    else if (!v8 || v8 - 1 != a3)
    {
      goto LABEL_9;
    }

    v19 = nr_daemon_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v16 = nr_daemon_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping NanoLaunchDaemon setup because already set", &buf, 2u);
      }

      goto LABEL_21;
    }
  }

  else
  {
    v17 = nr_daemon_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (!v18)
    {
      goto LABEL_23;
    }

    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping NanoLaunchDaemon setup because platform doesn't support NLDs", &buf, 2u);
    }
  }

LABEL_22:

LABEL_23:
  if (a4)
  {
    *a4 = *(v32 + 24);
  }

  v21 = v26[5];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);

  return v21;
}

- (void)deletePairedStoreWithUUID:(id)a3 withQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(25, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100057A7C;
  v15[3] = &unk_100176730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_deletePairedStoreWithUUID:(id)a3 withQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 UUIDString];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "deleting paired store %{public}@", &buf, 0xCu);
    }
  }

  if ([objc_opt_class() _supportsWatchCompanionCapability])
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100057E30;
    v29[3] = &unk_100175688;
    v15 = v10;
    v31 = v15;
    v16 = v9;
    v30 = v16;
    v17 = [(NRRootCommander *)self _daemonProxyWithErrorString:@"deleting paired store" withErrorHandler:v29];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v33 = 0x3032000000;
    v34 = sub_100057740;
    v35 = sub_100057750;
    v36 = [NROSTransaction transactionWithName:@"delete"];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100057FA0;
    v25[3] = &unk_100177A30;
    v27 = v15;
    v26 = v16;
    p_buf = &buf;
    [v17 xpcDeletePairedStoreWithUUID:v8 withCompletion:v25];

    _Block_object_dispose(&buf, 8);
    v18 = v31;
  }

  else
  {
    v19 = +[NSFileManager defaultManager];
    v20 = [(NRRootCommander *)self _getLocalPairingStorePairingID:v8];
    v24 = 0;
    [v19 removeItemAtPath:v20 error:&v24];
    v18 = v24;

    if (v10)
    {
      if (v9)
      {
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100058098;
        v21[3] = &unk_100175688;
        v23 = v10;
        v18 = v18;
        v22 = v18;
        dispatch_async(v9, v21);
      }

      else
      {
        (*(v10 + 2))(v10, v18);
      }
    }
  }
}

- (id)_getLocalPairingStorePairingID:(id)a3
{
  v3 = a3;
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v5 = [v4 objectAtIndex:0];
  v6 = [v5 stringByAppendingPathComponent:@"DeviceRegistry"];

  if (v3)
  {
    v7 = [v3 UUIDString];
    v8 = [v6 stringByAppendingPathComponent:v7];

    v6 = v8;
  }

  return v6;
}

- (void)cleanupPairedStoreWithUUIDs:(id)a3 withIndex:(unint64_t)a4 withQueue:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = nr_daemon_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = nr_daemon_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "cleaning up paired stores except %{public}@", &buf, 0xCu);
    }
  }

  if ([objc_opt_class() _supportsWatchCompanionCapability])
  {
    v16 = [qword_1001B3838 objectForKeyedSubscript:@"cleanupIndex"];
    v17 = [v16 unsignedLongLongValue];
    v18 = nr_daemon_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (v19)
    {
      v20 = nr_daemon_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v17;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "token value: %lld", &buf, 0xCu);
      }
    }

    if (v17 == 0 || v17 - 1 != a4)
    {
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100058664;
      v37[3] = &unk_100175688;
      v21 = v12;
      v39 = v21;
      v22 = v11;
      v38 = v22;
      v23 = [(NRRootCommander *)self _daemonProxyWithErrorString:@"cleaning up paired stores" withErrorHandler:v37];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v41 = 0x3032000000;
      v42 = sub_100057740;
      v43 = sub_100057750;
      v44 = [NROSTransaction transactionWithName:@"cleanup"];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000587D4;
      v32[3] = &unk_100177A58;
      v36 = a4;
      v34 = v21;
      v33 = v22;
      p_buf = &buf;
      [v23 xpcCleanupPairingStoreWithUUIDs:v10 withCompletion:v32];

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v24 = nr_daemon_log();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

      if (v25)
      {
        v26 = nr_daemon_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Skipping cleanup, looks like we've already completed it", &buf, 2u);
        }
      }

      if (v12)
      {
        if (v11)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10005895C;
          block[3] = &unk_100175D58;
          v31 = v12;
          dispatch_async(v11, block);
        }

        else
        {
          (*(v12 + 2))(v12, 0);
        }
      }
    }
  }

  else if (v12)
  {
    if (v11)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100058970;
      v28[3] = &unk_100175D58;
      v29 = v12;
      dispatch_async(v11, v28);
    }

    else
    {
      v27 = nrGetPairingError();
      (*(v12 + 2))(v12, v27);
    }
  }
}

- (void)quarantineDataWithStoreUUID:(id)a3 services:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([objc_opt_class() _supportsWatchCompanionCapability])
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100058C58;
    v26[3] = &unk_100175688;
    v14 = v13;
    v28 = v14;
    v15 = v12;
    v27 = v15;
    v16 = [(NRRootCommander *)self _daemonProxyWithErrorString:@"quarantining data" withErrorHandler:v26];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = sub_100057740;
    v24[4] = sub_100057750;
    v25 = [NROSTransaction transactionWithName:@"quarantining"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100058D9C;
    v20[3] = &unk_100177A30;
    v22 = v14;
    v21 = v15;
    v23 = v24;
    [v16 xpcQuarantineDataWithStoreUUID:v10 services:v11 completion:v20];
    v17 = &v28;

    _Block_object_dispose(v24, 8);
LABEL_5:

    goto LABEL_6;
  }

  if (v13)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100058ECC;
    v18[3] = &unk_100175D58;
    v17 = &v19;
    v19 = v13;
    dispatch_async(v12, v18);
    goto LABEL_5;
  }

LABEL_6:
}

- (void)unquarantineDataWithStoreUUID:(id)a3 services:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([objc_opt_class() _supportsWatchCompanionCapability])
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000591B4;
    v26[3] = &unk_100175688;
    v14 = v13;
    v28 = v14;
    v15 = v12;
    v27 = v15;
    v16 = [(NRRootCommander *)self _daemonProxyWithErrorString:@"unquarantining data" withErrorHandler:v26];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = sub_100057740;
    v24[4] = sub_100057750;
    v25 = [NROSTransaction transactionWithName:@"unquarantining"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000592F8;
    v20[3] = &unk_100177A30;
    v22 = v14;
    v21 = v15;
    v23 = v24;
    [v16 xpcUnquarantineDataWithStoreUUID:v10 services:v11 completion:v20];
    v17 = &v28;

    _Block_object_dispose(v24, 8);
LABEL_5:

    goto LABEL_6;
  }

  if (v13)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100059428;
    v18[3] = &unk_100175D58;
    v17 = &v19;
    v19 = v13;
    dispatch_async(v12, v18);
    goto LABEL_5;
  }

LABEL_6:
}

- (void)deleteQuarantinedDataWithStoreUUID:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([objc_opt_class() _supportsWatchCompanionCapability])
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000596FC;
    v23[3] = &unk_100175688;
    v11 = v10;
    v25 = v11;
    v12 = v9;
    v24 = v12;
    v13 = [(NRRootCommander *)self _daemonProxyWithErrorString:@"deleting quarantined data" withErrorHandler:v23];
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = sub_100057740;
    v21[4] = sub_100057750;
    v22 = [NROSTransaction transactionWithName:@"deletingQ"];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000597F0;
    v17[3] = &unk_100177A80;
    v19 = v11;
    v18 = v12;
    v20 = v21;
    [v13 xpcDeleteQuarantinedDataWithStoreUUID:v8 completion:v17];
    v14 = &v25;

    _Block_object_dispose(v21, 8);
LABEL_5:

    goto LABEL_6;
  }

  if (v10)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000598A8;
    v15[3] = &unk_100175D58;
    v14 = &v16;
    v16 = v10;
    dispatch_async(v9, v15);
    goto LABEL_5;
  }

LABEL_6:
}

- (id)backupHash
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100057740;
  v25 = sub_100057750;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if ([objc_opt_class() _supportsWatchCompanionCapability])
  {
    v3 = [(NRRootCommander *)self _daemonConnection];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100059C58;
    v16[3] = &unk_100177AA8;
    v16[4] = &v17;
    v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v16];

    if (v4)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v28 = 0x3032000000;
      v29 = sub_100057740;
      v30 = sub_100057750;
      v31 = [NROSTransaction transactionWithName:@"backupHash"];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100059CE8;
      v15[3] = &unk_100177AD0;
      v15[4] = &v17;
      v15[5] = &v21;
      v15[6] = &buf;
      [v4 xpcGetBackupHashWithCompletion:v15];
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      *(v18 + 24) = 1;
    }
  }

  if (*(v18 + 24) == 1)
  {
    v5 = nr_daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = nr_daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Recursing due to xpc failure", &buf, 2u);
      }
    }

    sleep(1u);
    v8 = [(NRRootCommander *)self backupHash];
  }

  else
  {
    v9 = nr_daemon_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v22[5];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Returning backupHash %@", &buf, 0xCu);
      }
    }

    v8 = v22[5];
  }

  v13 = v8;
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

- (void)checkIfFlaggedForRecoveryWithQueue:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100059E44;
    block[3] = &unk_100175D58;
    v8 = v5;
    dispatch_async(a3, block);
  }
}

- (void)clearRecoveryFlagWithQueue:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100059EF4;
    block[3] = &unk_100175D58;
    v8 = v5;
    dispatch_async(a3, block);
  }
}

@end