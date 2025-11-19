@interface OTJoinSOSAfterCKKSFetchOperation
- (OTJoinSOSAfterCKKSFetchOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5;
- (void)groupStart;
- (void)proceedAfterFetch;
@end

@implementation OTJoinSOSAfterCKKSFetchOperation

- (void)proceedAfterFetch
{
  v3 = [(OTJoinSOSAfterCKKSFetchOperation *)self operationDependencies];
  v4 = [v3 sosAdapter];
  v25 = 0;
  v5 = [v4 joinAfterRestore:&v25];
  v6 = v25;

  if (!v6 || [v6 code] != 1 || (objc_msgSend(v6, "domain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", kSOSErrorDomain), v7, !v8))
  {
    v10 = [(OTJoinSOSAfterCKKSFetchOperation *)self operationDependencies];
    v11 = [v10 sosAdapter];
    v24 = 0;
    v12 = [v11 circleStatus:&v24];
    v9 = v24;

    if (v9 && [v9 code] == 1)
    {
      v13 = [v9 domain];
      if ([v13 isEqualToString:kSOSErrorDomain])
      {

        goto LABEL_21;
      }
    }

    if (v12 != -1)
    {
      if (v6 || ((v5 ^ 1) & 1) != 0 || v12 - 1 <= 1)
      {
        v14 = [(OTJoinSOSAfterCKKSFetchOperation *)self operationDependencies];
        v15 = [v14 sosAdapter];
        v23 = 0;
        v16 = [v15 resetToOffering:&v23];
        v17 = v23;

        v18 = sub_100006274("octagon-sos");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          v27 = v16;
          v28 = 2112;
          v29 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SOSCCResetToOffering complete: %d %@", buf, 0x12u);
        }

        v19 = v17 ? 0 : v16;
        if ((v19 & 1) == 0)
        {
          [(CKKSResultOperation *)self setError:v17];
          v22 = [(OTJoinSOSAfterCKKSFetchOperation *)self finishedOp];
          [(CKKSGroupOperation *)self runBeforeGroupFinished:v22];

          goto LABEL_25;
        }
      }

      v20 = [(OTJoinSOSAfterCKKSFetchOperation *)self intendedState];
      [(OTJoinSOSAfterCKKSFetchOperation *)self setNextState:v20];

LABEL_24:
      v17 = [(OTJoinSOSAfterCKKSFetchOperation *)self finishedOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:v17];
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
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Error fetching circle status: %d, error:%@", buf, 0x12u);
    }

    [(CKKSResultOperation *)self setError:v9];
    goto LABEL_24;
  }

  [(CKKSResultOperation *)self setError:v6];
  v9 = [(OTJoinSOSAfterCKKSFetchOperation *)self finishedOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v9];
LABEL_26:
}

- (void)groupStart
{
  v3 = [(OTJoinSOSAfterCKKSFetchOperation *)self operationDependencies];
  v4 = [v3 sosAdapter];
  v5 = [v4 sosEnabled];

  v6 = sub_100006274("octagon-sos");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "joining SOS", buf, 2u);
    }

    v8 = objc_alloc_init(NSOperation);
    [(OTJoinSOSAfterCKKSFetchOperation *)self setFinishedOp:v8];

    v9 = [(OTJoinSOSAfterCKKSFetchOperation *)self finishedOp];
    [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v9];

    v10 = [OTWaitOnPriorityViews alloc];
    v11 = [(OTJoinSOSAfterCKKSFetchOperation *)self operationDependencies];
    v12 = [(OTWaitOnPriorityViews *)v10 initWithDependencies:v11];

    v13 = [(CKKSResultOperation *)v12 timeout:10000000000];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v12];
    objc_initWeak(buf, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E21B8;
    v15[3] = &unk_1003452E8;
    objc_copyWeak(&v16, buf);
    v14 = [CKKSResultOperation named:@"join-sos-after-fetch" withBlock:v15];
    [v14 addDependency:v12];
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

    v12 = [(OTJoinSOSAfterCKKSFetchOperation *)self intendedState];
    [(OTJoinSOSAfterCKKSFetchOperation *)self setNextState:v12];
  }
}

- (OTJoinSOSAfterCKKSFetchOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OTJoinSOSAfterCKKSFetchOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_intendedState, a4);
    objc_storeStrong(&v13->_nextState, a5);
    objc_storeStrong(&v13->_operationDependencies, a3);
  }

  return v13;
}

@end