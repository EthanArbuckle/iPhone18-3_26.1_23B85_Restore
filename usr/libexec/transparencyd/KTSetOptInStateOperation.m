@interface KTSetOptInStateOperation
- (KTSetOptInStateOperation)initWithDependenics:(id)a3 intendedState:(id)a4 errorState:(id)a5 optinStates:(id)a6;
- (id)notificationKey;
- (id)optInKey;
- (void)clearCoreFollowUp;
- (void)clearFailureEvents;
- (void)clearOptInStateAndPushToCloud;
- (void)groupStart;
- (void)notifyOptInStatusChanged;
- (void)processResponse:(id)a3 watcher:(id)a4 finishOp:(id)a5;
@end

@implementation KTSetOptInStateOperation

- (KTSetOptInStateOperation)initWithDependenics:(id)a3 intendedState:(id)a4 errorState:(id)a5 optinStates:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = KTSetOptInStateOperation;
  v14 = [(KTGroupOperation *)&v18 init];
  v15 = v14;
  if (v14)
  {
    [(KTSetOptInStateOperation *)v14 setDeps:v10];
    [(KTSetOptInStateOperation *)v15 setOptInStates:v13];
    [(KTSetOptInStateOperation *)v15 setIntendedState:v11];
    [(KTSetOptInStateOperation *)v15 setErrorState:v12];
    [(KTSetOptInStateOperation *)v15 setOptInStates:v13];
    v16 = v15;
  }

  return v15;
}

- (void)groupStart
{
  v3 = [(KTSetOptInStateOperation *)self errorState];
  [(KTSetOptInStateOperation *)self setNextState:v3];

  v4 = [(KTSetOptInStateOperation *)self optInStates];
  v5 = [v4 currentTarget];
  [(KTSetOptInStateOperation *)self setApplicationId:v5];

  v6 = [(KTSetOptInStateOperation *)self optInStates];
  v7 = [v6 targetOptInStates];
  v8 = [(KTSetOptInStateOperation *)self applicationId];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [NSBlockOperation blockOperationWithBlock:&stru_100319C18];
    [(KTGroupOperation *)self dependOnBeforeGroupFinished:v10];
    v11 = objc_alloc_init(KTIDSOpsOptInOutData);
    v12 = [(KTSetOptInStateOperation *)self applicationId];
    [(KTIDSOpsOptInOutData *)v11 setKtApplication:v12];

    v13 = [v9 targetState];
    if (v13 <= 3)
    {
      v14 = *(&off_100319F48 + v13);
      [(KTIDSOpsOptInOutData *)v11 setOptChangeReason:dword_1002D46D0[v13]];
      [(KTIDSOpsOptInOutData *)v11 setOptInStatus:v14];
    }

    v15 = [(KTSetOptInStateOperation *)self deps];
    v16 = [v15 cloudRecords];
    v17 = [(KTSetOptInStateOperation *)self applicationId];
    v18 = [(KTIDSOpsOptInOutData *)v11 optInStatus];
    v52 = 0;
    v44 = [v16 storeOptInIntentForApplication:v17 state:objc_msgSend(v18 overwrite:"BOOLValue") error:{1, &v52}];
    v42 = v52;

    v19 = [(KTSetOptInStateOperation *)self deps];
    v20 = [v19 cloudRecords];
    v21 = [(KTSetOptInStateOperation *)self applicationId];
    v51 = 0;
    v22 = [v20 deleteOptInIntentForApplication:v21 error:&v51];
    v41 = v51;

    v23 = [(KTSetOptInStateOperation *)self deps];
    v24 = [v23 accountKeyService];
    v25 = [(KTSetOptInStateOperation *)self applicationId];
    v26 = [v24 accountKeyService:v25];

    v50 = 0;
    v27 = [v26 publicPublicKey:&v50];
    v43 = v50;
    [(KTIDSOpsOptInOutData *)v11 setPublicAccountKey:v27];

    v28 = [(KTIDSOpsOptInOutData *)v11 publicAccountKey];
    LODWORD(v27) = v28 == 0;

    if (v27)
    {
      if (qword_10038BCD0 != -1)
      {
        sub_100248F48();
      }

      v29 = qword_10038BCD8;
      if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v56 = v26;
        v57 = 2112;
        v58 = v43;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Cloud not get account key from service %@, this is not going to end well: %@", buf, 0x16u);
      }
    }

    v30 = [(KTSetOptInStateOperation *)self applicationId];
    v53 = v30;
    v54 = v11;
    v31 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];

    v32 = [SendOptInUpdateRequestOperation alloc];
    v33 = [(KTSetOptInStateOperation *)self deps];
    v34 = [(SendOptInUpdateRequestOperation *)v32 initWithDependenics:v33 optInRequest:v31];

    objc_initWeak(buf, self);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_10003BAF4;
    v45[3] = &unk_100319C60;
    objc_copyWeak(&v49, buf);
    v35 = v34;
    v46 = v35;
    v47 = v9;
    v36 = v10;
    v48 = v36;
    v37 = [KTResultOperation named:@"set-opt-io" withBlock:v45];
    [(KTResultOperation *)v35 addSuccessDependency:v44];
    [v37 addDependency:v35];
    [v22 addSuccessDependency:v37];
    [(KTGroupOperation *)self runBeforeGroupFinished:v44];
    [(KTGroupOperation *)self runBeforeGroupFinished:v35];
    [(KTGroupOperation *)self runBeforeGroupFinished:v37];
    [(KTGroupOperation *)self runBeforeGroupFinished:v22];

    objc_destroyWeak(&v49);
    objc_destroyWeak(buf);
  }

  else
  {
    if (qword_10038BCD0 != -1)
    {
      sub_100248F70();
    }

    v38 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
    {
      v39 = v38;
      v40 = [(KTSetOptInStateOperation *)self applicationId];
      *buf = 138412290;
      v56 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Warning: no target application available: %@", buf, 0xCu);
    }

    v36 = [(KTSetOptInStateOperation *)self optInStates];
    [v36 setCurrentTarget:0];
  }
}

