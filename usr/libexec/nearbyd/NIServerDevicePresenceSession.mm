@interface NIServerDevicePresenceSession
- (BOOL)airPodsProxCardSampleTooOld:(id)a3;
- (BOOL)isInteresetedInSample:(id)a3;
- (BOOL)isInterestedInSamplesForDevice:(id)a3;
- (NIServerDevicePresenceSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5;
- (id).cxx_construct;
- (id)configure;
- (id)description;
- (id)disableAllServices;
- (id)discoveryTokenFromIdentifier:(unint64_t)a3;
- (id)objectFromIdentifier:(unint64_t)a3;
- (id)pauseWithSource:(int64_t)a3;
- (id)run;
- (int)_niPlacementToAlgoPlacement:(int64_t)a3;
- (int64_t)_roseMotionStateToNIMotionActivityState:(int)a3;
- (optional<unsigned)identifierFromDiscoveryToken:(id)a3;
- (void)consumeBluetoothSample:(id)a3;
- (void)invalidate;
- (void)processVisionInput:(id)a3;
- (void)updatesEngine:(id)a3 didUpdateNearbyObjects:(id)a4;
- (void)updatesEngine:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6 regionTransitionSuppressed:(BOOL)a7;
@end

@implementation NIServerDevicePresenceSession

- (id)description
{
  v3 = [[NSMutableString alloc] initWithFormat:@"NIServerDevicePresenceSession"];
  v4 = *(self + 44);
  if (v4)
  {
    v5 = [v4 description];
    [v3 appendFormat:@" with Configuration: %@", v5];
  }

  else
  {
    [v3 appendFormat:@" with Configuration: nil"];
  }

  return v3;
}

- (NIServerDevicePresenceSession)initWithResourcesManager:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_class();
  if (v11 != objc_opt_class())
  {
    v33 = +[NSAssertionHandler currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"NIServerDevicePresenceSession.mm" lineNumber:93 description:@"NIServerDevicePresenceSession given invalid configuration."];
  }

  v12 = [v9 serverSessionIdentifier];

  if (!v12)
  {
    v34 = +[NSAssertionHandler currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"NIServerDevicePresenceSession.mm" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"resourcesManager.serverSessionIdentifier"}];
  }

  v37.receiver = self;
  v37.super_class = NIServerDevicePresenceSession;
  v13 = [(NIServerBaseSession *)&v37 initWithResourcesManager:v9 configuration:v10 error:a5];
  v14 = v13;
  if (v13)
  {
    v15 = [v10 copy];
    v16 = *(v13 + 44);
    *(v13 + 44) = v15;

    if (([*(v13 + 44) monitoringOption] & 2) == 0)
    {
      if (v9)
      {
        [v9 protobufLogger];
        v17 = *location;
      }

      else
      {
        v17 = 0uLL;
      }

      location[0] = 0;
      location[1] = 0;
      v19 = *(v13 + 7);
      *(v13 + 3) = v17;
      if (v19)
      {
        sub_10000AD84(v19);
      }

      if (location[1])
      {
        sub_10000AD84(location[1]);
      }

      v20 = [v9 clientConnectionQueue];
      v21 = *(v13 + 10);
      *(v13 + 10) = v20;

      v22 = [v9 serverSessionIdentifier];
      v23 = [v22 UUIDString];
      v24 = *(v13 + 11);
      *(v13 + 11) = v23;

      *(v13 + 40) = 0;
      v25 = objc_alloc_init(SFDeviceDiscovery);
      v26 = *(v13 + 12);
      *(v13 + 12) = v25;

      if ([*(v13 + 44) allowedDevices] == 2)
      {
        v27 = [*(v13 + 44) innerBoundary];
        if ([v27 devicePresencePreset] == 3)
        {
        }

        else
        {
          v28 = [*(v13 + 44) innerBoundary];
          v29 = [v28 devicePresencePreset] == 2;

          if (!v29)
          {
            goto LABEL_22;
          }
        }

        objc_initWeak(location, v14);
        v30 = v14[12];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_1001C02A8;
        v35[3] = &unk_10098AB40;
        objc_copyWeak(&v36, location);
        [v30 activateWithCompletion:v35];
        objc_destroyWeak(&v36);
        objc_destroyWeak(location);
      }

LABEL_22:
      v31 = v14;
      operator new();
    }

    if (a5)
    {
      v38[0] = NSLocalizedFailureReasonErrorKey;
      v38[1] = NSLocalizedRecoverySuggestionErrorKey;
      v39[0] = @"Invalid monitoring option.";
      v39[1] = @"AlwaysOn is not currently supported, remove from configuration.";
      v18 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
      *a5 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v18];
    }
  }

  return 0;
}

