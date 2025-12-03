@interface KTIDSActualOperations
+ (BOOL)ktVerifyError:(id)error code:(int64_t)code;
+ (id)healableError:(id)error selfValidationResult:(id)result;
- (BOOL)haveIDSAccount:(id)account;
- (KTIDSActualOperations)initWithIDSAccountController:(id)controller lockStateTracker:(id)tracker;
- (unint64_t)idsAccountType;
- (void)accountController:(id)controller accountAdded:(id)added;
- (void)accountController:(id)controller accountDisabled:(id)disabled;
- (void)accountController:(id)controller accountEnabled:(id)enabled;
- (void)accountController:(id)controller accountRemoved:(id)removed;
- (void)accountController:(id)controller accountUpdated:(id)updated;
- (void)cacheClearRequest:(id)request;
- (void)checkAccountChange;
- (void)dealloc;
- (void)drain;
- (void)fetchPeerVerificationInfos:(id)infos application:(id)application completionBlock:(id)block;
- (void)fetchSelfVerificationInfo:(id)info completionBlock:(id)block;
- (void)getCurrentRegistrationState:(id)state withCompletion:(id)completion;
- (void)getKeyTransparencyOptInEligiblityForApplication:(id)application withCompletion:(id)completion;
- (void)onQueueDrain;
- (void)onQueueProcessStatus:(id)status;
- (void)peerVerificationFinishedWithResults:(id)results;
- (void)registrationDataNeedsUpdate:(id)update;
- (void)sendOptInUpdateRequest:(id)request withCompletion:(id)completion;
- (void)signInController:(id)controller service:(unint64_t)service didChangeStatus:(id)status;
- (void)triggerIDSCheck:(id)check selfValidationResult:(id)result complete:(id)complete;
@end

@implementation KTIDSActualOperations

