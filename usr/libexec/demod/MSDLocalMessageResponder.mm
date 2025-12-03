@interface MSDLocalMessageResponder
+ (id)sharedInstance;
- (BOOL)checkEntitlementsWithRequest:(id)request from:(id)from;
- (OS_xpc_object)connectionForPricing;
- (id)getEntitlementsFrom:(id)from;
- (void)_handleCloseRunningAppsRequest:(id)request from:(id)from;
- (void)_handleDeviceCheckInOp:(id)op from:(id)from;
- (void)_handleInitializeDeviceSettingsOp:(id)op from:(id)from;
- (void)_handleMarkAsNotDemo:(id)demo from:(id)from;
- (void)_handleRefreshDeviceSettingsOp:(id)op from:(id)from;
- (void)_handleStoreSearchOp:(id)op from:(id)from;
- (void)handleMessage:(id)message from:(id)from;
- (void)lostClientConnection:(id)connection;
- (void)sendRebootTimeoutMessageToPricing:(int)pricing;
- (void)start;
@end

@implementation MSDLocalMessageResponder

+ (id)sharedInstance
{
  if (qword_1001A56A0 != -1)
  {
    sub_1000CDD2C();
  }

  v3 = qword_1001A5698;

  return v3;
}

- (id)getEntitlementsFrom:(id)from
{
  v14 = 0u;
  v15 = 0u;
  xpc_connection_get_audit_token();
  memset(&v13, 0, sizeof(v13));
  v3 = SecTaskCreateWithAuditToken(0, &v13);
  if (v3)
  {
    v4 = v3;
    v5 = SecTaskCopySigningIdentifier(v3, 0);
    v6 = SecTaskCopyValueForEntitlement(v4, @"com.apple.private.mobilestoredemo.enabledemo", 0);
    v7 = v6;
    if (v6)
    {
      v8 = CFGetTypeID(v6);
      if (v8 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v7))
        {
          CFRelease(v7);
          v7 = &off_10017BC10;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v9 = CFGetTypeID(v7);
        if (v9 != CFArrayGetTypeID())
        {
          v7 = 0;
        }
      }
    }

    else
    {
      sub_1000CDD40();
    }

    v10 = +[MSDPlatform sharedInstance];
    if ([v10 macOS])
    {
      if (([(__CFString *)v5 containsString:@"com.apple.SecurityAgentHelper"]& 1) != 0)
      {
      }

      else
      {
        v11 = [(__CFString *)v5 containsString:@"com.apple.SecurityAgent"];

        if ((v11 & 1) == 0)
        {
LABEL_14:
          CFRelease(v4);
          goto LABEL_15;
        }
      }

      v10 = v7;
      v7 = &off_10017BC28;
    }

    goto LABEL_14;
  }

  sub_1000CDDDC();
  v5 = 0;
  v7 = 0;
LABEL_15:

  return v7;
}

- (BOOL)checkEntitlementsWithRequest:(id)request from:(id)from
{
  requestCopy = request;
  v7 = [(MSDLocalMessageResponder *)self getEntitlementsFrom:from];
  if (!v7)
  {
    sub_1000CDE78();
    goto LABEL_37;
  }

  string = xpc_dictionary_get_string(requestCopy, "RequestOperation");
  if (!string)
  {
    goto LABEL_12;
  }

  v9 = [NSString stringWithUTF8String:string];
  if ([v9 isEqualToString:@"GetDeviceOptions"] && (v10 = xpc_dictionary_get_string(requestCopy, "SubKey")) != 0)
  {
    v11 = [NSString stringWithUTF8String:v10];
  }

  else
  {
    v11 = 0;
  }

  if ([&off_10017BC58 containsObject:v9])
  {
    v12 = @"Enroll";
LABEL_9:
    v13 = v7;
    goto LABEL_10;
  }

  if (![&off_10017BC40 containsObject:v9])
  {
    if ([&off_10017BC70 containsObject:v9])
    {
      v12 = @"AccessPersistDemoVolume";
    }

    else if ([&off_10017BCA0 containsObject:v9])
    {
      v12 = @"KeychainAccess";
    }

    else if ([&off_10017BCB8 containsObject:v9])
    {
      v12 = @"UserKeychainAccess";
    }

    else
    {
      if (![&off_10017BCD0 containsObject:v9])
      {
        if ([&off_10017BCE8 containsObject:v9] && objc_msgSend(v7, "containsObject:", @"PeerDemoDevice"))
        {
          goto LABEL_11;
        }

        goto LABEL_36;
      }

      v12 = @"SecurityPlugin";
    }

    goto LABEL_9;
  }

  if ([v7 containsObject:@"Manage"])
  {
    goto LABEL_11;
  }

  if (![v7 containsObject:@"DigitalCatalog"])
  {
    goto LABEL_36;
  }

  v13 = &off_10017BC88;
  v12 = v11;
LABEL_10:
  if (([v13 containsObject:v12] & 1) == 0)
  {
LABEL_36:

LABEL_37:
    v17 = 0;
    goto LABEL_25;
  }

LABEL_11:

LABEL_12:
  v14 = xpc_dictionary_get_string(requestCopy, "QueryDeviceInfo");
  if (v14)
  {
    v15 = strncmp(v14, "MSDDemoDeviceFrozen", 0x14uLL);
    v16 = [v7 containsObject:@"Manage"];
    if (v15)
    {
      if (!v16)
      {
        goto LABEL_37;
      }
    }

    else if ((v16 & 1) == 0 && ([v7 containsObject:@"SecurityPlugin"] & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (xpc_dictionary_get_string(requestCopy, "PricingMessage") && ([v7 containsObject:@"Manage"] & 1) == 0)
  {
    goto LABEL_37;
  }

  v17 = 1;
LABEL_25:

  return v17;
}

- (void)start
{
  xpcListener = [(MSDLocalMessageResponder *)self xpcListener];

  if (!xpcListener)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.mobilestoredemod", 0, 1uLL);
    [(MSDLocalMessageResponder *)self setXpcListener:mach_service];

    xpcListener2 = [(MSDLocalMessageResponder *)self xpcListener];

    if (!xpcListener2)
    {
      v11 = sub_100063B64();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not create XPC listener.", buf, 2u);
      }

      exit(1);
    }

    xpcListener3 = [(MSDLocalMessageResponder *)self xpcListener];
    v7 = +[MSDWorkQueueSet sharedInstance];
    messageQueue = [v7 messageQueue];
    xpc_connection_set_target_queue(xpcListener3, messageQueue);

    xpcListener4 = [(MSDLocalMessageResponder *)self xpcListener];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100035178;
    handler[3] = &unk_10016A7E8;
    handler[4] = self;
    xpc_connection_set_event_handler(xpcListener4, handler);

    xpcListener5 = [(MSDLocalMessageResponder *)self xpcListener];
    xpc_connection_resume(xpcListener5);
  }
}

- (void)handleMessage:(id)message from:(id)from
{
  messageCopy = message;
  connection = from;
  v294 = 0;
  v295 = &v294;
  v296 = 0x3032000000;
  v297 = sub_100039200;
  v298 = sub_100039210;
  v299 = 0;
  v290 = 0;
  v291 = &v290;
  v292 = 0x2020000000;
  v293 = 0;
  v242 = +[MSDPricingUpdateController sharedInstance];
  v6 = sub_100063B64();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CDF88();
  }

  v7 = [(MSDLocalMessageResponder *)self checkEntitlementsWithRequest:messageCopy from:connection];
  *(v291 + 24) = v7;
  if ((v7 & 1) == 0)
  {
    reply = sub_100063B64();
    if (os_log_type_enabled(reply, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDFC4();
    }

    v245 = 0;
    v246 = 0;
    v250 = 0;
    v240 = 0;
    v241 = 0;
    v243 = 0;
    v244 = 0;
    v247 = 0;
    v248 = 0;
    v9 = 0;
    goto LABEL_123;
  }

  v250 = +[MSDTargetDevice sharedInstance];
  v246 = +[MSDDemoUpdateController sharedInstance];
  v245 = +[MSDPairedWatchProxy sharedInstance];
  v8 = [NSDictionary dictionaryWithXPCDictionary:messageCopy];
  v9 = v8;
  if (!v8)
  {
    v240 = 0;
    v241 = 0;
    v243 = 0;
    v244 = 0;
    v247 = 0;
    v248 = 0;
    goto LABEL_122;
  }

  v248 = [v8 objectForKey:@"ContentServer"];
  v247 = [v9 objectForKey:@"Port"];
  v244 = [v9 objectForKey:@"PairingCredential"];
  v243 = [v9 objectForKey:@"DeviceName"];
  v241 = [v9 objectForKey:@"ContainerUniqueIdentifier"];
  v240 = [v9 objectForKey:@"PersistentDataBlob"];
  string = xpc_dictionary_get_string(messageCopy, "RequestOperation");
  if (!string)
  {
    goto LABEL_81;
  }

  v11 = sub_100063B64();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = string;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received an operation request: %{public}s", buf, 0xCu);
  }

  int64 = xpc_dictionary_get_int64(messageCopy, "Duration");
  if (int64)
  {
    v13 = [NSDate dateWithTimeIntervalSinceNow:int64];
    [v13 timeIntervalSinceReferenceDate];
    v15 = v14;

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = xpc_dictionary_get_BOOL(messageCopy, "IgnorePairedDevice");
  if ([v250 isBetterTogetherDemo])
  {
    v18 = [v245 paired] & !v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [NSString stringWithCString:string encoding:4];
  v20 = [(MSDLocalMessageResponder *)self saveOperationRequestIfNeeded:v19 completeBy:v16];
  *(v291 + 24) = v20;

  v21 = v291;
  if ((v291[3] & 1) == 0)
  {
    goto LABEL_122;
  }

  if (!strncmp(string, "DemoEnroll", 0xBuLL))
  {
    if (!v248 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v247 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      sub_100063B64();
      objc_claimAutoreleasedReturnValue();
      sub_1000CEA90();
      reply = *buf;
      goto LABEL_259;
    }

    if (!v244)
    {
      v23 = sub_100063B64();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[MSDLocalMessageResponder handleMessage:from:]";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: warning: no credential from app", buf, 0xCu);
      }
    }

    if (!v243)
    {
      v24 = sub_100063B64();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[MSDLocalMessageResponder handleMessage:from:]";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s: warning: no device name from app", buf, 0xCu);
      }
    }

    [v250 setupDemoDeviceMetadataFolder];
    [v250 setDemoEnrollmentFlag:@"enrollmentStarted"];
    v25 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v25];

    v26 = +[MSDWorkQueueSet sharedInstance];
    demoUpdateQueue = [v26 demoUpdateQueue];
    v28 = block;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100039218;
    block[3] = &unk_10016A810;
    block[4] = v250;
    v288 = &v290;
    v283 = v246;
    v284 = v243;
    v285 = v244;
    v286 = v248;
    v287 = v247;
    v289 = &v294;
    dispatch_async(demoUpdateQueue, block);

    goto LABEL_79;
  }

  if (!strncmp(string, "DemoUpdate", 0xBuLL))
  {
    v29 = +[MSDWorkQueueSet sharedInstance];
    demoUpdateQueue2 = [v29 demoUpdateQueue];
    v28 = v280;
    v280[0] = _NSConcreteStackBlock;
    v280[1] = 3221225472;
    v280[2] = sub_100039390;
    v280[3] = &unk_10016A838;
    v281 = v16;
    v280[5] = &v290;
    v280[4] = v246;
    dispatch_async(demoUpdateQueue2, v280);

LABEL_79:
    reply = v28[4];
    goto LABEL_80;
  }

  if (!strncmp(string, "DemoMaualUpdate", 0x10uLL))
  {
    v35 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v35];

    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    canUnlockSnapshot = [v250 canUnlockSnapshot];
    *(v291 + 24) = canUnlockSnapshot;
    if (v18)
    {
      canUnlockSnapshot2 = [v245 canUnlockSnapshot];
      LOBYTE(canUnlockSnapshot) = canUnlockSnapshot2 & v291[3];
      *(v291 + 24) = canUnlockSnapshot;
    }

    xpc_dictionary_set_BOOL(reply, "Acknowledged", canUnlockSnapshot);
    xpc_connection_send_message(connection, reply);
    if (v291[3])
    {
      if (v18)
      {
        unlockSnapshot = [v245 unlockSnapshot];
        *(v291 + 24) = unlockSnapshot;
        if (!unlockSnapshot)
        {
          goto LABEL_259;
        }
      }

      unlockSnapshot2 = [v250 unlockSnapshot];
      *(v291 + 24) = unlockSnapshot2;

      goto LABEL_121;
    }

    v140 = sub_100063B64();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
    {
      sub_1000CEA54();
    }

