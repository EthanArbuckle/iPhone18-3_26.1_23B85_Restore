@interface _SESRKESession
+ (BOOL)isDebugAllowAllEndpointsEnabled;
+ (id)_debugGetReaderIdentifiersForAllEndpoints:(id *)a3;
+ (id)getAllowedVehicleIdentifiersForConnection:(id)a3 error:(id *)a4;
+ (id)validateEntitlements:(id)a3;
- (_NSRange)subscriptionRange;
- (_SESRKESession)initWithRemoteObject:(id)a3 subscriptionRange:(_NSRange)a4 queue:(id)a5;
- (id)updateAllowlistedVehicles;
- (void)cancelRKEFunction:(unint64_t)a3 readerIdentifier:(id)a4 reply:(id)a5;
- (void)continueExecutingRKEFunction:(unint64_t)a3 action:(unint64_t)a4 arbitraryData:(id)a5 readerIdentifier:(id)a6 reply:(id)a7;
- (void)dealloc;
- (void)didCreateKey:(id)a3;
- (void)didInvalidateWithError:(id)a3;
- (void)didReceiveContinuationRequestFor:(id)a3 actionIdentifier:(id)a4 arbitraryData:(id)a5 keyIdentifier:(id)a6;
- (void)didReceivePassthroughMessage:(id)a3 keyIdentifier:(id)a4;
- (void)endSession:(id)a3;
- (void)endSessionInternal:(id)a3;
- (void)getVehicleReports:(id)a3;
- (void)isPassiveEntryAvailable:(id)a3 reply:(id)a4;
- (void)releaseRemoteObject;
- (void)sendEvent:(id)a3 keyIdentifier:(id)a4;
- (void)sendPassthroughMessage:(id)a3 readerIdentifier:(id)a4 reply:(id)a5;
- (void)sendRKEFunction:(unint64_t)a3 action:(unint64_t)a4 readerIdentifier:(id)a5 authorization:(id)a6 isEnduring:(BOOL)a7 isHandlingExternal:(BOOL)a8 completion:(id)a9;
- (void)setDidEndCallback:(id)a3;
- (void)sign:(id)a3 readerIdentifier:(id)a4 reply:(id)a5;
- (void)start;
- (void)wakeUpClientIfBackgrounded;
@end

@implementation _SESRKESession

- (_SESRKESession)initWithRemoteObject:(id)a3 subscriptionRange:(_NSRange)a4 queue:(id)a5
{
  length = a4.length;
  location = a4.location;
  v14.receiver = self;
  v14.super_class = _SESRKESession;
  v7 = [(_SESSession *)&v14 initWithRemoteObject:a3 queue:a5];
  v8 = v7;
  if (v7)
  {
    v7->_subscriptionRange.location = location;
    v7->_subscriptionRange.length = length;
    allowlistedVehicleIdentifiers = v7->_allowlistedVehicleIdentifiers;
    v7->_allowlistedVehicleIdentifiers = 0;

    currentPeerUUID = v8->_currentPeerUUID;
    v8->_currentPeerUUID = 0;

    v11 = [NSString stringWithFormat:@"%@", v8];
    sessionID = v8->_sessionID;
    v8->_sessionID = v11;
  }

  return v8;
}

- (void)dealloc
{
  v2 = self;
  objc_sync_enter(v2);
  sub_1003AE754(v2->_rbsAssertionTimer);
  rbsAssertionTimer = v2->_rbsAssertionTimer;
  v2->_rbsAssertionTimer = 0;

  [(RBSAssertion *)v2->_rbsAssertion invalidate];
  rbsAssertion = v2->_rbsAssertion;
  v2->_rbsAssertion = 0;

  objc_sync_exit(v2);
  v5.receiver = v2;
  v5.super_class = _SESRKESession;
  [(_SESRKESession *)&v5 dealloc];
}

+ (id)validateEntitlements:(id)a3
{
  v3 = [_SESSessionClientInfo withConnection:a3];
  if ([v3 rkeSessionEntitlement])
  {
    v4 = 0;
  }

  else
  {
    v5 = SESDefaultLogObject();
    v7 = [v3 clientName];
    v4 = SESCreateAndLogError();
  }

  return v4;
}

