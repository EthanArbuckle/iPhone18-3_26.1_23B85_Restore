id sub_1000BA09C(uint64_t a1)
{
  v1 = [*(a1 + 32) contextForContainerName:@"com.apple.security.keychain" contextID:@"defaultContext"];
  v2 = [v1 followupHandler];
  v3 = [v2 sfaStatus];

  return v3;
}

void sub_1000BA6FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 stopWithEvent:@"OctagonEventBottledPeerRestore" result:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1000BAF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BAF48()
{
  if (!qword_10039DE08)
  {
    qword_10039DE08 = _sl_dlopen();
  }

  return qword_10039DE08;
}

void *sub_1000BB00C(uint64_t a1)
{
  v2 = sub_1000BB05C();
  result = dlsym(v2, "KCPairingIntent_Capability_FullPeer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10039DE10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000BB05C()
{
  v0 = sub_1000BAF48();
  if (v0)
  {
    return v0;
  }

  v1 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *KeychainCircleLibrary(void)"];
  [v1 handleFailureInFunction:v3 file:@"OTManager.m" lineNumber:114 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

void *sub_1000BB10C(uint64_t a1)
{
  v2 = sub_1000BB05C();
  result = dlsym(v2, "KCPairingIntent_Capability_LimitedPeer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10039DE18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000BB15C(void *a1, void *a2, void *a3, void *a4)
{
  if (!a4)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v7 = a1[4];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  [v7 setSessionMetrics:0];
  v11 = a1[7];
  v12 = a1[8];
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v14 = _OctagonSignpostLogSystem();
  v15 = v14;
  v16 = a1[7];
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v17 = *(*(a1[6] + 8) + 24);
    v20 = 67240192;
    LODWORD(v21) = v17;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v16, "PairingChannelAcceptorVoucher", " OctagonSignpostNamePairingChannelAcceptorVoucher=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorVoucher}d ", &v20, 8u);
  }

  v18 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218496;
    v19 = *(*(a1[6] + 8) + 24);
    v21 = a1[7];
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 1026;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorVoucher  OctagonSignpostNamePairingChannelAcceptorVoucher=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorVoucher}d ", &v20, 0x1Cu);
  }

  (*(a1[5] + 16))();
}

uint64_t sub_1000BB33C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10039DE08 = result;
  return result;
}

void sub_1000BB6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BB6F0(void *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v4 = a1[4];
  v5 = a3;
  [v4 setSessionMetrics:0];
  v6 = a1[7];
  v7 = a1[8];
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v9 = _OctagonSignpostLogSystem();
  v10 = v9;
  v11 = a1[7];
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = *(*(a1[6] + 8) + 24);
    v15 = 67240192;
    LODWORD(v16) = v12;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "PairingChannelAcceptorEpoch", " OctagonSignpostNamePairingChannelAcceptorEpoch=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorEpoch}d ", &v15, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218496;
    v14 = *(*(a1[6] + 8) + 24);
    v16 = a1[7];
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 1026;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelAcceptorEpoch  OctagonSignpostNamePairingChannelAcceptorEpoch=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelAcceptorEpoch}d ", &v15, 0x1Cu);
  }

  (*(a1[5] + 16))();
}

void sub_1000BBC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BBC44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) clearPairingUUID];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  [*(a1 + 32) setSessionMetrics:0];
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v7 = _OctagonSignpostLogSystem();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(*(*(a1 + 48) + 8) + 24);
    v13 = 67240192;
    LODWORD(v14) = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "PairingChannelInitiatorJoinOctagon", " OctagonSignpostNamePairingChannelInitiatorJoinOctagon=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorJoinOctagon}d ", &v13, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218496;
    v12 = *(*(*(a1 + 48) + 8) + 24);
    v14 = *(a1 + 56);
    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 1026;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorJoinOctagon  OctagonSignpostNamePairingChannelInitiatorJoinOctagon=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorJoinOctagon}d ", &v13, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000BC15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BC17C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (!a7)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v13 = a1[4];
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = a2;
  [v13 setSessionMetrics:0];
  v20 = a1[7];
  v21 = a1[8];
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v23 = _OctagonSignpostLogSystem();
  v24 = v23;
  v25 = a1[7];
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v26 = *(*(a1[6] + 8) + 24);
    v29 = 67240192;
    LODWORD(v30) = v26;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, v25, "PairingChannelInitiatorPrepare", " OctagonSignpostNamePairingChannelInitiatorPrepare=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorPrepare}d ", &v29, 8u);
  }

  v27 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 134218496;
    v28 = *(*(a1[6] + 8) + 24);
    v30 = a1[7];
    v31 = 2048;
    v32 = Nanoseconds / 1000000000.0;
    v33 = 1026;
    v34 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: PairingChannelInitiatorPrepare  OctagonSignpostNamePairingChannelInitiatorPrepare=%{public,signpost.telemetry:number1,name=OctagonSignpostNamePairingChannelInitiatorPrepare}d ", &v29, 0x1Cu);
  }

  (*(a1[5] + 16))();
}

void sub_1000BC80C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  [v9 stopWithEvent:@"OctagonEventFetchEscrowContents" result:v10];
  (*(*(a1 + 40) + 16))();
}

void sub_1000BCAB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  [v7 stopWithEvent:@"OctagonEventFetchAllBottles" result:v8];
  (*(*(a1 + 40) + 16))();
}

void sub_1000BCEA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 stopWithEvent:@"OctagonEventRemoveFriendsInClique" result:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1000BD0F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 stopWithEvent:@"OctagonEventLeaveClique" result:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1000BD358(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 stopWithEvent:@"OctagonEventEstablish" result:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1000BDAE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 stopWithEvent:@"OctagonEventResetAndEstablish" result:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1000BDF28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error in status RPC for arguments (%@): %@", &v8, 0x16u);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

void sub_1000BE410(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = a3;
  v13 = a7;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [a4 allValues];
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v23;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v17 += [*(*(&v22 + 1) + 8 * i) longValue];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v20 = *(a1 + 32);
  v21 = [NSNumber numberWithLong:v17];
  (*(v20 + 16))(v20, a2, v12, v21, a5, v13);
}

void sub_1000BE764(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = CKXPCSuitableError();
  (*(v2 + 16))(v2, v3, v4);
}

void sub_1000BE880(uint64_t a1)
{
  v1 = [*(a1 + 32) contexts];
  [v1 removeAllObjects];
}

void sub_1000BF93C(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v57 = [NSString stringWithFormat:@"%@-%@", *(a1 + 32), *(a1 + 40)];
  v4 = [*(a1 + 48) contexts];
  v5 = [v4 objectForKeyedSubscript:v57];
  v6 = *(*(a1 + 120) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 120) + 8) + 40) && *(a1 + 128) == 1)
  {
    v8 = [CKKSCuttlefishAdapter alloc];
    v9 = [*(a1 + 48) cuttlefishXPCConnection];
    v10 = [(CKKSCuttlefishAdapter *)v8 initWithConnection:v9];

    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = [v11 makeCKContainer];
      v13 = [CKKSAccountStateTracker alloc];
      v14 = [*(a1 + 48) cloudKitClassDependencies];
      v15 = -[CKKSAccountStateTracker init:nsnotificationCenterClass:](v13, "init:nsnotificationCenterClass:", v12, [v14 nsnotificationCenterClass]);
    }

    else
    {
      v15 = [*(a1 + 48) accountStateTracker];
      v12 = [*(a1 + 48) cloudKitContainer];
    }

    if (qword_10039E108 != -1)
    {
      dispatch_once(&qword_10039E108, &stru_1003420B8);
    }

    v55 = v12;
    v56 = v15;
    v52 = v10;
    if ((byte_10039E100 & 1) != 0 || [*(a1 + 32) isEqualToString:@"com.apple.security.keychain"] && objc_msgSend(*v2, "isEqualToString:", @"defaultContext"))
    {
      v16 = [*(a1 + 40) isEqualToString:@"defaultContext"];
      v17 = off_100343B30;
      if (!v16)
      {
        v17 = (a1 + 40);
      }

      v18 = *v17;
      v50 = [CKKSKeychainView alloc];
      v53 = *(a1 + 56);
      v19 = [*(a1 + 48) lockStateTracker];
      v20 = [*(a1 + 48) reachabilityTracker];
      v21 = [*(a1 + 48) savedTLKNotifier];
      v22 = [*(a1 + 48) cloudKitClassDependencies];
      v23 = [*(a1 + 48) personaAdapter];
      v54 = [(CKKSKeychainView *)v50 initWithContainer:v12 contextID:v18 activeAccount:v53 accountTracker:v15 lockStateTracker:v19 reachabilityTracker:v20 savedTLKNotifier:v21 cloudKitClassDependencies:v22 personaAdapter:v23 accountsAdapter:*(a1 + 64) cuttlefishAdapter:v10];
    }

    else
    {
      v54 = 0;
    }

    v24 = [OTCuttlefishContext alloc];
    v49 = *(a1 + 32);
    v51 = v24;
    v25 = *(a1 + 56);
    v47 = v25;
    v48 = *(a1 + 40);
    v45 = [*(a1 + 48) cuttlefishXPCConnection];
    v46 = *(a1 + 72);
    v26 = *(a1 + 80);
    v43 = v26;
    v44 = *(a1 + 64);
    v42 = [*(a1 + 48) personaAdapter];
    v41 = *(a1 + 88);
    v27 = *(a1 + 104);
    v28 = [*(a1 + 48) reachabilityTracker];
    v29 = *(a1 + 112);
    v30 = [*(a1 + 48) secureBackupAdapter];
    v31 = [*(a1 + 48) laContextAdapter];
    v32 = [*(a1 + 48) apsConnectionClass];
    v33 = [*(a1 + 48) escrowRequestClass];
    v34 = [*(a1 + 48) notifierClass];
    v35 = [*(a1 + 48) cdpd];
    v36 = [(OTCuttlefishContext *)v51 initWithContainerName:v49 contextID:v48 activeAccount:v47 cuttlefish:v45 ckksAccountSync:v54 sosAdapter:v46 accountsAdapter:v44 authKitAdapter:v43 personaAdapter:v42 tooManyPeersAdapter:v41 tapToRadarAdapter:v27 lockStateTracker:v28 reachabilityTracker:v56 accountStateTracker:v29 deviceInformationAdapter:v30 secureBackupAdapter:v31 laContextAdapter:v32 apsConnectionClass:v33 escrowRequestClass:v34 notifierClass:v35 cdpd:?];
    v37 = *(*(a1 + 120) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;

    v39 = *(*(*(a1 + 120) + 8) + 40);
    v40 = [*(a1 + 48) contexts];
    [v40 setObject:v39 forKeyedSubscript:v57];
  }
}

void sub_1000BFFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C0010(uint64_t a1)
{
  v1 = a1;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [*(a1 + 32) contexts];
  v3 = [v2 allValues];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      v19 = v5;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        v9 = [v8 ckks];
        v10 = [v9 container];
        v11 = [*(v1 + 40) container];
        if ([v10 isEqual:v11])
        {
          v18 = v8;
          v22 = [v8 ckks];
          v12 = [v22 operationDependencies];
          v13 = [v12 contextID];
          [*(v1 + 40) operationDependencies];
          v15 = v14 = v1;
          [v15 contextID];
          v17 = v16 = v6;
          v21 = [v13 isEqualToString:v17];

          v6 = v16;
          v1 = v14;
          v5 = v19;

          if (v21)
          {
            objc_storeStrong((*(*(v1 + 48) + 8) + 40), v18);
            goto LABEL_12;
          }
        }

        else
        {
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

LABEL_12:
}

void sub_1000C0590(uint64_t a1)
{
  v7 = [NSString stringWithFormat:@"%@-%@", *(a1 + 32), *(a1 + 40)];
  v2 = [*(a1 + 48) contexts];
  v3 = [v2 objectForKeyedSubscript:v7];

  if (v3)
  {
    v4 = [v3 stateMachine];
    [v4 haltOperation];

    v5 = [v3 ckks];
    [v5 halt];
  }

  v6 = [*(a1 + 48) contexts];
  [v6 setObject:0 forKeyedSubscript:v7];
}

void sub_1000C16BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 buf)
{
  if (a2 == 1)
  {
    v39 = objc_begin_catch(a1);
    v40 = sub_100006274("SecError");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "TrustedPeersHelperSetupProtocol failed, continuing, but you might crash later: %@", &buf, 0xCu);
    }

    v41 = v39;
    objc_exception_throw(v39);
  }

  _Unwind_Resume(a1);
}

void sub_1000C1E10(uint64_t a1)
{
  v5 = [*(a1 + 32) contexts];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000C2524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C2540(uint64_t a1, int a2, void *a3)
{
  if (a2 == 6)
  {
    v12 = v3;
    v13 = v4;
    v7 = sub_100006274("octagon-escrow-repair");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "passcode stash available via cache flow", v11, 2u);
    }

    v8 = [a3 objectForKeyedSubscript:kAKSInfoCacheFlowContext];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = objc_alloc_init(OTControlArguments);
    [WeakRetained setPasscodeStashAvailableForArguments:v10 aksEventContext:v8];
  }
}

void sub_1000C2704(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000C2720(uint64_t a1)
{
  v2 = sub_100006274("octagon");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "circle changed notification called, checking trust state", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_alloc_init(OTControlArguments);
  [WeakRetained moveToCheckTrustedStateForArguments:v4];
}

void sub_1000C300C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C3030(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained viewManager];
  [v1 notifyNewTLKsInKeychain];
}

void sub_1000C350C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000C3534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained viewManager];
  [v1 notifyNewTLKsInKeychain];
}

void sub_1000C3E20(uint64_t a1)
{
  if ([*(a1 + 32) fillInError])
  {
    v2 = *(a1 + 32);
    v3 = [v2 internalSuccesses];
    [v2 allSuccessful:v3];
  }

  *(*(a1 + 32) + 80) = 0;
  *(*(a1 + 32) + 81) = 1;
}

void sub_1000C43FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C44F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C4E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C4E84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained allDependentsSuccessful])
    {
      [v2 groupStart];
    }

    else
    {
      v4 = sub_100019104(@"ckksgroup", 0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = [v2 error];
        v6 = 138412290;
        v7 = v5;
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Not running due to some failed dependent: %@", &v6, 0xCu);
      }

      [v2 cancel];
    }
  }

  else
  {
    v3 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "received callback for released object", &v6, 2u);
    }
  }
}

void sub_1000C4FD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained completeOperation];
  }

  else
  {
    v3 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "received callback for released object", v4, 2u);
    }
  }
}

void sub_1000C5198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C51B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_1000C9818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C9840(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C9858(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 objectForKeyedSubscript:@"parentKeyUUID"];
  v3 = [v4 asString];
  [v2 addObject:v3];
}

void sub_1000C9B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C9B44(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 objectForKeyedSubscript:@"UUID"];
  v3 = [v4 asString];
  [v2 addObject:v3];
}

void sub_1000C9EDC(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a2 objectForKeyedSubscript:@"UUID"];
  v3 = [v4 asString];
  [v2 addObject:v3];
}

void sub_1000CB820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CB89C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000CB8B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v7)
  {
    v9 = sub_100019104(@"ckkszonemodifier", 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Zone modification failed: %@", buf, 0xCu);
    }

    v10 = [WeakRetained deps];
    [v10 inspectErrorForRetryAfter:v7];

    v11 = [WeakRetained deps];
    v12 = [v11 reachabilityTracker];
    v13 = [v12 isNetworkError:v7];

    if (v13)
    {
      v14 = sub_100019104(@"ckkszonemodifier", 0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Waiting for reachability before issuing zone deletion", buf, 2u);
      }

      [WeakRetained setNetworkError:1];
    }
  }

  v15 = sub_100019104(@"ckkszonemodifier", 0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "deleted zones: %@", buf, 0xCu);
  }

  v16 = [WeakRetained deps];
  v17 = [v16 databaseProvider];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000CBC80;
  v21[3] = &unk_1003438A8;
  v18 = *(a1 + 32);
  v21[4] = WeakRetained;
  v22 = v6;
  v23 = v7;
  v24 = v18;
  v19 = v7;
  v20 = v6;
  [v17 dispatchSyncWithSQLTransaction:v21];
}

void sub_1000CBB54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100019104(@"ckkszonemodifier", 0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished deleting zones", buf, 2u);
  }

  if ([WeakRetained networkError])
  {
    [WeakRetained setNextState:@"zone_deletion_failed_due_to_network_error"];
  }

  else
  {
    v3 = [WeakRetained error];

    if (!v3)
    {
      v4 = [WeakRetained intendedState];
      [WeakRetained setNextState:v4];

      v5 = sub_100019104(@"ckkszonemodifier", 0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "no fatal errors discovered!", v6, 2u);
      }
    }
  }
}

uint64_t sub_1000CBC80(uint64_t a1)
{
  v1 = a1;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v2 = [*(a1 + 32) deps];
  v3 = [v2 views];

  v63 = [v3 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v63)
  {
    v4 = *v77;
    v65 = v1;
    v60 = *v77;
    v61 = v3;
    do
    {
      for (i = 0; i != v63; i = i + 1)
      {
        if (*v77 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v76 + 1) + 8 * i);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v7 = *(*(*(v1 + 56) + 8) + 40);
        v8 = [v7 countByEnumeratingWithState:&v72 objects:v85 count:16];
        if (!v8)
        {
          goto LABEL_56;
        }

        v9 = v8;
        v64 = i;
        v10 = *v73;
LABEL_8:
        v11 = 0;
        while (1)
        {
          if (*v73 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v72 + 1) + 8 * v11);
          v13 = [v6 zoneID];
          v14 = [v12 isEqual:v13];

          if (v14)
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v72 objects:v85 count:16];
            if (!v9)
            {
              v1 = v65;
              i = v64;
              goto LABEL_56;
            }

            goto LABEL_8;
          }
        }

        v15 = v12;

        v1 = v65;
        i = v64;
        if (v15)
        {
          v16 = *(v65 + 40);
          v17 = [v6 zoneID];
          LOBYTE(v16) = [v16 containsObject:v17];

          if ((v16 & 1) == 0)
          {
            v18 = *(v65 + 48);
            if (v18)
            {
              v19 = [v18 userInfo];
              v66 = [v19 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

              v20 = [*(v65 + 48) domain];
              if ([v20 isEqualToString:CKErrorDomain] && objc_msgSend(*(v65 + 48), "code") == 2)
              {

                if (v66)
                {
                  v62 = v15;
                  v70 = 0u;
                  v71 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v21 = v66;
                  v22 = [v66 allKeys];
                  v23 = [v22 countByEnumeratingWithState:&v68 objects:v84 count:16];
                  if (!v23)
                  {
                    goto LABEL_39;
                  }

                  v24 = v23;
                  v25 = *v69;
                  while (1)
                  {
                    for (j = 0; j != v24; j = j + 1)
                    {
                      if (*v69 != v25)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v27 = *(*(&v68 + 1) + 8 * j);
                      v28 = [v21 objectForKeyedSubscript:v27];
                      v29 = v28;
                      if (!v28)
                      {
                        goto LABEL_31;
                      }

                      v30 = [v28 domain];
                      if (([v30 isEqualToString:CKErrorDomain] & 1) == 0)
                      {

LABEL_31:
                        [*(v1 + 32) setError:*(v1 + 48)];
                        goto LABEL_37;
                      }

                      if ([v29 code] == 26)
                      {
                      }

                      else
                      {
                        v31 = [v29 code];

                        v32 = v31 == 28;
                        v21 = v66;
                        if (!v32)
                        {
                          goto LABEL_31;
                        }
                      }

                      v33 = [v6 zoneID];
                      v34 = [v33 zoneName];
                      v35 = sub_100019104(@"ckkszone", v34);

                      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        v81 = v27;
                        v82 = 2112;
                        v83 = v29;
                        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Attempted to delete zone %@, but it's already missing. This is okay: %@", buf, 0x16u);
                      }

                      v1 = v65;
                      v21 = v66;
LABEL_37:
                    }

                    v24 = [v22 countByEnumeratingWithState:&v68 objects:v84 count:16];
                    if (!v24)
                    {
LABEL_39:

                      v4 = v60;
                      v3 = v61;
                      i = v64;
                      v15 = v62;
                      goto LABEL_42;
                    }
                  }
                }
              }

              else
              {
              }

              [*(v65 + 32) setError:*(v65 + 48)];
LABEL_42:
              v36 = [v6 zoneID];
              v37 = [v36 zoneName];
              v38 = sub_100019104(@"ckkszone", v37);

              v1 = v65;
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 = [v6 zoneID];
                v40 = *(v65 + 48);
                *buf = 138412546;
                v81 = v39;
                v82 = 2112;
                v83 = v40;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "deletion of record zone %@ completed with error: %@", buf, 0x16u);
              }

              v41 = [*(v65 + 32) error];

              if (v41)
              {
                v42 = [v6 zoneID];
                v43 = [v42 zoneName];
                v44 = sub_100019104(@"ckkszone", v43);

                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "we hit a fatal error!!!", buf, 2u);
                }

LABEL_55:
                v1 = v65;

                v7 = v15;
LABEL_56:

                continue;
              }
            }
          }

          v45 = [v6 zoneID];
          v46 = [v45 zoneName];
          v47 = sub_100019104(@"ckkszone", v46);

          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = [v6 zoneID];
            *buf = 138412290;
            v81 = v48;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "deletion of record zone %@ completed successfully", buf, 0xCu);
          }

          v49 = [*(v1 + 32) deps];
          v50 = [v49 contextID];
          v51 = [v6 zoneID];
          v52 = [v51 zoneName];
          v44 = [CKKSZoneStateEntry contextID:v50 zoneName:v52];

          [v44 setCkzonecreated:0];
          [v44 setCkzonesubscribed:0];
          [v44 setInitialSyncFinished:0];
          v67 = 0;
          [v44 saveToDatabase:&v67];
          v66 = v67;
          if (v66)
          {
            v53 = [v6 zoneID];
            v54 = [v53 zoneName];
            v55 = sub_100019104(@"ckks", v54);

            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v56 = [v6 zoneID];
              *buf = 138412546;
              v81 = v56;
              v82 = 2112;
              v83 = v66;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "couldn't save zone deletion status for %@: %@", buf, 0x16u);
            }
          }

          else
          {
            v66 = 0;
          }

          goto LABEL_55;
        }
      }

      v63 = [v3 countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v63);
  }

  v57 = [*(v1 + 32) operationQueue];
  v58 = [*(v1 + 32) setResultStateOperation];
  [v57 addOperation:v58];

  return 1;
}

void sub_1000CCB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CCBB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained error];
    v5 = v4;
    v6 = @"no error";
    if (v4)
    {
      v6 = v4;
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finishing triggering escrow update with %@", &v10, 0xCu);
  }

  v7 = [WeakRetained error];

  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [WeakRetained error];
    [v8 sendMetricWithResult:0 error:v9];
  }

  else
  {
    [v8 sendMetricWithResult:1 error:0];
  }
}

