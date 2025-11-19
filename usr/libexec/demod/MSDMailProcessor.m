@interface MSDMailProcessor
+ (id)sharedInstance;
- (BOOL)isAllowedRequest:(id)a3 relayNeeded:(BOOL)a4;
- (BOOL)processRequest:(id)a3;
- (BOOL)updateManifestInfo:(id)a3 error:(id *)a4;
- (MSDMailProcessor)init;
- (id)pingWithType:(unint64_t)a3;
- (int64_t)pingIntervalToUse;
- (unint64_t)convertPingType:(unint64_t)a3;
- (void)pingAndProcess:(unint64_t)a3 waitForCompletion:(BOOL)a4;
- (void)sendImmediateDeviceInfoPing;
- (void)setPingInterval:(unint64_t)a3;
- (void)setWaitingForCommand:(BOOL)a3;
- (void)start;
- (void)startPeriodicPing;
@end

@implementation MSDMailProcessor

+ (id)sharedInstance
{
  if (qword_1001A5828 != -1)
  {
    sub_1000D6884();
  }

  v3 = qword_1001A5820;

  return v3;
}

- (MSDMailProcessor)init
{
  v3 = sub_100063B64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MSDMailProcessor init", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = MSDMailProcessor;
  v4 = [(MSDMailProcessor *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(MSDMailProcessor *)v4 setDemodReady:0];
    v6 = +[MSDTargetDevice sharedInstance];
    [(MSDMailProcessor *)v5 setDevice:v6];

    v7 = v5;
  }

  return v5;
}

- (void)start
{
  v3 = sub_100063B64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "MSDMailProcessor start", v10, 2u);
  }

  v4 = [(MSDMailProcessor *)self device];
  v5 = [v4 hubHostName];
  if (v5)
  {
    v6 = v5;
    v7 = [(MSDMailProcessor *)self device];
    v8 = [v7 hubPort];

    if (v8)
    {
      v9 = +[MSDPushNotificationHandler sharedInstance];
      [v9 enablePushNotifications];

      [(MSDMailProcessor *)self setPingInterval:30];
      [(MSDMailProcessor *)self pingAndProcess:1 waitForCompletion:0];
      [(MSDMailProcessor *)self startPeriodicPing];
    }
  }

  else
  {
  }
}

- (void)sendImmediateDeviceInfoPing
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[MSDMailProcessor sendImmediateDeviceInfoPing]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - Sending immediate device info ping.", &v4, 0xCu);
  }

  [(MSDMailProcessor *)self pingAndProcess:8 waitForCompletion:0];
}

- (void)startPeriodicPing
{
  v3 = sub_100063B64();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MSDMailProcessor *)self device];
    v5 = [v4 hubHostName];
    v6 = [(MSDMailProcessor *)self device];
    v7 = [v6 hubPort];
    *buf = 136315650;
    v11 = "[MSDMailProcessor startPeriodicPing]";
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: serverAddress is %{public}@, serverPort is %{public}@.", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100064A7C;
  block[3] = &unk_100169C78;
  objc_copyWeak(&v9, buf);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)setPingInterval:(unint64_t)a3
{
  pingInterval = self->_pingInterval;
  self->_pingInterval = a3;
  v5 = sub_100063B64();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->_pingInterval;
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ping interval changed to %tu", &v7, 0xCu);
  }

  if (pingInterval)
  {
    [(MSDMailProcessor *)self startPeriodicPing];
  }
}

- (void)setWaitingForCommand:(BOOL)a3
{
  if (self->_waitingForCommand != a3)
  {
    v3 = a3;
    self->_waitingForCommand = a3;
    v5 = [(MSDMailProcessor *)self pingIntervalToUse];
    v6 = [(MSDMailProcessor *)self pingInterval];
    if (v3)
    {
      if (v6 <= v5)
      {
        return;
      }
    }

    else if (v6 == v5)
    {
      return;
    }

    [(MSDMailProcessor *)self setPingInterval:v5];
  }
}

