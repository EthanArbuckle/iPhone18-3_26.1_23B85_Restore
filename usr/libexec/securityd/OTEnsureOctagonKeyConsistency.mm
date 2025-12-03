@interface OTEnsureOctagonKeyConsistency
- (OTEnsureOctagonKeyConsistency)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
- (void)groupStart;
@end

@implementation OTEnsureOctagonKeyConsistency

- (void)groupStart
{
  v3 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning ensuring Octagon keys are set properly in SOS", buf, 2u);
  }

  v4 = objc_alloc_init(NSOperation);
  [(OTEnsureOctagonKeyConsistency *)self setFinishOp:v4];

  finishOp = [(OTEnsureOctagonKeyConsistency *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishOp];

  deps = [(OTEnsureOctagonKeyConsistency *)self deps];
  sosAdapter = [deps sosAdapter];
  sosEnabled = [sosAdapter sosEnabled];

  if (sosEnabled)
  {
    deps2 = [(OTEnsureOctagonKeyConsistency *)self deps];
    sosAdapter2 = [deps2 sosAdapter];
    v65 = 0;
    v11 = [sosAdapter2 currentSOSSelf:&v65];
    finishOp8 = v65;

    if (!v11 || finishOp8)
    {
      v22 = sub_100006274("octagon-sos");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = finishOp8;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to get the current SOS self: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:finishOp8];
      finishOp2 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp2];
      goto LABEL_42;
    }

    v13 = sub_100006274("octagon");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Fetched SOS Self! Fetching Octagon Adapter now.", buf, 2u);
    }

    deps3 = [(OTEnsureOctagonKeyConsistency *)self deps];
    stateHolder = [deps3 stateHolder];
    v64 = 0;
    v16 = [stateHolder getEgoPeerID:&v64];
    finishOp2 = v64;

    if (finishOp2)
    {
      v18 = sub_100006274("octagon");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = finishOp2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "failed to get peer id: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:finishOp2];
      finishOp3 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp3];
      goto LABEL_41;
    }

    v61 = v11;
    v23 = [OctagonCKKSPeerAdapter alloc];
    deps4 = [(OTEnsureOctagonKeyConsistency *)self deps];
    activeAccount = [deps4 activeAccount];
    deps5 = [(OTEnsureOctagonKeyConsistency *)self deps];
    personaAdapter = [deps5 personaAdapter];
    deps6 = [(OTEnsureOctagonKeyConsistency *)self deps];
    cuttlefishXPCWrapper = [deps6 cuttlefishXPCWrapper];
    v60 = v16;
    finishOp3 = [(OctagonCKKSPeerAdapter *)v23 initWithPeerID:v16 specificUser:activeAccount personaAdapter:personaAdapter cuttlefishXPC:cuttlefishXPCWrapper];

    v30 = sub_100006274("octagon");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = finishOp3;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Fetched SOS Self! Fetching Octagon Adapter now: %@", buf, 0xCu);
    }

    v63 = 0;
    v31 = [(OctagonCKKSPeerAdapter *)finishOp3 fetchSelfPeers:&v63];
    v32 = v63;
    v33 = v32;
    if (!v31 || v32)
    {
      v44 = sub_100006274("octagon");
      finishOp2 = 0;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = v33;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "failed to retrieve self peers: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v33];
      finishOp4 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp4];
      v11 = v61;
      goto LABEL_40;
    }

    currentSelf = [v31 currentSelf];
    finishOp4 = currentSelf;
    finishOp2 = 0;
    if (!currentSelf)
    {
      v50 = sub_100006274("octagon");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "failed to retrieve current self", buf, 2u);
      }

      v66 = NSLocalizedDescriptionKey;
      v67 = @"failed to retrieve current self";
      v51 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      v52 = [NSError errorWithDomain:@"com.apple.security.octagon" code:38 userInfo:v51];
      [(CKKSResultOperation *)self setError:v52];

      finishOp5 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp5];
      v16 = v60;
      v11 = v61;
      goto LABEL_39;
    }

    publicSigningKey = [currentSelf publicSigningKey];
    keyData = [publicSigningKey keyData];

    publicEncryptionKey = [finishOp4 publicEncryptionKey];
    keyData2 = [publicEncryptionKey keyData];

    publicSigningKey2 = [v61 publicSigningKey];
    keyData3 = [publicSigningKey2 keyData];

    publicEncryptionKey2 = [v61 publicEncryptionKey];
    keyData4 = [publicEncryptionKey2 keyData];

    v57 = keyData3;
    v58 = keyData;
    v56 = keyData4;
    if ([keyData isEqualToData:keyData3] && (objc_msgSend(keyData2, "isEqualToData:", keyData4) & 1) != 0)
    {
      finishOp7 = sub_100006274("octagon");
      if (os_log_type_enabled(finishOp7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, finishOp7, OS_LOG_TYPE_DEFAULT, "SOS and Octagon keys match!", buf, 2u);
      }

      v16 = v60;
      v33 = 0;
    }

    else
    {
      v55 = v31;
      v45 = sub_100006274("octagon");
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "SOS and Octagon signing keys do NOT match! updating SOS", buf, 2u);
      }

      deps7 = [(OTEnsureOctagonKeyConsistency *)self deps];
      sosAdapter3 = [deps7 sosAdapter];
      v62 = 0;
      v48 = [sosAdapter3 updateOctagonKeySetWithAccount:finishOp4 error:&v62];
      finishOp7 = v62;

      v33 = 0;
      if ((v48 & 1) == 0)
      {
        [(CKKSResultOperation *)self setError:finishOp7];
        finishOp6 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp6];

        v16 = v60;
        v31 = v55;
        goto LABEL_38;
      }

      v16 = v60;
      v31 = v55;
    }

    intendedState = [(OTEnsureOctagonKeyConsistency *)self intendedState];
    [(OTEnsureOctagonKeyConsistency *)self setNextState:intendedState];

    finishOp7 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp7];
LABEL_38:

    v11 = v61;
    finishOp5 = v58;
LABEL_39:

LABEL_40:
LABEL_41:

LABEL_42:
    goto LABEL_43;
  }

  v70 = NSLocalizedDescriptionKey;
  v71 = @"sos adapter not enabled";
  v20 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  v21 = [NSError errorWithDomain:@"com.apple.security.octagon" code:39 userInfo:v20];
  [(CKKSResultOperation *)self setError:v21];

  finishOp8 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:finishOp8];
LABEL_43:
}

- (OTEnsureOctagonKeyConsistency)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = OTEnsureOctagonKeyConsistency;
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