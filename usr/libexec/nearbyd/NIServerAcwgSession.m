@interface NIServerAcwgSession
- (BOOL)_validateLockAttributes;
- (JobConfig)_aopJobConfigWithTimeouts;
- (NIServerAcwgSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5;
- (NIServerNumberResponse)isRangingLimitExceeded;
- (RequestConstructionDebugParams)_ownerDeviceServiceRequestDebugParams:(SEL)a3;
- (duration<long)nominalCycleRate;
- (id).cxx_construct;
- (id)_configureForOwnerDevice;
- (id)_setDebugURSK:(id)a3 transactionIdentifier:(unsigned int)a4;
- (id)_setURSKTTL:(unint64_t)a3;
- (id)configure;
- (id)deleteURSKs;
- (id)disableAllServices;
- (id)lastConfiguration;
- (id)pauseWithSource:(int64_t)a3;
- (id)processBluetoothHostTimeSyncWithType:(int64_t)a3 btcClockTicks:(unint64_t)a4 eventCounter:(unint64_t)a5 monotonicTimeSec:(double)a6 response:(id *)a7;
- (id)run;
- (shared_ptr<rose::objects::AlishaSession>)_buildAlishaSession:(const void *)a3;
- (unint64_t)requiresUWBToRun;
- (void)_alishaSessionInvalidatedWithReason:(int)a3;
- (void)_alishaStateChangedFromState:(unsigned __int8)a3 toNewState:(unsigned __int8)a4;
- (void)_handleHealthChanged:(int)a3;
- (void)_handleInitiatorRangingBlockUpdate:(InitiatorRangingBlockSummary *)a3;
- (void)_handleSessionStats:(SessionStats *)a3;
- (void)_handleTimeoutEvent:(int)a3 time:(double)a4;
- (void)_sendAnalyticsOnRangingComplete:(int64_t)a3 suspendReason:(int64_t)a4;
- (void)dealloc;
- (void)didReceiveAopSFZoneUpdate:(AOPRoseSFZoneUpdate)a3;
- (void)didReceiveAopSensorFusionUpdate:(int)a3 withBtConnHandle:(unsigned __int16)a4;
- (void)invalidate;
- (void)processAcwgM1Msg:(id)a3 withSessionTriggerReason:(int64_t)a4;
- (void)processAcwgM3Msg:(id)a3;
- (void)processAcwgRangingSessionResumeRequestMsg:(unsigned int)a3 withResumeTriggerReason:(int64_t)a4;
- (void)processUpdatedLockState:(unsigned __int16)a3;
- (void)rangingServiceDidUpdateState:(int)a3 cause:(int)a4;
- (void)suspendAcwgRanging:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4;
@end

@implementation NIServerAcwgSession

- (NIServerAcwgSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A9CE4(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  v19 = objc_opt_class();
  if (v19 != objc_opt_class())
  {
    v33 = +[NSAssertionHandler currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"NIServerAcwgSession.mm" lineNumber:353 description:@"NIServerAcwgSession given invalid configuration."];
  }

  v20 = [v9 serverSessionIdentifier];
  v21 = v20 == 0;

  if (v21)
  {
    v34 = +[NSAssertionHandler currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"NIServerAcwgSession.mm" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager.serverSessionIdentifier"}];
  }

  v22 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v10;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-acwg,initWithResourcesManager. Configuration: %@", buf, 0xCu);
  }

  v35.receiver = self;
  v35.super_class = NIServerAcwgSession;
  v23 = [(NIServerBaseSession *)&v35 initWithResourcesManager:v9 configuration:v10 error:a5];
  if (v23)
  {
    v24 = [v9 clientConnectionQueue];
    v25 = *(v23 + 6);
    *(v23 + 6) = v24;

    v26 = [v10 copy];
    v27 = *(v23 + 42);
    *(v23 + 42) = v26;

    v28 = [v9 serverSessionIdentifier];
    v29 = [v28 UUIDString];
    v30 = *(v23 + 7);
    *(v23 + 7) = v29;

    dispatch_queue_set_specific(*(v23 + 6), "com.apple.nearbyd.acwg-session.queue-context-key", *(v23 + 7), 0);
    v31 = v23;
  }

  return v23;
}

- (id)lastConfiguration
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A9D5C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  configuration = self->_configuration;

  return configuration;
}

- (void)invalidate
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A9DD4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  *buf = 105;
  sub_1001FBD78(&self->_suspendReasonStack.c.__map_.__first_, buf);
  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-acwg,invalidate.", buf, 2u);
  }

  v12 = [(NIServerAcwgSession *)self disableAllServices];
  v13.receiver = self;
  v13.super_class = NIServerAcwgSession;
  [(NIServerBaseSession *)&v13 invalidate];
}

- (id)disableAllServices
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A9E4C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-acwg,disableAllServices.", buf, 2u);
  }

  v23.receiver = self;
  v23.super_class = NIServerAcwgSession;
  v12 = [(NIServerBaseSession *)&v23 disableAllServices];
  ptr = self->_acwgManager.__ptr_;
  if (ptr)
  {
    sub_1003A3558(ptr);
    cntrl = self->_acwgManager.__cntrl_;
    self->_acwgManager.__ptr_ = 0;
    self->_acwgManager.__cntrl_ = 0;
    if (cntrl)
    {
      sub_10000AD84(cntrl);
    }
  }

  p_uwbSystemListener = &self->_uwbSystemListener;
  if (self->_uwbSystemListener.__ptr_)
  {
    v16 = sub_10035D02C();
    v17 = self->_uwbSystemListener.__cntrl_;
    v21 = p_uwbSystemListener->__ptr_;
    v22 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
    }

    sub_100361200(v16, &v21);
    if (v22)
    {
      sub_10000AD84(v22);
    }

    v18 = self->_uwbSystemListener.__cntrl_;
    p_uwbSystemListener->__ptr_ = 0;
    self->_uwbSystemListener.__cntrl_ = 0;
    if (v18)
    {
      sub_10000AD84(v18);
    }
  }

  v19 = sub_10035D02C();
  sub_10035D290(v19, 2, self->_lockBtConnHandle, 0);

  return v12;
}