void sub_1000CD384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1000CD3D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = sub_100006274("octagon-cdp-status");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      *buf = 138412290;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to talk with TPH; leaving CDP status as 'unknown': %@", buf, 0xCu);
    }

    [WeakRetained setError:v6];
    v10 = [WeakRetained deps];
    v11 = [v10 reachabilityTracker];
    v12 = [v11 isNetworkError:v6];

    if (v12)
    {
      v13 = [[OctagonPendingFlag alloc] initWithFlag:@"pending_network_availablility" conditions:2 delayInSeconds:0.2];
      v14 = [WeakRetained deps];
      v15 = [v14 flagHandler];
      [v15 handlePendingFlag:v13];
    }

    goto LABEL_23;
  }

  if (v9)
  {
    *buf = 67109120;
    LODWORD(v34) = [v5 numberOfPeersInOctagon];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Octagon reports %d peers", buf, 8u);
  }

  if ([v5 numberOfPeersInOctagon])
  {
    v16 = *(*(a1 + 32) + 8);
    v17 = 2;
LABEL_22:
    *(v16 + 24) = v17;
    goto LABEL_23;
  }

  v18 = [WeakRetained deps];
  v19 = [v18 sosAdapter];
  v20 = [v19 sosEnabled];

  v21 = sub_100006274("octagon-cdp-status");
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (!v20)
  {
    if (v22)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No SOS. CDP bit is off.", buf, 2u);
    }

    v16 = *(*(a1 + 32) + 8);
    v17 = 1;
    goto LABEL_22;
  }

  if (v22)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Requesting SOS status...", buf, 2u);
  }

  v23 = [WeakRetained deps];
  v24 = [v23 sosAdapter];
  v32 = 0;
  v25 = [v24 circleStatus:&v32];
  v26 = v32;

  if (v26 || v25 == -1)
  {
    v31 = sub_100006274("octagon-cdp-status");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v26;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Error fetching circle status. Leaving CDP status as 'unknown': %@", buf, 0xCu);
    }
  }

  else
  {
    v27 = sub_100006274("octagon-cdp-status");
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v25 == 3)
    {
      if (v28)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "SOS reports circle absent. Setting CDP to 'disabled'", buf, 2u);
      }

      v29 = *(*(a1 + 32) + 8);
      v30 = 1;
    }

    else
    {
      if (v28)
      {
        *buf = 67109120;
        LODWORD(v34) = v25;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "SOS reports some existing circle (%d). Setting CDP to 'enabled'", buf, 8u);
      }

      v29 = *(*(a1 + 32) + 8);
      v30 = 2;
    }

    *(v29 + 24) = v30;
  }

LABEL_23:
}

id sub_1000CD7DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cdpState];
  v5 = sub_100006274("octagon-cdp-status");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 2)
  {
    if (v6)
    {
      v7 = *(*(*(a1 + 32) + 8) + 24);
      if (v7 >= 3)
      {
        v8 = [NSString stringWithFormat:@"(unknown: %i)", *(*(*(a1 + 32) + 8) + 24)];
      }

      else
      {
        v8 = *(&off_1003369E0 + v7);
      }

      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CDP bit is enabled on-disk, not modifying (would have been %@)", buf, 0xCu);
    }

    v11 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 2;
  }

  else
  {
    if (v6)
    {
      v9 = *(*(*(a1 + 32) + 8) + 24);
      if (v9 >= 3)
      {
        v10 = [NSString stringWithFormat:@"(unknown: %i)", *(*(*(a1 + 32) + 8) + 24)];
      }

      else
      {
        v10 = *(&off_1003369E0 + v9);
      }

      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Writing CDP bit as %@", buf, 0xCu);
    }

    [v3 setCdpState:*(*(*(a1 + 32) + 8) + 24)];
    v11 = v3;
  }

  return v11;
}

void sub_1000CEDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CEDDC(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"count(*)"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 asNSInteger];
}

void sub_1000CF048(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 objectForKeyedSubscript:@"count(rowid)"];
  v4 = [v8 asNSNumberInteger];
  v5 = *(a1 + 32);
  v6 = [v3 objectForKeyedSubscript:@"state"];

  v7 = [v6 asString];
  [v5 setObject:v4 forKeyedSubscript:v7];
}

void sub_1000D20E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 objectForKeyedSubscript:@"count(rowid)"];
  v4 = [v8 asNSNumberInteger];
  v5 = *(a1 + 32);
  v6 = [v3 objectForKeyedSubscript:@"parentKeyUUID"];

  v7 = [v6 asString];
  [v5 setObject:v4 forKeyedSubscript:v7];
}

void sub_1000D23C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D23EC(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"count(*)"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 asNSInteger];
}

void sub_1000D2658(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [v3 objectForKeyedSubscript:@"count(rowid)"];
  v4 = [v8 asNSNumberInteger];
  v5 = *(a1 + 32);
  v6 = [v3 objectForKeyedSubscript:@"state"];

  v7 = [v6 asString];
  [v5 setObject:v4 forKeyedSubscript:v7];
}

void sub_1000D361C(uint64_t a1, const __CFArray *a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Count = CFArrayGetCount(a2);
    NSLog(@"scanning %d %@", Count, v4);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = a2;
    v6 = [(__CFArray *)obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v19[0] = kSecClass;
          v19[1] = kSecValuePersistentRef;
          v20[0] = v4;
          v20[1] = v10;
          v19[2] = kSecReturnAttributes;
          v19[3] = kSecUseDataProtectionKeychain;
          v20[2] = &__kCFBooleanTrue;
          v20[3] = &__kCFBooleanTrue;
          v11 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
          result = 0;
          if (SecItemCopyMatching(v11, &result) && *(a1 + 40) != -25308)
          {
            [*(a1 + 32) addObject:v11];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(__CFArray *)obj countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);
    }
  }
}

void sub_1000D3AD8(id a1)
{
  qword_10039DE20 = [[SFKeychainControlManager alloc] _init];

  _objc_release_x1();
}

uint64_t sub_1000D3B18()
{
  v0 = +[SFKeychainControlManager sharedManager];
  v1 = [v0 xpcControlEndpoint];

  return v1;
}

void sub_1000D44A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D5288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose((v47 - 176), 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D5324(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000D533C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  v5 = *(*(a1 + 64) + 8);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000D5494;
  v17[3] = &unk_100336A98;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 104);
  v24 = *(a1 + 112);
  v9 = *(a1 + 72);
  v23 = v8;
  v20 = v9;
  v16 = *(a1 + 48);
  v10 = *(&v16 + 1);
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v18 = v11;
  v19 = v16;
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  if ((sub_10001AA4C(v4, a2, (v5 + 24), v17) & 1) == 0)
  {
    if (!sub_10016379C(*(*(*(a1 + 64) + 8) + 24)))
    {
      v14 = 0;
      goto LABEL_7;
    }

    v12 = *(*(a1 + 64) + 8);
    v13 = *(v12 + 24);
    if (v13)
    {
      *(v12 + 24) = 0;
      CFRelease(v13);
    }
  }

  v14 = 1;
LABEL_7:

  return v14;
}

void sub_1000D5494(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v93 = SecCoreAnalyticsValue;
  v94 = &off_100364528;
  v6 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
  [SecCoreAnalytics sendEvent:@"com.apple.security.ckks.pkconflict" event:v6];

  v7 = kSecAttrUUID;
  if (CFDictionaryContainsKey(*(a2 + 48), kSecAttrUUID))
  {
    if (*(a1 + 104))
    {
      Value = CFDictionaryGetValue(*(*(a1 + 96) + 48), v7);
      v9 = CFDictionaryGetValue(*(a2 + 48), v7);
      v10 = [*(a1 + 48) deps];
      v11 = [v10 contextID];
      v12 = [*(a1 + 32) zoneID];
      v84 = 0;
      v13 = [CKKSMirrorEntry tryFromDatabase:v9 contextID:v11 zoneID:v12 error:&v84];
      v14 = v84;

      if (v14)
      {
        v15 = [*(a1 + 32) zoneID];
        v16 = [v15 zoneName];
        v17 = sub_100019104(@"ckksincoming", v16);

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v86 = a2;
          v87 = 2112;
          v88 = v14;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unable to fetch ckme for old item %@: %@", buf, 0x16u);
        }
      }

      v18 = CFStringCompare(Value, v9, 0);
      v76 = v13;
      if (v18 == kCFCompareGreaterThan && v13 | v14 && (sub_10001A700(a2) & 1) == 0)
      {
        v50 = [*(a1 + 32) zoneID];
        v51 = [v50 zoneName];
        v52 = sub_100019104(@"ckksincoming", v51);

        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = *(a1 + 96);
          *buf = 138413059;
          v86 = Value;
          v87 = 2113;
          v88 = v53;
          v89 = 2112;
          v90 = v9;
          v91 = 2113;
          v92 = a2;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Primary key conflict; deleting incoming CK item (%@)%{private}@ in favor of old item (%@)%{private}@", buf, 0x2Au);
        }

        v54 = *(a1 + 96);
        v55 = [*(a1 + 48) deps];
        v56 = [v55 contextID];
        v57 = [*(a1 + 32) zoneID];
        v58 = *(a1 + 56);
        v59 = *(*(a1 + 72) + 8);
        v83 = *(v59 + 40);
        v39 = [CKKSOutgoingQueueEntry withItem:v54 action:@"delete" contextID:v56 zoneID:v57 keyCache:v58 error:&v83];
        objc_storeStrong((v59 + 40), v83);

        v60 = *(*(a1 + 72) + 8);
        v82 = *(v60 + 40);
        [v39 saveToDatabase:&v82];
        objc_storeStrong((v60 + 40), v82);
        [*(a1 + 48) setNewOutgoingEntries:1];
        v61 = *(*(a1 + 80) + 8);
        v62 = *(v61 + 40);
        *(v61 + 40) = 0;

        v63 = [*(a1 + 48) deps];
        v64 = [v63 contextID];
        v65 = [*(a1 + 32) zoneID];
        v66 = *(a1 + 56);
        v67 = *(*(a1 + 72) + 8);
        v81 = *(v67 + 40);
        v68 = [CKKSOutgoingQueueEntry withItem:a2 action:@"add" contextID:v64 zoneID:v65 keyCache:v66 error:&v81];
        objc_storeStrong((v67 + 40), v81);

        v69 = *(*(a1 + 72) + 8);
        v80 = *(v69 + 40);
        [v68 saveToDatabase:&v80];
        objc_storeStrong((v69 + 40), v80);
        *(*(*(a1 + 88) + 8) + 24) = 1;
      }

      else
      {
        v19 = [*(a1 + 32) zoneID];
        v20 = [v19 zoneName];
        v21 = sub_100019104(@"ckksincoming", v20);

        v22 = v76;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v23 = &stru_100348050;
          if (!v76)
          {
            v23 = @"non-onboarded";
          }

          *buf = 138412290;
          v86 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Primary key conflict; replacing %@ with CK item", buf, 0xCu);
        }

        if (a3)
        {
          v24 = *(a1 + 96);
          if (v24)
          {
            CFRetain(*(a1 + 96));
          }

          *a3 = v24;
          v25 = CFDictionaryGetValue(*(*(a1 + 96) + 48), kSecAttrModificationDate);
          v26 = *(*(a1 + 80) + 8);
          v27 = *(v26 + 40);
          *(v26 + 40) = v25;
        }

        if (v18 == kCFCompareEqualTo)
        {
LABEL_39:
          v70 = sub_100015B5C(a2, kSecAttrPersistentReference);
          v71 = v70;
          if (a3)
          {
            if (*a3)
            {
LABEL_41:
              if (v71)
              {
                if ([(__CFData *)v71 length]== 16)
                {
                  v77 = 0;
                  sub_10001A804(*a3, v71, &v77);
                  if (v77)
                  {
                    v72 = [*(a1 + 32) zoneID];
                    v73 = [v72 zoneName];
                    v74 = sub_100019104(@"ckksincoming", v73);

                    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v86 = v77;
                      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "error setting uuid persistent ref: %@", buf, 0xCu);
                    }

                    v22 = v76;
                    v75 = v77;
                    if (v77)
                    {
                      v77 = 0;
                      CFRelease(v75);
                    }
                  }
                }
              }

              goto LABEL_53;
            }

            if (v70 && [(__CFData *)v70 length]== 16)
            {
              if (*a3)
              {
                goto LABEL_41;
              }
            }

            else
            {
              [*(a1 + 48) _onqueueGenerateNewUUIDPersistentRefOnSecItem:a2 viewState:*(a1 + 32)];
              CFRetain(a2);
              *a3 = a2;
            }
          }

LABEL_53:

          return;
        }

        if (v18 == kCFCompareLessThan)
        {
          v28 = [*(a1 + 32) zoneID];
          v29 = [v28 zoneName];
          v30 = sub_100019104(@"ckksincoming", v29);

          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v86 = v9;
            v87 = 2112;
            v88 = Value;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "UUID of olditem (%@) is higher than UUID of incoming item (%@)", buf, 0x16u);
          }
        }

        v31 = [*(a1 + 32) zoneID];
        v32 = [v31 zoneName];
        v33 = sub_100019104(@"ckksincoming", v32);

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v86 = a2;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Issuing deletion of olditem: %{private}@", buf, 0xCu);
        }

        v34 = [*(a1 + 48) deps];
        v35 = [v34 contextID];
        v36 = [*(a1 + 32) zoneID];
        v37 = *(a1 + 56);
        v38 = *(*(a1 + 72) + 8);
        obj = *(v38 + 40);
        v39 = [CKKSOutgoingQueueEntry withItem:a2 action:@"delete" contextID:v35 zoneID:v36 keyCache:v37 error:&obj];
        objc_storeStrong((v38 + 40), obj);

        v40 = *(*(a1 + 72) + 8);
        v78 = *(v40 + 40);
        [v39 saveToDatabase:&v78];
        objc_storeStrong((v40 + 40), v78);
        [*(a1 + 48) setNewOutgoingEntries:1];
      }

      v22 = v76;
      goto LABEL_39;
    }

    v46 = [*(a1 + 32) zoneID];
    v47 = [v46 zoneName];
    v48 = sub_100019104(@"ckksincoming", v47);

    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(a1 + 96);
      *buf = 138477827;
      v86 = v49;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Primary key conflict; dropping CK item (arriving from wrong view) %{private}@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v41 = [*(a1 + 32) zoneID];
    v42 = [v41 zoneName];
    v43 = sub_100019104(@"ckksincoming", v42);

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [*(a1 + 40) uuid];
      *buf = 138412290;
      v86 = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Replacing item (it doesn't have a UUID) for %@", buf, 0xCu);
    }

    if (a3)
    {
      v45 = *(a1 + 96);
      if (v45)
      {
        CFRetain(v45);
      }

      *a3 = v45;
    }
  }
}

void sub_1000D6598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D65E0(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) deps];
  v4 = [v3 contextID];
  v5 = [*(a1 + 40) zoneID];
  v35 = 0;
  v6 = [CKKSIncomingQueueEntry fetch:50 startingAtUUID:v2 state:@"mismatched_view" action:0 contextID:v4 zoneID:v5 error:&v35];
  v7 = v35;

  if (!v7)
  {
    *(*(*(a1 + 64) + 8) + 24) = [v6 count];
    v11 = [v6 count];
    v12 = [*(a1 + 40) zoneName];
    v13 = sub_100019104(@"ckksincoming", v12);

    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v14)
      {
        v15 = [v6 count];
        *buf = 134217984;
        v38 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Inspecting %lu mismatched items", buf, 0xCu);
      }

      *(*(*(a1 + 72) + 8) + 24) += [v6 count];
      if (([*(a1 + 32) intransaction:*(a1 + 40) processQueueEntries:v6] & 1) == 0)
      {
        v29 = [*(a1 + 40) zoneName];
        v30 = sub_100019104(@"ckksincoming", v29);

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "processQueueEntries didn't complete successfully", buf, 2u);
        }

        goto LABEL_5;
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v13 = v6;
      v16 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v32;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v32 != v18)
            {
              objc_enumerationMutation(v13);
            }

            v20 = *(*(&v31 + 1) + 8 * i);
            v21 = *(*(*(a1 + 48) + 8) + 40);
            v22 = [v20 uuid];
            if ([v21 compare:v22] == 1)
            {
              v23 = *(*(a1 + 48) + 8);
              v24 = *(v23 + 40);
              v25 = *(v23 + 40);
              *(v23 + 40) = v24;
            }

            else
            {
              v26 = [v20 uuid];
              v27 = *(*(a1 + 48) + 8);
              v25 = *(v27 + 40);
              *(v27 + 40) = v26;
            }
          }

          v17 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v17);
      }
    }

    else if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No mismatched view items", buf, 2u);
    }

    v10 = 1;
    goto LABEL_24;
  }

  v8 = [*(a1 + 40) zoneName];
  v9 = sub_100019104(@"ckksincoming", v8);

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Cannot fetch mismatched view items", buf, 2u);
  }

  [*(a1 + 32) setError:v7];
LABEL_5:
  v10 = 0;
  *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_24:

  return v10;
}

void sub_1000D6CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 168), 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D6CF0(uint64_t a1)
{
  if (![*(a1 + 32) isCancelled])
  {
    v5 = *(*(*(a1 + 64) + 8) + 40);
    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) deps];
    v8 = [v7 contextID];
    v9 = [*(a1 + 40) zoneID];
    v38 = 0;
    v10 = [CKKSIncomingQueueEntry fetch:50 startingAtUUID:v5 state:@"new" action:v6 contextID:v8 zoneID:v9 error:&v38];
    v11 = v38;

    if (v11)
    {
      v12 = [*(a1 + 40) zoneName];
      v13 = sub_100019104(@"ckksincoming", v12);

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error fetching incoming queue records: %@", buf, 0xCu);
      }

      [*(a1 + 32) setError:v11];
      v4 = 0;
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = [v10 count];
      *(*(*(a1 + 80) + 8) + 24) += [v10 count];
      if ([v10 count])
      {
        v14 = [*(a1 + 40) zoneID];
        v15 = [v14 zoneName];
        +[CKKSPowerCollection CKKSPowerEvent:zone:count:](CKKSPowerCollection, "CKKSPowerEvent:zone:count:", @"processIncomingQueue", v15, [v10 count]);

        if (([*(a1 + 32) intransaction:*(a1 + 40) processQueueEntries:v10] & 1) == 0)
        {
          v30 = [*(a1 + 40) zoneName];
          v31 = sub_100019104(@"ckksincoming", v30);

          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "processQueueEntries didn't complete successfully", buf, 2u);
          }

          v4 = 0;
          *(*(*(a1 + 56) + 8) + 24) = 1;
          goto LABEL_28;
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v16 = v10;
        v17 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v35;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v35 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v34 + 1) + 8 * i);
              v22 = *(*(*(a1 + 64) + 8) + 40);
              v23 = [v21 uuid];
              if ([v22 compare:v23] == 1)
              {
                v24 = *(*(a1 + 64) + 8);
                v25 = *(v24 + 40);
                v26 = *(v24 + 40);
                *(v24 + 40) = v25;
              }

              else
              {
                v27 = [v21 uuid];
                v28 = *(*(a1 + 64) + 8);
                v26 = *(v28 + 40);
                *(v28 + 40) = v27;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v18);
        }
      }

      else
      {
        v29 = [*(a1 + 40) zoneName];
        v16 = sub_100019104(@"ckksincoming", v29);

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v33 = *(a1 + 48);
          *buf = 138412290;
          v41 = v33;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Nothing in incoming queue to process (filter: %@)", buf, 0xCu);
        }
      }

      v4 = 1;
    }

LABEL_28:

    return v4;
  }

  v2 = [*(a1 + 40) zoneName];
  v3 = sub_100019104(@"ckksincoming", v2);

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CKKSIncomingQueueOperation cancelled, quitting", buf, 2u);
  }

  v4 = 0;
  *(*(*(a1 + 56) + 8) + 24) = 1;
  return v4;
}

uint64_t sub_1000D8174(uint64_t a1)
{
  v2 = [*(a1 + 32) zoneID];
  v3 = [*(a1 + 32) contextID];
  v28 = 0;
  v4 = [CKKSCurrentItemPointer remoteItemPointers:v2 contextID:v3 error:&v28];
  v5 = v28;

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = [*(a1 + 32) zoneName];
    v8 = sub_100019104(@"ckksincoming", v7);

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v5;
      v9 = "Could not load remote item pointers: %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, 0xCu);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (![*(a1 + 40) processNewCurrentItemPointers:v4 viewState:*(a1 + 32)])
  {
    v24 = 0;
    goto LABEL_23;
  }

  if ([v4 count])
  {
    v13 = [*(a1 + 32) zoneName];
    v8 = sub_100019104(@"ckksincoming", v13);

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v4 count];
      *buf = 134217984;
      v30 = v14;
      v9 = "Processed %lu items in CIP queue";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_14:
  v15 = [*(a1 + 40) deps];
  v16 = [v15 contextID];
  v17 = [*(a1 + 32) zoneName];
  v27 = 0;
  v18 = [CKKSZoneStateEntry fromDatabase:v16 zoneName:v17 error:&v27];
  v19 = v27;

  if (([v18 initialSyncFinished] & 1) == 0 && !objc_msgSend(*(a1 + 40), "errorItemsProcessed"))
  {
    [v18 setInitialSyncFinished:1];
    v26 = v19;
    [v18 saveToDatabase:&v26];
    v20 = v26;

    v19 = v20;
  }

  if (v19)
  {
    v21 = [*(a1 + 32) zoneID];
    v22 = [v21 zoneName];
    v23 = sub_100019104(@"ckksincoming", v22);

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v30 = v18;
      v31 = 2112;
      v32 = v19;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Couldn't save CKKSZoneStateEntry(%@): %@", buf, 0x16u);
    }
  }

  v24 = 1;
LABEL_23:

  return v24;
}