- (int64_t)_roseMotionStateToNIMotionActivityState:(int)a3
{
  dispatch_assert_queue_V2(*(self + 10));
  if (a3 == 1)
  {
    return 2;
  }

  else
  {
    return a3 == 2;
  }
}

- (void)consumeBluetoothSample:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(*(self + 10));
  v5 = [v4 identifier];

  if (v5)
  {
    v6 = [v4 model];

    if (v6)
    {
      if (([*(self + 44) allowedDevices] & 8) != 0 && +[NIPlatformInfo isInternalBuild](NIPlatformInfo, "isInternalBuild") && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A5170();
      }

      v7 = [*(self + 44) token];
      v8 = v7 == 0;

      if (v8)
      {
        v12 = [NIDiscoveryToken alloc];
        v13 = [v4 identifier];
        v14 = [v13 dataUsingEncoding:4];
        v15 = [(NIDiscoveryToken *)v12 initWithBytes:v14];
      }

      else
      {
        v9 = [v4 model];
        v10 = [v9 isEqualToString:@"NONE"];

        if (v10)
        {
          v11 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v4;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#ses-devicepresence,No model information while bt finding for sample: %@", buf, 0xCu);
          }

          goto LABEL_63;
        }

        v15 = [*(self + 44) token];
      }

      v16 = [*(self + 44) innerBoundary];
      if ([v16 devicePresencePreset] == 3)
      {
        [v4 rssi];
        v18 = v17 < -61.0;

        if (v18)
        {
          v19 = qword_1009F9820;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [v4 rssi];
            v61 = v60;
            v62 = [v4 channel];
            v63 = [v4 identifier];
            *buf = 134218754;
            *&buf[4] = v61;
            v78 = 1024;
            v79 = v62;
            v80 = 2112;
            *v81 = v63;
            *&v81[8] = 2048;
            *&v81[10] = [(NIDiscoveryToken *)v15 hash];
            _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "#ses-devicepresence,Ignoring weak RSSI %f on channel %d for device: %@ (device hash: 0x%lx) because we cannot trust weak RSSI due to a BT FW bug", buf, 0x26u);
          }

          goto LABEL_63;
        }
      }

      else
      {
      }

      v73 = 0;
      v74 = 0;
      v75 = 0;
      v20 = [v4 identifier];
      v21 = [v20 dataUsingEncoding:4];

      v22 = [v21 length];
      v23 = 0;
      if (v22)
      {
        sub_100009838(&v73, v22);
        v23 = v73;
      }

      else if (v74 != v73)
      {
        v74 = v73;
      }

      [v21 getBytes:v23 length:{objc_msgSend(v21, "length")}];
      std::mutex::lock((self + 216));
      *buf = [(NIDiscoveryToken *)v15 hash];
      if (!sub_100009978(self + 22, buf))
      {
        v24 = [[NINearbyObject alloc] initWithToken:v15];
        v25 = [v4 identifier];
        [(NINearbyObject *)v24 setDeviceIdentifier:v25];

        v26 = [v4 name];
        [(NINearbyObject *)v24 setName:v26];

        v76 = [(NIDiscoveryToken *)v15 hash];
        *buf = &v76;
        v27 = sub_1001C346C(self + 22, &v76);
        v28 = v27[3];
        v27[3] = v24;
      }

      std::mutex::unlock((self + 216));
      v29 = [v4 partIdentifier];
      if ([v29 isEqualToString:&stru_1009B1428])
      {
        v30 = [(NIDiscoveryToken *)v15 hash];
      }

      else
      {
        v31 = [v4 partIdentifier];
        v30 = [v31 hash];
      }

      if (!v30 && +[NIPlatformInfo isInternalBuild]&& os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
      {
        sub_1004A51E4();
      }

      if (![(NIServerDevicePresenceSession *)self airPodsProxCardSampleTooOld:v4])
      {
        [v4 machContinuousTimeSeconds];
        v33 = v32;
        [v4 rssi];
        v35 = v34;
        v36 = [v4 channel];
        v37 = [v4 model];
        v38 = v37;
        sub_100004A08(__p, [v37 UTF8String]);
        sub_100009B14(buf, v36, __p, &v73, [(NIDiscoveryToken *)v15 hash], v30, v33, v35);
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        v85 = -[NIServerDevicePresenceSession _niPlacementToAlgoPlacement:](self, "_niPlacementToAlgoPlacement:", [v4 devicePlacement]);
        v86 = 1;
        [*(self + 8) acceptBluetoothSample:buf coarseEstimation:0 regionCategory:0];
        sub_100013474(*(self + 16), buf);
        v39 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(self + 10));
        v40 = [*(self + 44) innerBoundary];
        v41 = [v40 devicePresencePreset] == 3;

        if (v41)
        {
          v42 = 120.0;
        }

        else
        {
          v42 = 60.0;
        }

        v43 = [*(self + 44) token];
        v44 = v43 == 0;

        v45 = 10.0;
        if (v44)
        {
          v46 = [*(self + 44) innerBoundary];
          if ([v46 devicePresencePreset] == 1)
          {
            v47 = [v4 model];
            v48 = [(NIServerDevicePresenceSession *)self isAirPods:CBProductIDFromNSString()];

            if (v48)
            {
              v45 = 5.0;
            }

            else
            {
              v45 = v42;
            }
          }

          else
          {

            v45 = v42;
          }
        }

        v49 = +[NSUserDefaults standardUserDefaults];
        [v49 doubleForKey:@"NIDevicePresenceSampleTimeoutOverrideSeconds"];
        if (v50 >= 300.0 || v50 <= 1.0)
        {
          v52 = v45;
        }

        else
        {
          v52 = v50;
        }

        v53 = dispatch_walltime(0, (v52 * 1000000000.0));
        dispatch_source_set_timer(v39, v53, (v52 * 1000000000.0), 0);
        objc_initWeak(&location, self);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1001C10EC;
        handler[3] = &unk_10099C278;
        objc_copyWeak(v69, &location);
        v69[1] = *&v52;
        v54 = v15;
        v66 = v54;
        v55 = v39;
        v67 = v55;
        v68 = self;
        dispatch_source_set_event_handler(v55, handler);
        v76 = [(NIDiscoveryToken *)v54 hash];
        v56 = sub_100009978(self + 35, &v76);
        if (v56)
        {
          dispatch_source_cancel(v56[3]);
        }

        v64 = [(NIDiscoveryToken *)v54 hash];
        v76 = &v64;
        v57 = sub_1000135F8(self + 35, &v64);
        v58 = v57[3];
        v57[3] = v55;
        v59 = v55;

        dispatch_resume(v59);
        objc_destroyWeak(v69);
        objc_destroyWeak(&location);

        if (v83)
        {
          v84 = v83;
          operator delete(v83);
        }

        if (v82 < 0)
        {
          operator delete(*&v81[4]);
        }
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A5258();
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A52C0();
  }