- (KTIDSActualOperations)initWithIDSAccountController:(id)controller lockStateTracker:(id)tracker
{
  controllerCopy = controller;
  trackerCopy = tracker;
  v32.receiver = self;
  v32.super_class = KTIDSActualOperations;
  v8 = [(KTIDSActualOperations *)&v32 init];
  if (v8)
  {
    v9 = objc_alloc_init(IDSKeyTransparencyManager);
    [(KTIDSActualOperations *)v8 setManager:v9];

    v10 = dispatch_queue_create("KTIDSActualOperations", 0);
    [(KTIDSActualOperations *)v8 setIdsQueue:v10];

    v11 = dispatch_queue_create("KTIDSActualOperations-idsController", 0);
    [(KTIDSActualOperations *)v8 setIdsControllerQueue:v11];

    v12 = dispatch_queue_create("KTIDSActualOperations-work", 0);
    [(KTIDSActualOperations *)v8 setWorkQueue:v12];

    v13 = [IDSSignInController alloc];
    idsQueue = [(KTIDSActualOperations *)v8 idsQueue];
    v15 = [v13 initWithQueue:idsQueue];
    [(KTIDSActualOperations *)v8 setIdsSignInController:v15];

    idsSignInController = [(KTIDSActualOperations *)v8 idsSignInController];
    [idsSignInController setDelegate:v8 forService:1];

    [(KTIDSActualOperations *)v8 setCheckIDSTimeoutSeconds:90.0];
    [(KTIDSActualOperations *)v8 setSleepTimeBetweenIDSCheckups:10.0];
    [(KTIDSActualOperations *)v8 setAccountController:controllerCopy];
    accountController = [(KTIDSActualOperations *)v8 accountController];
    idsQueue2 = [(KTIDSActualOperations *)v8 idsQueue];
    [accountController addDelegate:v8 queue:idsQueue2];

    [(KTIDSActualOperations *)v8 setRegisteredDelegate:1];
    v19 = +[NSArray array];
    [(KTIDSActualOperations *)v8 setIdsAccounts:v19];

    [(KTIDSActualOperations *)v8 setLockStateTracker:trackerCopy];
    v20 = objc_alloc_init(KTCondition);
    [(KTIDSActualOperations *)v8 setAccountStateFetched:v20];

    objc_initWeak(&location, v8);
    v21 = [KTNearFutureScheduler alloc];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_100025368;
    v29 = &unk_1003175E0;
    objc_copyWeak(&v30, &location);
    v22 = [(KTNearFutureScheduler *)v21 initWithName:@"KTIDSAccountChecker" initialDelay:1000000000 exponentialBackoff:60000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:&v26 block:1.2];
    [(KTIDSActualOperations *)v8 setCheckAccountNFS:v22, v26, v27, v28, v29];

    checkAccountNFS = [(KTIDSActualOperations *)v8 checkAccountNFS];
    [checkAccountNFS trigger];

    v24 = v8;
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)drain
{
  idsControllerQueue = [(KTIDSActualOperations *)self idsControllerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025510;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_sync(idsControllerQueue, block);

  idsQueue = [(KTIDSActualOperations *)self idsQueue];
  dispatch_sync(idsQueue, &stru_100318378);
}

- (void)onQueueDrain
{
  if ([(KTIDSActualOperations *)self registeredDelegate])
  {
    [(KTIDSActualOperations *)self setRegisteredDelegate:0];
    checkAccountNFS = [(KTIDSActualOperations *)self checkAccountNFS];
    [checkAccountNFS cancel];

    accountController = [(KTIDSActualOperations *)self accountController];
    [accountController removeDelegate:self];

    idsSignInController = [(KTIDSActualOperations *)self idsSignInController];
    [idsSignInController removeDelegateForService:1];
  }
}

- (void)dealloc
{
  [(KTIDSActualOperations *)self onQueueDrain];
  v3.receiver = self;
  v3.super_class = KTIDSActualOperations;
  [(KTIDSActualOperations *)&v3 dealloc];
}

- (void)checkAccountChange
{
  objc_initWeak(&location, self);
  idsControllerQueue = [(KTIDSActualOperations *)self idsControllerQueue];
  dispatch_assert_queue_V2(idsControllerQueue);

  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  accountController = [(KTIDSActualOperations *)self accountController];
  accounts = [accountController accounts];

  v7 = [accounts countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(accounts);
        }

        v10 = [[KTIDSAccountHolder alloc] initWithIDSAccount:*(*(&v14 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [accounts countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  [(KTIDSActualOperations *)self setIdsAccounts:v4];
  idsSignInController = [(KTIDSActualOperations *)self idsSignInController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100025860;
  v12[3] = &unk_1003183E0;
  v12[4] = self;
  objc_copyWeak(&v13, &location);
  [idsSignInController statusOfUsersOnService:1 withCompletion:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

+ (BOOL)ktVerifyError:(id)error code:(int64_t)code
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqual:@"TransparencyErrorVerify"])
  {
    v7 = [errorCopy code] == code;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)healableError:(id)error selfValidationResult:(id)result
{
  resultCopy = result;
  v6 = objc_alloc_init(KTSelfVerificationHealableErrors);
  [v6 addHealableState:1];
  if (!resultCopy)
  {
    [v6 addAccountHealableError:0];
  }

  resultError = [resultCopy resultError];
  v8 = [self ktVerifyError:resultError code:-271];

  if (v8)
  {
    v9 = 2;
LABEL_7:
    [v6 addAccountHealableError:v9];
    goto LABEL_8;
  }

  resultError2 = [resultCopy resultError];
  v11 = [self ktVerifyError:resultError2 code:-289];

  if (v11)
  {
    v9 = 7;
    goto LABEL_7;
  }

LABEL_8:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  loggableData = [resultCopy loggableData];
  v13 = [loggableData countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = v13;
  v15 = *v42;
  do
  {
    v16 = 0;
    do
    {
      if (*v42 != v15)
      {
        objc_enumerationMutation(loggableData);
      }

      v17 = *(*(&v41 + 1) + 8 * v16);
      deviceID = [v17 deviceID];

      if (deviceID)
      {
        signature = [v17 signature];
        if (!signature || (v20 = signature, [v17 failure], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "code"), v21, v20, v22 == -286))
        {
          deviceID2 = [v17 deviceID];
          [v6 addDeviceHealableError:3 deviceId:deviceID2];
        }

        failure = [v17 failure];
        code = [failure code];

        if (code == -272)
        {
          deviceID3 = [v17 deviceID];
          [v6 addDeviceHealableError:4 deviceId:deviceID3];
        }

        failure2 = [v17 failure];
        code2 = [failure2 code];

        if (code2 == -101)
        {
          deviceID4 = [v17 deviceID];
          [v6 addDeviceHealableError:6 deviceId:deviceID4];
        }

        failure3 = [v17 failure];
        if ([failure3 code] == -94)
        {
          goto LABEL_26;
        }

        failure4 = [v17 failure];
        if ([failure4 code] == -93)
        {
          goto LABEL_25;
        }

        failure5 = [v17 failure];
        if ([failure5 code] == -95)
        {

LABEL_25:
LABEL_26:

LABEL_27:
          deviceID5 = [v17 deviceID];
          [v6 addDeviceHealableError:5 deviceId:deviceID5];

          goto LABEL_28;
        }

        [v17 failure];
        v34 = v15;
        v36 = v35 = loggableData;
        code3 = [v36 code];

        loggableData = v35;
        v15 = v34;

        if (code3 == -96)
        {
          goto LABEL_27;
        }
      }

LABEL_28:
      v16 = v16 + 1;
    }

    while (v14 != v16);
    v37 = [loggableData countByEnumeratingWithState:&v41 objects:v45 count:16];
    v14 = v37;
  }

  while (v37);
LABEL_33:

  return v6;
}

- (void)triggerIDSCheck:(id)check selfValidationResult:(id)result complete:(id)complete
{
  completeCopy = complete;
  resultCopy = result;
  checkCopy = check;
  v11 = [objc_opt_class() healableError:checkCopy selfValidationResult:resultCopy];

  manager = [(KTIDSActualOperations *)self manager];
  v13 = [manager verificationInfoProviderIdForApplication:checkCopy];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000260C4;
  v15[3] = &unk_100318428;
  v16 = completeCopy;
  v14 = completeCopy;
  [v13 healSelf:v11 completionBlock:v15];
}

- (void)fetchPeerVerificationInfos:(id)infos application:(id)application completionBlock:(id)block
{
  infosCopy = infos;
  blockCopy = block;
  applicationCopy = application;
  manager = [(KTIDSActualOperations *)self manager];
  v12 = [manager verificationInfoProviderIdForApplication:applicationCopy];

  if (v12)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000262F8;
    v13[3] = &unk_1003176B8;
    v14 = blockCopy;
    [v12 fetchPeerVerificationInfos:infosCopy completionBlock:v13];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0, 0);
  }
}

- (void)fetchSelfVerificationInfo:(id)info completionBlock:(id)block
{
  blockCopy = block;
  infoCopy = info;
  manager = [(KTIDSActualOperations *)self manager];
  v9 = [manager verificationInfoProviderIdForApplication:infoCopy];

  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000263FC;
    v10[3] = &unk_100318450;
    v11 = blockCopy;
    [v9 fetchSelfVerificationInfo:v10];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0, 0);
  }
}

- (void)getKeyTransparencyOptInEligiblityForApplication:(id)application withCompletion:(id)completion
{
  completionCopy = completion;
  applicationCopy = application;
  manager = [(KTIDSActualOperations *)self manager];
  [manager getKeyTransparencyOptInEligiblityForApplication:applicationCopy withCompletion:completionCopy];
}

- (void)sendOptInUpdateRequest:(id)request withCompletion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = objc_alloc_init(IDSKTOptInOutRequest);
  +[NSMutableDictionary dictionary];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100026598;
  v12 = v11[3] = &unk_100318478;
  v9 = v12;
  [requestCopy enumerateKeysAndObjectsUsingBlock:v11];

  [v8 setApplicationsToOptInStatusData:v9];
  manager = [(KTIDSActualOperations *)self manager];
  [manager sendOptInUpdateRequest:v8 withCompletion:completionCopy];
}

- (void)registrationDataNeedsUpdate:(id)update
{
  updateCopy = update;
  if (qword_10038BC30 != -1)
  {
    sub_100247DA0();
  }

  v5 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = updateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "registrationDataNeedsUpdate reason: %@", &v7, 0xCu);
  }

  manager = [(KTIDSActualOperations *)self manager];
  [manager registrationDataNeedsUpdate];
}

