@interface TelephonyManager
- (BOOL)acceptCallWithIdentifier:(id)a3;
- (BOOL)terminateCallWithIdentifier:(id)a3;
- (TelephonyManager)init;
- (TelephonyManagerDelegate)delegate;
- (id)getTUCallConnectionStatusString:(id)a3;
- (id)identifierForCall:(id)a3;
- (unsigned)nextSharedCallIdx;
- (unsigned)tbsCallStateForTUCall:(id)a3;
- (void)deleteCallWithSharedCallIndex:(unsigned __int8)a3;
- (void)dialCall:(id)a3 withProvider:(id)a4;
- (void)handleTUCallCenterCallStatusChangedNotification:(id)a3;
- (void)operatorNameChanged:(id)a3 name:(id)a4;
- (void)signalStrengthChanged:(id)a3 info:(id)a4;
- (void)updateCallList:(id)a3;
@end

@implementation TelephonyManager

- (TelephonyManager)init
{
  v17.receiver = self;
  v17.super_class = TelephonyManager;
  v2 = [(TelephonyManager *)&v17 init];
  if (v2)
  {
    v3 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
    ctClient = v2->_ctClient;
    v2->_ctClient = v3;

    [(CoreTelephonyClient *)v2->_ctClient setDelegate:v2];
    v2->_sharedCallIdxCounter = 0;
    v5 = objc_alloc_init(NSMutableArray);
    callList = v2->_callList;
    v2->_callList = v5;

    if (NSClassFromString(@"TUCallCenter"))
    {
      v7 = [TUCallCenter callCenterWithQueue:&_dispatch_main_q];
      tuCallCenter = v2->_tuCallCenter;
      v2->_tuCallCenter = v7;

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 addObserver:v2 selector:"handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];

      v10 = +[NSNotificationCenter defaultCenter];
      [v10 addObserver:v2 selector:"handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 addObserver:v2 selector:"handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterCallInvitationSentNotification object:0];

      v12 = +[NSNotificationCenter defaultCenter];
      [v12 addObserver:v2 selector:"handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterVideoCallInvitationSentNotification object:0];

      v13 = +[NSNotificationCenter defaultCenter];
      [v13 addObserver:v2 selector:"handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterCallerIDChangedNotification object:0];

      v14 = +[NSNotificationCenter defaultCenter];
      [v14 addObserver:v2 selector:"handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterCallConnectedNotification object:0];

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:v2 selector:"handleTUCallCenterCallStatusChangedNotification:" name:TUCallCenterCallContinuityStateChangedNotification object:0];
    }
  }

  return v2;
}

- (BOOL)acceptCallWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TelephonyManager *)self tuCallCenter];
  v6 = [v4 UUIDString];
  v24 = [v5 callWithUniqueProxyIdentifier:v6];

  v7 = qword_1000A9FE0;
  if (!v24)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005F394(v7, v4);
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v4 UUIDString];
    *buf = 136315394;
    v31 = "[TelephonyManager acceptCallWithIdentifier:]";
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s : Call found with identifier %@, sending accept call to TU Call Center!", buf, 0x16u);
  }

  v10 = [(TelephonyManager *)self tuCallCenter];
  [v10 answerCall:v24];

  obj = [(TelephonyManager *)self syncObject];
  objc_sync_enter(obj);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [(TelephonyManager *)self callList];
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [v15 identifier];
        v17 = [v16 isEqual:v4];

        if (v17)
        {
          self->_activeSharedCallIdx = [v15 sharedCallIdx];
          v18 = qword_1000A9FE0;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [(TelephonyManager *)self activeSharedCallIdx];
            *buf = 136315394;
            v31 = "[TelephonyManager acceptCallWithIdentifier:]";
            v32 = 1024;
            LODWORD(v33) = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s : Call Accepted! Active shared call index is now %u", buf, 0x12u);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  objc_sync_exit(obj);
  if ([v24 status] != 1)
  {
    v21 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005F2EC(v21, v24);
    }

LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  v20 = 1;
LABEL_22:

  return v20;
}

