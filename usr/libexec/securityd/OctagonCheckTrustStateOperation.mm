@interface OctagonCheckTrustStateOperation
- (OctagonCheckTrustStateOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState;
- (void)afterTPHTrustState:(id)state trustedPeers:(id)peers;
- (void)groupStart;
@end

@implementation OctagonCheckTrustStateOperation

- (void)afterTPHTrustState:(id)state trustedPeers:(id)peers
{
  stateCopy = state;
  peersCopy = peers;
  if ([stateCopy memberChanges])
  {
    v8 = sub_100006274("octagon");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Member list changed", buf, 2u);
    }

    deps = [(OctagonCheckTrustStateOperation *)self deps];
    octagonAdapter = [deps octagonAdapter];
    [octagonAdapter sendTrustedPeerSetChangedUpdate];
  }

  deps2 = [(OctagonCheckTrustStateOperation *)self deps];
  stateHolder = [deps2 stateHolder];
  v88 = 0;
  v13 = [stateHolder loadOrCreateAccountMetadata:&v88];
  v14 = v88;

  if (v14)
  {
    deps3 = [(OctagonCheckTrustStateOperation *)self deps];
    lockStateTracker = [deps3 lockStateTracker];
    v17 = [lockStateTracker isLockedError:v14];

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
    finishedOp = [(OctagonCheckTrustStateOperation *)self finishedOp];
    [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp];
    goto LABEL_94;
  }

  if (([stateCopy peerStatus] & 4) != 0 || (objc_msgSend(stateCopy, "peerStatus") & 0x20) != 0)
  {
    v21 = 1;
    v22 = 1;
  }

  else if ([stateCopy peerStatus] & 0x40) != 0 || (objc_msgSend(stateCopy, "peerStatus") & 2) != 0 || (objc_msgSend(stateCopy, "peerStatus"))
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
    [stateCopy peerStatus];
    v24 = TPPeerStatusToString();
    v25 = *(&off_100343A28 + v22);
    *buf = 138412546;
    v90 = v24;
    v91 = 2112;
    v92 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "TPH's trust state (%@) is considered %@", buf, 0x16u);
  }

  trustState = [v13 trustState];
  if (v22 == trustState)
  {
    v27 = sub_100006274("octagon-consistency");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      [stateCopy peerStatus];
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
      trustState2 = [v13 trustState];
      if (trustState2 >= 3)
      {
        v32 = [NSString stringWithFormat:@"(unknown: %i)", trustState2];
      }

      else
      {
        v32 = *(&off_100343A28 + trustState2);
      }

      v33 = v32;
      v34 = *(&off_100343A28 + v22);
      *buf = 138412546;
      v90 = v33;
      v91 = 2112;
      v92 = v34;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "octagon-consistency: Locally cached status (%@) does not match TPH's current peer status (%@)", buf, 0x16u);
    }

    trustState3 = [v13 trustState];
    v36 = v21 ^ 1;
    if (trustState3 != 2)
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

  peerID = [stateCopy peerID];
  peerID2 = [v13 peerID];
  if ([peerID isEqualToString:peerID2])
  {

    goto LABEL_39;
  }

  peerID3 = [stateCopy peerID];
  if (peerID3)
  {

LABEL_46:
    v44 = sub_100006274("SecError");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      peerID4 = [v13 peerID];
      peerID5 = [stateCopy peerID];
      *buf = 138412546;
      v90 = peerID4;
      v91 = 2112;
      v92 = peerID5;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "octagon-consistency: Locally cached peer ID (%@) does not match TPH's current peer ID (%@)", buf, 0x16u);
    }

    peerID6 = [stateCopy peerID];
    [v13 setPeerID:peerID6];

    goto LABEL_49;
  }

  peerID7 = [v13 peerID];

  if (peerID7)
  {
    goto LABEL_46;
  }

