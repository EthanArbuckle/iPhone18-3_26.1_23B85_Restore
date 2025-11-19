@interface SDAutoUnlockAuthSession
- (NSData)awdlInfoData;
- (NSData)rangingKey;
- (SDAutoUnlockAuthSession)initWithDevice:(id)a3 sessionID:(id)a4 bleDevice:(id)a5;
- (id)peerListFromAWDLInfo:(id)a3;
- (void)invalidate;
- (void)sendAWDLInfo:(BOOL)a3;
- (void)sendData:(id)a3 bleDevice:(id)a4 direct:(BOOL)a5 completionHandler:(id)a6;
- (void)start;
@end

@implementation SDAutoUnlockAuthSession

- (SDAutoUnlockAuthSession)initWithDevice:(id)a3 sessionID:(id)a4 bleDevice:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SDAutoUnlockAuthSession;
  v10 = [(SDAutoUnlockPairingSession *)&v13 initWithDevice:a3 sessionID:a4];
  v11 = v10;
  if (v10)
  {
    v10->_useAKSToken = 0;
    objc_storeStrong(&v10->_bleDevice, a5);
    v11->_protocol = 1;
  }

  return v11;
}

- (void)invalidate
{
  v7.receiver = self;
  v7.super_class = SDAutoUnlockAuthSession;
  [(SDAutoUnlockPairingSession *)&v7 invalidate];
  v3 = [(SDAutoUnlockPairingSession *)self aksSession];
  v4 = [v3 resetSession];

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reset Session: %@", buf, 0xCu);
  }
}

- (void)start
{
  v3 = [(SDAutoUnlockPairingSession *)self sessionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100202E00;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)sendAWDLInfo:(BOOL)a3
{
  v5 = [(SDAutoUnlockAuthSession *)self awdlInfoData];
  v6 = auto_unlock_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending SDAutoUnlockAWDLInfo", buf, 2u);
    }

    v8 = objc_alloc_init(SDAutoUnlockAWDLInfo);
    [(SDAutoUnlockAWDLInfo *)v8 setVersion:4];
    [(SDAutoUnlockAWDLInfo *)v8 setAwdlInfo:v5];
    [(SDAutoUnlockAWDLInfo *)v8 setUseToken:[(SDAutoUnlockAuthSession *)self useAKSToken]];
    v9 = [(SDAutoUnlockAuthSession *)self lastLocalUnlockDate];
    [v9 timeIntervalSinceReferenceDate];
    [(SDAutoUnlockAWDLInfo *)v8 setPhoneUnlockDate:?];

    [(SDAutoUnlockAWDLInfo *)v8 setSkipMotionCheck:[(SDAutoUnlockAuthSession *)self skipMotionCheck]];
    [(SDAutoUnlockAWDLInfo *)v8 setIsAuthenticatingForSiri:[(SDAutoUnlockAuthSession *)self isAuthenticatingForSiri]];
    v10 = [(SDAutoUnlockAuthSession *)self attemptType];
    [(SDAutoUnlockAWDLInfo *)v8 setAuthPrompt:v10 == 2];
    if (v10 == 2)
    {
      v11 = [(SDAutoUnlockAuthSession *)self getAppName];
      if (v11)
      {
        [(SDAutoUnlockAWDLInfo *)v8 setAppName:v11];
      }
    }

    v12 = [(SDAutoUnlockAWDLInfo *)v8 data];
    if (!a3)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1002032F4;
      v17[3] = &unk_1008CDF90;
      v17[4] = self;
      [(SDAutoUnlockAuthSession *)self sendAWDLInfoData:v12 type:301 completionHandler:v17];

      goto LABEL_15;
    }

    v13 = [(SDAutoUnlockPairingSession *)self wrapPayload:v12 withType:301];

    v14 = [(SDAutoUnlockAuthSession *)self bleDevice];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100203434;
    v16[3] = &unk_1008CDF90;
    v16[4] = self;
    [(SDAutoUnlockAuthSession *)self sendData:v13 bleDevice:v14 completionHandler:v16];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100204474(v7);
    }

    v15 = SFAutoUnlockErrorDomain;
    v19 = NSLocalizedDescriptionKey;
    v20 = @"AWDL info retrieval failed";
    v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v13 = [NSError errorWithDomain:v15 code:103 userInfo:v8];
    [(SDAutoUnlockPairingSession *)self notifyDelegateWithError:v13];
  }

LABEL_15:
}

- (NSData)awdlInfoData
{
  v3 = +[SDStatusMonitor sharedMonitor];
  v4 = [v3 awdlInfo];

  v5 = auto_unlock_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Using AWDL info %@", &v8, 0xCu);
  }

  [(SDAutoUnlockAuthSession *)self setLocalAWDLInfo:v4];
  v6 = sub_10011137C(v4);

  return v6;
}

