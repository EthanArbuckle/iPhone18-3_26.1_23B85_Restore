@interface SDAutoUnlockRegistrationLockSession
- (SDAutoUnlockRegistrationLockSession)initWithDevice:(id)device sessionID:(id)d;
- (void)handleFinalize:(id)finalize;
- (void)handleInitialResponse:(id)response;
- (void)onQueue_start;
- (void)sendInitialRequest;
- (void)start;
- (void)transport:(id)transport didReceivePayload:(id)payload type:(unsigned __int16)type deviceID:(id)d;
@end

@implementation SDAutoUnlockRegistrationLockSession

- (SDAutoUnlockRegistrationLockSession)initWithDevice:(id)device sessionID:(id)d
{
  v5.receiver = self;
  v5.super_class = SDAutoUnlockRegistrationLockSession;
  result = [(SDAutoUnlockPairingSession *)&v5 initWithDevice:device sessionID:d];
  if (result)
  {
    result->_state = 0;
  }

  return result;
}

- (void)start
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026C618;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

- (void)onQueue_start
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  dispatch_assert_queue_V2(sessionQueue);

  requestData = [(SDAutoUnlockRegistrationLockSession *)self requestData];

  if (requestData)
  {
    requestData2 = [(SDAutoUnlockRegistrationLockSession *)self requestData];
    [(SDAutoUnlockRegistrationLockSession *)self handleInitialResponse:requestData2];
  }

  else
  {

    [(SDAutoUnlockRegistrationLockSession *)self sendInitialRequest];
  }
}

- (void)sendInitialRequest
{
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  dispatch_assert_queue_V2(sessionQueue);

  v4 = objc_alloc_init(SDAutoUnlockDeviceRegistrationRequest);
  v5 = +[SDAutoUnlockTransport sharedTransport];
  data = [(SDAutoUnlockDeviceRegistrationRequest *)v4 data];
  deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
  sessionID = [(SDAutoUnlockPairingSession *)self sessionID];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10026C804;
  v9[3] = &unk_1008CDF90;
  v9[4] = self;
  [v5 sendPayload:data toDevice:deviceID type:501 sessionID:sessionID timeout:&off_10090C4C8 errorHandler:v9];

  [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(20.0)];
}

- (void)handleInitialResponse:(id)response
{
  responseCopy = response;
  v5 = [[SDAutoUnlockDeviceRegistrationStep alloc] initWithData:responseCopy];

  if ([(SDAutoUnlockDeviceRegistrationStep *)v5 errorCode])
  {
    v6 = SFAutoUnlockErrorDomain;
    errorCode = [(SDAutoUnlockDeviceRegistrationStep *)v5 errorCode];
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Error during registration";
    v8 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v9 = [NSError errorWithDomain:v6 code:errorCode userInfo:v8];
    [(SDAutoUnlockRegistrationSession *)self notifyDelegateWithError:v9];
  }

  else if ([(SDAutoUnlockDeviceRegistrationStep *)v5 hasStepData])
  {
    v10 = +[SDAutoUnlockAKSManager sharedManager];
    deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
    v12 = [v10 aksRegistrationSessionForDeviceID:deviceID originator:0];
    [(SDAutoUnlockPairingSession *)self setAksSession:v12];

    aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
    LODWORD(deviceID) = [aksSession sessionIsValid];

    if (deviceID)
    {
      aksSession2 = [(SDAutoUnlockPairingSession *)self aksSession];
      stepData = [(SDAutoUnlockDeviceRegistrationStep *)v5 stepData];
      v28 = 0;
      v16 = [aksSession2 stepSessionWithData:stepData outputData:&v28];
      v17 = v28;

      if (v16)
      {
        v18 = objc_alloc_init(SDAutoUnlockDeviceRegistrationStep);
        [(SDAutoUnlockDeviceRegistrationStep *)v18 setStepData:v17];
        v19 = +[SDAutoUnlockTransport sharedTransport];
        data = [(SDAutoUnlockDeviceRegistrationStep *)v18 data];
        deviceID2 = [(SDAutoUnlockPairingSession *)self deviceID];
        sessionID = [(SDAutoUnlockPairingSession *)self sessionID];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10026CC98;
        v27[3] = &unk_1008CDF90;
        v27[4] = self;
        [v19 sendPayload:data toDevice:deviceID2 type:503 sessionID:sessionID timeout:&off_10090C4C8 errorHandler:v27];

        [(SDAutoUnlockPairingSession *)self restartResponseTimer:sub_1001F0530(20.0)];
      }

      else
      {
        v18 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:101 userInfo:0];
        [(SDAutoUnlockRegistrationSession *)self notifyDelegateWithError:v18];
      }
    }

    else
    {
      v26 = [NSError errorWithDomain:SFAutoUnlockErrorDomain code:101 userInfo:0];
      [(SDAutoUnlockRegistrationSession *)self notifyDelegateWithError:v26];
    }
  }

  else
  {
    v23 = SFAutoUnlockErrorDomain;
    v29 = NSLocalizedDescriptionKey;
    v30 = @"Registration Token missing";
    v24 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v25 = [NSError errorWithDomain:v23 code:211 userInfo:v24];
    [(SDAutoUnlockRegistrationSession *)self notifyDelegateWithError:v25];
  }
}