uint64_t sub_1000DB6B4(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 32))
  {
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v19 = *(a1 + 80);
    v20 = [v19 countByEnumeratingWithState:&v212 objects:v226 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v213;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v213 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v212 + 1) + 8 * i);
          v25 = [*(a1 + 40) zoneID];
          v26 = [v25 zoneName];
          v27 = sub_100019104(@"ckksoutgoing", v26);

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v24 recordName];
            *buf = 138412290;
            *v228 = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Record deletion successful for %@", buf, 0xCu);
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v212 objects:v226 count:16];
      }

      while (v21);
    }

    v29 = [*(a1 + 40) zoneID];
    v30 = [v29 zoneName];
    v31 = sub_100019104(@"ckksoutgoing", v30);

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [*(a1 + 88) count];
      v33 = [*(a1 + 80) count];
      *buf = 67109376;
      *v228 = v32;
      *&v228[4] = 1024;
      *&v228[6] = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Completed processing outgoing queue (%d modifications, %d deletions)", buf, 0xEu);
    }

    v190 = objc_alloc_init(CKKSPowerCollection);
    v34 = [AAFAnalyticsEventSecurity alloc];
    v224 = kSecurityRTCFieldTotalCKRecords;
    v35 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 88) count]);
    v225 = v35;
    v36 = [NSDictionary dictionaryWithObjects:&v225 forKeys:&v224 count:1];
    v37 = [*(a1 + 56) deps];
    v38 = [v37 activeAccount];
    v39 = [v38 altDSID];
    v40 = kSecurityRTCEventNameSaveCKMirrorEntries;
    v41 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    v42 = [*(a1 + 56) deps];
    v181 = [v34 initWithCKKSMetrics:v36 altDSID:v39 eventName:v40 testsAreEnabled:0 category:v41 sendMetric:{objc_msgSend(v42, "sendMetric")}];

    v43 = a1;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    obj = *(a1 + 88);
    v44 = [obj countByEnumeratingWithState:&v208 objects:v223 count:16];
    if (!v44)
    {
      v192 = 0;
      v46 = 0;
      goto LABEL_60;
    }

    v45 = v44;
    v192 = 0;
    v46 = 0;
    v188 = *v209;
    while (1)
    {
      v47 = 0;
      v184 = v45;
      do
      {
        if (*v209 != v188)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v208 + 1) + 8 * v47);
        v49 = [v48 recordType];
        v50 = [v49 isEqualToString:@"item"];

        if (v50)
        {
          v51 = [v48 recordID];
          v52 = [v51 recordName];
          v53 = [*(v43 + 56) deps];
          v54 = [v53 contextID];
          v55 = [*(a1 + 40) zoneID];
          v207 = v46;
          v56 = [CKKSOutgoingQueueEntry fromDatabase:v52 state:@"inflight" contextID:v54 zoneID:v55 error:&v207];
          v57 = v207;

          v43 = a1;
          v58 = *(a1 + 40);
          v206 = v57;
          [v56 intransactionMoveToState:@"deleted" viewState:v58 error:&v206];
          v59 = v206;

          if (v59)
          {
            v60 = [*(a1 + 40) zoneID];
            v61 = [v60 zoneName];
            v62 = sub_100019104(@"ckksoutgoing", v61);

            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              v63 = [v48 recordID];
              v64 = [v63 recordName];
              *buf = 138412546;
              *v228 = v64;
              *&v228[8] = 2112;
              v229 = v59;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Couldn't update %@ in outgoingqueue: %@", buf, 0x16u);
            }

            v65 = v59;
            [*(a1 + 56) setError:v65];
            v192 = v65;
          }

          v66 = [CKKSMirrorEntry alloc];
          v67 = [*(a1 + 56) deps];
          v68 = [v67 contextID];
          v69 = [(CKKSMirrorEntry *)v66 initWithCKRecord:v48 contextID:v68];

          v205 = 0;
          [(CKKSSQLDatabaseObject *)v69 saveToDatabase:&v205];
          v46 = v205;
          if (v46)
          {
            v70 = [*(a1 + 40) zoneID];
            v71 = [v70 zoneName];
            v72 = sub_100019104(@"ckksoutgoing", v71);

            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              v73 = [v48 recordID];
              v74 = [v73 recordName];
              *buf = 138412546;
              *v228 = v74;
              *&v228[8] = 2112;
              v229 = v46;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Couldn't save %@ to ckmirror: %@", buf, 0x16u);
            }

            v75 = v46;
            [*(a1 + 56) setError:v75];
            v192 = v75;
          }

          [(CKKSPowerCollection *)v190 storedOQE:v56];

          v45 = v184;
        }

        else
        {
          v76 = [v48 recordType];
          v77 = [v76 isEqualToString:@"currentkey"];

          if (v77)
          {
            v78 = [CKKSCurrentKeyPointer alloc];
            v79 = [*(v43 + 56) deps];
            v80 = [v79 contextID];
            v56 = [(CKKSCKRecordHolder *)v78 initWithCKRecord:v48 contextID:v80];

            v204 = v46;
            [v56 saveToDatabase:&v204];
            v81 = v204;

            if (v81)
            {
              v82 = [*(v43 + 40) zoneID];
              v83 = [v82 zoneName];
              v84 = sub_100019104(@"ckksoutgoing", v83);

              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                v85 = [v48 recordID];
                v86 = [v85 recordName];
                *buf = 138412546;
                *v228 = v86;
                *&v228[8] = 2112;
                v229 = v81;
                v87 = v84;
                v88 = "Couldn't save %@ to currentkey: %@";
                goto LABEL_43;
              }

              goto LABEL_44;
            }

LABEL_45:
            v46 = 0;
            goto LABEL_48;
          }

          v89 = [v48 recordType];
          v90 = [v89 isEqualToString:@"devicestate"];

          if (v90)
          {
            v91 = [CKKSDeviceStateEntry alloc];
            v92 = [*(v43 + 56) deps];
            v93 = [v92 contextID];
            v56 = [(CKKSCKRecordHolder *)v91 initWithCKRecord:v48 contextID:v93];

            v203 = v46;
            [v56 saveToDatabase:&v203];
            v81 = v203;

            if (v81)
            {
              v94 = [*(v43 + 40) zoneID];
              v95 = [v94 zoneName];
              v84 = sub_100019104(@"ckksoutgoing", v95);

              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
                v85 = [v48 recordID];
                v86 = [v85 recordName];
                *buf = 138412546;
                *v228 = v86;
                *&v228[8] = 2112;
                v229 = v81;
                v87 = v84;
                v88 = "Couldn't save %@ to ckdevicestate: %@";
LABEL_43:
                _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, v88, buf, 0x16u);
              }

LABEL_44:

              v46 = v81;
              [*(v43 + 56) setError:v46];
              v192 = v46;
              goto LABEL_48;
            }

            goto LABEL_45;
          }

          v96 = [*(v43 + 40) zoneID];
          v97 = [v96 zoneName];
          v56 = sub_100019104(@"ckksoutgoing", v97);

          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v228 = v48;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "unknown record type in results: %@", buf, 0xCu);
          }
        }

LABEL_48:

        v47 = v47 + 1;
      }

      while (v45 != v47);
      v45 = [obj countByEnumeratingWithState:&v208 objects:v223 count:16];
      if (!v45)
      {
LABEL_60:

        v201 = 0u;
        v202 = 0u;
        v199 = 0u;
        v200 = 0u;
        v182 = *(v43 + 80);
        v189 = [v182 countByEnumeratingWithState:&v199 objects:v222 count:16];
        v106 = 0;
        if (v189)
        {
          obja = *v200;
          do
          {
            for (j = 0; j != v189; j = j + 1)
            {
              if (*v200 != obja)
              {
                objc_enumerationMutation(v182);
              }

              v108 = *(*(&v199 + 1) + 8 * j);
              v109 = [v108 recordName];
              v110 = [*(v43 + 56) deps];
              v111 = [v110 contextID];
              v112 = [*(a1 + 40) zoneID];
              v198 = v106;
              v113 = [CKKSOutgoingQueueEntry fromDatabase:v109 state:@"inflight" contextID:v111 zoneID:v112 error:&v198];
              v114 = v198;

              v115 = a1;
              v116 = *(a1 + 40);
              v197 = v114;
              [v113 intransactionMoveToState:@"deleted" viewState:v116 error:&v197];
              v117 = v197;

              if (v117)
              {
                v118 = [*(a1 + 40) zoneID];
                v119 = [v118 zoneName];
                v120 = sub_100019104(@"ckksoutgoing", v119);

                if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
                {
                  v121 = [v108 recordName];
                  *buf = 138412546;
                  *v228 = v121;
                  *&v228[8] = 2112;
                  v229 = v117;
                  _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_ERROR, "Couldn't delete %@ from outgoingqueue: %@", buf, 0x16u);
                }

                v122 = v117;
                v115 = a1;
                [*(a1 + 56) setError:v122];
                v192 = v122;
              }

              v123 = [v108 recordName];
              v124 = [*(v115 + 56) deps];
              v125 = [v124 contextID];
              v126 = [*(v115 + 40) zoneID];
              v196 = 0;
              v127 = [CKKSMirrorEntry tryFromDatabase:v123 contextID:v125 zoneID:v126 error:&v196];
              v128 = v196;

              v195 = v128;
              [v127 deleteFromDatabase:&v195];
              v106 = v195;

              if (v106)
              {
                v129 = [*(v115 + 40) zoneID];
                v130 = [v129 zoneName];
                v131 = sub_100019104(@"ckksoutgoing", v130);

                if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                {
                  v132 = [v108 recordName];
                  *buf = 138412546;
                  *v228 = v132;
                  *&v228[8] = 2112;
                  v229 = v106;
                  _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "Couldn't delete %@ from ckmirror: %@", buf, 0x16u);
                }

                v133 = v106;
                v43 = a1;
                [*(a1 + 56) setError:v133];
                v192 = v133;
              }

              else
              {
                v43 = v115;
              }

              [(CKKSPowerCollection *)v190 deletedOQE:v113];
            }

            v189 = [v182 countByEnumeratingWithState:&v199 objects:v222 count:16];
          }

          while (v189);
        }

        v134 = [*(v43 + 56) error];
        v135 = [*(v43 + 56) error];
        [v181 sendMetricWithResult:v134 == 0 error:v135];

        [(CKKSPowerCollection *)v190 commit];
        v136 = [*(v43 + 56) deps];
        v137 = [v136 overallLaunch];
        [v137 addEvent:@"process-outgoing-queue-complete"];

        if (v192)
        {
          v138 = [*(v43 + 40) zoneID];
          v139 = [v138 zoneName];
          v140 = sub_100019104(@"ckksoutgoing", v139);

          if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
          {
            v141 = [*(v43 + 56) error];
            *buf = 138412290;
            *v228 = v141;
            _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "Operation failed; rolling back: %@", buf, 0xCu);
          }

          v142 = *(v43 + 48);
          v143 = [*(v43 + 56) error];
          v144 = [*(v43 + 40) zoneID];
          v145 = [v144 zoneName];
          [v142 logRecoverableError:v143 forEvent:@"CKKSEventProcessOutgoingQueue" zoneName:v145 withAttributes:0];

          v146 = 0;
        }

        else
        {
          v147 = *(v43 + 48);
          v143 = [*(v43 + 40) zoneID];
          v144 = [v143 zoneName];
          [v147 logSuccessForEvent:@"CKKSEventProcessOutgoingQueue" zoneName:v144];
          v146 = 1;
        }

        return v146;
      }
    }
  }

  v2 = [*(a1 + 40) zoneID];
  v3 = [v2 zoneName];
  v4 = sub_100019104(@"ckksoutgoing", v3);

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(v1 + 32);
    *buf = 138412290;
    *v228 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "error processing outgoing queue: %@", buf, 0xCu);
  }

  v6 = *(v1 + 48);
  v7 = *(v1 + 32);
  v8 = [*(v1 + 40) zoneID];
  v9 = [v8 zoneName];
  [v6 logRecoverableError:v7 forEvent:@"CKKSEventProcessOutgoingQueue" zoneName:v9 withAttributes:0];

  v10 = [*(v1 + 56) deps];
  [v10 intransactionCKWriteFailed:*(v1 + 32) attemptedRecordsChanged:*(v1 + 64)];

  v11 = [*(v1 + 32) domain];
  if ([v11 isEqualToString:CKErrorDomain])
  {
    v12 = [*(v1 + 32) code];

    if (v12 == 2)
    {
      v13 = [*(v1 + 32) userInfo];
      v14 = [v13 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      if ([*(v1 + 56) intransactionIsErrorBadEtagOnKeyPointersOnly:*(v1 + 32)])
      {
        v15 = [*(v1 + 40) zoneID];
        v16 = [v15 zoneName];
        v17 = sub_100019104(@"ckksoutgoing", v16);

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v18 = "Error is simply due to current key pointers changing; marking all records as 'needs reencrypt'";
LABEL_85:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
          goto LABEL_86;
        }

        goto LABEL_86;
      }

      if ([*(v1 + 56) _onqueueIsErrorMissingSyncKey:*(v1 + 32)])
      {
        v148 = [*(v1 + 40) zoneID];
        v149 = [v148 zoneName];
        v17 = sub_100019104(@"ckksoutgoing", v149);

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v18 = "Error is due to the key records missing. Marking all as 'needs reencrypt'";
          goto LABEL_85;
        }

LABEL_86:

        v150 = *(v1 + 56);
        v151 = [v14 allKeys];
        [v150 _onqueueModifyAllRecords:v151 as:@"reencrypt" viewState:*(v1 + 40)];

        goto LABEL_87;
      }

      v220 = 0u;
      v221 = 0u;
      v218 = 0u;
      v219 = 0u;
      v104 = v14;
      v193 = [v104 countByEnumeratingWithState:&v218 objects:v230 count:16];
      if (!v193)
      {
        goto LABEL_88;
      }

      v183 = v14;
      objb = 0;
      v191 = *v219;
LABEL_93:
      v154 = 0;
      while (1)
      {
        if (*v219 != v191)
        {
          objc_enumerationMutation(v104);
        }

        v155 = *(*(&v218 + 1) + 8 * v154);
        v156 = [v104 objectForKeyedSubscript:v155];
        v157 = [*(v1 + 40) zoneID];
        v158 = [v157 zoneName];
        v159 = sub_100019104(@"ckksoutgoing", v158);

        if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v228 = v155;
          *&v228[8] = 2112;
          v229 = v156;
          _os_log_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEFAULT, "failed record: %@ %@", buf, 0x16u);
        }

        v160 = [v156 domain];
        if (![v160 isEqualToString:CKErrorDomain])
        {
          break;
        }

        v161 = [v156 code];

        if (v161 != 14)
        {
          goto LABEL_103;
        }

        v162 = [v155 recordName];
        if ([v162 isEqualToString:@"classA"])
        {
        }

        else
        {
          v179 = [v155 recordName];
          v180 = [v179 isEqualToString:@"classC"];

          if ((v180 & 1) == 0)
          {
            goto LABEL_115;
          }
        }

        objb = 1;
LABEL_119:

        if (v193 == ++v154)
        {
          v193 = [v104 countByEnumeratingWithState:&v218 objects:v230 count:16];
          if (!v193)
          {

            v14 = v183;
            if ((objb & 1) == 0)
            {
              goto LABEL_89;
            }

LABEL_87:
            v104 = [*(v1 + 56) deps];
            v152 = [v104 flagHandler];
            [v152 _onqueueHandleFlag:@"item_reencryption_needed"];

LABEL_88:
            v104 = v14;
            goto LABEL_89;
          }

          goto LABEL_93;
        }
      }

LABEL_103:
      v163 = [v156 domain];
      if ([v163 isEqualToString:CKErrorDomain])
      {
        v164 = [v156 code];

        if (v164 == 22)
        {
          if ([*(v1 + 72) containsObject:v155])
          {
            v165 = [v155 recordName];
            v166 = [*(v1 + 56) deps];
            v167 = [v166 contextID];
            v168 = [v155 zoneID];
            v217 = 0;
            v169 = [CKKSOutgoingQueueEntry tryFromDatabase:v165 state:@"inflight" contextID:v167 zoneID:v168 error:&v217];
            v170 = v217;

            v1 = a1;
            v171 = *(a1 + 40);
            v216 = v170;
            [v169 intransactionMoveToState:@"new" viewState:v171 error:&v216];
            v172 = v216;

            if (v172)
            {
              v173 = [*(a1 + 40) zoneID];
              v174 = [v173 zoneName];
              v175 = sub_100019104(@"ckksoutgoing", v174);

              if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v228 = v172;
                _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_ERROR, "Couldn't clean up outgoing queue entry: %@", buf, 0xCu);
              }

              v1 = a1;
            }
          }

          goto LABEL_119;
        }
      }

      else
      {
      }

      v176 = [*(v1 + 40) zoneID];
      v177 = [v176 zoneName];
      v178 = sub_100019104(@"ckksoutgoing", v177);

      if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *v228 = v155;
        *&v228[8] = 2112;
        v229 = v156;
        _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_ERROR, "Unknown error on row: %@ %@", buf, 0x16u);
      }

      v1 = a1;
LABEL_115:
      if ([*(v1 + 72) containsObject:v155])
      {
        [*(v1 + 56) _onqueueModifyRecordAsError:v155 recordError:v156 viewState:*(v1 + 40)];
      }

      goto LABEL_119;
    }
  }

  else
  {
  }

  v98 = [*(v1 + 32) isCKInternalServerHTTPError];
  v99 = [*(v1 + 40) zoneID];
  v100 = [v99 zoneName];
  v101 = sub_100019104(@"ckks", v100);

  v102 = os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT);
  if (v98)
  {
    if (v102)
    {
      *buf = 67109120;
      *v228 = 1800;
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "CloudKit is presumably down; scheduling upload after %d seconds", buf, 8u);
    }

    v103 = *(v1 + 56);
    v104 = [*(v1 + 72) allObjects];
    [v103 _onqueueSaveRecordsWithDelay:v104 viewState:*(v1 + 40)];
  }

  else
  {
    if (v102)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Error is scary: putting all inflight OQEs back into state 'new'", buf, 2u);
    }

    v105 = *(v1 + 56);
    v104 = [*(v1 + 72) allObjects];
    [v105 _onqueueModifyAllRecords:v104 as:@"new" viewState:*(v1 + 40)];
  }

LABEL_89:

  [*(v1 + 56) setError:*(v1 + 32)];
  return 1;
}

void sub_1000DD4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a51);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a68, 8);
  objc_destroyWeak((v68 - 248));
  _Unwind_Resume(a1);
}

void sub_1000DD560(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = sub_100019104(@"ckksoutgoing", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained error];
    v5 = v4;
    v6 = @"no error";
    if (v4)
    {
      v6 = v4;
    }

    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished processing the outgoing queue: %@", buf, 0xCu);
  }

  v17[0] = kSecurityRTCFieldItemsToAdd;
  v7 = *(a1 + 32);
  v8 = [NSNumber numberWithInt:*(*(*(a1 + 40) + 8) + 24), kSecurityRTCFieldItemsToAdd];
  v18[0] = v8;
  v17[1] = kSecurityRTCFieldItemsToDelete;
  v9 = [NSNumber numberWithInt:*(*(*(a1 + 48) + 8) + 24)];
  v18[1] = v9;
  v17[2] = kSecurityRTCFieldItemsToModify;
  v10 = [NSNumber numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
  v18[2] = v10;
  v17[3] = kSecurityRTCFieldErrorItemsProcessed;
  v11 = [NSNumber numberWithInt:*(*(*(a1 + 64) + 8) + 24)];
  v18[3] = v11;
  v17[4] = kSecurityRTCFieldSuccessfulItemsProcessed;
  v12 = [NSNumber numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  v18[4] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
  [v7 addMetrics:v13];

  v14 = [WeakRetained error];

  v15 = *(a1 + 32);
  if (v14)
  {
    v16 = [WeakRetained error];
    [v15 sendMetricWithResult:0 error:v16];
  }

  else
  {
    [v15 sendMetricWithResult:1 error:0];
  }
}

uint64_t sub_1000DD7F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) deps];
  v3 = [v2 contextID];
  v272 = 0;
  v211 = [CKKSOutgoingQueueOperation ontransactionFetchEntries:v1 contextID:v3 error:&v272];
  v4 = v272;

  if (!v211 || v4)
  {
    v22 = [*(a1 + 32) zoneID];
    v23 = [v22 zoneName];
    v24 = sub_100019104(@"ckksoutgoing", v23);

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v279 = v4;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error fetching outgoing queue records: %@", buf, 0xCu);
    }

    [*(a1 + 40) setError:v4];
    v21 = 0;
    goto LABEL_129;
  }

  v210 = [v211 count];
  v5 = *(a1 + 48);
  v209 = kSecurityRTCFieldIsFullUpload;
  v285 = kSecurityRTCFieldIsFullUpload;
  v6 = [NSNumber numberWithBool:?];
  v286 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v286 forKeys:&v285 count:1];
  [v5 addMetrics:v7];

  v8 = [*(a1 + 32) zoneID];
  v9 = [v8 zoneName];
  +[CKKSPowerCollection CKKSPowerEvent:zone:count:](CKKSPowerCollection, "CKKSPowerEvent:zone:count:", @"processOutgoingQueue", v9, [v211 count]);

  v10 = [*(a1 + 32) zoneID];
  v11 = [v10 zoneName];
  v12 = sub_100019104(@"ckksoutgoing", v11);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v279 = v211;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "processing outgoing queue: %@", buf, 0xCu);
  }

  v230 = objc_alloc_init(NSMutableDictionary);
  v222 = objc_alloc_init(NSMutableSet);
  v221 = objc_alloc_init(NSMutableSet);
  v215 = objc_alloc_init(NSMutableArray);
  v13 = [*(a1 + 32) contextID];
  v14 = [*(a1 + 32) zoneID];
  v271 = 0;
  v223 = [CKKSCurrentKeyPointer fromDatabase:@"classA" contextID:v13 zoneID:v14 error:&v271];
  v15 = v271;

  v16 = [*(a1 + 32) contextID];
  v17 = [*(a1 + 32) zoneID];
  v270 = v15;
  v220 = [CKKSCurrentKeyPointer fromDatabase:@"classC" contextID:v16 zoneID:v17 error:&v270];
  v4 = v270;

  v219 = objc_alloc_init(NSMutableDictionary);
  if (v4)
  {
    v18 = [*(a1 + 32) zoneID];
    v19 = [v18 zoneName];
    v20 = sub_100019104(@"ckksoutgoing", v19);

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v279 = v4;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Couldn't load current class keys: %@", buf, 0xCu);
    }

    [*(a1 + 40) setError:v4];
    v21 = 0;
    goto LABEL_128;
  }

  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  obj = v211;
  v228 = [obj countByEnumeratingWithState:&v266 objects:v284 count:16];
  if (!v228)
  {
    v4 = 0;
    v121 = 0;
    goto LABEL_72;
  }

  v212 = 0;
  v4 = 0;
  v226 = *v267;
  do
  {
    for (i = 0; i != v228; i = i + 1)
    {
      if (*v267 != v226)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v266 + 1) + 8 * i);
      context = objc_autoreleasePoolPush();
      v27 = [v26 uuid];
      v28 = [*(a1 + 40) deps];
      v29 = [v28 contextID];
      v30 = [*(a1 + 32) zoneID];
      v265 = v4;
      v31 = [CKKSOutgoingQueueEntry tryFromDatabase:v27 state:@"inflight" contextID:v29 zoneID:v30 error:&v265];
      v32 = v265;

      if (!v32 && v31)
      {
        v4 = 0;
        goto LABEL_65;
      }

      v33 = [v26 action];
      v34 = [v33 isEqualToString:@"delete"];

      if ((v34 & 1) == 0)
      {
        v35 = [v26 item];
        v36 = [v35 parentKeyUUID];
        v37 = [v223 currentKeyUUID];
        v38 = [v36 isEqualToString:v37];

        if (v38)
        {
          [v219 setObject:v223 forKeyedSubscript:@"classA"];
        }

        else
        {
          v39 = [v26 item];
          v40 = [v39 parentKeyUUID];
          v41 = [v220 currentKeyUUID];
          v42 = [v40 isEqualToString:v41];

          if (!v42)
          {
            v88 = [*(a1 + 32) zoneID];
            v89 = [v88 zoneName];
            v90 = sub_100019104(@"ckksoutgoing", v89);

            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              v91 = [v26 item];
              v92 = [v91 parentKeyUUID];
              *buf = 138413058;
              *v279 = v26;
              *&v279[8] = 2112;
              *&v279[10] = v92;
              v280 = 2112;
              v281 = v223;
              v282 = 2112;
              v283 = v220;
              _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Item's encryption key (%@ %@) is neither %@ or %@", buf, 0x2Au);
            }

            v93 = *(a1 + 32);
            v264 = v32;
            [v26 intransactionMoveToState:@"reencrypt" viewState:v93 error:&v264];
            v47 = v264;

            if (!v47)
            {
              v4 = 0;
              v212 = 1;
              goto LABEL_65;
            }

            v94 = [*(a1 + 32) zoneID];
            v95 = [v94 zoneName];
            v96 = sub_100019104(@"ckksoutgoing", v95);

            if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v279 = v47;
              _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "couldn't save oqe to database: %@", buf, 0xCu);
            }

            [*(a1 + 40) setError:v47];
            goto LABEL_48;
          }

          [v219 setObject:v220 forKeyedSubscript:@"classC"];
        }
      }

      v43 = [v26 action];
      v44 = [v43 isEqualToString:@"add"];

      if (v44)
      {
        v45 = [v26 item];
        v46 = [*(a1 + 32) zoneID];
        v47 = [v45 CKRecordWithZoneID:v46];

        v48 = [v47 recordID];
        [v230 setObject:v47 forKeyedSubscript:v48];

        v49 = [v47 recordID];
        [v222 addObject:v49];

        [v221 addObject:v26];
        v50 = *(a1 + 32);
        v263 = v32;
        [v26 intransactionMoveToState:@"inflight" viewState:v50 error:&v263];
        v4 = v263;

        if (v4)
        {
          v51 = [*(a1 + 32) zoneID];
          v52 = [v51 zoneName];
          v53 = sub_100019104(@"ckksoutgoing", v52);

          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v279 = v4;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "couldn't save state for CKKSOutgoingQueueEntry: %@", buf, 0xCu);
          }

          [*(a1 + 40) setError:v4];
        }

        goto LABEL_64;
      }

      v54 = [v26 action];
      v55 = [v54 isEqualToString:@"delete"];

      if (v55)
      {
        v56 = [CKRecordID alloc];
        v57 = [v26 item];
        v58 = [v57 uuid];
        v59 = [*(a1 + 32) zoneID];
        v47 = [v56 initWithRecordName:v58 zoneID:v59];

        [v215 addObject:v47];
        [v222 addObject:v47];
        [v221 addObject:v26];
        v60 = *(a1 + 32);
        v262 = v32;
        [v26 intransactionMoveToState:@"inflight" viewState:v60 error:&v262];
        v4 = v262;

        if (v4)
        {
          v61 = [*(a1 + 32) zoneID];
          v62 = [v61 zoneName];
          v63 = sub_100019104(@"ckksoutgoing", v62);

          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v279 = v4;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "couldn't save state for CKKSOutgoingQueueEntry: %@", buf, 0xCu);
          }
        }

        goto LABEL_64;
      }

      v64 = [v26 action];
      v65 = [v64 isEqualToString:@"modify"];

      if (!v65)
      {
        v4 = v32;
        goto LABEL_65;
      }

      v66 = [v26 item];
      v67 = [v66 uuid];
      v68 = [*(a1 + 40) deps];
      v69 = [v68 contextID];
      v70 = [*(a1 + 32) zoneID];
      v261 = v32;
      v47 = [CKKSMirrorEntry tryFromDatabase:v67 contextID:v69 zoneID:v70 error:&v261];
      v217 = v261;

      if (!v47)
      {
        v97 = [*(a1 + 32) zoneID];
        v98 = [v97 zoneName];
        v99 = sub_100019104(@"ckksoutgoing", v98);

        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          v100 = [v26 item];
          v101 = [v100 uuid];
          *buf = 138412290;
          *v279 = v101;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "update to a record that doesn't exist? %@", buf, 0xCu);
        }

        v102 = [v26 item];
        v103 = [*(a1 + 32) zoneID];
        v81 = [v102 CKRecordWithZoneID:v103];

        v104 = [v81 recordID];
        [v230 setObject:v81 forKeyedSubscript:v104];

        v105 = [v81 recordID];
        [v222 addObject:v105];

        [v221 addObject:v26];
        v106 = *(a1 + 32);
        v260 = v217;
        [v26 intransactionMoveToState:@"inflight" viewState:v106 error:&v260];
        v4 = v260;

        if (v4)
        {
          v107 = [*(a1 + 32) zoneID];
          v108 = [v107 zoneName];
          v109 = sub_100019104(@"ckksoutgoing", v108);

          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v279 = v4;
            _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "couldn't save state for CKKSOutgoingQueueEntry: %@", buf, 0xCu);
          }

          [*(a1 + 40) setError:v4];
        }

        goto LABEL_63;
      }

      v213 = [v26 item];
      v71 = [v213 storedCKRecord];
      v72 = [v71 recordChangeTag];
      v73 = [v47 item];
      v74 = [v73 storedCKRecord];
      v75 = [v74 recordChangeTag];
      v76 = [v72 isEqual:v75];

      if (v76)
      {
        v77 = [v26 item];
        v78 = [v47 item];
        v79 = [v78 storedCKRecord];
        v80 = [*(a1 + 32) zoneID];
        v81 = [v77 updateCKRecord:v79 zoneID:v80];

        v82 = [v81 recordID];
        [v230 setObject:v81 forKeyedSubscript:v82];

        v83 = [v81 recordID];
        [v222 addObject:v83];

        [v221 addObject:v26];
        v84 = *(a1 + 32);
        v258 = v217;
        [v26 intransactionMoveToState:@"inflight" viewState:v84 error:&v258];
        v4 = v258;

        if (v4)
        {
          v85 = [*(a1 + 32) zoneID];
          v86 = [v85 zoneName];
          v87 = sub_100019104(@"ckksoutgoing", v86);

          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v279 = v4;
            _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "couldn't save state for CKKSOutgoingQueueEntry: %@", buf, 0xCu);
          }
        }

