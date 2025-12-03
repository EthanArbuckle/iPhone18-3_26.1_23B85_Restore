@interface TelephonyManager
- (BOOL)acceptCallWithIdentifier:(id)identifier;
- (BOOL)terminateCallWithIdentifier:(id)identifier;
- (TelephonyManager)init;
- (TelephonyManagerDelegate)delegate;
- (id)getTUCallConnectionStatusString:(id)string;
- (id)identifierForCall:(id)call;
- (unsigned)nextSharedCallIdx;
- (unsigned)tbsCallStateForTUCall:(id)call;
- (void)deleteCallWithSharedCallIndex:(unsigned __int8)index;
- (void)dialCall:(id)call withProvider:(id)provider;
- (void)handleTUCallCenterCallStatusChangedNotification:(id)notification;
- (void)operatorNameChanged:(id)changed name:(id)name;
- (void)signalStrengthChanged:(id)changed info:(id)info;
- (void)updateCallList:(id)list;
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

- (BOOL)acceptCallWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tuCallCenter = [(TelephonyManager *)self tuCallCenter];
  uUIDString = [identifierCopy UUIDString];
  v24 = [tuCallCenter callWithUniqueProxyIdentifier:uUIDString];

  v7 = qword_1000A9FE0;
  if (!v24)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005F394(v7, identifierCopy);
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    uUIDString2 = [identifierCopy UUIDString];
    *buf = 136315394;
    v31 = "[TelephonyManager acceptCallWithIdentifier:]";
    v32 = 2112;
    v33 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s : Call found with identifier %@, sending accept call to TU Call Center!", buf, 0x16u);
  }

  tuCallCenter2 = [(TelephonyManager *)self tuCallCenter];
  [tuCallCenter2 answerCall:v24];

  obj = [(TelephonyManager *)self syncObject];
  objc_sync_enter(obj);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  callList = [(TelephonyManager *)self callList];
  v12 = [callList countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(callList);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        identifier = [v15 identifier];
        v17 = [identifier isEqual:identifierCopy];

        if (v17)
        {
          self->_activeSharedCallIdx = [v15 sharedCallIdx];
          v18 = qword_1000A9FE0;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            activeSharedCallIdx = [(TelephonyManager *)self activeSharedCallIdx];
            *buf = 136315394;
            v31 = "[TelephonyManager acceptCallWithIdentifier:]";
            v32 = 1024;
            LODWORD(v33) = activeSharedCallIdx;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s : Call Accepted! Active shared call index is now %u", buf, 0x12u);
          }
        }
      }

      v12 = [callList countByEnumeratingWithState:&v25 objects:v29 count:16];
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

- (BOOL)terminateCallWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  tuCallCenter = [(TelephonyManager *)self tuCallCenter];
  uUIDString = [identifierCopy UUIDString];
  v7 = [tuCallCenter callWithUniqueProxyIdentifier:uUIDString];

  if (!v7)
  {
    v13 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005F4EC(v13, identifierCopy);
    }

    goto LABEL_11;
  }

  tuCallCenter2 = [(TelephonyManager *)self tuCallCenter];
  [tuCallCenter2 disconnectCall:v7];

  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    uUIDString2 = [identifierCopy UUIDString];
    v16 = 136315394;
    v17 = "[TelephonyManager terminateCallWithIdentifier:]";
    v18 = 2112;
    v19 = uUIDString2;
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

- (void)dialCall:(id)call withProvider:(id)provider
{
  callCopy = call;
  providerCopy = provider;
  v8 = objc_alloc_init(TUCallProviderManager);
  v9 = [v8 providerWithIdentifier:providerCopy];
  v10 = v9;
  if (v9)
  {
    telephonyProvider = v9;
  }

  else
  {
    telephonyProvider = [v8 telephonyProvider];
  }

  v12 = telephonyProvider;

  v13 = [[TUDialRequest alloc] initWithProvider:v12];
  v14 = [TUHandle normalizedHandleWithDestinationID:callCopy];
  [v13 setHandle:v14];

  v15 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = callCopy;
    v19 = 2112;
    v20 = providerCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Dialing '%@' with TU provider %@", &v17, 0x16u);
  }

  tuCallCenter = [(TelephonyManager *)self tuCallCenter];
  [tuCallCenter launchAppForDialRequest:v13 completion:0];
}