- (void)setDidEndCallback:(id)a3
{
  v3.receiver = self;
  v3.super_class = _SESRKESession;
  [(_SESSession *)&v3 setDidEndCallback:a3];
}

- (void)releaseRemoteObject
{
  v3 = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4.receiver = self;
  v4.super_class = _SESRKESession;
  [(_SESSession *)&v4 releaseRemoteObject];
}

- (void)start
{
  v3 = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SESRKESession start %@", buf, 0xCu);
  }

  v5 = [(_SESRKESession *)self updateAllowlistedVehicles];
  if (v5)
  {
    [(_SESRKESession *)self endSessionInternal:v5];
  }

  else
  {
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      allowlistedVehicleIdentifiers = self->_allowlistedVehicleIdentifiers;
      *buf = 138412290;
      v28 = allowlistedVehicleIdentifiers;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Allowed vehicle identifiers %@", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = self->_allowlistedVehicleIdentifiers;
    v9 = [(NSSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = +[_TtC10seserviced14AlishaExternal shared];
          v15 = [v14 getEndpointWithReaderIdentifier:v13];

          v16 = [v15 bleUUID];

          if (v16)
          {
            v17 = [v15 bleUUID];
            v18 = [NSUUID ses_withUUIDString:v17];

            v19 = +[_TtC10seserviced14AlishaExternal shared];
            [v19 resetDisconnectionHistoryFor:v18];

            if (self->_subscriptionRange.location && self->_subscriptionRange.length)
            {
              v20 = +[_TtC10seserviced14AlishaExternal shared];
              [v20 subscribeToVehicleFunctionStatusEventsWithRange:self->_subscriptionRange.location peerUUID:{self->_subscriptionRange.length, v18}];
            }
          }
        }

        v10 = [(NSSet *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    v21.receiver = self;
    v21.super_class = _SESRKESession;
    [(_SESSession *)&v21 start];
    v5 = 0;
  }
}

+ (BOOL)isDebugAllowAllEndpointsEnabled
{
  v2 = SESInternalVariant();
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.seserviced"];
    v4 = [v3 BOOLForKey:@"debug.carkey.allow.all.endpoints"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (id)_debugGetReaderIdentifiersForAllEndpoints:(id *)a3
{
  v3 = +[_TtC10seserviced14AlishaExternal shared];
  v4 = [v3 getAllEndpoints];

  v5 = [v4 allObjects];
  v6 = TransformIf();

  v7 = [NSSet setWithArray:v6];

  return v7;
}

+ (id)getAllowedVehicleIdentifiersForConnection:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!+[PKPassLibrary isPassLibraryAvailable])
  {
    if (a4)
    {
      v39 = SESDefaultLogObject();
      *a4 = SESCreateAndLogError();
    }

    v13 = 0;
    goto LABEL_44;
  }

  v6 = [_SESSessionClientInfo withConnection:v5];
  v7 = [v6 clientName];

  if (!v7)
  {
    if (a4)
    {
      v40 = SESDefaultLogObject();
      *a4 = SESCreateAndLogError();
    }

    v13 = 0;
    goto LABEL_43;
  }

  v45 = v5;
  v8 = objc_opt_new();
  v44 = v6;
  v9 = [v6 clientName];
  v10 = [v8 passUniqueIDsForAssociatedApplicationIdentifier:v9];

  v11 = [v8 passes];
  v58 = _NSConcreteStackBlock;
  v59 = 3221225472;
  v60 = sub_10003E34C;
  v61 = &unk_1004C2730;
  v43 = v10;
  v62 = v43;
  v12 = TransformIf();

  v13 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v14 = v12;
  v48 = [v14 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (!v48)
  {

    goto LABEL_42;
  }

  v42 = v8;
  v15 = 0;
  obj = v14;
  v47 = *v55;
  v16 = &unk_1004FF000;
  do
  {
    v17 = 0;
    do
    {
      if (*v55 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v49 = v17;
      v18 = *(*(&v54 + 1) + 8 * v17);
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v19 = [v18 devicePrimaryPaymentApplication];
      v20 = [v19 subcredentials];

      v21 = [v20 countByEnumeratingWithState:&v50 objects:v65 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v51;
        do
        {
          v24 = 0;
          do
          {
            if (*v51 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v50 + 1) + 8 * v24);
            v26 = [v25 pairedReaderIdentifier];
            v27 = [v26 hexStringAsData];

            if (v27)
            {
              goto LABEL_14;
            }

            v28 = [v25 identifier];
            v27 = [v28 hexStringAsData];

            if (v27)
            {
              v29 = [v16 + 520 shared];
              v30 = [v29 getEndpointWithKeyIdentifier:v27];

              if (v30)
              {
                v31 = [v30 readerIdentifier];
                if (v31)
                {
                  v32 = v31;

                  v27 = v32;
LABEL_14:
                  [v13 addObject:v27];
                  goto LABEL_15;
                }

                v34 = SESDefaultLogObject();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v35 = [v27 asHexString];
                  *buf = 138412290;
                  v64 = v35;
                  v36 = v34;
                  v37 = "Failed to retrieve reader ID from endpoint %@";
LABEL_28:
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, v37, buf, 0xCu);

                  v16 = &unk_1004FF000;
                }
              }

              else
              {
                v34 = SESDefaultLogObject();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v35 = [v27 asHexString];
                  *buf = 138412290;
                  v64 = v35;
                  v36 = v34;
                  v37 = "Failed to retrieve endpoint %@";
                  goto LABEL_28;
                }
              }

              goto LABEL_15;
            }

            v27 = SESDefaultLogObject();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v33 = [v25 asDictionary];
              *buf = 138412290;
              v64 = v33;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Skipping credential with invalid paired reader ID and endpoint ID %@", buf, 0xCu);
            }

            v15 = 1;
LABEL_15:

            v24 = v24 + 1;
          }

          while (v22 != v24);
          v38 = [v20 countByEnumeratingWithState:&v50 objects:v65 count:16];
          v22 = v38;
        }

        while (v38);
      }

      v17 = v49 + 1;
    }

    while ((v49 + 1) != v48);
    v48 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
  }

  while (v48);
  v14 = obj;

  v8 = v42;
  if (v15)
  {
    [SESTapToRadar requestTapToRadar:@"Car Key pass with invalid paired reader ID" client:@"PassNoPairedReaderID"];
  }

