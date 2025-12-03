@interface MIBUDiagnosticsOperation
- (BOOL)isCommandAllowed:(id)allowed;
- (MIBUDiagnosticsOperation)initWithDelegate:(id)delegate;
- (void)_cleanup;
- (void)_operationDone;
- (void)_resume;
- (void)appDidExitWithError:(id)error;
- (void)appDidLaunchWithError:(id)error;
@end

@implementation MIBUDiagnosticsOperation

- (MIBUDiagnosticsOperation)initWithDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = MIBUDiagnosticsOperation;
  v3 = [(MIBUOperation *)&v7 initWithDelegate:delegate];
  v4 = v3;
  if (v3)
  {
    [(MIBUOperation *)v3 setOpCode:2];
    [(MIBUDiagnosticsOperation *)v4 setDiagController:0];
    error = v4->_error;
    v4->_error = 0;
  }

  return v4;
}

- (void)_resume
{
  v3 = [[MIBUDiagnosticsController alloc] initWithDelegate:self];
  [(MIBUDiagnosticsOperation *)self setDiagController:v3];

  if (![(MIBUOperation *)self inProgress])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005AF18();
    }

    v7 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [NSString stringWithFormat:@"Starting Diagnostics operation"];
      *buf = 138543618;
      selfCopy2 = self;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    [(MIBUOperation *)self saveOpCode];
    v5 = dispatch_get_global_queue(33, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100020788;
    block[3] = &unk_1000994A8;
    block[4] = self;
    dispatch_async(v5, block);
    goto LABEL_11;
  }

  if (qword_1000B84A8[0] != -1)
  {
    sub_10005AF2C();
  }

  v4 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [NSString stringWithFormat:@"Diagnostics operation already in progress resuming..."];;
    *buf = 138543618;
    selfCopy2 = self;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);

LABEL_11:
  }
}

- (BOOL)isCommandAllowed:(id)allowed
{
  allowedCopy = allowed;
  v4 = [NSSet setWithArray:&off_1000A9AB8];
  v5 = [v4 containsObject:allowedCopy];

  return v5;
}

- (void)appDidLaunchWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    syncQueue = [(MIBUOperation *)self syncQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000209C4;
    v9[3] = &unk_100099480;
    v9[4] = self;
    v10 = errorCopy;
    dispatch_async(syncQueue, v9);
  }

  else
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005AF40();
    }

    v6 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [NSString stringWithFormat:@"Diagnostic app successfully launched!"];
      *buf = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }
  }
}

- (void)appDidExitWithError:(id)error
{
  errorCopy = error;
  syncQueue = [(MIBUOperation *)self syncQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020C8C;
  v7[3] = &unk_100099480;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(syncQueue, v7);
}

- (void)_cleanup
{
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005AF7C();
  }

  v3 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [NSString stringWithFormat:@"removing default preference keys..."];
    *buf = 138543618;
    selfCopy3 = self;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  [MIBUDefaultPreferences removeObjectForKey:@"CurrentOperation"];
  if (qword_1000B84A8[0] != -1)
  {
    sub_10005AF90();
  }

  v6 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [NSString stringWithFormat:@"Terminating diag controller..."];
    *buf = 138543618;
    selfCopy3 = self;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
  }

  diagController = [(MIBUDiagnosticsOperation *)self diagController];
  v15 = 0;
  v10 = [diagController terminate:&v15];
  v11 = v15;

  if ((v10 & 1) == 0)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005AFB8();
    }

    v12 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [NSString stringWithFormat:@"Failed to terminate Diagnostics App. err: %@", v11];
      *buf = 138543618;
      selfCopy3 = self;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }
  }
}

- (void)_operationDone
{
  [(MIBUDiagnosticsOperation *)self _cleanup];
  delegate = [(MIBUOperation *)self delegate];
  [delegate operationFinishedWithError:self->_error];
}

@end