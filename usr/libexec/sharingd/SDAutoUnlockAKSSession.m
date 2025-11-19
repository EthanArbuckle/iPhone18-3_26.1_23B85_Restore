@interface SDAutoUnlockAKSSession
- (BOOL)confirmSession;
- (BOOL)resetSession;
- (BOOL)stepSessionWithData:(id)a3 outputData:(id *)a4;
- (SDAutoUnlockAKSSession)initWithLocalLTK:(id)a3 remoteLTK:(id)a4 sessionType:(int64_t)a5 originator:(BOOL)a6 deviceID:(id)a7 escrowSecret:(id)a8 usingEscrow:(BOOL)a9 externalACMContext:(id)a10;
- (id)generateACMContextData;
- (id)generateEscrowSecret;
- (id)generateSessionToken;
- (int64_t)finalizeEscrowPairing:(id)a3;
- (int64_t)finalizeRegistration;
- (void)fixRemoteLTK;
- (void)setupAuthorizationSession;
- (void)setupSession;
@end

@implementation SDAutoUnlockAKSSession

- (SDAutoUnlockAKSSession)initWithLocalLTK:(id)a3 remoteLTK:(id)a4 sessionType:(int64_t)a5 originator:(BOOL)a6 deviceID:(id)a7 escrowSecret:(id)a8 usingEscrow:(BOOL)a9 externalACMContext:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v20 = a10;
  v29.receiver = self;
  v29.super_class = SDAutoUnlockAKSSession;
  v21 = [(SDAutoUnlockAKSSession *)&v29 init];
  if (v21)
  {
    v22 = [v16 copy];
    localLTK = v21->_localLTK;
    v21->_localLTK = v22;

    v24 = [v17 copy];
    remoteLTK = v21->_remoteLTK;
    v21->_remoteLTK = v24;

    v21->_sessionType = a5;
    v21->_originator = a6;
    v26 = [v19 copy];
    escrowSecret = v21->_escrowSecret;
    v21->_escrowSecret = v26;

    v21->_usingEscrow = a9;
    objc_storeStrong(&v21->_deviceID, a7);
    objc_storeStrong(&v21->_externalACMContext, a10);
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
  v3 = [(SDAutoUnlockAKSSession *)self sessionType];
  if (v3 <= 5)
  {
    if (v3 > 2)
    {
      if (v3 != 3)
      {
        if (v3 == 4)
        {
          v4 = [(SDAutoUnlockAKSSession *)self localLTK];
          v5 = [(SDAutoUnlockAKSSession *)self remoteLTK];
          v30 = [(SDAutoUnlockAKSSession *)self originator];
          [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005D7E0(v4, v5, v30, v40 + 6, 0)];
        }

        else
        {
          v4 = [(SDAutoUnlockAKSSession *)self localLTK];
          v5 = [(SDAutoUnlockAKSSession *)self remoteLTK];
          v6 = [(SDAutoUnlockAKSSession *)self originator];
          [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DDA0(v4, v5, v6, v40 + 6)];
        }

        goto LABEL_28;
      }

      if ([(SDAutoUnlockAKSSession *)self originator])
      {
        v4 = [(SDAutoUnlockAKSSession *)self localLTK];
        v5 = [(SDAutoUnlockAKSSession *)self remoteLTK];
        v25 = [(SDAutoUnlockAKSSession *)self originator];
        v26 = [(SDAutoUnlockAKSSession *)self usingEscrow];
        v27 = [(SDAutoUnlockAKSSession *)self escrowSecret];
        [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DDBC(v4, v5, v25, v26, 1, v27, v40 + 6)];
LABEL_27:

        goto LABEL_28;
      }

      goto LABEL_25;
    }

    if (v3 == 1)
    {
      v20 = [(SDAutoUnlockAKSSession *)self localLTK];
      v21 = [(SDAutoUnlockAKSSession *)self remoteLTK];
      v22 = [(SDAutoUnlockAKSSession *)self originator];
      [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005D7E0(v20, v21, v22, v40 + 6, 1)];

      v23 = *(v40 + 6);
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10006F634;
      v38[3] = &unk_1008CE0B8;
      v38[4] = self;
      v38[5] = &v39;
      [(SDAutoUnlockAKSSession *)self fixRemoteLTKWithStatus:v23 retryBlock:v38];
    }

    else if (v3 == 2)
    {
      v8 = [(SDAutoUnlockAKSSession *)self localLTK];
      v9 = [(SDAutoUnlockAKSSession *)self remoteLTK];
      v10 = [(SDAutoUnlockAKSSession *)self originator];
      v11 = [(SDAutoUnlockAKSSession *)self usingEscrow];
      v12 = [(SDAutoUnlockAKSSession *)self escrowSecret];
      [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DDBC(v8, v9, v10, v11, 0, v12, v40 + 6)];

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

  if (v3 <= 7)
  {
    if (v3 != 6)
    {
      v14 = [(SDAutoUnlockAKSSession *)self localLTK];
      v15 = [(SDAutoUnlockAKSSession *)self remoteLTK];
      v16 = [(SDAutoUnlockAKSSession *)self originator];
      v17 = [(SDAutoUnlockAKSSession *)self usingEscrow];
      v18 = [(SDAutoUnlockAKSSession *)self escrowSecret];
      [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DFA0(v14, v15, v16, v17, 0, v18, 0, v40 + 6)];

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

    v4 = [(SDAutoUnlockAKSSession *)self localLTK];
    v5 = [(SDAutoUnlockAKSSession *)self remoteLTK];
    v24 = [(SDAutoUnlockAKSSession *)self originator];
    [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005D7E0(v4, v5, v24, v40 + 6, 1)];
LABEL_28:

    goto LABEL_29;
  }

  switch(v3)
  {
    case 8:
      v4 = [(SDAutoUnlockAKSSession *)self localLTK];
      v5 = [(SDAutoUnlockAKSSession *)self remoteLTK];
      v28 = [(SDAutoUnlockAKSSession *)self originator];
      v29 = [(SDAutoUnlockAKSSession *)self usingEscrow];
      v27 = [(SDAutoUnlockAKSSession *)self escrowSecret];
      [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005E12C(v4, v5, v28, v29, 0, v27, 0, v40 + 6)];
      goto LABEL_27;
    case 9:
      if ([(SDAutoUnlockAKSSession *)self originator])
      {
        v31 = [(SDAutoUnlockAKSSession *)self externalACMContext];

        [(SDAutoUnlockAKSSession *)self localLTK];
        if (v31)
          v4 = {;
          v5 = [(SDAutoUnlockAKSSession *)self remoteLTK];
          v32 = [(SDAutoUnlockAKSSession *)self originator];
          v33 = [(SDAutoUnlockAKSSession *)self usingEscrow];
          v27 = [(SDAutoUnlockAKSSession *)self externalACMContext];
          [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DDF0(v4, v5, v32, v33, 1, 1, v27, 0, v40 + 6)];
        }

        else
          v4 = {;
          v5 = [(SDAutoUnlockAKSSession *)self remoteLTK];
          v34 = [(SDAutoUnlockAKSSession *)self originator];
          v35 = [(SDAutoUnlockAKSSession *)self usingEscrow];
          v27 = [(SDAutoUnlockAKSSession *)self escrowSecret];
          [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DDBC(v4, v5, v34, v35, 1, v27, v40 + 6)];
        }

        goto LABEL_27;
      }

LABEL_25:
      [(SDAutoUnlockAKSSession *)self setupAuthorizationSession];
      break;
    case 10:
      v4 = [(SDAutoUnlockAKSSession *)self localLTK];
      v5 = [(SDAutoUnlockAKSSession *)self remoteLTK];
      v7 = [(SDAutoUnlockAKSSession *)self originator];
      [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005DDBC(v4, v5, v7, 0, 0, 0, v40 + 6)];
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
      v4 = [(SDAutoUnlockAKSSession *)self localLTK];
      v5 = [(SDAutoUnlockAKSSession *)self remoteLTK];
      [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005E2B4(v4, v5, self->_externalACMContext, 0)];
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
        v11 = auto_unlock_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100070140(&v15, v11);
        }

        goto LABEL_16;
      }
    }

    v11 = [(SDAutoUnlockAKSSession *)self localLTK];
    v12 = [(SDAutoUnlockAKSSession *)self remoteLTK];
    [(SDAutoUnlockAKSSession *)self setAksSessionID:sub_10005E2B4(v11, v12, v10, 0)];

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
  v5 = [(SDAutoUnlockAKSSession *)self deviceID];
  [v4 resignRemoteLTKForDeviceID:v5];

  v6 = +[SDAutoUnlockAKSManager sharedManager];
  v7 = [(SDAutoUnlockAKSSession *)self deviceID];
  v8 = [v6 remoteLTKForDeviceID:v7];
  [(SDAutoUnlockAKSSession *)self setRemoteLTK:v8];
}

- (BOOL)stepSessionWithData:(id)a3 outputData:(id *)a4
{
  v6 = a3;
  if (![(SDAutoUnlockAKSSession *)self sessionIsValid])
  {
    goto LABEL_5;
  }

  if (!sub_10005E4BC([(SDAutoUnlockAKSSession *)self aksSessionID], v6, a4))
  {
    v8 = [(SDAutoUnlockAKSSession *)self remoteLTK];
    sub_10005CB84(v8);

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

- (int64_t)finalizeEscrowPairing:(id)a3
{
  v4 = a3;
  if ([(SDAutoUnlockAKSSession *)self sessionIsValid])
  {
    v5 = sub_10005E6DC([(SDAutoUnlockAKSSession *)self aksSessionID], v4);
    v6 = [(SDAutoUnlockAKSSession *)self remoteLTK];
    sub_10005CB84(v6);
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
  v3 = [(SDAutoUnlockAKSSession *)self sessionIsValid];
  if (v3)
  {
    v4 = [(SDAutoUnlockAKSSession *)self aksSessionID];

    LOBYTE(v3) = sub_10005E8EC(v4);
  }

  return v3;
}

- (BOOL)resetSession
{
  v3 = [(SDAutoUnlockAKSSession *)self sessionIsValid];
  if (v3)
  {
    v4 = sub_10005E9C4([(SDAutoUnlockAKSSession *)self aksSessionID]);
    [(SDAutoUnlockAKSSession *)self setAksSessionID:-1];
    LOBYTE(v3) = v4;
  }

  return v3;
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