LABEL_42:

  v6 = v44;
  v5 = v45;
LABEL_43:

LABEL_44:

  return v13;
}

- (void)endSessionInternal:(id)a3
{
  v34 = a3;
  v4 = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *v58 = self;
    *&v58[8] = 2112;
    *&v58[10] = v34;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SESRKESession endSessionInternal %@ error %@", buf, 0x16u);
  }

  v6 = self;
  objc_sync_enter(v6);
  sub_1003AE754(v6->_rbsAssertionTimer);
  [(RBSAssertion *)v6->_rbsAssertion invalidate];
  objc_sync_exit(v6);
  v37 = v6;

  v7 = +[_TtC10seserviced14AlishaExternal shared];
  v36 = [v7 getEnduringRKERequestsInProgress];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v37->_allowlistedVehicleIdentifiers;
  v40 = [(NSSet *)obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v40)
  {
    v39 = *v54;
    do
    {
      v8 = 0;
      do
      {
        if (*v54 != v39)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v41 = v8;
        v10 = *(*(&v53 + 1) + 8 * v8);
        v11 = +[_TtC10seserviced14AlishaExternal shared];
        v42 = [v11 getEndpointWithReaderIdentifier:v10];

        v12 = [v42 bleUUID];
        LODWORD(v11) = v12 == 0;

        if (v11)
        {
          v29 = SESDefaultLogObject();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = [v10 asHexString];
            *buf = 138412290;
            *v58 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Couldn't find endpoint for vehicle ID %@", buf, 0xCu);
          }
        }

        else
        {
          v48 = _NSConcreteStackBlock;
          v49 = 3221225472;
          v50 = sub_10003E9E8;
          v51 = &unk_1004C2758;
          v38 = v42;
          v52 = v38;
          v13 = Filter();
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v44 objects:v59 count:16];
          if (v14)
          {
            v15 = *v45;
            do
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v45 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = *(*(&v44 + 1) + 8 * i);
                v18 = +[_TtC10seserviced14AlishaExternal shared];
                v19 = [v17 functionIdentifier];
                v20 = [v17 keyIdentifier];
                v21 = [v18 cancelRKERequestWithFunctionIdentifier:v19 keyIdentifier:v20];

                v22 = SESDefaultLogObject();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  v23 = [v17 functionIdentifier];
                  v24 = [v17 keyIdentifier];
                  v25 = [v24 asHexString];
                  *buf = 67109634;
                  *v58 = v23;
                  *&v58[4] = 2112;
                  *&v58[6] = v25;
                  *&v58[14] = 2112;
                  *&v58[16] = v21;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Cancelled function 0x%X key %@ error %@", buf, 0x1Cu);
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v44 objects:v59 count:16];
            }

            while (v14);
          }

          if (v37->_subscriptionRange.location && v37->_subscriptionRange.length)
          {
            v26 = +[_TtC10seserviced14AlishaExternal shared];
            v27 = [v38 bleUUID];
            v28 = [NSUUID ses_withUUIDString:v27];
            [v26 subscribeToVehicleFunctionStatusEventsWithRange:0 peerUUID:{0, v28}];
          }

          v29 = v52;
        }

        v8 = v41 + 1;
      }

      while ((v41 + 1) != v40);
      v40 = [(NSSet *)obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v40);
  }

  v31 = v37;
  if (v37->_currentPeerUUID)
  {
    v32 = +[_TtC10seserviced14AlishaExternal shared];
    [v32 removeHighPriorityRequestFor:v37->_currentPeerUUID client:v37->_sessionID];

    currentPeerUUID = v37->_currentPeerUUID;
    v37->_currentPeerUUID = 0;

    v31 = v37;
  }

  v43.receiver = v31;
  v43.super_class = _SESRKESession;
  [(_SESSession *)&v43 endSessionInternal:v34];
}

