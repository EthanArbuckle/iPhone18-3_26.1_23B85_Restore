@interface BluetoothPowerTableAssetVotingManager
+ (id)powerTableEvaluationStateIdToString:(int64_t)string;
- (BOOL)getPoweraTableEvaluationSessionId:(void *)id;
- (BOOL)isPowerTableEvaluationSessionInProgress;
- (BluetoothPowerTableAssetVotingManager)initWithName:(id)name;
- (int64_t)getPowerTableEvaluationSessionState;
- (void)bluetoothRestarted:(id)restarted;
- (void)handlePowerTableEvalationNotification:(id)notification;
- (void)processPowerTableEvaluationNotification:(id)notification;
- (void)reportPowerTableEvaluationVoteForBluetooth:(BOOL)bluetooth sessionID:(id)d;
- (void)resetPowerTableEvaluationTableSessionInProgress;
- (void)updateCurrentPowerTableVersion:(id)version;
- (void)updatePowerTableEvaluationSessionInformation:(int64_t)information SessionIdentifier:(id)identifier;
@end

@implementation BluetoothPowerTableAssetVotingManager

- (BluetoothPowerTableAssetVotingManager)initWithName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = BluetoothPowerTableAssetVotingManager;
  v5 = [(BluetoothPowerTableAssetVotingManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BluetoothPowerTableAssetVotingManager *)v5 setName:nameCopy];
  }

  return v6;
}

- (void)processPowerTableEvaluationNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v33 = [userInfo objectForKey:CENPowerTableEvaluationSessionIdentifier];
  v32 = [userInfo objectForKey:CENPowerTableEvaluationPreviousAssetVersions];
  v5 = [userInfo objectForKey:CENPowerTableEvaluationNewAssetVersions];
  v6 = [userInfo objectForKey:CENPowerTableEvaluationSessionState];
  v7 = +[BluetoothPowerTableAssetVotingManager powerTableEvaluationStateIdToString:](BluetoothPowerTableAssetVotingManager, "powerTableEvaluationStateIdToString:", [v6 intValue]);
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MAFetch: processPowerTableEvaluationNotification New session State %@", buf, 0xCu);
    v8 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 objectAtIndexedSubscript:1];
    v10 = [v32 objectAtIndexedSubscript:1];
    *buf = 138412546;
    *&buf[4] = v9;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MAFetch: processPowerTableEvaluationNotification BT PowerTable Version new %@ previous: %@", buf, 0x16u);

    v8 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v33;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MAFetch: SessionID %@", buf, 0xCu);
  }

  intValue = [v6 intValue];
  if (intValue <= 2)
  {
    switch(intValue)
    {
      case 0:
        v15 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100819CD8(v7, v15);
        }

        goto LABEL_31;
      case 1:
        if (![(BluetoothPowerTableAssetVotingManager *)self isPowerTableEvaluationSessionInProgress])
        {
          v36 = 0;
          v23 = sub_10000E92C();
          sub_100007E30(buf, "MobileAsset");
          sub_100007E30(__p, "SkipBTReadinessVote");
          v24 = (*(*v23 + 72))(v23, buf, __p, &v36);
          if (v35 < 0)
          {
            operator delete(__p[0]);
          }

          if (v40 < 0)
          {
            operator delete(*buf);
          }

          if (v24 && v36 == 1)
          {
            v25 = qword_100BCE8D8;
            if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_31;
            }

            *buf = 0;
            v26 = "MAFetch: Skipping BT Readiness Vote";
            v27 = v25;
            v28 = 2;
          }

          else
          {
            v29 = CENSetPowerTableEvaluationReadiness();
            v30 = qword_100BCE8D8;
            if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_31;
            }

            *buf = 67109120;
            *&buf[4] = v29;
            v26 = "MAFetch: Sending Readiness as success with Result %d";
            v27 = v30;
            v28 = 8;
          }

          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
          goto LABEL_31;
        }

        v21 = CENSetPowerTableEvaluationReadiness();
        v22 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100819C38(v7, v21, v22);
        }

        goto LABEL_31;
      case 2:
        v12 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v5 objectAtIndexedSubscript:1];
          v14 = [v5 objectAtIndexedSubscript:0];
          *buf = 138412546;
          *&buf[4] = v13;
          v38 = 2112;
          v39 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MAFetch: New PowerTable BT %@ WiFi %@", buf, 0x16u);
        }

LABEL_27:
        -[BluetoothPowerTableAssetVotingManager updatePowerTableEvaluationSessionInformation:SessionIdentifier:](self, "updatePowerTableEvaluationSessionInformation:SessionIdentifier:", [v6 intValue], v33);
        goto LABEL_31;
    }

