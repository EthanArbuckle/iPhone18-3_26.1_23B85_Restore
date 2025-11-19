@interface MIBUSoftwareUpdateOperation
- (BOOL)isCommandAllowed:(id)a3;
- (MIBUSoftwareUpdateOperation)initWithDelegate:(id)a3;
- (id)_getStateTransitionTable;
- (id)details;
- (void)_cleanup;
- (void)_resume;
- (void)_startInstallTimer;
- (void)_stopInstallTimer;
- (void)_terminateNow;
- (void)_transitionToState:(unint64_t)a3 error:(id *)a4;
- (void)didHandleCommand:(id)a3 withError:(id)a4;
- (void)downloadDidFinishForUpdate:(id)a3;
- (void)handleInstallTimer:(id)a3;
- (void)installDidStartForUpdate:(id)a3;
- (void)scanDidFinishWithResults:(id)a3;
- (void)updateDidFinishWithError:(id)a3;
@end

@implementation MIBUSoftwareUpdateOperation

- (MIBUSoftwareUpdateOperation)initWithDelegate:(id)a3
{
  v10.receiver = self;
  v10.super_class = MIBUSoftwareUpdateOperation;
  v3 = [(MIBUOperation *)&v10 initWithDelegate:a3];
  v4 = v3;
  if (v3)
  {
    [(MIBUOperation *)v3 setOpCode:1];
    [(MIBUSoftwareUpdateOperation *)v4 setState:0];
    [(MIBUSoftwareUpdateOperation *)v4 setIdleTimeInterval:300.0];
    [(MIBUSoftwareUpdateOperation *)v4 setInstallTimer:0];
    [(MIBUSoftwareUpdateOperation *)v4 setSuController:0];
    error = v4->_error;
    v4->_error = 0;

    [(MIBUSoftwareUpdateOperation *)v4 setTargetBuildVersion:0];
    [(MIBUSoftwareUpdateOperation *)v4 setTargetOSVersion:0];
    v6 = +[MIBUDeviceController sharedInstance];
    v7 = [v6 buildVersion];
    [(MIBUSoftwareUpdateOperation *)v4 setCurrentBuildVersion:v7];

    [(MIBUSoftwareUpdateOperation *)v4 setTargetSUBundleSize:0];
    v8 = [(MIBUSoftwareUpdateOperation *)v4 _getStateTransitionTable];
    [(MIBUSoftwareUpdateOperation *)v4 setStateTransitionTable:v8];
  }

  return v4;
}