- (void)dealloc
{
  p_uwbSystemListener = &self->_uwbSystemListener;
  if (self->_uwbSystemListener.__ptr_)
  {
    v4 = sub_10035D02C();
    v5 = p_uwbSystemListener[1];
    v8 = *p_uwbSystemListener;
    v9 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100361200(v4, &v8);
    if (v9)
    {
      sub_10000AD84(v9);
    }

    v6 = p_uwbSystemListener[1];
    *p_uwbSystemListener = 0;
    p_uwbSystemListener[1] = 0;
    if (v6)
    {
      sub_10000AD84(v6);
    }
  }

  v7.receiver = self;
  v7.super_class = NIServerAcwgSession;
  [(NIServerAcwgSession *)&v7 dealloc];
}

- (duration<long)nominalCycleRate
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A9EC4(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 3000;
}

- (unint64_t)requiresUWBToRun
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A9F3C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return 2;
}

- (BOOL)_validateLockAttributes
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004A9FB4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [(NIAcwgConfiguration *)self->_configuration lockIdentifier];
  v12 = v11 == 0;

  if (v12)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AA068();
    }

    return 0;
  }

  else
  {
    v13 = [NSUUID alloc];
    v14 = [(NIAcwgConfiguration *)self->_configuration lockIdentifier];
    v15 = [v13 initWithUUIDString:v14];

    v16 = v15 != 0;
    if (v15)
    {
      v17 = [(NIAcwgConfiguration *)self->_configuration lockBtConnHandle];
      self->_lockBtConnHandle = v17;
      if (v17 == 0xFFFF)
      {
        v18 = [(NIAcwgConfiguration *)self->_configuration lockIdentifier];
        v19 = [v18 substringToIndex:2];

        *buf = 0;
        v20 = [NSScanner scannerWithString:v19];
        [v20 scanHexInt:buf];

        self->_lockBtConnHandle = *buf;
        v21 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#ses-acwg,lockBtConnHandle not valid... extracting it from lockIdentifier", v25, 2u);
        }
      }

      v22 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        lockBtConnHandle = self->_lockBtConnHandle;
        *buf = 67109120;
        v27 = lockBtConnHandle;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-acwg,lockBtConnHandle = 0x%04x", buf, 8u);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AA02C();
    }
  }

  return v16;
}

- (id)configure
{
  v43 = self;
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AA0A4(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  dispatch_assert_queue_V2(v43->_clientQueue);
  if (!v43->_configuration)
  {
    sub_1004AA20C();
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-acwg,configure", buf, 2u);
  }

  if ([(NIServerAcwgSession *)v43 _validateLockAttributes])
  {
    if (!v43->_alishaSystem.__ptr_)
    {
      operator new();
    }

    if (!v43->_uwbSystemListener.__ptr_)
    {
      sub_1001FC4E0();
    }

    ptr = v43->_alishaSystem.__ptr_;
    sub_100340E38(buf);
    if (*buf)
    {
      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AA194(v12, v13, v14, v15, v16, v17, v18, v19);
      }

      v44 = NSLocalizedDescriptionKey;
      v45 = @"Failed to query device capabilities.";
      v20 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v21 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v20];

      goto LABEL_28;
    }

    if (v42)
    {
      v31 = qword_1009F9820;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        if ((v42 & 1) == 0)
        {
          sub_1000195BC();
        }

        sub_10039C808(&buf[8]);
        if (v37 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *v46 = 136315138;
        v47 = p_p;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#ses-acwg,Acwg Capabilities: %s", v46, 0xCu);
        if (v37 < 0)
        {
          operator delete(__p);
        }
      }

      sub_1001FBA10(&v43->_cachedCapabilities, &buf[8]);
      if ([(NIAcwgConfiguration *)v43->_configuration configurationType]== 1)
      {
        v21 = [(NIServerAcwgSession *)v43 _configureForOwnerDevice];
LABEL_28:
        if (v42 == 1)
        {
          if (v40)
          {
            v41 = v40;
            operator delete(v40);
          }

          if (*&buf[8])
          {
            v39 = *&buf[8];
            operator delete(*&buf[8]);
          }
        }

        goto LABEL_33;
      }

      v34 = "_configuration.configurationType == _NIAcwgConfigurationTypeOwner";
      v35 = 519;
    }

    else
    {
      v34 = "response.payload.has_value()";
      v35 = 507;
    }

    __assert_rtn("[NIServerAcwgSession configure]", "NIServerAcwgSession.mm", v35, v34);
  }

  v22 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AA11C(v22, v23, v24, v25, v26, v27, v28, v29);
  }

  v48 = NSLocalizedDescriptionKey;
  v49 = @"Lock identifier nil or invalid.";
  v30 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v21 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v30];

LABEL_33:

  return v21;
}

- (id)run
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AA238(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-acwg,run owner session", buf, 2u);
  }

  ptr = self->_acwgManager.__ptr_;
  if (!ptr)
  {
    sub_1004AA318();
  }

  v13 = sub_1003A37F8(ptr);
  if (v13)
  {
    sub_1003A03C4(v13, buf);
    if (v21 >= 0)
    {
      v14 = buf;
    }

    else
    {
      v14 = *buf;
    }

    v15 = [NSString stringWithFormat:@"Failed to run NI Acwg owner session (%s)", v14];
    if (v21 < 0)
    {
      operator delete(*buf);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AA2B0();
    }

    v22 = NSLocalizedDescriptionKey;
    v23 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v16];
  }

  else
  {
    v18 = sub_10035D02C();
    sub_10035D290(v18, 1, self->_lockBtConnHandle, 0);
    v17 = 0;
  }

  return v17;
}