LABEL_24:
    v16 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100819CD8(v7, v16);
    }

    goto LABEL_30;
  }

  if (intValue > 4)
  {
    if (intValue == 5)
    {
      v18 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v5 objectAtIndexedSubscript:1];
        v20 = [v5 objectAtIndexedSubscript:0];
        *buf = 138412546;
        *&buf[4] = v19;
        v38 = 2112;
        v39 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MAFetch: New PowerTable BT %@ WiFi %@ Accepted", buf, 0x16u);
      }

      goto LABEL_30;
    }

    if (intValue == 6)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        [v5 objectAtIndexedSubscript:1];
        objc_claimAutoreleasedReturnValue();
        [v5 objectAtIndexedSubscript:0];
        objc_claimAutoreleasedReturnValue();
        sub_100819B5C();
      }

      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (intValue != 3)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      [v5 objectAtIndexedSubscript:1];
      objc_claimAutoreleasedReturnValue();
      [v5 objectAtIndexedSubscript:0];
      objc_claimAutoreleasedReturnValue();
      sub_100819BA8();
    }

LABEL_30:
    [(BluetoothPowerTableAssetVotingManager *)self resetPowerTableEvaluationTableSessionInProgress];
    goto LABEL_31;
  }

  getPowerTableEvaluationSessionState = [(BluetoothPowerTableAssetVotingManager *)self getPowerTableEvaluationSessionState];
  if (getPowerTableEvaluationSessionState == 2)
  {
    goto LABEL_27;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    [BluetoothPowerTableAssetVotingManager powerTableEvaluationStateIdToString:getPowerTableEvaluationSessionState];
    objc_claimAutoreleasedReturnValue();
    sub_100819BF4();
  }

  [(BluetoothPowerTableAssetVotingManager *)self reportPowerTableEvaluationVoteForBluetooth:0 sessionID:v33];
LABEL_31:
}

- (void)handlePowerTableEvalationNotification:(id)notification
{
  notificationCopy = notification;
  v5 = *(sub_1005710D8() + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10032DC54;
  v7[3] = &unk_100AE0B60;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(v5, v7);
}

- (void)reportPowerTableEvaluationVoteForBluetooth:(BOOL)bluetooth sessionID:(id)d
{
  dCopy = d;
  v23 = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "MobileAsset");
  sub_100007E30(__p, "SkipBTPowerTableAcceptVote");
  v7 = (*(*v6 + 72))(v6, buf, __p, &v23);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else if (!v7)
  {
LABEL_10:
    v20 = 0;
    v12 = sub_10000E92C();
    sub_100007E30(buf, "MobileAsset");
    sub_100007E30(__p, "BTPowerTableAcceptVoteOverriden");
    v13 = (*(*v12 + 72))(v12, buf, __p, &v20);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 < 0)
    {
      operator delete(*buf);
      if (!v13)
      {
        goto LABEL_23;
      }
    }

    else if (!v13)
    {
      goto LABEL_23;
    }

    if (v20 == 1)
    {
      v19 = 0;
      v14 = sub_10000E92C();
      sub_100007E30(buf, "MobileAsset");
      sub_100007E30(__p, "BTPowerTableAcceptVote");
      v15 = (*(*v14 + 72))(v14, buf, __p, &v19);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      if (v27 < 0)
      {
        operator delete(*buf);
      }

      if (v15)
      {
        bluetooth = v19;
      }
    }

LABEL_23:
    v16 = CENCastPowerTableVote();
    v17 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = "Rejected";
      if (bluetooth)
      {
        v18 = "Accepted";
      }

      *buf = 136315394;
      *&buf[4] = v18;
      v25 = 1024;
      v26 = v16;
      v9 = "MAFetch: Sending Vote %s Result %d";
      v10 = v17;
      v11 = 18;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (v23 != 1)
  {
    goto LABEL_10;
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v9 = "MAFetch: Skipping BT Acceptance Vote";
    v10 = v8;
    v11 = 2;
LABEL_27:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
  }

LABEL_28:
}

+ (id)powerTableEvaluationStateIdToString:(int64_t)string
{
  if (string < 7)
  {
    return off_100AEBC48[string];
  }

  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100819D50(v4);
  }

  return @"Unknown State";
}

