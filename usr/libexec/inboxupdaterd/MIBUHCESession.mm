@interface MIBUHCESession
- (BOOL)_endHCESession:(id *)session expected:(BOOL)expected;
- (BOOL)running;
- (MIBUHCESession)initWithDelegate:(id)delegate;
- (id)_handleAPDU:(id)u;
- (void)_changeSessionState:(unint64_t)state;
- (void)_hceSessionDidEnd:(id)end;
- (void)_hceSessionDidStart:(id)start error:(id)error;
- (void)_listenToCommand;
- (void)_startHCESessionWithCompletion:(id)completion;
- (void)endHCESession:(id *)session;
- (void)hceSessionDidConnect:(id)connect;
- (void)hceSessionDidDisconnect:(id)disconnect;
- (void)hceSessionDidEndUnexpectedly:(id)unexpectedly;
- (void)startHCESessionWithCompletion:(id)completion;
- (void)startListening:(id *)listening;
- (void)stopListening;
- (void)waitForTermination:(id *)termination;
@end

@implementation MIBUHCESession

- (MIBUHCESession)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = MIBUHCESession;
  v5 = [(MIBUHCESession *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(MIBUHCESession *)v5 setDelegate:delegateCopy];
    [(MIBUHCESession *)v6 setSession:0];
    v7 = objc_opt_new();
    [(MIBUHCESession *)v6 setSessionLock:v7];

    [(MIBUHCESession *)v6 setSessionState:0];
    v8 = objc_opt_new();
    [(MIBUHCESession *)v6 setPendingAPDU:v8];

    v9 = +[NFHardwareManager sharedHardwareManagerWithNoUI];
    [(MIBUHCESession *)v6 setManager:v9];

    v10 = objc_alloc_init(NSOperationQueue);
    [(MIBUHCESession *)v6 setQueue:v10];

    queue = [(MIBUHCESession *)v6 queue];
    [queue setMaxConcurrentOperationCount:1];

    queue2 = [(MIBUHCESession *)v6 queue];
    [queue2 setName:@"com.apple.mobileinboxupdate.session_queue"];
  }

  return v6;
}

- (void)startHCESessionWithCompletion:(id)completion
{
  completionCopy = completion;
  sessionLock = [(MIBUHCESession *)self sessionLock];
  [sessionLock lock];

  if ([(MIBUHCESession *)self sessionState])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_10005250C();
    }

    v6 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v9 = 134217984;
      sessionState = [(MIBUHCESession *)self sessionState];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "HCE Session state: %ld, session already active", &v9, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    [(MIBUHCESession *)self _startHCESessionWithCompletion:completionCopy];
  }

  sessionLock2 = [(MIBUHCESession *)self sessionLock];
  [sessionLock2 unlock];
}

- (void)endHCESession:(id *)session
{
  sessionLock = [(MIBUHCESession *)self sessionLock];
  [sessionLock lock];

  if (![(MIBUHCESession *)self sessionState])
  {
    sub_100052520(self, &v10);
    v6 = v10;
    if (!session)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  [(MIBUHCESession *)self _endHCESession:&v9 expected:1];
  v6 = v9;
  if (session)
  {
LABEL_3:
    v7 = v6;
    *session = v6;
  }

LABEL_4:
  sessionLock2 = [(MIBUHCESession *)self sessionLock];
  [sessionLock2 unlock];
}

- (void)startListening:(id *)listening
{
  sessionLock = [(MIBUHCESession *)self sessionLock];
  [sessionLock lock];

  objc_initWeak(&location, self);
  if ([(MIBUHCESession *)self sessionState]== 2)
  {
    queue = [(MIBUHCESession *)self queue];
    v7 = [queue operationCount] == 0;

    if (v7)
    {
      queue2 = [(MIBUHCESession *)self queue];
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_100002884;
      v23 = &unk_100098E78;
      selfCopy = self;
      objc_copyWeak(&v25, &location);
      v9 = [NSBlockOperation blockOperationWithBlock:&v20];
      [queue2 addOperation:{v9, v20, v21, v22, v23, selfCopy}];

      objc_destroyWeak(&v25);
      v10 = 0;
    }

    else
    {
      sub_100052678(buf);
      v10 = *buf;
    }
  }

  else
  {
    v13 = sub_100052610(buf);
    v14 = *buf;
    if (v13)
    {
      sessionState = [(MIBUHCESession *)self sessionState];
      *buf = 134217984;
      *&buf[4] = sessionState;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "HCE Session state: %ld, session cannot start listening", buf, 0xCu);
    }

    v26 = 0;
    sub_100016130(&v26, 83886080, 0, @"Cannot start listening for NFC commands", v16, v17, v18, v19, v20);
    v10 = v26;
  }

  if (listening)
  {
    v11 = v10;
    *listening = v10;
  }

  sessionLock2 = [(MIBUHCESession *)self sessionLock];
  [sessionLock2 unlock];

  objc_destroyWeak(&location);
}

