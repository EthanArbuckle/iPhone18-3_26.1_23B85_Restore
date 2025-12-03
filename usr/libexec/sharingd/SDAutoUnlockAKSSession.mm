@interface SDAutoUnlockAKSSession
- (BOOL)confirmSession;
- (BOOL)resetSession;
- (BOOL)stepSessionWithData:(id)data outputData:(id *)outputData;
- (SDAutoUnlockAKSSession)initWithLocalLTK:(id)k remoteLTK:(id)tK sessionType:(int64_t)type originator:(BOOL)originator deviceID:(id)d escrowSecret:(id)secret usingEscrow:(BOOL)escrow externalACMContext:(id)self0;
- (id)generateACMContextData;
- (id)generateEscrowSecret;
- (id)generateSessionToken;
- (int64_t)finalizeEscrowPairing:(id)pairing;
- (int64_t)finalizeRegistration;
- (void)fixRemoteLTK;
- (void)setupAuthorizationSession;
- (void)setupSession;
@end

@implementation SDAutoUnlockAKSSession

- (SDAutoUnlockAKSSession)initWithLocalLTK:(id)k remoteLTK:(id)tK sessionType:(int64_t)type originator:(BOOL)originator deviceID:(id)d escrowSecret:(id)secret usingEscrow:(BOOL)escrow externalACMContext:(id)self0
{
  kCopy = k;
  tKCopy = tK;
  dCopy = d;
  secretCopy = secret;
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = SDAutoUnlockAKSSession;
  v21 = [(SDAutoUnlockAKSSession *)&v29 init];
  if (v21)
  {
    v22 = [kCopy copy];
    localLTK = v21->_localLTK;
    v21->_localLTK = v22;

    v24 = [tKCopy copy];
    remoteLTK = v21->_remoteLTK;
    v21->_remoteLTK = v24;

    v21->_sessionType = type;
    v21->_originator = originator;
    v26 = [secretCopy copy];
    escrowSecret = v21->_escrowSecret;
    v21->_escrowSecret = v26;

    v21->_usingEscrow = escrow;
    objc_storeStrong(&v21->_deviceID, d);
    objc_storeStrong(&v21->_externalACMContext, context);
    v21->_aksSessionID = -1;
    v21->_acmContext = 0;
    [(SDAutoUnlockAKSSession *)v21 setupSession];
  }

  return v21;
}