- (id)pauseWithSource:(int64_t)a3
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AA3B0(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = sub_100300878(a3);
    *buf = 138412290;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-acwg,pause owner session: %@", buf, 0xCu);
  }

  if (!self->_acwgManager.__ptr_)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AA45C();
    }

    goto LABEL_31;
  }

  v26 = 0;
  switch(a3)
  {
    case 1:
      v16 = 107;
      goto LABEL_18;
    case 2:
      v16 = 104;
LABEL_18:
      v26 = v16;
      break;
    case 0:
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004AA428();
      }

      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerAcwgSession.mm";
        v30 = 1024;
        v31 = 563;
        v32 = 2080;
        v33 = "[NIServerAcwgSession pauseWithSource:]";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "#ses-acwg,%s:%d: assertion failure in %s", buf, 0x1Cu);
      }

      abort();
  }

  sub_1001FBD78(&self->_suspendReasonStack.c.__map_.__first_, &v26);
  v17 = sub_1003A3CB0(self->_acwgManager.__ptr_);
  v18 = v17;
  if (!v17)
  {
LABEL_31:
    v24 = 0;
    goto LABEL_32;
  }

  sub_1003A4500(v17, buf);
  if (SBYTE3(v33) >= 0)
  {
    v19 = buf;
  }

  else
  {
    v19 = *buf;
  }

  v20 = [NSString stringWithFormat:@"Failed to stop ranging when pausing NI ACWG session (%s)", v19, v26];
  if (SBYTE3(v33) < 0)
  {
    operator delete(*buf);
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AA2B0();
  }

  v27 = NSLocalizedDescriptionKey;
  v28 = v20;
  v21 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v22 = (v18 + 103);
  if (v22 >= 4)
  {
    v23 = -5887;
  }

  else
  {
    v23 = v22 - 19703;
  }

  v24 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:v23 userInfo:v21];

LABEL_32:

  return v24;
}

- (void)processAcwgM1Msg:(id)a3 withSessionTriggerReason:(int64_t)a4
{
  v6 = a3;
  v42 = a4;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AA498(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = qword_1009F9820;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NIAcwgSessionTriggerReasonToString(v42);
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-acwg,processAcwgM1Msg:%@ triggerReason:%@", buf, 0x16u);
  }

  if (!self->_acwgManager.__ptr_)
  {
    sub_1004AA5A8();
  }

  v41.receiver = self;
  v41.super_class = NIServerAcwgSession;
  v17 = [(NIServerBaseSession *)&v41 resourcesManager];
  ptr = self->_configProvider.__ptr_;
  v19 = [v6 selectedProtocolVersion];
  if (v19 == 9 || v19 == 256)
  {
    *(ptr + 12) = v19;
    p_sessionReasonStack = &self->_sessionReasonStack;
    sub_1001FC5C4(&self->_sessionReasonStack.c.__map_.__first_, &v42);
    v21 = self->_acwgManager.__ptr_;
    if (v6)
    {
      [v6 toStruct];
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    sub_1003A3E90(v21, buf, &v37);
    if (*&buf[24])
    {
      *&v46 = *&buf[24];
      operator delete(*&buf[24]);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    v26 = v37;
    if (v37 || v40 != 1)
    {
      sub_1003A4500(v37, buf);
      if ((buf[23] & 0x80u) == 0)
      {
        v30 = buf;
      }

      else
      {
        v30 = *buf;
      }

      v27 = [NSString stringWithFormat:@"process M1 msg failed (%s)", v30];
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AA2B0();
      }

      v43 = NSLocalizedDescriptionKey;
      v44 = v27;
      v31 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v32 = (v26 + 103);
      if (v32 >= 4)
      {
        v33 = -5887;
      }

      else
      {
        v33 = v32 - 19703;
      }

      v34 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:v33 userInfo:v31];

      v35 = [v17 remote];
      [v35 didProcessAcwgM1MsgWithResponse:0 error:v34];

      size = p_sessionReasonStack->c.__size_;
      if (!size)
      {
        sub_1004AA510();
      }

      p_sessionReasonStack->c.__size_ = size - 1;
      sub_1001FC820(p_sessionReasonStack, 1);
    }

    else
    {
      v27 = [NIAcwgM2Msg fromStruct:v38, v39];
      v28 = [v17 remote];
      [v28 didProcessAcwgM1MsgWithResponse:v27 error:0];

      v29 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v27;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#ses-acwg,ACWG M1 processing succeeded and generated M2: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Protocol version 0x%04X not supported", [v6 selectedProtocolVersion]);
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AA2B0();
    }

    v48 = NSLocalizedDescriptionKey;
    v49 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v24 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19702 userInfo:v23];

    v25 = [v17 remote];
    [v25 didProcessAcwgM1MsgWithResponse:0 error:v24];
  }
}