- (void)pingAndProcess:(unint64_t)a3 waitForCompletion:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (([(MSDMailProcessor *)self queuedPingType]& a3) == 0)
  {
    if ((v5 & 8) != 0)
    {
      v5 = 1;
    }

    [(MSDMailProcessor *)self setQueuedPingType:[(MSDMailProcessor *)self queuedPingType]| v5];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100064DDC;
    v11[3] = &unk_10016B318;
    v11[4] = self;
    v11[5] = v5;
    v7 = objc_retainBlock(v11);
    v8 = +[MSDWorkQueueSet sharedInstance];
    v9 = [v8 pollingQueue];
    v10 = v9;
    if (v4)
    {
      dispatch_sync(v9, v7);
    }

    else
    {
      dispatch_async(v9, v7);
    }
  }
}

- (id)pingWithType:(unint64_t)a3
{
  v5 = sub_100063B64();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D6898();
  }

  if (a3 - 1 <= 1)
  {
    if ([(MSDMailProcessor *)self fullKeysSent])
    {
      [(MSDMailProcessor *)self reducedKeyList];
    }

    else
    {
      [(MSDMailProcessor *)self fullKeyList];
    }
    v9 = ;
    v11 = [(MSDMailProcessor *)self device];
    v7 = [v11 deviceInformationForPing:v9];

    if (!v7)
    {
      sub_1000D6D4C(self);
      v8 = 0;
      v46 = 0;
      v25 = 0;
      v23 = 0;
      goto LABEL_50;
    }

    v45 = [v7 objectForKey:@"InternalStatus"];
    if (v45 && [v45 intValue] != 199 && !-[MSDMailProcessor demodReady](self, "demodReady"))
    {
      [(MSDMailProcessor *)self setDemodReady:1];
      [(MSDMailProcessor *)self setPingInterval:[(MSDMailProcessor *)self pingIntervalToUse]];
    }

    v12 = [(MSDMailProcessor *)self device];
    v13 = [v12 hubSuppliedSettings];
    v8 = [v13 objectForKey:@"PingFrequency"];

    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v8 unsignedIntegerValue])
    {
      v14 = [v8 integerValue];
    }

    else
    {
      v14 = [(MSDMailProcessor *)self pingInterval];
    }

    v15 = [NSNumber numberWithInteger:v14];
    [v7 setObject:v15 forKey:@"MSDPingFrequency"];

    v10 = a3;
    goto LABEL_24;
  }

  if (a3 == 32)
  {
    v16 = [(MSDMailProcessor *)self device];
    v7 = [v16 getS3ServerFailureEventForPing];

    if (v7)
    {
      v8 = 0;
      v44 = 0;
      v9 = 0;
      v10 = 32;
      goto LABEL_24;
    }

    sub_1000D6900();
LABEL_63:
    v8 = 0;
    v46 = 0;
    v25 = 0;
    v23 = 0;
    v9 = 0;
    goto LABEL_50;
  }

  if (a3 == 16)
  {
    v6 = [(MSDMailProcessor *)self device];
    v7 = [v6 getCachingHubFailureEventForPing];

    if (v7)
    {
      v8 = 0;
      v44 = 0;
      v9 = 0;
      v10 = 16;
LABEL_24:
      v17 = [NSNumber numberWithUnsignedInteger:[(MSDMailProcessor *)self convertPingType:v10, v44]];
      [v7 setObject:v17 forKey:@"MSDDemoPingType"];

      goto LABEL_25;
    }

    sub_1000D699C();
    goto LABEL_63;
  }

  v8 = 0;
  v46 = 0;
  v7 = 0;
  v9 = 0;