LABEL_63:
}

- (BOOL)isInteresetedInSample:(id)a3
{
  v4 = a3;
  v5 = [*(self + 44) allowedDevices];
  if (v5 < 6 && ((0x33u >> v5) & 1) != 0)
  {
    goto LABEL_9;
  }

  v6 = [v4 model];
  if ([v6 isEqualToString:&stru_1009B1428])
  {

LABEL_9:
    LOBYTE(self) = 0;
    goto LABEL_10;
  }

  v7 = [v4 model];

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = [v4 model];
  v9 = CBProductIDFromNSString();

  if ([*(self + 44) allowedDevices] == 8)
  {
    if (*(self + 120) == 1)
    {
      LOBYTE(self) = [v4 devicePlacement] == 1;
    }

    else
    {
      LOBYTE(self) = [(NIServerDevicePresenceSession *)self isAirPods:v9];
    }

    goto LABEL_10;
  }

  if (([*(self + 44) allowedDevices] & 8) != 0)
  {
    LOBYTE(self) = 1;
    goto LABEL_10;
  }

  LOBYTE(self) = 0;
  if (v9 <= 8193)
  {
    if ((v9 - 801) >= 2 && v9 != 666 && v9 != 671)
    {
      goto LABEL_21;
    }
  }

  else if ((v9 - 8194) > 0x2D || ((1 << (v9 - 2)) & 0x207C7BB7FF9BLL) == 0)
  {
LABEL_21:
    LODWORD(self) = sub_1001C14A8(v9) ^ 1;
  }

LABEL_10:

  return self;
}

