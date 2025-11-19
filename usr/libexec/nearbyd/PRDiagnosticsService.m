@interface PRDiagnosticsService
- (BOOL)shouldAcceptNewConnection:(id)a3;
- (BOOL)validateClientEntitlements:(id)a3;
- (PRDiagnosticsService)init;
- (void)getChipInfoSync:(BOOL)a3 reply:(id)a4;
- (void)getChipPublicKey:(id)a3;
- (void)getChipType:(id)a3;
- (void)getDeepSleepState:(id)a3;
- (void)getPowerStatsWithTimeout:(unint64_t)a3 reply:(id)a4;
- (void)getPreflightInfo:(id)a3;
- (void)getRoseChipPowerState:(id)a3;
- (void)handleXPCDisconnection;
- (void)hasFailedRoseUpdate:(id)a3;
- (void)injectIsoCode:(id)a3;
- (void)prepareForRegulatoryAssistance:(id)a3;
- (void)publishBytes:(char *)a3 amount:(unint64_t)a4;
- (void)requestPowerChange:(BOOL)a3 reply:(id)a4;
- (void)sendHelloWithTimeout:(unint64_t)a3 reply:(id)a4;
- (void)setNarrowbandSarState:(int64_t)a3 reply:(id)a4;
- (void)setRegulatoryAccessoryState:(id)a3 reply:(id)a4;
- (void)setRegulatoryIsoCountry:(id)a3 reply:(id)a4;
- (void)setRegulatoryMcc:(id)a3 reply:(id)a4;
- (void)setRoseGlobalConfigParams:(id)a3 reply:(id)a4;
- (void)startStreamingProtobufDataForClientId:(id)a3 reply:(id)a4;
- (void)stopStreamingProtobufDataForClientId:(id)a3 reply:(id)a4;
- (void)triggerLogCollection:(int64_t)a3 reply:(id)a4;
@end

@implementation PRDiagnosticsService

- (PRDiagnosticsService)init
{
  v8.receiver = self;
  v8.super_class = PRDiagnosticsService;
  v2 = [(PRDiagnosticsService *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_protobufLock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    protobufClients = v3->_protobufClients;
    v3->_protobufClients = v4;

    v6 = sub_10035D02C();
    sub_10035D168(v6, v3);
  }

  return v3;
}

- (BOOL)shouldAcceptNewConnection:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_100499A14(v5);
  }

  v6 = [v4 processIdentifier];
  v7 = [(PRDiagnosticsService *)self validateClientEntitlements:v4];
  v8 = qword_1009F9820;
  if (v7)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_100499ACC(v6, v8);
    }

    v9 = [v4 valueForEntitlement:@"com.apple.private.nearbyd.protobuf-client"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [v9 BOOLValue];

      if (v10)
      {
        v11 = sub_1001B2C40();
        [v4 setRemoteObjectInterface:v11];

        v12 = sub_1001B2BA8();
        [v4 setExportedInterface:v12];
        goto LABEL_19;
      }
    }

    else
    {
    }

    if (sub_10001779C(v4))
    {
      v13 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#reg-assist, setExportedInterface,calling", buf, 2u);
      }

      v14 = sub_1001B2CDC();
      [v4 setExportedInterface:v14];

      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#reg-assist, setExportedInterface,called", buf, 2u);
      }

      goto LABEL_20;
    }

    [v4 setRemoteObjectInterface:0];
    v12 = sub_1001B2A00();
    [v4 setExportedInterface:v12];
LABEL_19:

LABEL_20:
    [v4 setExportedObject:self];
    objc_initWeak(buf, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100017818;
    v23[3] = &unk_100989FD0;
    v25 = v6;
    objc_copyWeak(&v24, buf);
    [v4 setInterruptionHandler:v23];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1000178F4;
    v20 = &unk_100989FD0;
    v22 = v6;
    objc_copyWeak(&v21, buf);
    [v4 setInvalidationHandler:&v17];
    [v4 resume];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
    goto LABEL_21;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_100499A58();
  }

LABEL_21:

  return v7;
}

- (void)getChipInfoSync:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100017AEC;
  v14[3] = &unk_100989FF8;
  v5 = a4;
  v15 = v5;
  v6 = objc_retainBlock(v14);
  v7 = sub_10035D02C();
  if (v4)
  {
    v8 = sub_10035FD28(v7, &v12);
    v10 = v13;
    v9 = v12;
    v11 = 1;
    (v6[2])(v6, v8, &v9);
  }

  else
  {
    sub_10035FD30(v7, v6);
  }
}

- (void)getPreflightInfo:(id)a3
{
  v5 = a3;
  v3 = sub_10035D02C();
  v4 = sub_10035FD18(v3);
  v5[2]();
  if (v4)
  {
  }
}

- (void)hasFailedRoseUpdate:(id)a3
{
  v5 = a3;
  v3 = sub_10035D02C();
  v4 = sub_10035FD20(v3);
  v5[2](v5, v4);
}