- (void)getCurrentRegistrationState:(id)state withCompletion:(id)completion
{
  completionCopy = completion;
  manager = [(KTIDSActualOperations *)self manager];
  [manager getCurrentRegistrationState:0 withCompletion:completionCopy];
}

- (void)peerVerificationFinishedWithResults:(id)results
{
  resultsCopy = results;
  manager = [(KTIDSActualOperations *)self manager];
  [manager peerVerificationFinishedWithResults:resultsCopy];
}

- (void)cacheClearRequest:(id)request
{
  requestCopy = request;
  manager = [(KTIDSActualOperations *)self manager];
  [manager cacheClearRequest:requestCopy];
}

- (BOOL)haveIDSAccount:(id)account
{
  account = [NSString stringWithFormat:@"D:%@", account];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  idsAccounts = [(KTIDSActualOperations *)self idsAccounts];
  v6 = [idsAccounts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(idsAccounts);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 accountType] == 1)
        {
          idsDSID = [v9 idsDSID];
          v11 = [idsDSID isEqual:account];

          if (v11)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [idsAccounts countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (unint64_t)idsAccountType
{
  messagesStatus = [(KTIDSActualOperations *)self messagesStatus];
  if (messagesStatus)
  {
    v4 = messagesStatus;
    messagesStatus2 = [(KTIDSActualOperations *)self messagesStatus];
    status = [messagesStatus2 status];

    if (status == 3)
    {
      return 3;
    }
  }

  result = [(KTIDSActualOperations *)self lastPhoneAccountStatus];
  if (result)
  {
    v8 = result;
    lastPhoneAccountStatus = [(KTIDSActualOperations *)self lastPhoneAccountStatus];
    status2 = [lastPhoneAccountStatus status];

    if (status2 == 3)
    {
      messagesStatus3 = [(KTIDSActualOperations *)self messagesStatus];

      if (messagesStatus3)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)onQueueProcessStatus:(id)status
{
  statusCopy = status;
  idsQueue = [(KTIDSActualOperations *)self idsQueue];
  dispatch_assert_queue_V2(idsQueue);

  if ([statusCopy type])
  {
    if ([statusCopy type] == 1)
    {
      lastMessagesStatus = [(KTIDSActualOperations *)self lastMessagesStatus];
      if (lastMessagesStatus && (v7 = lastMessagesStatus, -[KTIDSActualOperations lastMessagesStatus](self, "lastMessagesStatus"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 status], v10 = objc_msgSend(statusCopy, "status"), v8, v7, v9 == v10))
      {
        if (qword_10038BC30 != -1)
        {
          sub_100247DB4();
        }

        v11 = qword_10038BC38;
        if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "no change", buf, 2u);
        }
      }

      else
      {
        [(KTIDSActualOperations *)self setLastMessagesStatus:statusCopy];
        idsObserver = [(KTIDSActualOperations *)self idsObserver];

        if (idsObserver)
        {
          workQueue = [(KTIDSActualOperations *)self workQueue];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_100026D50;
          v14[3] = &unk_1003180E0;
          v15 = statusCopy;
          selfCopy = self;
          dispatch_async(workQueue, v14);
        }
      }
    }
  }

  else
  {
    [(KTIDSActualOperations *)self setLastPhoneAccountStatus:statusCopy];
  }
}

- (void)signInController:(id)controller service:(unint64_t)service didChangeStatus:(id)status
{
  serviceCopy = service;
  controllerCopy = controller;
  statusCopy = status;
  if (qword_10038BC30 != -1)
  {
    sub_100247DDC();
  }

  v10 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109378;
    v12[1] = serviceCopy;
    v13 = 2112;
    v14 = statusCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "signInController:service:didChangeStatus: %d/%@", v12, 0x12u);
  }

  idsQueue = [(KTIDSActualOperations *)self idsQueue];
  dispatch_assert_queue_V2(idsQueue);
}