LABEL_25:
  if (os_variant_has_internal_content())
  {
    v18 = sub_100063A54();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D6A38();
    }
  }

  else
  {
    v19 = [v7 objectForKey:@"MSDExistingAccounts"];
    v18 = [v19 objectForKey:@"iCloudRecoveryKey"];

    v20 = [v7 objectForKeyedSubscript:@"MSDExistingAccounts"];
    [v20 setObject:@"<redacted>" forKeyedSubscript:@"iCloudRecoveryKey"];

    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D6A38();
    }

    v22 = [v7 objectForKeyedSubscript:@"MSDExistingAccounts"];
    [v22 setObject:v18 forKeyedSubscript:@"iCloudRecoveryKey"];
  }

  v23 = objc_alloc_init(MSDPingRequest);
  [(MSDPingRequest *)v23 setRequestInfo:v7];
  v24 = +[MSDServerRequestHandler sharedInstance];
  v25 = [v24 handleRequestSync:v23];

  v26 = [v25 error];

  if (v26)
  {
    sub_1000D6AA0(v25);
LABEL_50:
    v40 = 0;
    v38 = 0;
    v28 = 0;
LABEL_51:
    v41 = 0;
    goto LABEL_53;
  }

  v27 = v9;
  v28 = [v25 data];
  v29 = [v25 statusCode];
  v30 = [v29 intValue];

  if (!v28)
  {
    v42 = sub_100063B64();
    v9 = v27;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1000D6CCC();
    }

    goto LABEL_50;
  }

  if (a3 == 1 && (v30 & 0xFFFFFFFB) == 0xC8)
  {
    [(MSDMailProcessor *)self setFullKeysSent:1];
    if ([v46 intValue] == 20 || objc_msgSend(v46, "intValue") == 100)
    {
      v31 = [v7 objectForKey:{@"MSDExistingAccounts", v46}];
      v32 = [v31 objectForKey:@"iCloudCDPState"];

      v33 = [v32 integerValue];
      if (v33 == [&off_10017B0F8 integerValue])
      {
        v34 = [(MSDMailProcessor *)self device];
        v35 = [v34 iCloudAccountRecoveryKey];

        if (v35)
        {
          v36 = sub_100063A54();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "iCloud account recovery key successfully uploaded. Removing local copy...", buf, 2u);
          }

          v37 = [(MSDMailProcessor *)self device];
          [v37 saveiCloudAccountRecoveryKey:0];
        }
      }
    }
  }

  if ([v28 length])
  {
    v47 = 0;
    v38 = [NSJSONSerialization JSONObjectWithData:v28 options:0 error:&v47];
    v39 = v47;
    v40 = v39;
    v9 = v27;
    if (v38)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = v38;
        v41 = v38;
        goto LABEL_53;
      }

      sub_1000D6B48();
    }

    else
    {
      sub_1000D6BEC(v39);
    }

    goto LABEL_51;
  }

  v40 = 0;
  v38 = 0;
  v41 = 0;
  v9 = v27;
LABEL_53:

  return v41;
}