- (void)stopListening
{
  sessionLock = [(MIBUHCESession *)self sessionLock];
  [sessionLock lock];

  sessionState = [(MIBUHCESession *)self sessionState];
  suppressLogging = [(MIBUHCESession *)self suppressLogging];
  if (sessionState < 2)
  {
    if ((suppressLogging & 1) == 0)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100052728();
      }

      v7 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session is already terminated or cancelling, do nothing", v9, 2u);
      }
    }
  }

  else
  {
    if ((suppressLogging & 1) == 0)
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_10005273C();
      }

      v6 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Signaling session thread to stop...", buf, 2u);
      }
    }

    [(MIBUHCESession *)self _changeSessionState:1];
  }

  sessionLock2 = [(MIBUHCESession *)self sessionLock];
  [sessionLock2 unlock];
}

- (BOOL)running
{
  sessionLock = [(MIBUHCESession *)self sessionLock];
  [sessionLock lock];

  LOBYTE(sessionLock) = [(MIBUHCESession *)self sessionState]!= 0;
  sessionLock2 = [(MIBUHCESession *)self sessionLock];
  [sessionLock2 unlock];

  return sessionLock;
}

- (void)waitForTermination:(id *)termination
{
  sessionLock = [(MIBUHCESession *)self sessionLock];
  [sessionLock lock];

  if ([(MIBUHCESession *)self sessionState])
  {
    *&v5 = 134217984;
    v12 = v5;
    do
    {
      if (![(MIBUHCESession *)self suppressLogging])
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100052750();
        }

        v6 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v6;
          sessionState = [(MIBUHCESession *)self sessionState];
          *buf = v12;
          v14 = sessionState;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Current session state is %ld; waiting for session to terminate...", buf, 0xCu);
        }
      }

      sessionLock2 = [(MIBUHCESession *)self sessionLock];
      [sessionLock2 wait];
    }

    while ([(MIBUHCESession *)self sessionState]);
  }

  if (![(MIBUHCESession *)self suppressLogging])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100052778();
    }

    v10 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HCE session termination wait successful", buf, 2u);
    }
  }

  [(MIBUHCESession *)self setSession:0];
  sessionLock3 = [(MIBUHCESession *)self sessionLock];
  [sessionLock3 unlock];
}

- (void)hceSessionDidEndUnexpectedly:(id)unexpectedly
{
  sessionLock = [(MIBUHCESession *)self sessionLock];
  [sessionLock lock];

  if (qword_1000B84A8[0] != -1)
  {
    sub_1000527A0();
  }

  v5 = qword_1000B84A0;
  if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
  {
    sub_1000527B4(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  [(MIBUHCESession *)self _changeSessionState:0];
  delegate = [(MIBUHCESession *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(MIBUHCESession *)self delegate];
    [delegate2 sessionDidEndUnexpectedly:self];
  }

  sessionLock2 = [(MIBUHCESession *)self sessionLock];
  [sessionLock2 unlock];
}

- (void)hceSessionDidConnect:(id)connect
{
  sessionLock = [(MIBUHCESession *)self sessionLock];
  [sessionLock lock];

  if ([(MIBUHCESession *)self sessionState]>= 2)
  {
    if (![(MIBUHCESession *)self suppressLogging])
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_1000527EC();
      }

      v5 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HCE session connected!", v10, 2u);
      }
    }

    [(MIBUHCESession *)self _changeSessionState:3];
    delegate = [(MIBUHCESession *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(MIBUHCESession *)self delegate];
      [delegate2 sessionDidConnect:self];
    }
  }

  sessionLock2 = [(MIBUHCESession *)self sessionLock];
  [sessionLock2 unlock];
}