- (BOOL)isInterestedInSamplesForDevice:(id)a3
{
  v4 = a3;
  v5 = [*(self + 44) allowedDevices];
  if (v5 < 6 && ((0x33u >> v5) & 1) != 0)
  {
    goto LABEL_7;
  }

  if (([v4 rssi] & 0x80000000) == 0)
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 idsDeviceID];
      v8 = [v4 model];
      v23 = 138412802;
      v24 = v7;
      v25 = 2112;
      v26 = v8;
      v27 = 1024;
      v28 = [v4 rssi];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-devicepresence,Dropping BT RSSI sample for device: %@ which is of model: %@ because reported RSSI is %d", &v23, 0x1Cu);
    }

LABEL_6:

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v11 = [*(self + 44) token];

  if (v11)
  {
    v12 = [*(self + 44) token];
    v13 = [v12 objectInRawTokenOPACKDictForKey:&off_1009C3E30];

    v14 = [v13 length];
    if (v14 != 6)
    {
      if (v14 != 7)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A5328();
        }

        v9 = 0;
        goto LABEL_24;
      }

      v15 = [v13 subdataWithRange:{1, objc_msgSend(v13, "length") - 1}];

      v13 = v15;
    }

    v16 = [v4 btAddressData];
    v9 = [v13 isEqualToData:v16];

LABEL_24:
    goto LABEL_8;
  }

  if (*(self + 120) == 1 && [v4 primaryPlacement] == 1)
  {
    v9 = 1;
    goto LABEL_8;
  }

  if (([*(self + 44) allowedDevices] & 8) == 0)
  {
    v17 = [v4 idsDeviceID];

    if (!v17)
    {
      goto LABEL_7;
    }

    v18 = [v4 model];

    if (!v18)
    {
      v6 = qword_1009F9820;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v4 idsDeviceID];
        v23 = 138412290;
        v24 = v22;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-devicepresence,Dropping BT RSSI sample for device: %@ which does not have model info", &v23, 0xCu);
      }

      goto LABEL_6;
    }

    v19 = ([v4 deviceFlags] & 0x380) == 0;
    goto LABEL_30;
  }

  v9 = 0;
  v20 = [v4 productID] - 8194;
  if (v20 <= 0x26 && ((1 << v20) & 0x6472863101) != 0)
  {
    v21 = [v4 productID];
    v19 = v21 == 8223 || v21 == 8202;
LABEL_30:
    v9 = !v19;
  }

LABEL_8:

  return v9;
}

