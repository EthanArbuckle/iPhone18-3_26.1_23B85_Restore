void sub_100001310(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v5 = +[SignalMonitor sharedInstance];
  [v5 handleXPCEvent:v2];
  v3 = +[DeviceContext sharedInstance];
  [v3 handleXPCEvent:v2];
  v4 = +[MobileChargingController sharedInstance];
  [v4 handleXPCEvent:v2];
}

id sub_100001600()
{
  if (qword_100036BC0 != -1)
  {
    sub_100018CF0();
  }

  v1 = qword_100036CE8;

  return v1;
}

id sub_1000016CC(uint64_t a1)
{
  v2 = qword_100036C18;
  if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NFC session ended. Dropping the resource hint", v5, 2u);
  }

  [*(a1 + 32) setNfcActive:0];
  v3 = [*(a1 + 32) nfcResourceHint];
  [v3 updateState:0];

  return [*(a1 + 32) setNfcTransaction:0];
}

void sub_100003058(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000308C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1000030A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100003184(id a1)
{
  qword_100036AD0 = objc_alloc_init(ChargeDurationPredictor);

  _objc_release_x1();
}

void sub_1000035B0(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Querying model for scheme %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) predictor];
  v6 = (a1 + 40);
  v5 = *(a1 + 40);
  v16 = 0;
  v7 = [v4 chargePredictionOutputOfScheme:v5 withError:&v16];
  v8 = v16;

  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = [v9 log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100018594(v6, v8, v10);
    }
  }

  else
  {
    v11 = [v9 mainQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003780;
    v13[3] = &unk_10002C530;
    v12 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v15 = v12;
    v14 = v7;
    dispatch_async(v11, v13);
  }
}

id sub_100003780(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"predictorOutput"];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) predictorOutput];
  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = *(a1 + 32);

  return [v5 didChangeValueForKey:@"predictorOutput"];
}

void sub_100003C5C(id a1)
{
  qword_100036AE0 = objc_alloc_init(AnalyticsLogger);

  _objc_release_x1();
}

void sub_100003E90(id *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v8 = v7;
  v9 = v6;
  v10 = a1[8];
  v11 = a1[9];
  AnalyticsSendEventLazy();
}

id sub_100003F9C(uint64_t a1)
{
  [*(a1 + 32) timeIntervalSinceDate:*(a1 + 40)];
  v7[0] = @"Duration";
  v3 = [NSNumber numberWithLong:v2];
  v4 = *(a1 + 48);
  v8[0] = v3;
  v8[1] = v4;
  v7[1] = @"PowerMode";
  v7[2] = @"ExitReason";
  v9 = *(a1 + 56);
  v7[3] = @"StartingBatteryLevel";
  v7[4] = @"EndingBatteryLevel";
  v10 = *(a1 + 72);
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:5];

  return v5;
}

void sub_100004214(id a1)
{
  qword_100036AF8 = objc_alloc_init(InUseChargingMode);

  _objc_release_x1();
}

void sub_100004834(id a1)
{
  qword_100036B08 = objc_alloc_init(LongChargingMode);

  _objc_release_x1();
}

void sub_100004FF8(id a1)
{
  qword_100036B20 = objc_alloc_init(RestrictedPerfMode);

  _objc_release_x1();
}

void sub_100005C70(id a1)
{
  qword_100036B30 = objc_alloc_init(AcceleratedChargingMode);

  _objc_release_x1();
}

const __CFString *sub_1000061C8(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_10002C668[a1 - 1];
  }
}

void sub_100006FD8(uint64_t a1)
{
  v2 = os_transaction_create();
  [*(a1 + 32) setTransaction:v2];

  v16 = +[NSXPCConnection currentConnection];
  v3 = [[NSNumber alloc] initWithInteger:{objc_msgSend(v16, "processIdentifier")}];
  v4 = qword_100036B38;
  if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "restoring resources from %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [ResourceHintWithProperties alloc];
        v12 = [*(a1 + 40) objectForKeyedSubscript:v10];
        v13 = [(ResourceHintWithProperties *)v11 initWithResourceHint:v12 andPid:v3];

        if (v13)
        {
          v14 = [*(a1 + 32) resourceHints];
          v15 = [(ResourceHintWithProperties *)v13 description];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) evaluatePowerModes];
  [*(a1 + 32) setTransaction:0];
}

void sub_100007380(uint64_t a1)
{
  v2 = [[NSNumber alloc] initWithInteger:{objc_msgSend(*(a1 + 32), "processIdentifier")}];
  v3 = [[ResourceHintWithProperties alloc] initWithResourceHint:*(a1 + 40) andPid:v2];
  v4 = [*(a1 + 48) resourceHints];
  v5 = [*(a1 + 40) description];
  [v4 setObject:v3 forKeyedSubscript:v5];

  v6 = qword_100036B38;
  if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    v9 = [v7 description];
    v10 = *(a1 + 56);
    v11 = [(ResourceHintWithProperties *)v3 pid];
    v14 = 138413058;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2048;
    v21 = [(ResourceHintWithProperties *)v3 state];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ResourceManager: creating resource %@ with UUID %@ for pid %@ with state: %lu", &v14, 0x2Au);
  }

  [*(a1 + 48) evaluatePowerModes];
  [*(a1 + 48) saveState:v3];
  v12 = *(a1 + 48);
  v13 = [(ResourceHintWithProperties *)v3 pid];
  [v12 monitorProcessExit:{objc_msgSend(v13, "intValue")}];

  [*(a1 + 48) setTransaction:0];
}

