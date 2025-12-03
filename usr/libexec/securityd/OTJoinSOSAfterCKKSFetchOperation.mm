@interface OTJoinSOSAfterCKKSFetchOperation
- (OTJoinSOSAfterCKKSFetchOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
- (void)proceedAfterFetch;
@end

@implementation OTJoinSOSAfterCKKSFetchOperation

- (void)proceedAfterFetch
{
  operationDependencies = [(OTJoinSOSAfterCKKSFetchOperation *)self operationDependencies];
  sosAdapter = [operationDependencies sosAdapter];
  v25 = 0;
  v5 = [sosAdapter joinAfterRestore:&v25];
  v6 = v25;

  if (!v6 || [v6 code] != 1 || (objc_msgSend(v6, "domain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", kSOSErrorDomain), v7, !v8))
  {
    operationDependencies2 = [(OTJoinSOSAfterCKKSFetchOperation *)self operationDependencies];
    sosAdapter2 = [operationDependencies2 sosAdapter];
    v24 = 0;
    v12 = [sosAdapter2 circleStatus:&v24];
    finishedOp3 = v24;

    if (finishedOp3 && [finishedOp3 code] == 1)
    {
      domain = [finishedOp3 domain];
      if ([domain isEqualToString:kSOSErrorDomain])
      {

        goto LABEL_21;
      }
    }

    if (v12 != -1)
    {
      if (v6 || ((v5 ^ 1) & 1) != 0 || v12 - 1 <= 1)
      {
        operationDependencies3 = [(OTJoinSOSAfterCKKSFetchOperation *)self operationDependencies];
        sosAdapter3 = [operationDependencies3 sosAdapter];
        v23 = 0;
        v16 = [sosAdapter3 resetToOffering:&v23];
        finishedOp2 = v23;

        v18 = sub_100006274("octagon-sos");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          v27 = v16;
          v28 = 2112;
          v29 = finishedOp2;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SOSCCResetToOffering complete: %d %@", buf, 0x12u);
        }

        v19 = finishedOp2 ? 0 : v16;
        if ((v19 & 1) == 0)
        {
          [(CKKSResultOperation *)self setError:finishedOp2];
          finishedOp = [(OTJoinSOSAfterCKKSFetchOperation *)self finishedOp];
          [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp];

          goto LABEL_25;
        }
      }

      intendedState = [(OTJoinSOSAfterCKKSFetchOperation *)self intendedState];
      [(OTJoinSOSAfterCKKSFetchOperation *)self setNextState:intendedState];

LABEL_24:
      finishedOp2 = [(OTJoinSOSAfterCKKSFetchOperation *)self finishedOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp2];
LABEL_25:

      goto LABEL_26;
    }

LABEL_21:
    v21 = sub_100006274("octagon-sos");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v27 = v12;
      v28 = 2112;
      v29 = finishedOp3;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Error fetching circle status: %d, error:%@", buf, 0x12u);
    }

    [(CKKSResultOperation *)self setError:finishedOp3];
    goto LABEL_24;
  }

  [(CKKSResultOperation *)self setError:v6];
  finishedOp3 = [(OTJoinSOSAfterCKKSFetchOperation *)self finishedOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp3];
LABEL_26:
}

- (void)groupStart
{
  operationDependencies = [(OTJoinSOSAfterCKKSFetchOperation *)self operationDependencies];
  sosAdapter = [operationDependencies sosAdapter];
  sosEnabled = [sosAdapter sosEnabled];

  v6 = sub_100006274("octagon-sos");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (sosEnabled)
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "joining SOS", buf, 2u);
    }

    v8 = objc_alloc_init(NSOperation);
    [(OTJoinSOSAfterCKKSFetchOperation *)self setFinishedOp:v8];

    finishedOp = [(OTJoinSOSAfterCKKSFetchOperation *)self finishedOp];
    [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

    v10 = [OTWaitOnPriorityViews alloc];
    operationDependencies2 = [(OTJoinSOSAfterCKKSFetchOperation *)self operationDependencies];
    intendedState = [(OTWaitOnPriorityViews *)v10 initWithDependencies:operationDependencies2];

    v13 = [(CKKSResultOperation *)intendedState timeout:10000000000];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:intendedState];
    objc_initWeak(buf, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E21B8;
    v15[3] = &unk_1003452E8;
    objc_copyWeak(&v16, buf);
    v14 = [CKKSResultOperation named:@"join-sos-after-fetch" withBlock:v15];
    [v14 addDependency:intendedState];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SOS not enabled on this platform?", buf, 2u);
    }

    intendedState = [(OTJoinSOSAfterCKKSFetchOperation *)self intendedState];
    [(OTJoinSOSAfterCKKSFetchOperation *)self setNextState:intendedState];
  }
}

- (OTJoinSOSAfterCKKSFetchOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = OTJoinSOSAfterCKKSFetchOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_intendedState, state);
    objc_storeStrong(&v13->_nextState, errorState);
    objc_storeStrong(&v13->_operationDependencies, dependencies);
  }

  return v13;
}

@end