- (BOOL)isPowerTableEvaluationSessionInProgress
{
  v9 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "BTOtaPowerTableUpdateCache");
  sub_100007E30(__p, "PowerTableEvaluationInProgress");
  v3 = (*(*v2 + 72))(v2, buf, __p, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(*buf);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    v4 = v9;
    goto LABEL_8;
  }

  v4 = 0;
  v9 = 0;
LABEL_8:
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MAFetch: isPowerTableEvaluationSessionInProgress %d", buf, 8u);
    LOBYTE(v4) = v9;
  }

  return v4 & 1;
}

- (int64_t)getPowerTableEvaluationSessionState
{
  v8 = 0;
  v2 = sub_10000E92C();
  sub_100007E30(buf, "BTOtaPowerTableUpdateCache");
  sub_100007E30(__p, "CurrentPowerTableEvaluationState");
  (*(*v2 + 88))(v2, buf, __p, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(*buf);
  }

  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [BluetoothPowerTableAssetVotingManager powerTableEvaluationStateIdToString:v8];
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MAFetch: currentPowerTableEvaluationInProgress %@", buf, 0xCu);
  }

  return v8;
}

- (void)updatePowerTableEvaluationSessionInformation:(int64_t)information SessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = sub_10000E92C();
  sub_100007E30(v13, "BTOtaPowerTableUpdateCache");
  sub_100007E30(__p, "CurrentPowerTableEvaluationState");
  (*(*v6 + 96))(v6, v13, __p, information);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v7 = sub_10000E92C();
  sub_100007E30(v13, "BTOtaPowerTableUpdateCache");
  sub_100007E30(__p, "SessionID");
  sub_100007E30(v9, [identifierCopy UTF8String]);
  (*(*v7 + 64))(v7, v13, __p, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v8 = sub_10000E92C();
  sub_100007E30(v13, "BTOtaPowerTableUpdateCache");
  sub_100007E30(__p, "PowerTableEvaluationInProgress");
  (*(*v8 + 80))(v8, v13, __p, 1);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }
}

- (BOOL)getPoweraTableEvaluationSessionId:(void *)id
{
  if ([(BluetoothPowerTableAssetVotingManager *)self isPowerTableEvaluationSessionInProgress])
  {
    v4 = sub_10000E92C();
    sub_100007E30(v9, "BTOtaPowerTableUpdateCache");
    sub_100007E30(__p, "SessionID");
    v5 = (*(*v4 + 56))(v4, v9, __p, id);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
      if (v5)
      {
        return 1;
      }
    }

    else if (v5)
    {
      return 1;
    }
  }

  return 0;
}

- (void)resetPowerTableEvaluationTableSessionInProgress
{
  v2 = sub_10000E92C();
  sub_100007E30(v6, "BTOtaPowerTableUpdateCache");
  sub_100007E30(__p, "CurrentPowerTableEvaluationState");
  (*(*v2 + 80))(v2, v6, __p, 0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  v3 = sub_10000E92C();
  sub_100007E30(v6, "BTOtaPowerTableUpdateCache");
  sub_100007E30(__p, "PowerTableEvaluationInProgress");
  (*(*v3 + 80))(v3, v6, __p, 0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

- (void)updateCurrentPowerTableVersion:(id)version
{
  versionCopy = version;
  if ([(BluetoothPowerTableAssetVotingManager *)self getPowerTableEvaluationSessionState])
  {
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = versionCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MAFetch: current loaded power table version %@", buf, 0xCu);
    }

    if ([(BluetoothPowerTableAssetVotingManager *)self getPoweraTableEvaluationSessionId:__p])
    {
      if (v9 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      v7 = [NSString stringWithUTF8String:v6];
      [(BluetoothPowerTableAssetVotingManager *)self reportPowerTableEvaluationVoteForBluetooth:1 sessionID:v7];
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (void)bluetoothRestarted:(id)restarted
{
  restartedCopy = restarted;
  if (-[BluetoothPowerTableAssetVotingManager getPowerTableEvaluationSessionState](self, "getPowerTableEvaluationSessionState") && ([restartedCopy isEqualToString:@"centauri controller: dext terminated"] & 1) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
    if ([(BluetoothPowerTableAssetVotingManager *)self getPoweraTableEvaluationSessionId:__p])
    {
      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = __p;
        if (v10 < 0)
        {
          v6 = __p[0];
        }

        *buf = 136315138;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MAFetch: current OTA vote session %s", buf, 0xCu);
      }

      if (v10 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v8 = [NSString stringWithUTF8String:v7];
      [(BluetoothPowerTableAssetVotingManager *)self reportPowerTableEvaluationVoteForBluetooth:0 sessionID:v8];
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

@end