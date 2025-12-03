@interface _SESRKESession
+ (BOOL)isDebugAllowAllEndpointsEnabled;
+ (id)_debugGetReaderIdentifiersForAllEndpoints:(id *)endpoints;
+ (id)getAllowedVehicleIdentifiersForConnection:(id)connection error:(id *)error;
+ (id)validateEntitlements:(id)entitlements;
- (_NSRange)subscriptionRange;
- (_SESRKESession)initWithRemoteObject:(id)object subscriptionRange:(_NSRange)range queue:(id)queue;
- (id)updateAllowlistedVehicles;
- (void)cancelRKEFunction:(unint64_t)function readerIdentifier:(id)identifier reply:(id)reply;
- (void)continueExecutingRKEFunction:(unint64_t)function action:(unint64_t)action arbitraryData:(id)data readerIdentifier:(id)identifier reply:(id)reply;
- (void)dealloc;
- (void)didCreateKey:(id)key;
- (void)didInvalidateWithError:(id)error;
- (void)didReceiveContinuationRequestFor:(id)for actionIdentifier:(id)identifier arbitraryData:(id)data keyIdentifier:(id)keyIdentifier;
- (void)didReceivePassthroughMessage:(id)message keyIdentifier:(id)identifier;
- (void)endSession:(id)session;
- (void)endSessionInternal:(id)internal;
- (void)getVehicleReports:(id)reports;
- (void)isPassiveEntryAvailable:(id)available reply:(id)reply;
- (void)releaseRemoteObject;
- (void)sendEvent:(id)event keyIdentifier:(id)identifier;
- (void)sendPassthroughMessage:(id)message readerIdentifier:(id)identifier reply:(id)reply;
- (void)sendRKEFunction:(unint64_t)function action:(unint64_t)action readerIdentifier:(id)identifier authorization:(id)authorization isEnduring:(BOOL)enduring isHandlingExternal:(BOOL)external completion:(id)completion;
- (void)setDidEndCallback:(id)callback;
- (void)sign:(id)sign readerIdentifier:(id)identifier reply:(id)reply;
- (void)start;
- (void)wakeUpClientIfBackgrounded;
@end

@implementation _SESRKESession

- (_SESRKESession)initWithRemoteObject:(id)object subscriptionRange:(_NSRange)range queue:(id)queue
{
  length = range.length;
  location = range.location;
  v14.receiver = self;
  v14.super_class = _SESRKESession;
  v7 = [(_SESSession *)&v14 initWithRemoteObject:object queue:queue];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sub_1003AE754(selfCopy->_rbsAssertionTimer);
  rbsAssertionTimer = selfCopy->_rbsAssertionTimer;
  selfCopy->_rbsAssertionTimer = 0;

  [(RBSAssertion *)selfCopy->_rbsAssertion invalidate];
  rbsAssertion = selfCopy->_rbsAssertion;
  selfCopy->_rbsAssertion = 0;

  objc_sync_exit(selfCopy);
  v5.receiver = selfCopy;
  v5.super_class = _SESRKESession;
  [(_SESRKESession *)&v5 dealloc];
}

+ (id)validateEntitlements:(id)entitlements
{
  v3 = [_SESSessionClientInfo withConnection:entitlements];
  if ([v3 rkeSessionEntitlement])
  {
    v4 = 0;
  }

  else
  {
    v5 = SESDefaultLogObject();
    clientName = [v3 clientName];
    v4 = SESCreateAndLogError();
  }

  return v4;
}

- (void)setDidEndCallback:(id)callback
{
  v3.receiver = self;
  v3.super_class = _SESRKESession;
  [(_SESSession *)&v3 setDidEndCallback:callback];
}

- (void)releaseRemoteObject
{
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4.receiver = self;
  v4.super_class = _SESRKESession;
  [(_SESSession *)&v4 releaseRemoteObject];
}

