@interface KTIDSActualOperations
+ (BOOL)ktVerifyError:(id)a3 code:(int64_t)a4;
+ (id)healableError:(id)a3 selfValidationResult:(id)a4;
- (BOOL)haveIDSAccount:(id)a3;
- (KTIDSActualOperations)initWithIDSAccountController:(id)a3 lockStateTracker:(id)a4;
- (unint64_t)idsAccountType;
- (void)accountController:(id)a3 accountAdded:(id)a4;
- (void)accountController:(id)a3 accountDisabled:(id)a4;
- (void)accountController:(id)a3 accountEnabled:(id)a4;
- (void)accountController:(id)a3 accountRemoved:(id)a4;
- (void)accountController:(id)a3 accountUpdated:(id)a4;
- (void)cacheClearRequest:(id)a3;
- (void)checkAccountChange;
- (void)dealloc;
- (void)drain;
- (void)fetchPeerVerificationInfos:(id)a3 application:(id)a4 completionBlock:(id)a5;
- (void)fetchSelfVerificationInfo:(id)a3 completionBlock:(id)a4;
- (void)getCurrentRegistrationState:(id)a3 withCompletion:(id)a4;
- (void)getKeyTransparencyOptInEligiblityForApplication:(id)a3 withCompletion:(id)a4;
- (void)onQueueDrain;
- (void)onQueueProcessStatus:(id)a3;
- (void)peerVerificationFinishedWithResults:(id)a3;
- (void)registrationDataNeedsUpdate:(id)a3;
- (void)sendOptInUpdateRequest:(id)a3 withCompletion:(id)a4;
- (void)signInController:(id)a3 service:(unint64_t)a4 didChangeStatus:(id)a5;
- (void)triggerIDSCheck:(id)a3 selfValidationResult:(id)a4 complete:(id)a5;
@end

@implementation KTIDSActualOperations

- (KTIDSActualOperations)initWithIDSAccountController:(id)a3 lockStateTracker:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v14 = [(KTIDSActualOperations *)v8 idsQueue];
    v15 = [v13 initWithQueue:v14];
    [(KTIDSActualOperations *)v8 setIdsSignInController:v15];

    v16 = [(KTIDSActualOperations *)v8 idsSignInController];
    [v16 setDelegate:v8 forService:1];

    [(KTIDSActualOperations *)v8 setCheckIDSTimeoutSeconds:90.0];
    [(KTIDSActualOperations *)v8 setSleepTimeBetweenIDSCheckups:10.0];
    [(KTIDSActualOperations *)v8 setAccountController:v6];
    v17 = [(KTIDSActualOperations *)v8 accountController];
    v18 = [(KTIDSActualOperations *)v8 idsQueue];
    [v17 addDelegate:v8 queue:v18];

    [(KTIDSActualOperations *)v8 setRegisteredDelegate:1];
    v19 = +[NSArray array];
    [(KTIDSActualOperations *)v8 setIdsAccounts:v19];

    [(KTIDSActualOperations *)v8 setLockStateTracker:v7];
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

    v23 = [(KTIDSActualOperations *)v8 checkAccountNFS];
    [v23 trigger];

    v24 = v8;
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)drain
{
  v3 = [(KTIDSActualOperations *)self idsControllerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025510;
  block[3] = &unk_100316FE0;
  block[4] = self;
  dispatch_sync(v3, block);

  v4 = [(KTIDSActualOperations *)self idsQueue];
  dispatch_sync(v4, &stru_100318378);
}

- (void)onQueueDrain
{
  if ([(KTIDSActualOperations *)self registeredDelegate])
  {
    [(KTIDSActualOperations *)self setRegisteredDelegate:0];
    v3 = [(KTIDSActualOperations *)self checkAccountNFS];
    [v3 cancel];

    v4 = [(KTIDSActualOperations *)self accountController];
    [v4 removeDelegate:self];

    v5 = [(KTIDSActualOperations *)self idsSignInController];
    [v5 removeDelegateForService:1];
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
  v3 = [(KTIDSActualOperations *)self idsControllerQueue];
  dispatch_assert_queue_V2(v3);

  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(KTIDSActualOperations *)self accountController];
  v6 = [v5 accounts];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v10 = [[KTIDSAccountHolder alloc] initWithIDSAccount:*(*(&v14 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  [(KTIDSActualOperations *)self setIdsAccounts:v4];
  v11 = [(KTIDSActualOperations *)self idsSignInController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100025860;
  v12[3] = &unk_1003183E0;
  v12[4] = self;
  objc_copyWeak(&v13, &location);
  [v11 statusOfUsersOnService:1 withCompletion:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

+ (BOOL)ktVerifyError:(id)a3 code:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 domain];
  if ([v6 isEqual:@"TransparencyErrorVerify"])
  {
    v7 = [v5 code] == a4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)healableError:(id)a3 selfValidationResult:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(KTSelfVerificationHealableErrors);
  [v6 addHealableState:1];
  if (!v5)
  {
    [v6 addAccountHealableError:0];
  }

  v7 = [v5 resultError];
  v8 = [a1 ktVerifyError:v7 code:-271];

  if (v8)
  {
    v9 = 2;
LABEL_7:
    [v6 addAccountHealableError:v9];
    goto LABEL_8;
  }

  v10 = [v5 resultError];
  v11 = [a1 ktVerifyError:v10 code:-289];

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
  v12 = [v5 loggableData];
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
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
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v41 + 1) + 8 * v16);
      v18 = [v17 deviceID];

      if (v18)
      {
        v19 = [v17 signature];
        if (!v19 || (v20 = v19, [v17 failure], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "code"), v21, v20, v22 == -286))
        {
          v23 = [v17 deviceID];
          [v6 addDeviceHealableError:3 deviceId:v23];
        }

        v24 = [v17 failure];
        v25 = [v24 code];

        if (v25 == -272)
        {
          v26 = [v17 deviceID];
          [v6 addDeviceHealableError:4 deviceId:v26];
        }

        v27 = [v17 failure];
        v28 = [v27 code];

        if (v28 == -101)
        {
          v29 = [v17 deviceID];
          [v6 addDeviceHealableError:6 deviceId:v29];
        }

        v30 = [v17 failure];
        if ([v30 code] == -94)
        {
          goto LABEL_26;
        }

        v31 = [v17 failure];
        if ([v31 code] == -93)
        {
          goto LABEL_25;
        }

        v32 = [v17 failure];
        if ([v32 code] == -95)
        {

LABEL_25:
LABEL_26:

LABEL_27:
          v33 = [v17 deviceID];
          [v6 addDeviceHealableError:5 deviceId:v33];

          goto LABEL_28;
        }

        [v17 failure];
        v34 = v15;
        v36 = v35 = v12;
        v40 = [v36 code];

        v12 = v35;
        v15 = v34;

        if (v40 == -96)
        {
          goto LABEL_27;
        }
      }

LABEL_28:
      v16 = v16 + 1;
    }

    while (v14 != v16);
    v37 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
    v14 = v37;
  }

  while (v37);
LABEL_33:

  return v6;
}