LABEL_63:

        goto LABEL_64;
      }

      v110 = [*(a1 + 32) zoneID];
      v111 = [v110 zoneName];
      v112 = sub_100019104(@"ckksoutgoing", v111);

      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v279 = v26;
        _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Record (%@)'s change tag doesn't match ckmirror's change tag, reencrypting", buf, 0xCu);
      }

      v113 = *(a1 + 32);
      v259 = v217;
      [v26 intransactionMoveToState:@"reencrypt" viewState:v113 error:&v259];
      v81 = v259;

      if (v81)
      {
        v114 = [*(a1 + 32) zoneID];
        v115 = [v114 zoneName];
        v116 = sub_100019104(@"ckksoutgoing", v115);

        if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v279 = v81;
          _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "couldn't save oqe to database: %@", buf, 0xCu);
        }

        [*(a1 + 40) setError:v81];
        v4 = 0;
        v212 = 1;
        goto LABEL_63;
      }

LABEL_48:
      v4 = 0;
      v212 = 1;
LABEL_64:

LABEL_65:
      objc_autoreleasePoolPop(context);
    }

    v228 = [obj countByEnumeratingWithState:&v266 objects:v284 count:16];
  }

  while (v228);

  if (v212)
  {
    v117 = [*(a1 + 32) zoneID];
    v118 = [v117 zoneName];
    v119 = sub_100019104(@"ckksoutgoing", v118);

    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "An item needs reencryption!", buf, 2u);
    }

    obj = [*(a1 + 40) deps];
    v120 = [obj flagHandler];
    [v120 _onqueueHandleFlag:@"item_reencryption_needed"];

    v121 = 1;
LABEL_72:
  }

  else
  {
    v121 = 0;
  }

  if ([v230 count] || objc_msgSend(v215, "count"))
  {
    [*(a1 + 40) setItemsProcessed:{objc_msgSend(v230, "count")}];
    v122 = [*(a1 + 32) zoneID];
    v123 = [v122 zoneName];
    v124 = sub_100019104(@"ckksoutgoing", v123);

    if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v279 = v219;
      _os_log_debug_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEBUG, "Current keys to update: %@", buf, 0xCu);
    }

    v256 = 0u;
    v257 = 0u;
    v254 = 0u;
    v255 = 0u;
    v125 = [v219 allValues];
    v126 = [v125 countByEnumeratingWithState:&v254 objects:v277 count:16];
    if (v126)
    {
      v127 = *v255;
      do
      {
        for (j = 0; j != v126; j = j + 1)
        {
          if (*v255 != v127)
          {
            objc_enumerationMutation(v125);
          }

          v129 = *(*(&v254 + 1) + 8 * j);
          v130 = [*(a1 + 32) zoneID];
          v131 = [v129 CKRecordWithZoneID:v130];

          v132 = [v131 recordID];
          [v230 setObject:v131 forKeyedSubscript:v132];
        }

        v126 = [v125 countByEnumeratingWithState:&v254 objects:v277 count:16];
      }

      while (v126);
    }

    v133 = *(a1 + 32);
    v134 = [*(a1 + 40) deps];
    v135 = [v134 accountStateTracker];
    v136 = [*(a1 + 40) deps];
    v137 = [v136 lockStateTracker];
    v253 = 0;
    v218 = [CKKSDeviceStateEntry intransactionCreateDeviceStateForView:v133 accountTracker:v135 lockStateTracker:v137 error:&v253];
    obja = v253;

    v138 = [*(a1 + 32) zoneID];
    v216 = [v218 CKRecordWithZoneID:v138];

    if (obja)
    {
      v139 = [*(a1 + 32) zoneID];
      v140 = [v139 zoneName];
      v141 = sub_100019104(@"ckksoutgoing", v140);

      if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v279 = obja;
        v142 = "Can't make current device state: %@";
        v143 = v141;
        v144 = 12;
        goto LABEL_88;
      }
    }

    else
    {
      v145 = [*(a1 + 32) zoneID];
      v146 = [v145 zoneName];
      v141 = sub_100019104(@"ckksoutgoing", v146);

      if (v216)
      {
        if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v279 = v218;
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "Updating device state: %@", buf, 0xCu);
        }

        v141 = [v216 recordID];
        [v230 setObject:v216 forKeyedSubscript:v141];
      }

      else if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v142 = "Can't make current device state cloudkit record, but no reason why";
        v143 = v141;
        v144 = 2;
LABEL_88:
        _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, v142, buf, v144);
      }
    }

    v157 = [*(a1 + 32) zoneID];
    v158 = [v157 zoneName];
    v159 = sub_100019104(@"ckksoutgoing", v158);

    if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
    {
      v206 = [*(a1 + 32) zoneID];
      *buf = 138412546;
      *v279 = v230;
      *&v279[8] = 2112;
      *&v279[10] = v206;
      _os_log_debug_impl(&_mh_execute_header, v159, OS_LOG_TYPE_DEBUG, "Saving records %@ to CloudKit zone %@", buf, 0x16u);
    }

    v160 = [AAFAnalyticsEventSecurity alloc];
    v275[0] = kSecurityRTCFieldNeedsReencryption;
    v161 = [NSNumber numberWithBool:v121];
    v276[0] = v161;
    v275[1] = v209;
    v162 = [NSNumber numberWithBool:v210 > 0x63];
    v276[1] = v162;
    v163 = [NSDictionary dictionaryWithObjects:v276 forKeys:v275 count:2];
    v164 = [*(a1 + 40) deps];
    v165 = [v164 activeAccount];
    v166 = [v165 altDSID];
    v167 = [*(a1 + 40) deps];
    v168 = [v167 sendMetric];
    v214 = [v160 initWithCKKSMetrics:v163 altDSID:v166 eventName:kSecurityRTCEventNameUploadOQEsToCK testsAreEnabled:0 category:kSecurityRTCEventCategoryAccountDataAccessRecovery sendMetric:v168];

    v227 = objc_alloc_init(NSBlockOperation);
    [v227 setName:@"modifyRecordsComplete"];
    [*(a1 + 40) dependOnBeforeGroupFinished:v227];
    v169 = [CKModifyRecordsOperation alloc];
    v170 = [v230 allValues];
    v229 = [v169 initWithRecordsToSave:v170 recordIDsToDelete:v215];

    [v229 setAtomic:1];
    [v229 linearDependencies:*(a1 + 56)];
    v171 = [v229 configuration];
    [v171 setIsCloudKitSupportOperation:1];

    [v229 setSavePolicy:0];
    v172 = [*(a1 + 40) deps];
    v173 = [v172 currentOutgoingQueueOperationGroup];
    [v229 setGroup:v173];

    v174 = [*(a1 + 32) zoneID];
    v175 = [v174 zoneName];
    v176 = sub_100019104(@"ckksoutgoing", v175);

    if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
    {
      v177 = [v229 qualityOfService];
      v178 = [v229 group];
      *buf = 67109378;
      *v279 = v177;
      *&v279[4] = 2112;
      *&v279[6] = v178;
      _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "QoS: %d; operation group is %@", buf, 0x12u);
    }

    v179 = [*(a1 + 32) zoneID];
    v180 = [v179 zoneName];
    v181 = sub_100019104(@"ckksoutgoing", v180);

    if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
    {
      v182 = [v230 count];
      v183 = [v215 count];
      *buf = 67109376;
      *v279 = v182;
      *&v279[4] = 1024;
      *&v279[6] = v183;
      _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "Beginning upload for %d records, deleting %d records", buf, 0xEu);
    }

    v251 = 0u;
    v252 = 0u;
    v249 = 0u;
    v250 = 0u;
    v184 = [v230 allKeys];
    v185 = [v184 countByEnumeratingWithState:&v249 objects:v274 count:16];
    if (v185)
    {
      v186 = *v250;
      do
      {
        for (k = 0; k != v185; k = k + 1)
        {
          if (*v250 != v186)
          {
            objc_enumerationMutation(v184);
          }

          v188 = *(*(&v249 + 1) + 8 * k);
          v189 = [v188 zoneID];
          v190 = [v189 zoneName];
          v191 = sub_100019104(@"ckksoutgoing", v190);

          if (os_log_type_enabled(v191, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v279 = v188;
            _os_log_debug_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEBUG, "Record to save: %@", buf, 0xCu);
          }
        }

        v185 = [v184 countByEnumeratingWithState:&v249 objects:v274 count:16];
      }

      while (v185);
    }

    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v192 = v215;
    v193 = [v192 countByEnumeratingWithState:&v245 objects:v273 count:16];
    if (v193)
    {
      v194 = *v246;
      do
      {
        for (m = 0; m != v193; m = m + 1)
        {
          if (*v246 != v194)
          {
            objc_enumerationMutation(v192);
          }

          v196 = *(*(&v245 + 1) + 8 * m);
          v197 = [v196 zoneID];
          v198 = [v197 zoneName];
          v199 = sub_100019104(@"ckksoutgoing", v198);

          if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v279 = v196;
            _os_log_debug_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEBUG, "Record to delete: %@", buf, 0xCu);
          }
        }

        v193 = [v192 countByEnumeratingWithState:&v245 objects:v273 count:16];
      }

      while (v193);
    }

    v243[0] = _NSConcreteStackBlock;
    v243[1] = 3221225472;
    v243[2] = sub_1000DF918;
    v243[3] = &unk_100336B38;
    v244 = *(a1 + 64);
    [v229 setPerRecordSaveBlock:v243];
    v233[0] = _NSConcreteStackBlock;
    v233[1] = 3221225472;
    v233[2] = sub_1000DFB1C;
    v233[3] = &unk_100336B60;
    objc_copyWeak(&v241, (a1 + 104));
    v233[4] = *(a1 + 32);
    v242 = v210 > 0x63;
    v234 = v230;
    v235 = v192;
    v236 = v222;
    v200 = v227;
    v237 = v200;
    v201 = v214;
    v238 = v201;
    v239 = *(a1 + 80);
    v240 = *(a1 + 96);
    [v229 setModifyRecordsCompletionBlock:v233];
    v202 = [*(a1 + 40) finishedOp];
    [v202 addDependency:v229];

    [*(a1 + 40) dependOnBeforeGroupFinished:v229];
    v203 = [*(a1 + 40) deps];
    v204 = [v203 ckdatabase];
    [v204 addOperation:v229];

    objc_destroyWeak(&v241);
  }

  else
  {
    v147 = [*(a1 + 32) zoneID];
    v148 = [v147 zoneName];
    v149 = sub_100019104(@"ckksoutgoing", v148);

    if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEBUG, "Nothing in outgoing queue to process", buf, 2u);
    }

    v150 = [*(a1 + 40) deps];
    v151 = [v150 currentOutgoingQueueOperationGroup];

    if (v151)
    {
      v152 = [*(a1 + 32) zoneID];
      v153 = [v152 zoneName];
      v154 = sub_100019104(@"ckksoutgoing", v153);

      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
      {
        v207 = [*(a1 + 40) deps];
        v208 = [v207 currentOutgoingQueueOperationGroup];
        *buf = 138412290;
        *v279 = v208;
        _os_log_debug_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEBUG, "End of operation group: %@", buf, 0xCu);
      }

      v155 = [*(a1 + 40) deps];
      [v155 setCurrentOutgoingQueueOperationGroup:0];
    }

    v156 = [*(a1 + 40) intendedState];
    [*(a1 + 40) setNextState:v156];
  }

  v21 = 1;
LABEL_128:

LABEL_129:
  return v21;
}

void sub_1000DF918(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v10 = [v7 zoneID];
    v11 = [v10 zoneName];
    v12 = sub_100019104(@"ckksoutgoing", v11);

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "error on row: %@ %@", &v17, 0x16u);
    }
  }

  else
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    v13 = [v7 zoneID];
    v14 = [v13 zoneName];
    v12 = sub_100019104(@"ckksoutgoing", v14);

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v7 recordName];
      v16 = [v8 recordChangeTag];
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Record upload successful for %@ (%@)", &v17, 0x16u);
    }
  }
}

void sub_1000DFB1C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  [WeakRetained modifyRecordsCompleted:*(a1 + 32) fullUpload:*(a1 + 112) recordsToSave:*(a1 + 40) recordIDsToDelete:*(a1 + 48) recordIDsModified:*(a1 + 56) modifyComplete:*(a1 + 64) savedRecords:v9 deletedRecordIDs:v8 ckerror:v7];

  v11 = *(a1 + 72);
  v16[0] = kSecurityRTCFieldItemsToAdd;
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) count]);
  v17[0] = v12;
  v16[1] = kSecurityRTCFieldItemsToDelete;
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) count]);
  v17[1] = v13;
  v16[2] = kSecurityRTCFieldItemsToModify;
  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 56) count]);
  v17[2] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
  [v11 addMetrics:v15];

  [*(a1 + 72) sendMetricWithResult:v7 == 0 error:v7];
  *(*(*(a1 + 80) + 8) + 24) += [*(a1 + 40) count];
  *(*(*(a1 + 88) + 8) + 24) += [*(a1 + 48) count];
  *(*(*(a1 + 96) + 8) + 24) += [*(a1 + 56) count];
}

void sub_1000E07A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak((v32 - 96));
  _Unwind_Resume(a1);
}

void sub_1000E07CC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v17 = +[CKKSAnalytics logger];
  [v17 logResultForEvent:@"OctagonEventVoucherWithBottle" hardFailure:1 result:v15];

  if (v15)
  {
    v18 = sub_100006274("SecError");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "octagon: Error preparing voucher using bottle: %@", buf, 0xCu);
    }

    [WeakRetained setError:v15];
    v19 = [WeakRetained finishedOp];
    [WeakRetained runBeforeGroupFinished:v19];

    v20 = *(a1 + 32);
    v21 = [WeakRetained error];
    [v20 sendMetricWithResult:0 error:v21];
LABEL_5:

    goto LABEL_17;
  }

  v22 = +[CKKSAnalytics logger];
  [v22 recordRecoveredTLKMetrics:*(a1 + 40) tlkRecoveryResults:v14 uniqueTLKsRecoveredEvent:@"OABottledUniqueTLKsRecoveredCount" totalSharesRecoveredEvent:@"OABottledTotalTLKSharesRecoveredCount" totalRecoverableTLKSharesEvent:@"OABottledTotalTLKSharesCount" totalRecoverableTLKsEvent:@"OABottledUniqueTLKsWithSharesCount" totalViewsWithSharesEvent:@"OABottledTLKUniqueViewCount"];

  [WeakRetained setVoucher:v11];
  [WeakRetained setVoucherSig:v12];
  if ([WeakRetained saveVoucher])
  {
    v23 = sub_100006274("octagon");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Saving voucher for later use...", buf, 2u);
    }

    v24 = [WeakRetained deps];
    v25 = [v24 stateHolder];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000E0C70;
    v34[3] = &unk_100337F70;
    v35 = v11;
    v36 = v12;
    v37 = v13;
    v33 = 0;
    [v25 persistAccountChanges:v34 error:&v33];
    v21 = v33;

    if (v21)
    {
      v26 = sub_100006274("octagon");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v21;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "unable to save voucher: %@", buf, 0xCu);
      }

      [WeakRetained setError:v21];
      v27 = [WeakRetained finishedOp];
      [WeakRetained runBeforeGroupFinished:v27];

      v28 = *(a1 + 32);
      v29 = [WeakRetained error];
      [v28 sendMetricWithResult:0 error:v29];

      goto LABEL_5;
    }
  }

  v30 = sub_100006274("octagon");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = v11;
    v40 = 2112;
    v41 = v12;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Successfully vouched with a bottle: %@, %@", buf, 0x16u);
  }

  v31 = [WeakRetained intendedState];
  [WeakRetained setNextState:v31];

  v32 = [WeakRetained finishedOp];
  [WeakRetained runBeforeGroupFinished:v32];

  [*(a1 + 32) sendMetricWithResult:1 error:0];
LABEL_17:
}

id sub_1000E0C70(void *a1, void *a2)
{
  v3 = a2;
  [v3 setVoucher:a1[4]];
  [v3 setVoucherSignature:a1[5]];
  [v3 setTLKSharesPairedWithVoucher:a1[6]];

  return v3;
}

void sub_1000E0EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak(va);
  objc_destroyWeak((v17 - 88));
  _Unwind_Resume(a1);
}

void sub_1000E0F14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = sub_100006274("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "octagon: Error fetching TLKShares to recover: %@", buf, 0xCu);
    }

    [v8 setError:v6];
    v10 = [v8 finishedOp];
    [v8 runBeforeGroupFinished:v10];

    v11 = *(a1 + 32);
    v12 = [v8 error];
    [v11 sendMetricWithResult:0 error:v12];
  }

  else
  {
    v26 = a1;
    v28 = WeakRetained;
    v12 = +[NSMutableArray array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v5;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          v19 = [v18 recordType];
          v20 = [v19 isEqual:@"tlkshare"];

          if (v20)
          {
            v21 = [CKKSTLKShareRecord alloc];
            v22 = [v28 deps];
            v23 = [v22 contextID];
            v24 = [(CKKSCKRecordHolder *)v21 initWithCKRecord:v18 contextID:v23];

            v25 = [(CKKSTLKShareRecord *)v24 share];
            [v12 addObject:v25];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }

    v8 = v28;
    [v28 proceedWithFilteredTLKShares:v12 vouchWithBottleEvent:*(v26 + 32)];
    v6 = 0;
    v5 = v27;
  }
}

void sub_1000E1744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E1770(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = +[CKKSAnalytics logger];
  [v13 logResultForEvent:@"OctagonEventPreflightVouchWithBottle" hardFailure:1 result:v11];

  if (!v9 || v11)
  {
    v18 = sub_100006274("SecError");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "octagon: Error preflighting voucher using bottle: %@", &v22, 0xCu);
    }

    [WeakRetained setError:v11];
    v19 = [WeakRetained finishedOp];
    [WeakRetained runBeforeGroupFinished:v19];

    v20 = *(a1 + 32);
    v21 = [WeakRetained error];
    [v20 sendMetricWithResult:0 error:v21];
  }

  else
  {
    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [WeakRetained bottleID];
      v22 = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Bottle %@ is for peerID %@", &v22, 0x16u);
    }

    v16 = [WeakRetained deps];
    v17 = [v16 ckks];
    [v17 setCurrentSyncingPolicy:v10];

    [WeakRetained proceedWithPeerID:v9 refetchWasNeeded:a4 vouchWithBottleEvent:*(a1 + 32)];
  }
}

void sub_1000E2198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E21B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained proceedAfterFetch];
}

uint64_t sub_1000E4BD4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 201)
      {
        break;
      }

      if ((v12 >> 3) == 101)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SECC2MPGenericEventMetricValue);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0xAAAAAAAAAAAAAAAALL;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    if (!PBReaderPlaceMark() || !sub_1000E8698(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void sub_1000E6A18(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = qword_10039DE38;
  qword_10039DE38 = v2;

  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.security.escrow-update"];
  v5 = qword_10039DE40;
  qword_10039DE40 = v4;

  [qword_10039DE40 setDelegate:qword_10039DE38];
  [qword_10039DE40 resume];

  objc_autoreleasePoolPop(v1);
}

void sub_1000E6F00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 104));
  objc_destroyWeak((v1 - 96));
  _Unwind_Resume(a1);
}

