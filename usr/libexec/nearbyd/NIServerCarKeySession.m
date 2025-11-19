@interface NIServerCarKeySession
+ (JobConfig)_aopJobConfigWithTimeouts;
- (BOOL)updateConfiguration:(id)a3;
- (NIServerCarKeySession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5;
- (NIServerDataResponse)processDCKMessage:(id)a3;
- (NIServerNumberResponse)isRangingLimitExceeded;
- (RequestConstructionDebugParams)_ownerDeviceServiceRequestDebugParams:(SEL)a3;
- (Result<rose::RoseServiceRequest>)_passthroughSessionServiceRequest:(SEL)a3;
- (id).cxx_construct;
- (id)_configureForLabTestModeSession;
- (id)_configureForOwnerDevice;
- (id)_configureForPassthroughSession;
- (id)_pauseOwnerSession;
- (id)_pausePassthroughOrLabTestModeSession;
- (id)_processCarKeyEvent:(id)a3;
- (id)_runLabTestModeSession;
- (id)_runOwnerSession;
- (id)_runPassthroughSession;
- (id)_setDebugURSK:(id)a3 transactionIdentifier:(unsigned int)a4;
- (id)_setURSKTTL:(unint64_t)a3;
- (id)configure;
- (id)deleteURSKs;
- (id)disableAllServices;
- (id)pauseWithSource:(int64_t)a3;
- (id)processBluetoothHostTimeSyncWithType:(int64_t)a3 btcClockTicks:(unint64_t)a4 eventCounter:(unint64_t)a5 monotonicTimeSec:(double)a6 response:(id *)a7;
- (id)run;
- (void)_alishaSessionInvalidatedWithReason:(int)a3;
- (void)_alishaStateChangedFromState:(unsigned __int8)a3 toNewState:(unsigned __int8)a4;
- (void)_handleHealthChanged:(int)a3;
- (void)_handleInitiatorRangingBlockUpdate:(InitiatorRangingBlockSummary *)a3;
- (void)_handleSessionStats:(SessionStats *)a3;
- (void)_handleTimeoutEvent:(int)a3 time:(double)a4;
- (void)_relayDCKMessageInternal:(const void *)a3;
- (void)invalidate;
- (void)rangingServiceDidUpdateState:(int)a3 cause:(int)a4;
@end

@implementation NIServerCarKeySession

- (NIServerCarKeySession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_class();
  if (v11 != objc_opt_class())
  {
    v31 = +[NSAssertionHandler currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"NIServerCarKeySession.mm" lineNumber:346 description:@"NIServerCarKeySession given invalid configuration."];
  }

  v12 = [v9 serverSessionIdentifier];

  if (!v12)
  {
    v32 = +[NSAssertionHandler currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"NIServerCarKeySession.mm" lineNumber:347 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager.serverSessionIdentifier"}];
  }

  v13 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-carkey,initWithResourcesManager. Configuration: %@", buf, 0xCu);
  }

  v33.receiver = self;
  v33.super_class = NIServerCarKeySession;
  v14 = [(NIServerBaseSession *)&v33 initWithResourcesManager:v9 configuration:v10 error:a5];
  if (v14)
  {
    if (v9)
    {
      [v9 protobufLogger];
      v15 = *buf;
    }

    else
    {
      v15 = 0uLL;
    }

    memset(buf, 0, sizeof(buf));
    v16 = *(v14 + 7);
    *(v14 + 3) = v15;
    if (v16)
    {
      sub_10000AD84(v16);
      if (*&buf[8])
      {
        sub_10000AD84(*&buf[8]);
      }
    }

    v17 = [v9 clientConnectionQueue];
    v18 = *(v14 + 8);
    *(v14 + 8) = v17;

    v19 = [v10 copy];
    v20 = *(v14 + 53);
    *(v14 + 53) = v19;

    v21 = [v9 serverSessionIdentifier];
    v22 = [v21 UUIDString];
    v23 = *(v14 + 9);
    *(v14 + 9) = v22;

    if (v9)
    {
      [v9 powerBudgetProvider];
      v24 = *buf;
    }

    else
    {
      v24 = 0uLL;
    }

    memset(buf, 0, sizeof(buf));
    v25 = *(v14 + 52);
    *(v14 + 408) = v24;
    if (v25)
    {
      sub_10000AD84(v25);
      if (*&buf[8])
      {
        sub_10000AD84(*&buf[8]);
      }
    }

    v26 = qword_1009F9820;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = sub_1001A8770();
      v28 = @"No";
      if (v27)
      {
        v28 = @"Yes";
      }

      *buf = 138412290;
      *&buf[4] = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#ses-carkey,Power budget reporting to CPMS is supported: %@", buf, 0xCu);
    }

    v29 = v14;
  }

  return v14;
}

- (void)invalidate
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-carkey,invalidate.", buf, 2u);
  }

  v4 = [(NIServerCarKeySession *)self disableAllServices];
  v5.receiver = self;
  v5.super_class = NIServerCarKeySession;
  [(NIServerBaseSession *)&v5 invalidate];
}

- (id)disableAllServices
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-carkey,disableAllServices.", buf, 2u);
  }

  v21.receiver = self;
  v21.super_class = NIServerCarKeySession;
  v4 = [(NIServerBaseSession *)&v21 disableAllServices];
  ptr = self->_alishaManager.__ptr_;
  if (ptr)
  {
    sub_1003A5374(ptr);
    cntrl = self->_alishaManager.__cntrl_;
    self->_alishaManager.__ptr_ = 0;
    self->_alishaManager.__cntrl_ = 0;
    if (cntrl)
    {
      sub_10000AD84(cntrl);
    }
  }

  v7 = self->_standaloneAlishaSession.__ptr_;
  if (v7)
  {
    sub_10033B864(v7);
    v8 = self->_standaloneAlishaSession.__cntrl_;
    self->_standaloneAlishaSession.__ptr_ = 0;
    self->_standaloneAlishaSession.__cntrl_ = 0;
    if (v8)
    {
      sub_10000AD84(v8);
    }
  }

  v9 = self->_timeoutManager.__ptr_;
  if (v9)
  {
    sub_1002310D4(v9);
    v10 = self->_timeoutManager.__cntrl_;
    self->_timeoutManager.__ptr_ = 0;
    self->_timeoutManager.__cntrl_ = 0;
    if (v10)
    {
      sub_10000AD84(v10);
    }
  }

  v11 = self->_certLogger.__cntrl_;
  self->_certLogger.__ptr_ = 0;
  self->_certLogger.__cntrl_ = 0;
  if (v11)
  {
    sub_10000AD84(v11);
  }

  configuration = self->_configuration;
  if (configuration && [(NICarKeyConfiguration *)configuration configurationType]== 3)
  {
    v13 = sub_10035D02C();
    sub_10035D260(v13, 0);
    v14 = sub_10035D02C();
    v15 = sub_10035D268(v14);
    v16 = BYTE4(v15);
    if (v15)
    {
      v17 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-carkey,#lab-test Test mode after invalidation: unknown", buf, 2u);
      }
    }

    else
    {
      if ((v15 & 0x10000000000) == 0)
      {
        __assert_rtn("[NIServerCarKeySession disableAllServices]", "NIServerCarKeySession.mm", 404, "alishaTestModeResult.payload.has_value()");
      }

      v18 = HIDWORD(v15);
      v19 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v23 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-carkey,#lab-test Test mode after invalidation: %d", buf, 8u);
      }

      if ((v18 & 1) != 0 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B8644();
      }
    }
  }

  return v4;
}

- (id)configure
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!self->_configuration)
  {
    sub_1004B8770();
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-carkey,configure", buf, 2u);
  }

  v4 = [(NICarKeyConfiguration *)self->_configuration vehicleIdentifier];
  v5 = v4 == 0;

  if (v5)
  {
    v16 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B86F8(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v45 = NSLocalizedDescriptionKey;
    v46 = @"Vehicle identifier nil or invalid.";
    v24 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v24];
  }

  else
  {
    if (!self->_alishaSystem.__ptr_)
    {
      operator new();
    }

    sub_100340E38(buf);
    if (*buf)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B8680(v6, v7, v8, v9, v10, v11, v12, v13);
      }

      v41 = NSLocalizedDescriptionKey;
      v42 = @"Failed to query device capabilities.";
      v14 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v15 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v14];
    }

    else
    {
      if ((v40 & 1) == 0)
      {
        __assert_rtn("[NIServerCarKeySession configure]", "NIServerCarKeySession.mm", 445, "response.payload.has_value()");
      }

      v25 = qword_1009F9820;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if ((v40 & 1) == 0)
        {
          sub_1000195BC();
        }

        sub_10039C808(v37);
        if (v35 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *v43 = 136315138;
        v44 = p_p;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#ses-carkey,Alisha Capabilities: %s", v43, 0xCu);
        if (v35 < 0)
        {
          operator delete(__p);
        }
      }

      sub_1001FBA10(&self->_cachedCapabilities, v37);
      if ([(NICarKeyConfiguration *)self->_configuration configurationType]== 3)
      {
        v27 = [(NIServerCarKeySession *)self _configureForLabTestModeSession];
      }

      else
      {
        v28 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
        v29 = [v28 objectForKeyedSubscript:@"PassthroughSession"];
        v30 = [v29 BOOLValue];

        v31 = [(NICarKeyConfiguration *)self->_configuration configurationType];
        if (v31 == 2)
        {
          v32 = 1;
        }

        else
        {
          v32 = v30;
        }

        if (v32 == 1)
        {
          self->_passthroughParams.isPassthroughSession = 1;
          self->_passthroughParams.anchorSimulation = v31 == 2;
          v27 = [(NIServerCarKeySession *)self _configureForPassthroughSession];
        }

        else
        {
          if ([(NICarKeyConfiguration *)self->_configuration configurationType]!= 1)
          {
            __assert_rtn("[NIServerCarKeySession configure]", "NIServerCarKeySession.mm", 471, "_configuration.configurationType == _NICarKeyConfigurationTypeOwner");
          }

          v27 = [(NIServerCarKeySession *)self _configureForOwnerDevice];
        }
      }

      v15 = v27;
    }

    if (v40 == 1)
    {
      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (v37[0])
      {
        v37[1] = v37[0];
        operator delete(v37[0]);
      }
    }
  }

  return v15;
}