- (void)triggerIDSCheck:(id)a3 selfValidationResult:(id)a4 complete:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() healableError:v10 selfValidationResult:v9];

  v12 = [(KTIDSActualOperations *)self manager];
  v13 = [v12 verificationInfoProviderIdForApplication:v10];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000260C4;
  v15[3] = &unk_100318428;
  v16 = v8;
  v14 = v8;
  [v13 healSelf:v11 completionBlock:v15];
}

- (void)fetchPeerVerificationInfos:(id)a3 application:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(KTIDSActualOperations *)self manager];
  v12 = [v11 verificationInfoProviderIdForApplication:v10];

  if (v12)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000262F8;
    v13[3] = &unk_1003176B8;
    v14 = v9;
    [v12 fetchPeerVerificationInfos:v8 completionBlock:v13];
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

- (void)fetchSelfVerificationInfo:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KTIDSActualOperations *)self manager];
  v9 = [v8 verificationInfoProviderIdForApplication:v7];

  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000263FC;
    v10[3] = &unk_100318450;
    v11 = v6;
    [v9 fetchSelfVerificationInfo:v10];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)getKeyTransparencyOptInEligiblityForApplication:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(KTIDSActualOperations *)self manager];
  [v8 getKeyTransparencyOptInEligiblityForApplication:v7 withCompletion:v6];
}

- (void)sendOptInUpdateRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(IDSKTOptInOutRequest);
  +[NSMutableDictionary dictionary];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100026598;
  v12 = v11[3] = &unk_100318478;
  v9 = v12;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

  [v8 setApplicationsToOptInStatusData:v9];
  v10 = [(KTIDSActualOperations *)self manager];
  [v10 sendOptInUpdateRequest:v8 withCompletion:v6];
}

- (void)registrationDataNeedsUpdate:(id)a3
{
  v4 = a3;
  if (qword_10038BC30 != -1)
  {
    sub_100247DA0();
  }

  v5 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "registrationDataNeedsUpdate reason: %@", &v7, 0xCu);
  }

  v6 = [(KTIDSActualOperations *)self manager];
  [v6 registrationDataNeedsUpdate];
}

- (void)getCurrentRegistrationState:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = [(KTIDSActualOperations *)self manager];
  [v6 getCurrentRegistrationState:0 withCompletion:v5];
}

- (void)peerVerificationFinishedWithResults:(id)a3
{
  v4 = a3;
  v5 = [(KTIDSActualOperations *)self manager];
  [v5 peerVerificationFinishedWithResults:v4];
}

- (void)cacheClearRequest:(id)a3
{
  v4 = a3;
  v5 = [(KTIDSActualOperations *)self manager];
  [v5 cacheClearRequest:v4];
}

