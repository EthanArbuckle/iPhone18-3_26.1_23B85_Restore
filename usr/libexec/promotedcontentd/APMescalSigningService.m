@interface APMescalSigningService
+ (id)initializeMescalProvider:(BOOL)a3 interval:(unint64_t)a4;
+ (void)createServiceWithAMSProvider:(BOOL)a3;
+ (void)removeService;
- (APMescalSigningService)initWithAMSProvider:(BOOL)a3;
- (BOOL)signatureIsValid:(id)a3 data:(id)a4 error:(id *)a5;
- (id)_checkErrorState;
- (id)rawSignatureForData:(id)a3 error:(id *)a4;
- (id)signatureForData:(id)a3 error:(id *)a4;
- (int64_t)state;
- (void)_handleStateChange:(int64_t)a3;
- (void)backoffTimerFired;
- (void)mescalStateChanged:(int64_t)a3;
- (void)queueRawSignatureRequest:(id)a3 waitTime:(double)a4 completion:(id)a5;
- (void)queueSignatureRequest:(id)a3 waitTime:(double)a4 completion:(id)a5;
- (void)rawSignatureForData:(id)a3 waitTime:(double)a4 completion:(id)a5;
- (void)registerStateChangeDelegate:(id)a3;
- (void)retrySetup;
- (void)setState:(int64_t)a3;
- (void)signatureForData:(id)a3 waitTime:(double)a4 completion:(id)a5;
- (void)start;
@end

@implementation APMescalSigningService

+ (void)createServiceWithAMSProvider:(BOOL)a3
{
  qword_1004E6D18 = [[APMescalSigningService alloc] initWithAMSProvider:a3];

  _objc_release_x1();
}

+ (void)removeService
{
  v2 = qword_1004E6D18;
  qword_1004E6D18 = 0;
}

+ (id)initializeMescalProvider:(BOOL)a3 interval:(unint64_t)a4
{
  v5 = a3;
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v6 = [NSUserDefaults alloc];
    v7 = [v6 initWithSuiteName:APDefaultsBundleID];
    v8 = [v7 stringForKey:@"MescalProvider"];
    v9 = v8;
    if (v8)
    {
      if ([v8 isEqualToString:@"AMS"])
      {
        v10 = APLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138477827;
          v23 = objc_opt_class();
          v11 = v23;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{private}@ Using AMSMescal due to User Defaults.", &v22, 0xCu);
        }

        v12 = objc_alloc_init(APAMSMescalSigningService);
LABEL_11:
        v15 = v12;

        goto LABEL_21;
      }

      if ([v9 isEqualToString:@"AP"])
      {
        v13 = APLogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138477827;
          v23 = objc_opt_class();
          v14 = v23;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{private}@ Using FairPlay due to User Defaults.", &v22, 0xCu);
        }

        v12 = [[APAPMescalSigningService alloc] initWithInterval:a4];
        goto LABEL_11;
      }
    }
  }

  v16 = APLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = @"FairPlay";
    if (v5)
    {
      v18 = @"AMSMescal";
    }

    v22 = 138478083;
    v23 = v17;
    v24 = 2114;
    v25 = v18;
    v19 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{private}@: Using bag determined %{public}@ provider.", &v22, 0x16u);
  }

  if (v5)
  {
    v20 = objc_alloc_init(APAMSMescalSigningService);
  }

  else
  {
    v20 = [[APAPMescalSigningService alloc] initWithInterval:a4];
  }

  v15 = v20;
LABEL_21:

  return v15;
}