- (id)run
{
  if ([(NICarKeyConfiguration *)self->_configuration configurationType]== 3)
  {
    v3 = [(NIServerCarKeySession *)self _runLabTestModeSession];
  }

  else
  {
    if (self->_passthroughParams.isPassthroughSession)
    {
      [(NIServerCarKeySession *)self _runPassthroughSession];
    }

    else
    {
      [(NIServerCarKeySession *)self _runOwnerSession];
    }
    v3 = ;
  }

  return v3;
}

- (id)pauseWithSource:(int64_t)a3
{
  if (self->_passthroughParams.isPassthroughSession || [(NICarKeyConfiguration *)self->_configuration configurationType]== 3)
  {
    v4 = [(NIServerCarKeySession *)self _pausePassthroughOrLabTestModeSession];
  }

  else
  {
    v4 = [(NIServerCarKeySession *)self _pauseOwnerSession];
  }

  return v4;
}

- (BOOL)updateConfiguration:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  if (v4 && self->_configuration && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 copy];
    v6 = [(NICarKeyConfiguration *)self->_configuration canUpdateToConfiguration:v5];
    v7 = qword_1009F9820;
    v8 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        configuration = self->_configuration;
        v14 = 138543618;
        v15 = configuration;
        v16 = 2114;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-carkey,Update configuration\nOld: %{public}@\nNew: %{public}@", &v14, 0x16u);
      }

      objc_storeStrong(&self->_configuration, v5);
    }

    else if (v8)
    {
      v12 = self->_configuration;
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-carkey,Can't update configuration, parameters are too different\nOld: %@\nNew: %@", &v14, 0x16u);
    }
  }

  else
  {
    v10 = qword_1009F9820;
    v6 = 0;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_configuration;
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-carkey,Can't update configuration, one is nil or wrong type\nOld: %@\nNew: %@", &v14, 0x16u);
      v6 = 0;
    }
  }

  return v6;
}

- (NIServerDataResponse)processDCKMessage:(id)a3
{
  v4 = a3;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *__p = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-carkey,processDCKMessage got dckMessage: %@", buf, 0xCu);
  }

  if (!self->_alishaManager.__ptr_)
  {
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B887C(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v48 = NSLocalizedDescriptionKey;
    v49 = @"State error: No alisha manager when processing DCK message.";
    v19 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v10 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v19];

    goto LABEL_16;
  }

  v6 = [v4 length];
  if (!v4 || (v7 = v6) == 0)
  {
    v20 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B8804(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    v46 = NSLocalizedDescriptionKey;
    v47 = @"Received nil or empty DCK message.";
    v28 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v10 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19889 userInfo:v28];

LABEL_16:
    v8 = 0;
    goto LABEL_38;
  }

  sub_10003FB04(v37, v6);
  [v4 getBytes:v37[0] length:v7];
  sub_1003A5B44(self->_alishaManager.__ptr_, v37, buf);
  if (v45 == 1)
  {
    v8 = [NSData dataWithBytes:*&__p[4] length:v44 - *&__p[4]];
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 138412290;
      *&v40[4] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ses-carkey,DCK processing succeeded and requires sending a response: %@", v40, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    if (*buf)
    {
      sub_1003A03C4(*buf, v40);
      if (v41 >= 0)
      {
        v29 = v40;
      }

      else
      {
        v29 = *v40;
      }

      v30 = [NSString stringWithFormat:@"DCK processing failed. %s", v29];
      if (v41 < 0)
      {
        operator delete(*v40);
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B879C();
      }

      v31 = *buf;
      v38 = NSLocalizedDescriptionKey;
      v39 = v30;
      v32 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      if ((v31 + 1016) < 3)
      {
        v33 = -5888;
      }

      else
      {
        v33 = -5887;
      }

      v10 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:v33 userInfo:v32];
    }

    else
    {
      v34 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#ses-carkey,DCK processing succeeded and does not require sending a response.", v40, 2u);
      }

      v10 = 0;
    }

    v8 = 0;
  }

  if (v45 == 1 && *&__p[4])
  {
    v44 = *&__p[4];
    operator delete(*&__p[4]);
  }

  if (v37[0])
  {
    v37[1] = v37[0];
    operator delete(v37[0]);
  }

LABEL_38:

  v35 = v8;
  v36 = v10;
  result.var1 = v36;
  result.var0 = v35;
  return result;
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
    v61 = v15;
    v62 = 2048;
    v63 = a4;
    v64 = 2048;
    v65 = a5;
    v66 = 2048;
    *v67 = a6;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-carkey,processBluetoothHostTimeSyncWithType got event: %@, btc clock ticks: %llu, event counter: %llu, monotonic time: %f [s]", buf, 0x2Au);
  }

  *a7 = 0;
  if (self->_alishaManager.__ptr_)
  {
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
      LODWORD(v61) = 1;
      BYTE4(v61) = 0;
      BYTE2(v63) = 0;
      v65 = v20;
      LOBYTE(v66) = 1;
      *&v67[3] = a5;
      *&v67[7] = a6;
      LOBYTE(v51[0]) = 0;
      v57 = 0;
      sub_1003A6304(self->_alishaManager.__ptr_, buf, v51, &v48);
      if (v48)
      {
        sub_1003A03C4(v48, __p);
        if (v47 >= 0)
        {
          v21 = __p;
        }

        else
        {
          v21 = __p[0];
        }

        v22 = [NSString stringWithFormat:@"Failed to process Bluetooth host time sync. %s", v21];
        if (v47 < 0)
        {
          operator delete(__p[0]);
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004B879C();
        }

        v58 = NSLocalizedDescriptionKey;
        v59 = v22;
        v23 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v24 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19887 userInfo:v23];
      }

      else
      {
        if (v57 == 1)
        {
          v43 = [NIBluetoothHostTimeSyncResponse alloc];
          LOWORD(v45) = v56;
          *a7 = [(NIBluetoothHostTimeSyncResponse *)v43 initWithDeviceEventCount:v51[0] uwbDeviceTimeUs:v51[1] uwbDeviceTimeUncertainty:v52 uwbClockSkewMeasurementAvailable:v53 deviceMaxPpm:v54 success:v55 retryDelay:v45];
        }

        if (v50 == 1)
        {
          [(NIServerCarKeySession *)self _relayDCKMessageInternal:v49];
        }

        v24 = 0;
      }

      if (v50 == 1 && v49[0])
      {
        v49[1] = v49[0];
        operator delete(v49[0]);
      }
    }

    else
    {
      v34 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B88F4(v34, v35, v36, v37, v38, v39, v40, v41);
      }

      v68 = NSLocalizedDescriptionKey;
      v69 = @"Invalid Bluetooth Host Time Sync Event type. See the NIBluetoothHostTimeSyncType enum for valid options.";
      v42 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v24 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19887 userInfo:v42];
    }
  }

  else
  {
    v25 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B896C(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    v70 = NSLocalizedDescriptionKey;
    v71 = @"State error: No alisha manager when processing Bluetooth Host Time Sync Event.";
    v33 = [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v24 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v33];
  }

  return v24;
}

- (NIServerNumberResponse)isRangingLimitExceeded
{
  v2 = sub_10032CEB8();
  v3 = sub_10032E730(v2, 5);
  v4 = &__kCFBooleanFalse;
  if (v3)
  {
    v4 = &__kCFBooleanTrue;
  }

  v5 = v4;
  v6 = 0;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (id)deleteURSKs
{
  ptr = self->_alishaManager.__ptr_;
  if (!ptr)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B89E4(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v21 = NSLocalizedDescriptionKey;
    v22 = @"State error: No alisha manager when deleting URSKs.";
    v5 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v7 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v5];
    goto LABEL_14;
  }

  v3 = sub_1003A6784(ptr);
  if (v3)
  {
    sub_1003A03C4(v3, __p);
    if (v18 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    v5 = [NSString stringWithFormat:@"Failed to delete keys. %s", v4];
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B879C();
    }

    v19 = NSLocalizedDescriptionKey;
    v20 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v7 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19883 userInfo:v6];

LABEL_14:
    goto LABEL_16;
  }

  v7 = 0;
