@interface MSDMailProcessor
+ (id)sharedInstance;
- (BOOL)isAllowedRequest:(id)request relayNeeded:(BOOL)needed;
- (BOOL)processRequest:(id)request;
- (BOOL)updateManifestInfo:(id)info error:(id *)error;
- (MSDMailProcessor)init;
- (id)pingWithType:(unint64_t)type;
- (int64_t)pingIntervalToUse;
- (unint64_t)convertPingType:(unint64_t)type;
- (void)pingAndProcess:(unint64_t)process waitForCompletion:(BOOL)completion;
- (void)sendImmediateDeviceInfoPing;
- (void)setPingInterval:(unint64_t)interval;
- (void)setWaitingForCommand:(BOOL)command;
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

  device = [(MSDMailProcessor *)self device];
  hubHostName = [device hubHostName];
  if (hubHostName)
  {
    v6 = hubHostName;
    device2 = [(MSDMailProcessor *)self device];
    hubPort = [device2 hubPort];

    if (hubPort)
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
    device = [(MSDMailProcessor *)self device];
    hubHostName = [device hubHostName];
    device2 = [(MSDMailProcessor *)self device];
    hubPort = [device2 hubPort];
    *buf = 136315650;
    v11 = "[MSDMailProcessor startPeriodicPing]";
    v12 = 2114;
    v13 = hubHostName;
    v14 = 2114;
    v15 = hubPort;
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

- (void)setPingInterval:(unint64_t)interval
{
  pingInterval = self->_pingInterval;
  self->_pingInterval = interval;
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

- (void)setWaitingForCommand:(BOOL)command
{
  if (self->_waitingForCommand != command)
  {
    commandCopy = command;
    self->_waitingForCommand = command;
    pingIntervalToUse = [(MSDMailProcessor *)self pingIntervalToUse];
    pingInterval = [(MSDMailProcessor *)self pingInterval];
    if (commandCopy)
    {
      if (pingInterval <= pingIntervalToUse)
      {
        return;
      }
    }

    else if (pingInterval == pingIntervalToUse)
    {
      return;
    }

    [(MSDMailProcessor *)self setPingInterval:pingIntervalToUse];
  }
}

- (void)pingAndProcess:(unint64_t)process waitForCompletion:(BOOL)completion
{
  completionCopy = completion;
  processCopy = process;
  if (([(MSDMailProcessor *)self queuedPingType]& process) == 0)
  {
    if ((processCopy & 8) != 0)
    {
      processCopy = 1;
    }

    [(MSDMailProcessor *)self setQueuedPingType:[(MSDMailProcessor *)self queuedPingType]| processCopy];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100064DDC;
    v11[3] = &unk_10016B318;
    v11[4] = self;
    v11[5] = processCopy;
    v7 = objc_retainBlock(v11);
    v8 = +[MSDWorkQueueSet sharedInstance];
    pollingQueue = [v8 pollingQueue];
    v10 = pollingQueue;
    if (completionCopy)
    {
      dispatch_sync(pollingQueue, v7);
    }

    else
    {
      dispatch_async(pollingQueue, v7);
    }
  }
}

- (id)pingWithType:(unint64_t)type
{
  v5 = sub_100063B64();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D6898();
  }

  if (type - 1 <= 1)
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
    device = [(MSDMailProcessor *)self device];
    getS3ServerFailureEventForPing = [device deviceInformationForPing:v9];

    if (!getS3ServerFailureEventForPing)
    {
      sub_1000D6D4C(self);
      v8 = 0;
      v46 = 0;
      v25 = 0;
      v23 = 0;
      goto LABEL_50;
    }

    v45 = [getS3ServerFailureEventForPing objectForKey:@"InternalStatus"];
    if (v45 && [v45 intValue] != 199 && !-[MSDMailProcessor demodReady](self, "demodReady"))
    {
      [(MSDMailProcessor *)self setDemodReady:1];
      [(MSDMailProcessor *)self setPingInterval:[(MSDMailProcessor *)self pingIntervalToUse]];
    }

    device2 = [(MSDMailProcessor *)self device];
    hubSuppliedSettings = [device2 hubSuppliedSettings];
    v8 = [hubSuppliedSettings objectForKey:@"PingFrequency"];

    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v8 unsignedIntegerValue])
    {
      integerValue = [v8 integerValue];
    }

    else
    {
      integerValue = [(MSDMailProcessor *)self pingInterval];
    }

    v15 = [NSNumber numberWithInteger:integerValue];
    [getS3ServerFailureEventForPing setObject:v15 forKey:@"MSDPingFrequency"];

    typeCopy = type;
    goto LABEL_24;
  }

  if (type == 32)
  {
    device3 = [(MSDMailProcessor *)self device];
    getS3ServerFailureEventForPing = [device3 getS3ServerFailureEventForPing];

    if (getS3ServerFailureEventForPing)
    {
      v8 = 0;
      v44 = 0;
      v9 = 0;
      typeCopy = 32;
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

  if (type == 16)
  {
    device4 = [(MSDMailProcessor *)self device];
    getS3ServerFailureEventForPing = [device4 getCachingHubFailureEventForPing];

    if (getS3ServerFailureEventForPing)
    {
      v8 = 0;
      v44 = 0;
      v9 = 0;
      typeCopy = 16;
LABEL_24:
      v17 = [NSNumber numberWithUnsignedInteger:[(MSDMailProcessor *)self convertPingType:typeCopy, v44]];
      [getS3ServerFailureEventForPing setObject:v17 forKey:@"MSDDemoPingType"];

      goto LABEL_25;
    }

    sub_1000D699C();
    goto LABEL_63;
  }

  v8 = 0;
  v46 = 0;
  getS3ServerFailureEventForPing = 0;
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
    v19 = [getS3ServerFailureEventForPing objectForKey:@"MSDExistingAccounts"];
    v18 = [v19 objectForKey:@"iCloudRecoveryKey"];

    v20 = [getS3ServerFailureEventForPing objectForKeyedSubscript:@"MSDExistingAccounts"];
    [v20 setObject:@"<redacted>" forKeyedSubscript:@"iCloudRecoveryKey"];

    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D6A38();
    }

    v22 = [getS3ServerFailureEventForPing objectForKeyedSubscript:@"MSDExistingAccounts"];
    [v22 setObject:v18 forKeyedSubscript:@"iCloudRecoveryKey"];
  }

  v23 = objc_alloc_init(MSDPingRequest);
  [(MSDPingRequest *)v23 setRequestInfo:getS3ServerFailureEventForPing];
  v24 = +[MSDServerRequestHandler sharedInstance];
  v25 = [v24 handleRequestSync:v23];

  error = [v25 error];

  if (error)
  {
    sub_1000D6AA0(v25);
LABEL_50:
    v40 = 0;
    v38 = 0;
    data = 0;
LABEL_51:
    v41 = 0;
    goto LABEL_53;
  }

  v27 = v9;
  data = [v25 data];
  statusCode = [v25 statusCode];
  intValue = [statusCode intValue];

  if (!data)
  {
    v42 = sub_100063B64();
    v9 = v27;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1000D6CCC();
    }

    goto LABEL_50;
  }

  if (type == 1 && (intValue & 0xFFFFFFFB) == 0xC8)
  {
    [(MSDMailProcessor *)self setFullKeysSent:1];
    if ([v46 intValue] == 20 || objc_msgSend(v46, "intValue") == 100)
    {
      v31 = [getS3ServerFailureEventForPing objectForKey:{@"MSDExistingAccounts", v46}];
      v32 = [v31 objectForKey:@"iCloudCDPState"];

      integerValue2 = [v32 integerValue];
      if (integerValue2 == [&off_10017B0F8 integerValue])
      {
        device5 = [(MSDMailProcessor *)self device];
        iCloudAccountRecoveryKey = [device5 iCloudAccountRecoveryKey];

        if (iCloudAccountRecoveryKey)
        {
          v36 = sub_100063A54();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "iCloud account recovery key successfully uploaded. Removing local copy...", buf, 2u);
          }

          device6 = [(MSDMailProcessor *)self device];
          [device6 saveiCloudAccountRecoveryKey:0];
        }
      }
    }
  }

  if ([data length])
  {
    v47 = 0;
    v38 = [NSJSONSerialization JSONObjectWithData:data options:0 error:&v47];
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

- (BOOL)processRequest:(id)request
{
  requestCopy = request;
  v5 = +[MSDPairedWatchProxy sharedInstance];
  if ([requestCopy count])
  {
    v6 = [requestCopy objectForKey:@"Command"];
    v7 = [requestCopy objectForKey:@"IgnorePairedDevice"];
    bOOLValue = [v7 BOOLValue];

    device = [(MSDMailProcessor *)self device];
    if ([device isBetterTogetherDemo])
    {
      v10 = [v5 paired] & (bOOLValue ^ 1);
    }

    else
    {
      v10 = 0;
    }

    v15 = [(MSDMailProcessor *)self isAllowedRequest:requestCopy relayNeeded:v10];
    [(MSDMailProcessor *)self ack:v15];
    if (!v15)
    {
      hubSuppliedSettings = sub_100063B64();
      if (os_log_type_enabled(hubSuppliedSettings, OS_LOG_TYPE_ERROR))
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

    v16 = [requestCopy objectForKey:@"Duration"];
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
    v12 = [requestCopy objectForKey:@"ContentType"];
    v125 = v13;
    if ([v12 containsObject:@"Demo"])
    {
      [requestCopy objectForKey:@"ManifestInfo"];
      v123 = v131 = 0;
      v19 = [MSDMailProcessor updateManifestInfo:"updateManifestInfo:error:" error:?];
      v11 = 0;
      if ((v19 & 1) == 0)
      {
        hubSuppliedSettings = sub_100063A54();
        if (os_log_type_enabled(hubSuppliedSettings, OS_LOG_TYPE_ERROR))
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

    v21 = [requestCopy objectForKey:@"BackgroundDownloadOnly"];
    bOOLValue2 = [v21 BOOLValue];

    if ([v6 isEqualToString:@"UpdateContent"] && !bOOLValue2 || objc_msgSend(v6, "isEqualToString:", @"UpdateOS"))
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

            device2 = [(MSDMailProcessor *)self device];
            [device2 switchModeImmediately:2];

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
              device3 = [(MSDMailProcessor *)self device];
              manifestPath = [device3 manifestPath];
              [v27 removeItemAtPath:manifestPath error:0];

              if (bOOLValue2)
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

              device4 = [(MSDMailProcessor *)self device];
              [device4 setWaitingForCommand:0];

              [(MSDMailProcessor *)self setWaitingForCommand:0];
              v5 = v117;
              if ((v20 & 2) != 0)
              {
                device5 = [(MSDMailProcessor *)self device];
                mode = [device5 mode];

                if (mode == 5)
                {
                  device6 = [(MSDMailProcessor *)self device];
                  [device6 switchModeImmediately:2];
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
                demoUpdateQueue = [v76 demoUpdateQueue];
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_100066DB8;
                block[3] = &unk_10016B340;
                v130 = v119;
                v128 = v117;
                v129 = v121;
                dispatch_async(demoUpdateQueue, block);
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

            device7 = [(MSDMailProcessor *)self device];
            [device7 switchModeImmediately:2];
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

        device8 = [(MSDMailProcessor *)self device];
        [device8 saveOSUpdateRequest:requestCopy];

        device9 = [(MSDMailProcessor *)self device];
        [device9 setWaitingForCommand:0];

        [(MSDMailProcessor *)self setWaitingForCommand:0];
        device10 = [(MSDMailProcessor *)self device];
        [device10 switchModeImmediately:7];

        v37 = +[MSDWorkQueueSet sharedInstance];
        demoUpdateQueue2 = [v37 demoUpdateQueue];
        dispatch_async(demoUpdateQueue2, &stru_10016B360);

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
          device7 = [(MSDMailProcessor *)self device];
          [device7 reboot];
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
        device11 = [(MSDMailProcessor *)self device];
        [device11 setWaitingForCommand:0];

        [(MSDMailProcessor *)self setWaitingForCommand:0];
        if (v119 && ![v5 lockSnapshot])
        {
          goto LABEL_173;
        }

        device12 = [(MSDMailProcessor *)self device];
        lockSnapshot = [device12 lockSnapshot];
LABEL_92:
        v62 = lockSnapshot;

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

        device12 = [(MSDMailProcessor *)self device];
        lockSnapshot = [device12 unlockSnapshot];
        goto LABEL_92;
      }

      if ([v6 isEqualToString:@"RevertSnapshot"])
      {
        v43 = v11;
        if (v119 && ![v5 revertSnapshot])
        {
          goto LABEL_173;
        }

        device12 = [(MSDMailProcessor *)self device];
        lockSnapshot = [device12 revertSnapshot];
        goto LABEL_92;
      }

      if ([v6 isEqualToString:@"Virgin"])
      {
        v118 = v11;
        v69 = [requestCopy objectForKey:@"ObliterateDevice"];
        bOOLValue3 = [v69 BOOLValue];

        v71 = [requestCopy objectForKey:@"PreserveESim"];
        bOOLValue4 = [v71 BOOLValue];

        v73 = sub_100063A54();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v133 = bOOLValue3;
          *&v133[4] = 1024;
          *&v133[6] = bOOLValue4;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Unenrolling device with obliteration: %{BOOL}d and preserve eSim: %{BOOL}d", buf, 0xEu);
        }

        if (v119)
        {
          [v5 unenrollWithObliteration:bOOLValue3 callUnregister:1];
        }

        device13 = [(MSDMailProcessor *)self device];
        v75 = [device13 unenrollWithObliteration:bOOLValue3 preserveESim:bOOLValue4 callUnregister:0 preserveDDLFlag:0];

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
        device14 = [(MSDMailProcessor *)self device];
        hubSuppliedSettings = [device14 hubSuppliedSettings];

        v80 = [requestCopy objectForKey:@"Settings"];
        device15 = [(MSDMailProcessor *)self device];
        [device15 saveHubSuppliedSettings:v80];

        v122 = [hubSuppliedSettings objectForKey:@"StoreHours"];
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

            device16 = [(MSDMailProcessor *)self device];
            [device16 refreshStoreHoursManagerUsingSettingsAndTime:0];

            device17 = [(MSDMailProcessor *)self device];
            isContentFrozen = [device17 isContentFrozen];

            if (isContentFrozen)
            {
              device18 = [(MSDMailProcessor *)self device];
              [device18 setupSnapshotRevertTimer];
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
              unsignedIntegerValue = [v90 unsignedIntegerValue];
              if (unsignedIntegerValue != [(MSDMailProcessor *)self pingInterval])
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
          v115 = hubSuppliedSettings;
          v96 = [hubSuppliedSettings objectForKey:@"FeatureFlags"];
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

              device19 = [(MSDMailProcessor *)self device];
              [device19 processNewFeatureFlags:v97 oldFeatureFlags:v96];
            }
          }

          goto LABEL_42;
        }

        goto LABEL_176;
      }

      if ([v6 isEqualToString:@"StopBackgroundDownload"])
      {
        device7 = +[MSDBackgroundDownload sharedInstance];
        [device7 quitBackgroundDownload];
        goto LABEL_74;
      }

      if ([v6 isEqualToString:@"DemoDeviceLock"])
      {
        device20 = [(MSDMailProcessor *)self device];
        if ([device20 isDDLDevice])
        {
          [(MSDMailProcessor *)self device];
          v102 = v101 = v11;
          isContentFrozen2 = [v102 isContentFrozen];

          v11 = v101;
          if (isContentFrozen2)
          {
            v104 = +[MSDPlatform sharedInstance];
            watchOS = [v104 watchOS];

            device21 = [(MSDMailProcessor *)self device];
            v14 = 1;
            LOBYTE(watchOS) = [device21 unenrollWithObliteration:watchOS preserveESim:1 callUnregister:0 preserveDDLFlag:1];

            if (watchOS)
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
            hubSuppliedSettings = v114;
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

        device22 = [(MSDMailProcessor *)self device];
        isContentFrozen3 = [device22 isContentFrozen];

        if (isContentFrozen3)
        {
          device23 = [(MSDMailProcessor *)self device];
          [device23 switchModeImmediately:2];
        }

        else
        {
          device23 = +[MSDWorkQueueSet sharedInstance];
          demoUpdateQueue3 = [device23 demoUpdateQueue];
          v126[0] = _NSConcreteStackBlock;
          v126[1] = 3221225472;
          v126[2] = sub_100066EAC;
          v126[3] = &unk_100169B70;
          v126[4] = self;
          dispatch_async(demoUpdateQueue3, v126);
        }

        goto LABEL_93;
      }

      v112 = sub_100063B64();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        sub_1000D6FBC();
      }

      hubSuppliedSettings = [(MSDMailProcessor *)self device];
      [hubSuppliedSettings deleteOperationRequest];
LABEL_168:
      v31 = v123;
LABEL_169:

      goto LABEL_170;
    }

    v118 = v11;
    if (!(bOOLValue2 & 1 | (([v6 isEqualToString:@"UpdateContent"] & 1) == 0)))
    {
      v47 = [requestCopy objectForKey:@"OnlyInstallCriticalComponents"];

      if (v47)
      {
        v48 = [requestCopy objectForKey:@"OnlyInstallCriticalComponents"];
        bOOLValue5 = [v48 BOOLValue];
        device24 = [(MSDMailProcessor *)self device];
        [device24 setCriticalUpdatePrioritized:bOOLValue5];
      }
    }

    if (([v6 isEqualToString:@"UpdateContent"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"ChangeOSPreferences") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"UpdateOS"))
    {
      v51 = [requestCopy objectForKey:@"OSPreferences"];
      if (v51)
      {
        v52 = v51;
        device25 = [(MSDMailProcessor *)self device];
        v124 = v52;
        [device25 stageNewOSPreferences:v52];

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
    device26 = [(MSDMailProcessor *)self device];
    v65 = [device26 saveOperationRequest:v6 requestFlag:v20 completeBy:v121];

    if ((v65 & 1) == 0)
    {
      hubSuppliedSettings = sub_100063B64();
      if (os_log_type_enabled(hubSuppliedSettings, OS_LOG_TYPE_ERROR))
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

- (BOOL)isAllowedRequest:(id)request relayNeeded:(BOOL)needed
{
  neededCopy = needed;
  requestCopy = request;
  v7 = [requestCopy objectForKey:@"Command"];
  v8 = +[MSDPairedWatchProxy sharedInstance];
  if (![v7 isEqualToString:@"UpdateContent"])
  {
    if ([v7 isEqualToString:@"StopBackgroundDownload"])
    {
      device = [(MSDMailProcessor *)self device];
      canStopBackgroundDownload = [device canStopBackgroundDownload];
      goto LABEL_11;
    }

    if ([v7 isEqualToString:@"UpdateOS"])
    {
      device = [(MSDMailProcessor *)self device];
      canStopBackgroundDownload = [device canStartOSUpdate];
      goto LABEL_11;
    }

    if ([v7 isEqualToString:@"TurnSnapshotON"])
    {
      device2 = [(MSDMailProcessor *)self device];
      LOBYTE(self) = [device2 canLockSnapshot];

      if (!neededCopy)
      {
        goto LABEL_13;
      }

      canLockSnapshot = [v8 canLockSnapshot];
    }

    else if ([v7 isEqualToString:@"TurnSnapshotOFF"])
    {
      device3 = [(MSDMailProcessor *)self device];
      LOBYTE(self) = [device3 canUnlockSnapshot];

      if (!neededCopy)
      {
        goto LABEL_13;
      }

      canLockSnapshot = [v8 canUnlockSnapshot];
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
              device = [(MSDMailProcessor *)self device];
              if ([device isDDLDevice])
              {
                device4 = [(MSDMailProcessor *)self device];
                LOBYTE(self) = [device4 isContentFrozen];
              }

              else
              {
                LOBYTE(self) = 0;
              }

              goto LABEL_12;
            }

            if ([v7 isEqualToString:@"ChangeOSPreferences"])
            {
              v26 = [requestCopy objectForKey:@"OSPreferences"];

              if (v26)
              {
                device = [(MSDMailProcessor *)self device];
                canStopBackgroundDownload = [device canStartContentUpdate];
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

        v23 = [requestCopy objectForKey:@"ObliterateDevice"];
        bOOLValue = [v23 BOOLValue];

        device = [(MSDMailProcessor *)self device];
        canStopBackgroundDownload = [device canUnenrollWithObliteration:bOOLValue consultDeviceOptions:0];
LABEL_11:
        LOBYTE(self) = canStopBackgroundDownload;
LABEL_12:

        goto LABEL_13;
      }

      device5 = [(MSDMailProcessor *)self device];
      LOBYTE(self) = [device5 canRevertSnapshot];

      if (!neededCopy)
      {
        goto LABEL_13;
      }

      canLockSnapshot = [v8 canRevertSnapshot];
    }

    LOBYTE(self) = self & canLockSnapshot;
    goto LABEL_13;
  }

  v9 = [requestCopy objectForKey:@"ContentType"];
  if (([v9 containsObject:@"Account"] & 1) != 0 || objc_msgSend(v9, "containsObject:", @"ContinuityLinking"))
  {
    device6 = [(MSDMailProcessor *)self device];
    canStartAccountContentUpdate = [device6 canStartAccountContentUpdate];
  }

  else
  {
    if (![v9 containsObject:@"Asset"])
    {
      v17 = [requestCopy objectForKey:@"BackgroundDownloadOnly"];
      bOOLValue2 = [v17 BOOLValue];

      device7 = [(MSDMailProcessor *)self device];
      v20 = device7;
      if (bOOLValue2)
      {
        LOBYTE(self) = [device7 canStartBackgroundDownload];
      }

      else
      {
        LODWORD(self) = [device7 canStartContentUpdate];

        if (neededCopy)
        {
          LODWORD(self) = self & [v8 canUpdateContent];
        }
      }

      goto LABEL_6;
    }

    device6 = [(MSDMailProcessor *)self device];
    canStartAccountContentUpdate = [device6 canStartContentUpdate];
  }

  LOBYTE(self) = canStartAccountContentUpdate;

LABEL_6:
LABEL_13:

  return self;
}

- (int64_t)pingIntervalToUse
{
  device = [(MSDMailProcessor *)self device];
  hubSuppliedSettings = [device hubSuppliedSettings];
  v5 = [hubSuppliedSettings objectForKey:@"PingFrequency"];

  if ([(MSDMailProcessor *)self waitingForCommand])
  {
    integerValue = 30;
  }

  else if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v5 unsignedIntegerValue])
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 600;
  }

  return integerValue;
}

- (BOOL)updateManifestInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v6 = +[MSDFileDownloadCredentials sharedInstance];
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = infoCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "receiveDict:%{public}@", &v14, 0xCu);
  }

  if (![infoCopy count])
  {
    sub_1000D7240(error);
    v8 = 0;
    goto LABEL_13;
  }

  v8 = [infoCopy objectForKey:@"Ready"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v8 BOOLValue] & 1) == 0)
  {
    sub_1000C1390(error, 3727740939, @"Hub still downloading contents. Please wait.");
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = [infoCopy mutableCopy];
  [v9 removeObjectForKey:@"Ready"];
  allKeys = [v9 allKeys];
  v11 = [allKeys count];

  if (!v11)
  {
    sub_1000D7168(v9, error);
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

- (unint64_t)convertPingType:(unint64_t)type
{
  v4 = +[MSDNPIMaskValues sharedInstance];
  isNPIDevice = [v4 isNPIDevice];

  if (isNPIDevice)
  {
    return type | 0x40;
  }

  else
  {
    return type;
  }
}

@end