void sub_100007670(uint64_t a1)
{
  v2 = os_transaction_create();
  [*(a1 + 32) setTransaction:v2];

  v3 = [*(a1 + 32) resourceHints];
  v4 = [*(a1 + 40) description];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = v5;
  if (!v5)
  {
    v7 = [[NSNumber alloc] initWithInteger:{objc_msgSend(*(a1 + 48), "processIdentifier")}];
    v6 = [[ResourceHintWithProperties alloc] initWithResourceHint:*(a1 + 40) andPid:v7];
    v8 = [*(a1 + 32) resourceHints];
    v9 = [(ResourceHintWithProperties *)v6 description];
    [v8 setObject:v6 forKeyedSubscript:v9];

    v10 = qword_100036B38;
    if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = v10;
      v13 = [v11 description];
      v14 = [(ResourceHintWithProperties *)v6 uuid];
      v15 = [(ResourceHintWithProperties *)v6 pid];
      v27 = 138413058;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v15;
      v33 = 2048;
      v34 = [(ResourceHintWithProperties *)v6 state];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "ResourceManager: updateResourceHint creating resource %@ with UUID %@ for pid %@ with state: %lu", &v27, 0x2Au);
    }

    v16 = *(a1 + 32);
    v17 = [(ResourceHintWithProperties *)v6 pid];
    [v16 monitorProcessExit:{objc_msgSend(v17, "intValue")}];
  }

  (*(*(a1 + 56) + 16))();
  v18 = [*(a1 + 40) state];
  v19 = [(ResourceHintWithProperties *)v6 state];
  if (!v5 || v18 != v19)
  {
    v20 = qword_100036B38;
    if (os_log_type_enabled(qword_100036B38, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 40);
      v22 = v20;
      v23 = [v21 uuid];
      v24 = [*(a1 + 40) description];
      v25 = [(ResourceHintWithProperties *)v6 state];
      v26 = [*(a1 + 40) state];
      v27 = 138413058;
      v28 = v23;
      v29 = 2112;
      v30 = v24;
      v31 = 2048;
      v32 = v25;
      v33 = 2048;
      v34 = v26;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "updating resource state for %@:%@ from %lu to %lu", &v27, 0x2Au);
    }

    -[ResourceHintWithProperties setState:](v6, "setState:", [*(a1 + 40) state]);
    [*(a1 + 32) evaluatePowerModes];
    [*(a1 + 32) saveState:v6];
  }

  [*(a1 + 32) setTransaction:0];
}

void sub_100007B94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[NSNumber alloc] initWithInteger:*(a1 + 40)];
  [v1 handleProcessExit:v2];
}

void sub_100008828(id a1)
{
  qword_100036B48 = objc_alloc_init(ResourceManager);

  _objc_release_x1();
}

id sub_10000973C(uint64_t a1)
{
  v2 = [NSNumber numberWithBool:IOPSDrawingUnlimitedPower()];
  v3 = [*(a1 + 32) currentContext];
  [v3 setObject:v2 forKeyedSubscript:@"kPluggedInContext"];

  [*(a1 + 32) handleBatteryLevelChange];
  v4 = *(a1 + 32);

  return [v4 handleAdapterDetails];
}

id *sub_100009A24(id *result, unsigned int a2)
{
  if (a2 <= 2)
  {
    return [result[4] setObject:off_10002C7E8[a2] forKeyedSubscript:@"kCSPNStateContext"];
  }

  return result;
}

void sub_10000A184(id a1)
{
  qword_100036B80 = objc_alloc_init(DeviceContext);

  _objc_release_x1();
}

void sub_10000A508(id a1)
{
  qword_100036B98 = objc_alloc_init(CPMTrialManager);

  _objc_release_x1();
}

void sub_10000A6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A6DC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = objc_loadWeakRetained(&to);
    [v5 updateFactors];
  }

  objc_destroyWeak(&to);
}

void sub_10000AEAC(id a1)
{
  v1 = os_log_create("com.apple.powerexperienced", "powermodesserice");
  v2 = qword_100036BB8;
  qword_100036BB8 = v1;

  qword_100036BA8 = objc_alloc_init(PowerModesService);

  _objc_release_x1();
}

void sub_10000B370(uint64_t a1)
{
  v2 = qword_100036BB8;
  if (os_log_type_enabled(qword_100036BB8, OS_LOG_TYPE_ERROR))
  {
    sub_100018BF8(a1, v2);
  }
}

void sub_10000B474(uint64_t a1)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [*(a1 + 32) clients];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v22;
    *&v4 = 138412802;
    v19 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 interestedModes];
        v10 = [v9 containsObject:*(a1 + 40)];

        if (v10)
        {
          v11 = qword_100036BB8;
          if (os_log_type_enabled(qword_100036BB8, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v11;
            v13 = [v8 identifer];
            v14 = *(a1 + 40);
            v15 = *(a1 + 48);
            *buf = v19;
            v26 = v13;
            v27 = 2112;
            v28 = v14;
            v29 = 1024;
            v30 = v15;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating client %@ for mode %@:%d", buf, 0x1Cu);
          }

          v16 = [v8 connection];

          if (v16)
          {
            v17 = [v8 connection];
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_10000B6CC;
            v20[3] = &unk_10002C878;
            v20[4] = v8;
            v18 = [v17 remoteObjectProxyWithErrorHandler:v20];
            [v18 updateState:*(a1 + 48) forMode:*(a1 + 40)];
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v5);
  }
}

void sub_10000B6CC(uint64_t a1)
{
  v2 = qword_100036BB8;
  if (os_log_type_enabled(qword_100036BB8, OS_LOG_TYPE_ERROR))
  {
    sub_100018C74(a1, v2);
  }
}

void sub_10000B81C(uint64_t a1)
{
  v2 = qword_100036BB8;
  if (os_log_type_enabled(qword_100036BB8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registering client %@ for modes %@", &v7, 0x16u);
  }

  v5 = [[PowerModesClient alloc] initWithConnection:*(a1 + 48) identifier:*(a1 + 32) interestedModes:*(a1 + 40)];
  v6 = [*(a1 + 56) clients];
  [v6 addObject:v5];

  [*(a1 + 56) initialStateUpdateForClient:v5];
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_100001600();
  v2 = qword_100036CE8;
  qword_100036CE8 = v1;

  v3 = sub_100001600();
  dispatch_sync(v3, &stru_10002C8C0);

  v4 = sub_100001600();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v4, &stru_10002C900);

  dispatch_main();
}