- (void)hceSessionDidDisconnect:(id)disconnect
{
  sessionLock = [(MIBUHCESession *)self sessionLock];
  [sessionLock lock];

  if ([(MIBUHCESession *)self sessionState]>= 2)
  {
    if (![(MIBUHCESession *)self suppressLogging])
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100052800();
      }

      v5 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HCE session disconnected", v10, 2u);
      }
    }

    [(MIBUHCESession *)self _changeSessionState:2];
    delegate = [(MIBUHCESession *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(MIBUHCESession *)self delegate];
      [delegate2 sessionDidDisconnect:self];
    }
  }

  sessionLock2 = [(MIBUHCESession *)self sessionLock];
  [sessionLock2 unlock];
}

- (void)_hceSessionDidStart:(id)start error:(id)error
{
  errorCopy = error;
  sessionLock = [(MIBUHCESession *)self sessionLock];
  [sessionLock lock];

  if (!errorCopy)
  {
    if (![(MIBUHCESession *)self suppressLogging])
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100052814();
      }

      v7 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "HCE Session started!", v12, 2u);
      }
    }

    [(MIBUHCESession *)self _changeSessionState:2];
  }

  delegate = [(MIBUHCESession *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(MIBUHCESession *)self delegate];
    [delegate2 sessionDidStart:self withError:errorCopy];
  }

  sessionLock2 = [(MIBUHCESession *)self sessionLock];
  [sessionLock2 unlock];
}

- (void)_hceSessionDidEnd:(id)end
{
  sessionLock = [(MIBUHCESession *)self sessionLock];
  [sessionLock lock];

  [(MIBUHCESession *)self _changeSessionState:0];
  delegate = [(MIBUHCESession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MIBUHCESession *)self delegate];
    [delegate2 sessionDidEnd:self];
  }

  sessionLock2 = [(MIBUHCESession *)self sessionLock];
  [sessionLock2 unlock];
}

- (void)_changeSessionState:(unint64_t)state
{
  if (![(MIBUHCESession *)self suppressLogging])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100052828();
    }

    v5 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v8 = 134218240;
      sessionState = [(MIBUHCESession *)self sessionState];
      v10 = 2048;
      stateCopy = state;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Changing HCE session state from: %ld to: %ld", &v8, 0x16u);
    }
  }

  [(MIBUHCESession *)self setSessionState:state];
  sessionLock = [(MIBUHCESession *)self sessionLock];
  [sessionLock signal];
}

- (void)_startHCESessionWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003940;
  v25 = sub_100003950;
  v26 = 0;
  manager = [(MIBUHCESession *)self manager];
  getHwSupport = [manager getHwSupport];

  if (getHwSupport == 2)
  {
    if (![(MIBUHCESession *)self suppressLogging])
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_1000528D4();
      }

      v7 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting HCE Session ...", buf, 2u);
      }
    }

    v8 = +[NFHardwareManager sharedHardwareManagerWithNoUI];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100003A28;
    v15[3] = &unk_100099080;
    objc_copyWeak(&v18, &location);
    v17 = &v21;
    v15[4] = self;
    v16 = completionCopy;
    v9 = [v8 startHCESession:v15];

    objc_destroyWeak(&v18);
  }

  else
  {
    sub_10005283C();
    v10 = (v22 + 5);
    obj = v22[5];
    sub_100016130(&obj, 83886085, 0, @"Device does not support NearField", v11, v12, v13, v14, v15[0]);
    objc_storeStrong(v10, obj);
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v22[5]);
    }
  }

  _Block_object_dispose(&v21, 8);

  objc_destroyWeak(&location);
}

- (BOOL)_endHCESession:(id *)session expected:(BOOL)expected
{
  expectedCopy = expected;
  if (![(MIBUHCESession *)self suppressLogging])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100052ADC();
    }

    v7 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stopping Emulation...", buf, 2u);
    }
  }

  session = [(MIBUHCESession *)self session];
  stopEmulation = [session stopEmulation];

  if (![(MIBUHCESession *)self suppressLogging])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100052AF0();
    }

    v10 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = expectedCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ending HCE Session; expected=%d...", buf, 8u);
    }
  }

  session2 = [(MIBUHCESession *)self session];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100004154;
  v14[3] = &unk_1000990E8;
  v15 = expectedCopy;
  v14[4] = self;
  [session2 endSessionWithCompletion:v14];

  if (session)
  {
    v12 = stopEmulation;
    *session = stopEmulation;
  }

  return stopEmulation == 0;
}