- (id)configure
{
  dispatch_assert_queue_V2(*(self + 10));
  if (!*(self + 44))
  {
    sub_1004A5390();
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(self + 44);
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-devicepresence,Configure. Configuration given: %@", buf, 0xCu);
  }

  v18.receiver = self;
  v18.super_class = NIServerDevicePresenceSession;
  v5 = [(NIServerBaseSession *)&v18 resourcesManager];
  if (*(self + 8))
  {
    goto LABEL_11;
  }

  v6 = [NINearbyUpdatesEngine alloc];
  v7 = *(self + 44);
  v8 = *(self + 10);
  v9 = [v5 analytics];
  v10 = *(self + 7);
  v16 = *(self + 6);
  v17 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = 0;
  v11 = [(NINearbyUpdatesEngine *)v6 initWithConfiguration:v7 queue:v8 delegate:self dataSource:self analyticsManager:v9 protobufLogger:&v16 error:&v15];
  v12 = v15;
  v13 = *(self + 8);
  *(self + 8) = v11;

  if (v17)
  {
    sub_10000AD84(v17);
  }

  if (*(self + 8))
  {

LABEL_11:
    v12 = 0;
  }

  return v12;
}

- (id)run
{
  dispatch_assert_queue_V2(*(self + 10));
  v15.receiver = self;
  v15.super_class = NIServerDevicePresenceSession;
  v3 = [(NIServerBaseSession *)&v15 resourcesManager];
  v4 = [*(self + 44) allowedDevices];
  if ((v4 - 6) < 0xA || (v4 - 2) < 2)
  {
    v5 = [*(self + 44) token];

    [v3 devicePresenceResource];
    if (v5)
      v6 = {;
      v7 = [v6 internalObserver];
      v8 = [*(self + 44) token];
      [v7 startHighPriorityScanningForToken:v8 forConsumer:self];
    }

    else
      v6 = {;
      v7 = [v6 internalObserver];
      [v7 startLeechingForConsumer:self];
    }
  }

  v9 = [v3 lifecycleSupervisor];
  [v9 runWithConfigurationCalled];

  v10 = *(self + 16);
  v11 = sub_100005288();
  v12 = [v3 clientProcessNameBestGuess];
  sub_100004A08(&__p, [v12 UTF8String]);
  sub_100282780(v10, &__p, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(self + 72) = 1;
  return 0;
}

- (id)pauseWithSource:(int64_t)a3
{
  dispatch_assert_queue_V2(*(self + 10));
  *(self + 72) = 0;
  sub_1001C1ED8(self + 136);
  v4 = [(NIServerDevicePresenceSession *)self _disableAllServicesAndSendHangupSignal:0];
  v16.receiver = self;
  v16.super_class = NIServerDevicePresenceSession;
  v5 = [(NIServerBaseSession *)&v16 resourcesManager];
  v6 = [v5 lifecycleSupervisor];
  [v6 pauseCalled];

  v7 = [v5 devicePresenceResource];
  v8 = [v7 internalObserver];
  [v8 stopLeechingForConsumer:self];

  v9 = [*(self + 44) token];

  if (v9)
  {
    v10 = [v5 devicePresenceResource];
    v11 = [v10 internalObserver];
    [v11 stopHighPriorityScanning];
  }

  v12 = [*(self + 44) token];

  if (v12)
  {
    v13 = *(self + 16);
    v14 = sub_100005288();
    sub_100282884(v13, v14);
  }

  return v4;
}

- (id)disableAllServices
{
  v8.receiver = self;
  v8.super_class = NIServerDevicePresenceSession;
  v3 = [(NIServerBaseSession *)&v8 resourcesManager];
  v4 = [v3 devicePresenceResource];
  v5 = [v4 internalObserver];
  [v5 stopLeechingForConsumer:self];

  v6 = [(NIServerDevicePresenceSession *)self _disableAllServicesAndSendHangupSignal:1];

  return v6;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(*(self + 10));
  *(self + 72) = 0;
  sub_1001C1ED8(self + 136);
  [*(self + 12) invalidate];
  sub_1002D26E0(*(self + 13));
  v3 = [(NIServerDevicePresenceSession *)self disableAllServices];
  v4 = [*(self + 44) token];

  if (v4)
  {
    v5 = *(self + 16);
    v6 = sub_100005288();
    sub_100282884(v5, v6);
  }

  v7.receiver = self;
  v7.super_class = NIServerDevicePresenceSession;
  [(NIServerBaseSession *)&v7 invalidate];
}

- (int)_niPlacementToAlgoPlacement:(int64_t)a3
{
  if ((a3 - 1) < 7)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (id)discoveryTokenFromIdentifier:(unint64_t)a3
{
  v3 = [(NIServerDevicePresenceSession *)self objectFromIdentifier:a3];
  v4 = [v3 discoveryToken];

  return v4;
}

- (optional<unsigned)identifierFromDiscoveryToken:(id)a3
{
  v3 = [a3 hash];
  v4 = 1;
  result.__engaged_ = v4;
  result.var0 = v3;
  return result;
}

- (id)objectFromIdentifier:(unint64_t)a3
{
  v14 = a3;
  std::mutex::lock((self + 216));
  v4 = sub_100009978(self + 22, &v14);
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A53BC(&v14, v6, v7, v8, v9, v10, v11, v12);
    }

    v5 = 0;
  }

  std::mutex::unlock((self + 216));

  return v5;
}