- (void)processAcwgM3Msg:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AA640(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v34 = v4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-acwg,processAcwgM3Msg:%@", buf, 0xCu);
  }

  if (!self->_acwgManager.__ptr_)
  {
    sub_1004AA6B8();
  }

  v28.receiver = self;
  v28.super_class = NIServerAcwgSession;
  v14 = [(NIServerBaseSession *)&v28 resourcesManager];
  ptr = self->_acwgManager.__ptr_;
  *v31 = [v4 toStruct];
  *&v31[8] = v16;
  sub_1003A4088(ptr, v31, buf);
  v17 = *buf;
  if (*buf || v35 != 1)
  {
    sub_1003A4500(*buf, v31);
    if (v32 >= 0)
    {
      v21 = v31;
    }

    else
    {
      v21 = *v31;
    }

    v18 = [NSString stringWithFormat:@"process M3 failed (%s)", v21];
    if (SHIBYTE(v32) < 0)
    {
      operator delete(*v31);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AA2B0();
    }

    v29 = NSLocalizedDescriptionKey;
    v30 = v18;
    v22 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v23 = (v17 + 103);
    if (v23 >= 4)
    {
      v24 = -5887;
    }

    else
    {
      v24 = v23 - 19703;
    }

    v25 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:v24 userInfo:v22];

    v26 = [v14 remote];
    [v26 didProcessAcwgM3MsgWithResponse:0 error:v25];

    size = self->_sessionReasonStack.c.__size_;
    if (size)
    {
      self->_sessionReasonStack.c.__size_ = size - 1;
      sub_1001FC820(&self->_sessionReasonStack.c.__map_.__first_, 1);
    }
  }

  else
  {
    *v31 = *&v34[1];
    v32 = *&v34[5];
    v18 = [NIAcwgM4Msg fromStruct:v31];
    v19 = [v14 remote];
    [v19 didProcessAcwgM3MsgWithResponse:v18 error:0];

    v20 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 138412290;
      *&v31[4] = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#ses-acwg,ACWG M3 processing succeeded and generated M4: %@", v31, 0xCu);
    }
  }
}

- (void)suspendAcwgRanging:(unsigned int)a3 withSuspendTriggerReason:(int64_t)a4
{
  v28 = a4;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AA750(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = qword_1009F9820;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NIAcwgSuspendTriggerReasonToString(v28);
    *buf = 67109378;
    *&buf[4] = a3;
    *&buf[8] = 2112;
    *&buf[10] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-acwg,suspendAcwgRanging:%u triggerReason:%@", buf, 0x12u);
  }

  if (!self->_acwgManager.__ptr_)
  {
    sub_1004AA7FC();
  }

  sub_1001FBD78(&self->_suspendReasonStack.c.__map_.__first_, &v28);
  if ((v28 - 100) <= 7)
  {
    if (((1 << (v28 - 100)) & 0x8F) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
      {
        sub_1004AA7C8();
      }

      v16 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerAcwgSession.mm";
        *&buf[12] = 1024;
        *&buf[14] = 689;
        v32 = 2080;
        v33 = "[NIServerAcwgSession suspendAcwgRanging:withSuspendTriggerReason:]";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "#ses-acwg,%s:%d: assertion failure in %s", buf, 0x1Cu);
      }

      abort();
    }

    goto LABEL_14;
  }

  if ((v28 - 200) < 2)
  {
LABEL_14:
    v17 = sub_1003A3CB0(self->_acwgManager.__ptr_);
    goto LABEL_15;
  }

  v17 = -100;
LABEL_15:
  v27.receiver = self;
  v27.super_class = NIServerAcwgSession;
  v18 = [(NIServerBaseSession *)&v27 resourcesManager];
  if (v17)
  {
    sub_1003A4500(v17, buf);
    if (SBYTE3(v33) >= 0)
    {
      v19 = buf;
    }

    else
    {
      v19 = *buf;
    }

    v20 = [NSString stringWithFormat:@"Supending ACWG Ranging failed (%s)", v19];
    if (SBYTE3(v33) < 0)
    {
      operator delete(*buf);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AA2B0();
    }

    v29 = NSLocalizedDescriptionKey;
    v30 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v22 = (v17 + 103);
    if (v22 >= 4)
    {
      v23 = -5887;
    }

    else
    {
      v23 = v22 - 19703;
    }

    v24 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:v23 userInfo:v21];

    v25 = [v18 remote];
    [v25 uwbSessionDidFailWithError:v24];
  }

  else
  {
    v26 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#ses-acwg,ACWG suspend processing succeeded", buf, 2u);
    }
  }
}

- (void)processAcwgRangingSessionResumeRequestMsg:(unsigned int)a3 withResumeTriggerReason:(int64_t)a4
{
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AA894(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = qword_1009F9820;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NIAcwgSessionTriggerReasonToString(a4);
    *buf = 67109378;
    *&buf[4] = a3;
    LOWORD(v36) = 2112;
    *(&v36 + 2) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-acwg,processAcwgRangingSessionResumeRequestMsg:%u triggerReason:%@", buf, 0x12u);
  }

  if (!self->_acwgManager.__ptr_)
  {
    sub_1004AA9A4();
  }

  p_sessionReasonStack = &self->_sessionReasonStack;
  *buf = a4;
  sub_1001FC5C4(&self->_sessionReasonStack.c.__map_.__first_, buf);
  sub_1003A4168(self->_acwgManager.__ptr_, a3, buf);
  v18 = *buf;
  v32.receiver = self;
  v32.super_class = NIServerAcwgSession;
  v19 = [(NIServerBaseSession *)&v32 resourcesManager];
  if (v18 || v37 != 1)
  {
    sub_1003A4500(v18, v30);
    if (v31 >= 0)
    {
      v23 = v30;
    }

    else
    {
      v23 = *v30;
    }

    v20 = [NSString stringWithFormat:@"ACWG Resume failed (%s)", v23];
    if (v31 < 0)
    {
      operator delete(*v30);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AA2B0();
    }

    v33 = NSLocalizedDescriptionKey;
    v34 = v20;
    v24 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v25 = (v18 + 103);
    if (v25 >= 4)
    {
      v26 = -5887;
    }

    else
    {
      v26 = v25 - 19703;
    }

    v27 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:v26 userInfo:v24];

    v28 = [v19 remote];
    [v28 didProcessAcwgRangingSessionResumeRequestMsgWithResponse:0 error:v27];

    size = p_sessionReasonStack->c.__size_;
    if (!size)
    {
      sub_1004AA90C();
    }

    p_sessionReasonStack->c.__size_ = size - 1;
    sub_1001FC820(p_sessionReasonStack, 1);
  }

  else
  {
    v20 = [NIAcwgRangingSessionResumeResponseMsg fromStruct:v36];
    v21 = [v19 remote];
    [v21 didProcessAcwgRangingSessionResumeRequestMsgWithResponse:v20 error:0];

    v22 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-acwg,ACWG resume processing succeeded", v30, 2u);
    }
  }
}

