@interface SDAutoUnlockRegistrationKeySession
- (void)handleStepData:(id)a3;
- (void)onQueue_start;
- (void)start;
- (void)transport:(id)a3 didReceivePayload:(id)a4 type:(unsigned __int16)a5 deviceID:(id)a6;
@end

@implementation SDAutoUnlockRegistrationKeySession

- (void)start
{
  v3 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017F080;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)onQueue_start
{
  v3 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [SDAutoUnlockDeviceRegistrationRequest alloc];
  v5 = [(SDAutoUnlockRegistrationKeySession *)self requestData];
  v6 = [(SDAutoUnlockDeviceRegistrationRequest *)v4 initWithData:v5];

  if (v6 || [(SDAutoUnlockRegistrationKeySession *)self isLocallyGenerated])
  {
    v7 = +[SDStatusMonitor sharedMonitor];
    v8 = [v7 deviceKeyBagUnlocked];

    if (v8)
    {
      v9 = +[SDAutoUnlockAKSManager sharedManager];
      v10 = [(SDAutoUnlockPairingSession *)self deviceID];
      v11 = [v9 aksRegistrationSessionForDeviceID:v10 originator:1];
      [(SDAutoUnlockPairingSession *)self setAksSession:v11];

      v12 = [(SDAutoUnlockPairingSession *)self aksSession];
      LODWORD(v10) = [v12 sessionIsValid];

      if (v10)
      {
        v13 = [(SDAutoUnlockPairingSession *)self aksSession];
        v23 = 0;
        v14 = [v13 stepSessionWithData:0 outputData:&v23];
        v15 = v23;

        if (v14)
        {
          v16 = [(SDAutoUnlockRegistrationKeySession *)self isLocallyGenerated];
          v17 = [(SDAutoUnlockRegistrationKeySession *)self isLocallyGenerated];
          v18 = &unk_1007F4790;
          if (!v17)
          {
            v18 = &qword_1007F4788;
          }

          v19 = *v18;
          if (v16)
          {
            v20 = 505;
          }

          else
          {
            v20 = 502;
          }

          [(SDAutoUnlockRegistrationKeySession *)self sendStepData:v15 type:v20 errorCode:0];
          [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(v19)];
          goto LABEL_27;
        }

        v22 = auto_unlock_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10017FA98();
        }
      }

      else
      {
        v15 = auto_unlock_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10017FA64();
        }
      }

      v21 = 101;
    }

    else
    {
      v15 = auto_unlock_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10017FA30();
      }

      v21 = 102;
    }
  }

  else
  {
    v15 = auto_unlock_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10017F9FC();
    }

    v21 = 212;
  }

  if (![(SDAutoUnlockRegistrationKeySession *)self isLocallyGenerated])
  {
    [(SDAutoUnlockRegistrationKeySession *)self sendStepData:0 type:502 errorCode:v21];
    [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(20.0)];
  }

  v15 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:v21 userInfo:0];
  [(SDAutoUnlockRegistrationSession *)self notifyDelegateWithError:v15];
LABEL_27:
}

- (void)handleStepData:(id)a3
{
  v4 = a3;
  v5 = [[SDAutoUnlockDeviceRegistrationStep alloc] initWithData:v4];

  v6 = [(SDAutoUnlockDeviceRegistrationStep *)v5 stepData];

  if (!v6)
  {
    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10017FB00();
    }

    v17 = 211;
    goto LABEL_19;
  }

  v7 = +[SDStatusMonitor sharedMonitor];
  v8 = [v7 deviceKeyBagUnlocked];

  if (!v8)
  {
    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10017FA30();
    }

    v17 = 102;
    goto LABEL_19;
  }

  v9 = [(SDAutoUnlockPairingSession *)self aksSession];
  v10 = [(SDAutoUnlockDeviceRegistrationStep *)v5 stepData];
  v20 = 0;
  v11 = [v9 stepSessionWithData:v10 outputData:&v20];
  v12 = v20;

  if (!v11)
  {
    v18 = auto_unlock_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10017FA98();
    }

    goto LABEL_18;
  }

  v13 = [(SDAutoUnlockPairingSession *)self aksSession];
  v14 = [v13 confirmSession];

  if (!v14)
  {
    v18 = auto_unlock_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10017FACC();
    }

LABEL_18:

    v17 = 101;
LABEL_19:

    [(SDAutoUnlockRegistrationKeySession *)self sendStepData:0 type:504 errorCode:v17];
    [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(20.0)];
    v12 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:v17 userInfo:0];
    [(SDAutoUnlockRegistrationSession *)self notifyDelegateWithError:v12];
    goto LABEL_20;
  }

  v15 = objc_alloc_init(SDAutoUnlockDeviceRegistrationStep);
  [(SDAutoUnlockDeviceRegistrationStep *)v15 setStepData:v12];
  [(SDAutoUnlockRegistrationKeySession *)self sendStepData:v12 type:504 errorCode:0];
  [(SDAutoUnlockPairingSession *)self invalidateResponseTimer];
  v16 = auto_unlock_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Successfully registered local device", v19, 2u);
  }

  [(SDAutoUnlockRegistrationSession *)self notifyDelegateWithError:0];
LABEL_20:
}

- (void)transport:(id)a3 didReceivePayload:(id)a4 type:(unsigned __int16)a5 deviceID:(id)a6
{
  v8 = a4;
  v9 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017F914;
  block[3] = &unk_1008CFBD8;
  v13 = a5;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(v9, block);
}

@end