void sub_10000BB60(id a1)
{
  v10 = +[ResourceManager sharedInstance];
  [v10 start];
  v1 = +[SignalMonitor sharedInstance];
  [v1 start];
  v2 = +[DeviceContext sharedInstance];
  [v2 start];
  v3 = +[PowerModesService sharedInstance];
  [v3 start];
  v4 = +[PowerModesManager sharedInstance];
  [v4 start];
  v5 = +[PowerTargetControllerService sharedInstance];
  [v5 start];
  v6 = +[PowerTargetController sharedInstance];
  [v6 start];
  v7 = +[MobileChargingController sharedInstance];
  [v7 start];
  v8 = +[CLPCPolicyInterfaceHelper sharedInstance];
  [v8 registerForTrial];
  v9 = +[PowerMitigationsManager sharedInstance];
  [v9 start];
}

void sub_10000BCCC(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.powerexperieced.mainQueue", v3);
  v2 = qword_100036CE8;
  qword_100036CE8 = v1;
}

void sub_10000BD94(id a1)
{
  qword_100036BD0 = objc_alloc_init(SMCSensorExchangeHelper);

  _objc_release_x1();
}

void sub_10000BED8(uint64_t a1)
{
  v2 = qword_100036BD8;
  if (os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [NSNumber numberWithUnsignedInteger:v3];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating CLTM with charging policy: slow: %@", &v6, 0xCu);
  }

  *(&xmmword_100036CF0 + 1) = *(a1 + 32);
  if (sub_10000C008() && os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_ERROR))
  {
    sub_100018D18();
  }

  ++BYTE2(xmmword_100036CF0);
}

uint64_t sub_10000C008()
{
  v0 = sub_100001600();
  dispatch_assert_queue_V2(v0);

  v1 = sub_10000CB44();
  if (v1 || !dword_100036BE0)
  {
    if (os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018DC8();
    }
  }

  else
  {
    strcpy(v5, "zEPE");
    v26 = xmmword_100036CF0;
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    memset(outputStruct, 0, sizeof(outputStruct));
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v31 = unk_100036D40;
    v32 = xmmword_100036D50;
    v27 = *&dword_100036D00;
    v28 = xmmword_100036D10;
    outputStructCnt = 168;
    v22 = 0;
    BYTE2(v25[5]) = 6;
    inputStruct = 2051362885;
    v25[2] = 120;
    v33 = qword_100036D60;
    v29 = unk_100036D20;
    v30 = xmmword_100036D30;
    v2 = IOConnectCallStructMethod(dword_100036BE0, 2u, &inputStruct, 0xA8uLL, outputStruct, &outputStructCnt);
    if (v2 || (v1 = 0, BYTE8(v14)))
    {
      v3 = qword_100036BD8;
      if (os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v8 = v5;
        v9 = 1024;
        v10 = v2;
        v11 = 1024;
        v12 = BYTE8(v14);
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Write failed for key '%s' (0x%X, 0x%X)", buf, 0x18u);
      }

      if (BYTE8(v14) == 132 && os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018D88();
      }

      v1 = v2;
    }
  }

  if (dword_100036BE0)
  {
    sub_10000CC00();
  }

  return v1;
}

void sub_10000C2AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = qword_100036BD8;
  if (os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [NSNumber numberWithUnsignedInteger:v4];
    v7 = 138412546;
    v8 = v6;
    v9 = 2048;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating CLTM with mobile charging policy: %@, %f", &v7, 0x16u);
  }

  dword_100036D00 = LODWORD(v2);
  if (sub_10000C008() && os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_ERROR))
  {
    sub_100018D18();
  }

  ++BYTE2(xmmword_100036CF0);
}

void sub_10000C4A0(uint64_t a1)
{
  v2 = qword_100036BD8;
  if (os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138412546;
    v13 = v3;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating SMC with debug mode %@:%d", &v12, 0x12u);
  }

  LODWORD(v5) = 0;
  if (*(a1 + 40) == 1)
  {
    v6 = [*(a1 + 32) isEqualToString:{@"RestrictedPerfMode", 0.0}];
    LODWORD(v5) = 1.0;
    if ((v6 & 1) == 0)
    {
      v7 = [*(a1 + 32) isEqualToString:{@"InUseChargingMode", v5}];
      LODWORD(v5) = 2.0;
      if ((v7 & 1) == 0)
      {
        v8 = [*(a1 + 32) isEqualToString:{@"AcceleratedChargingMode", v5}];
        LODWORD(v5) = 3.0;
        if ((v8 & 1) == 0)
        {
          v9 = [*(a1 + 32) isEqualToString:{@"LongChargingMode", v5}];
          LODWORD(v5) = 4.0;
          if ((v9 & 1) == 0)
          {
            v10 = [*(a1 + 32) isEqualToString:{@"ActiveWarmWorkload", v5}];
            LODWORD(v5) = 5.0;
            if ((v10 & 1) == 0)
            {
              v11 = [*(a1 + 32) isEqualToString:{@"DefaultMode", v5}];
              LODWORD(v5) = 0;
              if (v11)
              {
                *&v5 = 6.0;
              }
            }
          }
        }
      }
    }
  }

  DWORD2(xmmword_100036CF0) = LODWORD(v5);
  if (sub_10000C008() && os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_ERROR))
  {
    sub_100018D18();
  }

  ++BYTE2(xmmword_100036CF0);
}

void sub_10000C6D4(uint64_t a1)
{
  v2 = qword_100036BD8;
  if (os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [NSNumber numberWithUnsignedInteger:v3];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating CLTM with thermal policy %@", &v6, 0xCu);
  }

  *(&xmmword_100036CF0 + 3) = *(a1 + 32);
  if (sub_10000C008() && os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_ERROR))
  {
    sub_100018E38();
  }

  ++BYTE2(xmmword_100036CF0);
}