- (void)setupSession
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  sessionType = [(SDAutoUnlockAKSSession *)self sessionType];
  if (sessionType <= 5)
  {
    if (sessionType > 2)
    {
      if (sessionType != 3)
      {
        if (sessionType == 4)
        {
          localLTK = [(SDAutoUnlockAKSSession *)self localLTK];
          remoteLTK = [(SDAutoUnlockAKSSession *)self remoteLTK];
          originator = [(SDAutoUnlockAKSSession *)self originator];
          [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005D7E0(localLTK, remoteLTK, originator, v40 + 6, 0)];
        }

        else
        {
          localLTK = [(SDAutoUnlockAKSSession *)self localLTK];
          remoteLTK = [(SDAutoUnlockAKSSession *)self remoteLTK];
          originator2 = [(SDAutoUnlockAKSSession *)self originator];
          [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DDA0(localLTK, remoteLTK, originator2, v40 + 6)];
        }

        goto LABEL_28;
      }

      if ([(SDAutoUnlockAKSSession *)self originator])
      {
        localLTK = [(SDAutoUnlockAKSSession *)self localLTK];
        remoteLTK = [(SDAutoUnlockAKSSession *)self remoteLTK];
        originator3 = [(SDAutoUnlockAKSSession *)self originator];
        usingEscrow = [(SDAutoUnlockAKSSession *)self usingEscrow];
        escrowSecret = [(SDAutoUnlockAKSSession *)self escrowSecret];
        [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DDBC(localLTK, remoteLTK, originator3, usingEscrow, 1, escrowSecret, v40 + 6)];
LABEL_27:

        goto LABEL_28;
      }

      goto LABEL_25;
    }

    if (sessionType == 1)
    {
      localLTK2 = [(SDAutoUnlockAKSSession *)self localLTK];
      remoteLTK2 = [(SDAutoUnlockAKSSession *)self remoteLTK];
      originator4 = [(SDAutoUnlockAKSSession *)self originator];
      [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005D7E0(localLTK2, remoteLTK2, originator4, v40 + 6, 1)];

      v23 = *(v40 + 6);
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10006F634;
      v38[3] = &unk_1008CE0B8;
      v38[4] = self;
      v38[5] = &v39;
      [(SDAutoUnlockAKSSession *)self fixRemoteLTKWithStatus:v23 retryBlock:v38];
    }

    else if (sessionType == 2)
    {
      localLTK3 = [(SDAutoUnlockAKSSession *)self localLTK];
      remoteLTK3 = [(SDAutoUnlockAKSSession *)self remoteLTK];
      originator5 = [(SDAutoUnlockAKSSession *)self originator];
      usingEscrow2 = [(SDAutoUnlockAKSSession *)self usingEscrow];
      escrowSecret2 = [(SDAutoUnlockAKSSession *)self escrowSecret];
      [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DDBC(localLTK3, remoteLTK3, originator5, usingEscrow2, 0, escrowSecret2, v40 + 6)];

      v13 = *(v40 + 6);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10006F75C;
      v37[3] = &unk_1008CE0B8;
      v37[4] = self;
      v37[5] = &v39;
      [(SDAutoUnlockAKSSession *)self fixRemoteLTKWithStatus:v13 retryBlock:v37];
    }

    goto LABEL_29;
  }

  if (sessionType <= 7)
  {
    if (sessionType != 6)
    {
      localLTK4 = [(SDAutoUnlockAKSSession *)self localLTK];
      remoteLTK4 = [(SDAutoUnlockAKSSession *)self remoteLTK];
      originator6 = [(SDAutoUnlockAKSSession *)self originator];
      usingEscrow3 = [(SDAutoUnlockAKSSession *)self usingEscrow];
      escrowSecret3 = [(SDAutoUnlockAKSSession *)self escrowSecret];
      [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DFA0(localLTK4, remoteLTK4, originator6, usingEscrow3, 0, escrowSecret3, 0, v40 + 6)];

      v19 = *(v40 + 6);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10006F8B8;
      v36[3] = &unk_1008CE0B8;
      v36[4] = self;
      v36[5] = &v39;
      [(SDAutoUnlockAKSSession *)self fixRemoteLTKWithStatus:v19 retryBlock:v36];
      goto LABEL_29;
    }

    localLTK = [(SDAutoUnlockAKSSession *)self localLTK];
    remoteLTK = [(SDAutoUnlockAKSSession *)self remoteLTK];
    originator7 = [(SDAutoUnlockAKSSession *)self originator];
    [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005D7E0(localLTK, remoteLTK, originator7, v40 + 6, 1)];
LABEL_28:

    goto LABEL_29;
  }

  switch(sessionType)
  {
    case 8:
      localLTK = [(SDAutoUnlockAKSSession *)self localLTK];
      remoteLTK = [(SDAutoUnlockAKSSession *)self remoteLTK];
      originator8 = [(SDAutoUnlockAKSSession *)self originator];
      usingEscrow4 = [(SDAutoUnlockAKSSession *)self usingEscrow];
      escrowSecret = [(SDAutoUnlockAKSSession *)self escrowSecret];
      [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005E12C(localLTK, remoteLTK, originator8, usingEscrow4, 0, escrowSecret, 0, v40 + 6)];
      goto LABEL_27;
    case 9:
      if ([(SDAutoUnlockAKSSession *)self originator])
      {
        externalACMContext = [(SDAutoUnlockAKSSession *)self externalACMContext];

        [(SDAutoUnlockAKSSession *)self localLTK];
        if (externalACMContext)
          localLTK = {;
          remoteLTK = [(SDAutoUnlockAKSSession *)self remoteLTK];
          originator9 = [(SDAutoUnlockAKSSession *)self originator];
          usingEscrow5 = [(SDAutoUnlockAKSSession *)self usingEscrow];
          escrowSecret = [(SDAutoUnlockAKSSession *)self externalACMContext];
          [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DDF0(localLTK, remoteLTK, originator9, usingEscrow5, 1, 1, escrowSecret, 0, v40 + 6)];
        }

        else
          localLTK = {;
          remoteLTK = [(SDAutoUnlockAKSSession *)self remoteLTK];
          originator10 = [(SDAutoUnlockAKSSession *)self originator];
          usingEscrow6 = [(SDAutoUnlockAKSSession *)self usingEscrow];
          escrowSecret = [(SDAutoUnlockAKSSession *)self escrowSecret];
          [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DDBC(localLTK, remoteLTK, originator10, usingEscrow6, 1, escrowSecret, v40 + 6)];
        }

        goto LABEL_27;
      }

LABEL_25:
      [(SDAutoUnlockAKSSession *)self setupAuthorizationSession];
      break;
    case 10:
      localLTK = [(SDAutoUnlockAKSSession *)self localLTK];
      remoteLTK = [(SDAutoUnlockAKSSession *)self remoteLTK];
      originator11 = [(SDAutoUnlockAKSSession *)self originator];
      [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DDBC(localLTK, remoteLTK, originator11, 0, 0, 0, v40 + 6)];
      goto LABEL_28;
  }

LABEL_29:
  _Block_object_dispose(&v39, 8);
}

