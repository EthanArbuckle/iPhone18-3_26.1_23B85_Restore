@interface OTPreloadOctagonKeysOperation
- (OTPreloadOctagonKeysOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5;
- (void)groupStart;
@end

@implementation OTPreloadOctagonKeysOperation

- (void)groupStart
{
  v3 = sub_100006274("octagon-preload-keys");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning operation that preloads the SOSAccount with newly created Octagon Keys", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(OTPreloadOctagonKeysOperation *)self setFinishOp:v4];

  v5 = [(OTPreloadOctagonKeysOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v5];

  v6 = [(OTPreloadOctagonKeysOperation *)self deps];
  v7 = [v6 sosAdapter];
  v8 = [v7 sosEnabled];

  if (v8)
  {
    v9 = [(OTPreloadOctagonKeysOperation *)self deps];
    v10 = [v9 octagonAdapter];
    v27 = 0;
    v11 = [v10 fetchSelfPeers:&v27];
    v12 = v27;

    if (!v11 || v12)
    {
      v21 = sub_100006274("octagon-preload-keys");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v12;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "failed to retrieve self peers: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v12];
      v13 = [(OTPreloadOctagonKeysOperation *)self finishOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:v13];
    }

    else
    {
      v13 = [v11 currentSelf];
      if (v13)
      {
        v14 = [(OTPreloadOctagonKeysOperation *)self deps];
        v15 = [v14 sosAdapter];
        v26 = 0;
        v16 = [v15 preloadOctagonKeySetOnAccount:v13 error:&v26];
        v17 = v26;

        if (v16)
        {
          v18 = [(OTPreloadOctagonKeysOperation *)self intendedState];
          [(OTPreloadOctagonKeysOperation *)self setNextState:v18];
        }

        else
        {
          [(CKKSResultOperation *)self setError:v17];
        }

        v25 = [(OTPreloadOctagonKeysOperation *)self finishOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:v25];
      }

      else
      {
        v22 = sub_100006274("octagon-preload-keys");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "failed to retrieve current self", buf, 2u);
        }

        v28 = NSLocalizedDescriptionKey;
        v29 = @"failed to retrieve current self";
        v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v24 = [NSError errorWithDomain:@"com.apple.security.octagon" code:38 userInfo:v23];
        [(CKKSResultOperation *)self setError:v24];

        v17 = [(OTPreloadOctagonKeysOperation *)self finishOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:v17];
      }
    }
  }

  else
  {
    v32 = NSLocalizedDescriptionKey;
    v33 = @"sos adapter not enabled";
    v19 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v20 = [NSError errorWithDomain:@"com.apple.security.octagon" code:39 userInfo:v19];
    [(CKKSResultOperation *)self setError:v20];

    v12 = [(OTPreloadOctagonKeysOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v12];
  }
}

- (OTPreloadOctagonKeysOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OTPreloadOctagonKeysOperation;
  v12 = [(CKKSGroupOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_deps, a3);
    objc_storeStrong(&v13->_intendedState, a4);
    objc_storeStrong(&v13->_nextState, a5);
  }

  return v13;
}

@end