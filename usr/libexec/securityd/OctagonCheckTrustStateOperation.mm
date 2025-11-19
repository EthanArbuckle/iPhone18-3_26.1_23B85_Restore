@interface OctagonCheckTrustStateOperation
- (OctagonCheckTrustStateOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5;
- (void)afterTPHTrustState:(id)a3 trustedPeers:(id)a4;
- (void)groupStart;
@end

@implementation OctagonCheckTrustStateOperation

- (void)afterTPHTrustState:(id)a3 trustedPeers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 memberChanges])
  {
    v8 = sub_100006274("octagon");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Member list changed", buf, 2u);
    }

    v9 = [(OctagonCheckTrustStateOperation *)self deps];
    v10 = [v9 octagonAdapter];
    [v10 sendTrustedPeerSetChangedUpdate];
  }

  v11 = [(OctagonCheckTrustStateOperation *)self deps];
  v12 = [v11 stateHolder];
  v88 = 0;
  v13 = [v12 loadOrCreateAccountMetadata:&v88];
  v14 = v88;

  if (v14)
  {
    v15 = [(OctagonCheckTrustStateOperation *)self deps];
    v16 = [v15 lockStateTracker];
    v17 = [v16 isLockedError:v14];

    v18 = sub_100006274("SecError");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (!v17)
    {
      if (v19)
      {
        *buf = 138412290;
        v90 = v14;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "octagon-consistency: Unable to fetch current account state. Can't ensure consistency: %@", buf, 0xCu);
      }

      goto LABEL_93;
    }

    if (v19)
    {
      *buf = 138412290;
      v90 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "octagon-consistency: Unable to fetch current account state due to lock state: %@", buf, 0xCu);
    }

    v20 = @"WaitForClassCUnlock";
LABEL_92:
    [(OctagonCheckTrustStateOperation *)self setNextState:v20];
LABEL_93:
    v51 = [(OctagonCheckTrustStateOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:v51];
    goto LABEL_94;
  }

  if (([v6 peerStatus] & 4) != 0 || (objc_msgSend(v6, "peerStatus") & 0x20) != 0)
  {
    v21 = 1;
    v22 = 1;
  }

  else if ([v6 peerStatus] & 0x40) != 0 || (objc_msgSend(v6, "peerStatus") & 2) != 0 || (objc_msgSend(v6, "peerStatus"))
  {
    v21 = 0;
    v22 = 2;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23 = sub_100006274("octagon-consistency");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    [v6 peerStatus];
    v24 = TPPeerStatusToString();
    v25 = *(&off_100343A28 + v22);
    *buf = 138412546;
    v90 = v24;
    v91 = 2112;
    v92 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "TPH's trust state (%@) is considered %@", buf, 0x16u);
  }

  v26 = [v13 trustState];
  if (v22 == v26)
  {
    v27 = sub_100006274("octagon-consistency");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      [v6 peerStatus];
      v28 = TPPeerStatusToString();
      *buf = 138412290;
      v90 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "TPH peer status matches cache: (%@)", buf, 0xCu);
    }

    v29 = +[CKKSAnalytics logger];
    [v29 logSuccessForEventNamed:@"OctagonEventCheckTrustState"];
  }

  else
  {
    v30 = sub_100006274("SecError");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v13 trustState];
      if (v31 >= 3)
      {
        v32 = [NSString stringWithFormat:@"(unknown: %i)", v31];
      }

      else
      {
        v32 = *(&off_100343A28 + v31);
      }

      v33 = v32;
      v34 = *(&off_100343A28 + v22);
      *buf = 138412546;
      v90 = v33;
      v91 = 2112;
      v92 = v34;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "octagon-consistency: Locally cached status (%@) does not match TPH's current peer status (%@)", buf, 0x16u);
    }

    v35 = [v13 trustState];
    v36 = v21 ^ 1;
    if (v35 != 2)
    {
      v36 = 1;
    }

    if ((v36 & 1) == 0)
    {
      v37 = +[CKKSAnalytics logger];
      [v37 logHardFailureForEventNamed:@"OctagonEventCheckTrustState" withAttributes:0];
    }

    [v13 setTrustState:v22];
  }

  v38 = [v6 peerID];
  v39 = [v13 peerID];
  if ([v38 isEqualToString:v39])
  {

    goto LABEL_39;
  }

  v42 = [v6 peerID];
  if (v42)
  {

LABEL_46:
    v44 = sub_100006274("SecError");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [v13 peerID];
      v46 = [v6 peerID];
      *buf = 138412546;
      v90 = v45;
      v91 = 2112;
      v92 = v46;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "octagon-consistency: Locally cached peer ID (%@) does not match TPH's current peer ID (%@)", buf, 0x16u);
    }

    v47 = [v6 peerID];
    [v13 setPeerID:v47];

    goto LABEL_49;
  }

  v43 = [v13 peerID];

  if (v43)
  {
    goto LABEL_46;
  }