LABEL_286:

    goto LABEL_123;
  }

  if (!strncmp(string, "DemoSnapshotRevert", 0x13uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    canRevertSnapshot = [v250 canRevertSnapshot];
    *(v291 + 24) = canRevertSnapshot;
    if (v18)
    {
      canRevertSnapshot2 = [v245 canRevertSnapshot];
      LOBYTE(canRevertSnapshot) = canRevertSnapshot2 & v291[3];
      *(v291 + 24) = canRevertSnapshot;
    }

    xpc_dictionary_set_BOOL(reply, "Acknowledged", canRevertSnapshot);
    xpc_connection_send_message(connection, reply);
    if (v291[3])
    {
      if (v18)
      {
        revertSnapshot = [v245 revertSnapshot];
        *(v291 + 24) = revertSnapshot;
        if (!revertSnapshot)
        {
          goto LABEL_259;
        }
      }

      unlockSnapshot2 = [v250 revertSnapshot];
      *(v291 + 24) = unlockSnapshot2;

      goto LABEL_121;
    }

    v140 = sub_100063B64();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
    {
      sub_1000CEA18();
    }

    goto LABEL_286;
  }

  if (!strncmp(string, "SetLastShallowRefreshTime", 0x1AuLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v47 = objc_alloc_init(NSDateFormatter);
    [v47 setDateFormat:@"dd-MM-yyyy_HH:mm:ss:SSS"];
    v48 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "LastShallowRefreshTime")];
    v49 = [v47 dateFromString:v48];

    v50 = +[MSDTargetDevice sharedInstance];
    [v50 saveLastShallowRefreshTime:v49];

    v51 = +[MSDAnalyticsEventHandler sharedInstance];
    [v51 sendLastShallowRefreshTime:v49];

    xpc_dictionary_set_BOOL(reply, "Result", 1);
    xpc_connection_send_message(connection, reply);

    goto LABEL_80;
  }

  if (!strncmp(string, "DemoSnapshotCommit", 0x13uLL))
  {
    v61 = dispatch_get_global_queue(21, 0);
    v28 = v277;
    v277[0] = _NSConcreteStackBlock;
    v277[1] = 3221225472;
    v277[2] = sub_100039474;
    v277[3] = &unk_10016A690;
    v277[4] = messageCopy;
    v278 = v250;
    v279 = connection;
    dispatch_async(v61, v277);

    goto LABEL_79;
  }

  if (!strncmp(string, "SetSEPDemoMode", 0xFuLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v62 = [v250 setSEPDemoMode:{xpc_dictionary_get_BOOL(messageCopy, "SEPDemoMode")}];
    *(v291 + 24) = v62;
    xpc_dictionary_set_BOOL(reply, "Result", v62);
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  if (!strncmp(string, "DemoPrepare", 0xCuLL))
  {
    v63 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v63];

    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    xpc_dictionary_set_BOOL(reply, "DemoPrepareAcknowledged", 1);
    if ([(MSDLocalMessageResponder *)self demoPrepareInProgress])
    {
      v64 = sub_100063A54();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Ignore second demo prepare request as it's already started.", buf, 2u);
      }

      xpc_connection_send_message(connection, reply);
      goto LABEL_123;
    }

    [(MSDLocalMessageResponder *)self setDemoPrepareInProgress:1];
    v72 = +[MSDWorkQueueSet sharedInstance];
    demoUpdateQueue3 = [v72 demoUpdateQueue];
    v269[0] = _NSConcreteStackBlock;
    v269[1] = 3221225472;
    v269[2] = sub_10003954C;
    v269[3] = &unk_10016A860;
    v270 = v250;
    v271 = connection;
    v272 = reply;
    v275 = &v290;
    v276 = &v294;
    v273 = messageCopy;
    selfCopy = self;
    reply = reply;
    dispatch_async(demoUpdateQueue3, v269);

    goto LABEL_80;
  }

  if (!strncmp(string, "Demo", 5uLL))
  {
    v68 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v68];

    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    canLockSnapshot = [v250 canLockSnapshot];
    *(v291 + 24) = canLockSnapshot;
    if (v18)
    {
      canLockSnapshot2 = [v245 canLockSnapshot];
      LOBYTE(canLockSnapshot) = canLockSnapshot2 & v291[3];
      *(v291 + 24) = canLockSnapshot;
    }

    xpc_dictionary_set_BOOL(reply, "Acknowledged", canLockSnapshot);
    xpc_connection_send_message(connection, reply);
    if (v291[3])
    {
      if (v18)
      {
        lockSnapshot = [v245 lockSnapshot];
        *(v291 + 24) = lockSnapshot;
        if (!lockSnapshot)
        {
          goto LABEL_259;
        }
      }

      unlockSnapshot2 = [v250 lockSnapshot];
      *(v291 + 24) = unlockSnapshot2;

      goto LABEL_121;
    }

    v140 = sub_100063B64();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE9DC();
    }

    goto LABEL_286;
  }

  if (!strncmp(string, "Virgin", 7uLL))
  {
    v74 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v74];

    v75 = xpc_dictionary_get_BOOL(messageCopy, "ObliterateDevice");
    v76 = xpc_dictionary_get_BOOL(messageCopy, "PreserveESim");
    v77 = xpc_dictionary_get_BOOL(messageCopy, "CleanUpForBetterTogether");
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    if (v77)
    {
      canRunCleanUpForBetterTogetherDevice = [v250 canRunCleanUpForBetterTogetherDevice];
      *(v291 + 24) = canRunCleanUpForBetterTogetherDevice;
      if (!canRunCleanUpForBetterTogetherDevice)
      {
        v84 = 0;
        goto LABEL_196;
      }

      runCleanUpForBetterTogetherDevice = [v250 runCleanUpForBetterTogetherDevice];
    }

    else
    {
      runCleanUpForBetterTogetherDevice = [v250 canUnenrollWithObliteration:v75 consultDeviceOptions:1];
    }

    v84 = runCleanUpForBetterTogetherDevice;
    *(v291 + 24) = runCleanUpForBetterTogetherDevice;