LABEL_16:

  return v7;
}

- (id)_setDebugURSK:(id)a3 transactionIdentifier:(unsigned int)a4
{
  v6 = a3;
  [@"com.apple.nearbyd" UTF8String];
  if (os_variant_allows_internal_security_policies())
  {
    if (v6 && [v6 length] == 32)
    {
      [v6 getBytes:v29 length:32];
      v26 = a4;
      v27 = v29[0];
      v28 = v29[1];
      v7 = sub_1003413A4(self->_alishaSystem.__ptr_, &v26);
      if (v7)
      {
        sub_1003A03C4(v7, __p);
        if (v23 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        v9 = [NSString stringWithFormat:@"Failed to set debug key. %s", v8];
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004B879C();
        }

        v24 = NSLocalizedDescriptionKey;
        v25 = v9;
        v10 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v11 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19886 userInfo:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B8A5C(v12, v13, v14, v15, v16, v17, v18, v19);
      }

      v30 = NSLocalizedDescriptionKey;
      v31 = @"Nil or invalid length URSK.";
      v20 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v11 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19886 userInfo:v20];
    }
  }

  else
  {
    v11 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
  }

  return v11;
}

- (id)_setURSKTTL:(unint64_t)a3
{
  [@"com.apple.nearbyd" UTF8String];
  if (os_variant_allows_internal_security_policies())
  {
    sub_1003414A8(self->_alishaSystem.__ptr_, a3);
  }

  v5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];

  return v5;
}

- (id)_processCarKeyEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"CarKeyEventType"];
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B8C28();
      }

      v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19881 userInfo:0];
      goto LABEL_15;
    }

    v7 = [v6 integerValue];
    v8 = [v5 objectForKey:@"CarKeyEventReason"];
    v9 = [v8 integerValue];

    if (v7 <= 3)
    {
      switch(v7)
      {
        case 1:
          v19 = qword_1009F9820;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [(NICarKeyConfiguration *)self->_configuration vehicleIdentifier];
            *buf = 67109378;
            v44 = v9;
            LOWORD(v45) = 2112;
            *(&v45 + 2) = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-carkey,_processCarKeyEvent: vehicle unlocked (reason %d) for vehicle identifier: %@", buf, 0x12u);
          }

          ptr = self->_analyticsManager.__ptr_;
          if (ptr)
          {
            sub_1001ED478(ptr);
          }

          goto LABEL_68;
        case 2:
          v27 = qword_1009F9820;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [(NICarKeyConfiguration *)self->_configuration vehicleIdentifier];
            *buf = 67109378;
            v44 = v9;
            LOWORD(v45) = 2112;
            *(&v45 + 2) = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#ses-carkey,_processCarKeyEvent: vehicle locked (reason %d) for vehicle identifier: %@", buf, 0x12u);
          }

          v29 = self->_analyticsManager.__ptr_;
          if (v29)
          {
            sub_1001ED2A8(v29);
          }

          goto LABEL_68;
        case 3:
          v10 = qword_1009F9820;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [(NICarKeyConfiguration *)self->_configuration vehicleIdentifier];
            *buf = 67109378;
            v44 = v9;
            LOWORD(v45) = 2112;
            *(&v45 + 2) = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-carkey,_processCarKeyEvent: vehicle ready to drive (reason %d) for vehicle identifier: %@", buf, 0x12u);
          }

          v12 = self->_analyticsManager.__ptr_;
          if (v12)
          {
            sub_1001ED690(v12);
          }

          goto LABEL_68;
      }

      goto LABEL_41;
    }

    switch(v7)
    {
      case 4:
        v22 = qword_1009F9820;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(NICarKeyConfiguration *)self->_configuration vehicleIdentifier];
          *buf = 67109378;
          v44 = v9;
          LOWORD(v45) = 2112;
          *(&v45 + 2) = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#ses-carkey,_processCarKeyEvent: ranging intent sent to vehicle (reason %d) for vehicle identifier: %@", buf, 0x12u);
        }

        v24 = self->_analyticsManager.__ptr_;
        if (v24)
        {
          if (v9 == 2)
          {
            sub_1001ED0F4(v24);
          }

          else if (v9 == 1)
          {
            sub_1001ECF44(v24);
          }

          else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004B8B84();
          }
        }

        goto LABEL_68;
      case 5:
        v30 = self->_alishaManager.__ptr_;
        if (v30)
        {
          sub_1003A59B0(v30, buf);
          v16 = qword_1009F9820;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [(NICarKeyConfiguration *)self->_configuration vehicleIdentifier];
            sub_1003A03C4(*buf, __p);
            if (v38 >= 0)
            {
              v32 = __p;
            }

            else
            {
              v32 = __p[0];
            }

            *v39 = 138412546;
            v40 = v31;
            v41 = 2080;
            v42 = v32;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-carkey,_processCarKeyEvent: vehicle sent ranging terminated sub-event. Vehicle identifier: %@. Stop ranging status: %s", v39, 0x16u);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }
          }

          goto LABEL_56;
        }

        v33 = qword_1009F9820;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          v35 = [(NICarKeyConfiguration *)self->_configuration vehicleIdentifier];
          sub_1004B8B2C(v35, buf, v33);
        }

        break;
      case 6:
        v15 = self->_alishaManager.__ptr_;
        if (v15)
        {
          sub_1003A59B0(v15, buf);
          v16 = qword_1009F9820;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [(NICarKeyConfiguration *)self->_configuration vehicleIdentifier];
            sub_1003A03C4(*buf, __p);
            if (v38 >= 0)
            {
              v18 = __p;
            }

            else
            {
              v18 = __p[0];
            }

            *v39 = 138412546;
            v40 = v17;
            v41 = 2080;
            v42 = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#ses-carkey,_processCarKeyEvent: vehicle sent ranging suspension sub-event. Vehicle identifier: %@. Stop ranging status: %s", v39, 0x16u);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }
          }

LABEL_56:

          if (v46 == 1 && v45)
          {
            *(&v45 + 1) = v45;
            operator delete(v45);
          }

          goto LABEL_68;
        }

        v33 = qword_1009F9820;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          v34 = [(NICarKeyConfiguration *)self->_configuration vehicleIdentifier];
          sub_1004B8AD4(v34, buf, v33);
        }

        break;
      default:
LABEL_41:
        v25 = qword_1009F9820;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = [(NICarKeyConfiguration *)self->_configuration vehicleIdentifier];
          sub_1004B8BC0(v7, v26, buf, v25);
        }

        v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19881 userInfo:0];
LABEL_15:
        v14 = v13;
LABEL_69:

        goto LABEL_70;
    }

LABEL_68:
    v14 = 0;
    goto LABEL_69;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B8C64();
  }

  v14 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-19881 userInfo:0];
LABEL_70:

  return v14;
}

- (void)rangingServiceDidUpdateState:(int)a3 cause:(int)a4
{
  if (a3 == 4)
  {
    ptr = self->_alishaManager.__ptr_;
    if (ptr)
    {
      sub_1003A67D4(ptr);
    }
  }
}

- (void)_alishaSessionInvalidatedWithReason:(int)a3
{
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100342FC8(a3, v9);
    sub_1004B8D04(v9);
  }

  [(NIServerCarKeySession *)self invalidate];
  v8.receiver = self;
  v8.super_class = NIServerCarKeySession;
  v6 = [(NIServerBaseSession *)&v8 invalidationHandler];
  v7 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
  (v6)[2](v6, v7);
}

- (id)_configureForOwnerDevice
{
  p_cachedCapabilities = &self->_cachedCapabilities;
  if (!self->_cachedCapabilities.__engaged_)
  {
    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"NIServerCarKeySession.mm" lineNumber:902 description:{@"Invalid parameter not satisfying: %@", @"_cachedCapabilities.has_value()"}];
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-carkey,_configureForOwnerDevice", buf, 2u);
  }

  if (self->_passthroughParams.isPassthroughSession)
  {
    sub_1004B8D68();
  }

  if (self->_passthroughParams.anchorSimulation)
  {
    sub_1004B8D94();
  }

  v5 = self;
  if (!v5->_dckCoder.__ptr_)
  {
    sub_1002C86D4();
  }

  ptr = v5->_configProvider.__ptr_;
  if (!ptr)
  {
    v7 = [(NICarKeyConfiguration *)v5->_configuration debugOptions];
    v8 = [v7 objectForKeyedSubscript:@"BypassBluetoothTimesync"];
    [v8 BOOLValue];

    sub_1002C881C();
  }

  v9 = [(NICarKeyConfiguration *)v5->_configuration protocolVersion];
  if ((v9 | 0x200) == 0x300)
  {
    *(ptr + 12) = v9;
    if (!v5->_paramNegotiator.__ptr_)
    {
      if (p_cachedCapabilities->__engaged_)
      {
        operator new();
      }

      sub_1000195BC();
    }

    v10 = v5;
    if (!v10->_analyticsManager.__ptr_)
    {
      operator new();
    }

    if (!v10->_certLogger.__ptr_)
    {
      [(NICarKeyConfiguration *)v5->_configuration vehicleIdentifier];
      objc_claimAutoreleasedReturnValue();
      sub_1002C96AC();
    }

    if (!v10->_alishaManager.__ptr_)
    {
      v11 = sub_10032CEB8();
      sub_10032E694(v11, 5, v10->_containerUniqueIdentifier, v10->_clientQueue);
    }

    v12 = v10;
    if (!v12->_timeoutManager.__ptr_)
    {
      operator new();
    }

    v13 = 0;
    v14 = v12;
  }

  else
  {
    v14 = [NSString stringWithFormat:@"Protocol version 0x%04X not supported", [(NICarKeyConfiguration *)v5->_configuration protocolVersion]];
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B879C();
    }

    v18 = NSLocalizedDescriptionKey;
    v19 = v14;
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v12];
  }

  return v13;
}