- (BOOL)processRequest:(id)a3
{
  v4 = a3;
  v5 = +[MSDPairedWatchProxy sharedInstance];
  if ([v4 count])
  {
    v6 = [v4 objectForKey:@"Command"];
    v7 = [v4 objectForKey:@"IgnorePairedDevice"];
    v8 = [v7 BOOLValue];

    v9 = [(MSDMailProcessor *)self device];
    if ([v9 isBetterTogetherDemo])
    {
      v10 = [v5 paired] & (v8 ^ 1);
    }

    else
    {
      v10 = 0;
    }

    v15 = [(MSDMailProcessor *)self isAllowedRequest:v4 relayNeeded:v10];
    [(MSDMailProcessor *)self ack:v15];
    if (!v15)
    {
      v79 = sub_100063B64();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        sub_1000D6E04();
      }

      v124 = 0;
      v31 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      goto LABEL_169;
    }

    v16 = [v4 objectForKey:@"Duration"];
    v13 = v16;
    if (v16 && [v16 integerValue] >= 1)
    {
      v17 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", [v13 integerValue]);
      [v17 timeIntervalSinceReferenceDate];
      v121 = v18;
    }

    else
    {
      v121 = 0;
    }

    v119 = v10;
    v12 = [v4 objectForKey:@"ContentType"];
    v125 = v13;
    if ([v12 containsObject:@"Demo"])
    {
      [v4 objectForKey:@"ManifestInfo"];
      v123 = v131 = 0;
      v19 = [MSDMailProcessor updateManifestInfo:"updateManifestInfo:error:" error:?];
      v11 = 0;
      if ((v19 & 1) == 0)
      {
        v79 = sub_100063A54();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          sub_1000D6E74(v11);
        }

        v124 = 0;
        goto LABEL_168;
      }

      LODWORD(v20) = 1;
    }

    else
    {
      v123 = 0;
      v11 = 0;
      LODWORD(v20) = 0;
    }

    if ([v12 containsObject:@"Pricing"])
    {
      LODWORD(v20) = v20 | 2;
    }

    if ([v12 containsObject:@"Account"])
    {
      LODWORD(v20) = v20 | 4;
    }

    if ([v12 containsObject:@"Asset"])
    {
      LODWORD(v20) = v20 | 0x10;
    }

    if ([v12 containsObject:@"ContinuityLinking"])
    {
      LODWORD(v20) = v20 | 0x40;
    }

    if ([v6 isEqualToString:@"RevertSnapshot"])
    {
      v20 = v20 | 8;
    }

    else
    {
      v20 = v20;
    }

    v21 = [v4 objectForKey:@"BackgroundDownloadOnly"];
    v22 = [v21 BOOLValue];

    if ([v6 isEqualToString:@"UpdateContent"] && !v22 || objc_msgSend(v6, "isEqualToString:", @"UpdateOS"))
    {
      v23 = v5;
      +[MSDDemoUpdateTimeKeeper sharedInstance];
      v25 = v24 = v11;
      v26 = [v25 setCompletionTime:v121 reserveTimeForCleanup:1];

      v11 = 0;
      if (v26)
      {
        v124 = 0;
        v11 = v26;
        v13 = v125;
        v31 = v123;
        v5 = v23;
        goto LABEL_170;
      }

      v5 = v23;
    }

    if ([v6 isEqualToString:@"ChangePingFrequency"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"ChangeSettings") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"HoldPowerAssertion") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"LiftPowerAssertion"))
    {
      v124 = 0;
LABEL_36:
      if ([v6 isEqualToString:@"UpdateContent"])
      {
        if ((v20 & 4) != 0)
        {
          v39 = sub_100063A54();
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
LABEL_55:

            v42 = [(MSDMailProcessor *)self device];
            [v42 switchModeImmediately:2];

            v14 = 1;
            goto LABEL_56;
          }

          *buf = 0;
          v40 = "Account update.";
        }

        else
        {
          if ((v20 & 0x10) == 0)
          {
            if ((v20 & 0x40) == 0)
            {
              v117 = v5;
              v118 = v11;
              v27 = +[NSFileManager defaultManager];
              v28 = [(MSDMailProcessor *)self device];
              v29 = [v28 manifestPath];
              [v27 removeItemAtPath:v29 error:0];

              if (v22)
              {
                v30 = +[MSDBackgroundDownload sharedInstance];
                [v30 kickOffBackgroundDownload];

LABEL_42:
                v14 = 1;
                v5 = v117;
                v13 = v125;
LABEL_43:
                v31 = v123;
LABEL_114:
                v11 = v118;
                goto LABEL_76;
              }

              v56 = +[MSDUIHelper sharedInstance];
              [v56 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1];

              v57 = [(MSDMailProcessor *)self device];
              [v57 setWaitingForCommand:0];

              [(MSDMailProcessor *)self setWaitingForCommand:0];
              v5 = v117;
              if ((v20 & 2) != 0)
              {
                v58 = [(MSDMailProcessor *)self device];
                v59 = [v58 mode];

                if (v59 == 5)
                {
                  v60 = [(MSDMailProcessor *)self device];
                  [v60 switchModeImmediately:2];
                }
              }

              v61 = +[MSDPlatform sharedInstance];
              if ([v61 macOS])
              {

                v31 = v123;
                if (v20 != 2)
                {
                  goto LABEL_111;
                }

LABEL_102:
                v67 = +[MSDPricingUpdateController sharedInstance];
                v14 = 1;
                [v67 setSwitchModeAfterCompletion:1];

                v68 = +[MSDProgressUpdater sharedInstance];
                [v68 updateStage:17];

                v13 = v125;
                goto LABEL_114;
              }

              v66 = +[MSDPlatform sharedInstance];
              v31 = v123;
              if ([v66 iOS])
              {

                if (v20 == 2)
                {
                  goto LABEL_102;
                }
              }

              else
              {
              }

LABEL_111:
              v13 = v125;
              if (v20)
              {
                v76 = +[MSDWorkQueueSet sharedInstance];
                v77 = [v76 demoUpdateQueue];
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_100066DB8;
                block[3] = &unk_10016B340;
                v130 = v119;
                v128 = v117;
                v129 = v121;
                dispatch_async(v77, block);
              }

              v14 = 1;
              goto LABEL_114;
            }

            v54 = sub_100063A54();
            v13 = v125;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Continuity linking.", buf, 2u);
            }

            v41 = [(MSDMailProcessor *)self device];
            [v41 switchModeImmediately:2];
            goto LABEL_74;
          }

          v39 = sub_100063A54();
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_55;
          }

          *buf = 0;
          v40 = "Asset update.";
        }

        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v40, buf, 2u);
        goto LABEL_55;
      }

      if ([v6 isEqualToString:@"UpdateOS"])
      {
        +[MSDUIHelper sharedInstance];
        v33 = v32 = v11;
        v14 = 1;
        [v33 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1];

        v34 = [(MSDMailProcessor *)self device];
        [v34 saveOSUpdateRequest:v4];

        v35 = [(MSDMailProcessor *)self device];
        [v35 setWaitingForCommand:0];

        [(MSDMailProcessor *)self setWaitingForCommand:0];
        v36 = [(MSDMailProcessor *)self device];
        [v36 switchModeImmediately:7];

        v37 = +[MSDWorkQueueSet sharedInstance];
        v38 = [v37 demoUpdateQueue];
        dispatch_async(v38, &stru_10016B360);

        v11 = v32;
LABEL_56:
        v13 = v125;
LABEL_75:
        v31 = v123;
LABEL_76:

        goto LABEL_77;
      }

      v13 = v125;
      if ([v6 isEqualToString:@"Restart"])
      {
        if (!v119 || [v5 reboot])
        {
          v41 = [(MSDMailProcessor *)self device];
          [v41 reboot];
LABEL_74:

          v14 = 1;
          goto LABEL_75;
        }

        v31 = v123;
LABEL_170:
        v14 = 0;
        goto LABEL_76;
      }

      if ([v6 isEqualToString:@"TurnSnapshotON"])
      {
        v43 = v11;
        v44 = [(MSDMailProcessor *)self device];
        [v44 setWaitingForCommand:0];

        [(MSDMailProcessor *)self setWaitingForCommand:0];
        if (v119 && ![v5 lockSnapshot])
        {
          goto LABEL_173;
        }

        v45 = [(MSDMailProcessor *)self device];
        v46 = [v45 lockSnapshot];
LABEL_92:
        v62 = v46;

        if (v62)
        {
LABEL_93:
          v14 = 1;
          v31 = v123;
          v11 = v43;
          goto LABEL_76;
        }

LABEL_173:
        v31 = v123;
        v11 = v43;
        goto LABEL_170;
      }

      if ([v6 isEqualToString:@"TurnSnapshotOFF"])
      {
        v43 = v11;
        if (v119 && ![v5 unlockSnapshot])
        {
          goto LABEL_173;
        }

        v45 = [(MSDMailProcessor *)self device];
        v46 = [v45 unlockSnapshot];
        goto LABEL_92;
      }

      if ([v6 isEqualToString:@"RevertSnapshot"])
      {
        v43 = v11;
        if (v119 && ![v5 revertSnapshot])
        {
          goto LABEL_173;
        }

        v45 = [(MSDMailProcessor *)self device];
        v46 = [v45 revertSnapshot];
        goto LABEL_92;
      }

      if ([v6 isEqualToString:@"Virgin"])
      {
        v118 = v11;
        v69 = [v4 objectForKey:@"ObliterateDevice"];
        v70 = [v69 BOOLValue];

        v71 = [v4 objectForKey:@"PreserveESim"];
        v72 = [v71 BOOLValue];

        v73 = sub_100063A54();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v133 = v70;
          *&v133[4] = 1024;
          *&v133[6] = v72;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Unenrolling device with obliteration: %{BOOL}d and preserve eSim: %{BOOL}d", buf, 0xEu);
        }

        if (v119)
        {
          [v5 unenrollWithObliteration:v70 callUnregister:1];
        }

        v74 = [(MSDMailProcessor *)self device];
        v75 = [v74 unenrollWithObliteration:v70 preserveESim:v72 callUnregister:0 preserveDDLFlag:0];

        if (v75)
        {
          v14 = 1;
          goto LABEL_43;
        }

        v31 = v123;
        v11 = v118;
        goto LABEL_170;
      }

      if ([v6 isEqualToString:@"ChangeSettings"])
      {
        v118 = v11;
        v78 = [(MSDMailProcessor *)self device];
        v79 = [v78 hubSuppliedSettings];

        v80 = [v4 objectForKey:@"Settings"];
        v81 = [(MSDMailProcessor *)self device];
        [v81 saveHubSuppliedSettings:v80];

        v122 = [v79 objectForKey:@"StoreHours"];
        v82 = [v80 objectForKey:@"StoreHours"];
        v120 = v82;
        if (v82)
        {
          v83 = v82;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v83 count] && (objc_msgSend(v122, "isEqualToArray:", v83) & 1) == 0)
          {
            v84 = sub_100063A54();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *v133 = "[MSDMailProcessor processRequest:]";
              _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%s - ChangeSettings has new 'StoreHours' set.", buf, 0xCu);
            }

            v85 = [(MSDMailProcessor *)self device];
            [v85 refreshStoreHoursManagerUsingSettingsAndTime:0];

            v86 = [(MSDMailProcessor *)self device];
            v87 = [v86 isContentFrozen];

            if (v87)
            {
              v88 = [(MSDMailProcessor *)self device];
              [v88 setupSnapshotRevertTimer];
            }
          }
        }

        v89 = [v80 objectForKey:@"PingFrequency"];
        v116 = v89;
        if (v89)
        {
          v90 = v89;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v90 unsignedIntegerValue])
            {
              v91 = [v90 unsignedIntegerValue];
              if (v91 != [(MSDMailProcessor *)self pingInterval])
              {
                v92 = sub_100063A54();
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315138;
                  *v133 = "[MSDMailProcessor processRequest:]";
                  _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%s - ChangeSettings has new 'PingFrequency' set.", buf, 0xCu);
                }

                [(MSDMailProcessor *)self setPingInterval:[(MSDMailProcessor *)self pingIntervalToUse]];
              }
            }
          }
        }

        v117 = v5;
        v93 = [v80 objectForKey:@"DeviceOptions"];
        if (!v93 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (-[MSDMailProcessor device](self, "device"), v94 = objc_claimAutoreleasedReturnValue(), v95 = [v94 updateDeviceOptions:v93 skipImutableKeys:1], v94, v95))
        {
          v115 = v79;
          v96 = [v79 objectForKey:@"FeatureFlags"];
          v97 = [v80 objectForKey:@"FeatureFlags"];
          if (v97)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v96 isEqualToDictionary:v97] & 1) == 0)
            {
              v98 = sub_100063A54();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *v133 = "[MSDMailProcessor processRequest:]";
                _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "%s - ChangeSettings has new 'FeatureFlags' set.", buf, 0xCu);
              }

              v99 = [(MSDMailProcessor *)self device];
              [v99 processNewFeatureFlags:v97 oldFeatureFlags:v96];
            }
          }

          goto LABEL_42;
        }

        goto LABEL_176;
      }

      if ([v6 isEqualToString:@"StopBackgroundDownload"])
      {
        v41 = +[MSDBackgroundDownload sharedInstance];
        [v41 quitBackgroundDownload];
        goto LABEL_74;
      }

      if ([v6 isEqualToString:@"DemoDeviceLock"])
      {
        v100 = [(MSDMailProcessor *)self device];
        if ([v100 isDDLDevice])
        {
          [(MSDMailProcessor *)self device];
          v102 = v101 = v11;
          v103 = [v102 isContentFrozen];

          v11 = v101;
          if (v103)
          {
            v104 = +[MSDPlatform sharedInstance];
            v105 = [v104 watchOS];

            v106 = [(MSDMailProcessor *)self device];
            v14 = 1;
            LOBYTE(v105) = [v106 unenrollWithObliteration:v105 preserveESim:1 callUnregister:0 preserveDDLFlag:1];

            if (v105)
            {
              v31 = v123;
              v11 = v101;
              goto LABEL_76;
            }

            v114 = sub_100063A54();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              sub_1000D7034();
            }

            v31 = v123;
            v11 = v101;
            v79 = v114;
            goto LABEL_169;
          }
        }

        else
        {
        }

        v111 = sub_100063A54();
        v31 = v123;
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          sub_1000D6FF8();
        }

        v14 = 1;
        goto LABEL_76;
      }

      if ([v6 isEqualToString:@"ChangeOSPreferences"])
      {
        v43 = v11;
        v107 = sub_100063A54();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "OS Preferences Update.", buf, 2u);
        }

        v108 = [(MSDMailProcessor *)self device];
        v109 = [v108 isContentFrozen];

        if (v109)
        {
          v110 = [(MSDMailProcessor *)self device];
          [v110 switchModeImmediately:2];
        }

        else
        {
          v110 = +[MSDWorkQueueSet sharedInstance];
          v113 = [v110 demoUpdateQueue];
          v126[0] = _NSConcreteStackBlock;
          v126[1] = 3221225472;
          v126[2] = sub_100066EAC;
          v126[3] = &unk_100169B70;
          v126[4] = self;
          dispatch_async(v113, v126);
        }

        goto LABEL_93;
      }

      v112 = sub_100063B64();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        sub_1000D6FBC();
      }

      v79 = [(MSDMailProcessor *)self device];
      [v79 deleteOperationRequest];
