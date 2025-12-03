@interface KTEnsureAccountIdentityOperation
- (KTEnsureAccountIdentityOperation)initWithDependencies:(id)dependencies pcsOperation:(id)operation;
- (void)groupStart;
@end

@implementation KTEnsureAccountIdentityOperation

- (KTEnsureAccountIdentityOperation)initWithDependencies:(id)dependencies pcsOperation:(id)operation
{
  dependenciesCopy = dependencies;
  operationCopy = operation;
  v12.receiver = self;
  v12.super_class = KTEnsureAccountIdentityOperation;
  v9 = [(KTGroupOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((v9 + 134), operation);
    objc_storeStrong((v10 + 142), dependencies);
    v10[120] = 0;
  }

  return v10;
}

- (void)groupStart
{
  pcsOperation = [(KTEnsureAccountIdentityOperation *)self pcsOperation];
  v25 = 0;
  v4 = [pcsOperation getCurrentKTPCSIdentity:off_10038B2A0 error:&v25];
  v5 = v25;

  if (v4)
  {
    [v4 identity];
    [(KTEnsureAccountIdentityOperation *)self setIdentity:PCSIdentityGetPublicKey()];
    goto LABEL_20;
  }

  if ([v5 code] == -25300)
  {
    if (qword_10038BD60 != -1)
    {
      sub_10024A8BC();
    }

    v6 = qword_10038BD68;
    if (os_log_type_enabled(qword_10038BD68, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "There is no identity, ok to continue creating one", buf, 2u);
    }

    goto LABEL_10;
  }

  if ([v5 code] == 27)
  {
    domain = [v5 domain];
    v8 = [domain isEqual:kPCSErrorDomain];

    if (v8)
    {
LABEL_10:
      v9 = os_transaction_create();
      [(KTEnsureAccountIdentityOperation *)self setTransaction:v9];

      v10 = objc_alloc_init(NSOperation);
      [(KTEnsureAccountIdentityOperation *)self setFinishedOp:v10];

      finishedOp = [(KTEnsureAccountIdentityOperation *)self finishedOp];
      [(KTGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

      pcsOperation2 = [(KTEnsureAccountIdentityOperation *)self pcsOperation];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1000679B8;
      v24[3] = &unk_10031C450;
      v24[4] = self;
      [pcsOperation2 createManateeIdentity:0 service:off_10038B2A0 complete:v24];
LABEL_11:

      goto LABEL_20;
    }
  }

  deps = [(KTEnsureAccountIdentityOperation *)self deps];
  lockStateTracker = [deps lockStateTracker];
  v15 = [lockStateTracker isLockedError:v5];

  if (v15)
  {
    [(KTResultOperation *)self setError:v5];
    goto LABEL_20;
  }

  deps2 = [(KTEnsureAccountIdentityOperation *)self deps];
  reachabilityTracker = [deps2 reachabilityTracker];
  v18 = [objc_opt_class() isNetworkError:v5];

  if (v18)
  {
    [(KTResultOperation *)self setError:v5];
    deps3 = [(KTEnsureAccountIdentityOperation *)self deps];
    networkTimeout = [deps3 networkTimeout];
    [networkTimeout networkWithFeedback:1];

    goto LABEL_20;
  }

  v21 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-350 errorLevel:4 underlyingError:v5 description:@"Identity creation failed"];
  [(KTResultOperation *)self setError:v21];

  if (qword_10038BD60 != -1)
  {
    sub_10024A894();
  }

  v22 = qword_10038BD68;
  if (os_log_type_enabled(qword_10038BD68, OS_LOG_TYPE_ERROR))
  {
    pcsOperation2 = v22;
    error = [(KTResultOperation *)self error];
    *buf = 138412290;
    v27 = error;
    _os_log_impl(&_mh_execute_header, pcsOperation2, OS_LOG_TYPE_ERROR, "createManateeIdentity no identity returned: %@", buf, 0xCu);

    goto LABEL_11;
  }

LABEL_20:
}

@end