- (id)_configureForPassthroughSession
{
  [@"com.apple.nearbyd" UTF8String];
  if ((os_variant_allows_internal_security_policies() & 1) == 0)
  {
    v20 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    goto LABEL_66;
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    anchorSimulation = self->_passthroughParams.anchorSimulation;
    *buf = 67109120;
    v80 = anchorSimulation;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-carkey,_configureForPassthroughSession. Anchor: %d", buf, 8u);
  }

  if (!self->_configuration)
  {
    v71 = +[NSAssertionHandler currentHandler];
    [v71 handleFailureInMethod:a2 object:self file:@"NIServerCarKeySession.mm" lineNumber:1000 description:{@"Invalid parameter not satisfying: %@", @"_configuration"}];
  }

  if (!self->_cachedCapabilities.__engaged_)
  {
    v72 = +[NSAssertionHandler currentHandler];
    [v72 handleFailureInMethod:a2 object:self file:@"NIServerCarKeySession.mm" lineNumber:1001 description:{@"Invalid parameter not satisfying: %@", @"_cachedCapabilities.has_value()"}];
  }

  v6 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
  v7 = v6 == 0;

  if (v7)
  {
    v89 = NSLocalizedDescriptionKey;
    v90 = @"Passthrough configuration must have debugOptions.";
    v21 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
    v20 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v21];

    goto LABEL_66;
  }

  v8 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
  v9 = [v8 objectForKeyedSubscript:@"BypassBluetoothTimesync"];
  self->_passthroughParams.bypassBluetoothTimesync = [v9 BOOLValue];

  bypassBluetoothTimesync = self->_passthroughParams.bypassBluetoothTimesync;
  if (self->_passthroughParams.anchorSimulation)
  {
    if (!self->_passthroughParams.bypassBluetoothTimesync)
    {
      v11 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
      v12 = [v11 objectForKeyedSubscript:@"DckTimeSyncBtEventLocalClock"];

      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v43 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004B8EB0(v43, v44, v45, v46, v47, v48, v49, v50);
        }

        v85 = NSLocalizedDescriptionKey;
        v86 = @"Anchor simulation must provide DckTimeSyncBtEventLocalClock in debug options.";
        v51 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v20 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v51];

        goto LABEL_66;
      }

      v13 = [v12 unsignedLongLongValue];
      v14 = sub_1000054A8();
      v15 = sub_100460AB0(v14);
      engaged = self->_passthroughParams.dckTimeSyncBtEvent.__engaged_;
      v17 = 7500 * v13;
      if (v15)
      {
        v17 = v13;
      }

      *&self->_passthroughParams.dckTimeSyncBtEvent.var0.__null_state_ = 0x10000008ALL;
      self->_passthroughParams.dckTimeSyncBtEvent.var0.__val_.bluetoothTicks.var0.__null_state_ = 0;
      self->_passthroughParams.dckTimeSyncBtEvent.var0.__val_.bluetoothTicks.__engaged_ = 0;
      self->_passthroughParams.dckTimeSyncBtEvent.var0.__val_.gtbTicks.var0.__val_.__rep_ = v17;
      self->_passthroughParams.dckTimeSyncBtEvent.var0.__val_.gtbTicks.__engaged_ = 1;
      self->_passthroughParams.dckTimeSyncBtEvent.var0.__val_.eventCounter = 0;
      self->_passthroughParams.dckTimeSyncBtEvent.var0.__val_.monotonicTimeSec = 0.0;
      if (!engaged)
      {
        self->_passthroughParams.dckTimeSyncBtEvent.__engaged_ = 1;
      }

      v18 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
      v19 = [v18 objectForKeyedSubscript:@"DckTimeSyncUwbDeviceTime"];

      if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v61 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004B8E38(v61, v62, v63, v64, v65, v66, v67, v68);
        }

        v83 = NSLocalizedDescriptionKey;
        v84 = @"Anchor simulation must provide DckTimeSyncUwbDeviceTime in debug options.";
        v69 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v20 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v69];

        goto LABEL_66;
      }

      self->_passthroughParams.dckTimeSyncUwbDeviceTimeUsec.var0.__val_ = [v19 unsignedLongLongValue];
      self->_passthroughParams.dckTimeSyncUwbDeviceTimeUsec.__engaged_ = 1;
    }
  }

  else if (!self->_passthroughParams.bypassBluetoothTimesync)
  {
    v34 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B8DC0(v34, v35, v36, v37, v38, v39, v40, v41);
    }

    v87 = NSLocalizedDescriptionKey;
    v88 = @"Passthrough session in mobile role must bypass BT timesync.";
    v42 = [NSDictionary dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v20 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v42];

    goto LABEL_66;
  }

  v22 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
  [(NIServerCarKeySession *)self _passthroughSessionServiceRequest:v22];

  if (v82)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1004;
  }

  if (*buf)
  {
    v24 = *buf;
  }

  else
  {
    v24 = v23;
  }

  if (*buf || (v82 & 1) == 0)
  {
    sub_1003A03C4(v24, __p);
    if (v74 >= 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = __p[0];
    }

    v31 = [NSString stringWithFormat:@"Failed to create alisha service request. %s", v30];
    if (v74 < 0)
    {
      operator delete(__p[0]);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B879C();
    }

    v77 = NSLocalizedDescriptionKey;
    v78 = v31;
    v32 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    if ((v24 + 1016) < 3)
    {
      v33 = -5888;
    }

    else
    {
      v33 = -5887;
    }

    v20 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:v33 userInfo:v32];
  }

  else
  {
    p_standaloneAlishaSession = &self->_standaloneAlishaSession;
    ptr = self->_standaloneAlishaSession.__ptr_;
    if (ptr)
    {
      sub_10033B864(ptr);
      cntrl = self->_standaloneAlishaSession.__cntrl_;
      p_standaloneAlishaSession->__ptr_ = 0;
      self->_standaloneAlishaSession.__cntrl_ = 0;
      if (cntrl)
      {
        sub_10000AD84(cntrl);
      }
    }

    if ((v82 & 1) == 0)
    {
      sub_1000195BC();
    }

    [(NIServerCarKeySession *)self _buildAlishaSession:&v81];
    v28 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v29 = self->_standaloneAlishaSession.__cntrl_;
    *p_standaloneAlishaSession = v28;
    if (v29)
    {
      sub_10000AD84(v29);
      if (__p[1])
      {
        sub_10000AD84(__p[1]);
      }

      if (p_standaloneAlishaSession->__ptr_)
      {
        goto LABEL_39;
      }
    }

    else if (v28.__ptr_)
    {
LABEL_39:
      if (!self->_certLogger.__ptr_)
      {
        [(NICarKeyConfiguration *)self->_configuration vehicleIdentifier];
        objc_claimAutoreleasedReturnValue();
        sub_1002C96AC();
      }

      v20 = 0;
      goto LABEL_66;
    }

    v52 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B8F28(v52, v53, v54, v55, v56, v57, v58, v59);
    }

    v75 = NSLocalizedDescriptionKey;
    v76 = @"Failed to create alisha standalone session.";
    v60 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v20 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v60];
  }

LABEL_66:

  return v20;
}