- (void)handleFinalize:(id)finalize
{
  finalizeCopy = finalize;
  v5 = [[SDAutoUnlockDeviceRegistrationStep alloc] initWithData:finalizeCopy];

  if (![(SDAutoUnlockDeviceRegistrationStep *)v5 errorCode])
  {
    if ([(SDAutoUnlockDeviceRegistrationStep *)v5 hasStepData])
    {
      aksSession = [(SDAutoUnlockPairingSession *)self aksSession];
      stepData = [(SDAutoUnlockDeviceRegistrationStep *)v5 stepData];
      v12 = [aksSession stepSessionWithData:stepData outputData:0];

      if (v12)
      {
        aksSession2 = [(SDAutoUnlockPairingSession *)self aksSession];
        finalizeRegistration = [aksSession2 finalizeRegistration];

        if (!finalizeRegistration)
        {
          v22 = +[SDAutoUnlockAKSManager sharedManager];
          deviceID = [(SDAutoUnlockPairingSession *)self deviceID];
          v8 = [v22 remoteLTKForDeviceID:deviceID];

          v24 = sub_100021BD4(v8);
          v25 = auto_unlock_log();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = sub_10005CDC0(v24);
            v27 = 138412290;
            v28 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Device has been registered (peer state is %@)", &v27, 0xCu);
          }

          selfCopy2 = self;
          v21 = 0;
          goto LABEL_17;
        }

        v15 = auto_unlock_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10026D394();
        }
      }

      else
      {
        v19 = auto_unlock_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10026D354();
        }
      }

      v17 = SFAutoUnlockErrorDomain;
      v18 = 101;
    }

    else
    {
      v16 = auto_unlock_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10026D314();
      }

      v17 = SFAutoUnlockErrorDomain;
      v18 = 211;
    }

    v8 = [NSError errorWithDomain:v17 code:v18 userInfo:0];
    selfCopy2 = self;
    v21 = v8;
LABEL_17:
    [(SDAutoUnlockRegistrationSession *)selfCopy2 notifyDelegateWithError:v21];
    goto LABEL_18;
  }

  v6 = SFAutoUnlockErrorDomain;
  errorCode = [(SDAutoUnlockDeviceRegistrationStep *)v5 errorCode];
  v29 = NSLocalizedDescriptionKey;
  v30 = @"Error during registration";
  v8 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v9 = [NSError errorWithDomain:v6 code:errorCode userInfo:v8];
  [(SDAutoUnlockRegistrationSession *)self notifyDelegateWithError:v9];

LABEL_18:
}

- (void)transport:(id)transport didReceivePayload:(id)payload type:(unsigned __int16)type deviceID:(id)d
{
  payloadCopy = payload;
  sessionQueue = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026D15C;
  block[3] = &unk_1008CFBD8;
  typeCopy = type;
  block[4] = self;
  v12 = payloadCopy;
  v10 = payloadCopy;
  dispatch_async(sessionQueue, block);
}

@end