LABEL_39:
  v40 = sub_100006274("octagon-consistency");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    peerID8 = [stateCopy peerID];
    *buf = 138412290;
    v90 = peerID8;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "TPH peer ID matches cache: (%@)", buf, 0xCu);
  }

  if (v22 == trustState)
  {
LABEL_54:
    osVersion = [stateCopy osVersion];

    if (osVersion)
    {
      deps4 = [(OctagonCheckTrustStateOperation *)self deps];
      deviceInformationAdapter = [deps4 deviceInformationAdapter];
      osVersion2 = [deviceInformationAdapter osVersion];

      if (osVersion2)
      {
        osVersion3 = [stateCopy osVersion];
        v58 = [osVersion2 isEqualToString:osVersion3];

        if ((v58 & 1) == 0)
        {
          v59 = [[OctagonPendingFlag alloc] initWithFlag:@"recd_push" conditions:1];
          deps5 = [(OctagonCheckTrustStateOperation *)self deps];
          flagHandler = [deps5 flagHandler];
          [flagHandler handlePendingFlag:v59];
        }
      }
    }

    peerID9 = [v13 peerID];
    if (peerID9)
    {
      v63 = peerID9;
      trustState4 = [v13 trustState];

      if (trustState4 == 2)
      {
        v65 = sub_100006274("octagon");
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          peerID10 = [v13 peerID];
          *buf = 138412290;
          v90 = peerID10;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Appear to be trusted for peer %@; ensuring correct state", buf, 0xCu);
        }

        v67 = &off_100343A10;
        goto LABEL_91;
      }
    }

    deps6 = [(OctagonCheckTrustStateOperation *)self deps];
    sosAdapter = [deps6 sosAdapter];
    if ([sosAdapter sosEnabled])
    {
      trustState5 = [v13 trustState];

      if (trustState5 != 2)
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

    trustState6 = [v13 trustState];
    v65 = sub_100006274("octagon");
    v79 = os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);
    if (trustState6 == 2)
    {
      if (v79)
      {
        trustState7 = [v13 trustState];
        if (trustState7 >= 3)
        {
          v81 = [NSString stringWithFormat:@"(unknown: %i)", trustState7];
        }

        else
        {
          v81 = *(&off_100343A28 + trustState7);
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
      trustState8 = [v13 trustState];
      if (trustState8 >= 3)
      {
        v81 = [NSString stringWithFormat:@"(unknown: %i)", trustState8];
      }

      else
      {
        v81 = *(&off_100343A28 + trustState8);
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
  deps7 = [(OctagonCheckTrustStateOperation *)self deps];
  stateHolder2 = [deps7 stateHolder];
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_1001AB8C8;
  v86[3] = &unk_100344BD8;
  v87 = v13;
  v85 = 0;
  v50 = [stateHolder2 persistAccountChanges:v86 error:&v85];
  finishedOp = v85;

  if (v50 && !finishedOp)
  {
    v52 = sub_100006274("octagon-consistency");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Saved new account metadata", buf, 2u);
    }

    goto LABEL_54;
  }

  deps8 = [(OctagonCheckTrustStateOperation *)self deps];
  lockStateTracker2 = [deps8 lockStateTracker];
  v74 = [lockStateTracker2 isLockedError:finishedOp];

  v75 = sub_100006274("SecError");
  v76 = os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);
  if (v74)
  {
    if (v76)
    {
      *buf = 138412290;
      v90 = finishedOp;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "octagon-consistency: Unable to save new account state due to lock state: %@", buf, 0xCu);
    }

    v77 = &off_100343A08;
  }

  else
  {
    if (v76)
    {
      *buf = 138412290;
      v90 = finishedOp;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "octagon-consistency: Unable to save new account state. Erroring: %@", buf, 0xCu);
    }

    [(CKKSResultOperation *)self setError:finishedOp];
    v77 = &off_1003439D8;
  }

  [(OctagonCheckTrustStateOperation *)self setNextState:*v77];
  finishedOp2 = [(OctagonCheckTrustStateOperation *)self finishedOp];
  [(CKKSGroupOperation *)self runBeforeGroupFinished:finishedOp2];

LABEL_94:
}

- (void)groupStart
{
  v3 = objc_alloc_init(NSOperation);
  [(OctagonCheckTrustStateOperation *)self setFinishedOp:v3];

  finishedOp = [(OctagonCheckTrustStateOperation *)self finishedOp];
  [(CKKSGroupOperation *)self dependOnBeforeGroupFinished:finishedOp];

  objc_initWeak(&location, self);
  deps = [(OctagonCheckTrustStateOperation *)self deps];
  cuttlefishXPCWrapper = [deps cuttlefishXPCWrapper];
  deps2 = [(OctagonCheckTrustStateOperation *)self deps];
  activeAccount = [deps2 activeAccount];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001ABA98;
  v9[3] = &unk_1003439E8;
  objc_copyWeak(&v10, &location);
  [cuttlefishXPCWrapper fetchTrustStateWithSpecificUser:activeAccount reply:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (OctagonCheckTrustStateOperation)initWithDependencies:(id)dependencies intendedState:(id)state errorState:(id)errorState
{
  dependenciesCopy = dependencies;
  stateCopy = state;
  errorStateCopy = errorState;
  v15.receiver = self;
  v15.super_class = OctagonCheckTrustStateOperation;
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