- (id)_configureForLabTestModeSession
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-carkey,#lab-test _configure", buf, 2u);
  }

  configuration = self->_configuration;
  if (!configuration)
  {
    v125 = +[NSAssertionHandler currentHandler];
    [v125 handleFailureInMethod:a2 object:self file:@"NIServerCarKeySession.mm" lineNumber:1087 description:{@"Invalid parameter not satisfying: %@", @"_configuration"}];

    configuration = self->_configuration;
  }

  if ([(NICarKeyConfiguration *)configuration configurationType]!= 3)
  {
    v126 = +[NSAssertionHandler currentHandler];
    [v126 handleFailureInMethod:a2 object:self file:@"NIServerCarKeySession.mm" lineNumber:1088 description:{@"Invalid parameter not satisfying: %@", @"_configuration.configurationType == _NICarKeyConfigurationTypeLabTestMode"}];
  }

  if (!self->_alishaSystem.__ptr_)
  {
    v127 = +[NSAssertionHandler currentHandler];
    [v127 handleFailureInMethod:a2 object:self file:@"NIServerCarKeySession.mm" lineNumber:1089 description:{@"Invalid parameter not satisfying: %@", @"_alishaSystem"}];
  }

  v166.receiver = self;
  v166.super_class = NIServerCarKeySession;
  v6 = [(NIServerBaseSession *)&v166 resourcesManager];
  if ([v6 entitlementGranted:7])
  {
    v7 = sub_10035D02C();
    v8 = sub_10035D268(v7);
    v9 = BYTE4(v8);
    if (v8)
    {
      v10 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B9018(v10, v11, v12, v13, v14, v15, v16, v17);
      }

      v185 = NSLocalizedDescriptionKey;
      v186 = @"Current test mode undetermined.";
      v18 = [NSDictionary dictionaryWithObjects:&v186 forKeys:&v185 count:1];
      v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v18];

      goto LABEL_17;
    }

    if ((v8 & 0x10000000000) == 0)
    {
      __assert_rtn("[NIServerCarKeySession _configureForLabTestModeSession]", "NIServerCarKeySession.mm", 1109, "alishaTestModeResult.payload.has_value()");
    }

    v30 = HIDWORD(v8);
    v31 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v170 = v9;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#ses-carkey,#lab-test current test mode: %d", buf, 8u);
    }

    if (v30)
    {
      goto LABEL_24;
    }

    ptr = self->_alishaSystem.__ptr_;
    if (sub_100341188())
    {
      v49 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B9090(v49, v50, v51, v52, v53, v54, v55, v56);
      }

      v183 = NSLocalizedDescriptionKey;
      v184 = @"Failed to delete keys.";
      v57 = [NSDictionary dictionaryWithObjects:&v184 forKeys:&v183 count:1];
      v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v57];

      goto LABEL_17;
    }

    v60 = sub_10035D02C();
    if (sub_10035D260(v60, 1))
    {
      v61 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B9108(v61, v62, v63, v64, v65, v66, v67, v68);
      }

      v181 = NSLocalizedDescriptionKey;
      v182 = @"Failed to set test mode.";
      v69 = [NSDictionary dictionaryWithObjects:&v182 forKeys:&v181 count:1];
      v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v69];

      goto LABEL_17;
    }

    v97 = sub_10035D02C();
    if ((sub_10035D268(v97) & 0x101FFFFFFFFLL) == 0x10100000000)
    {
LABEL_24:
      v32 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
      v139 = sub_1002C49C8(v32, @"AlishaProtocolVersion", 0x100);

      v33 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
      v138 = sub_1002C49C8(v33, @"UWBConfigId", 1);

      v34 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
      v137 = sub_1002C49C8(v34, @"PulseShapeCombo", 0);

      v35 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
      v136 = sub_1002C49C8(v35, @"HopConfigBitmask", 0x80);

      v36 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
      v135 = sub_1002C49C8(v36, @"AnchorHopKey", 0);

      v37 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
      v38 = sub_1002C49C8(v37, @"RFChannel", 1);

      v39 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
      v40 = sub_1002C49C8(v39, @"SyncCodeIndex", 9);

      v41 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
      v134 = sub_1002C49C8(v41, @"SessionRANMultiplier", 1);

      v42 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
      v133 = sub_1002C49C8(v42, @"ChapsPerSlot", 6);

      v43 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
      v132 = sub_1002C49C8(v43, @"SlotsPerRound", 0xC);

      v44 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
      v45 = sub_1002C49C8(v44, @"NumResponderNodes", 6);

      v46 = v40 - 9;
      if ((v40 - 9) >= 4u)
      {
        v58 = [NSString stringWithFormat:@"Invalid sync code index %d", v40];
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004B91F8();
        }

        v177 = NSLocalizedDescriptionKey;
        v178 = v58;
        v59 = [NSDictionary dictionaryWithObjects:&v178 forKeys:&v177 count:1];
        v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v59];
      }

      else
      {
        v165 = 0;
        v164 = 0;
        if (!v38)
        {
          v47 = 5;
          goto LABEL_40;
        }

        if (v38 == 1)
        {
          v47 = 9;
LABEL_40:
          v70 = sub_10035D02C();
          v71 = *(v70 + 406);
          v72 = *(v70 + 407);
          if (v72)
          {
            atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v73 = sub_1003299D8(v71, &v165, &v164, 0);
          if (v72)
          {
            sub_10000AD84(v72);
          }

          if (v73)
          {
            if (v47 == v165 || HIBYTE(v164) == 1 && v47 == v164)
            {
              v74 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
              v130 = sub_1002C49C8(v74, @"DisableUWBEncryption", 0) != 0;

              v75 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
              v129 = sub_1002C49C8(v75, @"DisableSecureToF", 0) != 0;

              v76 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
              v131 = sub_1002C49C8(v76, @"ForceAntennaSelection", 0) != 0;

              v77 = v131;
              if (v131)
              {
                v78 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
                v128 = sub_1002C49C8(v78, @"TxAntennaMask", 0);

                v79 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
                v80 = sub_1002C49C8(v79, @"RxAntennaMask", 0);

                v81 = [(NICarKeyConfiguration *)self->_configuration debugOptions];
                v82 = sub_1002C49C8(v81, @"RxSyncSearchAntennaMask", 0);

                v77 = 1;
                v84 = v129;
                v83 = v130;
                v85 = v128;
              }

              else
              {
                v82 = 0;
                v80 = 0;
                v85 = 0;
                v84 = v129;
                v83 = v130;
              }

              v153[0] = 0x1000000;
              v153[1] = 305419896;
              v154 = 1;
              v155 = v135;
              v156 = 1;
              v157 = v131;
              v158 = v85 | ((v77 & 1) << 8);
              v159 = v80 | ((v77 & 1) << 8);
              v160 = v82 | (v77 << 8);
              v161 = v83;
              v162 = v84;
              v163 = 5;
              v141 = -2023406815;
              v142 = v38;
              v143 = v46;
              v144 = v139;
              v145 = v138;
              v146 = v134;
              v147 = v133;
              v148 = v132;
              v149 = v45;
              v150 = v136;
              v151 = v137;
              v152 = 0;
              +[NIServerCarKeySession _aopJobConfigWithTimeouts];
              *&v107 = sub_10019CFAC(&v141, 102, &v140, v153, buf).n128_u64[0];
              p_standaloneAlishaSession = &self->_standaloneAlishaSession;
              v109 = self->_standaloneAlishaSession.__ptr_;
              if (v109)
              {
                sub_10033B864(v109);
                cntrl = self->_standaloneAlishaSession.__cntrl_;
                p_standaloneAlishaSession->__ptr_ = 0;
                self->_standaloneAlishaSession.__cntrl_ = 0;
                if (cntrl)
                {
                  sub_10000AD84(cntrl);
                }
              }

              [(NIServerCarKeySession *)self _buildAlishaSession:buf, v107];
              v111 = v140;
              v140 = 0;
              v112 = self->_standaloneAlishaSession.__cntrl_;
              *p_standaloneAlishaSession = v111;
              if (v112)
              {
                sub_10000AD84(v112);
                if (v140.__cntrl_)
                {
                  sub_10000AD84(v140.__cntrl_);
                }

                v113 = p_standaloneAlishaSession->__ptr_;
              }

              else
              {
                v113 = v111.__ptr_;
              }

              if (v113)
              {
                if (!self->_certLogger.__ptr_)
                {
                  [(NICarKeyConfiguration *)self->_configuration vehicleIdentifier];
                  objc_claimAutoreleasedReturnValue();
                  sub_1002C96AC();
                }

                v19 = 0;
              }

              else
              {
                v114 = qword_1009F9820;
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  sub_1004B92D8(v114, v115, v116, v117, v118, v119, v120, v121);
                }

                v167 = NSLocalizedDescriptionKey;
                v168 = @"Failed to create standalone session.";
                v122 = [NSDictionary dictionaryWithObjects:&v168 forKeys:&v167 count:1];
                v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v122];
              }
            }

            else
            {
              v123 = [NSString stringWithFormat:@"RF channel %d not allowed", v38];
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004B91F8();
              }

              v171 = NSLocalizedDescriptionKey;
              v172 = v123;
              v124 = [NSDictionary dictionaryWithObjects:&v172 forKeys:&v171 count:1];
              v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v124];
            }
          }

          else
          {
            v88 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004B9260(v88, v89, v90, v91, v92, v93, v94, v95);
            }

            v173 = NSLocalizedDescriptionKey;
            v174 = @"Could not get currently allowed RF channels";
            v96 = [NSDictionary dictionaryWithObjects:&v174 forKeys:&v173 count:1];
            v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v96];
          }

          goto LABEL_17;
        }

        v86 = [NSString stringWithFormat:@"Invalid specified RF channel %d", v38];
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004B91F8();
        }

        v175 = NSLocalizedDescriptionKey;
        v176 = v86;
        v87 = [NSDictionary dictionaryWithObjects:&v176 forKeys:&v175 count:1];
        v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v87];
      }
    }

    else
    {
      v98 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B9180(v98, v99, v100, v101, v102, v103, v104, v105);
      }

      v179 = NSLocalizedDescriptionKey;
      v180 = @"Failed to enable test mode.";
      v106 = [NSDictionary dictionaryWithObjects:&v180 forKeys:&v179 count:1];
      v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v106];
    }
  }

  else
  {
    v20 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B8FA0(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    v187 = NSLocalizedDescriptionKey;
    v188 = @"Not authorized.";
    v28 = [NSDictionary dictionaryWithObjects:&v188 forKeys:&v187 count:1];
    v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v28];
  }