void sub_1000E6F28(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained logForUpgrade])
  {
    v7 = +[CKKSAnalytics logger];
    [v7 logResultForEvent:@"OctagonEventUpgradeSetAllowList" hardFailure:1 result:v5];
  }

  v8 = sub_100006274("octagon-authkit");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v9)
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to save machineID allow-list: %@", &v14, 0xCu);
    }

    [WeakRetained setError:v5];
  }

  else
  {
    if (v9)
    {
      v10 = @"no";
      v11 = *(a1 + 32);
      if (a2)
      {
        v10 = @"some";
      }

      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully saved machineID allow-list (%@ change), version = %@", &v14, 0x16u);
    }

    if (a2)
    {
      [WeakRetained stateIfListUpdates];
    }

    else
    {
      [WeakRetained intendedState];
    }
    v12 = ;
    [WeakRetained setNextState:v12];
  }

  v13 = [WeakRetained finishedOp];
  [WeakRetained runBeforeGroupFinished:v13];
}

void sub_1000E76C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E772C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];

  if (v3)
  {
    v4 = [WeakRetained retryFlag];

    if (v4)
    {
      v5 = [WeakRetained deps];
      v6 = [v5 lockStateTracker];
      v7 = [WeakRetained error];
      v8 = [v6 isLockedError:v7];

      v9 = sub_100006274("octagon-authkit");
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          v11 = [WeakRetained error];
          v23 = 138412290;
          v24 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting the allowed device list failed due to lock state: %@", &v23, 0xCu);
        }

        [WeakRetained setNextState:@"WaitForUnlock"];
        v12 = [OctagonPendingFlag alloc];
        v13 = [WeakRetained retryFlag];
        v14 = [(OctagonPendingFlag *)v12 initWithFlag:v13 conditions:1];

        if (!v14)
        {
          goto LABEL_18;
        }

        v15 = sub_100006274("octagon-authkit");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138412290;
          v24 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Machine ID list error is not fatal: requesting retry: %@", &v23, 0xCu);
        }

        v9 = [WeakRetained deps];
        v16 = [v9 flagHandler];
        [v16 handlePendingFlag:v14];
      }

      else
      {
        if (v10)
        {
          v20 = [WeakRetained error];
          v23 = 138412290;
          v24 = v20;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error is currently unknown, will not retry: %@", &v23, 0xCu);
        }

        v14 = 0;
      }

LABEL_18:
      v21 = *(a1 + 32);
      v22 = [WeakRetained error];
      [v21 sendMetricWithResult:0 error:v22];

      goto LABEL_19;
    }

    v17 = sub_100006274("SecError");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "octagon-authkit: Received an error updating the trusted device list operation, but no retry flag present.", &v23, 2u);
    }

    v18 = *(a1 + 32);
    v19 = [WeakRetained error];
    [v18 sendMetricWithResult:0 error:v19];
  }

  else
  {
    [*(a1 + 32) sendMetricWithResult:1 error:0];
  }

LABEL_19:
}

void sub_1000E7A60(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v17 = a2;
  v51 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v26 = WeakRetained;
  if (v24)
  {
    v48 = v21;
    v49 = v23;
    v47 = v22;
    v27 = v17;
    v28 = sub_100006274("SecError");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v24;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "octagon-authkit: Unable to fetch machine ID list: %@", buf, 0xCu);
    }

    v29 = v20;
    v30 = v19;
    v31 = v18;

    if ([v26 logForUpgrade])
    {
      v32 = +[CKKSAnalytics logger];
      [v32 logRecoverableError:v24 forEvent:@"OctagonEventUpgradeFetchDeviceIDs" withAttributes:0];
    }

    [v26 setError:v24];
    v33 = [v26 deps];
    v34 = [v33 cuttlefishXPCWrapper];
    v35 = [v26 deps];
    v36 = [v35 activeAccount];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1000E7E28;
    v52[3] = &unk_1003378B8;
    v52[4] = v26;
    [v34 markTrustedDeviceListFetchFailed:v36 reply:v52];

    v18 = v31;
    v19 = v30;
    v17 = v27;
    v20 = v29;
    v22 = v47;
    v21 = v48;
    v23 = v49;
    v37 = v51;
  }

  else if (v17)
  {
    if ([WeakRetained logForUpgrade])
    {
      +[CKKSAnalytics logger];
      v50 = v23;
      v38 = v20;
      v39 = v17;
      v40 = v19;
      v42 = v41 = v18;
      [v42 logSuccessForEventNamed:@"OctagonEventUpgradeFetchDeviceIDs"];

      v18 = v41;
      v19 = v40;
      v17 = v39;
      v20 = v38;
      v23 = v50;
    }

    LOBYTE(v46) = *(a1 + 40);
    v37 = v51;
    [v26 afterAuthKitFetch:v17 userInitiatedRemovals:v51 evictedRemovals:v18 unknownReasonRemovals:v19 trustedDeviceHash:v21 deletedDeviceHash:v22 trustedDevicesUpdateTimestamp:v23 accountIsDemo:v46 version:v20];
  }

  else
  {
    v43 = sub_100006274("SecError");
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "octagon-authkit: empty machine id list", buf, 2u);
    }

    if ([v26 logForUpgrade])
    {
      v44 = +[CKKSAnalytics logger];
      [v44 logRecoverableError:0 forEvent:@"OctagonEventUpgradeFetchDeviceIDs" withAttributes:0];
    }

    [v26 setError:0];
    v45 = [v26 finishedOp];
    [v26 runBeforeGroupFinished:v45];

    v37 = v51;
  }
}

void sub_1000E7E28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100006274("octagon-authkit");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unable to mark machineID list as out of date: %@", &v8, 0xCu);
    }

    [*(a1 + 32) setError:v3];
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully marked machineID list as out of date", &v8, 2u);
    }
  }

  v6 = *(a1 + 32);
  v7 = [v6 finishedOp];
  [v6 runBeforeGroupFinished:v7];
}

uint64_t sub_1000E8698(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v29[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29[0] & 0x7F) << v5;
        if ((v29[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 102)
      {
        break;
      }

      if (v13 == 103)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v29[0]) = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:v29 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v29[0] & 0x7F) << v19;
          if ((v29[0] & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_43;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v21;
        }

LABEL_43:
        *(a1 + 8) = v25;
        goto LABEL_46;
      }

      if (v13 != 201)
      {
        goto LABEL_28;
      }

      v16 = objc_alloc_init(SECC2MPError);
      objc_storeStrong((a1 + 24), v16);
      v29[0] = 0xAAAAAAAAAAAAAAAALL;
      v29[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !sub_100192738(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_46:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 101)
    {
      v17 = PBReaderReadString();
      v18 = *(a1 + 32);
      *(a1 + 32) = v17;

      goto LABEL_46;
    }

    if (v13 == 102)
    {
      *(a1 + 40) |= 2u;
      v29[0] = 0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:v29 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 16) = v29[0];
      goto LABEL_46;
    }

LABEL_28:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_46;
  }

  return [a2 hasError] ^ 1;
}

void sub_1000EAC48(id a1)
{
  v1 = sub_100088500("ratelimiterdisabledlogevent", 60);
  v2 = qword_10039DE50;
  qword_10039DE50 = v1;

  v3 = qword_10039DE50;
  context = dispatch_get_context(qword_10039DE50);
  context[2] = _Block_copy(&stru_100336CD8);

  dispatch_activate(v3);
}

void sub_1000EACB8(id a1)
{
  v1 = sub_100019104(@"ratelimit", 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Rate limiting disabled, returning automatic all-clear", v2, 2u);
  }
}

void sub_1000EB828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  objc_destroyWeak((v37 + 56));
  _Block_object_dispose((v38 - 176), 8);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EB8C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000EB8DC(uint64_t a1)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = [*(a1 + 32) deps];
  v3 = [v2 views];

  obj = v3;
  v26 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v26)
  {
    v25 = *v29;
    do
    {
      v4 = 0;
      do
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * v4);
        v6 = [*(a1 + 32) deps];
        v7 = [v6 contextID];
        v8 = [v5 zoneID];
        v9 = [v8 zoneName];
        v10 = [CKKSZoneStateEntry contextID:v7 zoneName:v9];

        if ([v10 ckzonecreated] && objc_msgSend(v10, "ckzonesubscribed"))
        {
          v11 = [v5 zoneID];
          v12 = [v11 zoneName];
          v13 = sub_100019104(@"ckkskey", v12);

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Zone is already created and subscribed", buf, 2u);
          }

          [v5 setViewKeyHierarchyState:@"initialized"];
        }

        else
        {
          v14 = [CKRecordZone alloc];
          v15 = [v5 zoneID];
          v16 = [v14 initWithZoneID:v15];

          [*(*(*(a1 + 40) + 8) + 40) addObject:v16];
          v17 = [CKRecordZoneSubscription alloc];
          v18 = [v16 zoneID];
          v19 = [v16 zoneID];
          v20 = [v19 zoneName];
          v21 = [@"zone:" stringByAppendingString:v20];
          v22 = [v17 initWithZoneID:v18 subscriptionID:v21];

          [*(*(*(a1 + 48) + 8) + 40) addObject:v22];
          [v5 setViewKeyHierarchyState:@"initializing"];
          v23 = [v5 launch];
          [v23 addEvent:@"zone-create"];
        }

        v4 = v4 + 1;
      }

      while (v26 != v4);
      v26 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v26);
  }
}

void sub_1000EBC28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v9)
  {
    v11 = sub_100019104(@"ckkszonemodifier", 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Zone modification failed: %@", buf, 0xCu);
    }

    v12 = [WeakRetained deps];
    [v12 inspectErrorForRetryAfter:v9];

    v13 = [WeakRetained deps];
    v14 = [v13 reachabilityTracker];
    v15 = [v14 isNetworkError:v9];

    if (v15)
    {
      v16 = sub_100019104(@"ckkszonemodifier", 0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Waiting for reachability before issuing zone creation", buf, 2u);
      }

      [WeakRetained setNetworkError:1];
    }
  }

  v17 = sub_100019104(@"ckkszonemodifier", 0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v7;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "created zones: %@", buf, 0xCu);
  }

  [WeakRetained setZoneModificationError:v9];
  v18 = [WeakRetained zoneModificationError];

  if (v18)
  {
    v19 = [WeakRetained operationQueue];
    v20 = [WeakRetained setResultStateOperation];
    [v19 addOperation:v20];
  }

  else
  {
    v21 = sub_100019104(@"ckkszonemodifier", 0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(*(*(a1 + 32) + 8) + 40);
      *buf = 138412290;
      v38 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Attempting to subscribe to zones %@", buf, 0xCu);
    }

    v23 = [WeakRetained deps];
    v24 = [v23 cloudKitClassDependencies];
    v25 = [objc_msgSend(objc_msgSend(v24 "modifySubscriptionsOperationClass")];
    v26 = *(*(a1 + 40) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    v28 = [*(*(*(a1 + 40) + 8) + 40) configuration];
    [v28 setIsCloudKitSupportOperation:1];

    v29 = [WeakRetained deps];
    v30 = [v29 ckdatabase];
    [*(*(*(a1 + 40) + 8) + 40) setDatabase:v30];

    [*(*(*(a1 + 40) + 8) + 40) setName:@"zone-subscription-operation"];
    [*(*(*(a1 + 40) + 8) + 40) setQualityOfService:25];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000EC27C;
    v33[3] = &unk_100336D28;
    objc_copyWeak(&v36, (a1 + 56));
    v35 = *(a1 + 48);
    v34 = v7;
    [*(*(*(a1 + 40) + 8) + 40) setModifySubscriptionsCompletionBlock:v33];
    v31 = [WeakRetained deps];
    v32 = [v31 ckdatabase];
    [v32 addOperation:*(*(*(a1 + 40) + 8) + 40)];

    objc_destroyWeak(&v36);
  }
}

void sub_1000EC0BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100019104(@"ckkszonemodifier", 0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished creating & subscribing to zones", v10, 2u);
  }

  if ([WeakRetained networkError])
  {
    [WeakRetained setNextState:@"zone_creation_failed_due_to_network_error"];
    v4 = [WeakRetained zoneModificationError];
    if (v4)
    {
      v5 = v4;
      [WeakRetained setError:v4];
    }

    else
    {
      v7 = [WeakRetained zoneSubscriptionError];
      [WeakRetained setError:v7];

      v5 = 0;
    }
  }

  else if ([WeakRetained allZoneCreationsSucceeded] && (objc_msgSend(WeakRetained, "allZoneSubscriptionsSucceeded") & 1) != 0)
  {
    [*(a1 + 32) sendMetricWithResult:1 error:0];
    v5 = [WeakRetained intendedState];
    [WeakRetained setNextState:v5];
  }

  else
  {
    [WeakRetained setNextState:@"zonecreationfailed"];
    v6 = [WeakRetained zoneModificationError];
    if (v6)
    {
      [WeakRetained setError:v6];
    }

    else
    {
      v8 = [WeakRetained zoneSubscriptionError];
      [WeakRetained setError:v8];
    }

    v9 = *(a1 + 32);
    v5 = [WeakRetained error];
    [v9 sendMetricWithResult:0 error:v5];
  }
}

void sub_1000EC27C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setZoneSubscriptionError:v7];
  if (v7)
  {
    v9 = sub_100019104(@"ckkszonemodifier", 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Couldn't create cloudkit zone subscription; keychain syncing is severely degraded: %@", buf, 0xCu);
    }

    v10 = [WeakRetained deps];
    [v10 inspectErrorForRetryAfter:v7];

    v11 = [WeakRetained deps];
    v12 = [v11 reachabilityTracker];
    v13 = [v12 isNetworkError:v7];

    if (v13)
    {
      v14 = sub_100019104(@"ckkszonemodifier", 0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Waiting for reachability before issuing zone subscription", buf, 2u);
      }

      [WeakRetained setNetworkError:1];
    }
  }

  v15 = sub_100019104(@"ckkszonemodifier", 0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Successfully subscribed to %@", buf, 0xCu);
  }

  v16 = [WeakRetained deps];
  v17 = [v16 databaseProvider];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000EC56C;
  v24[3] = &unk_100343970;
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  v24[4] = WeakRetained;
  v28 = v18;
  v25 = v19;
  v26 = v6;
  v27 = v7;
  v20 = v7;
  v21 = v6;
  [v17 dispatchSyncWithSQLTransaction:v24];

  v22 = [WeakRetained operationQueue];
  v23 = [WeakRetained setResultStateOperation];
  [v22 addOperation:v23];
}

uint64_t sub_1000EC56C(id *a1)
{
  v1 = a1;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v2 = [a1[4] deps];
  v3 = [v2 views];

  obj = v3;
  v94 = [v3 countByEnumeratingWithState:&v106 objects:v116 count:16];
  if (v94)
  {
    v92 = *v107;
    v93 = v1;
    do
    {
      for (i = 0; i != v94; i = i + 1)
      {
        if (*v107 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v106 + 1) + 8 * i);
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v6 = *(*(v1[8] + 1) + 40);
        v7 = [v6 countByEnumeratingWithState:&v102 objects:v115 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v103;
LABEL_8:
          v10 = 0;
          while (1)
          {
            if (*v103 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v102 + 1) + 8 * v10);
            v12 = [v11 zoneID];
            v13 = [v5 zoneID];
            v14 = [v12 isEqual:v13];

            if (v14)
            {
              break;
            }

            if (v8 == ++v10)
            {
              v8 = [v6 countByEnumeratingWithState:&v102 objects:v115 count:16];
              if (v8)
              {
                goto LABEL_8;
              }

              v1 = v93;
              goto LABEL_84;
            }
          }

          v15 = v11;

          v1 = v93;
          if (!v15)
          {
            continue;
          }

          v96 = [v93[5] containsObject:v15];
          v91 = v15;
          if (v96)
          {
            v16 = [v5 zoneID];
            v17 = [v16 zoneName];
            v18 = sub_100019104(@"ckkszone", v17);

            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              v59 = [v5 zoneID];
              *buf = 138412290;
              *v111 = v59;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Successfully created '%@'", buf, 0xCu);
            }

            [v5 armReadyNotification];
            v95 = 0;
            goto LABEL_30;
          }

          v19 = [v93[4] zoneModificationError];
          if (!v19)
          {
            goto LABEL_24;
          }

          v20 = v19;
          v21 = [v93[4] zoneModificationError];
          v22 = [v21 domain];
          if ([v22 isEqualToString:CKErrorDomain])
          {
            v23 = [v93[4] zoneModificationError];
            v24 = [v23 code];

            if (v24 == 2)
            {
              v20 = [v93[4] zoneModificationError];
              v21 = [v20 userInfo];
              v22 = [v21 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
              v25 = [v5 zoneID];
              v95 = [v22 objectForKeyedSubscript:v25];

              goto LABEL_26;
            }

LABEL_24:
            v95 = 0;
          }

          else
          {
            v95 = 0;
LABEL_26:
          }

          v26 = [v5 zoneID];
          v27 = [v26 zoneName];
          v28 = sub_100019104(@"ckkszone", v27);

          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = [v5 zoneID];
            *buf = 138412546;
            *v111 = v29;
            *&v111[8] = 2112;
            *&v111[10] = v95;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to create '%@' with error %@", buf, 0x16u);
          }

LABEL_30:
          v30 = [v5 zoneID];
          v31 = [v30 zoneName];
          v32 = [@"zone:" stringByAppendingString:v31];

          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v33 = v93[6];
          v34 = [v33 countByEnumeratingWithState:&v98 objects:v114 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v99;
LABEL_32:
            v37 = 0;
            while (1)
            {
              if (*v99 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = [*(*(&v98 + 1) + 8 * v37) subscriptionID];
              v39 = [v38 isEqual:v32];

              if (v39)
              {
                break;
              }

              if (v35 == ++v37)
              {
                v35 = [v33 countByEnumeratingWithState:&v98 objects:v114 count:16];
                if (v35)
                {
                  goto LABEL_32;
                }

                goto LABEL_38;
              }
            }

            v40 = v93[7];
            if (!v40)
            {
              goto LABEL_61;
            }

            v41 = 1;
LABEL_42:
            v42 = [v40 domain];
            if (([v42 isEqualToString:CKErrorDomain] & 1) == 0)
            {
              goto LABEL_60;
            }

            v43 = [v93[7] code];

            if (v43 != 2)
            {
              if (v41)
              {
                goto LABEL_61;
              }

              goto LABEL_54;
            }

            v44 = [v93[7] userInfo];
            v45 = [v44 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
            v42 = [v45 objectForKeyedSubscript:v32];

            v46 = [v42 userInfo];
            v47 = [v46 objectForKeyedSubscript:NSUnderlyingErrorKey];

            if (!v42)
            {
              goto LABEL_59;
            }

            v48 = [v42 domain];
            if ([v48 isEqualToString:CKErrorDomain] && objc_msgSend(v42, "code") == 15 && v47)
            {
              v49 = [v47 domain];
              if ([v49 isEqualToString:CKErrorDomain])
              {
                v50 = [v47 code];

                if (v50 == 2032)
                {
                  v51 = [v5 zoneID];
                  v52 = [v51 zoneName];
                  v53 = sub_100019104(@"ckks", v52);

                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "zone subscription error appears to say that the zone subscription exists; this is okay!", buf, 2u);
                  }

LABEL_61:
                  v60 = [v5 zoneID];
                  v61 = [v60 zoneName];
                  v56 = sub_100019104(@"ckkszone", v61);

                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                  {
                    v88 = [v5 zoneID];
                    *buf = 138412290;
                    *v111 = v88;
                    _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Successfully subscribed '%@'", buf, 0xCu);
                  }

                  v58 = 1;
LABEL_64:

                  v62 = [v5 zoneID];
                  v63 = [v62 zoneName];
                  v64 = sub_100019104(@"ckkszone", v63);

                  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                  {
                    v65 = v93[7];
                    *buf = 67109890;
                    *v111 = v96;
                    *&v111[4] = 2112;
                    *&v111[6] = v95;
                    *&v111[14] = 1024;
                    *&v111[16] = v58;
                    v112 = 2112;
                    v113 = v65;
                    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Zone setup progress: created:%d %@ subscribed:%d %@", buf, 0x22u);
                  }

                  if ((v96 & v58) == 1)
                  {
                    [v5 setViewKeyHierarchyState:@"initialized"];
                  }

                  v66 = [v93[4] deps];
                  v67 = [v66 contextID];
                  v68 = [v5 zoneID];
                  v69 = [v68 zoneName];
                  v70 = [CKKSZoneStateEntry contextID:v67 zoneName:v69];

                  v1 = v93;
                  [v70 setCkzonecreated:v96];
                  [v70 setCkzonesubscribed:v58];
                  v71 = v93[7];
                  if (v71)
                  {
                    v72 = [v71 domain];
                    if (![v72 isEqualToString:CKErrorDomain])
                    {
                      goto LABEL_78;
                    }

                    v73 = [v93[7] code];

                    if (v73 == 2)
                    {
                      v74 = [v93[7] userInfo];
                      v75 = [v74 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
                      v76 = [v5 zoneID];
                      v72 = [v75 objectForKeyedSubscript:v76];

                      if (v72)
                      {
                        v77 = [v72 domain];
                        if ([v77 isEqualToString:CKErrorDomain])
                        {
                          v78 = [v72 code];

                          if (v78 == 26)
                          {
                            v79 = [v5 zoneID];
                            v80 = [v79 zoneName];
                            v81 = sub_100019104(@"ckks", v80);

                            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                            {
                              v82 = v93[7];
                              *buf = 138412290;
                              *v111 = v82;
                              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "zone subscription error appears to say the zone doesn't exist, fixing status: %@", buf, 0xCu);
                            }

                            [v70 setCkzonecreated:0];
                          }
                        }

                        else
                        {
                        }
                      }

LABEL_78:
                    }
                  }

                  v97 = 0;
                  [v70 saveToDatabase:&v97];
                  v83 = v97;
                  if (v83)
                  {
                    v84 = [v5 zoneID];
                    v85 = [v84 zoneName];
                    v86 = sub_100019104(@"ckks", v85);

                    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                    {
                      v87 = [v5 zoneID];
                      *buf = 138412546;
                      *v111 = v87;
                      *&v111[8] = 2112;
                      *&v111[10] = v83;
                      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "couldn't save zone creation status for %@: %@", buf, 0x16u);
                    }
                  }

                  [v93[4] setAllZoneCreationsSucceeded:{v96 & objc_msgSend(v93[4], "allZoneCreationsSucceeded")}];
                  [v93[4] setAllZoneSubscriptionsSucceeded:{v58 & objc_msgSend(v93[4], "allZoneSubscriptionsSucceeded")}];

                  v6 = v91;
                  goto LABEL_84;
                }

LABEL_59:

LABEL_60:
                if (v41)
                {
                  goto LABEL_61;
                }

LABEL_54:
                v54 = [v5 zoneID];
                v55 = [v54 zoneName];
                v56 = sub_100019104(@"ckkszone", v55);

                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  v57 = [v5 zoneID];
                  *buf = 138412290;
                  *v111 = v57;
                  _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to subscribe to '%@'", buf, 0xCu);
                }

                v58 = 0;
                goto LABEL_64;
              }
            }

            goto LABEL_59;
          }

LABEL_38:

          v40 = v93[7];
          if (v40)
          {
            v41 = 0;
            goto LABEL_42;
          }

          goto LABEL_54;
        }

LABEL_84:
      }

      v94 = [obj countByEnumeratingWithState:&v106 objects:v116 count:16];
    }

    while (v94);
  }

  return 1;
}