LABEL_196:
    xpc_dictionary_set_BOOL(reply, "Acknowledged", v84);
    xpc_connection_send_message(connection, reply);
    if ((v291[3] & 1) == 0)
    {
      v157 = sub_100063B64();
      sub_1000CE988(v157);
      goto LABEL_123;
    }

    if (v77)
    {
LABEL_123:

      goto LABEL_153;
    }

    if (v18)
    {
      [v245 unenrollWithObliteration:v75 callUnregister:1];
    }

    unlockSnapshot2 = [v250 unenrollWithObliteration:v75 preserveESim:v76 callUnregister:1 preserveDDLFlag:1];
    *(v291 + 24) = unlockSnapshot2;

LABEL_121:
    if (unlockSnapshot2)
    {
      goto LABEL_81;
    }

LABEL_122:
    v45 = v295;
    obj = v295[5];
    sub_1000C1424(&obj, 3727744768, @"An error has occurred.");
    objc_storeStrong(v45 + 5, obj);
    reply = +[MSDDemoUpdateStatusHub sharedInstance];
    [reply demoUpdateFailed:v295[5]];
    goto LABEL_123;
  }

  if (!strncmp(string, "GetDeviceOptions", 0x11uLL))
  {
    getDeviceOptions = [v250 getDeviceOptions];
    v81 = xpc_dictionary_create_reply(messageCopy);
    if (!v81)
    {
      v81 = xpc_dictionary_create(0, 0, 0);
    }

    v82 = xpc_dictionary_get_string(messageCopy, "SubKey");
    if (v82)
    {
      v83 = [NSString stringWithUTF8String:v82];
      reply = [getDeviceOptions objectForKey:v83];
    }

    else
    {
      reply = getDeviceOptions;
      v82 = "device_options";
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v91 = v295;
      v268 = v295[5];
      v92 = [NSJSONSerialization dataWithJSONObject:reply options:0 error:&v268];
      objc_storeStrong(v91 + 5, v268);
      if (v295[5])
      {
        v171 = sub_100063B64();
        if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
        {
          sub_1000CE8C8();
        }

        goto LABEL_123;
      }

      v93 = [[NSString alloc] initWithData:v92 encoding:4];

      reply = v93;
    }

    if (reply)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v180 = sub_100063B64();
          if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
          {
            sub_1000CE904();
          }

          goto LABEL_259;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v94 = reply;
        xpc_dictionary_set_string(v81, v82, [reply UTF8String]);
      }

      else
      {
        xpc_dictionary_set_BOOL(v81, v82, [reply BOOLValue]);
      }
    }

    xpc_connection_send_message(connection, v81);

    goto LABEL_80;
  }

  if (!strncmp(string, "ConfigureWiFi", 0xEuLL))
  {
    v85 = sub_100063B64();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Configuring WiFi...", buf, 2u);
    }

    v86 = xpc_dictionary_create_reply(messageCopy);
    v87 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "SSID")];
    v88 = xpc_dictionary_get_string(messageCopy, "Password");
    if (v88)
    {
      reply = [NSString stringWithUTF8String:v88];
    }

    else
    {
      reply = 0;
    }

    v109 = sub_100063B64();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v87;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "Setting up WiFi: ssid = %{public}@", buf, 0xCu);
    }

    v110 = +[MSDWiFiHelper sharedInstance];
    v111 = [v110 configureWiFi:v87 password:reply];

    if ([v250 dcotaOfflineModeDevice])
    {
      v112 = +[MSDFindMyHub sharedInstance];
      [v112 handleEnrollmentRetryUponFirstLaunch];
    }

    xpc_dictionary_set_BOOL(v86, "Result", v111);
    xpc_connection_send_message(connection, v86);

    goto LABEL_80;
  }

  if (!strncmp(string, "DisconnectAndForgetWiFi", 0x18uLL))
  {
    v89 = sub_100063B64();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Disconnecting from current WiFi and forgetting all known WiFi...", buf, 2u);
    }

    reply = xpc_dictionary_create_reply(messageCopy);
    v90 = +[MSDWiFiHelper sharedInstance];
    [v90 disassociateAndForgetWiFi];

    if ([v250 isContentFrozen])
    {
      [v250 setShouldForgetKnownNetworkUponUnlock:1];
    }

    xpc_dictionary_set_BOOL(reply, "Result", 1);
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  if (!strncmp(string, "SetLanguageAndRegion", 0x15uLL))
  {
    v95 = sub_100063B64();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Setting Device Language and Region...", buf, 2u);
    }

    v96 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v96];

    reply = xpc_dictionary_create_reply(messageCopy);
    v97 = dispatch_semaphore_create(0);
    v98 = +[MSDUIHelper sharedInstance];
    [v98 startFullScreenUIWith:@"LANGUAGE_UPDATE" allowCancel:0];

    value = 0;
    v99 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "languageIdentifier")];
    v100 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "regionCode")];
    v101 = +[MSDLanguageAndRegionManager sharedInstance];
    v265[0] = _NSConcreteStackBlock;
    v265[1] = 3221225472;
    v265[2] = sub_100039A3C;
    v265[3] = &unk_100169B48;
    v102 = v97;
    v266 = v102;
    LODWORD(v97) = [v101 setDeviceLanguage:v99 andRegion:v100 matchToSystemLanguage:1 sbRestartNeeded:&value sbRestartHandler:v265];

    xpc_dictionary_set_BOOL(reply, "Result", v97);
    xpc_connection_send_message(connection, reply);
    if (!v97)
    {
      goto LABEL_239;
    }

    if (value)
    {
      v103 = sub_100063A54();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Waiting for Springboard restart", buf, 2u);
      }

      v104 = dispatch_time(0, 70000000000);
      if (dispatch_semaphore_wait(v102, v104))
      {
        v105 = sub_100063A54();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          sub_1000CE84C();
        }
      }
    }

    if ([v250 isOfflineMode])
    {
      v106 = +[MSDWorkQueueSet sharedInstance];
      demoUpdateQueue4 = [v106 demoUpdateQueue];
      v263[0] = _NSConcreteStackBlock;
      v263[1] = 3221225472;
      v263[2] = sub_100039A44;
      v263[3] = &unk_100169B70;
      v264 = v250;
      dispatch_async(demoUpdateQueue4, v263);

      v108 = v264;
    }

    else
    {
LABEL_239:
      v108 = +[MSDUIHelper sharedInstance];
      [v108 stopFullScreenUI:0];
    }

    [(MSDLocalMessageResponder *)self setTransaction:0];
    goto LABEL_80;
  }

  if (!strncmp(string, "SetLanguageAndRegionWithoutSystemLanguageMatching", 0x32uLL))
  {
    v113 = sub_100063B64();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Setting Device Language and Region without matching to the closest system language...", buf, 2u);
    }

    reply = xpc_dictionary_create_reply(messageCopy);
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      v114 = sub_100063A54();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE7CC();
      }

      xpc_dictionary_set_BOOL(reply, "Result", 0);
      xpc_connection_send_message(connection, reply);
    }

    v115 = os_transaction_create();
    [(MSDLocalMessageResponder *)self setTransaction:v115];

    v116 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "languageIdentifier")];
    v117 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "regionCode")];
    v118 = +[MSDLanguageAndRegionManager sharedInstance];
    v119 = [v118 setDeviceLanguage:v116 andRegion:v117 matchToSystemLanguage:0 sbRestartNeeded:0 sbRestartHandler:0];

    xpc_dictionary_set_BOOL(reply, "Result", v119);
    xpc_connection_send_message(connection, reply);
    [(MSDLocalMessageResponder *)self setTransaction:0];

    goto LABEL_80;
  }

  if (!strncmp(string, "GetLanguageAndRegion", 0x15uLL))
  {
    v120 = sub_100063B64();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Getting Device Language and Region...", buf, 2u);
    }

    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v121 = +[MSDLanguageAndRegionManager sharedInstance];
    getCurrentDeviceLanguage = [v121 getCurrentDeviceLanguage];

    if (!getCurrentDeviceLanguage)
    {
      v184 = sub_100063A54();
      sub_1000CE778(v184);
      goto LABEL_259;
    }

    v123 = +[MSDLanguageAndRegionManager sharedInstance];
    getCurrentDeviceRegion = [v123 getCurrentDeviceRegion];

    if (!getCurrentDeviceRegion)
    {
      v185 = sub_100063A54();
      sub_1000CE6FC(v185, 0, getCurrentDeviceLanguage);
      goto LABEL_259;
    }

    v125 = getCurrentDeviceLanguage;
    xpc_dictionary_set_string(reply, "languageIdentifier", [getCurrentDeviceLanguage UTF8String]);
    v126 = getCurrentDeviceRegion;
    xpc_dictionary_set_string(reply, "regionCode", [getCurrentDeviceRegion UTF8String]);
    xpc_connection_send_message(connection, reply);

    goto LABEL_80;
  }

  if (!strncmp(string, "GetAppUsageSessionUUID", 0x17uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    v127 = +[MSDDeviceDataCollector sharedInstance];
    getCurrentAppUsageSessionUUID = [v127 getCurrentAppUsageSessionUUID];

    if (getCurrentAppUsageSessionUUID)
    {
      xpc_dictionary_set_BOOL(reply, "Result", 1);
      v129 = getCurrentAppUsageSessionUUID;
      xpc_dictionary_set_string(reply, "SessionUUID", [getCurrentAppUsageSessionUUID UTF8String]);
    }

    else
    {
      xpc_dictionary_set_BOOL(reply, "Result", 0);
    }

    xpc_connection_send_message(connection, reply);

    goto LABEL_80;
  }

  if (!strncmp(string, "CollectAppUsageData", 0x14uLL))
  {
    v130 = xpc_dictionary_create_reply(messageCopy);
    v131 = xpc_dictionary_get_value(messageCopy, "StartTime");
    if (xpc_get_type(v131) == &_xpc_type_double)
    {
      v132 = xpc_dictionary_get_value(messageCopy, "EndTime");
      if (xpc_get_type(v132) == &_xpc_type_double)
      {
        reply = [NSDate dateWithTimeIntervalSince1970:xpc_double_get_value(v131)];
        v133 = [NSDate dateWithTimeIntervalSince1970:xpc_double_get_value(v132)];
        v134 = +[MSDDeviceDataCollector sharedInstance];
        [v134 collectAppUsageWithSessionStart:reply andEnd:v133];
        v135 = 1;
LABEL_263:

        xpc_dictionary_set_BOOL(v130, "Result", v135);
        xpc_connection_send_message(connection, v130);

        goto LABEL_80;
      }

      v134 = sub_100063A54();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE6C0();
      }
    }

    else
    {
      v134 = sub_100063A54();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE684();
      }

      v132 = 0;
    }

    v133 = 0;
    reply = 0;
    v135 = 0;
    goto LABEL_263;
  }

  if (!strncmp(string, "SaveBTPairingInfo", 0x12uLL))
  {
    v136 = sub_100063B64();
    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "Saving Bluetooth Pairing Info...", buf, 2u);
    }

    reply = xpc_dictionary_create_reply(messageCopy);
    if ([v250 isContentFrozen])
    {
      v137 = +[MSDBluetoothHelper sharedInstance];
      preserveBTPairingRecord = [v137 preserveBTPairingRecord];

      v139 = sub_100063A54();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        *&buf[4] = preserveBTPairingRecord;
        _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "Bluetooth pairing info result: %{public, BOOL}d", buf, 8u);
      }
    }

    else
    {
      LOBYTE(preserveBTPairingRecord) = 1;
    }

    xpc_dictionary_set_BOOL(reply, "Result", preserveBTPairingRecord);
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  if (!strncmp(string, "StartOSUpdate", 0xEuLL))
  {
    reply = objc_opt_new();
    isVerifiedDemoDevice = [v250 isVerifiedDemoDevice];
    v142 = xpc_dictionary_create_reply(messageCopy);
    if (!v142)
    {
      v142 = xpc_dictionary_create(0, 0, 0);
    }

    if (isVerifiedDemoDevice)
    {
      if (os_variant_has_internal_content())
      {
        v143 = xpc_dictionary_get_string(messageCopy, "OSVersion");
        if (v143)
        {
          v144 = [NSString stringWithUTF8String:v143];
          [reply setObject:v144 forKey:@"OSVersion"];
        }

        v145 = xpc_dictionary_get_string(messageCopy, "DemodVersion");
        if (v145)
        {
          v146 = [NSString stringWithUTF8String:v145];
          [reply setObject:v146 forKey:@"demodVersion"];
        }

        [v250 saveOSUpdateRequest:reply];
        v147 = +[MSDWorkQueueSet sharedInstance];
        demoUpdateQueue5 = [v147 demoUpdateQueue];
        v261[0] = _NSConcreteStackBlock;
        v261[1] = 3221225472;
        v261[2] = sub_100039A4C;
        v261[3] = &unk_100169B70;
        v262 = v250;
        dispatch_async(demoUpdateQueue5, v261);

        v149 = v262;
        goto LABEL_283;
      }

      sub_100063B64();
      objc_claimAutoreleasedReturnValue();
      sub_1000CE5F4();
    }

    else
    {
      sub_100063B64();
      objc_claimAutoreleasedReturnValue();
      sub_1000CE598();
    }

    v149 = *buf;
LABEL_283:

    xpc_dictionary_set_BOOL(v142, "Result", 1);
    xpc_connection_send_message(connection, v142);

    goto LABEL_80;
  }

  if (!strncmp(string, "LaunchApp", 0xAuLL))
  {
    v300 = SBSOpenApplicationOptionKeyPreventDismissalOfTransientOverlays;
    v301 = &__kCFBooleanTrue;
    reply = [NSDictionary dictionaryWithObjects:&v301 forKeys:&v300 count:1];
    if (os_variant_has_internal_content())
    {
      v150 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "BundleID")];
      [MSDAppLauncherTerminator launchApp:v150 withOptions:reply outError:0];
    }

    else
    {
      v150 = sub_100063A54();
      if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE518();
      }
    }

    v151 = xpc_dictionary_create_reply(messageCopy);
    v152 = v151;
    if (v151)
    {
      xpc_dictionary_set_BOOL(v151, "Result", 0);
      xpc_connection_send_message(connection, v152);
    }

    goto LABEL_387;
  }

  if (!strncmp(string, "DeviceCheckIn", 0xEuLL))
  {
    [(MSDLocalMessageResponder *)self _handleDeviceCheckInOp:messageCopy from:connection];
    goto LABEL_81;
  }

  if (!strncmp(string, "MarkAsNotDemo", 0xEuLL))
  {
    [(MSDLocalMessageResponder *)self _handleMarkAsNotDemo:messageCopy from:connection];
    goto LABEL_81;
  }

  if (!strncmp(string, "StoreSearch", 0xCuLL))
  {
    [(MSDLocalMessageResponder *)self _handleStoreSearchOp:messageCopy from:connection];
    goto LABEL_81;
  }

  if (!strncmp(string, "ClearSafariHistory", 0x13uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v153 = +[MSDTargetDevice sharedInstance];
    [v153 clearSafariHistory];

    xpc_dictionary_set_BOOL(reply, "Result", 1);
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  if (!strncmp(string, "ManageWallpaperSettings", 0x18uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v154 = xpc_dictionary_get_string(messageCopy, "Action");
    if (!strncmp(v154, "Stash", 6uLL))
    {
      v155 = +[MSDWallpaperManager sharedInstance];
      [v155 stashWallpaperSettingsIfNeeded];
    }

    else
    {
      if (strncmp(v154, "Restore", 8uLL))
      {
        v155 = sub_100063B64();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
        {
          sub_1000CE4A8();
        }

        v156 = 0;
        goto LABEL_329;
      }

      v155 = +[MSDWallpaperManager sharedInstance];
      [v155 restoreWallpaperSettingsIfNeeded];
    }

    v156 = 1;
LABEL_329:

    xpc_dictionary_set_BOOL(reply, "Result", v156);
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  if (!strncmp(string, "EnterOfflineMode", 0x11uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    isOfflineMode = [v250 isOfflineMode];
    if (isOfflineMode)
    {
      if (![(MSDLocalMessageResponder *)self demoPrepareInProgress])
      {
        [(MSDLocalMessageResponder *)self setDemoPrepareInProgress:1];
        v159 = +[MSDWorkQueueSet sharedInstance];
        demoUpdateQueue6 = [v159 demoUpdateQueue];
        v258[0] = _NSConcreteStackBlock;
        v258[1] = 3221225472;
        v258[2] = sub_100039AA0;
        v258[3] = &unk_10016A258;
        v259 = v250;
        selfCopy2 = self;
        dispatch_async(demoUpdateQueue6, v258);

        xpc_dictionary_set_BOOL(reply, "Acknowledged", 1);
        xpc_connection_send_message(connection, reply);

        goto LABEL_80;
      }

      sub_100063B64();
      objc_claimAutoreleasedReturnValue();
      sub_1000CE448();
    }

    else
    {
      sub_100063B64();
      objc_claimAutoreleasedReturnValue();
      sub_1000CE3EC();
    }

    xpc_dictionary_set_BOOL(reply, "Acknowledged", isOfflineMode);
    xpc_connection_send_message(connection, reply);
    goto LABEL_123;
  }

  if (!strncmp(string, "AutoEnrollmentResults", 0x16uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v161 = xpc_dictionary_get_double(messageCopy, "AutoEnrollmentTimeStamp");
    v162 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "AutoEnrollmentSelectedStoreID")];
    *buf = 0;
    data = xpc_dictionary_get_data(messageCopy, "AutoEnrollmentHelpMenuUserTapped", buf);
    v164 = [NSData alloc];
    v165 = [v164 initWithBytesNoCopy:data length:*buf freeWhenDone:0];
    v166 = objc_opt_class();
    v167 = [NSSet setWithObjects:v166, objc_opt_class(), 0];
    v257 = 0;
    v168 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v167 fromData:v165 error:&v257];
    v169 = v257;

    v170 = +[MSDFindMyHub sharedInstance];
    [v170 setAutoEnrollmentInfo:v162 withStoreId:v168 withHelpMenuRowSelection:v161];

    xpc_dictionary_set_BOOL(reply, "Result", 1);
    xpc_connection_send_message(connection, reply);

    goto LABEL_80;
  }

  if (!strncmp(string, "AutoEnrollmentAbortEvent", 0x19uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v172 = [NSError errorDomainMSDWithCode:3727744772 message:@"Auto Enrollment Abort by user choosing not a demo device"];
    v173 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "AutoEnrollmentAbortLanguageCodeInfo")];
    v174 = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "AutoEnrollmentAbortCountryCodeInfo")];
    v175 = +[MSDCellularHelper sharedInstance];
    getCellularSimInfo = [v175 getCellularSimInfo];

    v177 = +[MSDWiFiHelper sharedInstance];
    getCurrentWiFiSsid = [v177 getCurrentWiFiSsid];

    v179 = +[MSDAnalyticsEventHandler sharedInstance];
    [v179 sendAutoEnrollmentAbortEvent:v172 languageCode:v173 countryCode:v174 networkInformation:getCellularSimInfo wifiSSID:getCurrentWiFiSsid];

    xpc_dictionary_set_BOOL(reply, "Result", 1);
    xpc_connection_send_message(connection, reply);

    goto LABEL_80;
  }

  if (!strncmp(string, "SetUpPeerService", 0x11uLL))
  {
    v181 = +[MSDDemoPeerCommander sharedInstance];
    reply = [v181 createXPCEndpoint];

    v182 = xpc_dictionary_create_reply(messageCopy);
    v152 = v182;
    if (v182)
    {
      if (reply)
      {
        xpc_dictionary_set_BOOL(v182, "Result", 1);
        _endpoint = [reply _endpoint];
        xpc_dictionary_set_value(v152, "PeerServiceXPCEndpoint", _endpoint);
      }

      else
      {
        xpc_dictionary_set_BOOL(v182, "Result", 0);
      }

      xpc_connection_send_message(connection, v152);
    }

    goto LABEL_387;
  }

  if (!strncmp(string, "CloseRunningApps", 0x11uLL))
  {
    [(MSDLocalMessageResponder *)self _handleCloseRunningAppsRequest:messageCopy from:connection];
    goto LABEL_81;
  }

  if (!strncmp(string, "InitializeAppSwitcherContent", 0x1DuLL))
  {
    reply = +[MSDAppSwitcherManager sharedInstance];
    [reply initializeClearAppSwitcherStateForDemoMode];
    goto LABEL_80;
  }

  if (!strncmp(string, "RefreshDeviceSettings", 0x16uLL))
  {
    [(MSDLocalMessageResponder *)self _handleRefreshDeviceSettingsOp:messageCopy from:connection];
    goto LABEL_81;
  }

  if (!strncmp(string, "InitializeDeviceSettings", 0x19uLL))
  {
    [(MSDLocalMessageResponder *)self _handleInitializeDeviceSettingsOp:messageCopy from:connection];
    goto LABEL_81;
  }

  if (!strncmp(string, "UICheckIn", 0xAuLL))
  {
    v186 = +[MSDUIHelper sharedInstance];
    [v186 setConnection:connection];

    v187 = xpc_dictionary_create_reply(messageCopy);
    reply = v187;
    if (v187)
    {
LABEL_352:
      xpc_dictionary_set_BOOL(v187, "Acknowledged", 1);
      xpc_connection_send_message(connection, reply);
    }

LABEL_80:

    goto LABEL_81;
  }

  if (!strncmp(string, "Cancel", 7uLL))
  {
    v188 = +[MSDDemoUpdateController sharedInstance];
    [v188 cancelDemoContentUpdate];

    v187 = xpc_dictionary_create_reply(messageCopy);
    reply = v187;
    if (!v187)
    {
      goto LABEL_80;
    }

    goto LABEL_352;
  }

  if (!strncmp(string, "StoreDataBlob", 0xEuLL))
  {
    *(v21 + 24) = 0;
    if (v240 && v241)
    {
      v189 = +[MSDCache sharedInstance];
      v190 = [v189 storeDataBlob:v240 withContainerIdentifier:v241];
      *(v291 + 24) = v190;
    }

    v191 = xpc_dictionary_create_reply(messageCopy);
    reply = v191;
    if (!v191)
    {
      goto LABEL_80;
    }

LABEL_362:
    xpc_dictionary_set_BOOL(v191, "Acknowledged", *(v291 + 24));
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  if (!strncmp(string, "RetrieveSavedDataBlob", 0x16uLL))
  {
    if (v241)
    {
      v192 = +[MSDCache sharedInstance];
      reply = [v192 retrieveDataBlob:v241];
    }

    else
    {
      reply = 0;
    }

    v152 = xpc_dictionary_create_reply(messageCopy);
    if (v152)
    {
      v198 = reply;
      xpc_dictionary_set_data(v152, "SavedDataBlob", [reply bytes], [reply length]);
      xpc_connection_send_message(connection, v152);
    }

    goto LABEL_387;
  }

  if (!strncmp(string, "DeleteDataBlob", 0xFuLL))
  {
    *(v21 + 24) = 0;
    if (v241)
    {
      v193 = +[MSDCache sharedInstance];
      v194 = [v193 deleteDataBlob:v241];
      *(v291 + 24) = v194;
    }

    v191 = xpc_dictionary_create_reply(messageCopy);
    reply = v191;
    if (!v191)
    {
      goto LABEL_80;
    }

    goto LABEL_362;
  }

  if (!strncmp(string, "GetCurrentNetworkInfo", 0x16uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    if (!reply)
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v195 = xpc_dictionary_create(0, 0, 0);
    v196 = xpc_dictionary_get_array(messageCopy, "NetworkInfoKeys");
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100039AE0;
    applier[3] = &unk_10016A888;
    v197 = v195;
    v255 = v197;
    v256 = v250;
    xpc_array_apply(v196, applier);
    xpc_dictionary_set_value(reply, "Result", v197);
    xpc_connection_send_message(connection, reply);

    goto LABEL_80;
  }

  if (!strncmp(string, "IsStoreOpen", 0xCuLL))
  {
    date = xpc_dictionary_get_date(messageCopy, "EvaluateAgainstDate");
    if (date)
    {
      reply = [NSDate dateWithTimeIntervalSince1970:date];
    }

    else
    {
      reply = 0;
    }

    v202 = +[MSDTargetDevice sharedInstance];
    [v202 refreshStoreHoursManagerUsingSettingsAndTime:reply];

    v203 = +[MSDStoreHoursManager sharedInstance];
    isStoreOpenNow = [v203 isStoreOpenNow];

    v152 = xpc_dictionary_create_reply(messageCopy);
    v205 = sub_100063A54();
    if (os_log_type_enabled(v205, OS_LOG_TYPE_DEBUG))
    {
      sub_1000CE360();
    }

    if (v152)
    {
      xpc_dictionary_set_BOOL(v152, "Result", 1);
      xpc_dictionary_set_BOOL(v152, "ResultData", isStoreOpenNow);
      xpc_connection_send_message(connection, v152);
    }

LABEL_387:

    goto LABEL_80;
  }

  if (!strncmp(string, "NextStoreOpenDate", 0x12uLL))
  {
    v200 = xpc_dictionary_get_date(messageCopy, "EvaluateAgainstDate");
    if (v200)
    {
      reply = [NSDate dateWithTimeIntervalSince1970:v200];
    }

    else
    {
      reply = 0;
    }

    v215 = xpc_dictionary_create_reply(messageCopy);
    v216 = +[MSDTargetDevice sharedInstance];
    [v216 refreshStoreHoursManagerUsingSettingsAndTime:reply];

    v217 = +[MSDStoreHoursManager sharedInstance];
    nextStoreOpenDate = [v217 nextStoreOpenDate];

    if (v215)
    {
      if (nextStoreOpenDate)
      {
        v219 = sub_100063A54();
        if (os_log_type_enabled(v219, OS_LOG_TYPE_DEBUG))
        {
          sub_1000CE2E4();
        }

        xpc_dictionary_set_BOOL(v215, "Result", 1);
        [nextStoreOpenDate timeIntervalSince1970];
        xpc_dictionary_set_date(v215, "NextStoreHour", v220);
      }

      else
      {
        xpc_dictionary_set_BOOL(v215, "Result", 0);
        xpc_dictionary_set_string(v215, "ErrorMessage", "MSDStoreHoursManager returned nil value for nextStoreOpenDate");
      }

      xpc_connection_send_message(connection, v215);
    }

    goto LABEL_419;
  }

  if (!strncmp(string, "NextStoreCloseDate", 0x13uLL))
  {
    v201 = xpc_dictionary_get_date(messageCopy, "EvaluateAgainstDate");
    if (v201)
    {
      reply = [NSDate dateWithTimeIntervalSince1970:v201];
    }

    else
    {
      reply = 0;
    }

    v215 = xpc_dictionary_create_reply(messageCopy);
    v229 = +[MSDTargetDevice sharedInstance];
    [v229 refreshStoreHoursManagerUsingSettingsAndTime:reply];

    v230 = +[MSDStoreHoursManager sharedInstance];
    nextStoreOpenDate = [v230 nextStoreClosedDate];

    if (v215)
    {
      if (nextStoreOpenDate)
      {
        v231 = sub_100063A54();
        if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
        {
          sub_1000CE268();
        }

        xpc_dictionary_set_BOOL(v215, "Result", 1);
        [nextStoreOpenDate timeIntervalSince1970];
        xpc_dictionary_set_date(v215, "NextStoreHour", v232);
      }

      else
      {
        xpc_dictionary_set_BOOL(v215, "Result", 0);
        xpc_dictionary_set_string(v215, "ErrorMessage", "MSDStoreHoursManager returned nil value for nextStoreCloseDate");
      }

      xpc_connection_send_message(connection, v215);
    }

LABEL_419:

    goto LABEL_80;
  }

  if (!strncmp(string, "UpdateStoreHours", 0x11uLL))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    has_internal_content = os_variant_has_internal_content();
    v207 = has_internal_content;
    if (!has_internal_content)
    {
      v209 = sub_100063A54();
      if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE0F0();
      }

      goto LABEL_422;
    }

    v208 = xpc_dictionary_get_array(messageCopy, "RawStoreHours");
    v209 = [NSArray arrayWithXPCArray:v208];

    if (v209)
    {
      v210 = [NSDate dateWithTimeIntervalSince1970:xpc_dictionary_get_date(messageCopy, "EvaluateAgainstDate")];
      if (v210)
      {
        v211 = +[MSDTargetDevice sharedInstance];
        hubSuppliedSettings = [v211 hubSuppliedSettings];
        v213 = [hubSuppliedSettings mutableCopy];

        [v213 setObject:v209 forKey:@"StoreHours"];
        [v211 saveHubSuppliedSettings:v213];
        [v211 refreshStoreHoursManagerUsingSettingsAndTime:0];
        v214 = +[MSDStoreHoursManager sharedInstance];
        [v214 evaluateStoreStatusAgainstPointInTime:v210];

LABEL_422:
        if (reply)
        {
          xpc_dictionary_set_BOOL(reply, "Result", v207);
          xpc_connection_send_message(connection, reply);
        }

        goto LABEL_80;
      }

      sub_100063A54();
      objc_claimAutoreleasedReturnValue();
      sub_1000CE170();
    }

    else
    {
      v239 = sub_100063A54();
      sub_1000CE1D0(v239);
    }

LABEL_259:

    goto LABEL_122;
  }

  if (!strncmp(string, "preserveSecondPartyAppDataToShelter", 0x24uLL))
  {
    v221 = [v9 objectForKey:@"SourcePath"];
    v222 = sub_100063B64();
    if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v221;
      _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_DEFAULT, "Preserving second-party app data from %{public}@", buf, 0xCu);
    }

    v223 = +[MSDHelperAgent sharedInstance];
    v253 = 0;
    v224 = [v223 preserveSecondPartyAppDataToShelter:v221 withReturnErrorMsg:&v253];
    reply = v253;

    v225 = xpc_dictionary_create_reply(messageCopy);
    v226 = v225;
    if (v225)
    {
      xpc_dictionary_set_BOOL(v225, "Result", v224);
      if (reply)
      {
        v227 = v224;
      }

      else
      {
        v227 = 1;
      }

      if ((v227 & 1) == 0)
      {
        v228 = reply;
        xpc_dictionary_set_string(v226, "ErrorMsg", [reply UTF8String]);
      }

      xpc_connection_send_message(connection, v226);
    }

    goto LABEL_80;
  }

  if (!strncmp(string, "ReloadDemodsPreferencesFile", 0x1CuLL))
  {
    v233 = os_variant_has_internal_content();
    v234 = v233;
    if (v233)
    {
      v235 = +[MSDPreferencesFile sharedInstance];
      [v235 reload];
    }

    else
    {
      v235 = sub_100063A54();
      if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE070();
      }
    }

    reply = xpc_dictionary_create_reply(messageCopy);
    xpc_dictionary_set_BOOL(reply, "Result", v234);
    xpc_connection_send_message(connection, reply);
    goto LABEL_80;
  }

  if (!strncmp(string, "queryFeatureFlag", 0x11uLL))
  {
    reply = [NSString stringWithUTF8String:xpc_dictionary_get_string(messageCopy, "FeatureFlag")];
    if ([MSDHubFeatureFlags isSupportedFeatureFlag:reply])
    {
      v236 = [MSDHubFeatureFlags readBoolValueForFeatureFlag:reply];
    }

    else
    {
      v237 = sub_100063B64();
      if (os_log_type_enabled(v237, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CE000();
      }

      v236 = 0;
    }

    v238 = xpc_dictionary_create_reply(messageCopy);
    xpc_dictionary_set_BOOL(v238, "Result", v236);
    xpc_connection_send_message(connection, v238);

    goto LABEL_80;
  }

  v22 = sub_100063B64();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = string;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Unknown request: %{public}s", buf, 0xCu);
  }

  [v250 deleteOperationRequest];