- (void)endSession:(id)a3
{
  v4 = a3;
  v5 = [(_SESSession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003EB00;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)isPassiveEntryAvailable:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EC9C;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)sendRKEFunction:(unint64_t)a3 action:(unint64_t)a4 readerIdentifier:(id)a5 authorization:(id)a6 isEnduring:(BOOL)a7 isHandlingExternal:(BOOL)a8 completion:(id)a9
{
  v15 = a5;
  v16 = a6;
  v17 = a9;
  v18 = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EFE0;
  block[3] = &unk_1004C27D0;
  v26 = a3;
  v27 = a4;
  block[4] = self;
  v23 = v15;
  v28 = a7;
  v29 = a8;
  v24 = v16;
  v25 = v17;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  dispatch_async(v18, block);
}

- (void)cancelRKEFunction:(unint64_t)a3 readerIdentifier:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(_SESSession *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003F6F0;
  v13[3] = &unk_1004C27F8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)continueExecutingRKEFunction:(unint64_t)a3 action:(unint64_t)a4 arbitraryData:(id)a5 readerIdentifier:(id)a6 reply:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(_SESSession *)self queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003FAE0;
  v19[3] = &unk_1004C2820;
  v23 = a3;
  v24 = a4;
  v19[4] = self;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(v15, v19);
}

- (void)sendPassthroughMessage:(id)a3 readerIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_SESSession *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003FF48;
  v15[3] = &unk_1004C2548;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)getVehicleReports:(id)a3
{
  v4 = a3;
  v5 = [(_SESSession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100040408;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)sign:(id)a3 readerIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_SESSession *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100040814;
  v15[3] = &unk_1004C0968;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(v11, v15);
}

- (id)updateAllowlistedVehicles
{
  v2 = self;
  objc_sync_enter(v2);
  if (+[_SESRKESession isDebugAllowAllEndpointsEnabled])
  {
    v3 = SESDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Setting all endpoints as allowed", buf, 2u);
    }

    v11 = 0;
    v4 = [_SESRKESession _debugGetReaderIdentifiersForAllEndpoints:&v11];
    v5 = v11;
    allowlistedVehicleIdentifiers = v2->_allowlistedVehicleIdentifiers;
    v2->_allowlistedVehicleIdentifiers = v4;
  }

  else
  {
    allowlistedVehicleIdentifiers = [(_SESSession *)v2 connection];
    v10 = 0;
    v7 = [_SESRKESession getAllowedVehicleIdentifiersForConnection:allowlistedVehicleIdentifiers error:&v10];
    v5 = v10;
    v8 = v2->_allowlistedVehicleIdentifiers;
    v2->_allowlistedVehicleIdentifiers = v7;
  }

  objc_sync_exit(v2);

  return v5;
}

