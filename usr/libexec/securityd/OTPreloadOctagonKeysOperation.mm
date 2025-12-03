@interface OTPreloadOctagonKeysOperation
- (OTPreloadOctagonKeysOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
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

  finishOp = [(OTPreloadOctagonKeysOperation *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  deps = [(OTPreloadOctagonKeysOperation *)self deps];
  sosAdapter = [deps sosAdapter];
  sosEnabled = [sosAdapter sosEnabled];

  if (sosEnabled)
  {
    deps2 = [(OTPreloadOctagonKeysOperation *)self deps];
    octagonAdapter = [deps2 octagonAdapter];
    v27 = 0;
    v11 = [octagonAdapter fetchSelfPeers:&v27];
    finishOp5 = v27;

    if (!v11 || finishOp5)
    {
      v21 = sub_100006274("octagon-preload-keys");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = finishOp5;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "failed to retrieve self peers: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:finishOp5];
      finishOp2 = [(OTPreloadOctagonKeysOperation *)self finishOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp2];
    }

    else
    {
      finishOp2 = [v11 currentSelf];
      if (finishOp2)
      {
        deps3 = [(OTPreloadOctagonKeysOperation *)self deps];
        sosAdapter2 = [deps3 sosAdapter];
        v26 = 0;
        v16 = [sosAdapter2 preloadOctagonKeySetOnAccount:finishOp2 error:&v26];
        finishOp4 = v26;

        if (v16)
        {
          intendedState = [(OTPreloadOctagonKeysOperation *)self intendedState];
          [(OTPreloadOctagonKeysOperation *)self setNextState:intendedState];
        }

        else
        {
          [(CKKSResultOperation *)self setError:finishOp4];
        }

        finishOp3 = [(OTPreloadOctagonKeysOperation *)self finishOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp3];
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

        finishOp4 = [(OTPreloadOctagonKeysOperation *)self finishOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp4];
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

    finishOp5 = [(OTPreloadOctagonKeysOperation *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp5];
  }
}

- (OTPreloadOctagonKeysOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = OTPreloadOctagonKeysOperation;
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