- (void)setupAuthorizationSession
{
  v15 = 0;
  externalACMContext = self->_externalACMContext;
  if (externalACMContext)
  {
    sub_10005C3D8(externalACMContext, &self->_acmContext);
    if (!self->_acmContext)
    {
      localLTK = [(SDAutoUnlockAKSSession *)self localLTK];
      remoteLTK = [(SDAutoUnlockAKSSession *)self remoteLTK];
      [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005E2B4(localLTK, remoteLTK, self->_externalACMContext, 0)];
    }
  }

  else
  {
    sub_10005C384(&self->_acmContext);
  }

  if (self->_acmContext)
  {
    v6 = self->_externalACMContext;
    v7 = auto_unlock_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = self->_externalACMContext;
        *buf = 138477827;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AKS session using provided context: %{private}@", buf, 0xCu);
      }

      v10 = self->_externalACMContext;
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AKS session creating new context", buf, 2u);
      }

      acmContext = self->_acmContext;
      v14 = 0;
      sub_10005C468(acmContext, &v14, &v15);
      v10 = v14;
      if (v15)
      {
        localLTK2 = auto_unlock_log();
        if (os_log_type_enabled(localLTK2, OS_LOG_TYPE_ERROR))
        {
          sub_100070140(&v15, localLTK2);
        }

        goto LABEL_16;
      }
    }

    localLTK2 = [(SDAutoUnlockAKSSession *)self localLTK];
    remoteLTK2 = [(SDAutoUnlockAKSSession *)self remoteLTK];
    [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005E2B4(localLTK2, remoteLTK2, v10, 0)];

LABEL_16:
  }
}

- (void)fixRemoteLTK
{
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to fix remote LTK", v9, 2u);
  }

  v4 = +[SDAutoUnlockAKSManager sharedManager];
  deviceID = [(SDAutoUnlockAKSSession *)self deviceID];
  [v4 resignRemoteLTKForDeviceID:deviceID];

  v6 = +[SDAutoUnlockAKSManager sharedManager];
  deviceID2 = [(SDAutoUnlockAKSSession *)self deviceID];
  v8 = [v6 remoteLTKForDeviceID:deviceID2];
  [(SDAutoUnlockAKSSession *)self setRemoteLTK:v8];
}

- (BOOL)stepSessionWithData:(id)data outputData:(id *)outputData
{
  dataCopy = data;
  if (![(SDAutoUnlockAKSSession *)self sessionIsValid])
  {
    goto LABEL_5;
  }

  if (!sub_10005E4BC([(SDAutoUnlockAKSSession *)self aksSessionID], dataCopy, outputData))
  {
    remoteLTK = [(SDAutoUnlockAKSSession *)self remoteLTK];
    sub_10005CB84(remoteLTK);

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (id)generateEscrowSecret
{
  if ([(SDAutoUnlockAKSSession *)self sessionIsValid])
  {
    [(SDAutoUnlockAKSSession *)self aksSessionID];
    v3 = sub_10005E624();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)finalizeEscrowPairing:(id)pairing
{
  pairingCopy = pairing;
  if ([(SDAutoUnlockAKSSession *)self sessionIsValid])
  {
    v5 = sub_10005E6DC([(SDAutoUnlockAKSSession *)self aksSessionID], pairingCopy);
    remoteLTK = [(SDAutoUnlockAKSSession *)self remoteLTK];
    sub_10005CB84(remoteLTK);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)finalizeRegistration
{
  if (![(SDAutoUnlockAKSSession *)self sessionIsValid])
  {
    return 0;
  }

  [(SDAutoUnlockAKSSession *)self aksSessionID];

  return sub_10005E87C();
}

- (BOOL)confirmSession
{
  sessionIsValid = [(SDAutoUnlockAKSSession *)self sessionIsValid];
  if (sessionIsValid)
  {
    aksSessionID = [(SDAutoUnlockAKSSession *)self aksSessionID];

    LOBYTE(sessionIsValid) = sub_10005E8EC(aksSessionID);
  }

  return sessionIsValid;
}

- (BOOL)resetSession
{
  sessionIsValid = [(SDAutoUnlockAKSSession *)self sessionIsValid];
  if (sessionIsValid)
  {
    v4 = sub_10005E9C4([(SDAutoUnlockAKSSession *)self aksSessionID]);
    [(SDAutoUnlockAKSSession *)self setAksSessionID:-1];
    LOBYTE(sessionIsValid) = v4;
  }

  return sessionIsValid;
}

- (id)generateSessionToken
{
  if ([(SDAutoUnlockAKSSession *)self sessionIsValid])
  {
    [(SDAutoUnlockAKSSession *)self aksSessionID];
    v3 = sub_10005E2C8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)generateACMContextData
{
  v7 = 0;
  acmContext = self->_acmContext;
  if (acmContext)
  {
    if (sub_10005C784(acmContext))
    {
      v4 = self->_acmContext;
      v6 = 0;
      sub_10005C468(v4, &v6, &v7);
      acmContext = v6;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    acmContext = 0;
  }

LABEL_6:

  return acmContext;
}

@end