void sub_1000ED744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ED75C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000ED774(uint64_t a1)
{
  v2 = *(a1 + 32);
  v14 = 0;
  v3 = [v2 fetchSelfPeers:&v14];
  v4 = v14;
  v5 = *(a1 + 32);
  v13 = 0;
  v6 = [v5 fetchTrustedPeers:&v13];
  v7 = v13;
  v8 = [CKKSPeerProviderState alloc];
  v9 = [*(a1 + 32) providerID];
  v10 = -[CKKSPeerProviderState initWithPeerProviderID:essential:selfPeers:selfPeersError:trustedPeers:trustedPeersError:](v8, "initWithPeerProviderID:essential:selfPeers:selfPeersError:trustedPeers:trustedPeersError:", v9, [*(a1 + 32) essential], v3, v4, v6, v7);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_1000EE148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose((v59 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1000EE20C(uint64_t a1, void *a2)
{
  [*(a1 + 32) stopWithEvent:@"OctagonSOSAdapterUpdateKeys" result:a2];
  if (a2)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "octagon-sos: failed to update Octagon keys in SOS:%@", &v8, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    v5 = *(*(a1 + 48) + 8);
    v6 = a2;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = sub_100006274("octagon-sos");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "successfully updated Octagon keys in SOS!", &v8, 2u);
    }
  }

  CFRelease(*(*(*(a1 + 56) + 8) + 24));
  CFRelease(*(*(*(a1 + 64) + 8) + 24));
  CFRelease(*(*(*(a1 + 72) + 8) + 24));
  CFRelease(*(*(*(a1 + 80) + 8) + 24));
  CFRelease(*(*(*(a1 + 88) + 8) + 24));
  CFRelease(*(*(*(a1 + 96) + 8) + 24));
  CFRelease(*(*(*(a1 + 104) + 8) + 24));
  CFRelease(*(*(*(a1 + 112) + 8) + 24));
}

void sub_1000EE8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1000EE94C(uint64_t a1, void *a2)
{
  [*(a1 + 32) stopWithEvent:@"OctagonSOSAdapterUpdateKeys" result:a2];
  if (a2)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "octagon-preload-keys: failed to preload Octagon keys in SOS:%@", &v8, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    v5 = *(*(a1 + 48) + 8);
    v6 = a2;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v7 = sub_100006274("octagon-preload-keys");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "successfully preloaded Octagon keys in SOS!", &v8, 2u);
    }
  }

  CFRelease(*(*(*(a1 + 56) + 8) + 24));
  CFRelease(*(*(*(a1 + 64) + 8) + 24));
  CFRelease(*(*(*(a1 + 72) + 8) + 24));
  CFRelease(*(*(*(a1 + 80) + 8) + 24));
  CFRelease(*(*(*(a1 + 88) + 8) + 24));
  CFRelease(*(*(*(a1 + 96) + 8) + 24));
}

void sub_1000EED20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000EED44(uint64_t a1, CFSetRef theSet, void *a3)
{
  if (a3)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "octagon-sos: Error fetching trusted peers: %@", buf, 0xCu);
    }

    v7 = *(*(a1 + 32) + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (v9)
    {
      objc_storeStrong(v8, a3);
    }
  }

  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_1000EEE84;
  context[3] = &unk_100345500;
  context[4] = *(a1 + 40);
  CFSetApplyFunction(theSet, sub_1000EF134, context);
}

void sub_1000EEE84(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  PeerID = SOSPeerInfoGetPeerID();
  v5 = SOSPeerInfoCopyOctagonSigningPublicKey();
  if (v5 && (v6 = SOSPeerInfoCopyOctagonEncryptionPublicKey()) != 0)
  {
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = sub_100006274("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = a2;
      v17 = 2112;
      v18 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "octagon-sos: error fetching octagon keys for peer: %@ %@", buf, 0x16u);
    }

    v7 = 0;
    v10 = 0;
    v11 = 0;
    v8 = 1;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v11 = [[_SFECPublicKey alloc] initWithSecKey:v5];
  if (v8)
  {
    v10 = 0;
    v8 = 1;
  }

  else
  {
    v10 = [[_SFECPublicKey alloc] initWithSecKey:v7];
    v8 = 0;
  }

LABEL_11:
  v12 = [CKKSSOSPeer alloc];
  v13 = +[OTSOSActualAdapter sosCKKSViewList];
  v14 = [(CKKSSOSPeer *)v12 initWithSOSPeerID:PeerID encryptionPublicKey:v10 signingPublicKey:v11 viewList:v13];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v14];
  if (v5)
  {
    CFRelease(v5);
  }

  if ((v8 & 1) == 0)
  {
    CFRelease(v7);
  }
}

void sub_1000EF798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EF7D8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v5 = *(a1[4] + 8);
    v6 = a4;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    if (a2 && a3)
    {
      v9 = [[_SFECKeyPair alloc] initWithSecKey:a3];
      v10 = *(a1[5] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = [[_SFECKeyPair alloc] initWithSecKey:a2];
      v13 = a1[6];
    }

    else
    {
      v12 = [NSError errorWithDomain:@"CKKSErrorDomain" code:24 description:@"Not all SOS peer keys available, but no error returned"];
      v13 = a1[4];
    }

    v14 = *(v13 + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v12;
  }

  return _objc_release_x1();
}

id sub_1000EFACC(uint64_t a1)
{
  v2 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received a notification that the SOS Octagon peer set changed", v4, 2u);
  }

  return [*(a1 + 32) sendTrustedPeerSetChangedUpdate];
}

void sub_1000EFBA0(id a1)
{
  qword_10039DE58 = SOSViewCopyViewSet();

  _objc_release_x1();
}

void sub_1000F0A30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_1000F0A64(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = +[CKKSAnalytics logger];
  [v14 logResultForEvent:@"OctagonEventEstablishIdentity" hardFailure:1 result:v12];

  if (v12)
  {
    v15 = sub_100006274("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "octagon: Error calling establish: %@", buf, 0xCu);
    }

    if ([v12 isCuttlefishError:1033])
    {
      v16 = sub_100006274("octagon-ckks");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [WeakRetained ckksConflictState];
        *buf = 138412290;
        v36 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "A CKKS key hierarchy is out of date; moving to '%@'", buf, 0xCu);
      }

      v18 = [WeakRetained ckksConflictState];
      [WeakRetained setNextState:v18];
    }

    else
    {
      [WeakRetained setError:v12];
    }

    v23 = [WeakRetained finishedOp];
    [WeakRetained runBeforeGroupFinished:v23];
  }

  else
  {
    [WeakRetained setPeerID:v9];
    v19 = [WeakRetained operationDependencies];
    v20 = [v19 stateHolder];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000F0E40;
    v32[3] = &unk_100338E48;
    v33 = v9;
    v21 = v11;
    v34 = v21;
    v31 = 0;
    v22 = [v20 persistAccountChanges:v32 error:&v31];
    v23 = v31;

    if (!v22 || v23)
    {
      v25 = sub_100006274("octagon");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v23;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Couldn't persist results: %@", buf, 0xCu);
      }

      [WeakRetained setError:v23];
    }

    else
    {
      v24 = [WeakRetained intendedState];
      [WeakRetained setNextState:v24];
    }

    v26 = [WeakRetained operationDependencies];
    v27 = [v26 ckks];
    [v27 setCurrentSyncingPolicy:v21];

    v28 = [WeakRetained operationDependencies];
    v29 = [v28 ckks];
    [v29 receiveTLKUploadRecords:v10];

    v30 = [WeakRetained finishedOp];
    [WeakRetained runBeforeGroupFinished:v30];
  }
}

id sub_1000F0E40(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTrustState:2];
  [v3 setPeerID:*(a1 + 32)];
  [v3 setTPSyncingPolicy:*(a1 + 40)];

  return v3;
}

void sub_1000F12B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F1304(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100006274("octagon");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained error];
    v5 = v4;
    v6 = @"no error";
    if (v4)
    {
      v6 = v4;
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finishing an establish operation with %@", &v10, 0xCu);
  }

  v7 = [WeakRetained error];

  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [WeakRetained error];
    [v8 sendMetricWithResult:0 error:v9];
  }

  else
  {
    [v8 sendMetricWithResult:1 error:0];
  }
}

void sub_1000F1440(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) viewKeySets];
  v3 = [*(a1 + 32) pendingTLKShares];
  [WeakRetained proceedWithKeys:v2 pendingTLKShares:v3];
}

void sub_1000F1EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak(&a29);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F1F5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000F1F74(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneID];
  v2 = [v1 zoneName];
  v3 = sub_100019104(@"ckksheal", v2);

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to heal %@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) zoneID];
  v6 = [*(a1 + 32) contextID];
  v325 = [CKKSCurrentKeySet loadForZone:v5 contextID:v6];

  v7 = [v325 error];

  if (v7)
  {
    v8 = [v325 error];
    [*(a1 + 40) setError:v8];

    v9 = [*(a1 + 32) zoneID];
    v10 = [v9 zoneName];
    v11 = sub_100019104(@"ckksheal", v10);

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v325 error];
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "couldn't load current key set, attempting to proceed: %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = [*(a1 + 32) zoneID];
    v14 = [v13 zoneName];
    v11 = sub_100019104(@"ckksheal", v14);

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v325;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Key set is %@", buf, 0xCu);
    }
  }

  v15 = [v325 currentTLKPointer];
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = [v325 currentClassAPointer];
  if (!v16)
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [v325 currentClassCPointer];
  if (!v17)
  {

    goto LABEL_16;
  }

  v18 = [v325 tlk];
  if (v18)
  {
    v19 = [v325 classA];
    if (v19)
    {
      v20 = [v325 classC];
      v21 = v20 == 0;

      if (!v21)
      {
        goto LABEL_17;
      }

      goto LABEL_51;
    }
  }

LABEL_51:
  if ([*(a1 + 40) allowFullRefetchResult])
  {
    v77 = [*(a1 + 32) zoneID];
    v78 = [v77 zoneName];
    v79 = sub_100019104(@"ckksheal", v78);

    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Have current key pointers, but no keys. This is exceptional; requesting full refetch", buf, 2u);
    }

    [*(a1 + 32) setViewKeyHierarchyState:@"needrefetch"];
    v80 = *(a1 + 48);
    v401 = kSecurityRTCFieldFullRefetchNeeded;
    v402 = &__kCFBooleanTrue;
    v320 = [NSDictionary dictionaryWithObjects:&v402 forKeys:&v401 count:1];
    [v80 addMetrics:v320];
LABEL_55:
    v81 = 0;
LABEL_56:
    v82 = 1;
    goto LABEL_115;
  }

LABEL_17:
  v22 = [*(a1 + 40) deps];
  v23 = [v22 contextID];
  v24 = [*(a1 + 32) zoneID];
  v378 = 0;
  v25 = [CKKSIncomingQueueEntry allIQEsHaveValidUnwrappingKeysInContextID:v23 zoneID:v24 error:&v378];
  v320 = v378;

  if (v320)
  {
    v26 = [*(a1 + 32) zoneID];
    v27 = [v26 zoneName];
    v28 = sub_100019104(@"ckksheal", v27);

    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
LABEL_21:

      goto LABEL_23;
    }

    *buf = 138412290;
    *&buf[4] = v320;
    v29 = "Unable to determine if all IQEs have parent keys: %@";
    v30 = v28;
    v31 = OS_LOG_TYPE_ERROR;
    v32 = 12;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v30, v31, v29, buf, v32);
    goto LABEL_21;
  }

  if ((v25 & 1) == 0)
  {
    v71 = [*(a1 + 40) allowFullRefetchResult];
    v72 = [*(a1 + 32) zoneID];
    v73 = [v72 zoneName];
    v28 = sub_100019104(@"ckksheal", v73);

    v74 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v71)
    {
      if (v74)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "We have some item that encrypts to a non-existent key. This is exceptional; requesting full refetch", buf, 2u);
      }

      v75 = *(a1 + 48);
      v399 = kSecurityRTCFieldFullRefetchNeeded;
      v400 = &__kCFBooleanTrue;
      v76 = [NSDictionary dictionaryWithObjects:&v400 forKeys:&v399 count:1];
      [v75 addMetrics:v76];

      [*(a1 + 32) setViewKeyHierarchyState:@"needrefetch"];
      v320 = 0;
      goto LABEL_55;
    }

    if (!v74)
    {
      goto LABEL_21;
    }

    *buf = 0;
    v29 = "We have some item that encrypts to a non-existent key, but we cannot request a refetch! Possible inifinite-loop ahead";
    v30 = v28;
    v31 = OS_LOG_TYPE_DEFAULT;
    v32 = 2;
    goto LABEL_20;
  }

LABEL_23:
  v33 = [v325 currentTLKPointer];
  v34 = v33 == 0;

  if (v34)
  {
    v35 = [*(a1 + 32) zoneID];
    v36 = [v35 zoneName];
    v37 = sub_100019104(@"ckksheal", v36);

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "No current TLK pointer?", buf, 2u);
    }

    v38 = [CKKSCurrentKeyPointer alloc];
    v39 = [*(a1 + 32) contextID];
    v40 = [*(a1 + 32) zoneID];
    v41 = [(CKKSCurrentKeyPointer *)v38 initForClass:@"tlk" contextID:v39 currentKeyUUID:0 zoneID:v40 encodedCKRecord:0];
    [v325 setCurrentTLKPointer:v41];
  }

  v42 = [v325 currentClassAPointer];
  v43 = v42 == 0;

  if (v43)
  {
    v44 = [*(a1 + 32) zoneID];
    v45 = [v44 zoneName];
    v46 = sub_100019104(@"ckksheal", v45);

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "No current ClassA pointer?", buf, 2u);
    }

    v47 = [CKKSCurrentKeyPointer alloc];
    v48 = [*(a1 + 32) contextID];
    v49 = [*(a1 + 32) zoneID];
    v50 = [(CKKSCurrentKeyPointer *)v47 initForClass:@"classA" contextID:v48 currentKeyUUID:0 zoneID:v49 encodedCKRecord:0];
    [v325 setCurrentClassAPointer:v50];
  }

  v51 = [v325 currentClassCPointer];
  v52 = v51 == 0;

  if (v52)
  {
    v53 = [*(a1 + 32) zoneID];
    v54 = [v53 zoneName];
    v55 = sub_100019104(@"ckksheal", v54);

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "No current ClassC pointer?", buf, 2u);
    }

    v56 = [CKKSCurrentKeyPointer alloc];
    v57 = [*(a1 + 32) contextID];
    v58 = [*(a1 + 32) zoneID];
    v59 = [(CKKSCurrentKeyPointer *)v56 initForClass:@"classC" contextID:v57 currentKeyUUID:0 zoneID:v58 encodedCKRecord:0];
    [v325 setCurrentClassCPointer:v59];
  }

  v60 = [v325 currentTLKPointer];
  v61 = [v60 currentKeyUUID];
  if (!v61)
  {
    goto LABEL_62;
  }

  v62 = [v325 currentClassAPointer];
  v63 = [v62 currentKeyUUID];
  if (!v63)
  {
LABEL_61:

LABEL_62:
    goto LABEL_63;
  }

  v64 = [v325 currentClassCPointer];
  v65 = [v64 currentKeyUUID];
  if (!v65)
  {
LABEL_60:

    goto LABEL_61;
  }

  v66 = [v325 tlk];
  if (!v66)
  {
LABEL_59:

    goto LABEL_60;
  }

  v67 = [v325 classA];
  if (!v67)
  {
LABEL_58:

    goto LABEL_59;
  }

  obj = [v325 classC];
  if (!obj)
  {

    goto LABEL_58;
  }

  v317 = [v325 classA];
  v312 = [v317 parentKeyUUID];
  v315 = [v325 tlk];
  v310 = [v315 uuid];
  if ([v312 isEqualToString:v310])
  {
    v307 = [v325 classC];
    v304 = [v307 parentKeyUUID];
    v68 = [v325 tlk];
    v69 = [v68 uuid];
    v302 = [v304 isEqualToString:v69];

    v70 = v302 ^ 1;
  }

  else
  {
    v70 = 1;
  }

  if ((v70 & 1) == 0)
  {
    v145 = [v325 tlk];
    v327 = 0;
    v146 = [v145 validTLK:&v327];
    v81 = v327;

    if ((v146 & 1) == 0)
    {
      v158 = [NSError errorWithDomain:@"CKKSErrorDomain" code:34 description:@"Invalid TLK from CloudKit (during heal)" underlying:v81];
      v159 = [*(a1 + 32) zoneID];
      v160 = [v159 zoneName];
      v161 = sub_100019104(@"ckkskey", v160);

      if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
      {
        v162 = [v325 tlk];
        *buf = 138412546;
        *&buf[4] = v162;
        *&buf[12] = 2112;
        *&buf[14] = v158;
        _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_ERROR, "CKKS claims %@ is not a valid TLK: %@", buf, 0x16u);
      }

      [*(a1 + 32) setViewKeyHierarchyState:@"error"];
      [*(a1 + 48) populateUnderlyingErrorsStartingWithRootError:v81];
      *(*(*(a1 + 64) + 8) + 24) = 0;

      goto LABEL_56;
    }

    v147 = [v325 tlk];
    v148 = [*(a1 + 32) contextID];
    v149 = *(a1 + 56);
    v326 = v81;
    v150 = [v147 tlkMaterialPresentOrRecoverableViaTLKShareForContextID:v148 forTrustStates:v149 error:&v326];
    v151 = v326;

    if (v150)
    {
      v152 = *(a1 + 40);
      v153 = [v325 tlk];
      LOBYTE(v152) = [v152 ensureKeyPresent:v153 viewState:*(a1 + 32)];

      if ((v152 & 1) == 0)
      {
        goto LABEL_135;
      }

      v154 = *(a1 + 40);
      v155 = [v325 classA];
      LOBYTE(v154) = [v154 ensureKeyPresent:v155 viewState:*(a1 + 32)];

      if ((v154 & 1) == 0 || (v156 = *(a1 + 40), [v325 classC], v157 = objc_claimAutoreleasedReturnValue(), LOBYTE(v156) = objc_msgSend(v156, "ensureKeyPresent:viewState:", v157, *(a1 + 32)), v157, (v156 & 1) == 0))
      {
LABEL_135:
        v82 = 0;
        *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_141:
        v81 = v151;
        goto LABEL_115;
      }

      [*(a1 + 32) setViewKeyHierarchyState:@"ready"];
    }

    else
    {
      v168 = a1;
      if (!v151)
      {
        goto LABEL_136;
      }

      v169 = [*(a1 + 40) deps];
      v170 = [v169 lockStateTracker];
      v171 = [v170 isLockedError:v151];

      v168 = a1;
      if (v171)
      {
        v172 = [*(a1 + 32) zoneID];
        v173 = [v172 zoneName];
        v174 = sub_100019104(@"ckkskey", v173);

        if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
        {
          v175 = [v325 tlk];
          *buf = 138412290;
          *&buf[4] = v175;
          _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, "Received a TLK(%@), but keybag appears to be locked. Entering a waiting state.", buf, 0xCu);
        }

        v176 = off_100344480;
      }

      else
      {
LABEL_136:
        v177 = [*(v168 + 32) zoneID];
        v178 = [v177 zoneName];
        v174 = sub_100019104(@"ckkskey", v178);

        if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
        {
          v179 = [v325 tlk];
          *buf = 138412546;
          *&buf[4] = v179;
          *&buf[12] = 2112;
          *&buf[14] = v151;
          _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_DEFAULT, "Received a TLK(%@) which we don't have in the local keychain: %@", buf, 0x16u);
        }

        v176 = &off_100344488;
      }

      [*(a1 + 32) setViewKeyHierarchyState:*v176];
      [*(a1 + 48) populateUnderlyingErrorsStartingWithRootError:v151];
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    v82 = 1;
    goto LABEL_141;
  }

LABEL_63:
  v83 = [AAFAnalyticsEventSecurity alloc];
  v84 = [*(a1 + 40) deps];
  v85 = [v84 activeAccount];
  v86 = [v85 altDSID];
  v87 = [*(a1 + 40) deps];
  [v87 sendMetric];
  v305 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v316 = [v83 initWithCKKSMetrics:&__NSDictionary0__struct altDSID:v86 eventName:kSecurityRTCEventNameHealBrokenRecords testsAreEnabled:0 category:? sendMetric:?];

  v88 = [*(a1 + 32) contextID];
  v89 = [*(a1 + 32) zoneID];
  v377 = 0;
  v90 = [CKKSKey allKeysForContextID:v88 zoneID:v89 error:&v377];
  v81 = v377;

  v311 = objc_alloc_init(NSMutableArray);
  v375 = 0u;
  v376 = 0u;
  v373 = 0u;
  v374 = 0u;
  obja = v90;
  v91 = [obja countByEnumeratingWithState:&v373 objects:v398 count:16];
  if (!v91)
  {

LABEL_110:
    v141 = [*(a1 + 32) zoneID];
    v142 = [v141 zoneName];
    v143 = sub_100019104(@"ckksheal", v142);

    if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "No possible TLK found. Waiting for creation.", buf, 2u);
    }

    [*(a1 + 32) setViewKeyHierarchyState:@"waitfortlkcreation"];
    [v316 sendMetricWithResult:0 error:0];
    v92 = 0;
    goto LABEL_113;
  }

  v92 = 0;
  v93 = *v374;
  do
  {
    v94 = 0;
    v95 = v81;
    do
    {
      if (*v374 != v93)
      {
        objc_enumerationMutation(obja);
      }

      v96 = *(*(&v373 + 1) + 8 * v94);
      v372 = v95;
      v97 = [v96 topKeyInAnyState:&v372];
      v81 = v372;

      if (v92)
      {
        v98 = [v92 uuid];
        v99 = [v97 uuid];
        v100 = [v98 isEqualToString:v99];

        if ((v100 & 1) == 0)
        {
          v133 = [*(a1 + 32) zoneID];
          v134 = [v133 zoneName];
          v135 = sub_100019104(@"ckksheal", v134);

          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "key hierarchy has split: there's two top keys. Currently we don't handle this situation.", buf, 2u);
          }

          v137 = [NSString stringWithFormat:@"Key hierarchy has split: %@ and %@ are roots", v92, v97];
          v138 = [NSError errorWithDomain:@"CKKSErrorDomain" code:32 description:v137];
          v139 = *(a1 + 40);
          v322 = (a1 + 40);
          [v139 setError:v138];

          [*v322 setNextState:@"error"];
          v140 = [*v322 error];
          [v316 sendMetricWithResult:0 error:v140];

          goto LABEL_113;
        }
      }

      else
      {
        v92 = v97;
      }

      v94 = v94 + 1;
      v95 = v81;
    }

    while (v91 != v94);
    v91 = [obja countByEnumeratingWithState:&v373 objects:v398 count:16];
  }

  while (v91);

  if (!v92)
  {
    goto LABEL_110;
  }

  v371 = v81;
  v101 = [v92 validTLK:&v371];
  v102 = v371;

  v103 = *(a1 + 32);
  if ((v101 & 1) == 0)
  {
    v163 = [v103 zoneID];
    v164 = [v163 zoneName];
    v165 = sub_100019104(@"ckkskey", v164);

    if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v92;
      *&buf[12] = 2112;
      *&buf[14] = v102;
      _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "CKKS claims %@ is not a valid TLK: %@", buf, 0x16u);
    }

    v166 = [NSError errorWithDomain:@"CKKSErrorDomain" code:34 description:@"Invalid TLK from CloudKit (during heal)" underlying:v102];
    [*(a1 + 40) setError:v166];

    [*(a1 + 32) setViewKeyHierarchyState:@"error"];
    v167 = [*(a1 + 40) error];
    [v316 sendMetricWithResult:0 error:v167];

    v82 = 1;
    v81 = v102;
    goto LABEL_114;
  }

  v104 = [v103 contextID];
  v105 = *(a1 + 56);
  v370 = v102;
  v106 = [v92 tlkMaterialPresentOrRecoverableViaTLKShareForContextID:v104 forTrustStates:v105 error:&v370];
  v81 = v370;

  if ((v106 & 1) == 0)
  {
    if (v81 && ([*(a1 + 40) deps], v180 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v180, "lockStateTracker"), v181 = objc_claimAutoreleasedReturnValue(), v182 = objc_msgSend(v181, "isLockedError:", v81), v181, v180, v182))
    {
      v183 = [*(a1 + 32) zoneID];
      v184 = [v183 zoneName];
      v185 = sub_100019104(@"ckkskey", v184);

      if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v92;
        _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "Received a TLK(%@), but keybag appears to be locked. Entering a waiting state.", buf, 0xCu);
      }

      v396 = kSecurityRTCFieldIsLocked;
      v397 = &__kCFBooleanTrue;
      v186 = [NSDictionary dictionaryWithObjects:&v397 forKeys:&v396 count:1];
      [v316 addMetrics:v186];
      v187 = off_100344480;
    }

    else
    {
      v188 = [*(a1 + 32) zoneID];
      v189 = [v188 zoneName];
      v186 = sub_100019104(@"ckkskey", v189);

      if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v92;
        *&buf[12] = 2112;
        *&buf[14] = v81;
        _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_DEFAULT, "Received a TLK(%@) which we don't have in the local keychain: %@", buf, 0x16u);
      }

      v187 = &off_100344488;
    }

    [*(a1 + 32) setViewKeyHierarchyState:*v187];
    [v316 sendMetricWithResult:0 error:v81];