- (void)updateCallList:(id)list
{
  listCopy = list;
  obj = [(TelephonyManager *)self syncObject];
  objc_sync_enter(obj);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v63 = listCopy;
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
      callList = [(TelephonyManager *)self callList];
      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_100055880;
      v74[3] = &unk_100095CA8;
      v10 = v8;
      v75 = v10;
      v76 = &v77;
      [callList enumerateObjectsUsingBlock:v74];

      v11 = qword_1000A9FE0;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(TelephonyManager *)self getTUCallConnectionStatusString:v7];
        handle = [v7 handle];
        value = [handle value];
        v15 = [@"tel:" stringByAppendingString:value];
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

        handle2 = [v7 handle];
        value2 = [handle2 value];
        if (value2)
        {
          handle3 = [v7 handle];
          value3 = [handle3 value];
          v65 = [@"tel:" stringByAppendingString:value3];
          v23 = v65;
        }

        else
        {
          v23 = &stru_100098610;
        }

        [(CallInfo *)v19 setCallURI:v23];
        if (value2)
        {
        }

        callURI = [(CallInfo *)v19 callURI];
        v36 = [callURI isEqualToString:&stru_100098610];

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

      callURI2 = [v18 callURI];
      if ([callURI2 isEqualToString:&stru_100098610])
      {
        handle4 = [v7 handle];
        value4 = [handle4 value];
        v27 = value4 == 0;

        if (!v27)
        {
          handle5 = [v7 handle];
          value5 = [handle5 value];
          v30 = [@"tel:" stringByAppendingString:value5];
          [v78[5] setCallURI:v30];

          v31 = qword_1000A9FE0;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            callURI3 = [v78[5] callURI];
            *buf = 136315394;
            v89 = "[TelephonyManager updateCallList:]";
            v90 = 2112;
            v91 = callURI3;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s : Call info is no longer witheld by network! CallURI is now %@", buf, 0x16u);
          }

          callFlags = [v78[5] callFlags];
          [v78[5] setCallFlags:callFlags & 0xFFFFFFFB];
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
          callDescription = [v78[5] callDescription];
          *buf = 136315394;
          v89 = "[TelephonyManager updateCallList:]";
          v90 = 2112;
          v91 = callDescription;
          _os_log_impl(&_mh_execute_header, &v19->super, OS_LOG_TYPE_DEFAULT, "%s : Ignorning update. No relevent TBSService update from TU Call Center - %@", buf, 0x16u);
        }

        goto LABEL_32;
      }

      v38 = qword_1000A9FE0;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [v78[5] identifier];
        v40 = [v78[5] tbsCallStateToString:v17];
        v41 = [v78[5] tbsCallStateToString:{objc_msgSend(v78[5], "callState")}];
        *buf = 136315906;
        v89 = "[TelephonyManager updateCallList:]";
        v90 = 2112;
        v91 = identifier;
        v92 = 2112;
        v93 = v40;
        v94 = 2112;
        v95 = v41;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s : Updated existing call %@, to TBS state %@, was previously in TBS state %@", buf, 0x2Au);
      }

      callState = [v78[5] callState];
      if (v17)
      {
        v43 = callState == 0;
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
          identifier2 = [v54 identifier];
          v56 = [v48 containsObject:identifier2];

          if ((v56 & 1) == 0)
          {
            v57 = qword_1000A9FE0;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              identifier3 = [v54 identifier];
              *buf = 136315394;
              v89 = "[TelephonyManager updateCallList:]";
              v90 = 2112;
              v91 = identifier3;
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
    delegate = [(TelephonyManager *)self delegate];
    [delegate notifyCentralsOfCharacteristicsSubscribed];

    if (v62)
    {
      delegate2 = [(TelephonyManager *)self delegate];
      [delegate2 notifyIncomingCall];
    }
  }

  objc_sync_exit(obj);
}