- (BOOL)terminateCallWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TelephonyManager *)self tuCallCenter];
  v6 = [v4 UUIDString];
  v7 = [v5 callWithUniqueProxyIdentifier:v6];

  if (!v7)
  {
    v13 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005F4EC(v13, v4);
    }

    goto LABEL_11;
  }

  v8 = [(TelephonyManager *)self tuCallCenter];
  [v8 disconnectCall:v7];

  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v4 UUIDString];
    v16 = 136315394;
    v17 = "[TelephonyManager terminateCallWithIdentifier:]";
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s : call ID %@, terminated!", &v16, 0x16u);
  }

  if ([v7 status] != 5 && objc_msgSend(v7, "status") != 6)
  {
    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005F448(v14, v7);
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v12 = 1;
LABEL_12:

  return v12;
}

- (void)dialCall:(id)a3 withProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(TUCallProviderManager);
  v9 = [v8 providerWithIdentifier:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v8 telephonyProvider];
  }

  v12 = v11;

  v13 = [[TUDialRequest alloc] initWithProvider:v12];
  v14 = [TUHandle normalizedHandleWithDestinationID:v6];
  [v13 setHandle:v14];

  v15 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Dialing '%@' with TU provider %@", &v17, 0x16u);
  }

  v16 = [(TelephonyManager *)self tuCallCenter];
  [v16 launchAppForDialRequest:v13 completion:0];
}

- (void)updateCallList:(id)a3
{
  v4 = a3;
  obj = [(TelephonyManager *)self syncObject];
  objc_sync_enter(obj);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v63 = v4;
  v5 = [v63 countByEnumeratingWithState:&v83 objects:v98 count:16];
  if (!v5)
  {
    v62 = 0;
    v64 = 0;
    goto LABEL_47;
  }

  v62 = 0;
  v64 = 0;
  v68 = *v84;
  do
  {
    v69 = v5;
    for (i = 0; i != v69; i = i + 1)
    {
      if (*v84 != v68)
      {
        objc_enumerationMutation(v63);
      }

      v7 = *(*(&v83 + 1) + 8 * i);
      v8 = [(TelephonyManager *)self identifierForCall:v7];
      v77 = 0;
      v78 = &v77;
      v79 = 0x3032000000;
      v80 = sub_100055868;
      v81 = sub_100055878;
      v82 = 0;
      v9 = [(TelephonyManager *)self callList];
      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_100055880;
      v74[3] = &unk_100095CA8;
      v10 = v8;
      v75 = v10;
      v76 = &v77;
      [v9 enumerateObjectsUsingBlock:v74];

      v11 = qword_1000A9FE0;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(TelephonyManager *)self getTUCallConnectionStatusString:v7];
        v13 = [v7 handle];
        v14 = [v13 value];
        v15 = [@"tel:" stringByAppendingString:v14];
        v16 = [(TelephonyManager *)self identifierForCall:v7];
        *buf = 136316162;
        v89 = "[TelephonyManager updateCallList:]";
        v90 = 2112;
        v91 = v12;
        v92 = 2112;
        v93 = v15;
        v94 = 2112;
        v95 = v16;
        v96 = 2112;
        v97 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s : TUCall state %@, URI %@, id  %@, being updated.  TU CALL INFO : %@", buf, 0x34u);
      }

      v17 = [(TelephonyManager *)self tbsCallStateForTUCall:v7];
      v18 = v78[5];
      if (!v18 && v17 != 7)
      {
        v19 = objc_alloc_init(CallInfo);
        v20 = [(TelephonyManager *)self identifierForCall:v7];
        [(CallInfo *)v19 setIdentifier:v20];

        [(CallInfo *)v19 setSharedCallIdx:[(TelephonyManager *)self nextSharedCallIdx]];
        [(CallInfo *)v19 setCallState:v17];
        if ([v7 isOutgoing])
        {
          [(CallInfo *)v19 setCallFlags:1];
        }

        v21 = [v7 handle];
        v22 = [v21 value];
        if (v22)
        {
          v67 = [v7 handle];
          v66 = [v67 value];
          v65 = [@"tel:" stringByAppendingString:v66];
          v23 = v65;
        }

        else
        {
          v23 = &stru_100098610;
        }

        [(CallInfo *)v19 setCallURI:v23];
        if (v22)
        {
        }

        v35 = [(CallInfo *)v19 callURI];
        v36 = [v35 isEqualToString:&stru_100098610];

        if (v36)
        {
          v37 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v89 = "[TelephonyManager updateCallList:]";
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%s : Call info withheld by network", buf, 0xCu);
          }

          [(CallInfo *)v19 setCallFlags:[(CallInfo *)v19 callFlags]| 4];
        }

        [(NSMutableArray *)self->_callList addObject:v19];
        v64 = 1;
LABEL_32:

        goto LABEL_33;
      }

      v24 = [v18 callURI];
      if ([v24 isEqualToString:&stru_100098610])
      {
        v25 = [v7 handle];
        v26 = [v25 value];
        v27 = v26 == 0;

        if (!v27)
        {
          v28 = [v7 handle];
          v29 = [v28 value];
          v30 = [@"tel:" stringByAppendingString:v29];
          [v78[5] setCallURI:v30];

          v31 = qword_1000A9FE0;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v78[5] callURI];
            *buf = 136315394;
            v89 = "[TelephonyManager updateCallList:]";
            v90 = 2112;
            v91 = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s : Call info is no longer witheld by network! CallURI is now %@", buf, 0x16u);
          }

          v33 = [v78[5] callFlags];
          [v78[5] setCallFlags:v33 & 0xFFFFFFFB];
          v64 = 1;
        }
      }

      else
      {
      }

      if (v17 == 7 || v17 == [v78[5] callState])
      {
        v19 = qword_1000A9FE0;
        if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v78[5] callDescription];
          *buf = 136315394;
          v89 = "[TelephonyManager updateCallList:]";
          v90 = 2112;
          v91 = v34;
          _os_log_impl(&_mh_execute_header, &v19->super, OS_LOG_TYPE_DEFAULT, "%s : Ignorning update. No relevent TBSService update from TU Call Center - %@", buf, 0x16u);
        }

        goto LABEL_32;
      }

      v38 = qword_1000A9FE0;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v78[5] identifier];
        v40 = [v78[5] tbsCallStateToString:v17];
        v41 = [v78[5] tbsCallStateToString:{objc_msgSend(v78[5], "callState")}];
        *buf = 136315906;
        v89 = "[TelephonyManager updateCallList:]";
        v90 = 2112;
        v91 = v39;
        v92 = 2112;
        v93 = v40;
        v94 = 2112;
        v95 = v41;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s : Updated existing call %@, to TBS state %@, was previously in TBS state %@", buf, 0x2Au);
      }

      v42 = [v78[5] callState];
      if (v17)
      {
        v43 = v42 == 0;
      }

      else
      {
        v43 = 0;
      }

      v44 = v43;
      [v78[5] setCallState:v17];
      v62 |= v44;
      v64 = 1;