LABEL_81:
  v32 = xpc_dictionary_get_string(messageCopy, "QueryDeviceInfo");
  v33 = sub_100063B64();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CEB28();
  }

  if (!v32)
  {
    goto LABEL_132;
  }

  reply = xpc_dictionary_create_reply(messageCopy);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  if (!strncmp(v32, "MSDDemoManualUpdateState", 0x19uLL))
  {
    buf[0] = 0;
    value = 0;
    [v250 manualUpdateMode:buf allowChange:&value];
    xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
    xpc_dictionary_set_BOOL(reply, "MSDDemoManualUpdateCurrentMode", buf[0]);
    xpc_dictionary_set_BOOL(reply, "MSDDemoManualUpdateAllowChange", value);
    xpc_connection_send_message(connection, reply);
    goto LABEL_131;
  }

  if (!strncmp(v32, "MSDDemoUpdateState", 0x13uLL))
  {
    buf[0] = 0;
    value = 0;
    [v246 getDemoUpdateInProgress:buf operationAllowed:&value];
    xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
    xpc_dictionary_set_BOOL(reply, "MSDDemoUpdateInProgress", buf[0]);
    xpc_dictionary_set_BOOL(reply, "MSDDemoUpdateAllowed", value);
    xpc_dictionary_set_BOOL(reply, "MSDDemoAlreadySetup", [v250 demoSetup]);
    xpc_connection_send_message(connection, reply);
    goto LABEL_131;
  }

  if (!strncmp(v32, "MSDDemoUpdateEnrolled", 0x16uLL))
  {
    if (v248)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v247)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v250 setHubHostName:v248];
            [v250 setHubPort:v247];
            xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
            enrolled = [v246 enrolled];
            v41 = "MSDDemoUpdateEnrolled";
            goto LABEL_129;
          }
        }
      }
    }

    sub_100063B64();
    objc_claimAutoreleasedReturnValue();
    sub_1000CEA90();

    goto LABEL_259;
  }

  if (strncmp(v32, "MSDDemoDeviceManaged", 0x15uLL))
  {
    if (!strncmp(v32, "MSDDemoDeviceFrozen", 0x14uLL))
    {
      xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
      enrolled = [v250 isContentFrozen];
      v41 = "MSDDemoDeviceFrozen";
    }

    else
    {
      if (!strncmp(v32, "MSDDemoDeviceInstallState", 0x1AuLL))
      {
        xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
        xpc_dictionary_set_int64(reply, "MSDDemoDeviceInstallState", [v250 mode]);
        goto LABEL_130;
      }

      if (!strncmp(v32, "MSDTypeOfDemoDevice", 0x14uLL))
      {
        xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
        xpc_dictionary_set_uint64(reply, "MSDTypeOfDemoDevice", [v250 typeOfDemoDevice]);
        goto LABEL_130;
      }

      if (!strncmp(v32, "MSDFriendlyDeviceName", 0x16uLL))
      {
        hubSuppliedSettings2 = [v250 hubSuppliedSettings];
        v66 = [hubSuppliedSettings2 objectForKey:@"DeviceName"];

        if (v66)
        {
          xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
          v67 = v66;
          xpc_dictionary_set_string(reply, "MSDFriendlyDeviceName", [v66 UTF8String]);
        }

        else
        {
          xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 0);
        }

        xpc_connection_send_message(connection, reply);

        goto LABEL_131;
      }

      if (strncmp(v32, "MSDDeviceInOfflineMode", 0x17uLL))
      {
        v34 = sub_100063B64();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Unknown query", buf, 2u);
        }

        goto LABEL_131;
      }

      xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
      enrolled = [v250 isOfflineMode];
      v41 = "MSDDeviceInOfflineMode";
    }