- (APMescalSigningService)initWithAMSProvider:(BOOL)a3
{
  v3 = a3;
  v22.receiver = self;
  v22.super_class = APMescalSigningService;
  v4 = [(APMescalSigningService *)&v22 init];
  if (v4)
  {
    v5 = APPerfLogForCategory();
    v4->_intervalId = os_signpost_id_generate(v5);

    v6 = APPerfLogForCategory();
    v7 = v6;
    intervalId = v4->_intervalId;
    if (intervalId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 67240192;
      v24 = v3;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, intervalId, "Setup Signing Service", "service=%{public, name=service}d", buf, 8u);
    }

    v9 = objc_alloc_init(NSMutableDictionary);
    requestsWhileInitializing = v4->_requestsWhileInitializing;
    v4->_requestsWhileInitializing = v9;

    v11 = [[APUnfairLock alloc] initWithOptions:1];
    syncRequestsLock = v4->_syncRequestsLock;
    v4->_syncRequestsLock = v11;

    v13 = [[APUnfairLock alloc] initWithOptions:1];
    stateLock = v4->_stateLock;
    v4->_stateLock = v13;

    v4->_state = 0;
    v15 = dispatch_queue_create("com.apple.ap.mescalsigning", 0);
    setupQueue = v4->_setupQueue;
    v4->_setupQueue = v15;

    v17 = [[NSHashTable alloc] initWithOptions:5 capacity:2];
    mescalStateDelegates = v4->_mescalStateDelegates;
    v4->_mescalStateDelegates = v17;

    [(APMescalSigningService *)v4 setSetupStartTime:CFAbsoluteTimeGetCurrent()];
    v19 = [objc_opt_class() initializeMescalProvider:v3 interval:v4->_intervalId];
    provider = v4->_provider;
    v4->_provider = v19;

    [(APMescalSigningProviderProtocol *)v4->_provider setDelegate:v4];
    [(APMescalSigningService *)v4 start];
  }

  return v4;
}

- (void)mescalStateChanged:(int64_t)a3
{
  [(APMescalSigningService *)self setState:a3];
  if ([(APMescalSigningService *)self state]== 3)
  {

    [(APMescalSigningService *)self retrySetup];
  }

  else if ([(APMescalSigningService *)self state]== 2)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      Current = CFAbsoluteTimeGetCurrent();
      [(APMescalSigningService *)self setupStartTime];
      *buf = 136643075;
      v23 = "[APMescalSigningService mescalStateChanged:]";
      v24 = 2048;
      v25 = Current - v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{sensitive}s]: Request signing negotiation complete; signing and verification now available. Setup took %0.2lfs", buf, 0x16u);
    }

    v7 = [(APMescalSigningService *)self syncRequestsLock];
    [v7 lock];
    v8 = [(APMescalSigningService *)self requestsWhileInitializing];
    v9 = objc_alloc_init(NSMutableDictionary);
    [(APMescalSigningService *)self setRequestsWhileInitializing:v9];

    [v7 unlock];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [v8 allValues];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          v16 = [(APMescalSigningService *)self setupQueue];
          dispatch_async(v16, v15);
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)start
{
  v3 = [(APMescalSigningService *)self setupQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100323B9C;
  block[3] = &unk_1004790A8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)registerStateChangeDelegate:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(APMescalSigningService *)v4 mescalStateDelegates];
    [v5 addObject:v6];

    [v6 mescalStateChanged:{-[APMescalSigningService state](v4, "state")}];
    objc_sync_exit(v4);
  }
}

- (int64_t)state
{
  v3 = [(APMescalSigningService *)self stateLock];
  [v3 lock];
  state = self->_state;
  [v3 unlock];

  return state;
}

- (void)setState:(int64_t)a3
{
  v5 = [(APMescalSigningService *)self stateLock];
  [v5 lock];
  state = self->_state;
  self->_state = a3;
  v7 = APPerfLogForCategory();
  v8 = [(APMescalSigningService *)self intervalId];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 134349056;
      v13 = a3;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, v9, "Service State", "Service State state=%{public, name=state}ld", buf, 0xCu);
    }
  }

  [v5 unlock];
  if (state != a3)
  {
    v10 = [(APMescalSigningService *)self setupQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100323E6C;
    v11[3] = &unk_10047E278;
    v11[4] = self;
    v11[5] = a3;
    dispatch_async(v10, v11);
  }
}

- (void)_handleStateChange:(int64_t)a3
{
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [&off_100494860 objectAtIndexedSubscript:a3];
    *buf = 138543362;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mescal signing state set to %{public}@.", buf, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [(APMescalSigningService *)v7 mescalStateDelegates];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (v12)
        {
          [v12 mescalStateChanged:a3];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }

  switch(a3)
  {
    case 4:
      goto LABEL_15;
    case 3:
      [(APMescalSigningService *)v7 retrySetup];
      if (qword_1004E6D20 != -1)
      {
        sub_100394654();
      }

      v20 = APPerfLogForCategory();
      v21 = [(APMescalSigningService *)v7 intervalId];
      if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v21, "Setup Signing Service", "", buf, 2u);
      }

      goto LABEL_29;
    case 2:
LABEL_15:
      v13 = [(APMescalSigningService *)v7 backoffTimer];
      v14 = v13 == 0;

      if (!v14)
      {
        v15 = [(APMescalSigningService *)v7 backoffTimer];
        [v15 reset];

        [(APMescalSigningService *)v7 setBackoffTimer:0];
      }

      v16 = APPerfLogForCategory();
      v17 = [(APMescalSigningService *)v7 intervalId];
      if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v17, "Setup Signing Service", "", buf, 2u);
      }

      if (a3 == 2)
      {
        v28 = @"finalStatus";
        v29 = &off_100492E50;
        v18 = &v28;
        v19 = &v29;
      }

      else
      {
        v26 = @"finalStatus";
        v27 = &off_100492E68;
        v18 = &v26;
        v19 = &v27;
      }

      v20 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:1];
      AnalyticsSendEvent();
LABEL_29:

      break;
  }

  objc_sync_exit(v7);
}

- (id)_checkErrorState
{
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v3 = [NSUserDefaults alloc];
    v4 = [v3 initWithSuiteName:APDefaultsBundleID];
    v5 = [v4 objectForKey:@"MescalForceState"];

    if (v5)
    {
      v6 = [v4 integerForKey:@"MescalForceState"];
      if (v6 <= 4)
      {
        [(APMescalSigningService *)self setState:v6];
      }
    }
  }

  v7 = [(APMescalSigningService *)self state];
  if (v7 <= 4 && ((0x1Bu >> v7) & 1) != 0)
  {
    v8 = *(&off_10047E2E0 + v7);
    v9 = qword_1003F0900[v7];
    v13 = @"reason";
    v14 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v11 = [NSError errorWithDomain:@"com.apple.ap.MescalSigning" code:v9 userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)signatureIsValid:(id)a3 data:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [(APMescalSigningService *)self _checkErrorState];
    v12 = v11;
    if (a5)
    {
      v13 = v11;
      *a5 = v12;
    }

    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v17 = [(APMescalSigningService *)self provider];
      v14 = [v17 signatureIsValid:v8 data:v10 error:a5];
    }
  }

  else
  {
    if (a5)
    {
      v21 = @"reason";
      v22 = @"Signature and data must not be nil.";
      v15 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *a5 = [NSError errorWithDomain:@"com.apple.ap.MescalSigning" code:1100 userInfo:v15];
    }

    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136642819;
      v20 = "[APMescalSigningService signatureIsValid:data:error:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: signature and data must not be nil.", &v19, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (id)signatureForData:(id)a3 error:(id *)a4
{
  v4 = [(APMescalSigningService *)self rawSignatureForData:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 base64EncodedStringWithOptions:32];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)rawSignatureForData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(APMescalSigningService *)self _checkErrorState];
    v8 = v7;
    if (a4)
    {
      v9 = v7;
      *a4 = v8;
    }

    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v11 = [(APMescalSigningService *)self provider];
      v10 = [v11 rawSignatureForData:v6 error:a4];

      v12 = APLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        if (a4)
        {
          v13 = *a4;
        }

        else
        {
          v13 = @"(null)";
        }

        v15 = 138740227;
        v16 = v10;
        v17 = 2114;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Returning signature %{sensitive}@ with error %{public}@", &v15, 0x16u);
      }
    }
  }

  else
  {
    if (!a4)
    {
      v10 = 0;
      goto LABEL_16;
    }

    v19 = @"reason";
    v20 = @"Passed in data was nil.";
    v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [NSError errorWithDomain:@"com.apple.ap.MescalSigning" code:1100 userInfo:v8];
    *a4 = v10 = 0;
  }

LABEL_16:

  return v10;
}

- (void)signatureForData:(id)a3 waitTime:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  if ([(APMescalSigningService *)self state]== 2)
  {
    v11 = 0;
    v10 = [(APMescalSigningService *)self signatureForData:v9 error:&v11];

    v9 = v11;
    v8[2](v8, v10, v9);
  }

  else
  {
    [(APMescalSigningService *)self queueSignatureRequest:v9 waitTime:v8 completion:a4];
  }
}