- (void)processResponse:(id)a3 watcher:(id)a4 finishOp:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSMutableDictionary dictionary];
  if ([v8 success])
  {
    v12 = [v8 serverSMTByURI];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [v8 serverSMTByURI];
      v109[0] = _NSConcreteStackBlock;
      v109[1] = 3221225472;
      v109[2] = sub_10003CAE0;
      v109[3] = &unk_100319CA8;
      v109[4] = self;
      v110 = v9;
      v111 = v11;
      [v14 enumerateKeysAndObjectsUsingBlock:v109];
    }

    else
    {
      v24 = [v8 serverProvidedSMT];
      v25 = -[KTSetOptInStateOperation verifyResponse:uri:expectedState:](self, "verifyResponse:uri:expectedState:", v24, 0, [v9 targetState] != 0);

      [v11 setObject:v25 forKeyedSubscript:&stru_10032E8E8];
    }

    if (qword_10038BCD0 != -1)
    {
      sub_100248F98();
    }

    v95 = v9;
    v26 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v113 = v11;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "OptIn result: %@", buf, 0xCu);
    }

    [(KTSetOptInStateOperation *)self setOptInResult:v11];
    v96 = +[NSMutableArray array];
    v97 = +[NSMutableArray array];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v27 = [v11 objectEnumerator];
    v28 = [v27 countByEnumeratingWithState:&v105 objects:v119 count:16];
    v98 = self;
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v31 = *v106;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v106 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v105 + 1) + 8 * i);
          if (([v33 success] & 1) == 0)
          {
            v34 = [v33 error];

            if (v34)
            {
              v35 = [v33 error];
              [v96 addObject:v35];
            }

            v36 = [v33 uri];

            if (v36)
            {
              v37 = [v33 uri];
              [v97 addObject:v37];
            }

            v30 = 1;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v105 objects:v119 count:16];
      }

      while (v29);

      self = v98;
      if (v30)
      {
        v38 = +[NSMutableDictionary dictionary];
        v15 = v96;
        [v38 setObject:v96 forKeyedSubscript:NSMultipleUnderlyingErrorsKey];
        [v38 setObject:v97 forKeyedSubscript:@"uris"];
        v99 = v38;
        v39 = [TransparencyError errorWithDomain:@"TransparencyErrorVerify" code:-361 underlyingError:0 userinfo:v38 description:@"Failed validation uri"];
        [(KTResultOperation *)v98 setError:v39];

        v9 = v95;
        if (qword_10038BCD0 != -1)
        {
          sub_100248FC0();
        }

        v40 = qword_10038BCD8;
        if (!os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_79;
        }

        v23 = v40;
        v41 = [(KTResultOperation *)v98 error];
        *buf = 138412290;
        v113 = v41;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to change opt-in state due to IDS opt-in failure: %@", buf, 0xCu);

LABEL_34:
LABEL_79:

        goto LABEL_80;
      }
    }

    else
    {
    }

    v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v95 targetState]);
    v43 = [(KTSetOptInStateOperation *)self optInStates];
    v44 = [v43 currentStates];
    v45 = [(KTSetOptInStateOperation *)self applicationId];
    [v44 setObject:v42 forKeyedSubscript:v45];

    [(KTSetOptInStateOperation *)self clearCoreFollowUp];
    [(KTSetOptInStateOperation *)self clearFailureEvents];
    if (qword_10038BCD0 != -1)
    {
      sub_100248FE8();
    }

    v46 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v46;
      v48 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v95 targetState]);
      v49 = [(KTSetOptInStateOperation *)self applicationId];
      *buf = 138543618;
      v113 = v48;
      v114 = 2114;
      v115 = v49;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "changing opt-in state to %{public}@ for %{public}@", buf, 0x16u);
    }

    v94 = v10;
    v92 = v8;
    v99 = +[NSMutableDictionary dictionary];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v93 = v11;
    v50 = [v11 objectEnumerator];
    v51 = [v50 countByEnumeratingWithState:&v101 objects:v118 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = 0;
      v54 = *v102;
      do
      {
        for (j = 0; j != v52; j = j + 1)
        {
          if (*v102 != v54)
          {
            objc_enumerationMutation(v50);
          }

          v56 = *(*(&v101 + 1) + 8 * j);
          v57 = [v56 uri];

          if (v57)
          {
            v58 = [(KTSetOptInStateOperation *)self applicationId];
            v59 = [v56 uri];
            v60 = [TransparencyApplication addApplicationPrefixForIdentifier:v58 uri:v59];

            v61 = [v56 optInDate];
            [v99 setObject:v61 forKeyedSubscript:v60];

            if (!v53 || ([v56 optInDate], v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "compare:", v53), v62, v63 == -1))
            {
              v64 = [v56 optInDate];

              v53 = v64;
            }

            self = v98;
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v101 objects:v118 count:16];
      }

      while (v52);
    }

    else
    {
      v53 = 0;
    }

    v65 = [(KTSetOptInStateOperation *)self deps];
    v66 = [v65 cloudRecords];

    v8 = v92;
    if (v66)
    {
      v67 = [(KTSetOptInStateOperation *)self deps];
      v68 = [v67 cloudRecords];
      v69 = [(KTSetOptInStateOperation *)self applicationId];
      v9 = v95;
      v100 = 0;
      v70 = [v68 storeOptInForApplication:v69 uris:v99 state:objc_msgSend(v95 error:{"targetState") != 0, &v100}];
      v71 = v100;

      if (v70)
      {
        [v94 addDependency:v70];
        [(KTGroupOperation *)self runBeforeGroupFinished:v70];
      }

      if (v71)
      {
        if (qword_10038BCD0 != -1)
        {
          sub_100249010();
        }

        v72 = qword_10038BCD8;
        if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v113 = v71;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "storeOptInForApplication failed %@", buf, 0xCu);
        }

        [(KTResultOperation *)self setError:v71];
      }
    }

    else
    {
      v71 = 0;
      v9 = v95;
    }

    if (qword_10038BCD0 != -1)
    {
      sub_100249038();
    }

    v73 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_DEFAULT))
    {
      v74 = v73;
      v75 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 targetState]);
      v76 = [(KTSetOptInStateOperation *)self applicationId];
      v77 = [v99 allKeys];
      v78 = [v77 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v113 = v75;
      v114 = 2114;
      v115 = v76;
      v116 = 2112;
      v117 = v78;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "changing peer opt-in state to %{public}@ for %{public}@ for %@", buf, 0x20u);

      self = v98;
    }

    v79 = [(KTSetOptInStateOperation *)self deps];
    v80 = [v79 dataStore];
    v81 = [v9 targetState] != 0;
    v82 = [v99 allKeys];
    v83 = [(KTSetOptInStateOperation *)self applicationId];
    [v80 setCachedPeerOptInState:v81 uris:v82 application:v83];

    if ([v9 targetState] == 1 || objc_msgSend(v9, "targetState") == 3)
    {
      v84 = [(KTSetOptInStateOperation *)v98 deps];
      v85 = [v84 dataStore];
      v86 = [(KTSetOptInStateOperation *)v98 applicationId];
      [v85 removeFailuresOnOptIn:v86];
    }

    if (v53)
    {
      -[KTSetOptInStateOperation setKVSSMTTime:forState:](v98, "setKVSSMTTime:forState:", v53, [v9 targetState] != 0);
    }

    else
    {
      if (qword_10038BCD0 != -1)
      {
        sub_100249060();
      }

      v87 = qword_10038BCD8;
      if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v113 = v93;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "no KVS smt timestamp: %@", buf, 0xCu);
      }
    }

    [(KTSetOptInStateOperation *)v98 notifyOptInStatusChanged];
    v88 = [[KTPendingFlag alloc] initWithFlag:@"StatusUpdate" delayInSeconds:0.0];
    v89 = [(KTSetOptInStateOperation *)v98 deps];
    v90 = [v89 flagHandler];
    [v90 handlePendingFlag:v88];

    v91 = [(KTSetOptInStateOperation *)v98 intendedState];
    [(KTSetOptInStateOperation *)v98 setNextState:v91];

    v11 = v93;
    v10 = v94;
    v15 = v96;
    goto LABEL_79;
  }

  v15 = [v8 error];
  if (qword_10038BCD0 != -1)
  {
    sub_100248F84();
  }

  v16 = qword_10038BCD8;
  if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
  {
    v17 = v16;
    v18 = [v8 error];
    *buf = 138412290;
    v113 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "failed to change opt-in state due to IDS opt-in failure: %@", buf, 0xCu);
  }

  v19 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-290 underlyingError:v15 description:@"IDS failed to change opt-in state for KT"];
  [(KTResultOperation *)self setError:v19];

  if ([v15 code] == -8101)
  {
    v20 = [v15 domain];
    v21 = [v20 isEqual:IDSKeyTransparencyErrorDomain];

    if (v21)
    {
      v22 = [[KTPendingFlag alloc] initWithFlag:@"CheckAccountSignatures" conditions:2 delayInSeconds:1.0];
      v99 = [(KTSetOptInStateOperation *)self deps];
      v23 = [v99 flagHandler];
      v97 = v22;
      [v23 handlePendingFlag:v22];
      goto LABEL_34;
    }
  }