LABEL_168:
      v31 = v123;
LABEL_169:

      goto LABEL_170;
    }

    v118 = v11;
    if (!(v22 & 1 | (([v6 isEqualToString:@"UpdateContent"] & 1) == 0)))
    {
      v47 = [v4 objectForKey:@"OnlyInstallCriticalComponents"];

      if (v47)
      {
        v48 = [v4 objectForKey:@"OnlyInstallCriticalComponents"];
        v49 = [v48 BOOLValue];
        v50 = [(MSDMailProcessor *)self device];
        [v50 setCriticalUpdatePrioritized:v49];
      }
    }

    if (([v6 isEqualToString:@"UpdateContent"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"ChangeOSPreferences") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"UpdateOS"))
    {
      v51 = [v4 objectForKey:@"OSPreferences"];
      if (v51)
      {
        v52 = v51;
        v53 = [(MSDMailProcessor *)self device];
        v124 = v52;
        [v53 stageNewOSPreferences:v52];

        if ([v6 isEqualToString:@"ChangeOSPreferences"])
        {
          v20 = v20 | 0x20;
        }

        else
        {
          v20 = v20;
        }

        goto LABEL_98;
      }

      v63 = sub_100063A54();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        sub_1000D6F10();
      }
    }

    v124 = 0;