- (void)start
{
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = SESDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "SESRKESession start %@", buf, 0xCu);
  }

  updateAllowlistedVehicles = [(_SESRKESession *)self updateAllowlistedVehicles];
  if (updateAllowlistedVehicles)
  {
    [(_SESRKESession *)self endSessionInternal:updateAllowlistedVehicles];
  }

  else
  {
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      allowlistedVehicleIdentifiers = self->_allowlistedVehicleIdentifiers;
      *buf = 138412290;
      selfCopy = allowlistedVehicleIdentifiers;
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

          bleUUID = [v15 bleUUID];

          if (bleUUID)
          {
            bleUUID2 = [v15 bleUUID];
            v18 = [NSUUID ses_withUUIDString:bleUUID2];

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
    updateAllowlistedVehicles = 0;
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

+ (id)_debugGetReaderIdentifiersForAllEndpoints:(id *)endpoints
{
  v3 = +[_TtC10seserviced14AlishaExternal shared];
  getAllEndpoints = [v3 getAllEndpoints];

  allObjects = [getAllEndpoints allObjects];
  v6 = TransformIf();

  v7 = [NSSet setWithArray:v6];

  return v7;
}

+ (id)getAllowedVehicleIdentifiersForConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  if (!+[PKPassLibrary isPassLibraryAvailable])
  {
    if (error)
    {
      v39 = SESDefaultLogObject();
      *error = SESCreateAndLogError();
    }

    v13 = 0;
    goto LABEL_44;
  }

  v6 = [_SESSessionClientInfo withConnection:connectionCopy];
  clientName = [v6 clientName];

  if (!clientName)
  {
    if (error)
    {
      v40 = SESDefaultLogObject();
      *error = SESCreateAndLogError();
    }

    v13 = 0;
    goto LABEL_43;
  }

  v45 = connectionCopy;
  v8 = objc_opt_new();
  v44 = v6;
  clientName2 = [v6 clientName];
  v10 = [v8 passUniqueIDsForAssociatedApplicationIdentifier:clientName2];

  passes = [v8 passes];
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
      devicePrimaryPaymentApplication = [v18 devicePrimaryPaymentApplication];
      subcredentials = [devicePrimaryPaymentApplication subcredentials];

      v21 = [subcredentials countByEnumeratingWithState:&v50 objects:v65 count:16];
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
              objc_enumerationMutation(subcredentials);
            }

            v25 = *(*(&v50 + 1) + 8 * v24);
            pairedReaderIdentifier = [v25 pairedReaderIdentifier];
            hexStringAsData = [pairedReaderIdentifier hexStringAsData];

            if (hexStringAsData)
            {
              goto LABEL_14;
            }

            identifier = [v25 identifier];
            hexStringAsData = [identifier hexStringAsData];

            if (hexStringAsData)
            {
              shared = [v16 + 520 shared];
              v30 = [shared getEndpointWithKeyIdentifier:hexStringAsData];

              if (v30)
              {
                readerIdentifier = [v30 readerIdentifier];
                if (readerIdentifier)
                {
                  v32 = readerIdentifier;

                  hexStringAsData = v32;
LABEL_14:
                  [v13 addObject:hexStringAsData];
                  goto LABEL_15;
                }

                v34 = SESDefaultLogObject();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  asHexString = [hexStringAsData asHexString];
                  *buf = 138412290;
                  v64 = asHexString;
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
                  asHexString = [hexStringAsData asHexString];
                  *buf = 138412290;
                  v64 = asHexString;
                  v36 = v34;
                  v37 = "Failed to retrieve endpoint %@";
                  goto LABEL_28;
                }
              }

              goto LABEL_15;
            }

            hexStringAsData = SESDefaultLogObject();
            if (os_log_type_enabled(hexStringAsData, OS_LOG_TYPE_ERROR))
            {
              asDictionary = [v25 asDictionary];
              *buf = 138412290;
              v64 = asDictionary;
              _os_log_impl(&_mh_execute_header, hexStringAsData, OS_LOG_TYPE_ERROR, "Skipping credential with invalid paired reader ID and endpoint ID %@", buf, 0xCu);
            }

            v15 = 1;
LABEL_15:

            v24 = v24 + 1;
          }

          while (v22 != v24);
          v38 = [subcredentials countByEnumeratingWithState:&v50 objects:v65 count:16];
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
  connectionCopy = v45;
LABEL_43:

LABEL_44:

  return v13;
}