LABEL_80:
}

- (id)optInKey
{
  v2 = [(KTSetOptInStateOperation *)self applicationId];
  v3 = [KTOptInManagerServer optInKeyForApplication:v2];

  return v3;
}

- (id)notificationKey
{
  v2 = [(KTSetOptInStateOperation *)self applicationId];
  v3 = [KTOptInManager notificationKeyForApplication:v2];

  return v3;
}

- (void)clearOptInStateAndPushToCloud
{
  v3 = [(KTSetOptInStateOperation *)self deps];
  v4 = [v3 cloudRecords];
  v5 = [(KTSetOptInStateOperation *)self applicationId];
  v16 = 0;
  [v4 clearOptInStateForURI:0 application:v5 error:&v16];
  v6 = v16;

  if (v6)
  {
    if (qword_10038BCD0 != -1)
    {
      sub_100249088();
    }

    v7 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Opt-in reset failed clear all states: error: %@", buf, 0xCu);
    }
  }

  v8 = [KTPendingFlag alloc];
  v9 = [(KTSetOptInStateOperation *)self deps];
  v10 = [v9 cloudKitOutgoingNFS];
  v11 = [(KTPendingFlag *)v8 initWithFlag:@"CloudKitOutgoing" conditions:2 scheduler:v10];

  v12 = [(KTSetOptInStateOperation *)self deps];
  v13 = [v12 flagHandler];
  [v13 handlePendingFlag:v11];

  v14 = [(KTSetOptInStateOperation *)self deps];
  v15 = [v14 cloudKitOutgoingNFS];
  [v15 trigger];
}

- (void)clearFailureEvents
{
  v3 = [(KTSetOptInStateOperation *)self deps];
  v4 = [v3 dataStore];
  v5 = [(KTSetOptInStateOperation *)self applicationId];
  v9 = 0;
  v6 = [v4 clearAllFailureEvents:v5 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    if (qword_10038BCD0 != -1)
    {
      sub_1002490D8();
    }

    v8 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "failed to clear existing failure events: %@", buf, 0xCu);
    }
  }
}

- (void)clearCoreFollowUp
{
  v2 = [(KTSetOptInStateOperation *)self deps];
  v3 = [v2 followup];
  v7 = 0;
  v4 = [v3 clearAllFollowups:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    if (qword_10038BCD0 != -1)
    {
      sub_100249100();
    }

    v6 = qword_10038BCD8;
    if (os_log_type_enabled(qword_10038BCD8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "failed to clear existing follow ups: %@", buf, 0xCu);
    }
  }
}

- (void)notifyOptInStatusChanged
{
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  v3 = [(KTSetOptInStateOperation *)self notificationKey];
  [v4 postNotificationName:v3 object:0 userInfo:0 deliverImmediately:1];
}

@end