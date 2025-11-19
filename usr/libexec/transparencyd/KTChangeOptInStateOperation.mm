@interface KTChangeOptInStateOperation
- (KTChangeOptInStateOperation)initWithDependenics:(id)a3 intendedState:(id)a4 errorState:(id)a5 optinStates:(id)a6;
- (void)evalCurrentOptInState:(BOOL)a3 optInStateError:(id)a4;
- (void)groupStart;
@end

@implementation KTChangeOptInStateOperation

- (KTChangeOptInStateOperation)initWithDependenics:(id)a3 intendedState:(id)a4 errorState:(id)a5 optinStates:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = KTChangeOptInStateOperation;
  v14 = [(KTGroupOperation *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(KTChangeOptInStateOperation *)v14 setDeps:v10];
    [(KTChangeOptInStateOperation *)v15 setOptInStates:v13];
    [(KTChangeOptInStateOperation *)v15 setIntendedState:v11];
    [(KTChangeOptInStateOperation *)v15 setErrorState:v12];
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
    v5 = [(KTChangeOptInStateOperation *)self optInStates];
    v6 = [v5 targetOptInStates];
    v7 = [v6 count];
    v8 = [(KTChangeOptInStateOperation *)self optInStates];
    v9 = [v8 currentTarget];
    *buf = 67109378;
    v36 = v7;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "KTChangeOptInStateOperation: start %d/%@", buf, 0x12u);
  }

  v10 = [(KTChangeOptInStateOperation *)self optInStates];
  v11 = [v10 targetOptInStates];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(KTChangeOptInStateOperation *)self optInStates];
    v14 = [v13 currentTarget];

    if (v14)
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

    v16 = [(KTChangeOptInStateOperation *)self optInStates];
    v17 = [v16 targetOptInStates];
    v18 = [v17 allKeys];
    v19 = [v18 firstObject];
    v20 = [(KTChangeOptInStateOperation *)self optInStates];
    [v20 setCurrentTarget:v19];

    v21 = objc_alloc_init(NSOperation);
    [(KTChangeOptInStateOperation *)self setFinishedOp:v21];

    v22 = [(KTChangeOptInStateOperation *)self finishedOp];
    [(KTGroupOperation *)self dependOnBeforeGroupFinished:v22];

    v23 = [(KTChangeOptInStateOperation *)self deps];
    v24 = [v23 cloudRecords];
    LODWORD(v18) = [v24 enforceCKOptInRecords];

    if (v18)
    {
      v25 = [(KTChangeOptInStateOperation *)self deps];
      v26 = [v25 cloudRecords];
      v27 = [(KTChangeOptInStateOperation *)self optInStates];
      v28 = [v27 currentTarget];
      v29 = [v26 getAggregateOptInStateForApplication:v28];

      -[KTChangeOptInStateOperation evalCurrentOptInState:optInStateError:](self, "evalCurrentOptInState:optInStateError:", [v29 state] == 1, 0);
    }

    else
    {
      v30 = [(KTChangeOptInStateOperation *)self optInStates];
      v31 = [v30 currentTarget];
      v32 = [(KTChangeOptInStateOperation *)self deps];
      v33 = [v32 kvs];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100232C34;
      v34[3] = &unk_10031BF98;
      v34[4] = self;
      [KTOptInManagerServer optInManagerOptInState:v31 sync:1 store:v33 complete:v34];
    }
  }
}

