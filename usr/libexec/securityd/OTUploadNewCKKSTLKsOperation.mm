@interface OTUploadNewCKKSTLKsOperation
- (OTUploadNewCKKSTLKsOperation)initWithDependencies:(id)dependencies intendedState:(id)state ckksConflictState:(id)conflictState peerMissingState:(id)missingState errorState:(id)errorState;
- (void)groupStart;
- (void)proceedWithKeys:(id)keys pendingTLKShares:(id)shares;
@end

@implementation OTUploadNewCKKSTLKsOperation

- (void)proceedWithKeys:(id)keys pendingTLKShares:(id)shares
{
  keysCopy = keys;
  sharesCopy = shares;
  objc_initWeak(&location, self);
  if ([keysCopy count] || objc_msgSend(sharesCopy, "count"))
  {
    v8 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = keysCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Beginning tlk upload with keys: %@", buf, 0xCu);
    }

    deps = [(OTUploadNewCKKSTLKsOperation *)self deps];
    cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
    deps2 = [(OTUploadNewCKKSTLKsOperation *)self deps];
    activeAccount = [deps2 activeAccount];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10018D118;
    v16[3] = &unk_100343480;
    objc_copyWeak(&v17, &location);
    [cuttlefishXPCWrapper updateTLKsWithSpecificUser:activeAccount ckksKeys:keysCopy tlkShares:sharesCopy reply:v16];

    objc_destroyWeak(&v17);
  }

  else
  {
    v13 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No CKKS views gave us TLKs to upload", buf, 2u);
    }

    intendedState = [(OTUploadNewCKKSTLKsOperation *)self intendedState];
    [(OTUploadNewCKKSTLKsOperation *)self setNextState:intendedState];

    finishedOp = [(OTUploadNewCKKSTLKsOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp];
  }

  objc_destroyWeak(&location);
}

- (void)groupStart
{
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning an operation to upload any pending CKKS tlks", buf, 2u);
  }

  objc_initWeak(&location, self);
  deps = [(OTUploadNewCKKSTLKsOperation *)self deps];
  ckks = [deps ckks];
  viewsRequiringTLKUpload = [ckks viewsRequiringTLKUpload];

  v7 = [viewsRequiringTLKUpload count];
  v8 = sub_100006274("octagon-ckks");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412290;
      v28 = viewsRequiringTLKUpload;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CKKS needs TLK uploads for %@", buf, 0xCu);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10018D730;
    v24[3] = &unk_1003452E8;
    objc_copyWeak(&v25, &location);
    v10 = [NSBlockOperation blockOperationWithBlock:v24];
    [(OTUploadNewCKKSTLKsOperation *)self setFinishedOp:v10];

    finishedOp = [(OTUploadNewCKKSTLKsOperation *)self finishedOp];
    [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

    v12 = [OTFetchCKKSKeysOperation alloc];
    deps2 = [(OTUploadNewCKKSTLKsOperation *)self deps];
    v14 = [(OTFetchCKKSKeysOperation *)v12 initWithDependencies:deps2 viewsToFetch:viewsRequiringTLKUpload];

    [(CKKSGroupOperation *)self runBeforeGroupFinished:v14];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10018D814;
    v21 = &unk_100344D38;
    objc_copyWeak(&v23, &location);
    v15 = v14;
    v22 = v15;
    v16 = [CKKSResultOperation named:@"upload-tlks-with-keys" withBlock:&v18];
    [v16 addDependency:{v15, v18, v19, v20, v21}];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v16];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No CKKS views need uploads", buf, 2u);
    }

    intendedState = [(OTUploadNewCKKSTLKsOperation *)self intendedState];
    [(OTUploadNewCKKSTLKsOperation *)self setNextState:intendedState];
  }

  objc_destroyWeak(&location);
}

- (OTUploadNewCKKSTLKsOperation)initWithDependencies:(id)dependencies intendedState:(id)state ckksConflictState:(id)conflictState peerMissingState:(id)missingState errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  conflictStateCopy = conflictState;
  missingStateCopy = missingState;
  errorStateCopy = errorState;
  v21.receiver = self;
  v21.super_class = OTUploadNewCKKSTLKsOperation;
  v17 = [(CKKSGroupOperation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, dependencies);
    objc_storeStrong(&v18->_intendedState, state);
    objc_storeStrong(&v18->_ckksConflictState, conflictState);
    objc_storeStrong(&v18->_peerMissingState, missingState);
    objc_storeStrong(&v18->_nextState, errorState);
  }

  return v18;
}

@end