- (void)processUpdatedLockState:(unsigned __int16)a3
{
  v3 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    LODWORD(v15) = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-acwg,processUpdatedLockState:0x%04x", &v14, 8u);
  }

  v6 = v3 >> 8;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 <= 1u)
    {
      if (!v3)
      {
        v8 = @"Secured";
        goto LABEL_16;
      }

      if (v3 == 1)
      {
        v8 = @"Unsecured";
        goto LABEL_16;
      }
    }

    else
    {
      switch(v3)
      {
        case 2u:
          v8 = @"Jammed";
          goto LABEL_16;
        case 0x80u:
          v8 = @"Entering Secured";
          goto LABEL_16;
        case 0x81u:
          v8 = @"Entering Unsecured";
LABEL_16:
          if (v6 > 4)
          {
            v9 = @"Unknown";
          }

          else
          {
            v9 = *(&off_10099E380 + v6);
          }

          v14 = 138412546;
          v15 = v8;
          v16 = 2112;
          v17 = v9;
          v10 = v7;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-acwg,Lock State Update: new_state = %@, operation_source = %@", &v14, 0x16u);

          goto LABEL_20;
      }
    }

    v8 = @"Unknown";
    goto LABEL_16;
  }

LABEL_20:
  if (v3 == 1 && v6 == 4)
  {
    v11 = +[NIServerUsageAnalyticsAggregator sharedInstance];
    v12 = +[NSDate now];
    [v11 recordUWBUsage:1 date:v12];
  }

  v13 = sub_10035D02C();
  sub_10035D290(v13, 3, self->_lockBtConnHandle, v3);
}

- (id)processBluetoothHostTimeSyncWithType:(int64_t)a3 btcClockTicks:(unint64_t)a4 eventCounter:(unint64_t)a5 monotonicTimeSec:(double)a6 response:(id *)a7
{
  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"Unknown";
    if (a3 == 138)
    {
      v14 = @"ConnCompltEventCount0";
    }

    if (a3 == 12)
    {
      v14 = @"LESetPHY";
    }

    v15 = v14;
    *buf = 138413058;
    v51 = v15;
    v52 = 2048;
    v53 = a4;
    v54 = 2048;
    v55 = a5;
    v56 = 2048;
    *v57 = a6;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-acwg,processBluetoothHostTimeSyncWithType got event: %@, btc clock ticks: %llu, event counter: %llu, monotonic time: %f [s]", buf, 0x2Au);
  }

  *a7 = 0;
  if (!self->_acwgManager.__ptr_)
  {
    sub_1004AAC5C();
  }

  if (a3 == 12 || a3 == 138)
  {
    if (a3 == 12)
    {
      v17 = 12;
    }

    else
    {
      v17 = 138;
    }

    v18 = sub_1000054A8();
    v19 = sub_100460AB0(v18);
    v20 = 7500 * a4;
    if (v19)
    {
      v20 = a4;
    }

    *buf = v17;
    LODWORD(v51) = 1;
    BYTE4(v51) = 0;
    BYTE2(v53) = 0;
    v55 = v20;
    LOBYTE(v56) = 1;
    *&v57[3] = a5;
    *&v57[7] = a6;
    sub_1003A4224(self->_acwgManager.__ptr_, buf, &v39);
    if (v39)
    {
      sub_1003A03C4(v39, __p);
      if (v38 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      v22 = [NSString stringWithFormat:@"Failed to process Bluetooth host time sync. %s", v21];
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AA2B0();
      }

      v48 = NSLocalizedDescriptionKey;
      v49 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v24 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19887 userInfo:v23];
    }

    else
    {
      if ((v47 & 1) == 0)
      {
        sub_1004AAB4C();
      }

      v34 = [NIBluetoothHostTimeSyncResponse alloc];
      LOWORD(v36) = v46;
      v24 = 0;
      *a7 = [(NIBluetoothHostTimeSyncResponse *)v34 initWithDeviceEventCount:v40 uwbDeviceTimeUs:v41 uwbDeviceTimeUncertainty:v42 uwbClockSkewMeasurementAvailable:v43 deviceMaxPpm:v44 success:v45 retryDelay:v36];
    }
  }

  else
  {
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AABE4(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    v58 = NSLocalizedDescriptionKey;
    v59 = @"Invalid Bluetooth Host Time Sync Event type. See the NIBluetoothHostTimeSyncType enum for valid options.";
    v33 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v24 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19887 userInfo:v33];
  }

  return v24;
}

- (NIServerNumberResponse)isRangingLimitExceeded
{
  v2 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AACF4(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = sub_10032CEB8();
  v11 = sub_10032E730(v10, 8);
  v12 = &__kCFBooleanFalse;
  if (v11)
  {
    v12 = &__kCFBooleanTrue;
  }

  v13 = v12;
  v14 = 0;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (id)deleteURSKs
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AAD6C(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  ptr = self->_acwgManager.__ptr_;
  if (!ptr)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004AADE4();
    }

    goto LABEL_15;
  }

  v12 = sub_1003A42BC(ptr);
  if (!v12)
  {
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  sub_1003A03C4(v12, __p);
  if (v19 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  v14 = [NSString stringWithFormat:@"Failed to delete keys (%s)", v13];
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004AA2B0();
  }

  v20 = NSLocalizedDescriptionKey;
  v21 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19883 userInfo:v15];

LABEL_16:

  return v16;
}