LABEL_98:
    v64 = [(MSDMailProcessor *)self device];
    v65 = [v64 saveOperationRequest:v6 requestFlag:v20 completeBy:v121];

    if ((v65 & 1) == 0)
    {
      v79 = sub_100063B64();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        sub_1000D6F80();
      }

LABEL_176:
      v13 = v125;
      v31 = v123;
      v11 = v118;
      goto LABEL_169;
    }

    v11 = v118;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
LABEL_77:

  return v14;
}

- (BOOL)isAllowedRequest:(id)a3 relayNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 objectForKey:@"Command"];
  v8 = +[MSDPairedWatchProxy sharedInstance];
  if (![v7 isEqualToString:@"UpdateContent"])
  {
    if ([v7 isEqualToString:@"StopBackgroundDownload"])
    {
      v12 = [(MSDMailProcessor *)self device];
      v13 = [v12 canStopBackgroundDownload];
      goto LABEL_11;
    }

    if ([v7 isEqualToString:@"UpdateOS"])
    {
      v12 = [(MSDMailProcessor *)self device];
      v13 = [v12 canStartOSUpdate];
      goto LABEL_11;
    }

    if ([v7 isEqualToString:@"TurnSnapshotON"])
    {
      v15 = [(MSDMailProcessor *)self device];
      LOBYTE(self) = [v15 canLockSnapshot];

      if (!v4)
      {
        goto LABEL_13;
      }

      v16 = [v8 canLockSnapshot];
    }

    else if ([v7 isEqualToString:@"TurnSnapshotOFF"])
    {
      v21 = [(MSDMailProcessor *)self device];
      LOBYTE(self) = [v21 canUnlockSnapshot];

      if (!v4)
      {
        goto LABEL_13;
      }

      v16 = [v8 canUnlockSnapshot];
    }

    else
    {
      if (![v7 isEqualToString:@"RevertSnapshot"])
      {
        if (![v7 isEqualToString:@"Virgin"])
        {
          if ([v7 isEqualToString:@"Restart"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"ChangeSettings"))
          {
            LOBYTE(self) = 1;
            goto LABEL_13;
          }

          if (([v7 isEqualToString:@"Shutdown"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"HoldPowerAssertion") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"LiftPowerAssertion") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"MigrateToNewHub") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"ChangePingFrequency") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"ConfigScreenSaver") & 1) == 0)
          {
            if ([v7 isEqualToString:@"DemoDeviceLock"])
            {
              v12 = [(MSDMailProcessor *)self device];
              if ([v12 isDDLDevice])
              {
                v25 = [(MSDMailProcessor *)self device];
                LOBYTE(self) = [v25 isContentFrozen];
              }

              else
              {
                LOBYTE(self) = 0;
              }

              goto LABEL_12;
            }

            if ([v7 isEqualToString:@"ChangeOSPreferences"])
            {
              v26 = [v6 objectForKey:@"OSPreferences"];

              if (v26)
              {
                v12 = [(MSDMailProcessor *)self device];
                v13 = [v12 canStartContentUpdate];
                goto LABEL_11;
              }

              v27 = sub_100063A54();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                sub_1000D70E8();
              }
            }
          }

          LOBYTE(self) = 0;
          goto LABEL_13;
        }

        v23 = [v6 objectForKey:@"ObliterateDevice"];
        v24 = [v23 BOOLValue];

        v12 = [(MSDMailProcessor *)self device];
        v13 = [v12 canUnenrollWithObliteration:v24 consultDeviceOptions:0];