LABEL_113:
    v82 = 1;
    goto LABEL_114;
  }

  v107 = [v325 currentTLKPointer];
  v108 = [v107 currentKeyUUID];
  v109 = [v92 uuid];
  v297 = [v108 isEqualToString:v109];

  if ((v297 & 1) == 0)
  {
    [v325 setTlk:v92];
    v110 = [v92 uuid];
    v111 = [v325 currentTLKPointer];
    [v111 setCurrentKeyUUID:v110];
  }

  v368 = 0u;
  v369 = 0u;
  v366 = 0u;
  v367 = 0u;
  v308 = obja;
  v318 = [v308 countByEnumeratingWithState:&v366 objects:v395 count:16];
  if (!v318)
  {
    v301 = 0;
    v303 = 0;
    goto LABEL_152;
  }

  v301 = 0;
  v303 = 0;
  v313 = *v367;
  do
  {
    for (i = 0; i != v318; i = i + 1)
    {
      if (*v367 != v313)
      {
        objc_enumerationMutation(v308);
      }

      v113 = *(*(&v366 + 1) + 8 * i);
      v114 = [v113 parentKeyUUID];
      v115 = [v92 uuid];
      v116 = [v114 isEqualToString:v115];

      if (v116)
      {
        v117 = [v113 keyclass];
        if (![v117 isEqualToString:@"classA"])
        {
          goto LABEL_93;
        }

        v118 = [v325 currentClassAPointer];
        v119 = [v118 currentKeyUUID];
        if (v119)
        {
          v120 = [v325 classA];
          v121 = [v120 parentKeyUUID];
          v122 = [v92 uuid];
          if ([v121 isEqualToString:v122])
          {
            v123 = [v325 classA];
            v298 = v123 == 0;

            if (v298)
            {
LABEL_92:
              [v325 setClassA:v113];
              v117 = [v113 uuid];
              v124 = [v325 currentClassAPointer];
              [v124 setCurrentKeyUUID:v117];

              v303 = 1;
LABEL_93:
            }

            v125 = [v113 keyclass];
            if (![v125 isEqualToString:@"classC"])
            {
              goto LABEL_102;
            }

            v126 = [v325 currentClassCPointer];
            v127 = [v126 currentKeyUUID];
            if (v127)
            {
              v128 = [v325 classC];
              v129 = [v128 parentKeyUUID];
              v130 = [v92 uuid];
              if ([v129 isEqualToString:v130])
              {
                v131 = [v325 classC];
                v299 = v131 == 0;

                if (!v299)
                {
                  continue;
                }

LABEL_101:
                [v325 setClassC:v113];
                v125 = [v113 uuid];
                v132 = [v325 currentClassCPointer];
                [v132 setCurrentKeyUUID:v125];

                v301 = 1;
LABEL_102:

                continue;
              }
            }

            goto LABEL_101;
          }
        }

        goto LABEL_92;
      }
    }

    v318 = [v308 countByEnumeratingWithState:&v366 objects:v395 count:16];
  }

  while (v318);
LABEL_152:

  v190 = [v325 currentClassAPointer];
  v191 = [v190 currentKeyUUID];
  v192 = v191 == 0;

  if (!v192)
  {
    v309 = 0;
    goto LABEL_154;
  }

  v365 = v81;
  v309 = [CKKSKey randomKeyWrappedByParent:v92 keyclass:@"classA" error:&v365];
  v222 = v365;

  v364 = v222;
  [v309 saveKeyMaterialToKeychain:&v364];
  v81 = v364;

  if (v81)
  {
    v223 = [*(a1 + 40) deps];
    v224 = [v223 lockStateTracker];
    v225 = [v224 isLockedError:v81];

    v226 = [*(a1 + 32) zoneID];
    v227 = [v226 zoneName];
    v228 = sub_100019104(@"ckksheal", v227);

    if (v225)
    {
      if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_DEFAULT, "Couldn't create a new class A key, but keybag appears to be locked. Entering waitforunlock.", buf, 2u);
      }

      [*(a1 + 32) setViewKeyHierarchyState:@"waitforunlock"];
      v393 = kSecurityRTCFieldIsLocked;
      v394 = &__kCFBooleanTrue;
      v229 = [NSDictionary dictionaryWithObjects:&v394 forKeys:&v393 count:1];
      [v316 addMetrics:v229];

      [v316 sendMetricWithResult:0 error:v81];
    }

    else
    {
      if (os_log_type_enabled(v228, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v81;
        _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_ERROR, "couldn't create new classA key: %@", buf, 0xCu);
      }

      [*(a1 + 32) setViewKeyHierarchyState:@"error"];
      [v316 sendMetricWithResult:0 error:v81];
    }

    goto LABEL_113;
  }

  [v325 setClassA:v309];
  v291 = [v309 uuid];
  v292 = [v325 currentClassAPointer];
  [v292 setCurrentKeyUUID:v291];

  v81 = 0;
  v303 = 1;
LABEL_154:
  v193 = [v325 currentClassCPointer];
  v194 = [v193 currentKeyUUID];
  v195 = v194 == 0;

  if (v195)
  {
    v363 = v81;
    v300 = [CKKSKey randomKeyWrappedByParent:v92 keyclass:@"classC" error:&v363];
    v230 = v363;

    v362 = v230;
    [v300 saveKeyMaterialToKeychain:&v362];
    v81 = v362;

    if (v81)
    {
      v231 = [*(a1 + 40) deps];
      v232 = [v231 lockStateTracker];
      v233 = [v232 isLockedError:v81];

      v234 = [*(a1 + 32) zoneID];
      v235 = [v234 zoneName];
      v236 = sub_100019104(@"ckksheal", v235);

      if (v233)
      {
        if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, "Couldn't create a new class C key, but keybag appears to be locked. Entering waitforunlock.", buf, 2u);
        }

        v391 = kSecurityRTCFieldIsLocked;
        v392 = &__kCFBooleanTrue;
        v237 = [NSDictionary dictionaryWithObjects:&v392 forKeys:&v391 count:1];
        [v316 addMetrics:v237];

        [v316 sendMetricWithResult:0 error:v81];
        [*(a1 + 32) setViewKeyHierarchyState:@"waitforunlock"];
      }

      else
      {
        if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v81;
          _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_ERROR, "couldn't create new class C key: %@", buf, 0xCu);
        }

        [*(a1 + 32) setViewKeyHierarchyState:@"error"];
        [v316 sendMetricWithResult:0 error:v81];
      }

      goto LABEL_113;
    }

    [v325 setClassC:v300];
    v293 = [v300 uuid];
    v294 = [v325 currentClassCPointer];
    [v294 setCurrentKeyUUID:v293];

    v81 = 0;
    v301 = 1;
  }

  else
  {
    v300 = 0;
  }

  v196 = [*(a1 + 32) zoneID];
  v197 = [v196 zoneName];
  v198 = sub_100019104(@"ckksheal", v197);

  if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v325;
    _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_DEFAULT, "Attempting to move to new key hierarchy: %@", buf, 0xCu);
  }

  if (v309)
  {
    v199 = [*(a1 + 32) zoneID];
    v200 = [v309 CKRecordWithZoneID:v199];
    [v311 addObject:v200];
  }

  if (v300)
  {
    v201 = [*(a1 + 32) zoneID];
    v202 = [v300 CKRecordWithZoneID:v201];
    [v311 addObject:v202];
  }

  if ((v297 & 1) == 0)
  {
    v203 = [v325 currentTLKPointer];
    v204 = [*(a1 + 32) zoneID];
    v205 = [v203 CKRecordWithZoneID:v204];
    [v311 addObject:v205];
  }

  if (v303)
  {
    v206 = [v325 currentClassAPointer];
    v207 = [*(a1 + 32) zoneID];
    v208 = [v206 CKRecordWithZoneID:v207];
    [v311 addObject:v208];
  }

  if (v301)
  {
    v209 = [v325 currentClassCPointer];
    v210 = [*(a1 + 32) zoneID];
    v211 = [v209 CKRecordWithZoneID:v210];
    [v311 addObject:v211];
  }

  v212 = *(a1 + 56);
  v213 = [*(a1 + 40) deps];
  v214 = [v213 activeAccount];
  v215 = [v214 altDSID];
  v216 = [*(a1 + 40) deps];
  v361 = v81;
  v295 = +[CKKSHealTLKSharesOperation createMissingKeyShares:trustStates:databaseProvider:altDSID:sendMetric:error:](CKKSHealTLKSharesOperation, "createMissingKeyShares:trustStates:databaseProvider:altDSID:sendMetric:error:", v325, v212, 0, v215, [v216 sendMetric], &v361);
  v296 = v361;

  v389 = kSecurityRTCFieldNewTLKShares;
  v217 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v295 count]);
  v390 = v217;
  v218 = [NSDictionary dictionaryWithObjects:&v390 forKeys:&v389 count:1];
  [v316 addMetrics:v218];

  if (v296)
  {
    v219 = [*(a1 + 32) zoneID];
    v220 = [v219 zoneName];
    v221 = sub_100019104(@"ckksshare", v220);

    if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v296;
      _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_ERROR, "Unable to create TLK shares for new tlk: %@", buf, 0xCu);
    }

    [v316 sendMetricWithResult:0 error:v296];
    v82 = 0;
  }

  else
  {
    [v316 sendMetricWithResult:1 error:0];
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
    v238 = v295;
    v239 = [v238 countByEnumeratingWithState:&v357 objects:v388 count:16];
    if (v239)
    {
      v240 = *v358;
      do
      {
        for (j = 0; j != v239; j = j + 1)
        {
          if (*v358 != v240)
          {
            objc_enumerationMutation(v238);
          }

          v242 = *(*(&v357 + 1) + 8 * j);
          v243 = [*(a1 + 32) zoneID];
          v244 = [v242 CKRecordWithZoneID:v243];

          [v311 addObject:v244];
        }

        v239 = [v238 countByEnumeratingWithState:&v357 objects:v388 count:16];
      }

      while (v239);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v387 = 1;
    v245 = [AAFAnalyticsEventSecurity alloc];
    v384[0] = kSecurityRTCFieldTotalCKRecords;
    v246 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v311 count]);
    v247 = kSecurityRTCFieldIsPrioritized;
    v384[1] = kSecurityRTCFieldIsPrioritized;
    v385[0] = v246;
    v385[1] = &__kCFBooleanFalse;
    v248 = [NSDictionary dictionaryWithObjects:v385 forKeys:v384 count:2];
    v249 = [*(a1 + 40) deps];
    v250 = [v249 activeAccount];
    v251 = [v250 altDSID];
    v252 = [*(a1 + 40) deps];
    v253 = [v252 sendMetric];
    v306 = [v245 initWithCKKSMetrics:v248 altDSID:v251 eventName:kSecurityRTCEventNameUploadHealedTLKShares testsAreEnabled:0 category:v305 sendMetric:v253];

    v382 = v247;
    v383 = &__kCFBooleanTrue;
    v254 = [NSDictionary dictionaryWithObjects:&v383 forKeys:&v382 count:1];
    [v306 addMetrics:v254];

    v255 = [*(a1 + 32) zoneID];
    v256 = [v255 zoneName];
    v257 = sub_100019104(@"ckksheal", v256);

    if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
    {
      *v380 = 138412290;
      v381 = v311;
      _os_log_impl(&_mh_execute_header, v257, OS_LOG_TYPE_DEFAULT, "Saving new records %@", v380, 0xCu);
    }

    for (k = 0; ; k = v314 + 1)
    {
      v259 = 1000 * k;
      if (1000 * k >= [v311 count])
      {
        break;
      }

      v314 = k;
      v260 = [*(a1 + 32) zoneName];
      v261 = [NSString stringWithFormat:@"heal-cloudkit-modify-operation-finished-%@", v260];
      v350[0] = _NSConcreteStackBlock;
      v350[1] = 3221225472;
      v350[2] = sub_1000F4C6C;
      v350[3] = &unk_100343CC8;
      v262 = v311;
      v351 = v262;
      v356 = v259;
      v319 = v306;
      v352 = v319;
      v354 = buf;
      v263 = *(a1 + 48);
      v264 = *(a1 + 64);
      v353 = v263;
      v355 = v264;
      v265 = [NSBlockOperation named:v261 withBlock:v350];

      [*(a1 + 40) dependOnBeforeGroupFinished:v265];
      v266 = objc_alloc_init(NSMutableDictionary);
      v267 = [v262 count];
      if (&v267[-v259] >= 0x3E8)
      {
        v268 = 1000;
      }

      else
      {
        v268 = &v267[-v259];
      }

      v269 = [v262 subarrayWithRange:{v259, v268}];
      v348 = 0u;
      v349 = 0u;
      v346 = 0u;
      v347 = 0u;
      v270 = v269;
      v271 = [v270 countByEnumeratingWithState:&v346 objects:v379 count:16];
      if (v271)
      {
        v272 = *v347;
        do
        {
          for (m = 0; m != v271; m = m + 1)
          {
            if (*v347 != v272)
            {
              objc_enumerationMutation(v270);
            }

            v274 = *(*(&v346 + 1) + 8 * m);
            v275 = [v274 recordID];
            [v266 setObject:v274 forKeyedSubscript:v275];
          }

          v271 = [v270 countByEnumeratingWithState:&v346 objects:v379 count:16];
        }

        while (v271);
      }

      v276 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v270 recordIDsToDelete:0];
      [v276 setAtomic:1];
      [v276 setLongLived:0];
      v277 = [v276 configuration];
      [v277 setIsCloudKitSupportOperation:1];

      [v276 setQualityOfService:25];
      v278 = [*(a1 + 40) deps];
      v279 = [v278 ckoperationGroup];
      [v276 setGroup:v279];

      v280 = [*(a1 + 32) zoneID];
      v281 = [v280 zoneName];
      v282 = sub_100019104(@"ckksheal", v281);

      if (os_log_type_enabled(v282, OS_LOG_TYPE_DEFAULT))
      {
        v283 = [*(a1 + 40) deps];
        v284 = [v283 ckoperationGroup];
        *v380 = 138412290;
        v381 = v284;
        _os_log_impl(&_mh_execute_header, v282, OS_LOG_TYPE_DEFAULT, "Operation group is %@", v380, 0xCu);
      }

      v342[0] = _NSConcreteStackBlock;
      v342[1] = 3221225472;
      v342[2] = sub_1000F4CEC;
      v342[3] = &unk_100336E60;
      v343 = *(a1 + 32);
      v344 = buf;
      v345 = *(a1 + 64);
      [v276 setPerRecordSaveBlock:v342];
      v328[0] = _NSConcreteStackBlock;
      v328[1] = 3221225472;
      v328[2] = sub_1000F4EB0;
      v328[3] = &unk_100336EB0;
      objc_copyWeak(&v341, (a1 + 80));
      v329 = *(a1 + 32);
      v330 = v92;
      v331 = v309;
      v332 = v300;
      v333 = v325;
      v334 = v238;
      v285 = v316;
      v286 = *(a1 + 64);
      v335 = v285;
      v339 = v286;
      v340 = buf;
      v336 = v319;
      v287 = v266;
      v337 = v287;
      v288 = v265;
      v338 = v288;
      [v276 setModifyRecordsCompletionBlock:v328];
      v289 = [*(a1 + 40) setResultStateOperation];
      [v289 addDependency:v288];

      v290 = [*(a1 + 40) ckOperations];
      [v276 linearDependencies:v290];

      [*(*(*(a1 + 72) + 8) + 40) addObject:v276];
      objc_destroyWeak(&v341);
    }

    _Block_object_dispose(buf, 8);
    v82 = 1;
  }

  v81 = v296;
LABEL_114:

LABEL_115:
  return v82;
}

char *sub_1000F4C6C(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (&result[-*(a1 + 72)] <= 0x3E8)
  {
    [*(a1 + 40) sendMetricWithResult:*(*(*(a1 + 56) + 8) + 24) error:0];
    v3 = *(a1 + 48);
    v4 = *(*(*(a1 + 64) + 8) + 24);

    return [v3 sendMetricWithResult:v4 error:0];
  }

  return result;
}

void sub_1000F4CEC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v8 = [*(a1 + 32) zoneID];
    v9 = [v8 zoneName];
    v10 = sub_100019104(@"ckksheal", v9);

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "error on row: %@ %@", &v14, 0x16u);
    }
  }

  else
  {
    v11 = [*(a1 + 32) zoneID];
    v12 = [v11 zoneName];
    v10 = sub_100019104(@"ckksheal", v12);

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 recordName];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully completed upload for %@", &v14, 0xCu);
    }
  }
}

void sub_1000F4EB0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 128));
  v9 = [*(a1 + 32) zoneID];
  v10 = [v9 zoneName];
  v11 = sub_100019104(@"ckksheal", v10);

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Completed Key Heal CloudKit operation with error: %@", buf, 0xCu);
  }

  v12 = [WeakRetained deps];
  v13 = [v12 databaseProvider];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1000F5158;
  v26 = &unk_100336E88;
  v27 = v7;
  v28 = *(a1 + 32);
  v29 = v6;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  *&v19 = v14;
  *(&v19 + 1) = v15;
  v30 = v19;
  v31 = v18;
  v32 = *(a1 + 72);
  v33 = *(a1 + 80);
  v34 = WeakRetained;
  v37 = *(a1 + 112);
  v35 = *(a1 + 88);
  v36 = *(a1 + 96);
  v20 = v6;
  v21 = v7;
  [v13 dispatchSyncWithSQLTransaction:&v23];

  v22 = [WeakRetained operationQueue];
  [v22 addOperation:*(a1 + 104)];
}

uint64_t sub_1000F5158(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[CKKSAnalytics logger];
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) zoneID];
    v6 = [v5 zoneName];
    [v3 logUnrecoverableError:v4 forEvent:@"CKKSEventProcessHealKeyHierarchy" zoneName:v6 withAttributes:0];

    v7 = [*(a1 + 40) zoneID];
    v8 = [v7 zoneName];
    v9 = sub_100019104(@"ckksheal", v8);

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v75 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "couldn't save new key hierarchy to CloudKit: %@", buf, 0xCu);
    }

    *(*(*(a1 + 136) + 8) + 24) = 0;
    [*(a1 + 112) populateUnderlyingErrorsStartingWithRootError:*(a1 + 32)];
    *(*(*(a1 + 128) + 8) + 24) = 0;
    v11 = [*(a1 + 104) deps];
    [v11 intransactionCKWriteFailed:*(a1 + 32) attemptedRecordsChanged:*(a1 + 120)];

    v12 = *(a1 + 104);
    v13 = 1;
    [v12 setCloudkitWriteFailures:1];
    return v13;
  }

  v14 = [*(a1 + 40) zoneID];
  v15 = [v14 zoneName];
  [v3 logSuccessForEvent:@"CKKSEventProcessHealKeyHierarchy" zoneName:v15];

  v72 = 0u;
  v73 = 0u;
  v71 = 0u;
  v70 = 0u;
  v16 = *(a1 + 48);
  v17 = [v16 countByEnumeratingWithState:&v70 objects:v77 count:16];
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = *v71;
  do
  {
    v20 = 0;
    do
    {
      if (*v71 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v70 + 1) + 8 * v20);
      if ([*(a1 + 56) matchesCKRecord:v21])
      {
        v22 = *(a1 + 56);
LABEL_16:
        [v22 setStoredCKRecord:v21];
        goto LABEL_17;
      }

      if ([*(a1 + 64) matchesCKRecord:v21])
      {
        v22 = *(a1 + 64);
        goto LABEL_16;
      }

      if ([*(a1 + 72) matchesCKRecord:v21])
      {
        v22 = *(a1 + 72);
        goto LABEL_16;
      }

      v23 = [*(a1 + 80) currentTLKPointer];
      v24 = [v23 matchesCKRecord:v21];

      v25 = *(a1 + 80);
      if (v24)
      {
        v26 = [v25 currentTLKPointer];
      }

      else
      {
        v27 = [v25 currentClassAPointer];
        v28 = [v27 matchesCKRecord:v21];

        v29 = *(a1 + 80);
        if (v28)
        {
          v26 = [v29 currentClassAPointer];
        }

        else
        {
          v30 = [v29 currentClassCPointer];
          v31 = [v30 matchesCKRecord:v21];

          if (!v31)
          {
            goto LABEL_17;
          }

          v26 = [*(a1 + 80) currentClassCPointer];
        }
      }

      v32 = v26;
      [v26 setStoredCKRecord:v21];

LABEL_17:
      v20 = v20 + 1;
    }

    while (v18 != v20);
    v33 = [v16 countByEnumeratingWithState:&v70 objects:v77 count:16];
    v18 = v33;
  }

  while (v33);