- (id)_setDebugURSK:(id)a3 transactionIdentifier:(unsigned int)a4
{
  v6 = a3;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AAE20(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  [@"com.apple.nearbyd" UTF8String];
  if (os_variant_allows_internal_security_policies())
  {
    if (v6 && [v6 length] == 32)
    {
      [v6 getBytes:v37 length:32];
      v34 = a4;
      v35 = v37[0];
      v36 = v37[1];
      v15 = sub_1003413A4(self->_alishaSystem.__ptr_, &v34);
      if (v15)
      {
        sub_1003A03C4(v15, __p);
        if (v31 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        v17 = [NSString stringWithFormat:@"Failed to set debug key (%s)", v16];
        if (v31 < 0)
        {
          operator delete(__p[0]);
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004AA2B0();
        }

        v32 = NSLocalizedDescriptionKey;
        v33 = v17;
        v18 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19886 userInfo:v18];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v20 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AAE98(v20, v21, v22, v23, v24, v25, v26, v27);
      }

      v38 = NSLocalizedDescriptionKey;
      v39 = @"Nil or invalid length URSK.";
      v28 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19886 userInfo:v28];
    }
  }

  else
  {
    v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
  }

  return v19;
}

- (id)_setURSKTTL:(unint64_t)a3
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AAF10(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  [@"com.apple.nearbyd" UTF8String];
  if (os_variant_allows_internal_security_policies())
  {
    sub_1003414A8(self->_alishaSystem.__ptr_, a3);
  }

  v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];

  return v13;
}

- (shared_ptr<rose::objects::AlishaSession>)_buildAlishaSession:(const void *)a3
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AAF88(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  sub_100004A08(&__p, [*(self + 7) UTF8String]);
  operator new();
}

- (void)_alishaSessionInvalidatedWithReason:(int)a3
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AB06C(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100342FC8(a3, v17);
    sub_1004AB0E4(v17);
  }

  [(NIServerAcwgSession *)self invalidate];
  v16.receiver = self;
  v16.super_class = NIServerAcwgSession;
  v14 = [(NIServerBaseSession *)&v16 invalidationHandler];
  v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
  (v14)[2](v14, v15);
}

- (id)_configureForOwnerDevice
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AB150(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ses-acwg,_configureForOwnerDevice", buf, 2u);
  }

  if (!self->_cachedCapabilities.__engaged_)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"NIServerAcwgSession.mm" lineNumber:1120 description:{@"Invalid parameter not satisfying: %@", @"_cachedCapabilities.has_value()"}];
  }

  v13 = self;
  if (!v13->_configProvider.__ptr_)
  {
    v17 = [(NIAcwgConfiguration *)v13->_configuration debugOptions];
    v18 = [v17 objectForKeyedSubscript:@"BypassBluetoothTimesync"];
    [v18 BOOLValue];

    sub_1001FDA6C();
  }

  if (!v13->_paramNegotiator.__ptr_)
  {
    if (self->_cachedCapabilities.__engaged_)
    {
      operator new();
    }

    sub_1000195BC();
  }

  v14 = v13;
  if (!v14->_acwgManager.__ptr_)
  {
    v15 = sub_10032CEB8();
    sub_10032E694(v15, 8, v14->_containerUniqueIdentifier, v14->_clientQueue);
  }

  return 0;
}

- (JobConfig)_aopJobConfigWithTimeouts
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AB200(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  *(&retstr->maxTimeoutRefires + 1) = -1;
  *(&retstr->btConnHandle + 1) = 0;
  retstr->optionsBitmap = 1;
  v13 = sub_100394AE8(@"AcwgTimeoutAOverrideSeconds", 0x3C);
  v14 = sub_100394AE8(@"AcwgTimeoutBOverrideSeconds", 0x3C);
  v15 = sub_100394AE8(@"AcwgTimeoutAExceptionOverrideSeconds", 0x12C);
  v16 = sub_100394AE8(@"AcwgTimeoutBExceptionOverrideSeconds", 0x12C);
  v17 = sub_100394AE8(@"AcwgTimeoutRefirePeriodOverrideSeconds", 0xF);
  result = sub_100394AE8(@"AcwgMaxTimeoutRefiresOverride", 2);
  retstr->peerDiscoveryTimeoutSeconds = v13;
  retstr->peerReacquisitionTimeoutSeconds = v13;
  retstr->trackingTimeoutSeconds = -1;
  retstr->jobTimeoutSeconds = v14;
  retstr->timeoutRefirePeriodSeconds = v17;
  retstr->maxTimeoutRefires = result;
  *(&retstr->maxTimeoutRefires + 1) = v15;
  *(&retstr->peerDiscoveryExceptionTimeoutSeconds + 1) = v16;
  *(&retstr->eventWatchdogTimeoutMilliseconds + 1) = self->_lockBtConnHandle;
  return result;
}

- (RequestConstructionDebugParams)_ownerDeviceServiceRequestDebugParams:(SEL)a3
{
  v5 = a4;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AB278(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  retstr->var3.__engaged_ = 0;
  retstr->var4.var0.__null_state_ = 0;
  retstr->var4.__engaged_ = 0;
  retstr->var11 = 0;
  *&retstr->var0 = 0;
  retstr->var3.var0.__null_state_ = 0;
  *&retstr->var5 = 0;
  retstr->var10 = 0;
  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ses-acwg,Debug params for owner device service request. Debug options: %@", &v27, 0xCu);
  }

  retstr->var0 = 0;
  v15 = [v5 objectForKeyedSubscript:@"DebugSTSIndex0"];
  if (!v15 || ([v5 objectForKeyedSubscript:@"AnchorHopKey"], v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v15, v17))
  {
    retstr->var2 = 0;
  }

  else
  {
    v18 = [v5 objectForKeyedSubscript:@"DebugSTSIndex0"];
    v19 = [v18 unsignedIntegerValue];

    v20 = [v5 objectForKeyedSubscript:@"AnchorHopKey"];
    v21 = [v20 unsignedIntegerValue];

    retstr->var2 = 1;
    retstr->var3.__engaged_ = 1;
    retstr->var3.var0.__val_ = v19;
    retstr->var4.__engaged_ = 1;
    retstr->var4.var0.__val_ = v21;
  }

  v22 = [v5 objectForKeyedSubscript:@"DisableUWBEncryption"];
  v23 = [v22 BOOLValue];

  v24 = [v5 objectForKeyedSubscript:@"DisableSecureToF"];
  v25 = [v24 BOOLValue];

  retstr->var9 = v23;
  retstr->var10 = v25;
  retstr->var11 = 8;

  return result;
}

