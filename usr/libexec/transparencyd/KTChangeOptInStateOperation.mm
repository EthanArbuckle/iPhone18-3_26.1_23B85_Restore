@interface KTChangeOptInStateOperation
- (KTChangeOptInStateOperation)initWithDependenics:(id)dependenics intendedState:(id)state errorState:(id)errorState optinStates:(id)states;
- (void)evalCurrentOptInState:(BOOL)state optInStateError:(id)error;
- (void)groupStart;
@end

@implementation KTChangeOptInStateOperation

- (KTChangeOptInStateOperation)initWithDependenics:(id)dependenics intendedState:(id)state errorState:(id)errorState optinStates:(id)states
{
  dependenicsCopy = dependenics;
  stateCopy = state;
  errorStateCopy = errorState;
  statesCopy = states;
  v18.receiver = self;
  v18.super_class = KTChangeOptInStateOperation;
  v14 = [(KTGroupOperation *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(KTChangeOptInStateOperation *)v14 setDeps:dependenicsCopy];
    [(KTChangeOptInStateOperation *)v15 setOptInStates:statesCopy];
    [(KTChangeOptInStateOperation *)v15 setIntendedState:stateCopy];
    [(KTChangeOptInStateOperation *)v15 setErrorState:errorStateCopy];
    v16 = v15;
  }

  return v15;
}

