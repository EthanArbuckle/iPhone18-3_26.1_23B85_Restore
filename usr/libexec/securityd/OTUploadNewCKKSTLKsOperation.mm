@interface OTUploadNewCKKSTLKsOperation
- (OTUploadNewCKKSTLKsOperation)initWithDependencies:(id)a3 intendedState:(id)a4 ckksConflictState:(id)a5 peerMissingState:(id)a6 errorState:(id)a7;
- (void)groupStart;
- (void)proceedWithKeys:(id)a3 pendingTLKShares:(id)a4;
@end

@implementation OTUploadNewCKKSTLKsOperation

- (void)proceedWithKeys:(id)a3 pendingTLKShares:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    v8 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Beginning tlk upload with keys: %@", buf, 0xCu);
    }

    v9 = [(OTUploadNewCKKSTLKsOperation *)self deps];
    v10 = [v9 cuttlefishXPCWrapper];
    v11 = [(OTUploadNewCKKSTLKsOperation *)self deps];
    v12 = [v11 activeAccount];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10018D118;
    v16[3] = &unk_100343480;
    objc_copyWeak(&v17, &location);
    [v10 updateTLKsWithSpecificUser:v12 ckksKeys:v6 tlkShares:v7 reply:v16];

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

    v14 = [(OTUploadNewCKKSTLKsOperation *)self intendedState];
    [(OTUploadNewCKKSTLKsOperation *)self setNextState:v14];

    v15 = [(OTUploadNewCKKSTLKsOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v15];
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
  v4 = [(OTUploadNewCKKSTLKsOperation *)self deps];
  v5 = [v4 ckks];
  v6 = [v5 viewsRequiringTLKUpload];

  v7 = [v6 count];
  v8 = sub_100006274("octagon-ckks");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412290;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CKKS needs TLK uploads for %@", buf, 0xCu);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10018D730;
    v24[3] = &unk_1003452E8;
    objc_copyWeak(&v25, &location);
    v10 = [NSBlockOperation blockOperationWithBlock:v24];
    [(OTUploadNewCKKSTLKsOperation *)self setFinishedOp:v10];

    v11 = [(OTUploadNewCKKSTLKsOperation *)self finishedOp];
    [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v11];

    v12 = [OTFetchCKKSKeysOperation alloc];
    v13 = [(OTUploadNewCKKSTLKsOperation *)self deps];
    v14 = [(OTFetchCKKSKeysOperation *)v12 initWithDependencies:v13 viewsToFetch:v6];

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

    v17 = [(OTUploadNewCKKSTLKsOperation *)self intendedState];
    [(OTUploadNewCKKSTLKsOperation *)self setNextState:v17];
  }

  objc_destroyWeak(&location);
}

- (OTUploadNewCKKSTLKsOperation)initWithDependencies:(id)a3 intendedState:(id)a4 ckksConflictState:(id)a5 peerMissingState:(id)a6 errorState:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = OTUploadNewCKKSTLKsOperation;
  v17 = [(CKKSGroupOperation *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deps, a3);
    objc_storeStrong(&v18->_intendedState, a4);
    objc_storeStrong(&v18->_ckksConflictState, a5);
    objc_storeStrong(&v18->_peerMissingState, a6);
    objc_storeStrong(&v18->_nextState, a7);
  }

  return v18;
}

@end