- (void)sendHelloWithTimeout:(unint64_t)a3 reply:(id)a4
{
  v5 = a4;
  v6 = sub_10035D02C();
  sub_10035D220(v6, a3, v9);
  if (v16)
  {
    v7 = [PRHelloResponse alloc];
    if ((v16 & 1) == 0)
    {
      sub_1000195BC();
    }

    v8 = [v7 initWithHelloResponse:v9];
    v5[2](v5, v8);
  }

  else
  {
    v5[2](v5, 0);
  }

  if (v16 == 1)
  {
    if (v15 == 1)
    {
      if (v14 < 0)
      {
        operator delete(__p);
      }

      if (v12 < 0)
      {
        operator delete(v11);
      }
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }
}

- (void)getPowerStatsWithTimeout:(unint64_t)a3 reply:(id)a4
{
  v5 = a4;
  v6 = sub_10035D02C();
  sub_10035FE70(v6, a3, v9);
  if (v10)
  {
    v7 = [PRGetPowerStatsResponse alloc];
    if ((v10 & 1) == 0)
    {
      sub_1000195BC();
    }

    v8 = [v7 initWithGetPowerStatsResponse:v9];
    v5[2](v5, v8);
  }

  else
  {
    v5[2](v5, 0);
  }
}

- (void)setRegulatoryMcc:(id)a3 reply:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = v8;
  if (v8)
  {
    v7 = +[PRGlobalDebugSettings sharedSettings];
    [v7 setObject:v8 forKey:PRDebugConfigArgMcc];

    v6 = v8;
  }

  v5[2](v5, v6 != 0);
}

- (void)setRegulatoryIsoCountry:(id)a3 reply:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = v8;
  if (v8)
  {
    v7 = +[PRGlobalDebugSettings sharedSettings];
    [v7 setObject:v8 forKey:PRDebugConfigArgIsoCountry];

    v6 = v8;
  }

  v5[2](v5, v6 != 0);
}

- (void)setRegulatoryAccessoryState:(id)a3 reply:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = v8;
  if (v8)
  {
    v7 = +[PRGlobalDebugSettings sharedSettings];
    [v7 setObject:v8 forKey:PRDebugConfigArgAccessoryState];

    v6 = v8;
  }

  v5[2](v5, v6 != 0);
}

- (void)triggerLogCollection:(int64_t)a3 reply:(id)a4
{
  v5 = a4;
  memset(&v31, 0, sizeof(v31));
  v6 = sub_1000054A8();
  sub_1000198EC(v23, v6);
  if (v30 == 1)
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if ((v30 & 1) == 0)
      {
        sub_1000195BC();
      }

      sub_100456838(v23);
      if (v33 >= 0)
      {
        v8 = v32;
      }

      else
      {
        v8 = *v32;
      }

      *buf = 136315138;
      v35 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cached Hello Response: %s", buf, 0xCu);
      if (v33 < 0)
      {
        operator delete(*v32);
      }
    }
  }

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 dictionaryRepresentation];

  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 count];
    *v32 = 67109120;
    *&v32[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "===== Current defaults (%d) =====", v32, 8u);
  }

  [v10 enumerateKeysAndObjectsUsingBlock:&stru_10098A038];
  v13 = +[NIServerFindableDeviceProxySessionManager sharedInstance];
  v14 = [v13 printableState];

  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "===== Findable Device =====", v32, 2u);
  }

  [v14 enumerateObjectsUsingBlock:&stru_10098A078];
  v16 = +[NIServerFindingSession servicePoolPrintableState];

  v17 = v16;
  v18 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "===== Finding Service =====", v32, 2u);
  }

  [v17 enumerateObjectsUsingBlock:&stru_10098A098];
  v19 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      std::string::assign(&v31, "user-triggered-fatal");
      v19 = 0;
      goto LABEL_28;
    }

    if (a3 != 4)
    {
      if (a3 == 3)
      {
        std::string::assign(&v31, "user-triggered-dump-all-existing-logs-if-crashlog");
        v19 = 2;
      }

      goto LABEL_28;
    }

    v20 = "user-triggered-dump-all-existing-logs";
LABEL_27:
    std::string::assign(&v31, v20);
    v19 = 3;
    goto LABEL_28;
  }

  if (!a3)
  {
    v20 = "sysdiagnose-triggered";
    goto LABEL_27;
  }

  if (a3 == 1)
  {
    std::string::assign(&v31, "user-triggered-non-fatal");
    v19 = 1;
  }