- (void)groupStart
{
  if (qword_10039CE28 != -1)
  {
    sub_10025FD54();
  }

  v3 = qword_10039CE30;
  if (os_log_type_enabled(qword_10039CE30, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    optInStates = [(KTChangeOptInStateOperation *)self optInStates];
    targetOptInStates = [optInStates targetOptInStates];
    v7 = [targetOptInStates count];
    optInStates2 = [(KTChangeOptInStateOperation *)self optInStates];
    currentTarget = [optInStates2 currentTarget];
    *buf = 67109378;
    v36 = v7;
    v37 = 2112;
    v38 = currentTarget;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "KTChangeOptInStateOperation: start %d/%@", buf, 0x12u);
  }

  optInStates3 = [(KTChangeOptInStateOperation *)self optInStates];
  targetOptInStates2 = [optInStates3 targetOptInStates];
  v12 = [targetOptInStates2 count];

  if (v12)
  {
    optInStates4 = [(KTChangeOptInStateOperation *)self optInStates];
    currentTarget2 = [optInStates4 currentTarget];

    if (currentTarget2)
    {
      if (qword_10039CE28 != -1)
      {
        sub_10025FD68();
      }

      v15 = qword_10039CE30;
      if (os_log_type_enabled(qword_10039CE30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "KTChangeOptInStateOperation: already have a target pending", buf, 2u);
      }
    }

    optInStates5 = [(KTChangeOptInStateOperation *)self optInStates];
    targetOptInStates3 = [optInStates5 targetOptInStates];
    allKeys = [targetOptInStates3 allKeys];
    firstObject = [allKeys firstObject];
    optInStates6 = [(KTChangeOptInStateOperation *)self optInStates];
    [optInStates6 setCurrentTarget:firstObject];

    v21 = objc_alloc_init(NSOperation);
    [(KTChangeOptInStateOperation *)self setFinishedOp:v21];

    finishedOp = [(KTChangeOptInStateOperation *)self finishedOp];
    [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

    deps = [(KTChangeOptInStateOperation *)self deps];
    cloudRecords = [deps cloudRecords];
    LODWORD(allKeys) = [cloudRecords enforceCKOptInRecords];

    if (allKeys)
    {
      deps2 = [(KTChangeOptInStateOperation *)self deps];
      cloudRecords2 = [deps2 cloudRecords];
      optInStates7 = [(KTChangeOptInStateOperation *)self optInStates];
      currentTarget3 = [optInStates7 currentTarget];
      v29 = [cloudRecords2 getAggregateOptInStateForApplication:currentTarget3];

      -[KTChangeOptInStateOperation evalCurrentOptInState:optInStateError:](self, "evalCurrentOptInState:optInStateError:", [v29 state] == 1, 0);
    }

    else
    {
      optInStates8 = [(KTChangeOptInStateOperation *)self optInStates];
      currentTarget4 = [optInStates8 currentTarget];
      deps3 = [(KTChangeOptInStateOperation *)self deps];
      v33 = [deps3 kvs];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100232C34;
      v34[3] = &unk_10031BF98;
      v34[4] = self;
      [KTOptInManagerServer optInManagerOptInState:currentTarget4 sync:1 store:v33 complete:v34];
    }
  }
}

- (void)evalCurrentOptInState:(BOOL)state optInStateError:(id)error
{
  stateCopy = state;
  errorCopy = error;
  optInStates = [(KTChangeOptInStateOperation *)self optInStates];
  currentTarget = [optInStates currentTarget];

  optInStates2 = [(KTChangeOptInStateOperation *)self optInStates];
  targetOptInStates = [optInStates2 targetOptInStates];
  v11 = [targetOptInStates objectForKeyedSubscript:currentTarget];

  if (!v11)
  {
    if (qword_10039CE28 != -1)
    {
      sub_10025FDF4();
    }

    v17 = qword_10039CE30;
    if (os_log_type_enabled(qword_10039CE30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v50 = currentTarget;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Warning: no target application available: %@", buf, 0xCu);
    }

    optInStates3 = [(KTChangeOptInStateOperation *)self optInStates];
    [optInStates3 setCurrentTarget:0];

    errorState = [(KTChangeOptInStateOperation *)self errorState];
    [(KTChangeOptInStateOperation *)self setNextState:errorState];
    goto LABEL_18;
  }

  if (qword_10039CE28 != -1)
  {
    sub_10025FD90();
  }

  v12 = qword_10039CE30;
  if (os_log_type_enabled(qword_10039CE30, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    *buf = 67109634;
    *v50 = [v11 targetState];
    *&v50[4] = 2112;
    *&v50[6] = currentTarget;
    v51 = 1024;
    v52 = stateCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Changing state %d for application: %@ (current state: %d)", buf, 0x18u);
  }

  if (errorCopy)
  {
    if (qword_10039CE28 != -1)
    {
      sub_10025FDA4();
    }

    v14 = qword_10039CE30;
    if (os_log_type_enabled(qword_10039CE30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v50 = errorCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Warning: changing state despite error in getOptInState: %@", buf, 0xCu);
    }

    errorState2 = [(KTChangeOptInStateOperation *)self errorState];
    [(KTChangeOptInStateOperation *)self setNextState:errorState2];

    [v11 setError:errorCopy];
LABEL_12:
    errorState = [(KTChangeOptInStateOperation *)self optInStates];
    [errorState completedCurrentTarget];
LABEL_18:

LABEL_19:
    operationQueue = [(KTGroupOperation *)self operationQueue];
    finishedOp = [(KTChangeOptInStateOperation *)self finishedOp];
    [operationQueue addOperation:finishedOp];
    goto LABEL_20;
  }

  targetState = [v11 targetState];
  if (targetState == 3 || targetState == 1)
  {
    if (stateCopy)
    {
LABEL_25:
      if (qword_10039CE28 != -1)
      {
        sub_10025FDCC();
      }

      v22 = qword_10039CE30;
      if (os_log_type_enabled(qword_10039CE30, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        optInStates4 = [(KTChangeOptInStateOperation *)self optInStates];
        currentTarget2 = [optInStates4 currentTarget];
        *buf = 138543362;
        *v50 = currentTarget2;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "State target accomplished state, change for %{public}@", buf, 0xCu);
      }

      deps = [(KTChangeOptInStateOperation *)self deps];
      stateMonitor = [deps stateMonitor];
      [stateMonitor setOptInState:stateCopy everOptIn:1];

      intendedState = [(KTChangeOptInStateOperation *)self intendedState];
      [(KTChangeOptInStateOperation *)self setNextState:intendedState];

      goto LABEL_12;
    }
  }

  else if (!targetState && !stateCopy)
  {
    goto LABEL_25;
  }

  if (![v11 targetState])
  {
    [(KTChangeOptInStateOperation *)self setNextState:@"SetOptIO"];
    goto LABEL_19;
  }

  deps2 = [(KTChangeOptInStateOperation *)self deps];
  accountOperations = [deps2 accountOperations];
  v48 = 0;
  finishedOp = [accountOperations primaryAccount:&v48];
  operationQueue = v48;

  if (finishedOp)
  {
    deps3 = [(KTChangeOptInStateOperation *)self deps];
    accountOperations2 = [deps3 accountOperations];
    v33 = [accountOperations2 eligibleForOptIn:finishedOp];

    if (v33)
    {
      deps4 = [(KTChangeOptInStateOperation *)self deps];
      idsOperations = [deps4 idsOperations];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1002333A8;
      v44[3] = &unk_10032C208;
      v45 = currentTarget;
      v46 = v11;
      selfCopy = self;
      [idsOperations getKeyTransparencyOptInEligiblityForApplication:v45 withCompletion:v44];

      operationQueue3 = v45;
    }

    else
    {
      operationQueue3 = [TransparencyError errorWithDomain:kTransparencyErrorAccount code:-160 description:@"Account is not eligble to opt-in"];
      [(KTResultOperation *)self setError:operationQueue3];
      [v11 setError:operationQueue3];
      errorState3 = [(KTChangeOptInStateOperation *)self errorState];
      [(KTChangeOptInStateOperation *)self setNextState:errorState3];

      optInStates5 = [(KTChangeOptInStateOperation *)self optInStates];
      [optInStates5 completedCurrentTarget];

      operationQueue2 = [(KTGroupOperation *)self operationQueue];
      finishedOp2 = [(KTChangeOptInStateOperation *)self finishedOp];
      [operationQueue2 addOperation:finishedOp2];
    }
  }

  else
  {
    [(KTResultOperation *)self setError:operationQueue];
    [v11 setError:operationQueue];
    errorState4 = [(KTChangeOptInStateOperation *)self errorState];
    [(KTChangeOptInStateOperation *)self setNextState:errorState4];

    optInStates6 = [(KTChangeOptInStateOperation *)self optInStates];
    [optInStates6 completedCurrentTarget];

    operationQueue3 = [(KTGroupOperation *)self operationQueue];
    finishedOp3 = [(KTChangeOptInStateOperation *)self finishedOp];
    [operationQueue3 addOperation:finishedOp3];
  }

LABEL_20:
}

@end