LABEL_11:
        LOBYTE(self) = v13;
LABEL_12:

        goto LABEL_13;
      }

      v22 = [(MSDMailProcessor *)self device];
      LOBYTE(self) = [v22 canRevertSnapshot];

      if (!v4)
      {
        goto LABEL_13;
      }

      v16 = [v8 canRevertSnapshot];
    }

    LOBYTE(self) = self & v16;
    goto LABEL_13;
  }

  v9 = [v6 objectForKey:@"ContentType"];
  if (([v9 containsObject:@"Account"] & 1) != 0 || objc_msgSend(v9, "containsObject:", @"ContinuityLinking"))
  {
    v10 = [(MSDMailProcessor *)self device];
    v11 = [v10 canStartAccountContentUpdate];
  }

  else
  {
    if (![v9 containsObject:@"Asset"])
    {
      v17 = [v6 objectForKey:@"BackgroundDownloadOnly"];
      v18 = [v17 BOOLValue];

      v19 = [(MSDMailProcessor *)self device];
      v20 = v19;
      if (v18)
      {
        LOBYTE(self) = [v19 canStartBackgroundDownload];
      }

      else
      {
        LODWORD(self) = [v19 canStartContentUpdate];

        if (v4)
        {
          LODWORD(self) = self & [v8 canUpdateContent];
        }
      }

      goto LABEL_6;
    }

    v10 = [(MSDMailProcessor *)self device];
    v11 = [v10 canStartContentUpdate];
  }

  LOBYTE(self) = v11;