LABEL_33:

      _Block_object_dispose(&v77, 8);
    }

    v5 = [v63 countByEnumeratingWithState:&v83 objects:v98 count:16];
  }

  while (v5);
LABEL_47:

  v45 = [v63 count];
  if (v45 != [(NSMutableArray *)self->_callList count])
  {
    v46 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v89 = "[TelephonyManager updateCallList:]";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%s : Mismatch between TUCallList and callList, removing calls no longer in TUCallList", buf, 0xCu);
    }

    v47 = [v63 valueForKey:@"uniqueIdentifier"];
    v48 = [NSSet setWithArray:v47];

    v49 = +[NSMutableArray array];
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v50 = self->_callList;
    v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v70 objects:v87 count:16];
    if (v51)
    {
      v52 = *v71;
      do
      {
        for (j = 0; j != v51; j = j + 1)
        {
          if (*v71 != v52)
          {
            objc_enumerationMutation(v50);
          }

          v54 = *(*(&v70 + 1) + 8 * j);
          v55 = [v54 identifier];
          v56 = [v48 containsObject:v55];

          if ((v56 & 1) == 0)
          {
            v57 = qword_1000A9FE0;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v58 = [v54 identifier];
              *buf = 136315394;
              v89 = "[TelephonyManager updateCallList:]";
              v90 = 2112;
              v91 = v58;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%s : Removing call with identifier %@, since it is no longer in TUCallList", buf, 0x16u);
            }

            [v49 addObject:v54];
          }
        }

        v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v70 objects:v87 count:16];
      }

      while (v51);
    }

    [(NSMutableArray *)self->_callList removeObjectsInArray:v49];
  }

  if (v64)
  {
    v59 = [(TelephonyManager *)self delegate];
    [v59 notifyCentralsOfCharacteristicsSubscribed];

    if (v62)
    {
      v60 = [(TelephonyManager *)self delegate];
      [v60 notifyIncomingCall];
    }
  }

  objc_sync_exit(obj);
}