LABEL_17:

  return v19;
}

- (id)_runLabTestModeSession
{
  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ses-carkey,#lab-test _run", buf, 2u);
  }

  configuration = self->_configuration;
  if (!configuration)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NIServerCarKeySession.mm" lineNumber:1263 description:{@"Invalid parameter not satisfying: %@", @"_configuration"}];

    configuration = self->_configuration;
  }

  if ([(NICarKeyConfiguration *)configuration configurationType]!= 3)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"NIServerCarKeySession.mm" lineNumber:1264 description:{@"Invalid parameter not satisfying: %@", @"_configuration.configurationType == _NICarKeyConfigurationTypeLabTestMode"}];
  }

  ptr = self->_standaloneAlishaSession.__ptr_;
  if (!ptr)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"NIServerCarKeySession.mm" lineNumber:1265 description:{@"Invalid parameter not satisfying: %@", @"_standaloneAlishaSession"}];

    ptr = self->_standaloneAlishaSession.__ptr_;
  }

  sub_100341A28(ptr, llround(3000000.0), buf);
  if (*buf)
  {
    sub_1003A03C4(*buf, __p);
    if (v16 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = [NSString stringWithFormat:@"Failed to run standalone session. Error: %s", v7];
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B91F8();
    }

    v18 = NSLocalizedDescriptionKey;
    v19 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v10 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_runOwnerSession
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-carkey,run owner session", buf, 2u);
  }

  ptr = self->_alishaManager.__ptr_;
  if (!ptr)
  {
    sub_1004B93B8();
  }

  v5 = sub_1003A555C(ptr);
  if (v5)
  {
    sub_1003A03C4(v5, buf);
    if (v12 >= 0)
    {
      v6 = buf;
    }

    else
    {
      v6 = *buf;
    }

    v7 = [NSString stringWithFormat:@"Failed to run NI CarKey owner session. Error: %s", v6];
    if (v12 < 0)
    {
      operator delete(*buf);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B9350();
    }

    v13 = NSLocalizedDescriptionKey;
    v14 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_runPassthroughSession
{
  [@"com.apple.nearbyd" UTF8String];
  if ((os_variant_allows_internal_security_policies() & 1) == 0)
  {
    v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:0];
    goto LABEL_16;
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-carkey,_runPassthroughSession", buf, 2u);
  }

  if (!self->_standaloneAlishaSession.__ptr_)
  {
    sub_1004B9574();
  }

  if (!self->_passthroughParams.passthroughUwbSessionId.__engaged_)
  {
    sub_1004B93E4();
  }

  ptr = self->_alishaSystem.__ptr_;
  sub_100340940(self->_passthroughParams.passthroughUwbSessionId.var0.__val_, v35);
  if (v35[0])
  {
    sub_1003A03C4(v35[0], buf);
    if (v41 >= 0)
    {
      v5 = buf;
    }

    else
    {
      v5 = *buf;
    }

    v6 = [NSString stringWithFormat:@"Failed to get key for passthrough session. Error: %s", v5];
    if (SHIBYTE(v41) < 0)
    {
      operator delete(*buf);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B879C();
    }

    v45 = NSLocalizedDescriptionKey;
    v46 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v7];

    goto LABEL_16;
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#ses-carkey,GetKey operation succeeded. Proceeding.", buf, 2u);
  }

  if (self->_passthroughParams.bypassBluetoothTimesync)
  {
    v11 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-carkey,DCK time sync bypass", buf, 2u);
    }

    v12 = 3000000.0;
    if (self->_passthroughParams.anchorSimulation)
    {
      v12 = 250000.0;
    }

    sub_100341A28(self->_standaloneAlishaSession.__ptr_, llround(v12), buf);
    v13 = *buf;
    if (*buf)
    {
LABEL_27:
      sub_1003A03C4(v13, buf);
      if (v41 >= 0)
      {
        v14 = buf;
      }

      else
      {
        v14 = *buf;
      }

      v15 = [NSString stringWithFormat:@"Failed to start Alisha standalone ranging session. Error: %s", v14];
      if (SHIBYTE(v41) < 0)
      {
        operator delete(*buf);
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B950C();
      }

      v36 = NSLocalizedDescriptionKey;
      v37 = v15;
      v16 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v16];

      goto LABEL_16;
    }

    goto LABEL_51;
  }

  if (!self->_passthroughParams.dckTimeSyncBtEvent.__engaged_)
  {
    sub_1004B9410();
  }

  if (!self->_passthroughParams.dckTimeSyncUwbDeviceTimeUsec.__engaged_)
  {
    sub_1004B943C();
  }

  engaged = self->_passthroughParams.passthroughUwbTime0.__engaged_;
  if (!engaged)
  {
    sub_1004B9468();
  }

  v18 = sub_1002C5608(&self->_passthroughParams.dckTimeSyncBtEvent, engaged);
  if (!self->_passthroughParams.dckTimeSyncUwbDeviceTimeUsec.__engaged_)
  {
    sub_1000195BC();
  }

  if (!self->_passthroughParams.passthroughUwbTime0.__engaged_)
  {
    sub_1000195BC();
  }

  val = self->_passthroughParams.dckTimeSyncUwbDeviceTimeUsec.var0.__val_;
  v20 = self->_passthroughParams.passthroughUwbTime0.var0.__val_;
  if (v20 >= val)
  {
    v30 = v18;
    v31 = v20 - val + v18;
    v32 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v30;
      v39 = 2048;
      v40 = val;
      v41 = 2048;
      v42 = v20;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#ses-carkey,DCK time sync BT event = %lluus, DCK time sync UWB device time = %lluus, UWB Time 0 = %lluus", buf, 0x20u);
    }

    if (self->_passthroughParams.anchorSimulation)
    {
      v33 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = 20000;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#ses-carkey,Anchor simulation start time leeway of %lluus", buf, 0xCu);
      }

      v31 -= 20000;
    }

    v13 = sub_1003426D0(self->_standaloneAlishaSession.__ptr_, v31);
    if (v13)
    {
      goto LABEL_27;
    }

LABEL_51:
    v34 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#ses-carkey,Range enable succeeded.", buf, 2u);
    }

    v8 = 0;
    goto LABEL_16;
  }

  v21 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B9494(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  v43 = NSLocalizedDescriptionKey;
  v44 = @"UWB Time 0 must be greater than UWB Device Time from the DCK time sync event.";
  v29 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v29];

LABEL_16:

  return v8;
}

- (id)_pausePassthroughOrLabTestModeSession
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-carkey,_pausePassthroughOrLabTestModeSession", buf, 2u);
  }

  ptr = self->_standaloneAlishaSession.__ptr_;
  if (!ptr)
  {
    sub_1004B95F8();
  }

  sub_100342218(ptr, buf);
  if (*buf)
  {
    sub_1003A03C4(*buf, __p);
    if (v11 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = [NSString stringWithFormat:@"Failed to stop Alisha standalone ranging session. Error: %s", v5];
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B879C();
    }

    v16 = NSLocalizedDescriptionKey;
    v17 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  if (v15 == 1 && v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  return v8;
}

- (id)_pauseOwnerSession
{
  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-carkey,pause owner session", buf, 2u);
  }

  ptr = self->_alishaManager.__ptr_;
  if (ptr)
  {
    sub_1003A59B0(ptr, buf);
    if (*buf)
    {
      sub_1003A03C4(*buf, __p);
      if (v12 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      v6 = [NSString stringWithFormat:@"Failed to stop ranging when pausing NI CarKey owner session. Error: %s", v5];
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B9350();
      }

      v16 = NSLocalizedDescriptionKey;
      v17 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:v7];
    }

    else
    {
      if (v15 == 1)
      {
        [(NIServerCarKeySession *)self _relayDCKMessageInternal:v14];
      }

      v8 = 0;
    }

    if (v15 == 1 && v14[0])
    {
      v14[1] = v14[0];
      operator delete(v14[0]);
    }
  }

  else
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ses-carkey,Pause but no Alisha manager. Returning.", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