LABEL_6:
LABEL_13:

  return self;
}

- (int64_t)pingIntervalToUse
{
  v3 = [(MSDMailProcessor *)self device];
  v4 = [v3 hubSuppliedSettings];
  v5 = [v4 objectForKey:@"PingFrequency"];

  if ([(MSDMailProcessor *)self waitingForCommand])
  {
    v6 = 30;
  }

  else if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v5 unsignedIntegerValue])
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 600;
  }

  return v6;
}

- (BOOL)updateManifestInfo:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[MSDFileDownloadCredentials sharedInstance];
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "receiveDict:%{public}@", &v14, 0xCu);
  }

  if (![v5 count])
  {
    sub_1000D7240(a4);
    v8 = 0;
    goto LABEL_13;
  }

  v8 = [v5 objectForKey:@"Ready"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v8 BOOLValue] & 1) == 0)
  {
    sub_1000C1390(a4, 3727740939, @"Hub still downloading contents. Please wait.");
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = [v5 mutableCopy];
  [v9 removeObjectForKey:@"Ready"];
  v10 = [v9 allKeys];
  v11 = [v10 count];

  if (!v11)
  {
    sub_1000D7168(v9, a4);
    goto LABEL_14;
  }

  if (([v6 updateWithResponseFromGetManifestInfo:v9] & 1) == 0)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_10;
  }

  v12 = 1;
LABEL_10:

  return v12;
}

- (unint64_t)convertPingType:(unint64_t)a3
{
  v4 = +[MSDNPIMaskValues sharedInstance];
  v5 = [v4 isNPIDevice];

  if (v5)
  {
    return a3 | 0x40;
  }

  else
  {
    return a3;
  }
}

@end