void sub_10000C88C(uint64_t a1)
{
  v2 = qword_100036BD8;
  if (os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [NSNumber numberWithUnsignedInteger:v3];
    *buf = 138412290;
    *&v25 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating Inductive charging power policy %@", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v27 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(v28, 0, sizeof(v28));
  outputStruct = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  strcpy(v12, "WAXC");
  *buf = 1463900227;
  BYTE6(v27) = 9;
  v11 = 80;
  v7 = sub_10000CB44();
  if (v7 || !dword_100036BE0)
  {
    if (os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018DC8();
    }
  }

  else
  {
    IOConnectCallStructMethod(dword_100036BE0, 2u, buf, 0x50uLL, &outputStruct, &v11);
    BYTE6(v27) = 6;
    *buf = 1463900227;
    DWORD2(v26) = HIDWORD(v20);
    BYTE12(v27) = v6 != 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    outputStruct = 0u;
    v20 = 0u;
    v8 = IOConnectCallStructMethod(dword_100036BE0, 2u, buf, 0x50uLL, &outputStruct, &v11);
    v9 = BYTE8(v21);
    if (v8 | BYTE8(v21))
    {
      v7 = v8;
      v10 = qword_100036BD8;
      if (os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_ERROR))
      {
        *v13 = 136315650;
        v14 = v12;
        v15 = 1024;
        v16 = v7;
        v17 = 1024;
        v18 = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Write failed for key '%s' (0x%X, 0x%X)", v13, 0x18u);
        v9 = BYTE8(v21);
      }

      if (v9 == 132 && os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_ERROR))
      {
        sub_100018D88();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  if (dword_100036BE0)
  {
    sub_10000CC00();
  }

  if (v7)
  {
    if (os_log_type_enabled(qword_100036BD8, OS_LOG_TYPE_ERROR))
    {
      sub_100018EA8();
    }
  }
}

uint64_t sub_10000CB44()
{
  v0 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (!MatchingService)
  {
    v3 = 3758097136;
LABEL_7:
    dword_100036BE0 = 0;
    return v3;
  }

  v2 = MatchingService;
  v3 = IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_100036BE0);
  IOObjectRelease(v2);
  if (v3)
  {
    goto LABEL_7;
  }

  if (!dword_100036BE0)
  {
    goto LABEL_7;
  }

  v3 = IOConnectCallScalarMethod(dword_100036BE0, 0, 0, 0, 0, 0);
  if (v3)
  {
    goto LABEL_7;
  }

  return v3;
}

uint64_t sub_10000CC00()
{
  result = IOConnectCallScalarMethod(dword_100036BE0, 1u, 0, 0, 0, 0);
  if (!result)
  {
    v1 = dword_100036BE0;

    return IOServiceClose(v1);
  }

  return result;
}

uint64_t sub_10000CD1C(uint64_t a1)
{
  qword_100036BF0 = [[CameraMonitor alloc] initWithQueue:*(a1 + 32)];

  return _objc_release_x1();
}

void sub_10000D0C0(id a1)
{
  qword_100036BF8 = objc_alloc_init(PowerMitigationsManager);

  _objc_release_x1();
}

void sub_10000D3A8(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100018EFC();
  }

  v3 = [*(a1 + 32) batteryLifeManager];
  v21 = 0;
  v4 = [v3 mitigationWithError:&v21];
  v5 = v21;

  if (v5)
  {
    v6 = [*(a1 + 32) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100018F30();
    }

    v7 = 0;
  }

  else
  {
    v7 = [v4 level];
  }

  [*(a1 + 32) setIblmMitigationLevel:v7];
  v8 = [*(a1 + 32) defaults];
  v9 = [v8 valueForKey:@"PowerMitigationSession_Source"];

  v10 = [*(a1 + 32) defaults];
  v11 = [v10 valueForKey:@"PowerMitigationSession_Reason"];
  v12 = [v11 integerValue];

  v13 = [*(a1 + 32) defaults];
  v14 = [v13 valueForKey:@"PowerMitigationSession_Level"];
  v15 = [v14 integerValue];

  v16 = [*(a1 + 32) defaults];
  v17 = [v16 valueForKey:@"PowerMitigationSession_Duration"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [[PMPowerMitigationSession alloc] initWithSource:v9 reason:v12 level:v15 duration:v19];
  [*(a1 + 32) setPowerMitigationSession:v20];

  [*(a1 + 32) evaluateMitigations];
}

void sub_10000D628(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100018F98();
  }

  v3 = [*(a1 + 32) defaults];
  [v3 removeObjectForKey:@"iblmMitigationLevel"];

  v4 = [*(a1 + 32) defaults];
  [v4 removeObjectForKey:@"PowerMitigationSession_Source"];

  v5 = [*(a1 + 32) defaults];
  [v5 removeObjectForKey:@"PowerMitigationSession_Reason"];

  v6 = [*(a1 + 32) defaults];
  [v6 removeObjectForKey:@"PowerMitigationSession_Level"];

  v7 = [*(a1 + 32) defaults];
  [v7 removeObjectForKey:@"PowerMitigationSession_Duration"];
}

void sub_10000D790(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100018FCC();
  }

  v3 = [*(a1 + 32) defaults];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) iblmMitigationLevel]);
  [v3 setValue:v4 forKey:@"iblmMitigationLevel"];

  v5 = [*(a1 + 32) defaults];
  v6 = [*(a1 + 32) powerMitigationSession];
  v7 = [v6 sessionSource];
  [v5 setValue:v7 forKey:@"PowerMitigationSession_Source"];

  v8 = [*(a1 + 32) defaults];
  v9 = [*(a1 + 32) powerMitigationSession];
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 engagementReason]);
  [v8 setValue:v10 forKey:@"PowerMitigationSession_Reason"];

  v11 = [*(a1 + 32) defaults];
  v12 = [*(a1 + 32) powerMitigationSession];
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 systemWideMitigationLevel]);
  [v11 setValue:v13 forKey:@"PowerMitigationSession_Level"];

  v14 = [*(a1 + 32) defaults];
  v15 = [*(a1 + 32) powerMitigationSession];
  [v15 timeDuration];
  v16 = [NSNumber numberWithDouble:?];
  [v14 setValue:v16 forKey:@"PowerMitigationSession_Duration"];
}