- (void)processVisionInput:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(*(self + 10));
  [*(self + 8) acceptVisionInput:v4];
}

- (void)updatesEngine:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6 regionTransitionSuppressed:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (*(self + 8) != v12)
  {
    __assert_rtn("[NIServerDevicePresenceSession updatesEngine:object:didUpdateRegion:previousRegion:regionTransitionSuppressed:]", "NIServerDevicePresenceSession.mm", 767, "engine == _updatesEngine");
  }

  if (v14 | v15 && !a7)
  {
    v17 = *(self + 10);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001C24A4;
    v18[3] = &unk_10099C2A0;
    v18[4] = self;
    v19 = v14;
    v20 = v16;
    v21 = v13;
    dispatch_async(v17, v18);
  }
}

- (void)updatesEngine:(id)a3 didUpdateNearbyObjects:(id)a4
{
  v5 = a4;
  v6 = [*(self + 44) token];

  if (v6)
  {
    v7 = *(self + 10);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001C26BC;
    v8[3] = &unk_10098A2E8;
    v8[4] = self;
    v9 = v5;
    dispatch_async(v7, v8);
  }
}

- (BOOL)airPodsProxCardSampleTooOld:(id)a3
{
  v4 = a3;
  v5 = [*(self + 44) innerBoundary];
  if ([v5 devicePresencePreset] == 1)
  {
    v6 = [v4 model];
    v7 = [(NIServerDevicePresenceSession *)self isAirPods:CBProductIDFromNSString()];

    if (v7)
    {
      v8 = +[NSUserDefaults standardUserDefaults];
      [v8 doubleForKey:@"NIDevicePresenceMaxSampleAgeOverrideSeconds"];
      if (v9 >= 600.0 || v9 <= 1.0)
      {
        v11 = 5.0;
      }

      else
      {
        v11 = v9;
      }

      v12 = sub_100005288();
      [v4 machContinuousTimeSeconds];
      v14 = v13;
      LOBYTE(v7) = v13 < v12 - v11;
      if (v13 < v12 - v11)
      {
        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_INFO))
        {
          v17 = 134218240;
          v18 = v14;
          v19 = 2048;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "#ses-devicepresence,Ignoring sample with a timestamp of %f, which is more than %f seconds old.", &v17, 0x16u);
        }
      }
    }
  }

  else
  {

    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 16) = 0;
  *(self + 136) = 0;
  *(self + 168) = 0;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 52) = 1065353216;
  *(self + 27) = 850045863;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 34) = 0;
  *(self + 280) = 0u;
  *(self + 296) = 0u;
  *(self + 78) = 1065353216;
  *(self + 336) = 0;
  *(self + 344) = 0;
  return self;
}

@end