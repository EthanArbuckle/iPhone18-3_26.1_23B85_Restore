@interface OTEnsureOctagonKeyConsistency
- (OTEnsureOctagonKeyConsistency)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5;
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

  v5 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v5];

  v6 = [(OTEnsureOctagonKeyConsistency *)self deps];
  v7 = [v6 sosAdapter];
  v8 = [v7 sosEnabled];

  if (v8)
  {
    v9 = [(OTEnsureOctagonKeyConsistency *)self deps];
    v10 = [v9 sosAdapter];
    v65 = 0;
    v11 = [v10 currentSOSSelf:&v65];
    v12 = v65;

    if (!v11 || v12)
    {
      v22 = sub_100006274("octagon-sos");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = v12;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to get the current SOS self: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v12];
      v17 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:v17];
      goto LABEL_42;
    }

    v13 = sub_100006274("octagon");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Fetched SOS Self! Fetching Octagon Adapter now.", buf, 2u);
    }

    v14 = [(OTEnsureOctagonKeyConsistency *)self deps];
    v15 = [v14 stateHolder];
    v64 = 0;
    v16 = [v15 getEgoPeerID:&v64];
    v17 = v64;

    if (v17)
    {
      v18 = sub_100006274("octagon");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "failed to get peer id: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v17];
      v19 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:v19];
      goto LABEL_41;
    }

    v61 = v11;
    v23 = [OctagonCKKSPeerAdapter alloc];
    v24 = [(OTEnsureOctagonKeyConsistency *)self deps];
    v25 = [v24 activeAccount];
    v26 = [(OTEnsureOctagonKeyConsistency *)self deps];
    v27 = [v26 personaAdapter];
    v28 = [(OTEnsureOctagonKeyConsistency *)self deps];
    v29 = [v28 cuttlefishXPCWrapper];
    v60 = v16;
    v19 = [(OctagonCKKSPeerAdapter *)v23 initWithPeerID:v16 specificUser:v25 personaAdapter:v27 cuttlefishXPC:v29];

    v30 = sub_100006274("octagon");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = v19;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Fetched SOS Self! Fetching Octagon Adapter now: %@", buf, 0xCu);
    }

    v63 = 0;
    v31 = [(OctagonCKKSPeerAdapter *)v19 fetchSelfPeers:&v63];
    v32 = v63;
    v33 = v32;
    if (!v31 || v32)
    {
      v44 = sub_100006274("octagon");
      v17 = 0;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v69 = v33;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "failed to retrieve self peers: %@", buf, 0xCu);
      }

      [(CKKSResultOperation *)self setError:v33];
      v35 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:v35];
      v11 = v61;
      goto LABEL_40;
    }

    v34 = [v31 currentSelf];
    v35 = v34;
    v17 = 0;
    if (!v34)
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

      v53 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
      [(CKKSGroupOperation *)self runBeforeGroupFinished:v53];
      v16 = v60;
      v11 = v61;
      goto LABEL_39;
    }

    v36 = [v34 publicSigningKey];
    v37 = [v36 keyData];

    v38 = [v35 publicEncryptionKey];
    v59 = [v38 keyData];

    v39 = [v61 publicSigningKey];
    v40 = [v39 keyData];

    v41 = [v61 publicEncryptionKey];
    v42 = [v41 keyData];

    v57 = v40;
    v58 = v37;
    v56 = v42;
    if ([v37 isEqualToData:v40] && (objc_msgSend(v59, "isEqualToData:", v42) & 1) != 0)
    {
      v43 = sub_100006274("octagon");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "SOS and Octagon keys match!", buf, 2u);
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

      v46 = [(OTEnsureOctagonKeyConsistency *)self deps];
      v47 = [v46 sosAdapter];
      v62 = 0;
      v48 = [v47 updateOctagonKeySetWithAccount:v35 error:&v62];
      v43 = v62;

      v33 = 0;
      if ((v48 & 1) == 0)
      {
        [(CKKSResultOperation *)self setError:v43];
        v54 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
        [(CKKSGroupOperation *)self runBeforeGroupFinished:v54];

        v16 = v60;
        v31 = v55;
        goto LABEL_38;
      }

      v16 = v60;
      v31 = v55;
    }

    v49 = [(OTEnsureOctagonKeyConsistency *)self intendedState];
    [(OTEnsureOctagonKeyConsistency *)self setNextState:v49];

    v43 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v43];
LABEL_38:

    v11 = v61;
    v53 = v58;
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

  v12 = [(OTEnsureOctagonKeyConsistency *)self finishOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v12];
LABEL_43:
}

- (OTEnsureOctagonKeyConsistency)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OTEnsureOctagonKeyConsistency;
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