void sub_10000DD80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000DE38;
  v6[3] = &unk_10002C698;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

id sub_10000DE38(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received new battery drain prediction: %@", &v5, 0xCu);
  }

  return [*(a1 + 32) handleUpdatedDrainLevelPrediction:{objc_msgSend(*(a1 + 40), "level")}];
}

void sub_10000E0F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100019130();
  }
}

void sub_10000E248(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceContext];
  v3 = [v2 objectForKeyedSubscript:@"kLPMStateStateContext"];
  v4 = [v3 BOOLValue];
  v5 = [*(a1 + 32) isLPMActive];

  if (v4 != v5)
  {
    v6 = [*(a1 + 32) deviceContext];
    v7 = [v6 objectForKeyedSubscript:@"kLPMStateStateContext"];
    [*(a1 + 32) setIsLPMActive:{objc_msgSend(v7, "BOOLValue")}];

    v8 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E36C;
    block[3] = &unk_10002C738;
    block[4] = *(a1 + 32);
    dispatch_async(v8, block);
  }
}

id sub_10000E36C(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) isLPMActive];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Evaluating mitigationLevel on new LPM state: %ld", &v5, 0xCu);
  }

  return [*(a1 + 32) evaluateMitigations];
}

void sub_10000E620(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100019198(a1, v2);
  }

  v3 = [*(a1 + 32) clients];
  [v3 addObject:*(a1 + 40)];

  v4 = dispatch_time(0, 1000000000);
  v5 = [*(a1 + 32) queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E730;
  v8[3] = &unk_10002C698;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  dispatch_after(v4, v5, v8);
}

void sub_10000E730(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000E7E0;
  v5[3] = &unk_10002C878;
  v5[4] = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v5];
  v4 = [*(a1 + 40) powerMitigationSession];
  [v3 didUpdateToMitigation:v4 fromMitigation:0];
}

void sub_10000E7E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100019228();
  }
}

void sub_10000E9D8(id a1)
{
  qword_100036C08 = objc_alloc_init(SignalMonitor);

  _objc_release_x1();
}

id sub_10000EC34(uint64_t a1)
{
  string = xpc_dictionary_get_string(*(a1 + 32), _xpc_event_key_name);
  if (!strcmp(string, "com.apple.request.hipuncap"))
  {
    v4 = *(a1 + 40);

    return [v4 handleNFCSession];
  }

  else
  {
    result = strcmp(string, "com.apple.coreaudio.IORunning");
    if (!result)
    {
      v5 = *(a1 + 40);

      return [v5 handleAudioSession];
    }
  }

  return result;
}

void sub_10000EF90(uint64_t a1)
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_PlayingSessionsDescriptionAttribute];

  if ([v3 count])
  {
    v4 = qword_100036C18;
    if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AVSystemControllerInit: audio session is active %@", &v12, 0xCu);
    }

    v5 = [*(a1 + 32) audioSessionResourceHint];

    if (v5)
    {
      v6 = [*(a1 + 32) audioSessionResourceHint];
      [v6 updateState:1];
    }

    else
    {
      v6 = [[ResourceHint alloc] initWithResourceType:15 andState:1];
      [*(a1 + 32) setAudioSessionResourceHint:v6];
    }
  }

  v7 = +[AVSystemController sharedAVSystemController];
  v8 = [v7 attributeForKey:AVSystemController_CallIsActive];

  v9 = qword_100036C18;
  if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "AVSystemControllerInit: phoneCall is active %@", &v12, 0xCu);
  }

  if ([v8 BOOLValue])
  {
    v10 = [*(a1 + 32) phoneCallResourceHint];

    if (v10)
    {
      v11 = [*(a1 + 32) phoneCallResourceHint];
      [v11 updateState:0];
    }

    else
    {
      v11 = [[ResourceHint alloc] initWithResourceType:16 andState:1];
      [*(a1 + 32) setPhoneCallResourceHint:v11];
    }
  }
}

void sub_10000F278(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = qword_100036C18;
    if (os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received audio session notification %@", &v14, 0xCu);
    }

    v4 = [*(a1 + 32) userInfo];
    v5 = [v4 objectForKeyedSubscript:AVSystemController_SomeSessionIsPlayingDidChangeNotificationParameter_Sessions];

    v6 = [v5 count];
    v7 = qword_100036C18;
    v8 = os_log_type_enabled(qword_100036C18, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Audio session started", &v14, 2u);
      }

      v9 = [*(a1 + 40) audioSessionResourceHint];

      if (!v9)
      {
        v11 = [[ResourceHint alloc] initWithResourceType:15 andState:1];
        [*(a1 + 40) setAudioSessionResourceHint:v11];
        goto LABEL_15;
      }

      v10 = [*(a1 + 40) audioSessionResourceHint];
      v11 = v10;
      v12 = 1;
    }

    else
    {
      if (v8)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Audio session ended", &v14, 2u);
      }

      v13 = [*(a1 + 40) audioSessionResourceHint];

      if (!v13)
      {
        goto LABEL_16;
      }

      v10 = [*(a1 + 40) audioSessionResourceHint];
      v11 = v10;
      v12 = 0;
    }

    [v10 updateState:v12];
LABEL_15:

LABEL_16:
  }
}

void sub_10000FCD0(id a1)
{
  if (qword_100036C40 != -1)
  {
    sub_1000193CC();
  }

  qword_100036C30 = objc_alloc_init(CLPCPolicyInterfaceHelper);

  _objc_release_x1();
}

id sub_10000FFE4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100036C48;
  v7 = qword_100036C48;
  if (!qword_100036C48)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100011004;
    v3[3] = &unk_10002CA80;
    v3[4] = &v4;
    sub_100011004(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000100AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100011004(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100036C50)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100011148;
    v4[4] = &unk_10002C960;
    v4[5] = v4;
    v5 = off_10002CAA0;
    v6 = 0;
    qword_100036C50 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100036C50)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CLPCInternalInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10001974C();
  }

  qword_100036C48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100011148(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100036C50 = result;
  return result;
}