- (void)_sendAnalyticsOnRangingComplete:(int64_t)a3 suspendReason:(int64_t)a4
{
  sessionSuspendTimestamp = self->_sessionSuspendTimestamp;
  if (!sessionSuspendTimestamp)
  {
    sub_1004AB2F0();
  }

  if (self->_sessionStartTimestamp)
  {
    [(NSDate *)sessionSuspendTimestamp timeIntervalSinceDate:?];
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    lockBtConnHandle = self->_lockBtConnHandle;
    containerUniqueIdentifier = self->_containerUniqueIdentifier;
    v13 = NIAcwgSessionTriggerReasonToString(a3);
    v14 = NIAcwgSuspendTriggerReasonToString(a4);
    *buf = 67110146;
    v18 = lockBtConnHandle;
    v19 = 2112;
    v20 = containerUniqueIdentifier;
    v21 = 2048;
    v22 = v9;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-acwg,ranging complete [0x%04x, %@] = %.1f secs [%@, %@]", buf, 0x30u);
  }

  AnalyticsSendEventLazy();
  sessionStartTimestamp = self->_sessionStartTimestamp;
  self->_sessionStartTimestamp = 0;

  v16 = self->_sessionSuspendTimestamp;
  self->_sessionSuspendTimestamp = 0;
}

- (void)_alishaStateChangedFromState:(unsigned __int8)a3 toNewState:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AB388(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  v15 = qword_1009F9820;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(v5, v35);
    v16 = v36;
    v17 = v35[0];
    sub_1003A0BC8(v4, __p);
    v18 = v35;
    if (v16 < 0)
    {
      v18 = v17;
    }

    if (v34 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    containerUniqueIdentifier = self->_containerUniqueIdentifier;
    *buf = 136315650;
    v38 = v18;
    v39 = 2080;
    v40 = v19;
    v41 = 2112;
    v42 = containerUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-acwg,State changed from %s to %s, session container ID: %@", buf, 0x20u);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    if (v36 < 0)
    {
      operator delete(v35[0]);
    }
  }

  v21 = sub_1003A2D2C(v5);
  if (!(sub_1003A2D2C(v4) & 1 | ((v21 & 1) == 0)))
  {
    size = self->_suspendReasonStack.c.__size_;
    if (size)
    {
      v23 = size - 1;
      v24 = (*(self->_suspendReasonStack.c.__map_.__begin_ + (((self->_suspendReasonStack.c.__start_ + v23) >> 6) & 0x3FFFFFFFFFFFFF8)))[(self->_suspendReasonStack.c.__start_ + v23) & 0x1FF];
      self->_suspendReasonStack.c.__size_ = v23;
      sub_1001FC820(&self->_suspendReasonStack.c.__map_.__first_, 1);
    }

    else
    {
      v24 = 106;
    }

    v25 = self->_sessionReasonStack.c.__size_;
    if (!v25)
    {
      sub_1004AB400();
    }

    v26 = v25 - 1;
    v27 = (*(self->_sessionReasonStack.c.__map_.__begin_ + (((self->_sessionReasonStack.c.__start_ + v26) >> 6) & 0x3FFFFFFFFFFFFF8)))[(self->_sessionReasonStack.c.__start_ + v26) & 0x1FF];
    self->_sessionReasonStack.c.__size_ = v26;
    sub_1001FC820(&self->_sessionReasonStack.c.__map_.__first_, 1);
    v28 = +[NSDate now];
    sessionSuspendTimestamp = self->_sessionSuspendTimestamp;
    self->_sessionSuspendTimestamp = v28;

    [(NIServerAcwgSession *)self _sendAnalyticsOnRangingComplete:v27 suspendReason:v24];
    v32.receiver = self;
    v32.super_class = NIServerAcwgSession;
    v30 = [(NIServerBaseSession *)&v32 resourcesManager];
    v31 = [v30 remote];
    [v31 didSuspendAcwgRanging:v24];
  }
}

- (void)_handleInitiatorRangingBlockUpdate:(InitiatorRangingBlockSummary *)a3
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AB498(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  ptr = self->_acwgManager.__ptr_;
  if (ptr && sub_1003A2D2C(*(*(ptr + 16) + 160)) && !a3->var5 && a3->var8 == 1)
  {
    size = self->_sessionReasonStack.c.__size_;
    if (!size)
    {
      sub_1004AB510();
    }

    v15 = (*(self->_sessionReasonStack.c.__map_.__begin_ + (((size + self->_sessionReasonStack.c.__start_ - 1) >> 6) & 0x3FFFFFFFFFFFFF8)))[(size + self->_sessionReasonStack.c.__start_ - 1) & 0x1FF];
    v16 = +[NSDate now];
    sessionStartTimestamp = self->_sessionStartTimestamp;
    self->_sessionStartTimestamp = v16;

    v20.receiver = self;
    v20.super_class = NIServerAcwgSession;
    v18 = [(NIServerBaseSession *)&v20 resourcesManager];
    v19 = [v18 remote];
    [v19 didStartAcwgRanging:v15];
  }
}