- (void)endSessionInternal:(id)internal
{
  internalCopy = internal;
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *v58 = self;
    *&v58[8] = 2112;
    *&v58[10] = internalCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SESRKESession endSessionInternal %@ error %@", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  sub_1003AE754(selfCopy->_rbsAssertionTimer);
  [(RBSAssertion *)selfCopy->_rbsAssertion invalidate];
  objc_sync_exit(selfCopy);
  v37 = selfCopy;

  v7 = +[_TtC10seserviced14AlishaExternal shared];
  getEnduringRKERequestsInProgress = [v7 getEnduringRKERequestsInProgress];

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

        bleUUID = [v42 bleUUID];
        LODWORD(v11) = bleUUID == 0;

        if (v11)
        {
          v29 = SESDefaultLogObject();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            asHexString = [v10 asHexString];
            *buf = 138412290;
            *v58 = asHexString;
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
                functionIdentifier = [v17 functionIdentifier];
                keyIdentifier = [v17 keyIdentifier];
                v21 = [v18 cancelRKERequestWithFunctionIdentifier:functionIdentifier keyIdentifier:keyIdentifier];

                v22 = SESDefaultLogObject();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  functionIdentifier2 = [v17 functionIdentifier];
                  keyIdentifier2 = [v17 keyIdentifier];
                  asHexString2 = [keyIdentifier2 asHexString];
                  *buf = 67109634;
                  *v58 = functionIdentifier2;
                  *&v58[4] = 2112;
                  *&v58[6] = asHexString2;
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
            bleUUID2 = [v38 bleUUID];
            v28 = [NSUUID ses_withUUIDString:bleUUID2];
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
  [(_SESSession *)&v43 endSessionInternal:internalCopy];
}

- (void)endSession:(id)session
{
  sessionCopy = session;
  queue = [(_SESSession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003EB00;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  dispatch_async(queue, v7);
}

- (void)isPassiveEntryAvailable:(id)available reply:(id)reply
{
  availableCopy = available;
  replyCopy = reply;
  queue = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EC9C;
  block[3] = &unk_1004C0F68;
  block[4] = self;
  v12 = availableCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = availableCopy;
  dispatch_async(queue, block);
}

- (void)sendRKEFunction:(unint64_t)function action:(unint64_t)action readerIdentifier:(id)identifier authorization:(id)authorization isEnduring:(BOOL)enduring isHandlingExternal:(BOOL)external completion:(id)completion
{
  identifierCopy = identifier;
  authorizationCopy = authorization;
  completionCopy = completion;
  queue = [(_SESSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EFE0;
  block[3] = &unk_1004C27D0;
  functionCopy = function;
  actionCopy = action;
  block[4] = self;
  v23 = identifierCopy;
  enduringCopy = enduring;
  externalCopy = external;
  v24 = authorizationCopy;
  v25 = completionCopy;
  v19 = completionCopy;
  v20 = authorizationCopy;
  v21 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)cancelRKEFunction:(unint64_t)function readerIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  queue = [(_SESSession *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003F6F0;
  v13[3] = &unk_1004C27F8;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = replyCopy;
  functionCopy = function;
  v11 = replyCopy;
  v12 = identifierCopy;
  dispatch_async(queue, v13);
}

- (void)continueExecutingRKEFunction:(unint64_t)function action:(unint64_t)action arbitraryData:(id)data readerIdentifier:(id)identifier reply:(id)reply
{
  dataCopy = data;
  identifierCopy = identifier;
  replyCopy = reply;
  queue = [(_SESSession *)self queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003FAE0;
  v19[3] = &unk_1004C2820;
  functionCopy = function;
  actionCopy = action;
  v19[4] = self;
  v20 = dataCopy;
  v21 = identifierCopy;
  v22 = replyCopy;
  v16 = replyCopy;
  v17 = identifierCopy;
  v18 = dataCopy;
  dispatch_async(queue, v19);
}

- (void)sendPassthroughMessage:(id)message readerIdentifier:(id)identifier reply:(id)reply
{
  messageCopy = message;
  identifierCopy = identifier;
  replyCopy = reply;
  queue = [(_SESSession *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003FF48;
  v15[3] = &unk_1004C2548;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = messageCopy;
  v18 = replyCopy;
  v12 = messageCopy;
  v13 = replyCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

- (void)getVehicleReports:(id)reports
{
  reportsCopy = reports;
  queue = [(_SESSession *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100040408;
  v7[3] = &unk_1004C0F00;
  v7[4] = self;
  v8 = reportsCopy;
  v6 = reportsCopy;
  dispatch_async(queue, v7);
}

- (void)sign:(id)sign readerIdentifier:(id)identifier reply:(id)reply
{
  signCopy = sign;
  identifierCopy = identifier;
  replyCopy = reply;
  queue = [(_SESSession *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100040814;
  v15[3] = &unk_1004C0968;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = signCopy;
  v18 = replyCopy;
  v12 = signCopy;
  v13 = identifierCopy;
  v14 = replyCopy;
  dispatch_async(queue, v15);
}

- (id)updateAllowlistedVehicles
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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
    allowlistedVehicleIdentifiers = selfCopy->_allowlistedVehicleIdentifiers;
    selfCopy->_allowlistedVehicleIdentifiers = v4;
  }

  else
  {
    allowlistedVehicleIdentifiers = [(_SESSession *)selfCopy connection];
    v10 = 0;
    v7 = [_SESRKESession getAllowedVehicleIdentifiersForConnection:allowlistedVehicleIdentifiers error:&v10];
    v5 = v10;
    v8 = selfCopy->_allowlistedVehicleIdentifiers;
    selfCopy->_allowlistedVehicleIdentifiers = v7;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)didInvalidateWithError:(id)error
{
  errorCopy = error;
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SESRKESession %@ didInvalidateWithError %@", &v8, 0x16u);
  }

  if ([(_SESSession *)self isActive])
  {
    remoteObject = [(_SESSession *)self remoteObject];
    [remoteObject didInvalidateWithError:errorCopy];
  }

  [(_SESRKESession *)self endSessionInternal:errorCopy];
}

- (void)didCreateKey:(id)key
{
  keyCopy = key;
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(_SESSession *)self isActive])
  {
    updateAllowlistedVehicles = [(_SESRKESession *)self updateAllowlistedVehicles];
    if (updateAllowlistedVehicles)
    {
      v7 = SESDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v22 = 138412290;
        selfCopy2 = updateAllowlistedVehicles;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to update list of allowlisted vehicles %@", &v22, 0xCu);
      }
    }

    else
    {
      v8 = +[_TtC10seserviced14AlishaExternal shared];
      v7 = [v8 getEndpointWithKeyIdentifier:keyCopy];

      if (v7)
      {
        allowlistedVehicleIdentifiers = self->_allowlistedVehicleIdentifiers;
        readerIdentifier = [v7 readerIdentifier];
        v11 = [(NSSet *)allowlistedVehicleIdentifiers containsObject:readerIdentifier];

        v12 = SESDefaultLogObject();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
        if (v11)
        {
          if (v13)
          {
            publicKeyIdentifier = [v7 publicKeyIdentifier];
            asHexString = [publicKeyIdentifier asHexString];
            readerIdentifier2 = [v7 readerIdentifier];
            asHexString2 = [readerIdentifier2 asHexString];
            v22 = 138412802;
            selfCopy2 = self;
            v24 = 2112;
            v25 = asHexString;
            v26 = 2112;
            v27 = asHexString2;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Calling client of %@ to handle new key %@ readerIdentifier %@", &v22, 0x20u);
          }

          remoteObject = [(_SESSession *)self remoteObject];
          publicKeyIdentifier2 = [v7 publicKeyIdentifier];
          readerIdentifier3 = [v7 readerIdentifier];
          [remoteObject didCreateKey:publicKeyIdentifier2 forVehicle:readerIdentifier3];

          [(_SESRKESession *)self wakeUpClientIfBackgrounded];
        }

        else
        {
          if (v13)
          {
            v22 = 138412290;
            selfCopy2 = self;
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
          selfCopy2 = keyCopy;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Dropping notification due to missing endpoint %@", &v22, 0xCu);
        }
      }
    }
  }
}

- (void)sendEvent:(id)event keyIdentifier:(id)identifier
{
  eventCopy = event;
  identifierCopy = identifier;
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = SESDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "SESRKESession %@ sendEvent", &v17, 0xCu);
  }

  if ([(_SESSession *)self isActive])
  {
    v10 = +[_TtC10seserviced14AlishaExternal shared];
    v11 = [v10 getEndpointWithKeyIdentifier:identifierCopy];

    if (v11)
    {
      readerIdentifier = [v11 readerIdentifier];
      if ([(NSSet *)self->_allowlistedVehicleIdentifiers containsObject:readerIdentifier])
      {
        if (qword_10050CCB0 != -1)
        {
          sub_1003AD8A0();
        }

        v13 = [(_SESRKESession *)eventCopy objectForKeyedSubscript:@"xpcEventName"];
        if ([qword_10050CCA8 containsObject:v13])
        {
          v14 = SESDefaultLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v17 = 138412290;
            selfCopy = eventCopy;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Sending event via session delegate %@", &v17, 0xCu);
          }

          remoteObject = [(_SESSession *)self remoteObject];
          [remoteObject sendEvent:eventCopy fromVehicle:readerIdentifier];

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
      readerIdentifier = SESDefaultLogObject();
      if (os_log_type_enabled(readerIdentifier, OS_LOG_TYPE_INFO))
      {
        asHexString = [identifierCopy asHexString];
        v17 = 138412290;
        selfCopy = asHexString;
        _os_log_impl(&_mh_execute_header, readerIdentifier, OS_LOG_TYPE_INFO, "Dropping event due to missing endpoint %@", &v17, 0xCu);
      }
    }
  }

  else
  {
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      selfCopy = eventCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Dropping event due to session not active %@", &v17, 0xCu);
    }
  }
}

- (void)didReceivePassthroughMessage:(id)message keyIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = SESDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v19 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "SESRKESession %@ didReceivePassthroughMessage", &v19, 0xCu);
  }

  if ([(_SESSession *)self isActive])
  {
    v10 = +[_TtC10seserviced14AlishaExternal shared];
    v11 = [v10 getEndpointWithKeyIdentifier:identifierCopy];

    if (v11)
    {
      readerIdentifier = [v11 readerIdentifier];
      if ([(NSSet *)self->_allowlistedVehicleIdentifiers containsObject:readerIdentifier])
      {
        remoteObject = [(_SESSession *)self remoteObject];
        [remoteObject didReceivePassthroughMessage:messageCopy fromVehicle:readerIdentifier];

        [(_SESRKESession *)self wakeUpClientIfBackgrounded];
LABEL_15:

        goto LABEL_16;
      }

      asHexString = SESDefaultLogObject();
      if (!os_log_type_enabled(asHexString, OS_LOG_TYPE_INFO))
      {
LABEL_14:

        goto LABEL_15;
      }

      LOWORD(v19) = 0;
      v15 = "Dropping passthrough message due to vehicle not in the active session";
      v16 = asHexString;
      v17 = OS_LOG_TYPE_INFO;
      v18 = 2;
    }

    else
    {
      readerIdentifier = SESDefaultLogObject();
      if (!os_log_type_enabled(readerIdentifier, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      asHexString = [identifierCopy asHexString];
      v19 = 138412290;
      selfCopy = asHexString;
      v15 = "No endpoint matching key %@";
      v16 = readerIdentifier;
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

- (void)didReceiveContinuationRequestFor:(id)for actionIdentifier:(id)identifier arbitraryData:(id)data keyIdentifier:(id)keyIdentifier
{
  forCopy = for;
  identifierCopy = identifier;
  dataCopy = data;
  keyIdentifierCopy = keyIdentifier;
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = +[_TtC10seserviced14AlishaExternal shared];
  v16 = [v15 getEndpointWithKeyIdentifier:keyIdentifierCopy];

  if (v16)
  {
    readerIdentifier = [v16 readerIdentifier];
    v18 = [(NSSet *)self->_allowlistedVehicleIdentifiers containsObject:readerIdentifier];
    v19 = SESDefaultLogObject();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v18)
    {
      if (v20)
      {
        asHexString = [readerIdentifier asHexString];
        v24 = 138413058;
        v25 = asHexString;
        v26 = 2112;
        v27 = forCopy;
        v28 = 2112;
        v29 = identifierCopy;
        v30 = 1024;
        v31 = dataCopy != 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Calling client to handle continuation request for %@ function %@ action %@ with arbitraryData %d", &v24, 0x26u);
      }

      remoteObject = [(_SESSession *)self remoteObject];
      [remoteObject didReceiveContinuationRequestFor:forCopy actionIdentifier:identifierCopy arbitraryData:dataCopy fromVehicle:readerIdentifier];

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
    readerIdentifier = SESDefaultLogObject();
    if (os_log_type_enabled(readerIdentifier, OS_LOG_TYPE_ERROR))
    {
      asHexString2 = [keyIdentifierCopy asHexString];
      v24 = 138412290;
      v25 = asHexString2;
      _os_log_impl(&_mh_execute_header, readerIdentifier, OS_LOG_TYPE_ERROR, "No endpoint matching key %@", &v24, 0xCu);
    }
  }
}

- (void)wakeUpClientIfBackgrounded
{
  queue = [(_SESSession *)self queue];
  dispatch_assert_queue_V2(queue);

  obj = self;
  objc_sync_enter(obj);
  sub_1003AE754(obj->_rbsAssertionTimer);
  isBackgrounded = [(_SESSession *)obj isBackgrounded];
  rbsAssertion = obj->_rbsAssertion;
  if (isBackgrounded)
  {
    if (!rbsAssertion)
    {
      objc_sync_exit(obj);

      v14 = FBSOpenApplicationOptionKeyActivateSuspended;
      v15 = &__kCFBooleanTrue;
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = [FBSOpenApplicationOptions optionsWithDictionary:v8];

      v10 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
      clientBundleIdentifier = [(_SESRKESession *)obj clientBundleIdentifier];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000420D4;
      v13[3] = &unk_1004C2908;
      v13[4] = obj;
      [v10 openApplication:clientBundleIdentifier withOptions:v9 completion:v13];

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