- (void)rawSignatureForData:(id)a3 waitTime:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(APMescalSigningService *)self state]== 2)
  {
    v10 = [(APMescalSigningService *)self provider];
    v13 = 0;
    v11 = [v10 rawSignatureForData:v8 error:&v13];
    v12 = v13;

    v9[2](v9, v11, v12);
  }

  else
  {
    [(APMescalSigningService *)self queueRawSignatureRequest:v8 waitTime:v9 completion:a4];
  }
}

- (void)queueRawSignatureRequest:(id)a3 waitTime:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NSUUID UUID];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100324BE0;
  v27[3] = &unk_100478AB0;
  v27[4] = self;
  v11 = v8;
  v28 = v11;
  v12 = v9;
  v29 = v12;
  v13 = objc_retainBlock(v27);
  v14 = [(APMescalSigningService *)self syncRequestsLock];
  [v14 lock];
  v15 = [(APMescalSigningService *)self requestsWhileInitializing];
  v16 = objc_retainBlock(v13);
  [v15 setObject:v16 forKey:v10];

  [v14 unlock];
  objc_initWeak(&location, self);
  v17 = dispatch_time(0, (a4 * 1000000000.0));
  v18 = [(APMescalSigningService *)self setupQueue];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100324C68;
  v23 = &unk_10047C9A0;
  objc_copyWeak(&v25, &location);
  v19 = v10;
  v24 = v19;
  dispatch_after(v17, v18, &v20);

  [(APMescalSigningService *)self retrySetup:v20];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)queueSignatureRequest:(id)a3 waitTime:(double)a4 completion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100324E08;
  v9[3] = &unk_10047E2C0;
  v10 = a5;
  v8 = v10;
  [(APMescalSigningService *)self queueRawSignatureRequest:a3 waitTime:v9 completion:a4];
}

- (void)retrySetup
{
  if ([(APMescalSigningService *)self state]== 1 || [(APMescalSigningService *)self state]== 2)
  {
    v3 = APLogForCategory();
    if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_ERROR))
    {
      state = self->_state;
      v13 = 136643075;
      v14 = "[APMescalSigningService retrySetup]";
      v15 = 2048;
      v16 = state;
      _os_log_impl(&_mh_execute_header, &v3->super, OS_LOG_TYPE_ERROR, "[%{sensitive}s]: Unexpected state %ld attempting to set up request signing.", &v13, 0x16u);
    }
  }

  else
  {
    if ([(APMescalSigningService *)self state]!= 3)
    {
      return;
    }

    v3 = self;
    objc_sync_enter(v3);
    v5 = [(APMescalSigningService *)v3 backoffTimer];

    if (!v5)
    {
      v6 = [[APBackoffTimer alloc] initWithSchedule:&off_100494878 name:@"APMescalSigningService"];
      backoffTimer = v3->_backoffTimer;
      v3->_backoffTimer = v6;

      v8 = [(APMescalSigningService *)v3 backoffTimer];
      [v8 setDelegate:v3];
    }

    v9 = [(APMescalSigningService *)v3 backoffTimer];
    v10 = [(APMescalSigningService *)v3 setupQueue];
    v11 = [v9 scheduleNextLevelWithQueue:v10];

    if ((v11 & 1) == 0)
    {
      v12 = APLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error: Couldn't schedule Backoff Timer for Mescal Signing Service.", &v13, 2u);
      }
    }

    objc_sync_exit(v3);
  }
}

- (void)backoffTimerFired
{
  v3 = APPerfLogForCategory();
  v4 = [(APMescalSigningService *)self intervalId];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Setup Signing Service", "", buf, 2u);
    }
  }

  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting request signing session recovery after previous failure.", buf, 2u);
  }

  [(APMescalSigningService *)self setState:1];
  [(APMescalSigningService *)self setSetupStartTime:CFAbsoluteTimeGetCurrent()];
  v7 = [(APMescalSigningService *)self setupQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100325224;
  block[3] = &unk_1004790A8;
  block[4] = self;
  dispatch_async(v7, block);
}

@end