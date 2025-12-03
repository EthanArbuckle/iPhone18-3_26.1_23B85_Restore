@interface OTDetermineCDPBitStatusOperation
- (OTDetermineCDPBitStatusOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation OTDetermineCDPBitStatusOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon-cdp-status");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking CDP status", &buf, 2u);
  }

  deps = [(OTDetermineCDPBitStatusOperation *)self deps];
  stateHolder = [deps stateHolder];
  v32 = 0;
  v6 = [stateHolder loadOrCreateAccountMetadata:&v32];
  v7 = v32;

  if (v7)
  {
    deps2 = [(OTDetermineCDPBitStatusOperation *)self deps];
    lockStateTracker = [deps2 lockStateTracker];
    v10 = [lockStateTracker isLockedError:v7];

    v11 = sub_100006274("octagon-cdp-status");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device is locked! restarting on unlock", &buf, 2u);
      }

      [(OTDetermineCDPBitStatusOperation *)self setNextState:@"WaitForClassCUnlock"];
      [(CKKSResultOperation *)self setError:v7];
    }

    else
    {
      if (v12)
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to load account metadata: %@", &buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v7];
    }
  }

  else
  {
    v13 = sub_100006274("octagon-cdp-status");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      cdpState = [v6 cdpState];
      if (cdpState >= 3)
      {
        v15 = [NSString stringWithFormat:@"(unknown: %i)", cdpState];
      }

      else
      {
        v15 = *(&off_1003369E0 + cdpState);
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CDP is %@", &buf, 0xCu);
    }

    if ([v6 cdpState] == 2)
    {
      intendedState = [(OTDetermineCDPBitStatusOperation *)self intendedState];
      [(OTDetermineCDPBitStatusOperation *)self setNextState:intendedState];
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v36 = 0x2020000000;
      v37 = 0;
      objc_initWeak(&location, self);
      deps3 = [(OTDetermineCDPBitStatusOperation *)self deps];
      cuttlefishXPCWrapper = [deps3 cuttlefishXPCWrapper];
      deps4 = [(OTDetermineCDPBitStatusOperation *)self deps];
      activeAccount = [deps4 activeAccount];
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000CD3D0;
      v29[3] = &unk_1003369C0;
      objc_copyWeak(&v30, &location);
      v29[4] = &buf;
      [cuttlefishXPCWrapper trustStatusWithSpecificUser:activeAccount reply:v29];

      cdpState2 = [v6 cdpState];
      if (cdpState2 != *(*(&buf + 1) + 24))
      {
        deps5 = [(OTDetermineCDPBitStatusOperation *)self deps];
        stateHolder2 = [deps5 stateHolder];
        v27 = 0;
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1000CD7DC;
        v28[3] = &unk_100337FC0;
        v28[4] = &buf;
        [stateHolder2 persistAccountChanges:v28 error:&v27];
        v24 = v27;

        if (v24)
        {
          v25 = sub_100006274("octagon-cdp-status");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *v33 = 138412290;
            v34 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Failed to load account metadata: %@", v33, 0xCu);
          }

          [(CKKSResultOperation *)self setError:v24];
        }

        cdpState2 = *(*(&buf + 1) + 24);
      }

      if (cdpState2 == 2)
      {
        intendedState2 = [(OTDetermineCDPBitStatusOperation *)self intendedState];
        [(OTDetermineCDPBitStatusOperation *)self setNextState:intendedState2];
      }

      else
      {
        [(OTDetermineCDPBitStatusOperation *)self setNextState:@"WaitForCDP"];
      }

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
      _Block_object_dispose(&buf, 8);
    }
  }
}

- (OTDetermineCDPBitStatusOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = OTDetermineCDPBitStatusOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deps, dependencies);
    objc_storeStrong(&v13->_intendedState, state);
    objc_storeStrong(&v13->_nextState, errorState);
  }

  return v13;
}

@end