- (void)_resume
{
  v3 = [[MIBUSUController alloc] initWithDelegate:self];
  [(MIBUSoftwareUpdateOperation *)self setSuController:v3];

  v4 = [(MIBUOperation *)self delegate];
  v5 = [v4 nfcController];
  [v5 addObserver:self];

  if ([(MIBUOperation *)self inProgress])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100065D64();
    }

    v6 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [NSString stringWithFormat:@"already in progress resuming..."];;
      *buf = 138543618;
      v51 = self;
      v52 = 2114;
      v53 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    v9 = [MIBUDefaultPreferences objectForKey:@"PreviousOSVersion"];
    v10 = [MIBUDefaultPreferences objectForKey:@"TargetOSVersion"];
    [(MIBUSoftwareUpdateOperation *)self setTargetBuildVersion:v10];

    if (qword_1000B84A8[0] != -1)
    {
      sub_100065D78();
    }

    v11 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(MIBUSoftwareUpdateOperation *)self currentBuildVersion];
      [(MIBUSoftwareUpdateOperation *)self targetBuildVersion];
      v46 = v45 = v13;
      v14 = [NSString stringWithFormat:@"Current build version: %@ target version: %@"];;
      *buf = 138543618;
      v51 = self;
      v52 = 2114;
      v53 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    if (v9 && ([(MIBUSoftwareUpdateOperation *)self targetBuildVersion], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = [(MIBUSoftwareUpdateOperation *)self currentBuildVersion];
      v17 = [(MIBUSoftwareUpdateOperation *)self targetBuildVersion];
      v18 = [v16 isEqualToString:v17];

      if (v18)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100065EC8();
        }

        v19 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          v21 = [(MIBUSoftwareUpdateOperation *)self currentBuildVersion];
          v22 = [NSString stringWithFormat:@"OS updated from %@ to %@, update successful", v9, v21];
          *buf = 138543618;
          v51 = self;
          v52 = 2114;
          v53 = v22;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
        }

        v23 = 0;
      }

      else
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100065DA0();
        }

        v37 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_100065DC8(self, v37);
        }

        v49 = 0;
        v38 = [(MIBUSoftwareUpdateOperation *)self currentBuildVersion];
        v47 = [(MIBUSoftwareUpdateOperation *)self targetBuildVersion];
        sub_100016130(&v49, 0x4000000, 0, @"Current os version %@ != %@, update failed", v39, v40, v41, v42, v38);
        v23 = v49;
      }
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100065EF0();
      }

      v29 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        v31 = [NSString stringWithFormat:@"cancelling previously started operation..."];
        *buf = 138543618;
        v51 = self;
        v52 = 2114;
        v53 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
      }

      v32 = [(MIBUSoftwareUpdateOperation *)self suController];
      [v32 forcePurge];

      v48 = 0;
      sub_100016130(&v48, 67108870, 0, @"Software update operation cancelled", v33, v34, v35, v36, v45);
      v23 = v48;
    }

    v28 = 4;
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100065D50();
    }

    v24 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = [(MIBUSoftwareUpdateOperation *)self currentBuildVersion];
      v27 = [NSString stringWithFormat:@"starting operation from %@...", v26];
      *buf = 138543618;
      v51 = self;
      v52 = 2114;
      v53 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    v23 = 0;
    v28 = 1;
  }

  error = self->_error;
  self->_error = v23;
  v44 = v23;

  [(MIBUSoftwareUpdateOperation *)self _transitionToState:v28 error:0];
}

- (void)_terminateNow
{
  if ([(MIBUSoftwareUpdateOperation *)self state]== 4)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100065F2C();
    }

    v3 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [NSString stringWithFormat:@"already terminated"];
      v9 = 138543618;
      v10 = self;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v9, 0x16u);
    }
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100065F18();
    }

    v6 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [NSString stringWithFormat:@"terminating..."];
      v9 = 138543618;
      v10 = self;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v9, 0x16u);
    }

    [(MIBUSoftwareUpdateOperation *)self _transitionToState:4 error:0];
  }
}

- (id)details
{
  v3 = objc_opt_new();
  v4 = [(MIBUSoftwareUpdateOperation *)self suController];

  if (v4)
  {
    v5 = [(MIBUSoftwareUpdateOperation *)self suController];
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 phase]);
    [v3 setObject:v6 forKey:@"SoftwareUpdatePhase"];
  }

  v7 = [(MIBUSoftwareUpdateOperation *)self targetOSVersion];

  if (v7)
  {
    v8 = [(MIBUSoftwareUpdateOperation *)self targetOSVersion];
    [v3 setObject:v8 forKey:@"TargetOSVersion"];
  }

  v9 = [(MIBUSoftwareUpdateOperation *)self targetBuildVersion];

  if (v9)
  {
    v10 = [(MIBUSoftwareUpdateOperation *)self targetBuildVersion];
    [v3 setObject:v10 forKey:@"TargetBuildVersion"];
  }

  v11 = [(MIBUSoftwareUpdateOperation *)self suController];
  v12 = [v11 progress];

  if (v12)
  {
    v13 = [(MIBUSoftwareUpdateOperation *)self suController];
    v14 = [v13 progress];
    [v3 setObject:v14 forKey:@"Progress"];
  }

  v15 = [(MIBUSoftwareUpdateOperation *)self suController];
  v16 = [v15 timeRemaining];

  if (v16)
  {
    v17 = [(MIBUSoftwareUpdateOperation *)self suController];
    v18 = [v17 timeRemaining];
    [v3 setObject:v18 forKey:@"TimeRemaining"];
  }

  v19 = [(MIBUSoftwareUpdateOperation *)self targetSUBundleSize];

  if (v19)
  {
    v20 = [(MIBUSoftwareUpdateOperation *)self targetSUBundleSize];
    [v3 setObject:v20 forKey:@"TargetSUBundleSize"];
  }

  return v3;
}