LABEL_39:
  v40 = sub_100006274("octagon-consistency");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [v6 peerID];
    *buf = 138412290;
    v90 = v41;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "TPH peer ID matches cache: (%@)", buf, 0xCu);
  }

  if (v22 == v26)
  {
LABEL_54:
    v53 = [v6 osVersion];

    if (v53)
    {
      v54 = [(OctagonCheckTrustStateOperation *)self deps];
      v55 = [v54 deviceInformationAdapter];
      v56 = [v55 osVersion];

      if (v56)
      {
        v57 = [v6 osVersion];
        v58 = [v56 isEqualToString:v57];

        if ((v58 & 1) == 0)
        {
          v59 = [[OctagonPendingFlag alloc] initWithFlag:@"recd_push" conditions:1];
          v60 = [(OctagonCheckTrustStateOperation *)self deps];
          v61 = [v60 flagHandler];
          [v61 handlePendingFlag:v59];
        }
      }
    }

    v62 = [v13 peerID];
    if (v62)
    {
      v63 = v62;
      v64 = [v13 trustState];

      if (v64 == 2)
      {
        v65 = sub_100006274("octagon");
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = [v13 peerID];
          *buf = 138412290;
          v90 = v66;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Appear to be trusted for peer %@; ensuring correct state", buf, 0xCu);
        }

        v67 = &off_100343A10;
        goto LABEL_91;
      }
    }

    v68 = [(OctagonCheckTrustStateOperation *)self deps];
    v69 = [v68 sosAdapter];
    if ([v69 sosEnabled])
    {
      v70 = [v13 trustState];

      if (v70 != 2)
      {
        v65 = sub_100006274("octagon");
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v71 = [v13 trustStateAsString:{objc_msgSend(v13, "trustState")}];
          *buf = 138412290;
          v90 = v71;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Have iCloud account but not trusted in Octagon yet: %@; attempting SOS upgrade", buf, 0xCu);
        }

        v67 = &off_100343A18;
        goto LABEL_91;
      }
    }

    else
    {
    }

    v78 = [v13 trustState];
    v65 = sub_100006274("octagon");
    v79 = os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);
    if (v78 == 2)
    {
      if (v79)
      {
        v80 = [v13 trustState];
        if (v80 >= 3)
        {
          v81 = [NSString stringWithFormat:@"(unknown: %i)", v80];
        }

        else
        {
          v81 = *(&off_100343A28 + v80);
        }

        *buf = 138412290;
        v90 = v81;
        v84 = "Unknown trust state (%@). Assuming untrusted...";
LABEL_89:
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, v84, buf, 0xCu);
      }
    }

    else if (v79)
    {
      v83 = [v13 trustState];
      if (v83 >= 3)
      {
        v81 = [NSString stringWithFormat:@"(unknown: %i)", v83];
      }

      else
      {
        v81 = *(&off_100343A28 + v83);
      }

      *buf = 138412290;
      v90 = v81;
      v84 = "Have iCloud account but not trusted in Octagon (%@)";
      goto LABEL_89;
    }

    v67 = &off_100343A20;
LABEL_91:

    v20 = *v67;
    goto LABEL_92;
  }

LABEL_49:
  v48 = [(OctagonCheckTrustStateOperation *)self deps];
  v49 = [v48 stateHolder];
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_1001AB8C8;
  v86[3] = &unk_100344BD8;
  v87 = v13;
  v85 = 0;
  v50 = [v49 persistAccountChanges:v86 error:&v85];
  v51 = v85;

  if (v50 && !v51)
  {
    v52 = sub_100006274("octagon-consistency");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Saved new account metadata", buf, 2u);
    }

    goto LABEL_54;
  }

  v72 = [(OctagonCheckTrustStateOperation *)self deps];
  v73 = [v72 lockStateTracker];
  v74 = [v73 isLockedError:v51];

  v75 = sub_100006274("SecError");
  v76 = os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);
  if (v74)
  {
    if (v76)
    {
      *buf = 138412290;
      v90 = v51;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "octagon-consistency: Unable to save new account state due to lock state: %@", buf, 0xCu);
    }

    v77 = &off_100343A08;
  }

  else
  {
    if (v76)
    {
      *buf = 138412290;
      v90 = v51;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "octagon-consistency: Unable to save new account state. Erroring: %@", buf, 0xCu);
    }

    [(CKKSResultOperation *)self setError:v51];
    v77 = &off_1003439D8;
  }

  [(OctagonCheckTrustStateOperation *)self setNextState:*v77];
  v82 = [(OctagonCheckTrustStateOperation *)self finishedOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:v82];

LABEL_94:
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OctagonCheckTrustStateOperation *)self setFinishedOp:v3];

  v4 = [(OctagonCheckTrustStateOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:v4];

  objc_initWeak(&location, self);
  v5 = [(OctagonCheckTrustStateOperation *)self deps];
  v6 = [v5 cuttlefishXPCWrapper];
  v7 = [(OctagonCheckTrustStateOperation *)self deps];
  v8 = [v7 activeAccount];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001ABA98;
  v9[3] = &unk_1003439E8;
  objc_copyWeak(&v10, &location);
  [v6 fetchTrustStateWithSpecificUser:v8 reply:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (OctagonCheckTrustStateOperation)initWithDependencies:(id)a3 intendedState:(id)a4 errorState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OctagonCheckTrustStateOperation;
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