LABEL_28:
  v21 = sub_10035D02C();
  v22 = sub_10035FD38(v21, v19, &v31);
  v5[2](v5, v22);

  if (v30 == 1)
  {
    if (v29 == 1)
    {
      if (v28 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

- (void)setRoseGlobalConfigParams:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v10 = 0;
    v8 = sub_10002CB38(v5, &v10);
    v9 = v10;
    if ((v8 & 1) == 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_100499B44();
    }

    v7[2](v7, v8);
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (void)getRoseChipPowerState:(id)a3
{
  v3 = a3;
  v8 = 0;
  v4 = sub_10035D02C();
  if (sub_10035FE78(v4, &v8 + 1))
  {
    if (HIBYTE(v8) != 1)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = sub_10035D02C();
    if (sub_10035FE88(v5, &v8))
    {
      v6 = HIBYTE(v8) & (v8 ^ 1);
LABEL_7:
      v7 = 1;
      goto LABEL_8;
    }
  }

  v7 = 0;
  v6 = 0;
LABEL_8:
  v3[2](v3, v7, v6 & 1);
}

- (void)requestPowerChange:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v7 = a4;
  v5 = sub_10035D02C();
  v6 = sub_10035FE80(v5, v4);
  v7[2](v7, v6);
}

- (void)getChipType:(id)a3
{
  v5 = a3;
  v3 = sub_10045ED24();
  if (v3)
  {
    v4 = 2 * (v3 == 1);
  }

  else
  {
    v4 = 1;
  }

  v5[2](v5, v4);
}

- (void)getChipPublicKey:(id)a3
{
  v5 = a3;
  v3 = sub_10035D02C();
  v4 = sub_10035FE90(v3);
  v5[2]();
  if (v4)
  {
  }
}

- (void)setNarrowbandSarState:(int64_t)a3 reply:(id)a4
{
  v9 = a4;
  switch(a3)
  {
    case 3:
      v7 = 2;
      break;
    case 2:
      v7 = 1;
      break;
    case 0:
      v5 = sub_10035D02C();
      v6 = (*(*v5 + 152))(v5);
      goto LABEL_9;
    default:
      v7 = 0;
      break;
  }

  v8 = sub_10035D02C();
  v6 = (*(*v8 + 144))(v8, v7);
LABEL_9:
  v9[2](v9, v6);
}

- (void)getDeepSleepState:(id)a3
{
  v3 = a3;
  v4 = sub_10035D02C();
  v5 = sub_10035FE98(v4);
  v6 = qword_1009F9820;
  v7 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
  if ((v5 & 0x100) != 0)
  {
    if (v7)
    {
      if (v5 > 2u)
      {
        v9 = "";
      }

      else
      {
        v9 = (&off_10098A1B0)[v5 & 3];
      }

      v10 = 136315138;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#deep-slp PRDiagnosticsService getDeepSleepState %s", &v10, 0xCu);
    }

    if (v5 >= 3u)
    {
      v8 = 0;
    }

    else
    {
      v8 = (v5 & 3u) + 1;
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#deep-slp PRDiagnosticsService getDeepSleepState nullopt", &v10, 2u);
    }

    v8 = 0;
  }

  v3[2](v3, v8);
}

- (void)startStreamingProtobufDataForClientId:(id)a3 reply:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_protobufLock);
  v7 = +[NSXPCConnection currentConnection];
  [(NSMutableDictionary *)self->_protobufClients setObject:v7 forKeyedSubscript:v8];

  os_unfair_lock_unlock(&self->_protobufLock);
  v6[2](v6, 1);
}

- (void)stopStreamingProtobufDataForClientId:(id)a3 reply:(id)a4
{
  v7 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_protobufLock);
  [(NSMutableDictionary *)self->_protobufClients removeObjectForKey:v7];
  os_unfair_lock_unlock(&self->_protobufLock);
  v6[2](v6, 1);
}

- (void)prepareForRegulatoryAssistance:(id)a3
{
  v3 = a3;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#reg-assist, prepareForRegulatoryAssistance called.", v9, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  v6 = sub_10001779C(v5);

  if (v6)
  {
    v3[2](v3, 0);
  }

  else
  {
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Insufficient entitlements.";
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.Proximity.ErrorDomain" code:999 userInfo:v7];
    (v3)[2](v3, v8);
  }
}

- (void)injectIsoCode:(id)a3
{
  v3 = a3;
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#reg-assist, injectIsoCode called.", __p, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  if (sub_10001779C(v5))
  {
    if (v3)
    {
      v6 = v3;
      sub_100004A08(__p, [v3 UTF8String]);
      v7 = sub_10035D02C();
      v8 = (*(*v7 + 136))(v7, __p);
      v9 = qword_1009F9820;
      if (v8)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v13 = v3;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#reg-assist, successfully inject iso code: %@.", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_100499C2C();
      }

      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_100499CA0();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_100499BB8();
  }
}

- (BOOL)validateClientEntitlements:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.nearbyd.diagnostics"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleXPCDisconnection
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[PRDiagnosticsService] xpc disconnection", v3, 2u);
  }
}

- (void)publishBytes:(char *)a3 amount:(unint64_t)a4
{
  if (a4 >= 0x3E9)
  {
    sub_100499CE0();
  }

  os_unfair_lock_lock(&self->_protobufLock);
  v7 = [NSData dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_protobufClients;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [(NSMutableDictionary *)self->_protobufClients objectForKeyedSubscript:v12, v15];
        v14 = [v13 remoteObjectProxy];
        [v14 consumeProtobufBytes:v7];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_protobufLock);
}

@end