- (void)_listenToCommand
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_100003940;
  v46 = sub_100003950;
  v47 = 0;
  v39 = 0;
  v40[0] = &v39;
  v40[1] = 0x3032000000;
  v40[2] = sub_100003940;
  v40[3] = sub_100003950;
  v41 = 0;
  v33 = dispatch_semaphore_create(0);
  v3 = dispatch_time(0, 55000000000);
  v4 = 0;
  *&v5 = 138412290;
  v32 = v5;
  while (1)
  {
    sessionLock = [(MIBUHCESession *)self sessionLock];
    [sessionLock lock];
    while (1)
    {

      sessionState = [(MIBUHCESession *)self sessionState];
      v8 = sessionState != 2;
      if (sessionState != 2)
      {
        break;
      }

      if (![(MIBUHCESession *)self suppressLogging])
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100052B18();
        }

        v9 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Waiting to connect to reader ...", buf, 2u);
        }
      }

      sessionLock = [NSDate dateWithTimeIntervalSinceNow:55.0];
      sessionLock2 = [(MIBUHCESession *)self sessionLock];
      v11 = [sessionLock2 waitUntilDate:sessionLock];

      if ((v11 & 1) == 0)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100052B40();
        }

        v23 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v52) = 55;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Wait reader connection timed out after %ds", buf, 8u);
        }

        sessionLock3 = [(MIBUHCESession *)self sessionLock];
        [sessionLock3 unlock];

        goto LABEL_53;
      }

      v3 = dispatch_time(0, 55000000000);
    }

    sessionLock4 = [(MIBUHCESession *)self sessionLock];
    [sessionLock4 unlock];

    if ([(MIBUHCESession *)self sessionState]<= 1)
    {
      if (![(MIBUHCESession *)self suppressLogging])
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100052D40();
        }

        v30 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "HCE Listening Thread: quit listening loop...", buf, 2u);
        }
      }

LABEL_53:
      if (v4)
      {
        if (![(MIBUHCESession *)self suppressLogging])
        {
          if (qword_1000B84A8[0] != -1)
          {
            sub_100052D68();
          }

          v25 = qword_1000B84A0;
          if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v52) = 3;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Waiting %ds before stopping HCE listening thread...", buf, 8u);
          }
        }

        sleep(3u);
      }

      goto LABEL_60;
    }

    if (![(MIBUHCESession *)self suppressLogging])
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100052B68();
      }

      v13 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Reading APDU from reader...", buf, 2u);
      }
    }

    session = [(MIBUHCESession *)self session];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100004C0C;
    v35[3] = &unk_100099190;
    v37 = &v42;
    v38 = &v39;
    v15 = v33;
    v36 = v15;
    [session readAPDUWithCompletion:v35];

    if (dispatch_semaphore_wait(v15, v3))
    {
      break;
    }

    if (*(v40[0] + 40))
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100052BB8();
      }

      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_100052BE0(v53, v40);
      }

      v4 = 0;
    }

    else
    {
      if (![(MIBUHCESession *)self suppressLogging])
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100052C20();
        }

        v16 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v43[5];
          *buf = 138543362;
          v52 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Got APDU: %{public}@", buf, 0xCu);
        }
      }

      v4 = [(MIBUHCESession *)self _handleAPDU:v43[5]];
      if (!v4)
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100052C48();
        }

        v18 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_100052C70(v49, &v50, v18);
        }

        v4 = [[NSData alloc] initWithBytes:&unk_1000852B2 length:2];
      }

      if (![(MIBUHCESession *)self suppressLogging])
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100052CB0();
        }

        v19 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v32;
          v52 = v4;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending APDU response: %@", buf, 0xCu);
        }
      }

      session2 = [(MIBUHCESession *)self session];
      v21 = [session2 sendAPDU:v4];
      v22 = *(v40[0] + 40);
      *(v40[0] + 40) = v21;

      if (*(v40[0] + 40))
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100052CD8();
        }

        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_100052D00(v48, v40);
        }
      }
    }

    if ([(MIBUHCESession *)self sessionState]<= 1)
    {
      goto LABEL_53;
    }
  }

  if (![(MIBUHCESession *)self suppressLogging])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100052B90();
    }

    v31 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v52) = 55;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Reading APDU timed out after %ds", buf, 8u);
    }
  }

  v4 = 0;
  v8 = 0;