- (void)sendData:(id)a3 bleDevice:(id)a4 direct:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([(SDAutoUnlockAuthSession *)self useEncryption])
  {
    v13 = [(SDAutoUnlockPairingSession *)self deviceID];

    v14 = auto_unlock_log();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Encryption start", buf, 2u);
      }

      v16 = +[SDAutoUnlockAKSManager sharedManager];
      v17 = [(SDAutoUnlockPairingSession *)self deviceID];
      v31 = 0;
      v32 = 0;
      v30 = 0;
      v18 = [v16 encryptMessageData:v10 deviceID:v17 encryptedMessage:&v32 authTag:&v31 nonce:&v30];
      v15 = v32;
      v19 = v31;
      v29 = v30;

      if (v18 && v15 && v19 && v29)
      {
        v20 = objc_opt_new();
        [v20 setVersion:2];
        [v20 setEncryptedPayload:v15];
        [v20 setAuthTag:v19];
        [v20 setNonce:v29];
        v21 = [(SDAutoUnlockPairingSession *)self sessionID];
        v22 = [NSString stringWithFormat:@" with wrapper %@ sessionID: %@", v20, v21];

        v23 = auto_unlock_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v36 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Using encryption%{private}@", buf, 0xCu);
        }

        v24 = +[SDNearbyAgent sharedNearbyAgent];
        v25 = [v20 data];
        if (v7)
        {
          [v24 sendUnlockDataDirect:v25 toBLEDevice:v11 completion:v12];
        }

        else
        {
          [v24 sendUnlockData:v25 toBLEDevice:v11 completion:v12];
        }
      }

      else
      {
        v27 = auto_unlock_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v36 = v10;
          v37 = 2112;
          v38 = v19;
          v39 = 2112;
          v40 = v29;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Error encrypting message (data: %@, authTag: %@, nonce: %@)", buf, 0x20u);
        }

        v28 = SFAutoUnlockErrorDomain;
        v33 = NSLocalizedDescriptionKey;
        v34 = @"Encryption failed";
        v20 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v22 = [NSError errorWithDomain:v28 code:189 userInfo:v20];
        [(SDAutoUnlockPairingSession *)self notifyDelegateWithError:v22];
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1002044B8(v15);
    }
  }

  else
  {
    v26 = auto_unlock_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Using BLE encryption", buf, 2u);
    }

    v15 = +[SDNearbyAgent sharedNearbyAgent];
    [v15 sendUnlockData:v10 toBLEDevice:v11 completion:v12];
  }
}

- (id)peerListFromAWDLInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"AWDL_IF_MAC_ADDRESS"];
  if (v4 && (v5 = [_NIRangingPeer alloc], [(SDAutoUnlockAuthSession *)self rangingKey], v6 = objc_claimAutoreleasedReturnValue(), v7 = [(_NIRangingPeer *)v5 initWithMacAddressAsData:v4 secureRangingKeyID:v6], v6, v7))
  {
    v10 = v7;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSData)rangingKey
{
  if ([(SDAutoUnlockAuthSession *)self useRealRangingKey])
  {
    if ([(SDAutoUnlockAuthSession *)self protocol]== 1 && ([(SDAutoUnlockAuthSession *)self sessionRangingKey], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {
      v4 = [(SDAutoUnlockAuthSession *)self sessionRangingKey];
    }

    else
    {
      v6 = +[SDAutoUnlockAKSManager sharedManager];
      v7 = [(SDAutoUnlockPairingSession *)self deviceID];
      v4 = [v6 rangingKeyForDeviceID:v7];
    }

    v5 = [[NSMutableData alloc] initWithData:v4];
    v8 = auto_unlock_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"YES";
      if (!v5)
      {
        v9 = @"NO";
      }

      v20 = 138412290;
      v21[0] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ranging key exists %@", &v20, 0xCu);
    }
  }

  else
  {
    v5 = [[NSMutableData alloc] initWithCapacity:64];
  }

  v10 = [v5 length];
  if (v10 <= 0x3F)
  {
    v11 = v10 - 64;
    do
    {
      LOBYTE(v20) = 48;
      [v5 appendBytes:&v20 length:1];
    }

    while (!__CFADD__(v11++, 1));
  }

  v13 = auto_unlock_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v5 length];
    v15 = [(SDAutoUnlockAuthSession *)self useRealRangingKey];
    v16 = @"NO";
    if (v15)
    {
      v16 = @"YES";
    }

    v20 = 67109378;
    LODWORD(v21[0]) = v14;
    WORD2(v21[0]) = 2112;
    *(v21 + 6) = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Using ranging key (size: %d, realKey %@)", &v20, 0x12u);
  }

  v17 = auto_unlock_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_1002044FC(v5, v17);
  }

  v18 = [v5 copy];

  return v18;
}

@end