- (BOOL)isCommandAllowed:(id)a3
{
  v4 = a3;
  v5 = [NSSet setWithArray:&off_1000A9ED8];
  if ([v4 intValue] == 8)
  {
    v6 = [(MIBUSoftwareUpdateOperation *)self state]== 2;
  }

  else
  {
    v6 = [v5 containsObject:v4];
  }

  return v6;
}

- (void)scanDidFinishWithResults:(id)a3
{
  v4 = a3;
  v5 = [(MIBUOperation *)self syncQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100041E30;
  v7[3] = &unk_100099480;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)downloadDidFinishForUpdate:(id)a3
{
  v4 = [(MIBUOperation *)self syncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041F90;
  block[3] = &unk_1000994A8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)installDidStartForUpdate:(id)a3
{
  v4 = a3;
  v5 = [(MIBUOperation *)self syncQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042054;
  v7[3] = &unk_100099480;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)updateDidFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(MIBUOperation *)self syncQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042318;
  v7[3] = &unk_100099480;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)didHandleCommand:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MIBUOperation *)self syncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100065B40;
  block[3] = &unk_10009F3E0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handleInstallTimer:(id)a3
{
  v4 = [(MIBUOperation *)self syncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000426FC;
  block[3] = &unk_1000994A8;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_transitionToState:(unint64_t)a3 error:(id *)a4
{
  objc_initWeak(&location, self);
  v7 = [(MIBUSoftwareUpdateOperation *)self stateTransitionTable];
  v8 = [NSNumber numberWithUnsignedInteger:[(MIBUSoftwareUpdateOperation *)self state]];
  v9 = [v7 objectForKey:v8];

  if ([(MIBUSoftwareUpdateOperation *)self state]== a3)
  {
    v25 = sub_100066224(buf);
    v23 = *buf;
    if (v25)
    {
      v26 = [NSString stringWithFormat:@"already in state %lu", [(MIBUSoftwareUpdateOperation *)self state]];
      *buf = 138543618;
      *&buf[4] = self;
      v36 = 2114;
      v37 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_37;
  }

  if (!v9)
  {
    v27 = sub_1000661BC(buf);
    v23 = *buf;
    if (v27)
    {
      [NSString stringWithFormat:@"Unrecognized device state %lu; cannot transition to %lu", [(MIBUSoftwareUpdateOperation *)self state], a3];
      objc_claimAutoreleasedReturnValue();
      sub_100066100();
    }

    goto LABEL_37;
  }

  v10 = [NSNumber numberWithUnsignedInteger:a3];
  v11 = [v9 containsObject:v10];

  if ((v11 & 1) == 0)
  {
    v28 = sub_1000660A8(qword_1000B84A8[0] == -1, buf);
    v23 = *buf;
    if (v28)
    {
      [NSString stringWithFormat:@"Not allowed to transition from state %lu to state %lu", [(MIBUSoftwareUpdateOperation *)self state], a3];
      objc_claimAutoreleasedReturnValue();
      sub_100066100();
    }

LABEL_37:
    v14 = 0;
LABEL_27:

    goto LABEL_28;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_100066144();
  }

  v12 = qword_1000B84A0;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [NSString stringWithFormat:@"changing state from %lu to %lu", [(MIBUSoftwareUpdateOperation *)self state], a3];
    *buf = 138543618;
    *&buf[4] = self;
    v36 = 2114;
    v37 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  v14 = 0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      [(MIBUSoftwareUpdateOperation *)self _stopInstallTimer];
      v19 = [(MIBUOperation *)self delegate];
      v20 = [v19 nfcController];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000431A0;
      v29[3] = &unk_10009C6A0;
      objc_copyWeak(&v30, &location);
      [v20 terminateWithCompletion:v29];

      objc_destroyWeak(&v30);
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_28;
      }

      [(MIBUSoftwareUpdateOperation *)self _cleanup];
      v17 = [(MIBUOperation *)self delegate];
      [v17 operationFinishedWithError:self->_error];
    }

    goto LABEL_17;
  }

  if (a3 == 1)
  {
    [(MIBUOperation *)self saveOpCode];
    v18 = dispatch_get_global_queue(33, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100043148;
    block[3] = &unk_100099458;
    objc_copyWeak(&v33, &location);
    dispatch_async(v18, block);

    objc_destroyWeak(&v33);
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  if (a3 != 2)
  {
    goto LABEL_28;
  }

  v15 = [(MIBUOperation *)self delegate];
  v16 = [v15 nfcController];
  v31 = 0;
  [v16 start:&v31];
  v14 = v31;

  [(MIBUSoftwareUpdateOperation *)self _startInstallTimer];
LABEL_18:
  if (qword_1000B84A8[0] != -1)
  {
    sub_10006616C();
  }

  v21 = qword_1000B84A0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [NSString stringWithFormat:@"state changed from %lu to %lu", [(MIBUSoftwareUpdateOperation *)self state], a3];
    *buf = 138543618;
    *&buf[4] = self;
    v36 = 2114;
    v37 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  [(MIBUSoftwareUpdateOperation *)self setState:a3];
  if (v14)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100066194();
    }

    v23 = qword_1000B84A0;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [NSString stringWithFormat:@"Failed to transition to state: %ld; current device state is: %ld; error: %@", a3, [(MIBUSoftwareUpdateOperation *)self state], v14];
      objc_claimAutoreleasedReturnValue();
      sub_100066100();
    }

    goto LABEL_27;
  }

LABEL_28:
  if (a4)
  {
    v24 = v14;
    *a4 = v14;
  }

  objc_destroyWeak(&location);
}