- (void)deleteCallWithSharedCallIndex:(unsigned __int8)index
{
  indexCopy = index;
  obj = [(TelephonyManager *)self syncObject];
  objc_sync_enter(obj);
  callList = [(TelephonyManager *)self callList];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100055C10;
  v21[3] = &unk_100095CC8;
  v22 = indexCopy;
  v6 = [callList indexOfObjectPassingTest:v21];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005F59C(indexCopy, v7);
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
      v27 = indexCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s : Deleted CallInfo with sharedCallIndex %u from callList.", buf, 0x12u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    callList2 = [(TelephonyManager *)self callList];
    v10 = [callList2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(callList2);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ([v13 callState] == 3)
          {
            v14 = qword_1000A9FE0;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              sharedCallIdx = [v13 sharedCallIdx];
              *buf = 136315394;
              v25 = "[TelephonyManager deleteCallWithSharedCallIndex:]";
              v26 = 1024;
              v27 = sharedCallIdx;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s : active callindex is now %u", buf, 0x12u);
            }

            self->_activeSharedCallIdx = [v13 sharedCallIdx];
          }
        }

        v10 = [callList2 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v10);
    }
  }

  objc_sync_exit(obj);
}

- (void)operatorNameChanged:(id)changed name:(id)name
{
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    nameCopy = name;
    v7 = v5;
    v8 = 136315394;
    v9 = "[TelephonyManager operatorNameChanged:name:]";
    v10 = 2080;
    uTF8String = [name UTF8String];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s : Provider name changed: %s", &v8, 0x16u);
  }
}

- (void)signalStrengthChanged:(id)changed info:(id)info
{
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    bars = [info bars];
    stringValue = [bars stringValue];
    v9 = 136315394;
    v10 = "[TelephonyManager signalStrengthChanged:info:]";
    v11 = 2080;
    uTF8String = [stringValue UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s : Signal strength changed: %s", &v9, 0x16u);
  }
}

- (void)handleTUCallCenterCallStatusChangedNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100055E84;
  block[3] = &unk_100094CB8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)identifierForCall:(id)call
{
  callCopy = call;
  v4 = [NSUUID alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];

  v6 = [v4 initWithUUIDString:uniqueProxyIdentifier];

  return v6;
}

- (unsigned)nextSharedCallIdx
{
  sharedCallIdxCounter = [(TelephonyManager *)self sharedCallIdxCounter];
  if (((sharedCallIdxCounter + 1) & 0x100) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = sharedCallIdxCounter + 1;
  }

  [(TelephonyManager *)self setSharedCallIdxCounter:v4];
  while (1)
  {
    callList = [(TelephonyManager *)self callList];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100056078;
    v10[3] = &unk_100095CF0;
    v10[4] = self;
    v6 = [callList indexOfObjectPassingTest:v10];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    sharedCallIdxCounter2 = [(TelephonyManager *)self sharedCallIdxCounter];
    if (((sharedCallIdxCounter2 + 1) & 0x100) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = sharedCallIdxCounter2 + 1;
    }

    [(TelephonyManager *)self setSharedCallIdxCounter:v8];
  }

  return [(TelephonyManager *)self sharedCallIdxCounter];
}

- (unsigned)tbsCallStateForTUCall:(id)call
{
  callCopy = call;
  status = [callCopy status];
  if (status > 2)
  {
    if (status == 3)
    {
      if ([callCopy hasSentInvitation])
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }

    else if (status == 4)
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
    if (status == 2)
    {
      v5 = 4;
    }

    else
    {
      v5 = 7;
    }

    if (status == 1)
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

- (id)getTUCallConnectionStatusString:(id)string
{
  stringCopy = string;
  if ([stringCopy isConnected])
  {
    stringCopy = @"CONNECTED";
  }

  else if ([stringCopy isConnecting])
  {
    stringCopy = @"CONNECTING";
  }

  else if ([stringCopy isIncoming])
  {
    stringCopy = @"INCOMING";
  }

  else if ([stringCopy isOutgoing])
  {
    if ([stringCopy hasSentInvitation])
    {
      stringCopy = @"OUTGOING - ALERTING";
    }

    else
    {
      stringCopy = @"OUTGOING - DIALING";
    }
  }

  else if ([stringCopy isBlocked])
  {
    stringCopy = @"BLOCKED";
  }

  else
  {
    stringCopy = [NSString stringWithFormat:@"UNKNOWN TUCALL STATE! For call %@", stringCopy];
  }

  return stringCopy;
}

- (TelephonyManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end