LABEL_129:
    xpc_dictionary_set_BOOL(reply, v41, enrolled);
LABEL_130:
    xpc_connection_send_message(connection, reply);
    goto LABEL_131;
  }

  typeOfDemoDevice = [v250 typeOfDemoDevice];
  xpc_dictionary_set_BOOL(reply, "QueryDeviceInfoResult", 1);
  xpc_dictionary_set_BOOL(reply, "MSDDemoDeviceManaged", typeOfDemoDevice == 6);
  xpc_connection_send_message(connection, reply);
LABEL_131:

LABEL_132:
  v52 = +[MSDPlatform sharedInstance];
  if ([v52 macOS])
  {
  }

  else
  {
    v53 = +[MSDPlatform sharedInstance];
    v54 = [v53 iOS];

    if (!v54)
    {
      goto LABEL_153;
    }
  }

  v55 = xpc_dictionary_get_string(messageCopy, "PricingMessage");
  v56 = sub_100063B64();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
  {
    sub_1000CEB98();
  }

  if (v55)
  {
    [(MSDLocalMessageResponder *)self setConnectionForPricing:connection];
    if (!strcmp(v55, "PricingMessageRequestUpdate"))
    {
      v58 = sub_100063B64();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "XPC - PricingRequestUpdate", buf, 2u);
      }

      [v242 receivedUpdateRequest:connection fromRequest:messageCopy];
    }

    else if (!strcmp(v55, "PricingMessageUpdateComplete"))
    {
      v59 = sub_100063B64();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "XPC - PricingUpdateComplete", buf, 2u);
      }

      [v242 receivedCompletionNotice:connection fromRequest:messageCopy];
    }

    else if (!strcmp(v55, "PricingMessageHeartBeat"))
    {
      v60 = sub_100063B64();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "XPC - PricingMessageHeartBeat", buf, 2u);
      }

      [v242 receivedHeartBeat:connection fromRequest:messageCopy];
    }

    else
    {
      v57 = sub_100063B64();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Unknow message from Pricing.", buf, 2u);
      }

      [v242 receivedOtherMessages:connection fromRequest:messageCopy];
    }
  }