- (id)_getStateTransitionTable
{
  v4[0] = &off_1000A9270;
  v4[1] = &off_1000A9288;
  v5[0] = &off_1000A9EF0;
  v5[1] = &off_1000A9F08;
  v4[2] = &off_1000A92B8;
  v4[3] = &off_1000A92D0;
  v5[2] = &off_1000A9F20;
  v5[3] = &off_1000A9F38;
  v4[4] = &off_1000A92A0;
  v5[4] = &__NSArray0__struct;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

- (void)_startInstallTimer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000434C4;
  block[3] = &unk_1000994A8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_stopInstallTimer
{
  v3 = [(MIBUSoftwareUpdateOperation *)self installTimer];

  if (v3)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_1000662A0();
    }

    v4 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [NSString stringWithFormat:@"Stopping Install Timer..."];
      v8 = 138543618;
      v9 = self;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v8, 0x16u);
    }

    v7 = [(MIBUSoftwareUpdateOperation *)self installTimer];
    [v7 invalidate];

    [(MIBUSoftwareUpdateOperation *)self setInstallTimer:0];
  }
}

- (void)_cleanup
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_1000662B4();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [NSString stringWithFormat:@"removing default preference keys..."];
    v15 = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v15, 0x16u);
  }

  [MIBUDefaultPreferences removeObjectForKey:@"CurrentOperation"];
  [MIBUDefaultPreferences removeObjectForKey:@"PreviousOSVersion"];
  [MIBUDefaultPreferences removeObjectForKey:@"TargetOSVersion"];
  if (qword_1000B84A8[0] != -1)
  {
    sub_1000662C8();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [NSString stringWithFormat:@"removing nfc observer..."];
    v15 = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v15, 0x16u);
  }

  v9 = [(MIBUOperation *)self delegate];
  v10 = [v9 nfcController];
  [v10 removeObserver:self];

  if (qword_1000B84A8[0] != -1)
  {
    sub_1000662F0();
  }

  v11 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [NSString stringWithFormat:@"termination SU controller..."];
    v15 = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v15, 0x16u);
  }

  v14 = [(MIBUSoftwareUpdateOperation *)self suController];
  [v14 terminate];
}

@end