- (void)didInvalidateWithError:(id)a3
{
  v4 = a3;
  v5 = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SESRKESession %@ didInvalidateWithError %@", &v8, 0x16u);
  }

  if ([(_SESSession *)self isActive])
  {
    v7 = [(_SESSession *)self remoteObject];
    [v7 didInvalidateWithError:v4];
  }

  [(_SESRKESession *)self endSessionInternal:v4];
}

- (void)didCreateKey:(id)a3
{
  v4 = a3;
  v5 = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(_SESSession *)self isActive])
  {
    v6 = [(_SESRKESession *)self updateAllowlistedVehicles];
    if (v6)
    {
      v7 = SESDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v22 = 138412290;
        v23 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to update list of allowlisted vehicles %@", &v22, 0xCu);
      }
    }

    else
    {
      v8 = +[_TtC10seserviced14AlishaExternal shared];
      v7 = [v8 getEndpointWithKeyIdentifier:v4];

      if (v7)
      {
        allowlistedVehicleIdentifiers = self->_allowlistedVehicleIdentifiers;
        v10 = [v7 readerIdentifier];
        v11 = [(NSSet *)allowlistedVehicleIdentifiers containsObject:v10];

        v12 = SESDefaultLogObject();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
        if (v11)
        {
          if (v13)
          {
            v14 = [v7 publicKeyIdentifier];
            v15 = [v14 asHexString];
            v16 = [v7 readerIdentifier];
            v17 = [v16 asHexString];
            v22 = 138412802;
            v23 = self;
            v24 = 2112;
            v25 = v15;
            v26 = 2112;
            v27 = v17;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Calling client of %@ to handle new key %@ readerIdentifier %@", &v22, 0x20u);
          }

          v18 = [(_SESSession *)self remoteObject];
          v19 = [v7 publicKeyIdentifier];
          v20 = [v7 readerIdentifier];
          [v18 didCreateKey:v19 forVehicle:v20];

          [(_SESRKESession *)self wakeUpClientIfBackgrounded];
        }

        else
        {
          if (v13)
          {
            v22 = 138412290;
            v23 = self;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Dropping notification due to vehicle not allowed in the active session %@", &v22, 0xCu);
          }
        }
      }

      else
      {
        v21 = SESDefaultLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = 138412290;
          v23 = v4;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Dropping notification due to missing endpoint %@", &v22, 0xCu);
        }
      }
    }
  }
}

- (void)sendEvent:(id)a3 keyIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = SESDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "SESRKESession %@ sendEvent", &v17, 0xCu);
  }

  if ([(_SESSession *)self isActive])
  {
    v10 = +[_TtC10seserviced14AlishaExternal shared];
    v11 = [v10 getEndpointWithKeyIdentifier:v7];

    if (v11)
    {
      v12 = [v11 readerIdentifier];
      if ([(NSSet *)self->_allowlistedVehicleIdentifiers containsObject:v12])
      {
        if (qword_10050CCB0 != -1)
        {
          sub_1003AD8A0();
        }

        v13 = [(_SESRKESession *)v6 objectForKeyedSubscript:@"xpcEventName"];
        if ([qword_10050CCA8 containsObject:v13])
        {
          v14 = SESDefaultLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v17 = 138412290;
            v18 = v6;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Sending event via session delegate %@", &v17, 0xCu);
          }

          v15 = [(_SESSession *)self remoteObject];
          [v15 sendEvent:v6 fromVehicle:v12];

          [(_SESRKESession *)self wakeUpClientIfBackgrounded];
        }
      }

      else
      {
        v13 = SESDefaultLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Dropping event due to vehicle not in the active session", &v17, 2u);
        }
      }
    }

    else
    {
      v12 = SESDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = [v7 asHexString];
        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Dropping event due to missing endpoint %@", &v17, 0xCu);
      }
    }
  }

  else
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Dropping event due to session not active %@", &v17, 0xCu);
    }
  }
}