LABEL_153:

  _Block_object_dispose(&v290, 8);
  _Block_object_dispose(&v294, 8);
}

- (void)sendRebootTimeoutMessageToPricing:(int)pricing
{
  connectionForPricing = [(MSDLocalMessageResponder *)self connectionForPricing];

  if (connectionForPricing)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6)
    {
      v7 = sub_100063B64();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CED60();
      }

      xpc_dictionary_set_int64(v6, "MSDRebootTimeout", pricing);
      connectionForPricing2 = [(MSDLocalMessageResponder *)self connectionForPricing];
      xpc_connection_send_message(connectionForPricing2, v6);
    }
  }
}

- (void)lostClientConnection:(id)connection
{
  connectionCopy = connection;
  connectionForPricing = [(MSDLocalMessageResponder *)self connectionForPricing];

  if (connectionForPricing == connectionCopy)
  {
    [(MSDLocalMessageResponder *)self setConnectionForPricing:0];
  }

  v5 = +[MSDUIHelper sharedInstance];
  connection = [v5 connection];

  v7 = connectionCopy;
  if (connection == connectionCopy)
  {
    v8 = +[MSDUIHelper sharedInstance];
    [v8 setConnection:0];

    v7 = connectionCopy;
  }
}

- (void)_handleDeviceCheckInOp:(id)op from:(id)from
{
  opCopy = op;
  fromCopy = from;
  v7 = +[MSDFindMyHub sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003A074;
  v10[3] = &unk_10016A8B0;
  v11 = opCopy;
  v12 = fromCopy;
  v8 = fromCopy;
  v9 = opCopy;
  [v7 checkInWithCompletion:v10];
}

- (void)_handleMarkAsNotDemo:(id)demo from:(id)from
{
  demoCopy = demo;
  fromCopy = from;
  v7 = +[MSDFindMyHub sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003A1F0;
  v10[3] = &unk_10016A8D8;
  v11 = demoCopy;
  v12 = fromCopy;
  v8 = fromCopy;
  v9 = demoCopy;
  [v7 markAsNotDemoWithCompletion:v10];
}

- (void)_handleStoreSearchOp:(id)op from:(id)from
{
  opCopy = op;
  fromCopy = from;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100039200;
  v18 = sub_100039210;
  reply = xpc_dictionary_create_reply(opCopy);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_100039200;
  v12[4] = sub_100039210;
  v7 = fromCopy;
  v13 = v7;
  v8 = [NSDictionary dictionaryWithXPCDictionary:opCopy];
  if (v8)
  {
    v9 = +[MSDFindMyHub sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003A4A4;
    v11[3] = &unk_10016A900;
    v11[4] = &v20;
    v11[5] = &v14;
    v11[6] = v12;
    [v9 searchStoreWithOptions:v8 completion:v11];
  }

  else
  {
    v10 = sub_100063A54();
    sub_1000CED9C(v10);

    xpc_dictionary_set_BOOL(v15[5], "Result", *(v21 + 24));
    xpc_connection_send_message(v7, v15[5]);
  }

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

- (void)_handleRefreshDeviceSettingsOp:(id)op from:(id)from
{
  fromCopy = from;
  reply = xpc_dictionary_create_reply(op);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  xdict = reply;
  v7 = +[MSDSettingsRefresher sharedInstance];
  [v7 restoreSavedDeviceSettings];

  xpc_dictionary_set_BOOL(xdict, "Result", 1);
  xpc_connection_send_message(fromCopy, xdict);
}

- (void)_handleInitializeDeviceSettingsOp:(id)op from:(id)from
{
  fromCopy = from;
  opCopy = op;
  v7 = xpc_dictionary_get_BOOL(opCopy, "InitializeSettingsOverwrite");
  keys = xpc_dictionary_create_reply(opCopy);

  if (!keys)
  {
    keys = xpc_dictionary_create(0, 0, 0);
  }

  v8 = +[MSDSettingsRefresher sharedInstance];
  [v8 initializeWithOverwrite:v7];

  xpc_dictionary_set_BOOL(keys, "Result", 1);
  xpc_connection_send_message(fromCopy, keys);
}

- (void)_handleCloseRunningAppsRequest:(id)request from:(id)from
{
  requestCopy = request;
  fromCopy = from;
  v7 = +[MSDAppHelper sharedInstance];
  reply = xpc_dictionary_create_reply(requestCopy);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  if (MGGetSInt32Answer() == 3)
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Resetting iPad layout", buf, 2u);
    }

    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_10003AA78;
    v31 = &unk_100169B70;
    v10 = dispatch_semaphore_create(0);
    v32 = v10;
    SBSRequestResetLayoutAttributes();
    v11 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v10, v11))
    {
      v12 = sub_100063A54();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000CEDEC();
      }
    }
  }

  v13 = xpc_dictionary_get_array(requestCopy, "ScreenSaverAppIDs");
  v14 = [NSArray arrayWithXPCArray:v13];

  v15 = sub_100063A54();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Leaving %{public}@ running", buf, 0xCu);
  }

  v16 = [v7 runningApps:0];
  v17 = [v16 mutableCopy];

  [v17 removeObjectsInArray:v14];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [MSDAppLauncherTerminator terminateApp:*(*(&v24 + 1) + 8 * v22) outError:0, v24];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v20);
  }

  v23 = +[MSDAppSwitcherManager sharedInstance];
  [v23 clearAppSwitcherForDemoMode];

  xpc_dictionary_set_BOOL(reply, "Result", 1);
  xpc_connection_send_message(fromCopy, reply);
}

- (OS_xpc_object)connectionForPricing
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionForPricing);

  return WeakRetained;
}

@end