void sub_1000111BC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t sub_100011298(uint64_t a1)
{
  qword_100036C60 = [[InPocketMonitor alloc] initWithQueue:*(a1 + 32)];

  return _objc_release_x1();
}

void sub_1000114EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received suppression event %@", &v13, 0xCu);
  }

  v5 = [v3 type];
  if (v5)
  {
    if (v5 == 2)
    {
      v6 = [*(a1 + 32) log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_1000197A8();
      }
    }

    else
    {
      if (v5 != 1)
      {
        goto LABEL_13;
      }

      v6 = [*(a1 + 32) log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_1000197DC();
      }
    }
  }

  else
  {
    v6 = [*(a1 + 32) log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100019774();
    }
  }

LABEL_13:
  v7 = [v3 facedownState];
  if (!v7)
  {
    v8 = [*(a1 + 32) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100019810();
    }

    goto LABEL_22;
  }

  if (v7 == 2)
  {
    v8 = [*(a1 + 32) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100019844();
    }

    goto LABEL_22;
  }

  if (v7 == 1)
  {
    v8 = [*(a1 + 32) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100019878();
    }

LABEL_22:
  }

  if ([v3 type] == 1 && objc_msgSend(v3, "facedownState") == 2)
  {
    v9 = [*(a1 + 32) log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Detected in pocket. Recording time", &v13, 2u);
    }

    v10 = +[NSDate now];
    [*(a1 + 32) setInPocketStartTime:v10];

    [*(a1 + 32) setInPocket:1];
LABEL_32:
    [*(a1 + 32) updateDelegates:{objc_msgSend(*(a1 + 32), "inPocket")}];
    goto LABEL_33;
  }

  if ([*(a1 + 32) inPocket])
  {
    v11 = [*(a1 + 32) log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Detected not in pocket", &v13, 2u);
    }

    [*(a1 + 32) setInPocket:0];
    v12 = +[NSDate now];
    [*(a1 + 32) setInPocketEndTime:v12];

    goto LABEL_32;
  }

LABEL_33:
}

void sub_100011B9C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = +[RestrictedPerfMode powerModeInstance];
  [*(*(a1 + 32) + 8) setObject:v5 forKeyedSubscript:@"RestrictedPerfMode"];

  v6 = +[InUseChargingMode powerModeInstance];
  [*(*(a1 + 32) + 8) setObject:v6 forKeyedSubscript:@"InUseChargingMode"];

  v7 = +[AcceleratedChargingMode powerModeInstance];
  [*(*(a1 + 32) + 8) setObject:v7 forKeyedSubscript:@"AcceleratedChargingMode"];

  v8 = +[LongChargingMode powerModeInstance];
  [*(*(a1 + 32) + 8) setObject:v8 forKeyedSubscript:@"LongChargingMode"];

  v9 = +[InBoxUpdateMode powerModeInstance];
  [*(*(a1 + 32) + 8) setObject:v9 forKeyedSubscript:@"InBoxUpdteMode"];

  v10 = qword_100036C70;
  if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(a1 + 32) + 8);
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Initialized power modes %@", &v12, 0xCu);
  }
}

void sub_100011D60(id a1)
{
  v1 = os_log_create("com.apple.powerexperienced", "powermodesmanager");
  v2 = qword_100036C70;
  qword_100036C70 = v1;

  qword_100036C78 = objc_alloc_init(PowerModesManager);

  _objc_release_x1();
}

id sub_100011F94(uint64_t a1)
{
  v2 = MKBDeviceUnlockedSinceBoot();
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 restoreState];
  }

  else
  {

    return [v3 clearState];
  }
}

id sub_1000122B8(uint64_t a1)
{
  v2 = qword_100036C70;
  if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Evaluating power modes on DeviceContext change", v4, 2u);
  }

  return [*(a1 + 32) evaluatePowerModes];
}

void sub_100012758(uint64_t a1)
{
  [*(a1 + 32) setPendingDelayedEntryTimer:0];
  v2 = [*(a1 + 40) overridePresent];

  if (!v2)
  {
    v3 = qword_100036C70;
    if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = v3;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 56);
      v16 = 138412546;
      v17 = v7;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Evaluating %@ after entry delay %f seconds", &v16, 0x16u);
    }

    v9 = *(a1 + 48);
    v10 = [*(a1 + 40) resourceManager];
    v11 = [v10 resourceHints];
    v12 = [*(a1 + 40) deviceContext];
    v13 = [v12 currentContext];
    LODWORD(v9) = [v9 evaluatePowerModeWithResourceHints:v11 andContext:v13];

    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    if (v9)
    {
      [v14 enterMode:v15];
    }

    else
    {
      [v14 exitMode:v15];
    }
  }
}

id sub_100012D78(uint64_t a1)
{
  result = [*(a1 + 32) getState];
  if (result)
  {
    v3 = qword_100036C70;
    if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 48);
      v9 = 138412546;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Exiting mode %@ after max engagement duration %f", &v9, 0x16u);
    }

    [*(a1 + 32) updateExitReason:4];
    return [*(a1 + 40) exitMode:*(a1 + 32)];
  }

  return result;
}

void sub_10001362C(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) getModeFromName:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    [v3 disablePowerMode];
    [*(a1 + 32) exitMode:v4];
    v5 = *(*(a1 + 48) + 16);
  }

  else
  {
    v6 = qword_100036C70;
    if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_ERROR))
    {
      sub_10001995C(v2, v6, v7, v8, v9, v10, v11, v12);
    }

    v5 = *(*(a1 + 48) + 16);
  }

  v5();
}

void sub_1000137AC(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) getModeFromName:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    [v3 enablePowerMode];
    v5 = *(*(a1 + 48) + 16);
  }

  else
  {
    v6 = qword_100036C70;
    if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_ERROR))
    {
      sub_10001995C(v2, v6, v7, v8, v9, v10, v11, v12);
    }

    v5 = *(*(a1 + 48) + 16);
  }

  v5();
}