+ (JobConfig)_aopJobConfigWithTimeouts
{
  *(&retstr->maxTimeoutRefires + 1) = -1;
  *(&retstr->btConnHandle + 1) = 0;
  retstr->optionsBitmap = 1;
  v4 = sub_1002C5BDC(@"AlishaTimeoutAOverrideSeconds", 0x3C);
  v5 = sub_1002C5BDC(@"AlishaTimeoutBOverrideSeconds", 0x96);
  v6 = sub_1002C5BDC(@"AlishaTimeoutRefirePeriodOverrideSeconds", 0x96);
  result = sub_1002C5BDC(@"AlishaMaxTimeoutRefiresOverride", 2);
  retstr->peerDiscoveryTimeoutSeconds = v4;
  retstr->peerReacquisitionTimeoutSeconds = v4;
  retstr->trackingTimeoutSeconds = -1;
  retstr->jobTimeoutSeconds = v5;
  retstr->timeoutRefirePeriodSeconds = v6;
  retstr->maxTimeoutRefires = result;
  return result;
}

- (RequestConstructionDebugParams)_ownerDeviceServiceRequestDebugParams:(SEL)a3
{
  v6 = a4;
  v7 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-carkey,Debug params for owner device service request. Debug options: %@", &v22, 0xCu);
  }

  if (self->_passthroughParams.isPassthroughSession)
  {
    v20 = "!_passthroughParams.isPassthroughSession";
    v21 = 1458;
    goto LABEL_12;
  }

  if (self->_passthroughParams.anchorSimulation)
  {
    v20 = "!_passthroughParams.anchorSimulation";
    v21 = 1459;
LABEL_12:
    __assert_rtn("[NIServerCarKeySession _ownerDeviceServiceRequestDebugParams:]", "NIServerCarKeySession.mm", v21, v20);
  }

  retstr->var3.__engaged_ = 0;
  retstr->var4.var0.__null_state_ = 0;
  retstr->var4.__engaged_ = 0;
  retstr->var11 = 0;
  *&retstr->var5 = 0;
  retstr->var10 = 0;
  *&retstr->var0 = 0;
  retstr->var3.var0.__null_state_ = 0;
  v8 = [v6 objectForKeyedSubscript:@"DebugSTSIndex0"];
  if (!v8 || ([v6 objectForKeyedSubscript:@"AnchorHopKey"], v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 == 0, v9, v8, v10))
  {
    retstr->var2 = 0;
  }

  else
  {
    v11 = [v6 objectForKeyedSubscript:@"DebugSTSIndex0"];
    v12 = [v11 unsignedIntegerValue];

    v13 = [v6 objectForKeyedSubscript:@"AnchorHopKey"];
    v14 = [v13 unsignedIntegerValue];

    retstr->var2 = 1;
    retstr->var3.__engaged_ = 1;
    retstr->var3.var0.__val_ = v12;
    retstr->var4.__engaged_ = 1;
    retstr->var4.var0.__val_ = v14;
  }

  v15 = [v6 objectForKeyedSubscript:@"DisableUWBEncryption"];
  v16 = [v15 BOOLValue];

  v17 = [v6 objectForKeyedSubscript:@"DisableSecureToF"];
  v18 = [v17 BOOLValue];

  retstr->var9 = v16;
  retstr->var10 = v18;
  retstr->var11 = 5;

  return result;
}

- (void)_relayDCKMessageInternal:(const void *)a3
{
  v4 = [NSData dataWithBytes:*a3 length:*(a3 + 1) - *a3];
  v5 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-carkey,Relaying DCK message: %@", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = NIServerCarKeySession;
  v6 = [(NIServerBaseSession *)&v8 resourcesManager];
  v7 = [v6 remote];
  [v7 relayDCKMessage:v4];
}

- (Result<rose::RoseServiceRequest>)_passthroughSessionServiceRequest:(SEL)a3
{
  v6 = a4;
  [@"com.apple.nearbyd" UTF8String];
  if (os_variant_allows_internal_security_policies())
  {
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      anchorSimulation = self->_passthroughParams.anchorSimulation;
      *buf = 67109378;
      *&buf[4] = anchorSimulation;
      *&buf[8] = 2112;
      *&buf[10] = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-carkey,Passthrough session service request. Anchor: %d. Debug options: %@", buf, 0x12u);
    }

    p_passthroughParams = &self->_passthroughParams;
    if (!self->_passthroughParams.isPassthroughSession)
    {
      __assert_rtn("[NIServerCarKeySession _passthroughSessionServiceRequest:]", "NIServerCarKeySession.mm", 1504, "_passthroughParams.isPassthroughSession");
    }

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v9 = [&off_1009C3C98 countByEnumeratingWithState:&v122 objects:v129 count:16];
    if (v9)
    {
      v10 = *v123;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v123 != v10)
          {
            objc_enumerationMutation(&off_1009C3C98);
          }

          v12 = *(*(&v122 + 1) + 8 * i);
          v13 = [v6 objectForKey:v12];
          if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v43 = [NSString stringWithFormat:@"Missing mandatory passthrough session key or not an NSNumber: {%@: %@}", v12, v13];
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004B879C();
            }

            retstr->var0 = -1014;
            retstr->var1.var0.__null_state_ = 0;
            retstr->var1.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;

            goto LABEL_34;
          }
        }

        v9 = [&off_1009C3C98 countByEnumeratingWithState:&v122 objects:v129 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if (p_passthroughParams->anchorSimulation)
    {
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v14 = [&off_1009C3CB0 countByEnumeratingWithState:&v118 objects:v128 count:16];
      if (v14)
      {
        v15 = *v119;
        while (2)
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v119 != v15)
            {
              objc_enumerationMutation(&off_1009C3CB0);
            }

            v17 = *(*(&v118 + 1) + 8 * j);
            v18 = [v6 objectForKey:v17];
            if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v46 = [NSString stringWithFormat:@"Missing mandatory anchor simulation key or not an NSNumber: {%@: %@}", v17, v18];
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004B879C();
              }

              retstr->var0 = -1015;
              retstr->var1.var0.__null_state_ = 0;
              retstr->var1.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;

              goto LABEL_34;
            }
          }

          v14 = [&off_1009C3CB0 countByEnumeratingWithState:&v118 objects:v128 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    v19 = [v6 objectForKeyedSubscript:@"UWBSessionId"];
    v85 = [v19 unsignedIntegerValue];

    p_passthroughParams->passthroughUwbSessionId.var0.__val_ = v85;
    p_passthroughParams->passthroughUwbSessionId.__engaged_ = 1;
    v20 = [v6 objectForKeyedSubscript:@"RFChannel"];
    v84 = [v20 unsignedIntegerValue];

    v21 = [v6 objectForKeyedSubscript:@"SyncCodeIndex"];
    v22 = [v21 unsignedIntegerValue];

    v23 = [v6 objectForKeyedSubscript:@"AlishaProtocolVersion"];
    v83 = [v23 unsignedIntegerValue];

    v24 = [v6 objectForKeyedSubscript:@"UWBConfigId"];
    v82 = [v24 unsignedIntegerValue];

    v25 = [v6 objectForKeyedSubscript:@"SessionRANMultiplier"];
    v81 = [v25 unsignedIntegerValue];

    v26 = [v6 objectForKeyedSubscript:@"ChapsPerSlot"];
    v80 = [v26 unsignedIntegerValue];

    v27 = [v6 objectForKeyedSubscript:@"SlotsPerRound"];
    v79 = [v27 unsignedIntegerValue];

    v28 = [v6 objectForKeyedSubscript:@"NumResponderNodes"];
    v78 = [v28 unsignedIntegerValue];

    v29 = [v6 objectForKeyedSubscript:@"HopConfigBitmask"];
    v77 = [v29 unsignedIntegerValue];

    v30 = [v6 objectForKeyedSubscript:@"PulseShapeCombo"];
    v76 = [v30 unsignedIntegerValue];

    if ((v22 - 9) >= 4u)
    {
      v45 = [NSString stringWithFormat:@"Invalid Sync Code Index: %lu", v22];
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B879C();
      }

      retstr->var0 = -1016;
      retstr->var1.var0.__null_state_ = 0;
      retstr->var1.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
    }

    else
    {
      v68 = v22 - 9;
      v31 = [v6 objectForKeyedSubscript:@"ACWGMacMode"];

      v32 = [v6 objectForKeyedSubscript:@"ACWGMacMode"];
      v33 = [v32 unsignedIntValue];

      v34 = [v6 objectForKeyedSubscript:@"ACWGMacMode"];
      v67 = [v34 unsignedIntValue];

      v35 = [v6 objectForKeyedSubscript:@"ACWGFinalData2Bitmask"];
      v36 = [v35 unsignedIntValue];
      v66 = (v33 & 0xFFFFFFC0) == 64;
      v75 = v31 != 0;

      if (v31)
      {
        v37 = ((v36 & 3) << 16) | 0x1000000;
      }

      else
      {
        v37 = 0;
      }

      v38 = [v6 objectForKeyedSubscript:@"DebugSTSIndex0"];
      v65 = v37;
      v74 = [v38 unsignedIntegerValue];

      v39 = [v6 objectForKeyedSubscript:@"AnchorHopKey"];
      v73 = [v39 unsignedIntegerValue];

      v40 = [v6 objectForKeyedSubscript:@"DisableUWBEncryption"];
      v72 = [v40 BOOLValue];

      v41 = [v6 objectForKeyedSubscript:@"DisableSecureToF"];
      v71 = [v41 BOOLValue];

      if (p_passthroughParams->anchorSimulation)
      {
        v42 = [v6 objectForKeyedSubscript:@"AnchorResponderIndex"];
        v70 = [v42 unsignedIntegerValue];

        v69 = 1;
      }

      else
      {
        v70 = 0;
        v69 = 0;
      }

      v47 = [v6 objectForKeyedSubscript:@"ForceAntennaSelection"];
      v48 = [v47 BOOLValue];

      if (v48)
      {
        v117 = 0u;
        v115 = 0u;
        v116 = 0u;
        v114 = 0u;
        v49 = [&off_1009C3CC8 countByEnumeratingWithState:&v114 objects:v127 count:16];
        if (v49)
        {
          v50 = *v115;
          while (2)
          {
            for (k = 0; k != v49; k = k + 1)
            {
              if (*v115 != v50)
              {
                objc_enumerationMutation(&off_1009C3CC8);
              }

              v52 = *(*(&v114 + 1) + 8 * k);
              v53 = [v6 objectForKey:v52];
              if (!v53 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                v64 = [NSString stringWithFormat:@"Missing mandatory antenna mask key or not an NSNumber: {%@: %@}", v52, v53];
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  sub_1004B879C();
                }

                retstr->var0 = -1015;
                retstr->var1.var0.__null_state_ = 0;
                retstr->var1.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;

                goto LABEL_34;
              }
            }

            v49 = [&off_1009C3CC8 countByEnumeratingWithState:&v114 objects:v127 count:16];
            if (v49)
            {
              continue;
            }

            break;
          }
        }

        v54 = [v6 objectForKeyedSubscript:@"TxAntennaMask"];
        v55 = [v54 unsignedIntValue];

        v56 = [v6 objectForKeyedSubscript:@"RxAntennaMask"];
        v57 = [v56 unsignedIntValue];

        v58 = [v6 objectForKeyedSubscript:@"RxSyncSearchAntennaMask"];
        v59 = [v58 unsignedIntValue];

        v60 = 1;
      }

      else
      {
        v60 = 0;
        v59 = 0;
        v57 = 0;
        v55 = 0;
      }

      v100 = p_passthroughParams->anchorSimulation;
      v101 = v70 | (v69 << 8);
      v102 = 1;
      v103 = v74;
      v104 = 1;
      v105 = v73;
      v106 = 1;
      v107 = v48;
      v108 = v55 | ((v60 & 1) << 8);
      v109 = v57 | ((v60 & 1) << 8);
      v110 = v59 | (v60 << 8);
      v111 = v72;
      v112 = v71;
      v113 = 5;
      if (!p_passthroughParams->bypassBluetoothTimesync)
      {
        v61 = [v6 objectForKeyedSubscript:@"UWBTime0"];
        if (!v61)
        {
          __assert_rtn("[NIServerCarKeySession _passthroughSessionServiceRequest:]", "NIServerCarKeySession.mm", 1640, "debugOptions[@UWBTime0] != nil");
        }

        v62 = [v6 objectForKeyedSubscript:@"UWBTime0"];
        v63 = [v62 unsignedLongLongValue];

        p_passthroughParams->passthroughUwbTime0.var0.__val_ = v63;
        p_passthroughParams->passthroughUwbTime0.__engaged_ = 1;
      }

      v88 = v85;
      v89 = v84;
      v90 = v68;
      v91 = v83;
      v92 = v82;
      v93 = v81;
      v94 = v80;
      v95 = v79;
      v96 = v78;
      v97 = v77;
      v98 = v76;
      v99 = (v75 && v66) & 0xFFFFC0FF | ((v67 & 0x3F) << 8) | v65;
      +[NIServerCarKeySession _aopJobConfigWithTimeouts];
      sub_10019CFAC(&v88, 102, v87, &v100, buf);
      memcpy(&retstr->var1, buf, 0x240uLL);
      retstr->var0 = 0;
      retstr->var1.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 1;
    }
  }

  else
  {
    retstr->var0 = -1000;
    retstr->var1.var0.__null_state_ = 0;
    retstr->var1.var0.__val_.range_enable_params.nbamms.mms_pkt_type.__engaged_ = 0;
  }