- (void)evalCurrentOptInState:(BOOL)a3 optInStateError:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(KTChangeOptInStateOperation *)self optInStates];
  v8 = [v7 currentTarget];

  v9 = [(KTChangeOptInStateOperation *)self optInStates];
  v10 = [v9 targetOptInStates];
  v11 = [v10 objectForKeyedSubscript:v8];

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
      *v50 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Warning: no target application available: %@", buf, 0xCu);
    }

    v18 = [(KTChangeOptInStateOperation *)self optInStates];
    [v18 setCurrentTarget:0];

    v16 = [(KTChangeOptInStateOperation *)self errorState];
    [(KTChangeOptInStateOperation *)self setNextState:v16];
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
    *&v50[6] = v8;
    v51 = 1024;
    v52 = v4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Changing state %d for application: %@ (current state: %d)", buf, 0x18u);
  }

  if (v6)
  {
    if (qword_10039CE28 != -1)
    {
      sub_10025FDA4();
    }

    v14 = qword_10039CE30;
    if (os_log_type_enabled(qword_10039CE30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v50 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Warning: changing state despite error in getOptInState: %@", buf, 0xCu);
    }

    v15 = [(KTChangeOptInStateOperation *)self errorState];
    [(KTChangeOptInStateOperation *)self setNextState:v15];

    [v11 setError:v6];
LABEL_12:
    v16 = [(KTChangeOptInStateOperation *)self optInStates];
    [v16 completedCurrentTarget];
LABEL_18:

LABEL_19:
    v19 = [(KTGroupOperation *)self operationQueue];
    v20 = [(KTChangeOptInStateOperation *)self finishedOp];
    [v19 addOperation:v20];
    goto LABEL_20;
  }

  v21 = [v11 targetState];
  if (v21 == 3 || v21 == 1)
  {
    if (v4)
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
        v24 = [(KTChangeOptInStateOperation *)self optInStates];
        v25 = [v24 currentTarget];
        *buf = 138543362;
        *v50 = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "State target accomplished state, change for %{public}@", buf, 0xCu);
      }

      v26 = [(KTChangeOptInStateOperation *)self deps];
      v27 = [v26 stateMonitor];
      [v27 setOptInState:v4 everOptIn:1];

      v28 = [(KTChangeOptInStateOperation *)self intendedState];
      [(KTChangeOptInStateOperation *)self setNextState:v28];

      goto LABEL_12;
    }
  }

  else if (!v21 && !v4)
  {
    goto LABEL_25;
  }

  if (![v11 targetState])
  {
    [(KTChangeOptInStateOperation *)self setNextState:@"SetOptIO"];
    goto LABEL_19;
  }

  v29 = [(KTChangeOptInStateOperation *)self deps];
  v30 = [v29 accountOperations];
  v48 = 0;
  v20 = [v30 primaryAccount:&v48];
  v19 = v48;

  if (v20)
  {
    v31 = [(KTChangeOptInStateOperation *)self deps];
    v32 = [v31 accountOperations];
    v33 = [v32 eligibleForOptIn:v20];

    if (v33)
    {
      v34 = [(KTChangeOptInStateOperation *)self deps];
      v35 = [v34 idsOperations];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_1002333A8;
      v44[3] = &unk_10032C208;
      v45 = v8;
      v46 = v11;
      v47 = self;
      [v35 getKeyTransparencyOptInEligiblityForApplication:v45 withCompletion:v44];

      v36 = v45;
    }

    else
    {
      v36 = [TransparencyError errorWithDomain:kTransparencyErrorAccount code:-160 description:@"Account is not eligble to opt-in"];
      [(KTResultOperation *)self setError:v36];
      [v11 setError:v36];
      v40 = [(KTChangeOptInStateOperation *)self errorState];
      [(KTChangeOptInStateOperation *)self setNextState:v40];

      v41 = [(KTChangeOptInStateOperation *)self optInStates];
      [v41 completedCurrentTarget];

      v42 = [(KTGroupOperation *)self operationQueue];
      v43 = [(KTChangeOptInStateOperation *)self finishedOp];
      [v42 addOperation:v43];
    }
  }

  else
  {
    [(KTResultOperation *)self setError:v19];
    [v11 setError:v19];
    v37 = [(KTChangeOptInStateOperation *)self errorState];
    [(KTChangeOptInStateOperation *)self setNextState:v37];

    v38 = [(KTChangeOptInStateOperation *)self optInStates];
    [v38 completedCurrentTarget];

    v36 = [(KTGroupOperation *)self operationQueue];
    v39 = [(KTChangeOptInStateOperation *)self finishedOp];
    [v36 addOperation:v39];
  }

LABEL_20:
}

@end