void sub_100013930(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) getModeFromName:*(a1 + 40)];
  if (v3)
  {
    v4 = *(a1 + 56);
    v5 = qword_100036C70;
    v6 = os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_DEFAULT);
    if (v4 == 1)
    {
      if (v6)
      {
        v7 = *v2;
        v18 = 138412290;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "OVERRIDE: Entering %@", &v18, 0xCu);
      }

      [*(a1 + 32) enterMode:v3];
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
    }

    else
    {
      if (v6)
      {
        v17 = *v2;
        v18 = 138412290;
        v19 = v17;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "OVERRIDE: Exiting %@", &v18, 0xCu);
      }

      [*(a1 + 32) exitMode:v3];
      v8 = *(a1 + 32);
      v9 = 0;
    }

    [v8 setOverridePresent:v9];
  }

  else
  {
    v10 = qword_100036C70;
    if (os_log_type_enabled(qword_100036C70, OS_LOG_TYPE_ERROR))
    {
      sub_10001995C(v2, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100013B9C(uint64_t a1)
{
  v2 = [*(a1 + 32) getModeFromName:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 allowOnCharger:*(a1 + 56)];
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) evaluatePowerModes];
}

void sub_100013D04(uint64_t a1)
{
  v2 = [*(a1 + 32) getModeFromName:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 updateEntryDelay:*(a1 + 56)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100013E64(uint64_t a1)
{
  v2 = [*(a1 + 32) getModeFromName:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 updateMaxEngagementDuration:*(a1 + 56)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100014338(id a1)
{
  v1 = os_log_create("com.apple.powerexperienced", "mobilechargingcontroller");
  v2 = qword_100036C98;
  qword_100036C98 = v1;

  qword_100036C88 = objc_alloc_init(MobileChargingController);

  _objc_release_x1();
}

id sub_1000145BC(uint64_t a1)
{
  result = [*(a1 + 32) supportedPlatform];
  if (result)
  {
    v3 = [*(a1 + 32) deviceContext];
    [v3 addObserver:*(a1 + 32) forKeyPath:@"currentContext" options:3 context:0];

    [*(a1 + 32) registerForTestDefaultsChange];
    result = MKBDeviceUnlockedSinceBoot();
    if (result)
    {
      v4 = *(a1 + 32);

      return [v4 restoreFromDefaults];
    }
  }

  return result;
}

id sub_1000146CC(uint64_t a1)
{
  [*(a1 + 32) recordMobileChargerAttach];
  v2 = *(a1 + 32);

  return [v2 evaluateChargingPolicy];
}

id sub_100014A64(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(a1 + 32) supportedPlatform];
  if (result)
  {
    v3 = [*v1 mobileChargerAttached];
    v4 = *v1;
    if (v3)
    {
      if ([v4 inPocket])
      {
        if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEBUG))
        {
          sub_100019B00();
        }

        if ([*v1 emergencyCharge])
        {
          if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEBUG))
          {
            sub_100019B34();
          }

          v5 = 0;
          v6 = 0;
          v7 = 1;
        }

        else
        {
          v5 = 0;
          v6 = 0;
          v7 = 2;
        }
      }

      else if (([*v1 emergencyCharge] & 1) != 0 || objc_msgSend(*v1, "boostMode"))
      {
        v9 = qword_100036C98;
        if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEBUG))
        {
          sub_100019A00(v1, v9);
        }

        v6 = 3;
        if ([*v1 emergencyCharge])
        {
          v7 = 3;
        }

        else
        {
          v7 = 0;
        }

        if ([*v1 boostMode])
        {
          if ([*v1 chargingScenario] != 4)
          {
            v10 = qword_100036C98;
            if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
            {
              v11 = *v1;
              v12 = v10;
              [v11 boostModeMaxEngagement];
              *buf = 134217984;
              v27 = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting timer to fire in %f to evaluate boost mode", buf, 0xCu);
            }

            [*v1 boostModeMaxEngagement];
            v15 = dispatch_time(0, (v14 * 1000000000.0));
            v16 = [*v1 queue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100014F18;
            block[3] = &unk_10002C738;
            block[4] = *v1;
            dispatch_after(v15, v16, block);
          }

          v6 = 3;
          v5 = 1;
          v7 = 4;
        }

        else
        {
          v5 = 1;
        }
      }

      else if ([*v1 activeUse])
      {
        if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEBUG))
        {
          sub_1000199CC();
        }

        v5 = 0;
        v6 = 3;
        v7 = 5;
      }

      else
      {
        v7 = 0;
        v5 = 0;
        v6 = 0;
      }

      v17 = [*v1 chargingScenario];
      if (v7 != v17)
      {
        v18 = qword_100036C98;
        if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
        {
          if ((v7 - 1) > 4)
          {
            v19 = @"MobileChargingScenarioNone";
          }

          else
          {
            v19 = *(&off_10002CBC0 + v7 - 1);
          }

          *buf = 138412290;
          v27 = v19;
          v20 = v18;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updating mobile charging policy to sceanrio %@", buf, 0xCu);
        }

        [*v1 setChargingScenario:v7];
        [*v1 logToPowerlog];
      }

      if ([*v1 currentChargingOption] == v6 && (result = objc_msgSend(*v1, "currentPowerOption"), result == v5))
      {
        if (v7 == v17)
        {
          return result;
        }
      }

      else
      {
        v21 = qword_100036C98;
        if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          v23 = [NSNumber numberWithUnsignedInteger:v6];
          v24 = [NSNumber numberWithUnsignedInteger:v5];
          *buf = 138412546;
          v27 = v23;
          v28 = 2112;
          v29 = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updating mobile charging policy: Charging %@, power %@", buf, 0x16u);
        }

        [*v1 setCurrentChargingOption:v6];
        [*v1 setCurrentPowerOption:v5];
        [*v1 updateChargingPolicyWithTemperature:v6 andPower:v5];
      }

      return [*v1 saveToDefaults];
    }

    result = [v4 chargingScenario];
    if (result)
    {
      v8 = qword_100036C98;
      if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Mobile charger detached. Clearing policy", buf, 2u);
      }

      return [*v1 clearPolicy];
    }
  }

  return result;
}