- (BOOL)haveIDSAccount:(id)a3
{
  v4 = [NSString stringWithFormat:@"D:%@", a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(KTIDSActualOperations *)self idsAccounts];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 accountType] == 1)
        {
          v10 = [v9 idsDSID];
          v11 = [v10 isEqual:v4];

          if (v11)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(KTIDSActualOperations *)self messagesStatus];
  if (v3)
  {
    v4 = v3;
    v5 = [(KTIDSActualOperations *)self messagesStatus];
    v6 = [v5 status];

    if (v6 == 3)
    {
      return 3;
    }
  }

  result = [(KTIDSActualOperations *)self lastPhoneAccountStatus];
  if (result)
  {
    v8 = result;
    v9 = [(KTIDSActualOperations *)self lastPhoneAccountStatus];
    v10 = [v9 status];

    if (v10 == 3)
    {
      v11 = [(KTIDSActualOperations *)self messagesStatus];

      if (v11)
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

- (void)onQueueProcessStatus:(id)a3
{
  v4 = a3;
  v5 = [(KTIDSActualOperations *)self idsQueue];
  dispatch_assert_queue_V2(v5);

  if ([v4 type])
  {
    if ([v4 type] == 1)
    {
      v6 = [(KTIDSActualOperations *)self lastMessagesStatus];
      if (v6 && (v7 = v6, -[KTIDSActualOperations lastMessagesStatus](self, "lastMessagesStatus"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 status], v10 = objc_msgSend(v4, "status"), v8, v7, v9 == v10))
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
        [(KTIDSActualOperations *)self setLastMessagesStatus:v4];
        v12 = [(KTIDSActualOperations *)self idsObserver];

        if (v12)
        {
          v13 = [(KTIDSActualOperations *)self workQueue];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_100026D50;
          v14[3] = &unk_1003180E0;
          v15 = v4;
          v16 = self;
          dispatch_async(v13, v14);
        }
      }
    }
  }

  else
  {
    [(KTIDSActualOperations *)self setLastPhoneAccountStatus:v4];
  }
}

- (void)signInController:(id)a3 service:(unint64_t)a4 didChangeStatus:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (qword_10038BC30 != -1)
  {
    sub_100247DDC();
  }

  v10 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109378;
    v12[1] = v6;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "signInController:service:didChangeStatus: %d/%@", v12, 0x12u);
  }

  v11 = [(KTIDSActualOperations *)self idsQueue];
  dispatch_assert_queue_V2(v11);
}

- (void)accountController:(id)a3 accountAdded:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_10038BC30 != -1)
  {
    sub_100247DF0();
  }

  v8 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accountController:accountAdded: %@", &v12, 0xCu);
  }

  v9 = [v7 serviceName];
  v10 = [(KTIDSActualOperations *)self _serviceTypeForName:v9];

  if (v10 == 1)
  {
    v11 = [(KTIDSActualOperations *)self checkAccountNFS];
    [v11 trigger];
  }
}

- (void)accountController:(id)a3 accountUpdated:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_10038BC30 != -1)
  {
    sub_100247E04();
  }

  v8 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accountController:accountUpdated: %@", &v12, 0xCu);
  }

  v9 = [v7 serviceName];
  v10 = [(KTIDSActualOperations *)self _serviceTypeForName:v9];

  if (v10 == 1)
  {
    v11 = [(KTIDSActualOperations *)self checkAccountNFS];
    [v11 trigger];
  }
}

- (void)accountController:(id)a3 accountRemoved:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_10038BC30 != -1)
  {
    sub_100247E18();
  }

  v8 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accountController:accountRemoved: %@", &v12, 0xCu);
  }

  v9 = [v7 serviceName];
  v10 = [(KTIDSActualOperations *)self _serviceTypeForName:v9];

  if (v10 == 1)
  {
    v11 = [(KTIDSActualOperations *)self checkAccountNFS];
    [v11 trigger];
  }
}

- (void)accountController:(id)a3 accountEnabled:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_10038BC30 != -1)
  {
    sub_100247E2C();
  }

  v8 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accountController:accountEnabled: %@", &v12, 0xCu);
  }

  v9 = [v7 serviceName];
  v10 = [(KTIDSActualOperations *)self _serviceTypeForName:v9];

  if (v10 == 1)
  {
    v11 = [(KTIDSActualOperations *)self checkAccountNFS];
    [v11 trigger];
  }
}

- (void)accountController:(id)a3 accountDisabled:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_10038BC30 != -1)
  {
    sub_100247E40();
  }

  v8 = qword_10038BC38;
  if (os_log_type_enabled(qword_10038BC38, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "accountController:accountDisabled: %@", &v12, 0xCu);
  }

  v9 = [v7 serviceName];
  v10 = [(KTIDSActualOperations *)self _serviceTypeForName:v9];

  if (v10 == 1)
  {
    v11 = [(KTIDSActualOperations *)self checkAccountNFS];
    [v11 trigger];
  }
}

@end