- (void)accountController:(id)controller accountAdded:(id)added
{
  controllerCopy = controller;
  addedCopy = added;
  if (qword_10038BC30 != -1)
  {
    sub_100247DF0();
  }

  v8 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = addedCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accountController:accountAdded: %@", &v12, 0xCu);
  }

  serviceName = [addedCopy serviceName];
  v10 = [(KTIDSActualOperations *)self _serviceTypeForName:serviceName];

  if (v10 == 1)
  {
    checkAccountNFS = [(KTIDSActualOperations *)self checkAccountNFS];
    [checkAccountNFS trigger];
  }
}

- (void)accountController:(id)controller accountUpdated:(id)updated
{
  controllerCopy = controller;
  updatedCopy = updated;
  if (qword_10038BC30 != -1)
  {
    sub_100247E04();
  }

  v8 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = updatedCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accountController:accountUpdated: %@", &v12, 0xCu);
  }

  serviceName = [updatedCopy serviceName];
  v10 = [(KTIDSActualOperations *)self _serviceTypeForName:serviceName];

  if (v10 == 1)
  {
    checkAccountNFS = [(KTIDSActualOperations *)self checkAccountNFS];
    [checkAccountNFS trigger];
  }
}

- (void)accountController:(id)controller accountRemoved:(id)removed
{
  controllerCopy = controller;
  removedCopy = removed;
  if (qword_10038BC30 != -1)
  {
    sub_100247E18();
  }

  v8 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = removedCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accountController:accountRemoved: %@", &v12, 0xCu);
  }

  serviceName = [removedCopy serviceName];
  v10 = [(KTIDSActualOperations *)self _serviceTypeForName:serviceName];

  if (v10 == 1)
  {
    checkAccountNFS = [(KTIDSActualOperations *)self checkAccountNFS];
    [checkAccountNFS trigger];
  }
}

- (void)accountController:(id)controller accountEnabled:(id)enabled
{
  controllerCopy = controller;
  enabledCopy = enabled;
  if (qword_10038BC30 != -1)
  {
    sub_100247E2C();
  }

  v8 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = enabledCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accountController:accountEnabled: %@", &v12, 0xCu);
  }

  serviceName = [enabledCopy serviceName];
  v10 = [(KTIDSActualOperations *)self _serviceTypeForName:serviceName];

  if (v10 == 1)
  {
    checkAccountNFS = [(KTIDSActualOperations *)self checkAccountNFS];
    [checkAccountNFS trigger];
  }
}

- (void)accountController:(id)controller accountDisabled:(id)disabled
{
  controllerCopy = controller;
  disabledCopy = disabled;
  if (qword_10038BC30 != -1)
  {
    sub_100247E40();
  }

  v8 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = disabledCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accountController:accountDisabled: %@", &v12, 0xCu);
  }

  serviceName = [disabledCopy serviceName];
  v10 = [(KTIDSActualOperations *)self _serviceTypeForName:serviceName];

  if (v10 == 1)
  {
    checkAccountNFS = [(KTIDSActualOperations *)self checkAccountNFS];
    [checkAccountNFS trigger];
  }
}

@end