LABEL_60:
  if ([(MIBUHCESession *)self sessionState])
  {
    if (![(MIBUHCESession *)self suppressLogging])
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100052D90();
      }

      v26 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "HCE Listening Thread: ending HCE session...", buf, 2u);
      }
    }

    v27 = (v40[0] + 40);
    obj = *(v40[0] + 40);
    [(MIBUHCESession *)self _endHCESession:&obj expected:v8];
    objc_storeStrong(v27, obj);
    if (*(v40[0] + 40))
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100052DB8();
      }

      v28 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_100052DE0(v40, v28, v29);
      }
    }
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v42, 8);
}

- (id)_handleAPDU:(id)u
{
  uCopy = u;
  v5 = objc_opt_new();
  v6 = [[MIBUNFCCommand alloc] initWithAPDU:uCopy];
  v7 = v6;
  if (!v6)
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100052FDC();
    }

    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100052FF0();
    }

    v13 = [NSData alloc];
    v14 = &unk_1000852B6;
    goto LABEL_22;
  }

  if (![(MIBUNFCCommand *)v6 code])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100052FC8();
    }

    v15 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138543362;
      v31 = uCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unsupported APDU command: %{public}@", &v30, 0xCu);
    }

    v13 = [NSData alloc];
    v14 = &unk_1000852B4;
LABEL_22:
    v12 = [v13 initWithBytes:v14 length:2];
    goto LABEL_44;
  }

  if ([(MIBUNFCCommand *)v7 code]== 5)
  {
    payload = [(MIBUNFCCommand *)v7 payload];
    v9 = [payload objectForKey:@"EvelopedAPDU"];

    if (v9 && [v9 length])
    {
      if (![(MIBUHCESession *)self suppressLogging])
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100052FA0();
        }

        v10 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 138543362;
          v31 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving enveloped data: %{public}@ to pending apdu", &v30, 0xCu);
        }
      }

      pendingAPDU = [(MIBUHCESession *)self pendingAPDU];
      [pendingAPDU appendData:v9];

      v12 = [[NSData alloc] initWithBytes:&unk_1000852B0 length:2];
    }

    else
    {
      if (![(MIBUHCESession *)self suppressLogging])
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100052FB4();
        }

        v21 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          pendingAPDU2 = [(MIBUHCESession *)self pendingAPDU];
          v30 = 138543362;
          v31 = pendingAPDU2;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "ENVELOPE command chain ends; processing pending APDU: %{public}@", &v30, 0xCu);
        }
      }

      pendingAPDU3 = [(MIBUHCESession *)self pendingAPDU];
      v12 = [(MIBUHCESession *)self _handleAPDU:pendingAPDU3];

      v25 = objc_opt_new();
      [(MIBUHCESession *)self setPendingAPDU:v25];
    }

    goto LABEL_37;
  }

  delegate = [(MIBUHCESession *)self delegate];
  v17 = [delegate handleCommand:v7];

  if ([v17 rejected])
  {
    if (qword_1000B84A8[0] != -1)
    {
      sub_100052EFC();
    }

    v18 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100052F10(v18, v7);
    }

    v19 = [NSData alloc];
    v20 = &unk_1000852B4;
  }

  else
  {
    serialize = [v17 serialize];
    if (serialize)
    {
      v9 = serialize;
      [v5 appendData:serialize];
      v27 = [[NSData alloc] initWithBytes:&unk_1000852B0 length:2];
      [v5 appendData:v27];

      v12 = v5;
LABEL_37:

      goto LABEL_44;
    }

    if (qword_1000B84A8[0] != -1)
    {
      sub_100052E58();
    }

    v28 = qword_1000B84A0;
    if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
    {
      sub_100052E6C(v28, v7);
    }

    v19 = [NSData alloc];
    v20 = &unk_1000852B2;
  }

  v12 = [v19 initWithBytes:v20 length:2];

LABEL_44:

  return v12;
}

@end