- (void)deleteCallWithSharedCallIndex:(unsigned __int8)a3
{
  v3 = a3;
  obj = [(TelephonyManager *)self syncObject];
  objc_sync_enter(obj);
  v5 = [(TelephonyManager *)self callList];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100055C10;
  v21[3] = &unk_100095CC8;
  v22 = v3;
  v6 = [v5 indexOfObjectPassingTest:v21];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005F59C(v3, v7);
    }
  }

  else
  {
    [(NSMutableArray *)self->_callList removeObjectAtIndex:v6];
    v8 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "[TelephonyManager deleteCallWithSharedCallIndex:]";
      v26 = 1024;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s : Deleted CallInfo with sharedCallIndex %u from callList.", buf, 0x12u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(TelephonyManager *)self callList];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ([v13 callState] == 3)
          {
            v14 = qword_1000A9FE0;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [v13 sharedCallIdx];
              *buf = 136315394;
              v25 = "[TelephonyManager deleteCallWithSharedCallIndex:]";
              v26 = 1024;
              v27 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s : active callindex is now %u", buf, 0x12u);
            }

            self->_activeSharedCallIdx = [v13 sharedCallIdx];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v10);
    }
  }

  objc_sync_exit(obj);
}

- (void)operatorNameChanged:(id)a3 name:(id)a4
{
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a4;
    v7 = v5;
    v8 = 136315394;
    v9 = "[TelephonyManager operatorNameChanged:name:]";
    v10 = 2080;
    v11 = [a4 UTF8String];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s : Provider name changed: %s", &v8, 0x16u);
  }
}

- (void)signalStrengthChanged:(id)a3 info:(id)a4
{
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [a4 bars];
    v8 = [v7 stringValue];
    v9 = 136315394;
    v10 = "[TelephonyManager signalStrengthChanged:info:]";
    v11 = 2080;
    v12 = [v8 UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s : Signal strength changed: %s", &v9, 0x16u);
  }
}

- (void)handleTUCallCenterCallStatusChangedNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100055E84;
  block[3] = &unk_100094CB8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)identifierForCall:(id)a3
{
  v3 = a3;
  v4 = [NSUUID alloc];
  v5 = [v3 uniqueProxyIdentifier];

  v6 = [v4 initWithUUIDString:v5];

  return v6;
}

- (unsigned)nextSharedCallIdx
{
  v3 = [(TelephonyManager *)self sharedCallIdxCounter];
  if (((v3 + 1) & 0x100) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 + 1;
  }

  [(TelephonyManager *)self setSharedCallIdxCounter:v4];
  while (1)
  {
    v5 = [(TelephonyManager *)self callList];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100056078;
    v10[3] = &unk_100095CF0;
    v10[4] = self;
    v6 = [v5 indexOfObjectPassingTest:v10];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v7 = [(TelephonyManager *)self sharedCallIdxCounter];
    if (((v7 + 1) & 0x100) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 + 1;
    }

    [(TelephonyManager *)self setSharedCallIdxCounter:v8];
  }

  return [(TelephonyManager *)self sharedCallIdxCounter];
}

- (unsigned)tbsCallStateForTUCall:(id)a3
{
  v3 = a3;
  v4 = [v3 status];
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if ([v3 hasSentInvitation])
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }

    else if (v4 == 4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 7;
    }
  }

  else
  {
    if (v4 == 2)
    {
      v5 = 4;
    }

    else
    {
      v5 = 7;
    }

    if (v4 == 1)
    {
      v6 = 3;
    }

    else
    {
      v6 = v5;
    }
  }

  return v6;
}

- (id)getTUCallConnectionStatusString:(id)a3
{
  v3 = a3;
  if ([v3 isConnected])
  {
    v4 = @"CONNECTED";
  }

  else if ([v3 isConnecting])
  {
    v4 = @"CONNECTING";
  }

  else if ([v3 isIncoming])
  {
    v4 = @"INCOMING";
  }

  else if ([v3 isOutgoing])
  {
    if ([v3 hasSentInvitation])
    {
      v4 = @"OUTGOING - ALERTING";
    }

    else
    {
      v4 = @"OUTGOING - DIALING";
    }
  }

  else if ([v3 isBlocked])
  {
    v4 = @"BLOCKED";
  }

  else
  {
    v4 = [NSString stringWithFormat:@"UNKNOWN TUCALL STATE! For call %@", v3];
  }

  return v4;
}

- (TelephonyManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end