LABEL_27:

  v34 = *(a1 + 56);
  v69 = 0;
  [v34 saveToDatabaseAsOnlyCurrentKeyForClassAndState:&v69];
  v35 = v69;
  v36 = *(a1 + 64);
  v68 = v35;
  [v36 saveToDatabaseAsOnlyCurrentKeyForClassAndState:&v68];
  v37 = v68;

  v38 = *(a1 + 72);
  v67 = v37;
  [v38 saveToDatabaseAsOnlyCurrentKeyForClassAndState:&v67];
  v39 = v67;

  v40 = [*(a1 + 80) currentTLKPointer];
  v66 = v39;
  [v40 saveToDatabase:&v66];
  v41 = v66;

  v42 = [*(a1 + 80) currentClassAPointer];
  v65 = v41;
  [v42 saveToDatabase:&v65];
  v43 = v65;

  v44 = [*(a1 + 80) currentClassCPointer];
  v64 = v43;
  [v44 saveToDatabase:&v64];
  v45 = v64;

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v46 = *(a1 + 88);
  v47 = [v46 countByEnumeratingWithState:&v60 objects:v76 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v61;
    do
    {
      v50 = 0;
      v51 = v45;
      do
      {
        if (*v61 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v52 = *(*(&v60 + 1) + 8 * v50);
        v59 = v51;
        [v52 saveToDatabase:&v59];
        v45 = v59;

        v50 = v50 + 1;
        v51 = v45;
      }

      while (v48 != v50);
      v48 = [v46 countByEnumeratingWithState:&v60 objects:v76 count:16];
    }

    while (v48);
  }

  v53 = *(a1 + 40);
  if (v45)
  {
    v54 = [v53 zoneID];
    v55 = [v54 zoneName];
    v56 = sub_100019104(@"ckksheal", v55);

    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v75 = v45;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "couldn't save new key hierarchy to database; this is very bad: %@", buf, 0xCu);
    }

    [*(a1 + 96) populateUnderlyingErrorsStartingWithRootError:v45];
    [*(a1 + 40) setViewKeyHierarchyState:@"error"];
    *(*(*(a1 + 128) + 8) + 24) = 0;

    return 0;
  }

  else
  {
    [v53 setViewKeyHierarchyState:@"process_key_hierarchy"];
    v57 = *(a1 + 104);
    v13 = 1;
    [v57 setNewCloudKitRecordsWritten:1];
  }

  return v13;
}

void sub_1000F5A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F5A58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained cloudkitWriteFailures])
  {
    v2 = sub_100019104(@"ckksheal", 0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Due to write failures, we'll try to fetch the current state", buf, 2u);
    }

    v3 = @"begin_fetch";
  }

  else
  {
    if (![WeakRetained newCloudKitRecordsWritten])
    {
      v5 = [WeakRetained intendedState];
      [WeakRetained setNextState:v5];

      goto LABEL_11;
    }

    v4 = sub_100019104(@"ckksheal", 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Some records were written! Process them", v6, 2u);
    }

    v3 = @"process_key_hierarchy";
  }

  [WeakRetained setNextState:v3];
LABEL_11:
}

void sub_1000F72B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F72D8(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"count(*)"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 asNSInteger];
}

void sub_1000FB198(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1000FB1BC(id *a1)
{
  v2 = [a1[4] isCancelled];
  v3 = [a1[5] zoneName];
  v4 = sub_100019104(@"ckksresync", v3);

  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKKSSynchronizeOperation cancelled, quitting", buf, 2u);
    }

    v5 = 0;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v30 = [a1[4] restartCount];
      *buf = 67109120;
      v37 = v30;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Beginning local resynchronize (attempt %u)", buf, 8u);
    }

    v31 = [CKOperationGroup CKKSGroupWithName:@"ckks-resync-local"];
    v6 = [CKKSOutgoingQueueOperation alloc];
    v7 = [a1[5] operationDependencies];
    v8 = [(CKKSOutgoingQueueOperation *)v6 initWithDependencies:v7 intending:@"ready" ckErrorState:@"process_outgoing_queue_failed" errorState:@"error"];

    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"resync-step%u-outgoing", 5 * [a1[4] restartCount] + 1);
    [(CKKSGroupOperation *)v8 setName:v9];

    [a1[4] runBeforeGroupFinished:v8];
    v10 = [CKKSIncomingQueueOperation alloc];
    v11 = [a1[5] operationDependencies];
    v12 = [(CKKSIncomingQueueOperation *)v10 initWithDependencies:v11 intending:@"ready" pendingClassAItemsRemainingState:@"ready" errorState:@"unhealthy" handleMismatchedViewItems:0];

    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"resync-step%u-incoming", 5 * [a1[4] restartCount] + 2);
    [(CKKSIncomingQueueOperation *)v12 setName:v13];

    [(CKKSResultOperation *)v12 addSuccessDependency:v8];
    [a1[4] runBeforeGroupFinished:v12];
    v14 = [CKKSReloadAllItemsOperation alloc];
    v15 = [a1[5] operationDependencies];
    v16 = [(CKKSReloadAllItemsOperation *)v14 initWithOperationDependencies:v15];

    v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"resync-step%u-reload", 5 * [a1[4] restartCount] + 3);
    [(CKKSReloadAllItemsOperation *)v16 setName:v17];

    [a1[4] runBeforeGroupFinished:v16];
    v18 = [CKKSIncomingQueueOperation alloc];
    v19 = [a1[5] operationDependencies];
    v20 = [(CKKSIncomingQueueOperation *)v18 initWithDependencies:v19 intending:@"ready" pendingClassAItemsRemainingState:@"ready" errorState:@"unhealthy" handleMismatchedViewItems:0];

    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"resync-step%u-incoming-again", 5 * [a1[4] restartCount] + 4);
    [(CKKSIncomingQueueOperation *)v20 setName:v21];

    [(CKKSResultOperation *)v20 addSuccessDependency:v16];
    [a1[4] runBeforeGroupFinished:v20];
    v22 = [CKKSScanLocalItemsOperation alloc];
    v23 = [a1[5] operationDependencies];
    v24 = [(CKKSScanLocalItemsOperation *)v22 initWithDependencies:v23 intending:@"ready" errorState:@"error" ckoperationGroup:v31];

    v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"resync-step%u-scan", 5 * [a1[4] restartCount] + 5);
    [(CKKSScanLocalItemsOperation *)v24 setName:v25];

    [(CKKSResultOperation *)v24 addSuccessDependency:v20];
    [a1[4] runBeforeGroupFinished:v24];
    v26 = objc_alloc_init(CKKSResultOperation);
    v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"resync-step%u-consider-restart", 5 * [a1[4] restartCount] + 6);
    [(CKKSResultOperation *)v26 setName:v27];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000FB764;
    v32[3] = &unk_100345310;
    objc_copyWeak(&v35, a1 + 6);
    v33 = a1[5];
    v28 = v24;
    v34 = v28;
    [(CKKSResultOperation *)v26 addExecutionBlock:v32];
    [(CKKSResultOperation *)v26 addSuccessDependency:v28];
    [a1[4] runBeforeGroupFinished:v26];

    objc_destroyWeak(&v35);
    v5 = 1;
    v4 = v31;
  }

  return v5;
}

void sub_1000FB764(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = +[NSMutableSet set];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = [a1[4] operationDependencies];
    v5 = [v4 activeManagedViews];

    v6 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v25 + 1) + 8 * i) zoneID];
          [v3 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v7);
    }

    v11 = [a1[4] operationDependencies];
    v12 = [v11 contextID];
    v24 = 0;
    v13 = [(CKKSSQLDatabaseObject *)CKKSIncomingQueueEntry allUUIDsWithContextID:v12 inZones:v3 error:&v24];
    v14 = v24;

    if (v14)
    {
      v15 = [a1[4] zoneName];
      v16 = sub_100019104(@"ckksresync", v15);

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Couldn't fetch IQEs: %@", buf, 0xCu);
      }
    }

    if ([a1[5] recordsFound] || objc_msgSend(v13, "count"))
    {
      if ([WeakRetained restartCount] < 3)
      {
        [WeakRetained setRestartCount:{objc_msgSend(WeakRetained, "restartCount") + 1}];
        v22 = [a1[4] zoneName];
        v23 = sub_100019104(@"ckksresync", v22);

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "restarting synchronization operation due to new local items", buf, 2u);
        }

        [WeakRetained groupStart];
      }

      else
      {
        v17 = [a1[4] zoneName];
        v18 = sub_100019104(@"ckksresync", v17);

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "restarted synchronization too often; Failing", buf, 2u);
        }

        v29 = NSLocalizedDescriptionKey;
        v30 = @"resynchronization restarted too many times; churn in database?";
        v19 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v20 = [NSError errorWithDomain:@"securityd" code:2 userInfo:v19];
        [WeakRetained setError:v20];
      }
    }
  }

  else
  {
    v21 = [a1[4] zoneName];
    v14 = sub_100019104(@"ckksresync", v21);

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "received callback for released object", buf, 2u);
    }
  }
}

uint64_t sub_1000FBD4C(uint64_t a1)
{
  v2 = [*(a1 + 32) deps];
  v3 = [v2 contextID];
  v4 = [*(a1 + 40) zoneID];
  v30 = 0;
  v5 = [(CKKSSQLDatabaseObject *)CKKSMirrorEntry allWithContextID:v3 zoneID:v4 error:&v30];
  v6 = v30;

  if (v6)
  {
    v7 = [*(a1 + 40) zoneID];
    v8 = [v7 zoneName];
    v9 = sub_100019104(@"ckksresync", v8);

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Couldn't fetch mirror items: %@", buf, 0xCu);
    }

    [*(a1 + 32) setError:v6];
    v10 = 0;
  }

  else
  {
    v24 = 0;
    v25 = v5;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v5;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = [v16 item];
          v18 = [*(a1 + 40) zoneID];
          v19 = [v17 CKRecordWithZoneID:v18];

          if (v19)
          {
            v20 = [*(a1 + 32) deps];
            [v20 intransactionCKRecordChanged:v19 resync:1];
          }

          else
          {
            v21 = [*(a1 + 40) zoneID];
            v22 = [v21 zoneName];
            v20 = sub_100019104(@"ckksresync", v22);

            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v33 = v16;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Couldn't make CKRecord for item: %@", buf, 0xCu);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v13);
    }

    v10 = 1;
    v6 = v24;
    v5 = v25;
  }

  return v10;
}

uint64_t sub_1000FCF5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000FCF74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 parsedSecureElementIdentity];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [v3 setAttemptedJoin:2];
  v7 = [*(a1 + 32) deviceInfo];
  v8 = [v7 machineID];
  [v3 setMachineID:v8];

  return v3;
}

void sub_1000FD010(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v45 = a6;
  v19 = a7;
  v20 = a8;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v22 = +[CKKSAnalytics logger];
  [v22 logResultForEvent:@"OctagonEventPrepareIdentity" hardFailure:1 result:v20];

  v44 = v18;
  if (v20)
  {
    v23 = sub_100006274("SecError");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "octagon: Error preparing identity: %@", buf, 0xCu);
    }

    [WeakRetained setError:v20];
    v24 = [WeakRetained finishedOp];
    [WeakRetained runBeforeGroupFinished:v24];

    v25 = *(a1 + 32);
    v26 = [WeakRetained error];
    [v25 sendMetricWithResult:0 error:v26];
  }

  else
  {
    v27 = sub_100006274("octagon");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v51 = v15;
      v52 = 2112;
      v53 = v16;
      v54 = 2112;
      v55 = v17;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Prepared: %@ %@ %@", buf, 0x20u);
    }

    [WeakRetained setPeerID:v15];
    v43 = v16;
    [WeakRetained setPermanentInfo:v16];
    v42 = v17;
    [WeakRetained setPermanentInfoSig:v17];
    [WeakRetained setStableInfo:v18];
    [WeakRetained setStableInfoSig:v45];
    v28 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v19 viewList];
      *buf = 138412546;
      v51 = v19;
      v52 = 2112;
      v53 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "New syncing policy: %@ views: %@", buf, 0x16u);
    }

    v30 = [WeakRetained deps];
    v31 = [v30 stateHolder];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000FD4FC;
    v47[3] = &unk_100338E48;
    v48 = v15;
    v32 = v19;
    v49 = v32;
    v46 = 0;
    v33 = [v31 persistAccountChanges:v47 error:&v46];
    v26 = v46;

    if (!v33 || v26)
    {
      v38 = sub_100006274("octagon");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v26;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Couldn't persist metadata: %@", buf, 0xCu);
      }

      [WeakRetained setError:v26];
      v39 = [WeakRetained finishedOp];
      [WeakRetained runBeforeGroupFinished:v39];

      v40 = *(a1 + 32);
      v41 = [WeakRetained error];
      [v40 sendMetricWithResult:0 error:v41];
    }

    else
    {
      v34 = [WeakRetained deps];
      v35 = [v34 ckks];
      [v35 setCurrentSyncingPolicy:v32];

      v36 = [WeakRetained intendedState];
      [WeakRetained setNextState:v36];

      v37 = [WeakRetained finishedOp];
      [WeakRetained runBeforeGroupFinished:v37];

      [*(a1 + 32) sendMetricWithResult:1 error:0];
    }

    v17 = v42;
    v16 = v43;
  }
}

id sub_1000FD4FC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPeerID:*(a1 + 32)];
  [v3 setTPSyncingPolicy:*(a1 + 40)];

  return v3;
}

void sub_1000FDAC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1000FDAE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained deps];
  v9 = [v8 stateHolder];
  v16 = 0;
  [v9 persistAccountChanges:&stru_100336FE0 error:&v16];
  v10 = v16;

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    if (!v6)
    {
      v15 = [WeakRetained intendedState];
      [WeakRetained setNextState:v15];

      v12 = v5;
      goto LABEL_6;
    }

    v11 = v6;
  }

  [WeakRetained setError:v11];
  v12 = 0;
LABEL_6:
  v13 = [WeakRetained accountSettings];
  [v13 setAccountSettings:v12];

  v14 = [WeakRetained finishedOp];
  [WeakRetained runBeforeGroupFinished:v14];
}

OTAccountMetadataClassC *__cdecl sub_1000FDC10(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  v3 = [(OTAccountMetadataClassC *)v2 peerID];
  [(OTAccountMetadataClassC *)v2 setOldPeerID:v3];

  return v2;
}

void sub_1000FE004(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100006274("octagon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138412802;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to fetch account settings for (%@,%@): %@", buf, 0x20u);
    }

    [*(a1 + 48) sendMetricWithResult:0 error:v6];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (v5 && [v5 count])
    {
      v10 = objc_alloc_init(OTAccountSettings);
      v11 = objc_alloc_init(OTWalrus);
      v12 = [v5 objectForKeyedSubscript:@"walrus"];

      if (v12)
      {
        v13 = [v5 objectForKeyedSubscript:@"walrus"];
        [v11 setEnabled:{objc_msgSend(v13, "value")}];
      }

      [v10 setWalrus:v11];
      v14 = objc_alloc_init(OTWebAccess);
      v15 = [v5 objectForKeyedSubscript:@"webAccess"];

      if (v15)
      {
        v16 = [v5 objectForKeyedSubscript:@"webAccess"];
        [v14 setEnabled:{objc_msgSend(v16, "value")}];
      }

      [v10 setWebAccess:v14];
      [*(a1 + 48) sendMetricWithResult:1 error:0];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v18 = NSLocalizedDescriptionKey;
      v19 = @"No account settings have been set";
      v17 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v10 = [NSError errorWithDomain:@"com.apple.security.octagon" code:53 userInfo:v17];

      [*(a1 + 48) sendMetricWithResult:0 error:v10];
      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_1000FE2E0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = sub_100006274("octagon");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v10 = a1[5];
      v18 = 138412802;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to fetch account settings for (%@,%@): %@", &v18, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v11 = objc_alloc_init(OTAccountSettings);
    v12 = objc_alloc_init(OTWalrus);
    v13 = [v6 walrus];
    if (v13)
    {
      v14 = [v6 walrus];
      [v12 setEnabled:{objc_msgSend(v14, "value")}];
    }

    else
    {
      [v12 setEnabled:0];
    }

    [v11 setWalrus:v12];
    v15 = objc_alloc_init(OTWebAccess);
    v16 = [v6 webAccess];
    if (v16)
    {
      v17 = [v6 webAccess];
      [v15 setEnabled:{objc_msgSend(v17, "value")}];
    }

    else
    {
      [v15 setEnabled:1];
    }

    [v11 setWebAccess:v15];
    (*(a1[6] + 16))();
  }
}

void sub_1000FECE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FECF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000FED10(uint64_t a1)
{
  v30[0] = kSecClass;
  v30[1] = kSecAttrAccessible;
  v31[0] = kSecClassInternetPassword;
  v31[1] = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v30[2] = kSecUseDataProtectionKeychain;
  v30[3] = kSecAttrAccessGroup;
  v31[2] = &__kCFBooleanTrue;
  v31[3] = @"com.apple.security.octagon";
  v30[4] = kSecAttrDescription;
  v2 = [NSString stringWithFormat:@"Octagon Account State (%@, %@)", *(a1 + 32), *(a1 + 40)];
  v31[4] = v2;
  v30[5] = kSecAttrServer;
  v3 = [NSString stringWithFormat:@"octagon-%@", *(a1 + 32)];
  v31[5] = v3;
  v30[6] = kSecAttrAccount;
  v4 = [NSString stringWithFormat:@"octagon-%@", *(a1 + 32)];
  v31[6] = v4;
  v30[7] = kSecAttrPath;
  v5 = [NSString stringWithFormat:@"octagon-%@", *(a1 + 40)];
  v31[7] = v5;
  v31[8] = &__kCFBooleanTrue;
  v30[8] = kSecAttrIsInvisible;
  v30[9] = kSecValueData;
  v6 = [*(a1 + 48) data];
  v31[9] = v6;
  v31[10] = &__kCFBooleanFalse;
  v30[10] = kSecAttrSynchronizable;
  v30[11] = kSecAttrSysBound;
  v31[11] = &off_100364540;
  v7 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:12];
  v8 = [v7 mutableCopy];

  result = 0;
  v9 = SecItemAdd(v8, &result);
  if (v9)
  {
    if (v9 == -25299)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      v11 = [(__CFDictionary *)v8 objectForKeyedSubscript:kSecClass];
      [v10 setObject:v11 forKeyedSubscript:kSecClass];

      v12 = [(__CFDictionary *)v8 objectForKeyedSubscript:kSecAttrSynchronizable];
      [v10 setObject:v12 forKeyedSubscript:kSecAttrSynchronizable];

      v13 = [(__CFDictionary *)v8 objectForKeyedSubscript:kSecAttrSyncViewHint];
      [v10 setObject:v13 forKeyedSubscript:kSecAttrSyncViewHint];

      v14 = [(__CFDictionary *)v8 objectForKeyedSubscript:kSecAttrAccessGroup];
      [v10 setObject:v14 forKeyedSubscript:kSecAttrAccessGroup];

      v15 = [(__CFDictionary *)v8 objectForKeyedSubscript:kSecAttrAccount];
      [v10 setObject:v15 forKeyedSubscript:kSecAttrAccount];

      v16 = [(__CFDictionary *)v8 objectForKeyedSubscript:kSecAttrServer];
      [v10 setObject:v16 forKeyedSubscript:kSecAttrServer];

      v17 = [(__CFDictionary *)v8 objectForKeyedSubscript:kSecAttrPath];
      [v10 setObject:v17 forKeyedSubscript:kSecAttrPath];

      v18 = [(__CFDictionary *)v8 objectForKeyedSubscript:kSecUseDataProtectionKeychain];
      [v10 setObject:v18 forKeyedSubscript:kSecUseDataProtectionKeychain];

      v19 = [(__CFDictionary *)v8 mutableCopy];
      [v19 setObject:0 forKeyedSubscript:kSecClass];
      v20 = SecItemUpdate(v10, v19);
      if (v20)
      {
        v21 = v20;
        v22 = [NSString stringWithFormat:@"SecItemUpdate: %d", v20];
        v23 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v21 description:v22];
        v24 = *(*(a1 + 56) + 8);
        v25 = *(v24 + 40);
        *(v24 + 40) = v23;
      }
    }

    else
    {
      v26 = v9;
      v10 = [NSString stringWithFormat:@"SecItemUpdate: %d", v9];
      v27 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v26 description:v10];
      v28 = *(*(a1 + 56) + 8);
      v19 = *(v28 + 40);
      *(v28 + 40) = v27;
    }
  }
}

void sub_1000FF400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000FF424(void *a1)
{
  v48[0] = kSecClass;
  v48[1] = kSecUseDataProtectionKeychain;
  v49[0] = kSecClassInternetPassword;
  v49[1] = &__kCFBooleanTrue;
  v49[2] = @"com.apple.security.octagon";
  v48[2] = kSecAttrAccessGroup;
  v48[3] = kSecAttrServer;
  v2 = [NSString stringWithFormat:@"octagon-%@", a1[4]];
  v49[3] = v2;
  v48[4] = kSecAttrAccount;
  v3 = [NSString stringWithFormat:@"octagon-%@", a1[4]];
  v49[4] = v3;
  v48[5] = kSecAttrPath;
  v4 = [NSString stringWithFormat:@"octagon-%@", a1[5]];
  v49[5] = v4;
  v49[6] = &__kCFBooleanFalse;
  v48[6] = kSecAttrSynchronizable;
  v48[7] = kSecReturnAttributes;
  v48[8] = kSecReturnData;
  v49[7] = &__kCFBooleanTrue;
  v49[8] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:9];
  v6 = [v5 mutableCopy];

  result = 0;
  v7 = SecItemCopyMatching(v6, &result);
  v8 = result;
  if (v7)
  {
    v9 = v7;
    if (result)
    {
      result = 0;
      CFRelease(v8);
    }

    v10 = v9;
    v46 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithFormat:@"SecItemCopyMatching: %d", v9];
    v47 = v8;
    v11 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v12 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v10 userInfo:v11];
    v13 = *(a1[8] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    goto LABEL_14;
  }

  v15 = [OTAccountMetadataClassC alloc];
  v16 = [v8 objectForKeyedSubscript:kSecValueData];
  v17 = [(OTAccountMetadataClassC *)v15 initWithData:v16];
  v18 = *(a1[9] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  if (!*(*(a1[9] + 8) + 40))
  {
    v31 = [NSError errorWithDomain:@"com.apple.security.octagon" code:10 description:@"couldn't deserialize account state"];
    v32 = *(a1[8] + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;

    v34 = a1[4];
    v35 = a1[5];
    v36 = a1[6];
    v37 = a1[7];
    v42 = 0;
    v38 = [OTAccountMetadataClassC deleteFromKeychainForContainer:v34 contextID:v35 personaAdapter:v36 personaUniqueString:v37 error:&v42];
    v39 = v42;
    v11 = v39;
    if (!v38 || v39)
    {
      v40 = sub_100006274("octagon");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v11;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "failed to reset account metadata in keychain, %@", buf, 0xCu);
      }
    }

    goto LABEL_14;
  }

  v20 = [v8 objectForKeyedSubscript:kSecAttrSysBound];
  if (!v20 || (v21 = v20, [v8 objectForKeyedSubscript:kSecAttrAccessible], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly), v22, v21, (v23 & 1) == 0))
  {
    v24 = *(*(a1[9] + 8) + 40);
    v25 = a1[4];
    v26 = a1[5];
    v27 = a1[6];
    v28 = a1[7];
    v29 = *(a1[8] + 8);
    v41 = *(v29 + 40);
    [v24 saveToKeychainForContainer:v25 contextID:v26 personaAdapter:v27 personaUniqueString:v28 error:&v41];
    v30 = v41;
    v11 = *(v29 + 40);
    *(v29 + 40) = v30;
LABEL_14:
  }
}

void sub_1000FFA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FFA94(void *a1)
{
  v8[0] = kSecClassInternetPassword;
  v8[1] = &__kCFBooleanTrue;
  v8[2] = @"com.apple.security.octagon";
  v2 = [NSString stringWithFormat:@"octagon-%@", a1[4], kSecClass, kSecUseDataProtectionKeychain, kSecAttrAccessGroup, kSecAttrServer];
  v8[3] = v2;
  v7[4] = kSecAttrAccount;
  v3 = [NSString stringWithFormat:@"octagon-%@", a1[4]];
  v8[4] = v3;
  v7[5] = kSecAttrPath;
  v4 = [NSString stringWithFormat:@"octagon-%@", a1[5]];
  v7[6] = kSecAttrSynchronizable;
  v8[5] = v4;
  v8[6] = &__kCFBooleanFalse;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:7];
  v6 = [v5 mutableCopy];

  *(*(a1[6] + 8) + 24) = SecItemDelete(v6);
}