LABEL_34:

  return result;
}

- (void)_alishaStateChangedFromState:(unsigned __int8)a3 toNewState:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  dispatch_assert_queue_V2(self->_clientQueue);
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_1003A0BC8(v5, v20);
    v8 = v21;
    v9 = v20[0];
    sub_1003A0BC8(v4, __p);
    v10 = v20;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v19 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    containerUniqueIdentifier = self->_containerUniqueIdentifier;
    *buf = 136315650;
    v23 = v10;
    v24 = 2080;
    v25 = v11;
    v26 = 2112;
    v27 = containerUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-carkey,State changed from %s to %s, session container ID: %@", buf, 0x20u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  ptr = self->_timeoutManager.__ptr_;
  if (ptr)
  {
    sub_1002311E8(ptr, v5, v4);
  }

  v14 = sub_1003A2D2C(v5);
  if (!(sub_1003A2D2C(v4) & 1 | ((v14 & 1) == 0)))
  {
    v17.receiver = self;
    v17.super_class = NIServerCarKeySession;
    v15 = [(NIServerBaseSession *)&v17 resourcesManager];
    v16 = [v15 remote];
    [v16 didUpdateHealthStatus:4];
  }
}

- (void)_handleInitiatorRangingBlockUpdate:(InitiatorRangingBlockSummary *)a3
{
  dispatch_assert_queue_V2(self->_clientQueue);
  ptr = self->_certLogger.__ptr_;
  if (ptr)
  {

    sub_1002BD0D4(ptr, &a3->var0);
  }
}

- (void)_handleSessionStats:(SessionStats *)a3
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (a3->var1)
  {
    ptr = self->_analyticsManager.__ptr_;
    if (ptr)
    {

      sub_1001EDC6C(ptr, a3);
    }
  }
}

- (void)_handleHealthChanged:(int)a3
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004A08(__p, (&off_1009A3070)[a3]);
    if (v13 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    containerUniqueIdentifier = self->_containerUniqueIdentifier;
    *buf = 136315394;
    v15 = v6;
    v16 = 2112;
    v17 = containerUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ses-carkey,Health changed to %s, session container ID: %@", buf, 0x16u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11.receiver = self;
  v11.super_class = NIServerCarKeySession;
  v8 = [(NIServerBaseSession *)&v11 resourcesManager];
  v9 = v8;
  switch(a3)
  {
    case 2:
      v10 = [v8 remote];
      [v10 didUpdateHealthStatus:3];
      goto LABEL_13;
    case 1:
      v10 = [v8 remote];
      [v10 didUpdateHealthStatus:2];
      goto LABEL_13;
    case 0:
      v10 = [v8 remote];
      [v10 didUpdateHealthStatus:1];
LABEL_13:

      break;
  }
}

- (void)_handleTimeoutEvent:(int)a3 time:(double)a4
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v7 = qword_1009F9820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sub_100004A08(__p, (&off_1009A3088)[a3]);
    v8 = v20 >= 0 ? __p : __p[0];
    containerUniqueIdentifier = self->_containerUniqueIdentifier;
    *buf = 136315650;
    *v24 = v8;
    *&v24[8] = 2048;
    *&v24[10] = a4;
    *&v24[18] = 2112;
    v25 = containerUniqueIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#ses-carkey,Received timeout event %s at %f sec, session container ID: %@", buf, 0x20u);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  ptr = self->_alishaManager.__ptr_;
  if (ptr)
  {
    sub_1003A6444(ptr, a3, buf);
    v11 = *buf;
    if (*buf)
    {
      v21 = NSLocalizedDescriptionKey;
      v22 = @"processing timeout events failed";
      v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      if ((v11 + 1016) < 3)
      {
        v13 = -5888;
      }

      else
      {
        v13 = -5887;
      }

      v14 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:v13 userInfo:v12];

      v18.receiver = self;
      v18.super_class = NIServerCarKeySession;
      v15 = [(NIServerBaseSession *)&v18 resourcesManager];
      v16 = [v15 remote];
      [v16 uwbSessionDidInvalidateWithError:v14];
    }

    else if (v26 == 1)
    {
      [(NIServerCarKeySession *)self _relayDCKMessageInternal:&v24[4]];
    }

    if (v26 == 1)
    {
      if (*&v24[4])
      {
        *&v24[12] = *&v24[4];
        operator delete(*&v24[4]);
      }
    }
  }

  else
  {
    v17 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ses-carkey,No Alisha manager. Ignoring timeout event", buf, 2u);
    }
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 192) = 0;
  *(self + 256) = 0;
  *(self + 33) = 0;
  *(self + 34) = 0;
  *(self + 140) = 0;
  *(self + 282) = 0;
  *(self + 288) = 0;
  *(self + 344) = 0;
  *(self + 352) = 0;
  *(self + 360) = 0;
  *(self + 368) = 0;
  *(self + 372) = 0;
  *(self + 376) = 0;
  *(self + 384) = 0;
  *(self + 49) = 0;
  *(self + 50) = 0;
  *(self + 51) = 0;
  *(self + 52) = 0;
  return self;
}

@end