- (void)didReceivePassthroughMessage:(id)a3 keyIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = SESDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    v20 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "SESRKESession %@ didReceivePassthroughMessage", &v19, 0xCu);
  }

  if ([(_SESSession *)self isActive])
  {
    v10 = +[_TtC10seserviced14AlishaExternal shared];
    v11 = [v10 getEndpointWithKeyIdentifier:v7];

    if (v11)
    {
      v12 = [v11 readerIdentifier];
      if ([(NSSet *)self->_allowlistedVehicleIdentifiers containsObject:v12])
      {
        v13 = [(_SESSession *)self remoteObject];
        [v13 didReceivePassthroughMessage:v6 fromVehicle:v12];

        [(_SESRKESession *)self wakeUpClientIfBackgrounded];
LABEL_15:

        goto LABEL_16;
      }

      v14 = SESDefaultLogObject();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
LABEL_14:

        goto LABEL_15;
      }

      LOWORD(v19) = 0;
      v15 = "Dropping passthrough message due to vehicle not in the active session";
      v16 = v14;
      v17 = OS_LOG_TYPE_INFO;
      v18 = 2;
    }

    else
    {
      v12 = SESDefaultLogObject();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v14 = [v7 asHexString];
      v19 = 138412290;
      v20 = v14;
      v15 = "No endpoint matching key %@";
      v16 = v12;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 12;
    }

    _os_log_impl(&_mh_execute_header, v16, v17, v15, &v19, v18);
    goto LABEL_14;
  }

  v11 = SESDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Ignoring passthrough message received with no active session", &v19, 2u);
  }

LABEL_16:
}

- (void)didReceiveContinuationRequestFor:(id)a3 actionIdentifier:(id)a4 arbitraryData:(id)a5 keyIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(v14);

  v15 = +[_TtC10seserviced14AlishaExternal shared];
  v16 = [v15 getEndpointWithKeyIdentifier:v13];

  if (v16)
  {
    v17 = [v16 readerIdentifier];
    v18 = [(NSSet *)self->_allowlistedVehicleIdentifiers containsObject:v17];
    v19 = SESDefaultLogObject();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v18)
    {
      if (v20)
      {
        v21 = [v17 asHexString];
        v24 = 138413058;
        v25 = v21;
        v26 = 2112;
        v27 = v10;
        v28 = 2112;
        v29 = v11;
        v30 = 1024;
        v31 = v12 != 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Calling client to handle continuation request for %@ function %@ action %@ with arbitraryData %d", &v24, 0x26u);
      }

      v22 = [(_SESSession *)self remoteObject];
      [v22 didReceiveContinuationRequestFor:v10 actionIdentifier:v11 arbitraryData:v12 fromVehicle:v17];

      [(_SESRKESession *)self wakeUpClientIfBackgrounded];
    }

    else
    {
      if (v20)
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Dropping confirmation request due to vehicle not in the active session", &v24, 2u);
      }
    }
  }

  else
  {
    v17 = SESDefaultLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v23 = [v13 asHexString];
      v24 = 138412290;
      v25 = v23;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "No endpoint matching key %@", &v24, 0xCu);
    }
  }
}

- (void)wakeUpClientIfBackgrounded
{
  v3 = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(v3);

  obj = self;
  objc_sync_enter(obj);
  sub_1003AE754(obj->_rbsAssertionTimer);
  v4 = [(_SESSession *)obj isBackgrounded];
  rbsAssertion = obj->_rbsAssertion;
  if (v4)
  {
    if (!rbsAssertion)
    {
      objc_sync_exit(obj);

      v14 = FBSOpenApplicationOptionKeyActivateSuspended;
      v15 = &__kCFBooleanTrue;
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = [FBSOpenApplicationOptions optionsWithDictionary:v8];

      v10 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
      v11 = [(_SESRKESession *)obj clientBundleIdentifier];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000420D4;
      v13[3] = &unk_1004C2908;
      v13[4] = obj;
      [v10 openApplication:v11 withOptions:v9 completion:v13];

      return;
    }

    sub_1003AE618(obj->_rbsAssertionTimer, 1.0);
  }

  else if (rbsAssertion)
  {
    [(RBSAssertion *)rbsAssertion invalidate];
    v6 = obj->_rbsAssertion;
    obj->_rbsAssertion = 0;

    rbsAssertionTimer = obj->_rbsAssertionTimer;
    obj->_rbsAssertionTimer = 0;
  }

  objc_sync_exit(obj);
}

- (_NSRange)subscriptionRange
{
  p_subscriptionRange = &self->_subscriptionRange;
  location = self->_subscriptionRange.location;
  length = p_subscriptionRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end