- (void)_handleSessionStats:(SessionStats *)a3
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AB5A8(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
}

- (void)_handleHealthChanged:(int)a3
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AB620(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  v13 = qword_1009F9820;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004A08(__p, off_10099E3A8[a3]);
    if (v17 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    containerUniqueIdentifier = self->_containerUniqueIdentifier;
    *buf = 136315394;
    v19 = v14;
    v20 = 2112;
    v21 = containerUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-acwg,Health changed to %s, session container ID: %@", buf, 0x16u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (void)_handleTimeoutEvent:(int)a3 time:(double)a4
{
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AB698(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  dispatch_assert_queue_V2(self->_clientQueue);
  sub_100004A08(__p, off_10099E3C0[a3]);
  v15 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v16 = __p;
    if (v34 < 0)
    {
      v16 = __p[0];
    }

    containerUniqueIdentifier = self->_containerUniqueIdentifier;
    *buf = 136315650;
    *&buf[4] = v16;
    v38 = 2048;
    *v39 = a4;
    *&v39[8] = 2112;
    *&v39[10] = containerUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#ses-acwg,Received timeout event %s at %f sec, session container ID: %@", buf, 0x20u);
  }

  if (self->_acwgManager.__ptr_)
  {
    v32.receiver = self;
    v32.super_class = NIServerAcwgSession;
    v18 = [(NIServerBaseSession *)&v32 resourcesManager];
    v19 = v18;
    v31 = 103;
    if ((a3 - 2) >= 2)
    {
      if (a3 != 4)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
        {
          sub_1004AB710(__p);
        }

        v30 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Proximity/Daemon/Services/NearbyInteraction/Session/NIServerAcwgSession.mm";
          v38 = 1024;
          *v39 = 1440;
          *&v39[4] = 2080;
          *&v39[6] = "[NIServerAcwgSession _handleTimeoutEvent:time:]";
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "#ses-acwg,%s:%d: assertion failure in %s", buf, 0x1Cu);
        }

        abort();
      }

      sub_1001FBD78(&self->_suspendReasonStack.c.__map_.__first_, &v31);
      v22 = sub_1003A3CB0(self->_acwgManager.__ptr_);
      v23 = v22;
      if (!v22)
      {
        goto LABEL_26;
      }

      sub_1003A4500(v22, buf);
      if (v39[9] >= 0)
      {
        v24 = buf;
      }

      else
      {
        v24 = *buf;
      }

      v20 = [NSString stringWithFormat:@"Supending ACWG Ranging on timeout failed (%s)", v24];
      if ((v39[9] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004AA2B0();
      }

      v35 = NSLocalizedDescriptionKey;
      v36 = v20;
      v25 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v26 = (v23 + 103);
      if (v26 >= 4)
      {
        v27 = -5887;
      }

      else
      {
        v27 = v26 - 19703;
      }

      v28 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:v27 userInfo:v25];

      v29 = [v19 remote];
      [v29 uwbSessionDidFailWithError:v28];
    }

    else
    {
      v20 = [v18 remote];
      [v20 requestAcwgRangingSessionSuspend:sub_1003A428C(self->_acwgManager.__ptr_) withSuspendTriggerReason:103];
    }

LABEL_26:
    goto LABEL_27;
  }

  v21 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#ses-acwg,No Acwg manager. Ignoring timeout event", buf, 2u);
  }

LABEL_27:
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)didReceiveAopSensorFusionUpdate:(int)a3 withBtConnHandle:(unsigned __int16)a4
{
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AB790(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  objc_initWeak(&location, self);
  clientQueue = self->_clientQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001FB060;
  v16[3] = &unk_10099DAE8;
  objc_copyWeak(&v17, &location);
  v19 = a4;
  v18 = a3;
  v16[4] = self;
  dispatch_async(clientQueue, v16);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)didReceiveAopSFZoneUpdate:(AOPRoseSFZoneUpdate)a3
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AB844(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  objc_initWeak(&location, self);
  clientQueue = self->_clientQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001FB398;
  v14[3] = &unk_10098B138;
  objc_copyWeak(&v15, &location);
  v16 = a3;
  v14[4] = self;
  dispatch_async(clientQueue, v14);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)rangingServiceDidUpdateState:(int)a3 cause:(int)a4
{
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    sub_1004AB8F8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  specific = dispatch_get_specific("com.apple.nearbyd.acwg-session.queue-context-key");
  containerUniqueIdentifier = self->_containerUniqueIdentifier;
  v17 = qword_1009F9820;
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (specific == containerUniqueIdentifier)
  {
    if (v18)
    {
      sub_100004A08(v30, off_10099E3F0[a3]);
      v23 = v31;
      v24 = v30[0];
      sub_100004A08(__p, off_10099E418[a4]);
      v25 = v30;
      if (v23 < 0)
      {
        v25 = v24;
      }

      if (v29 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      *buf = 136315394;
      v33 = v25;
      v34 = 2080;
      v35 = v26;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-acwg,rangingServiceDidUpdateState:%s cause:%s -> ACCEPTING Container message", buf, 0x16u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }

    if (a3 == 4)
    {
      ptr = self->_acwgManager.__ptr_;
      if (ptr)
      {
        sub_1003A43F4(ptr);
      }
    }
  }

  else
  {
    if (v18)
    {
      sub_100004A08(v30, off_10099E3F0[a3]);
      v19 = v31;
      v20 = v30[0];
      sub_100004A08(__p, off_10099E418[a4]);
      v21 = v30;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if (v29 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      *buf = 136315394;
      v33 = v21;
      v34 = 2080;
      v35 = v22;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-acwg,rangingServiceDidUpdateState:%s cause:%s -> REJECTING RangingManager message", buf, 0x16u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }
  }
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 152) = 0;
  *(self + 216) = 0;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 17) = 0u;
  return self;
}

@end