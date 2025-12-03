@interface OTSOSUpdatePreapprovalsOperation
- (OTSOSUpdatePreapprovalsOperation)initWithDependencies:(id)dependencies intendedState:(id)state sosNotPresentState:(id)presentState errorState:(id)errorState;
- (void)groupStart;
@end

@implementation OTSOSUpdatePreapprovalsOperation

- (void)groupStart
{
  objc_initWeak(&location, self);
  deps = [(OTSOSUpdatePreapprovalsOperation *)self deps];
  sosAdapter = [deps sosAdapter];
  sosEnabled = [sosAdapter sosEnabled];

  if (sosEnabled)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100122E8C;
    v24[3] = &unk_1003452E8;
    objc_copyWeak(&v25, &location);
    v6 = [NSBlockOperation blockOperationWithBlock:v24];
    [(OTSOSUpdatePreapprovalsOperation *)self setFinishedOp:v6];

    finishedOp = [(OTSOSUpdatePreapprovalsOperation *)self finishedOp];
    [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

    deps2 = [(OTSOSUpdatePreapprovalsOperation *)self deps];
    sosAdapter2 = [deps2 sosAdapter];
    v23 = 0;
    v10 = [OTSOSAdapterHelpers peerPublicSigningKeySPKIsForCircle:sosAdapter2 error:&v23];
    v11 = v23;

    if (!v10 || v11)
    {
      v18 = sub_100006274("SecError");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v11;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "octagon-sos: Can't fetch trusted peers; stopping preapproved key update: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v11];
      sosNotPresentState = [(OTSOSUpdatePreapprovalsOperation *)self sosNotPresentState];
      [(OTSOSUpdatePreapprovalsOperation *)self setNextState:sosNotPresentState];

      finishedOp2 = [(OTSOSUpdatePreapprovalsOperation *)self finishedOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp2];
    }

    else
    {
      v12 = sub_100006274("octagon-sos");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating SOS preapproved keys to %@", buf, 0xCu);
      }

      deps3 = [(OTSOSUpdatePreapprovalsOperation *)self deps];
      cuttlefishXPCWrapper = [deps3 cuttlefishXPCWrapper];
      deps4 = [(OTSOSUpdatePreapprovalsOperation *)self deps];
      activeAccount = [deps4 activeAccount];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100123080;
      v21[3] = &unk_100337810;
      objc_copyWeak(&v22, &location);
      [cuttlefishXPCWrapper setPreapprovedKeysWithSpecificUser:activeAccount preapprovedKeys:v10 reply:v21];

      objc_destroyWeak(&v22);
    }

    objc_destroyWeak(&v25);
  }

  else
  {
    v17 = sub_100006274("octagon-sos");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SOS not enabled on this platform?", buf, 2u);
    }
  }

  objc_destroyWeak(&location);
}

- (OTSOSUpdatePreapprovalsOperation)initWithDependencies:(id)dependencies intendedState:(id)state sosNotPresentState:(id)presentState errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  presentStateCopy = presentState;
  errorStateCopy = errorState;
  v18.receiver = self;
  v18.super_class = OTSOSUpdatePreapprovalsOperation;
  v15 = [(CKKSGroupOperation *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_deps, dependencies);
    objc_storeStrong(&v16->_intendedState, state);
    objc_storeStrong(&v16->_sosNotPresentState, presentState);
    objc_storeStrong(&v16->_nextState, errorState);
  }

  return v16;
}

@end