id sub_100014F18(uint64_t a1)
{
  v2 = qword_100036C98;
  if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "evaluateChargingPolicy at the end of boost mode", v4, 2u);
  }

  return [*(a1 + 32) evaluateChargingPolicy];
}

id sub_1000155BC(uint64_t a1)
{
  v2 = qword_100036C98;
  if (os_log_type_enabled(qword_100036C98, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "evaluateChargingPolicy at the end of boost mode", v4, 2u);
  }

  return [*(a1 + 32) evaluateChargingPolicy];
}

id sub_100015834(uint64_t a1)
{
  string = xpc_dictionary_get_string(*(a1 + 32), _xpc_event_key_name);
  result = strcmp(string, "com.apple.powerexperienced.testmobilechargingcontroller.changed");
  if (!result)
  {
    v4 = *(a1 + 40);

    return [v4 handleTestDefaultsChange];
  }

  return result;
}

void sub_100015B5C(id a1)
{
  v1 = os_log_create("com.apple.powerexperienced", "powertargetcontroller");
  v2 = qword_100036CB8;
  qword_100036CB8 = v1;

  qword_100036CA8 = objc_alloc_init(PowerTargetController);

  _objc_release_x1();
}

id sub_100015F10(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!a2)
  {
    a3 = 0;
  }

  [v4 setCurrentMode:a3];
  v5 = *(a1 + 32);

  return [v5 evaluatePowerTargets];
}

id sub_100016064(uint64_t a1)
{
  v2 = qword_100036CB8;
  if (os_log_type_enabled(qword_100036CB8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Evaluating power targets on DeviceContext change", v4, 2u);
  }

  return [*(a1 + 32) evaluatePowerTargets];
}

uint64_t sub_100016438(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_10002CC30 + a1 - 1);
  }
}

void sub_10001784C(id a1)
{
  v1 = os_log_create("com.apple.powerexperienced", "powertargetcontrollerservice");
  v2 = qword_100036CD0;
  qword_100036CD0 = v1;

  qword_100036CC0 = objc_alloc_init(PowerTargetControllerService);

  _objc_release_x1();
}

void sub_100017B88(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) clients];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 connection];

        if (v8)
        {
          v9 = [v7 connection];
          v10 = [v9 remoteObjectProxyWithErrorHandler:&stru_10002CCA8];
          [v10 updateState:*(a1 + 40) andLevel:*(a1 + 48)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_100017CD8(id a1, NSError *a2)
{
  v2 = qword_100036CD0;
  if (os_log_type_enabled(qword_100036CD0, OS_LOG_TYPE_ERROR))
  {
    sub_100019CAC(v2);
  }
}

void sub_100017DF8(uint64_t a1)
{
  v2 = qword_100036CD0;
  if (os_log_type_enabled(qword_100036CD0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registering client %@", &v6, 0xCu);
  }

  v4 = [[PowerTargetControllerClient alloc] initWithConnection:*(a1 + 40) identifier:*(a1 + 32)];
  v5 = [*(a1 + 48) clients];
  [v5 addObject:v4];
}

void sub_1000180F4(id a1)
{
  qword_100036CE0 = objc_alloc_init(InBoxUpdateMode);

  _objc_release_x1();
}

void sub_100018594(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [NSNumber numberWithUnsignedInteger:*a1];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to fetch prediction for scheme %@: %@", &v6, 0x16u);
}

void sub_100018690(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error creating CLPC User Client %@", &v2, 0xCu);
}

void sub_100018774(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "evaluatePowerMode: isUnlocked %d", v2, 8u);
}

void sub_1000187F0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "removing resourcehint %@", &v2, 0xCu);
}

void sub_100018868(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "savedResourcesMutable %@", &v2, 0xCu);
}

void sub_100018938(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "batteryData %llu", &v3, 0xCu);
}

void sub_100018BF8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to update initial state for client %@", &v3, 0xCu);
}

void sub_100018C74(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to update client %@", &v3, 0xCu);
}

void sub_100018D18()
{
  sub_1000030F8();
  sub_100003080();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100018DC8()
{
  sub_1000030F8();
  sub_100003080();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100018E38()
{
  sub_1000030F8();
  sub_100003080();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100019074(void *a1, NSObject *a2)
{
  [a1 iblmMitigationLevel];
  sub_100003104();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IBLM MitigationLevel is unchanged. MitigationLevel: %ld", v3, 0xCu);
}

void sub_100019198(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 40) processIdentifier];
  v4[0] = 67109120;
  v4[1] = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Registering PID: %d", v4, 8u);
}

void sub_10001930C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to register for AV System Controller notifications %@", &v2, 0xCu);
}

void sub_1000193E0()
{
  sub_100003074();
  sub_100003080();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001941C()
{
  sub_100003104();
  sub_100003080();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001948C()
{
  sub_100003104();
  sub_100003080();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000194FC()
{
  sub_100003074();
  sub_100003080();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000195AC()
{
  sub_100003074();
  sub_100003080();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000195E8()
{
  sub_100003074();
  sub_100003080();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019624()
{
  sub_100003104();
  sub_100003080();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100019694(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  sub_1000111BC(&_mh_execute_header, a2, a3, "Failed to update CLPC with power target for workload %llu. Error: %@", *v3, *&v3[8], *&v3[16]);
}

void sub_1000198C0(void *a1, void *a2)
{
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "PowerModesManager: rejected new connection from pid %d. Not entitled", v4, 8u);
}

void sub_100019A00(id *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 emergencyCharge]);
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*a1 boostMode]);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Out of pocket emergencyCharge %@, boostMode %@", &v7, 0x16u);
}

void sub_100019BFC(void *a1, void *a2)
{
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "PowerTargetControllerService: rejected new connection from pid %d. Not entitled", v4, 8u);
}