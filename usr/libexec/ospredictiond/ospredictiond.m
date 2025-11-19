void sub_100001B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000212C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000027B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100002BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002BEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005CAB8(v3);
    }
  }
}

uint64_t sub_1000031FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000320C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000321C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000322C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000323C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000324C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000325C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000326C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000327C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000328C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000329C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000032AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005CBD4(v3);
    }
  }
}

uint64_t sub_100003310(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = *(*(a1 + 32) + 8);
  if (isKindOfClass)
  {
    objc_storeStrong((v7 + 40), a2);
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  if (!*(v7 + 40))
  {
    goto LABEL_11;
  }

  v8 = [v4 eventBody];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_11;
  }

  v9 = [v4 eventBody];
  v10 = [v9 hasStarting];

  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = [v4 eventBody];
  v12 = [v11 starting];

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 24);
  if (v14 != -1 && v14 == v12)
  {
    goto LABEL_11;
  }

  *(v13 + 24) = v12;
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = 1;
LABEL_12:

  return v15;
}

uint64_t sub_100003444(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_100003490(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10005CC78(v3);
    }
  }

  else
  {
    v7 = v5[9];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "sink completed", v8, 2u);
    }
  }
}

void sub_100003ED4(id a1)
{
  qword_1000B6950 = objc_alloc_init(_OSIAutoLPMHandler);

  _objc_release_x1();
}

uint64_t sub_100004404(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000B6958 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_100005318(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 count];
  if (v7)
  {
    v8 = v7;
    v9 = v7;
    v10 = [*(a1 + 32) objectForKeyedSubscript:v5];
    [v10 doubleValue];
    v12 = v9 / v11;

    if (v12 >= 0.02)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v13 = v6;
      v14 = [v13 countByEnumeratingWithState:&v34 objects:v44 count:16];
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      if (v14)
      {
        v18 = v14;
        v19 = *v35;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v13);
            }

            v21 = *(*(&v34 + 1) + 8 * i);
            v22 = [v21 endDate];
            v23 = [v21 startDate];
            [v22 timeIntervalSinceDate:v23];
            v25 = v24;

            v17 = v17 + v25;
            v16 = v16 + v25 * v25;
          }

          v18 = [v13 countByEnumeratingWithState:&v34 objects:v44 count:16];
        }

        while (v18);
      }

      if (v8 >= 2)
      {
        v15 = sqrt((v16 - v17 * v17 / v9) / (v8 - 1));
      }

      v42[0] = @"pctLong";
      v26 = [NSNumber numberWithDouble:v12, v34];
      v43[0] = v26;
      v42[1] = @"average";
      v27 = [NSNumber numberWithDouble:v17 / v9];
      v43[1] = v27;
      v42[2] = @"stdDev";
      v28 = [NSNumber numberWithDouble:v15];
      v43[2] = v28;
      v29 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
      [*(a1 + 40) setObject:v29 forKeyedSubscript:v5];

      v30 = *(*(a1 + 48) + 8);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = *(a1 + 40);
        v32 = v30;
        v33 = [v31 objectForKeyedSubscript:v5];
        *buf = 138412546;
        v39 = v5;
        v40 = 2112;
        v41 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Backup hour (%@) is %@", buf, 0x16u);
      }
    }
  }
}

void sub_100005814(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6 == 1)
  {
    v7 = objc_alloc_init(_OSInactivityPredictorBackupHourEntry_v1);
    v8 = [v5 objectForKeyedSubscript:@"count"];
    [v7 setCount:{objc_msgSend(v8, "intValue")}];
    goto LABEL_5;
  }

  if (v6 == 2)
  {
    v7 = objc_alloc_init(_OSInactivityPredictorBackupHourEntry_v2);
    v8 = [v5 objectForKeyedSubscript:@"pctLong"];
    [v8 doubleValue];
    [v7 setPctLong:?];
LABEL_5:

    v9 = [v5 objectForKeyedSubscript:@"average"];
    [v9 doubleValue];
    [v7 setAverageDuration:v10 / 3600.0];

    v11 = [v5 objectForKeyedSubscript:@"stdDev"];
    [v11 doubleValue];
    [v7 setStdDev:?];

    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v12];
}

void sub_100005AA4(id a1)
{
  qword_1000B6970 = objc_alloc_init(OSInactivityPredictionService);

  _objc_release_x1();
}

void sub_10000600C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100006038(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = a2;
    v5 = +[_OSDataProtectionStateMonitor dataProtectionClassC];
    v6 = [v4 isEqualToString:v5];

    if (v6)
    {
      v7 = qword_1000B6968;
      if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Re-attempting to load lock history from underlying data source...", buf, 2u);
      }

      v8 = +[_OSLockHistory sharedInstance];
      [v8 loadHistoryFromUnderlyingDataSource];

      v9 = qword_1000B6968;
      if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Re-attempting to initialize predictor...", v11, 2u);
      }

      v10 = +[_OSInactivityPredictor predictor];
      [*(a1 + 32) setPredictor:v10];
    }
  }
}

void sub_100006168(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained refreshTrial];
    WeakRetained = v2;
  }
}

void sub_1000061AC(uint64_t a1)
{
  v2 = qword_1000B6968;
  if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Re-initializing predictor", v4, 2u);
  }

  v3 = +[_OSInactivityPredictor predictor];
  [*(a1 + 32) setPredictor:v3];
}

void sub_10000634C(uint64_t a1, void *a2)
{
  activity = a2;
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v4 = objc_alloc_init(_OSInactivityPredictionBackupManager);
    [(_OSInactivityPredictionBackupManager *)v4 backupData];
  }

  else
  {
    if (state)
    {
      goto LABEL_7;
    }

    v4 = xpc_activity_copy_criteria(activity);
    if (!xpc_equal(v4, *(a1 + 32)))
    {
      xpc_activity_set_criteria(activity, *(a1 + 32));
    }
  }

LABEL_7:
}

void sub_100006B6C(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    [*(a1 + 40) writeEvaluatedPredictorTypeToDefaults:{objc_msgSend(*(a1 + 40), "evaluatePredictorTypeWithLookahead:withIncrement:withActivity:", v3, *(a1 + 48), *(a1 + 56))}];
    if (+[OSIntelligenceUtilities isDeviceRarelyUsedRecently])
    {
      v6 = qword_1000B6968;
      if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_ERROR))
      {
        sub_10005A178(v6);
      }
    }
  }

  else if (!state)
  {
    v5 = xpc_activity_copy_criteria(v3);
    if (!xpc_equal(v5, *(a1 + 32)))
    {
      xpc_activity_set_criteria(v3, *(a1 + 32));
    }
  }
}

void sub_1000080E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained upgradePredictorIfNeeded] & 1) == 0)
    {
      [v2 scheduleModelUpgradeAfterInterval:604800.0];
      v3 = qword_1000B6968;
      if (os_log_type_enabled(qword_1000B6968, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Model upgrade failed. Will try again in 7 days.", v4, 2u);
      }
    }
  }
}

void sub_100008634(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100008678(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100008A64(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = *(a1 + 32);
  v4 = [NSDate dateWithTimeIntervalSinceNow:21600.0];
  v5 = [v3 postEngagedUntilDate:v4 inactivityOptions:state64];
}

void sub_100009698(uint64_t a1, void *a2)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        if (*(a1 + 40) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = [*(*(&v21 + 1) + 8 * i) request];
          v9 = [v8 identifier];
          v10 = [NSNumber numberWithInteger:*(a1 + 40)];
          v11 = [NSString stringWithFormat:@"%@-", v10];
          v12 = [v9 hasPrefix:v11];

          if (!v12)
          {
            continue;
          }

          v13 = [*(a1 + 32) unCenter];
          v14 = [v7 request];
          v15 = [v14 identifier];
          v27 = v15;
          v16 = [NSArray arrayWithObjects:&v27 count:1];
          [v13 removeDeliveredNotificationsWithIdentifiers:v16];
        }

        v17 = [*(a1 + 32) log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v7 request];
          v19 = [v18 identifier];
          *buf = 138412290;
          v26 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing notification %@", buf, 0xCu);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v4);
  }
}

void sub_10000990C(uint64_t a1, void *a2)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [*(a1 + 32) log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 identifier];
          *buf = 138412290;
          v24 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing pending notification %@", buf, 0xCu);
        }

        v10 = [v7 identifier];
        v11 = [NSNumber numberWithInteger:*(a1 + 40)];
        v12 = [NSString stringWithFormat:@"%@-", v11];
        v13 = [v10 hasPrefix:v12];

        if (v13)
        {
          v14 = [*(a1 + 32) unCenter];
          v15 = [v7 identifier];
          v22 = v15;
          v16 = [NSArray arrayWithObjects:&v22 count:1];
          [v14 removeDeliveredNotificationsWithIdentifiers:v16];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v4);
  }
}

void sub_100009C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009C54(uint64_t a1, void *a2)
{
  v2 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 request];
        v9 = [v8 content];
        v10 = [v9 categoryIdentifier];
        v11 = [v10 isEqual:@"fullChargeCategory"];

        if (v11)
        {
          objc_storeStrong((*(*(a1 + 32) + 8) + 40), v7);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void sub_100009FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A01C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained loadTrialFactors];
    WeakRetained = v2;
  }
}

void start()
{
  v0 = os_log_create("com.apple.osintelligence", "");
  v1 = qword_1000B69A0;
  qword_1000B69A0 = v0;

  v2 = objc_autoreleasePoolPush();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100094A30);
  v3 = qword_1000B69A0;
  if (os_log_type_enabled(qword_1000B69A0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Initializing OSInactivityPredictionService\n", buf, 2u);
  }

  v4 = +[OSInactivityPredictionService sharedInstance];
  v5 = qword_1000B6988;
  qword_1000B6988 = v4;

  v6 = qword_1000B69A0;
  if (os_log_type_enabled(qword_1000B69A0, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Init Charge prediction", v15, 2u);
  }

  v7 = +[OSChargingPredictorService sharedInstance];
  v8 = qword_1000B6990;
  qword_1000B6990 = v7;

  v9 = qword_1000B69A0;
  if (os_log_type_enabled(qword_1000B69A0, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Init Battery prediction", v14, 2u);
  }

  v10 = +[OSBatteryPredictorService sharedInstance];
  v11 = qword_1000B6998;
  qword_1000B6998 = v10;

  if (+[_OSIBLMState isIBLMSupported])
  {
    v12 = +[_OSIBLManager sharedInstance];
    [v12 start];

    v13 = +[_OSIAutoLPMManager sharedInstance];
    [v13 start];
  }

  objc_autoreleasePoolPop(v2);
  dispatch_main();
}

void sub_10000C598(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);
  v4 = qword_1000B69A0;
  if (os_log_type_enabled(qword_1000B69A0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = string;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification: %s", &v6, 0xCu);
  }

  v5 = +[_OSIBLManager sharedInstance];
  [v5 handleCallback:v2];
}

uint64_t sub_10000C984(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000B69A8 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10000CF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

int64_t sub_10000CF80(id a1, BMStoreEvent *a2, BMStoreEvent *a3)
{
  v4 = a3;
  [(BMStoreEvent *)a2 timestamp];
  v5 = [NSNumber numberWithDouble:?];
  [(BMStoreEvent *)v4 timestamp];
  v7 = v6;

  v8 = [NSNumber numberWithDouble:v7];
  v9 = [v5 compare:v8];

  return v9;
}

BOOL sub_10000D01C(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = v2 != 0;

  return v3;
}

BPSTuple *__cdecl sub_10000D054(id a1, BPSTuple *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(BMStoreEvent *)v5 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [BPSTuple alloc];
  v9 = v8;
  if (isKindOfClass)
  {
    v10 = [v8 initWithFirst:v5 second:0];
  }

  else
  {
    v11 = [(BPSTuple *)v4 first];
    v10 = [v9 initWithFirst:v11 second:v5];

    v5 = v11;
  }

  return v10;
}

BOOL sub_10000D12C(uint64_t a1, void *a2)
{
  v3 = [a2 second];

  if (!v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10005ACB4(v4);
    }
  }

  return v3 != 0;
}

BOOL sub_10000D198(id a1, BPSTuple *a2)
{
  v2 = [(BPSTuple *)a2 second];
  v3 = [v2 eventBody];
  v4 = [v3 hasInUseStatus];

  return v4;
}

void sub_10000D1EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005ACF8(v3, v4);
    }
  }
}

void sub_10000D250(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  if (!v8)
  {
    objc_storeStrong(v6, a2);
    goto LABEL_35;
  }

  v9 = [v7 second];
  v10 = [v4 second];
  v51 = [OSIntelligenceUtilities isActiveBiomeActivityLevelEvent:v9];
  v11 = [*(*(*(a1 + 40) + 8) + 40) first];
  v12 = [v4 first];
  v53 = +[NSTimeZone systemTimeZone];
  v13 = [v53 secondsFromGMT];
  [v9 timestamp];
  v52 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  [v10 timestamp];
  v54 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  if (v11)
  {
    v14 = [v11 eventBody];
    if (([v14 hasSecondsFromGMT] & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v15 = [v11 eventBody];
    [v15 secondsFromGMT];
    v17 = v16;
    v18 = v13;

    if (v17 != v13)
    {
      v19 = [*(a1 + 32) log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Start time might be in different timezone", buf, 2u);
      }

      v20 = [v11 eventBody];
      [v20 secondsFromGMT];
      v22 = vabdd_f64(v18, v21);

      if (v22 >= 7200.0)
      {
        v23 = [*(a1 + 32) log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [v11 eventBody];
          [v24 secondsFromGMT];
          *buf = 134217984;
          v56 = (v18 - v25) / 3600.0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Start timezone change is significant with : %f hours", buf, 0xCu);
        }

        v14 = [*(a1 + 32) latestTimeZoneChange];
        v26 = *(a1 + 32);
        if (v14)
        {
          v50 = [v26 latestTimeZoneChange];
          v27 = [v50 laterDate:v54];
          [*(a1 + 32) setLatestTimeZoneChange:v27];
        }

        else
        {
          [v26 setLatestTimeZoneChange:v54];
        }

        goto LABEL_14;
      }
    }
  }

LABEL_15:
  if (v12)
  {
    v28 = [v12 eventBody];
    if ([v28 hasSecondsFromGMT])
    {
      v29 = [v12 eventBody];
      [v29 secondsFromGMT];
      v31 = v30;
      v32 = v13;

      if (v31 == v13)
      {
        goto LABEL_27;
      }

      v33 = [*(a1 + 32) log];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "End time might be in different timezone", buf, 2u);
      }

      v34 = [v12 eventBody];
      [v34 secondsFromGMT];
      v36 = vabdd_f64(v32, v35);

      if (v36 < 7200.0)
      {
        goto LABEL_27;
      }

      v37 = [*(a1 + 32) log];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [v12 eventBody];
        [v38 secondsFromGMT];
        *buf = 134217984;
        v56 = (v32 - v39) / 3600.0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "End timezone change is significant with : %f hours", buf, 0xCu);
      }

      v28 = [*(a1 + 32) latestTimeZoneChange];
      v40 = *(a1 + 32);
      if (v28)
      {
        v41 = [v40 latestTimeZoneChange];
        v42 = [v41 laterDate:v54];
        [*(a1 + 32) setLatestTimeZoneChange:v42];
      }

      else
      {
        [v40 setLatestTimeZoneChange:v54];
      }
    }
  }

LABEL_27:
  v43 = [_OSActivityInterval alloc];
  [v9 timestamp];
  v45 = v44;
  [v10 timestamp];
  v47 = [(_OSActivityInterval *)v43 initWithStartTime:v51 andEndTime:v45 andActiveStatus:v46];
  v48 = v47;
  if (v47 && [(_OSIInterval *)v47 isValidInterval])
  {
    if (([(_OSActivityInterval *)v48 hasReasonableDuration]& v51) == 1)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v48];
    }
  }

  else
  {
    v49 = [*(a1 + 32) log];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      sub_10005AD90(v48, v49);
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);

LABEL_35:
}

BOOL sub_10000DAD4(uint64_t a1, void *a2)
{
  v3 = [a2 startDate];
  [v3 timeIntervalSinceDate:*(a1 + 32)];
  v5 = v4 > 0.0;

  return v5;
}

void sub_10000E71C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateTrialParameters];
    WeakRetained = v2;
  }
}

void sub_10000F424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000F440(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    state64 = 0;
    notify_get_state(a2, &state64);
    v4 = state64;
    if (!state64)
    {
      v4 = 300.0;
    }

    [WeakRetained percentStationaryOverDuration:v4];
    v6 = v5;
    v7 = [WeakRetained log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v10 = v6;
      v11 = 2048;
      v12 = state64;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Recent stationary duration: %.2f (%llu seconds)", buf, 0x16u);
    }
  }
}

void sub_10000FBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_10000FBE8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) percentageStationaryWithActivity:a2 untilDate:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = v3;
  v4 = *(a1 + 48);

  return dispatch_semaphore_signal(v4);
}

void sub_10001003C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010054(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    if (!a3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v20;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(*(a1 + 40) + 8) + 40);
              v12 = [*(*(&v19 + 1) + 8 * i) nextFireDate];
              v13 = v12;
              if (v11)
              {
                v14 = [v11 earlierDate:v12];
                v15 = *(*(a1 + 40) + 8);
                v16 = *(v15 + 40);
                *(v15 + 40) = v14;
              }

              else
              {
                v17 = *(*(a1 + 40) + 8);
                v18 = *(v17 + 40);
                *(v17 + 40) = v12;
                v13 = v18;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v8);
        }
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_100010344(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000B69C0 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_1000107DC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

int64_t sub_100010834(id a1, BMStoreEvent *a2, BMStoreEvent *a3)
{
  v4 = a3;
  [(BMStoreEvent *)a2 timestamp];
  v5 = [NSNumber numberWithDouble:?];
  [(BMStoreEvent *)v4 timestamp];
  v7 = v6;

  v8 = [NSNumber numberWithDouble:v7];
  v9 = [v5 compare:v8];

  return v9;
}

void sub_1000108D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005B124(v3);
    }
  }
}

void sub_100010934(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = v4;
    v9 = [v8 eventBody];
    [v9 batteryPercentage];
    v11 = v10;

    if (v11 >= 0x65)
    {
      v12 = [*(a1 + 32) log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10005B2E4(v11);
      }

      goto LABEL_46;
    }

    v13 = [*(*(*(a1 + 48) + 8) + 40) eventBody];
    v14 = 0.0;
    if ([v13 hasSecondsFromGMT])
    {
      v15 = [*(*(*(a1 + 48) + 8) + 40) eventBody];
      [v15 secondsFromGMT];
      v14 = v16 - [*(a1 + 40) secondsFromGMT];
    }

    [v8 timestamp];
    v18 = [NSDate dateWithTimeIntervalSinceReferenceDate:v14 + v17];
    if (*(a1 + 88))
    {
      if (*(*(*(a1 + 48) + 8) + 40))
      {
        v19 = [NSTimeZone alloc];
        v20 = [*(*(*(a1 + 48) + 8) + 40) eventBody];
        v21 = [v20 name];
        v22 = [v19 initWithName:v21];
      }

      else
      {
        v22 = +[NSTimeZone localTimeZone];
      }

      v23 = [OSIntelligenceUtilities isWeekday:v18 forTimeZone:v22];
      v24 = *(a1 + 88);
      if (v23 && v24 == 2)
      {

LABEL_45:
LABEL_46:

        goto LABEL_47;
      }

      v25 = v24 == 1;

      if (v25 & ~v23)
      {
        goto LABEL_45;
      }
    }

    v62 = v8;
    v26 = v11;
    [OSIntelligenceUtilities midnightDateFrom:v18];
    v63 = v27 = v18;
    [v18 timeIntervalSinceDate:?];
    v28 = *(a1 + 104);
    v30 = (v29 / (60 * *(a1 + 96)));
    v31 = [*(a1 + 32) log];
    v32 = v31;
    v64 = v30;
    if (v28 <= v30)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        sub_10005B1CC((a1 + 104), v30, v32);
      }

      v18 = v27;
      v8 = v62;
    }

    else
    {
      v18 = v27;
      v33 = v26;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v66 = v18;
        v67 = 2048;
        v68 = v64;
        v69 = 2048;
        v70 = v26;
        _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "Date %@, Slot %ld, battery level %ld", buf, 0x20u);
      }

      v8 = v62;
      if (*(*(*(a1 + 56) + 8) + 40))
      {
        if (*(*(*(a1 + 72) + 8) + 24) != v64)
        {
          v34 = *(*(*(a1 + 80) + 8) + 40);
          if (v34)
          {
            v35 = [v34 objectAtIndexedSubscript:?];

            if (!v35)
            {
              v36 = +[NSMutableArray array];
              [*(*(*(a1 + 80) + 8) + 40) setObject:v36 atIndexedSubscript:*(*(*(a1 + 72) + 8) + 24)];
            }
          }

          [OSIntelligenceUtilities medianOf:*(*(*(a1 + 64) + 8) + 40)];
          v38 = v37;
          v39 = [*(*(*(a1 + 80) + 8) + 40) objectAtIndexedSubscript:*(*(*(a1 + 72) + 8) + 24)];
          v40 = [NSNumber numberWithUnsignedInteger:v38];
          [v39 addObject:v40];

          v41 = [*(a1 + 32) log];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            sub_10005B25C(v64, v33, v41);
          }

          [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
          v42 = *(*(*(a1 + 72) + 8) + 24);
          v43 = v64 - v42;
          if (v64 < v42)
          {
            v43 += *(a1 + 104);
          }

          if (v43 != 1)
          {
            v44 = [*(*(*(a1 + 56) + 8) + 40) eventBody];
            [v44 batteryPercentage];
            v46 = v45;

            v48 = *(*(*(a1 + 72) + 8) + 24) + 1;
            if (v48 < v64)
            {
              v49 = (v33 - v46) / v43;
              *&v47 = 134218240;
              v61 = v47;
              do
              {
                v50 = v48 % *(a1 + 104);
                v51 = *(*(*(a1 + 80) + 8) + 40);
                if (v51)
                {
                  v52 = [v51 objectAtIndexedSubscript:v50];

                  if (!v52)
                  {
                    v53 = +[NSMutableArray array];
                    [*(*(*(a1 + 80) + 8) + 40) setObject:v53 atIndexedSubscript:v50];
                  }
                }

                v54 = [*(*(*(a1 + 80) + 8) + 40) objectAtIndexedSubscript:{v50, v61}];
                v55 = [NSNumber numberWithUnsignedInteger:v46];
                [v54 addObject:v55];

                v56 = [*(a1 + 32) log];
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v61;
                  v66 = v64;
                  v67 = 2048;
                  v68 = v33;
                  _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Added Slot %ld, battery level %ld", buf, 0x16u);
                }

                v46 = v49 + v46;
                ++v48;
              }

              while (v64 != v48);
            }
          }
        }

        objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
        *(*(*(a1 + 72) + 8) + 24) = v64;
        v57 = *(*(*(a1 + 64) + 8) + 40);
        v58 = [NSNumber numberWithInteger:v33];
        [v57 addObject:v58];
      }

      else
      {
        v59 = *(*(*(a1 + 64) + 8) + 40);
        v60 = [NSNumber numberWithInteger:v33];
        [v59 addObject:v60];

        objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
        *(*(*(a1 + 72) + 8) + 24) = v64;
      }
    }

    goto LABEL_45;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
LABEL_47:
  objc_autoreleasePoolPop(v5);
}

void sub_10001138C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_10001151C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000B69D0 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_100012154(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100012288(id a1)
{
  qword_1000B69E8 = objc_alloc_init(OSLastLockPredictionService);

  _objc_release_x1();
}

void sub_100012644(uint64_t a1)
{
  v2 = qword_1000B69E0;
  if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Re-initializing predictor", v4, 2u);
  }

  v3 = +[_OSLastLockPredictor predictor];
  [*(a1 + 32) setPredictor:v3];
}

void sub_100013474(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (([WeakRetained upgradePredictorIfNeeded] & 1) == 0)
    {
      [v2 scheduleModelUpgradeAfterInterval:604800.0];
      v3 = qword_1000B69E0;
      if (os_log_type_enabled(qword_1000B69E0, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Model upgrade failed. Will try again in 7 days.", v4, 2u);
      }
    }
  }
}

void sub_1000139B4(id a1)
{
  qword_1000B69F8 = objc_alloc_init(_OSLastLockAnalyticsManager);

  _objc_release_x1();
}

void sub_100013AA0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, 0, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_100013B60(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000B6A08 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_100013D78(uint64_t a1)
{
  v5 = +[_OSDrainPrev12Next12Predictor sharedInstance];
  v2 = [v5 highDayDrainAroundCurrentDateWithError:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100013F04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"tte_v1" ofType:@"mlmodelc"];
  v5 = [NSURL fileURLWithPath:v4];

  v14 = 0;
  v6 = [MLModel modelWithContentsOfURL:v5 error:&v14];
  v7 = v14;
  v8 = [*(a1 + 32) getInputFeatures];
  v9 = [v6 predictionFromFeatures:v8 error:0];
  v10 = [*(a1 + 32) log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ETA model raw output %@", buf, 0xCu);
  }

  v11 = [v9 featureValueForName:@"tte"];
  [v11 doubleValue];
  v13 = v12;

  [*(*(*(a1 + 40) + 8) + 40) setPredictedDischargeTime:v13];
}

void sub_100015350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100015374(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v3 = [WeakRetained updateHandlers];
    v4 = [v3 copy];

    os_unfair_lock_unlock((*(a1 + 32) + 8));
    [WeakRetained loadTrialUpdates];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

uint64_t sub_10001555C(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000B6A20 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_100016B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100016B88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateTrialParameters];
    WeakRetained = v2;
  }
}

uint64_t sub_10001AA58(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000B6A28 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10001C71C(uint64_t a1)
{
  [OSIntelligenceUtilities logMemoryUsageInternalForEvent:@"Before calculating rolling drain"];
  v2 = [*(a1 + 32) drainDataOverRollingWindowOfHours:12 fromBatteryTimeStampData:*(a1 + 40)];
  v3 = [*(a1 + 32) drainDataOverRollingWindowOfHours:24 fromBatteryTimeStampData:*(a1 + 40)];
  [OSIntelligenceUtilities logMemoryUsageInternalForEvent:@"After calculating rolling drain"];
  v35 = [*(a1 + 32) drainFromEndDate:*(a1 + 48) forLastHours:3 fromBatteryTimeStampData:*(a1 + 40) netDrain:0];
  v34 = [*(a1 + 32) drainFromEndDate:*(a1 + 48) forLastHours:6 fromBatteryTimeStampData:*(a1 + 40) netDrain:0];
  v4 = [*(a1 + 32) drainFromEndDate:*(a1 + 48) forLastHours:12 fromBatteryTimeStampData:*(a1 + 40) netDrain:0];
  v5 = [*(a1 + 32) drainFromEndDate:*(a1 + 48) forLastHours:24 fromBatteryTimeStampData:*(a1 + 40) netDrain:0];
  [OSIntelligenceUtilities medianOf:v2];
  v7 = v6;
  [OSIntelligenceUtilities meanOf:v2];
  v9 = v8;
  [OSIntelligenceUtilities medianOf:v3];
  v11 = v10;
  [OSIntelligenceUtilities meanOf:v3];
  v13 = v12;
  v14 = [*(a1 + 32) totalDrainFor:*(a1 + 56) fromStartIndex:(86400.0 / *(a1 + 80)) toEndIndex:{objc_msgSend(*(a1 + 56), "count") - 1}];
  v15 = [*(a1 + 56) lastObject];
  v16 = [v15 integerValue];

  v17 = [*(a1 + 56) objectAtIndex:{objc_msgSend(*(a1 + 56), "count") - 2}];
  v18 = [v17 integerValue];

  v36 = v2;
  [*(a1 + 32) meanHourDrainRateForQueryDate:*(a1 + 48) fromArray:v2 fromBatteryTimeStampData:*(a1 + 40)];
  v20 = v19;
  [*(a1 + 32) meanOfRollingDrains:v3 overPastDays:30 startingAtDate:*(a1 + 64) endingAtDate:*(a1 + 48) withDataSamplingInterval:*(a1 + 80)];
  v22 = -[Prev12Next12DrainInput initWithCurrentCapacity:drainOnly:_12hour_only_drain_before:_24hour_only_drain_before:_6hour_only_drain_before:_3hour_only_drain_before:total_drain_before:rolling_mean_24hour_drain_before:rolling_median_24hour_drain_before:rolling_mean_12hour_drain_before:rolling_median_12hour_drain_before:mean_12hour_drain_before:_24HourOnlyDrainBeforePercentileCategoryByUser:rolling30DaysAvgOf24hourOnlyDrainBefore:countsPast24hour_only_drain_before_100_last7Days:countsPast24hour_only_drain_before_100_last30Days:_12HourOnlyDrainBeforePercentileCategory:_24HourOnlyDrainBeforePercentileCategory:]([Prev12Next12DrainInput alloc], "initWithCurrentCapacity:drainOnly:_12hour_only_drain_before:_24hour_only_drain_before:_6hour_only_drain_before:_3hour_only_drain_before:total_drain_before:rolling_mean_24hour_drain_before:rolling_median_24hour_drain_before:rolling_mean_12hour_drain_before:rolling_median_12hour_drain_before:mean_12hour_drain_before:_24HourOnlyDrainBeforePercentileCategoryByUser:rolling30DaysAvgOf24hourOnlyDrainBefore:countsPast24hour_only_drain_before_100_last7Days:countsPast24hour_only_drain_before_100_last30Days:_12HourOnlyDrainBeforePercentileCategory:_24HourOnlyDrainBeforePercentileCategory:", v16, (v18 - v16), v4, v5, v34, v35, v14, v13, v11, v9, v7, v20, [*(a1 + 32) percentileCategoryForBatteryDrain:v4 inRollingDrainData:v3], v21, objc_msgSend(*(a1 + 32), "countBatteryDrainIn:moreThanEqualTo:overPastDays:startingAtDate:endingAtDate:withDataSamplingInterval:", v3, 100, 7, *(a1 + 64), *(a1 + 48), *(a1 + 80)), objc_msgSend(*(a1 + 32), "countBatteryDrainIn:moreThanEqualTo:overPastDays:startingAtDate:endingAtDate:withDataSamplingInterval:", v3, 100, 30, *(a1 + 64), *(a1 + 48), *(a1 + 80)), objc_msgSend(*(a1 + 32), "percentileCategoryForBatteryDrain:withFirstQuartile:withSecondQuartile:withThirdQuartile:", v4, &off_10009D068, &off_10009D078, &off_10009D038), objc_msgSend(*(a1 + 32), "percentileCategoryForBatteryDrain:withFirstQuartile:withSecondQuartile:withThirdQuartile:", v5, &off_10009D038, &off_10009D048, &off_10009D058));
  v23 = objc_alloc_init(Prev12Next12Drain);
  v24 = [(Prev12Next12DrainInput *)v22 featureNames];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10001CC1C;
  v37[3] = &unk_100094DE8;
  v37[4] = *(a1 + 32);
  v25 = v22;
  v38 = v25;
  [v24 enumerateObjectsUsingBlock:v37];
  v26 = [(Prev12Next12Drain *)v23 predictionFromFeatures:v25 error:*(a1 + 88)];
  [*(a1 + 72) setIsHighDrain:{objc_msgSend(v26, "_24hour_only_drain_label") != 0}];
  v27 = [v26 classProbability];
  v28 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v26 _24hour_only_drain_label]);
  v29 = [v27 objectForKeyedSubscript:v28];

  if (v29)
  {
    [v29 doubleValue];
    [*(a1 + 72) setConfidence:?];
  }

  v30 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 72);
    v32 = v30;
    v33 = [v31 description];
    *buf = 138543362;
    v40 = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Prev12Next12Drain result  %{public}@", buf, 0xCu);
  }
}

void sub_10001CC1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = v4;
    v7 = [v5 featureValueForName:v3];
    [v7 doubleValue];
    v9 = 138543618;
    v10 = v3;
    v11 = 2050;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Prediction input %{public}@ : %{public}lf", &v9, 0x16u);
  }
}

void sub_10001DAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001DAF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained updateTrialParameters:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void sub_10001E1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001E21C(uint64_t a1)
{
  [*(a1 + 32) timeIntervalSinceDate:*(*(a1 + 40) + 128)];
  if (v2 < 900.0 && v2 > 0.0)
  {
    v3 = *(*(a1 + 40) + 112);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 56);
      v5 = *(a1 + 32);
      v6 = *(*(a1 + 40) + 128);
      v14 = 134218754;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      v18 = 2048;
      v19 = 0x408C200000000000;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(%ld) Input query for time %@ is within %f seconds for last query for %@", &v14, 0x2Au);
    }

    [*(*(a1 + 40) + 136) timeIntervalSinceNow];
    v8 = *(a1 + 40);
    v9 = *(v8 + 136);
    if (v9 && v7 > -180.0)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(v8 + 144));
    }

    else if (v9 && v7 > -1200.0)
    {
      v10 = +[OSIntelligenceUtilities lastLockDate];
      v11 = v10;
      if (*(*(a1 + 40) + 136))
      {
        v12 = v10 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        [v10 timeIntervalSinceDate:?];
        if (v13 < 0.0)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 40) + 144));
        }
      }
    }
  }
}

void sub_10001E598(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  if (v4 && *(v3 + 80))
  {
    v64 = v2;
    v5 = [v4 modelDescription];
    v6 = [v5 inputDescriptionsByName];
    v7 = [v6 allKeys];

    v63 = v7;
    v8 = [_OSInactivityFeatureFactory inputFeaturesWithNames:v7 atDate:*(a1 + 40) withIntervalHistory:*(a1 + 48) withContext:0];
    v9 = [v8 dictionary];
    v10 = *(*(a1 + 32) + 112);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 72);
      v12 = v10;
      v13 = [v9 description];
      *buf = 67109378;
      *v72 = v11;
      *&v72[4] = 2112;
      *&v72[6] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Engage features (%u), %@", buf, 0x12u);
    }

    [*(a1 + 40) timeIntervalSinceNow];
    if (v14 <= 0.0)
    {
      +[NSMutableDictionary dictionary];
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_10001EBEC;
      v15 = v67[3] = &unk_100094E88;
      v68 = v15;
      [v9 enumerateKeysAndObjectsUsingBlock:v67];
      v16 = *(*(a1 + 32) + 112);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 72);
        *buf = 134218242;
        *v72 = v17;
        *&v72[8] = 2112;
        *&v72[10] = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "(%ld) Logging to Power Log: %@", buf, 0x16u);
      }

      v18 = [v15 copy];
      PLLogRegisteredEvent();
    }

    v19 = *(*(a1 + 32) + 72);
    v20 = *(*(a1 + 56) + 8);
    obj = *(v20 + 40);
    v62 = v8;
    v21 = [v19 predictionFromFeatures:v8 error:&obj];
    objc_storeStrong((v20 + 40), obj);
    v22 = [v21 featureValueForName:@"classProbability"];
    v23 = [v22 dictionaryValue];

    v24 = [v23 objectForKeyedSubscript:&off_10009B5C8];
    [v24 doubleValue];
    v26 = v25;

    v27 = [*(*(a1 + 32) + 80) modelDescription];
    v28 = [v27 inputDescriptionsByName];
    v29 = [v28 allKeys];

    v61 = v9;
    if ([v29 containsObject:@"engage_prob"])
    {
      v69 = @"engage_prob";
      v30 = [NSNumber numberWithDouble:v26];
      v70 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    }

    else
    {
      v31 = 0;
    }

    v38 = [_OSInactivityFeatureFactory inputFeaturesWithNames:v29 atDate:*(a1 + 40) withIntervalHistory:*(a1 + 48) withContext:v31];
    v39 = *(*(a1 + 32) + 112);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v60 = v29;
      v40 = v23;
      v41 = v21;
      v42 = *(a1 + 72);
      v43 = v39;
      v44 = [v38 dictionary];
      v45 = [v44 description];
      *buf = 67109378;
      *v72 = v42;
      v21 = v41;
      v23 = v40;
      *&v72[4] = 2112;
      *&v72[6] = v45;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Duration features (%u): %@", buf, 0x12u);
    }

    v46 = *(*(a1 + 32) + 80);
    v47 = *(*(a1 + 56) + 8);
    v65 = *(v47 + 40);
    v48 = [v46 predictionFromFeatures:v38 error:{&v65, v60}];
    objc_storeStrong((v47 + 40), v65);
    v49 = [v48 featureValueForName:@"predicted_duration"];
    [v49 doubleValue];
    v51 = v50;

    v52 = [_OSInactivityPredictorOutput alloc];
    [*(a1 + 32) confidenceThresholdRelaxed];
    v54 = v53;
    [*(a1 + 32) confidenceThresholdStrict];
    v56 = [v52 initWithConfidenceValue:1 andRelaxedThreshold:v26 andStrictThreshold:v54 andPredictedDuration:v55 andReason:v51];
    v57 = *(*(a1 + 64) + 8);
    v58 = *(v57 + 40);
    *(v57 + 40) = v56;

    [*(*(*(a1 + 64) + 8) + 40) adjustedPredictedDurationWithStrictLeeway:*(*(a1 + 32) + 88) andRelaxedLeeway:*(*(a1 + 32) + 96) andMaxPredictionCap:10.0];
    [*(a1 + 32) setLastInputDate:*(a1 + 40)];
    [*(a1 + 32) setPredictionOutput:*(*(*(a1 + 64) + 8) + 40)];
    v59 = +[NSDate date];
    [*(a1 + 32) setLastPredictedDate:v59];

    v2 = v64;
  }

  else
  {
    v32 = [NSError errorWithDomain:@"com.apple.OSIntelligence.InactivityPredictorTwoStage" code:6 userInfo:&off_10009CB60];
    v33 = *(*(a1 + 56) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;

    v35 = [[_OSInactivityPredictorOutput alloc] initInvalidOutput];
    v36 = *(*(a1 + 64) + 8);
    v37 = *(v36 + 40);
    *(v36 + 40) = v35;
  }
}

void sub_10001EBEC(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (([v9 isEqualToString:@"recent_q95_1"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"recent_q95_2") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"recent_q75_1") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"recent_q75_2") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"recent_dur_med_1") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"woo_q95_1") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"woo_q95_2") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"woo_q50_1"))
  {
    [v5 doubleValue];
    LODWORD(v7) = llround(v6 * 10.0);
    v8 = [NSNumber numberWithInt:v7];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }
}

void sub_10001F2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_10001F2F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  v6 = [*(*(*(a1 + 40) + 8) + 40) eventBody];
  *(*(*(a1 + 48) + 8) + 24) = [v5 playbackState] == 1;
  v7 = *(*(*(a1 + 48) + 8) + 24);
  v8 = *(a1 + 32);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7 == 1)
  {
    if (v9)
    {
      sub_10005C138(v8, v3, v5);
    }
  }

  else if (v9)
  {
    sub_10005C074(v8, v3, v5);
  }

  [v3 timestamp];
  if (v10 >= *(a1 + 64))
  {
    if (*(*(*(a1 + 40) + 8) + 40) && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && [v6 playbackState] == 1)
    {
      [*(*(*(a1 + 40) + 8) + 40) timestamp];
      v15 = v14;
      v16 = *(a1 + 64);
      [v3 timestamp];
      v18 = v17;
      if (v15 >= v16)
      {
        [*(*(*(a1 + 40) + 8) + 40) timestamp];
      }

      else
      {
        v19 = *(a1 + 64);
      }

      *(*(*(a1 + 56) + 8) + 24) = v18 - v19 + *(*(*(a1 + 56) + 8) + 24);
    }

    v12 = *(*(a1 + 40) + 8);
    goto LABEL_17;
  }

  v11 = *(*(*(a1 + 48) + 8) + 24);
  v12 = *(*(a1 + 40) + 8);
  if (v11 == 1)
  {
LABEL_17:
    v20 = v3;
    v13 = *(v12 + 40);
    *(v12 + 40) = v20;
    goto LABEL_18;
  }

  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
LABEL_18:

  objc_autoreleasePoolPop(v4);
}

void sub_10001F798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10001F7C8(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [*(a1 + 32) isEventNextSongPlaying:v3 fromPreviousEvent:*(*(*(a1 + 40) + 8) + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 24);
  if (v4)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6 + 1;
  }

  *(v5 + 24) = v7;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;
}

void sub_10001F904(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100020FA8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t sub_100022690(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000B6A40 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_1000235F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100023614(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateTrialParameters];
    WeakRetained = v2;
  }
}

void sub_100024798(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) location];
  [*(a1 + 32) setCurrentLocation:v2];

  v3 = dispatch_semaphore_create(0);
  [*(a1 + 32) setRequestLocationSemaphore:v3];
}

id sub_100024810(uint64_t a1)
{
  [*(a1 + 32) setCurrentLocation:0];
  v2 = *(a1 + 32);

  return [v2 setRequestLocationSemaphore:0];
}

void sub_100025448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x320], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Unwind_Resume(a1);
}

void sub_100025524(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (v7 || ![v6 count])
  {
    v8 = *(*(a1 + 32) + 72);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"No nearby LOI";
      if (v7)
      {
        v9 = v7;
      }

      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No LOIs nearby: %@", &v13, 0xCu);
    }
  }

  else
  {
    v10 = *(*(a1 + 32) + 72);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ nearby LOIs", &v13, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000256C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  if (v4)
  {
    if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v9 = 134217984;
      v10 = [v3 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No LoIs, but did see visits in the past. (%lu)", &v9, 0xCu);
    }

    v8 = 1;
  }

  else
  {
    if (os_log_type_enabled(*(v5 + 72), OS_LOG_TYPE_FAULT))
    {
      sub_10005C95C();
    }

    v8 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v8;
  dispatch_semaphore_signal(*(a1 + 40));
}

int64_t sub_1000257D4(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 entryDate];
  v6 = [v4 entryDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t sub_100025844(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 hasStarting];

  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = [v3 eventBody];
  v8 = [v7 starting];
  if (v6 == -1)
  {
LABEL_6:
    *(*(*(a1 + 32) + 8) + 24) = v8;

    v9 = 1;
    goto LABEL_7;
  }

  if (v6 != v8)
  {
    v7 = [v3 eventBody];
    v8 = [v7 starting];
    goto LABEL_6;
  }

LABEL_4:
  v9 = 0;
LABEL_7:

  return v9;
}

void sub_10002590C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005C99C(v3);
    }
  }
}

void sub_100025970(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  if ([v4 starting])
  {
    v5 = a1 + 40;
    v6 = *(*(*(a1 + 40) + 8) + 40);

    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v3 eventBody];
  if ([v7 starting])
  {
    goto LABEL_9;
  }

  v5 = a1 + 48;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    goto LABEL_9;
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);

  if (v8)
  {
LABEL_8:
    [v3 timestamp];
    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v10 = *(*v5 + 8);
    v7 = *(v10 + 40);
    *(v10 + 40) = v9;
LABEL_9:
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (v11)
    {
      [v11 timeIntervalSinceDate:?];
      if (v12 >= 1800.0)
      {
        v13 = [*(*(*(a1 + 56) + 8) + 40) components:96 fromDate:*(*(*(a1 + 40) + 8) + 40)];
        v14 = [*(*(*(a1 + 56) + 8) + 40) dateFromComponents:v13];
        v15 = [v14 dateByAddingTimeInterval:86400.0];
        [v14 timeIntervalSinceDate:*(*(*(a1 + 64) + 8) + 40)];
        if (v16 < 0.0)
        {
          v16 = -v16;
        }

        if (v16 < 7200.0)
        {
          goto LABEL_24;
        }

        [v15 timeIntervalSinceDate:*(*(*(a1 + 64) + 8) + 40)];
        if (v17 < 0.0)
        {
          v17 = -v17;
        }

        if (v17 < 7200.0)
        {
          goto LABEL_24;
        }

        [v14 timeIntervalSinceDate:*(*(*(a1 + 72) + 8) + 40)];
        if (v18 < 0.0)
        {
          v18 = -v18;
        }

        if (v18 >= 7200.0)
        {
          v21 = [*(a1 + 32) log];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            sub_10005CA40();
          }
        }

        else
        {
LABEL_24:

          [*(*(*(a1 + 80) + 8) + 40) addObject:*(*(*(a1 + 40) + 8) + 40)];
          [*(*(*(a1 + 88) + 8) + 40) addObject:*(*(*(a1 + 48) + 8) + 40)];
          v13 = [*(a1 + 32) log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v19 = *(*(*(a1 + 40) + 8) + 40);
            v20 = *(*(*(a1 + 48) + 8) + 40);
            v26 = 138412546;
            v27 = v19;
            v28 = 2112;
            v29 = v20;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Found long charge from %@ to %@", &v26, 0x16u);
          }
        }
      }

      else
      {
        v13 = [*(a1 + 32) log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_10005CA7C();
        }
      }

      v22 = *(*(a1 + 40) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = 0;

      v24 = *(*(a1 + 48) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = 0;
    }
  }
}

void sub_100025E24(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v4 = *(a1 + 56);
  [v3 timestamp];
  v6 = v4 - v5;
  v7 = *(*(a1 + 32) + 72);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 56);
    v10 = v7;
    v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:v9];
    [v3 timestamp];
    v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v17 = 2048;
    v18 = v6;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "working on event - plugin: %@ - event timestamp: %@ - diff: %f", &v13, 0x20u);
  }

  if (fabs(v6) < 60.0)
  {
    v8 = [*(a1 + 32) log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Microlocation event near pluggedIn time %@", &v13, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

int64_t sub_100025FE8(id a1, BMStoreEvent *a2, BMStoreEvent *a3)
{
  v4 = a3;
  [(BMStoreEvent *)a2 timestamp];
  v5 = [NSNumber numberWithDouble:?];
  [(BMStoreEvent *)v4 timestamp];
  v7 = v6;

  v8 = [NSNumber numberWithDouble:v7];
  v9 = [v5 compare:v8];

  return v9;
}

void sub_100026084(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[5] + 8) + 24) = 1;
  v4 = [*(*(a1[6] + 8) + 40) eventBody];
  v5 = [v4 timeZone];

  v6 = *(a1[4] + 72);
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1[6] + 8) + 40);
      v8 = v6;
      [v7 timestamp];
      v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v3 timestamp];
      v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "working on event with timezone timestamp: %@ - plugin timestamp: %@", &v15, 0x16u);
    }

    v11 = [*(*(a1[7] + 8) + 40) timeZone];
    v12 = [*(*(a1[6] + 8) + 40) eventBody];
    v13 = [v12 timeZone];

    if (v11 == v13)
    {
      v14 = a1[8];
    }

    else
    {
      v14 = a1[9];
    }

    ++*(*(v14 + 8) + 24);
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10005CD1C();
  }
}

void sub_100026458(uint64_t a1)
{
  v2 = [*(a1 + 40) lastObject];
  [*(a1 + 32) setCurrentLocation:v2];

  v3 = [*(a1 + 32) requestLocationSemaphore];

  if (v3)
  {
    v4 = [*(a1 + 32) requestLocationSemaphore];
    dispatch_semaphore_signal(v4);
  }
}

void sub_100026728(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100026900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002691C(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if ([a2 isEqualToString:@"TrustedLux"])
  {
    v5 = [v6 intValue];
    if ((v5 & 0x80000000) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = v5;
      dispatch_semaphore_signal(*(a1 + 32));
    }
  }
}

void sub_1000277B0(id a1)
{
  qword_1000B6A60 = objc_alloc_init(OSChargingSignals);

  _objc_release_x1();
}

void sub_10002A638(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10002AA98(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) dictionaryForKey:@"currentData"];
  v3 = [v2 mutableCopy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;

  v6 = [*(*(a1 + 32) + 16) dictionaryForKey:@"analytics"];
  v7 = [v6 mutableCopy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = v7;

  if (*(*(a1 + 32) + 32))
  {
    if (*(a1 + 40) == 1)
    {
      v10 = +[NSMutableDictionary dictionary];
      v11 = *(a1 + 32);
      v12 = *(v11 + 32);
      *(v11 + 32) = v10;

      [*(*(a1 + 32) + 16) removeObjectForKey:@"currentData"];
    }
  }

  else
  {
    v13 = +[NSMutableDictionary dictionary];
    v14 = *(a1 + 32);
    v15 = *(v14 + 32);
    *(v14 + 32) = v13;
  }

  v16 = *(*(a1 + 32) + 24);
  if (v16)
  {
    if (*(a1 + 40) == 1)
    {
      v17 = [v16 objectForKeyedSubscript:@"enabledDate"];
      if (v17)
      {
        v18 = v17;
        v19 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:@"disabledDate"];

        if (!v19)
        {
          v20 = +[NSDate now];
          [v20 timeIntervalSinceReferenceDate];
          v21 = [NSNumber numberWithDouble:?];
          [*(*(a1 + 32) + 24) setObject:v21 forKeyedSubscript:@"disabledDate"];

          [*(*(a1 + 32) + 16) setObject:*(*(a1 + 32) + 24) forKey:@"analytics"];
        }
      }
    }
  }

  else
  {
    v22 = +[NSMutableDictionary dictionary];
    v23 = *(a1 + 32);
    v24 = *(v23 + 24);
    *(v23 + 24) = v22;
  }

  v25 = +[OSIntelligenceAnalyticsManager log];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [NSNumber numberWithBool:*(a1 + 40)];
    v27 = *(a1 + 32);
    v29 = *(v27 + 24);
    v28 = *(v27 + 32);
    v30 = 138412802;
    v31 = v26;
    v32 = 2112;
    v33 = v29;
    v34 = 2112;
    v35 = v28;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Restart = %@, Analytics is %@, Current Data is %@", &v30, 0x20u);
  }
}

void sub_10002AD3C(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AE94;
  block[3] = &unk_1000951C0;
  v7 = *(a1 + 32);
  v8 = state64;
  dispatch_sync(v3, block);

  v4 = +[OSIntelligenceAnalyticsManager log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSNumber numberWithUnsignedLongLong:state64];
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SPN State Change %@", buf, 0xCu);
  }
}

void sub_10002AEA0(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = state64 != 0;
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B00C;
  block[3] = &unk_100095198;
  v8 = *(a1 + 32);
  v9 = v3;
  dispatch_sync(v4, block);

  v5 = +[OSIntelligenceAnalyticsManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithUnsignedLongLong:state64];
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Interrupt State Change %@", buf, 0xCu);
  }
}

uint64_t sub_10002B108(uint64_t a1)
{
  qword_1000B6A70 = [objc_alloc(*(a1 + 48)) initWithTrialClient:*(a1 + 32) withNamespace:*(a1 + 40)];

  return _objc_release_x1();
}

void sub_10002E14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002E170(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005D124(v3);
    }
  }
}

uint64_t sub_10002E1D4(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  [v3 batteryPercentage];
  *(*(*(a1 + 32) + 8) + 24) = v4;

  return 0;
}

void sub_10002E49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002E4CC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005D220(v3);
    }
  }
}

void sub_10002E530(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v6 = *(*(a1 + 32) + 8);
  if (!*(v6 + 40))
  {
    goto LABEL_4;
  }

  [v4 timestamp];
  v8 = v7;
  [*(*(*(a1 + 32) + 8) + 40) timestamp];
  v10 = v9;
  v11 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
  [v11 batteryPercentage];
  v13 = v12;

  if (v13 < 0x65)
  {
    *(*(a1 + 48) + 8 * v13) = v8 - v10 + *(*(a1 + 48) + 8 * v13);
    v6 = *(*(a1 + 32) + 8);
LABEL_4:
    objc_storeStrong((v6 + 40), a2);
    goto LABEL_8;
  }

  v14 = [*(a1 + 40) log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10005D2CC(v13);
  }

LABEL_8:
}

void sub_10002EACC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005D458(v3);
    }
  }
}

BOOL sub_10002EB30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 starting];

  if (v5)
  {
    [v3 timestamp];
    v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = 1;
  }

  else
  {
    v9 = *(*(*(a1 + 32) + 8) + 40) == 0;
  }

  return v9;
}

void sub_10002EE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10002EE60(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 hasInUseStatus];

  return v3;
}

void sub_10002EE9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005D4FC(v3);
    }
  }
}

BOOL sub_10002EF00(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 inUseStatus] & 5;

  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v4 == 0;
}

void sub_10002F4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 216), 8);
  _Block_object_dispose((v34 - 168), 8);
  _Unwind_Resume(a1);
}

int64_t sub_10002F538(id a1, BMStoreEvent *a2, BMStoreEvent *a3)
{
  v4 = a3;
  [(BMStoreEvent *)a2 timestamp];
  v5 = [NSNumber numberWithDouble:?];
  [(BMStoreEvent *)v4 timestamp];
  v7 = v6;

  v8 = [NSNumber numberWithDouble:v7];
  v9 = [v5 compare:v8];

  return v9;
}

void sub_10002F5D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005D5A8(v3);
    }
  }
}

void sub_10002F638(uint64_t a1, void *a2)
{
  v34 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v34 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = v34;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
    goto LABEL_18;
  }

  v8 = v34;
  v9 = [v8 eventBody];
  if ([v9 starting])
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);

    if (!v10)
    {
      v11 = *(*(a1 + 40) + 8);
      v12 = v8;
      v13 = *(v11 + 40);
      *(v11 + 40) = v12;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v13 = [v8 eventBody];
  if (([v13 starting] & 1) == 0)
  {
    v14 = *(*(*(a1 + 40) + 8) + 40);

    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
    v16 = 0.0;
    if ([v15 hasSecondsFromGMT])
    {
      v17 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
      [v17 secondsFromGMT];
      v16 = v18;
    }

    [*(*(*(a1 + 40) + 8) + 40) timestamp];
    v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:v16 + v19];
    [v8 timestamp];
    v21 = [NSDate dateWithTimeIntervalSinceReferenceDate:v16 + v20];
    v22 = *(*(*(a1 + 48) + 8) + 40);
    if (v22)
    {
      v23 = [v22 endDate];
      [v13 timeIntervalSinceDate:v23];
      v25 = v24;
      v26 = *(a1 + 64);

      if (v25 < v26)
      {
        [*(*(*(a1 + 56) + 8) + 40) removeObject:*(*(*(a1 + 48) + 8) + 40)];
        v27 = [*(*(*(a1 + 48) + 8) + 40) startDate];

        v13 = v27;
      }
    }

    v28 = [[_OSIntelligenceChargeSession alloc] initWithStartDate:v13 withEndDate:v21 withStartSoC:0 withEndSoC:0];
    v29 = *(*(a1 + 48) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    [v21 timeIntervalSinceDate:v13];
    if (v31 >= *(a1 + 72))
    {
      [*(*(*(a1 + 56) + 8) + 40) addObject:*(*(*(a1 + 48) + 8) + 40)];
    }

    v32 = *(*(a1 + 40) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = 0;
  }

LABEL_17:

LABEL_18:
  objc_autoreleasePoolPop(v3);
}

void sub_10002FE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v55 - 240), 8);
  _Block_object_dispose((v55 - 192), 8);
  _Unwind_Resume(a1);
}

int64_t sub_10002FE70(id a1, BMStoreEvent *a2, BMStoreEvent *a3)
{
  v4 = a3;
  [(BMStoreEvent *)a2 timestamp];
  v5 = [NSNumber numberWithDouble:?];
  [(BMStoreEvent *)v4 timestamp];
  v7 = v6;

  v8 = [NSNumber numberWithDouble:v7];
  v9 = [v5 compare:v8];

  return v9;
}

void sub_10002FF0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005D5A8(v3);
    }
  }
}

void sub_10002FF70(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = [v4 eventBody];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      v8 = *(a1 + 40);
      goto LABEL_5;
    }

    v11 = v4;
    v12 = [v11 eventBody];
    if ([v12 starting])
    {
      v13 = *(*(*(a1 + 48) + 8) + 40);

      if (!v13)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
        v14 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
        [v14 batteryPercentage];
        *(*(*(a1 + 56) + 8) + 24) = v15;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v14 = [v11 eventBody];
    if (([v14 starting] & 1) == 0)
    {
      v16 = *(*(*(a1 + 48) + 8) + 40);

      if (v16)
      {
        v17 = [*(*(*(a1 + 40) + 8) + 40) eventBody];
        v18 = 0.0;
        if ([v17 hasSecondsFromGMT])
        {
          v19 = [*(*(*(a1 + 40) + 8) + 40) eventBody];
          [v19 secondsFromGMT];
          v18 = v20;
        }

        [*(*(*(a1 + 48) + 8) + 40) timestamp];
        v22 = [NSDate dateWithTimeIntervalSinceReferenceDate:v18 + v21];
        [v11 timestamp];
        v24 = [NSDate dateWithTimeIntervalSinceReferenceDate:v18 + v23];
        v25 = *(*(*(a1 + 64) + 8) + 40);
        if (v25)
        {
          v26 = [v25 endDate];
          [v22 timeIntervalSinceDate:v26];
          v28 = v27;
          v29 = *(a1 + 80);

          if (v28 < v29)
          {
            [*(*(*(a1 + 72) + 8) + 40) removeObject:*(*(*(a1 + 64) + 8) + 40)];
            v30 = [*(*(*(a1 + 64) + 8) + 40) startDate];

            v31 = [*(*(*(a1 + 64) + 8) + 40) startSoC];
            *(*(*(a1 + 56) + 8) + 24) = [v31 intValue];

            v22 = v30;
          }
        }

        v32 = [_OSIntelligenceChargeSession alloc];
        v33 = [NSNumber numberWithInt:*(*(*(a1 + 56) + 8) + 24)];
        v34 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
        [v34 batteryPercentage];
        v35 = [NSNumber numberWithDouble:?];
        v36 = [(_OSIntelligenceChargeSession *)v32 initWithStartDate:v22 withEndDate:v24 withStartSoC:v33 withEndSoC:v35];
        v37 = *(*(a1 + 64) + 8);
        v38 = *(v37 + 40);
        *(v37 + 40) = v36;

        [v24 timeIntervalSinceDate:v22];
        if (v39 >= *(a1 + 88))
        {
          v40 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
          [v40 batteryPercentage];
          v42 = v41;
          v43 = *(a1 + 96);

          if (v42 >= v43)
          {
            [*(*(*(a1 + 72) + 8) + 40) addObject:*(*(*(a1 + 64) + 8) + 40)];
            v44 = [*(a1 + 104) log];
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              sub_10005D654(a1 + 64, v44);
            }
          }
        }

        v45 = *(*(a1 + 48) + 8);
        v46 = *(v45 + 40);
        *(v45 + 40) = 0;

        *(*(*(a1 + 56) + 8) + 24) = -1;
      }

      goto LABEL_24;
    }

LABEL_11:

LABEL_24:
    goto LABEL_25;
  }

  v8 = *(a1 + 32);
LABEL_5:
  objc_storeStrong((*(v8 + 8) + 40), a2);
LABEL_25:
  objc_autoreleasePoolPop(v5);
}

int64_t sub_100032730(id a1, _OSIIntervalProtocol *a2, _OSIIntervalProtocol *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [(_OSIIntervalProtocol *)v5 endDate];
  v7 = [(_OSIIntervalProtocol *)v5 startDate];

  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  v10 = [(_OSIIntervalProtocol *)v4 endDate];
  v11 = [(_OSIIntervalProtocol *)v4 startDate];

  [v10 timeIntervalSinceDate:v11];
  v13 = v12;

  if (v9 > v13)
  {
    return -1;
  }

  else
  {
    return v9 < v13;
  }
}

BOOL sub_100033310(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

uint64_t sub_100033350(uint64_t a1, void *a2)
{
  [a2 timestamp];
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

void sub_100033770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000337B0(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 hasInUseStatus];

  return v3;
}

void sub_100033BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100033C1C(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 hasInUseStatus];

  return v3;
}

id sub_100033C5C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [*(a1 + 40) isUserPresentWithDisplayBiomeActivityLevelEvent:v4];
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  return v5;
}

void sub_100037834(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

double sub_100037850@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, float a4@<S1>)
{
  result = -a3;
  *a1 = a4;
  *(a1 + 4) = result;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a2;
  return result;
}

void sub_100037884(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100037C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100037CB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateTrialParameters];
    WeakRetained = v2;
  }
}

void sub_1000382C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1000382F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) showsSignificantInactivity:v6])
  {
    [*(a1 + 40) setHour:{objc_msgSend(v5, "intValue")}];
    v7 = [*(a1 + 48) dateFromComponents:*(a1 + 40)];
    [v7 timeIntervalSinceDate:*(a1 + 56)];
    if (v8 == 0.0)
    {
      [v6 averageDuration];
      *(*(*(a1 + 64) + 8) + 24) = v17 + *(*(*(a1 + 64) + 8) + 24);
      v18 = *(*(a1 + 32) + 80);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        [v6 averageDuration];
        v21 = 134218242;
        v22 = v20;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " Using %.1fh from hour %@", &v21, 0x16u);
      }

      ++*(*(*(a1 + 72) + 8) + 24);
    }

    else
    {
      [v7 timeIntervalSinceDate:*(a1 + 56)];
      if (v9 > 0.0)
      {
        v10 = [v7 dateByAddingTimeInterval:-86400.0];

        v7 = v10;
      }

      [v6 averageDuration];
      v12 = [v7 dateByAddingTimeInterval:{fmin(v11, 8.0) * 3600.0}];
      [v12 timeIntervalSinceDate:*(a1 + 56)];
      v14 = v13;

      if (v14 > 0.0)
      {
        v15 = v14 / 3600.0;
        *(*(*(a1 + 64) + 8) + 24) = v15 + *(*(*(a1 + 64) + 8) + 24);
        ++*(*(*(a1 + 72) + 8) + 24);
        v16 = *(*(a1 + 32) + 80);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 134218242;
          v22 = v15;
          v23 = 2112;
          v24 = v5;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, " Using %.1fh from hour %@", &v21, 0x16u);
        }
      }
    }
  }
}

void sub_100039520(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1000B6A88;
  qword_1000B6A88 = v1;

  [qword_1000B6A88 setDateStyle:1];
  v3 = qword_1000B6A88;

  [v3 setTimeStyle:1];
}

uint64_t sub_10003C340(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000B6A90 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10003C990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 248), 8);
  _Unwind_Resume(a1);
}

int64_t sub_10003C9E0(id a1, BMStoreEvent *a2, BMStoreEvent *a3)
{
  v4 = a3;
  [(BMStoreEvent *)a2 timestamp];
  v5 = [NSNumber numberWithDouble:?];
  [(BMStoreEvent *)v4 timestamp];
  v7 = v6;

  v8 = [NSNumber numberWithDouble:v7];
  v9 = [v5 compare:v8];

  return v9;
}

BOOL sub_10003CA7C(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = v2 != 0;

  return v3;
}

BPSTuple *__cdecl sub_10003CAB4(id a1, BPSTuple *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(BMStoreEvent *)v5 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [BPSTuple alloc];
  v9 = v8;
  if (isKindOfClass)
  {
    v10 = [v8 initWithFirst:v5 second:0];
  }

  else
  {
    v11 = [(BPSTuple *)v4 first];
    v10 = [v9 initWithFirst:v11 second:v5];

    v5 = v11;
  }

  return v10;
}

BOOL sub_10003CB8C(uint64_t a1, void *a2)
{
  v3 = [a2 second];

  if (!v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10005ACB4(v4);
    }
  }

  return v3 != 0;
}

BOOL sub_10003CBF8(id a1, BPSTuple *a2)
{
  v2 = [(BPSTuple *)a2 second];
  v3 = [v2 eventBody];
  v4 = [v3 hasStarting];

  return v4;
}

void sub_10003CC4C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005E318(v3, v4);
    }
  }
}

void sub_10003CCB0(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  if (v8)
  {
    v9 = [v7 second];
    v10 = [v4 second];
    v11 = *(a1 + 32);
    v12 = [objc_opt_class() isLockedBiomeScreenLockedEvent:v9];
    v13 = *(a1 + 32);
    if (v12 == [objc_opt_class() isLockedBiomeScreenLockedEvent:v10])
    {
      v14 = [*(a1 + 32) log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Duplicate lock state; stitching by caching last state", buf, 2u);
      }

      goto LABEL_40;
    }

    v14 = [*(*(*(a1 + 40) + 8) + 40) first];
    v15 = [v4 first];
    v52 = +[NSTimeZone systemTimeZone];
    v50 = [v52 secondsFromGMT];
    [v9 timestamp];
    v54 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v10 timestamp];
    v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v53 = v16;
    if (v14)
    {
      v17 = [v14 eventBody];
      if (([v17 hasSecondsFromGMT] & 1) == 0)
      {
LABEL_17:

        goto LABEL_18;
      }

      v18 = [v14 eventBody];
      [v18 secondsFromGMT];
      v20 = v19;
      v21 = v50;

      v16 = v53;
      if (v20 != v50)
      {
        v22 = [*(a1 + 32) log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Start time might be in different timezone", buf, 2u);
        }

        v23 = [v14 eventBody];
        [v23 secondsFromGMT];
        v25 = vabdd_f64(v21, v24);

        v16 = v53;
        if (v25 >= 7200.0)
        {
          v26 = [*(a1 + 32) log];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = [v14 eventBody];
            [v27 secondsFromGMT];
            *buf = 134217984;
            v56 = (v21 - v28) / 3600.0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Start timezone change is significant with : %f hours", buf, 0xCu);

            v16 = v53;
          }

          v17 = [*(a1 + 32) latestTimeZoneChange];
          v29 = *(a1 + 32);
          if (v17)
          {
            v49 = [v29 latestTimeZoneChange];
            v30 = [v49 laterDate:v16];
            [*(a1 + 32) setLatestTimeZoneChange:v30];

            v16 = v53;
          }

          else
          {
            [v29 setLatestTimeZoneChange:v16];
          }

          goto LABEL_17;
        }
      }
    }

LABEL_18:
    if (v15)
    {
      v31 = [v15 eventBody];
      if ([v31 hasSecondsFromGMT])
      {
        v32 = [v15 eventBody];
        [v32 secondsFromGMT];
        v34 = v33;
        v35 = v50;

        v16 = v53;
        if (v34 == v50)
        {
          goto LABEL_30;
        }

        v36 = [*(a1 + 32) log];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "End time might be in different timezone", buf, 2u);
        }

        v37 = [v15 eventBody];
        [v37 secondsFromGMT];
        v39 = vabdd_f64(v35, v38);

        v16 = v53;
        if (v39 < 7200.0)
        {
          goto LABEL_30;
        }

        v40 = [*(a1 + 32) log];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = [v15 eventBody];
          [v41 secondsFromGMT];
          *buf = 134217984;
          v56 = (v35 - v42) / 3600.0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "End timezone change is significant with : %f hours", buf, 0xCu);

          v16 = v53;
        }

        v31 = [*(a1 + 32) latestTimeZoneChange];
        v43 = *(a1 + 32);
        if (v31)
        {
          v51 = [v43 latestTimeZoneChange];
          v44 = [v51 laterDate:v16];
          [*(a1 + 32) setLatestTimeZoneChange:v44];

          v16 = v53;
        }

        else
        {
          [v43 setLatestTimeZoneChange:v16];
        }
      }
    }

LABEL_30:
    v45 = [[_OSLockInterval alloc] initWithStartDate:v54 andEndDate:v16 andIsLocked:v12];
    v46 = v45;
    if (v45 && [(_OSIInterval *)v45 isValidInterval])
    {
      if ([(_OSLockInterval *)v46 hasReasonableDuration])
      {
        v47 = 56;
        if (v12)
        {
          v47 = 48;
        }

        [*(*(*(a1 + v47) + 8) + 40) addObject:v46];
      }
    }

    else
    {
      v48 = [*(a1 + 32) log];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        sub_10005AD90(v46, v48);
      }
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);

LABEL_40:
    goto LABEL_41;
  }

  objc_storeStrong(v6, a2);
LABEL_41:
}

void sub_10003E364(id a1)
{
  qword_1000B6AA0 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osintelligence.inactivity"];

  _objc_release_x1();
}

void sub_10003E3F0(id a1)
{
  qword_1000B6AB0 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osintelligence.lastlock"];

  _objc_release_x1();
}

void sub_10003E438(id a1)
{
  qword_1000B6AC0 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.osintelligence.chargingpredictor"];

  _objc_release_x1();
}

uint64_t sub_10003E770(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000B6AD0 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10003ED30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

int64_t sub_10003ED6C(id a1, BMStoreEvent *a2, BMStoreEvent *a3)
{
  v4 = a3;
  [(BMStoreEvent *)a2 timestamp];
  v5 = [NSNumber numberWithDouble:?];
  [(BMStoreEvent *)v4 timestamp];
  v7 = v6;

  v8 = [NSNumber numberWithDouble:v7];
  v9 = [v5 compare:v8];

  return v9;
}

BOOL sub_10003EE08(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = v2 != 0;

  return v3;
}

BPSTuple *__cdecl sub_10003EE40(id a1, BPSTuple *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(BMStoreEvent *)v5 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [BPSTuple alloc];
  v9 = v8;
  if (isKindOfClass)
  {
    v10 = [v8 initWithFirst:v5 second:0];
  }

  else
  {
    v11 = [(BPSTuple *)v4 first];
    v10 = [v9 initWithFirst:v11 second:v5];

    v5 = v11;
  }

  return v10;
}

BOOL sub_10003EF18(uint64_t a1, void *a2)
{
  v3 = [a2 second];

  if (!v3)
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10005ACB4(v4);
    }
  }

  return v3 != 0;
}

BOOL sub_10003EF84(id a1, BPSTuple *a2)
{
  v2 = [(BPSTuple *)a2 second];
  v3 = [v2 eventBody];
  v4 = [v3 hasInUseStatus];

  return v4;
}

void sub_10003EFD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005ACF8(v3, v4);
    }
  }
}

void sub_10003F03C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 40) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  if (!v8)
  {
    objc_storeStrong(v6, a2);
    goto LABEL_35;
  }

  v9 = [v7 second];
  v10 = [v4 second];
  v51 = [OSIntelligenceUtilities isUserPresentWithDisplayBiomeActivityLevelEvent:v9];
  v11 = [*(*(*(a1 + 40) + 8) + 40) first];
  v12 = [v4 first];
  v53 = +[NSTimeZone systemTimeZone];
  v13 = [v53 secondsFromGMT];
  [v9 timestamp];
  v52 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  [v10 timestamp];
  v54 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  if (v11)
  {
    v14 = [v11 eventBody];
    if (([v14 hasSecondsFromGMT] & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v15 = [v11 eventBody];
    [v15 secondsFromGMT];
    v17 = v16;
    v18 = v13;

    if (v17 != v13)
    {
      v19 = [*(a1 + 32) log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Start time might be in different timezone", buf, 2u);
      }

      v20 = [v11 eventBody];
      [v20 secondsFromGMT];
      v22 = vabdd_f64(v18, v21);

      if (v22 >= 7200.0)
      {
        v23 = [*(a1 + 32) log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [v11 eventBody];
          [v24 secondsFromGMT];
          *buf = 134217984;
          v56 = (v18 - v25) / 3600.0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Start timezone change is significant with : %f hours", buf, 0xCu);
        }

        v14 = [*(a1 + 32) latestTimeZoneChange];
        v26 = *(a1 + 32);
        if (v14)
        {
          v50 = [v26 latestTimeZoneChange];
          v27 = [v50 laterDate:v54];
          [*(a1 + 32) setLatestTimeZoneChange:v27];
        }

        else
        {
          [v26 setLatestTimeZoneChange:v54];
        }

        goto LABEL_14;
      }
    }
  }

LABEL_15:
  if (v12)
  {
    v28 = [v12 eventBody];
    if ([v28 hasSecondsFromGMT])
    {
      v29 = [v12 eventBody];
      [v29 secondsFromGMT];
      v31 = v30;
      v32 = v13;

      if (v31 == v13)
      {
        goto LABEL_27;
      }

      v33 = [*(a1 + 32) log];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "End time might be in different timezone", buf, 2u);
      }

      v34 = [v12 eventBody];
      [v34 secondsFromGMT];
      v36 = vabdd_f64(v32, v35);

      if (v36 < 7200.0)
      {
        goto LABEL_27;
      }

      v37 = [*(a1 + 32) log];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [v12 eventBody];
        [v38 secondsFromGMT];
        *buf = 134217984;
        v56 = (v32 - v39) / 3600.0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "End timezone change is significant with : %f hours", buf, 0xCu);
      }

      v28 = [*(a1 + 32) latestTimeZoneChange];
      v40 = *(a1 + 32);
      if (v28)
      {
        v41 = [v40 latestTimeZoneChange];
        v42 = [v41 laterDate:v54];
        [*(a1 + 32) setLatestTimeZoneChange:v42];
      }

      else
      {
        [v40 setLatestTimeZoneChange:v54];
      }
    }
  }

LABEL_27:
  v43 = [_OSUserPresenceInterval alloc];
  [v9 timestamp];
  v45 = v44;
  [v10 timestamp];
  v47 = [(_OSUserPresenceInterval *)v43 initWithStartTime:v51 andEndTime:v45 andPresenceStatus:v46];
  v48 = v47;
  if (v47 && [(_OSIInterval *)v47 isValidInterval])
  {
    if (([(_OSUserPresenceInterval *)v48 hasReasonableDuration]& v51) == 1)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v48];
    }
  }

  else
  {
    v49 = [*(a1 + 32) log];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      sub_10005AD90(v48, v49);
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);

LABEL_35:
}

BOOL sub_10003FA44(uint64_t a1, void *a2)
{
  v3 = [a2 startDate];
  [v3 timeIntervalSinceDate:*(a1 + 32)];
  v5 = v4 > 0.0;

  return v5;
}

void sub_100041BBC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[watch_duration alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100041E74(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [watch_durationOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(watch_durationOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_100042034(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [watch_durationOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(watch_durationOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_100042F64(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[watch_engage alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10004325C(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [watch_engageOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(watch_engageOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_100043464(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [watch_engageOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(watch_engageOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_1000442B4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[_OSHighBatteryDrainHighChargeDurationModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000445AC(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [_OSHighBatteryDrainHighChargeDurationModelOutput alloc];
    v7 = [v14 featureValueForName:@"label"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(_OSHighBatteryDrainHighChargeDurationModelOutput *)v6 initWithLabel:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_1000447B4(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [_OSHighBatteryDrainHighChargeDurationModelOutput alloc];
    v7 = [v14 featureValueForName:@"label"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(_OSHighBatteryDrainHighChargeDurationModelOutput *)v6 initWithLabel:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_1000455D4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[_OSHighBatteryDrainLowChargeDurationModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000458CC(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [_OSHighBatteryDrainLowChargeDurationModelOutput alloc];
    v7 = [v14 featureValueForName:@"label"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(_OSHighBatteryDrainLowChargeDurationModelOutput *)v6 initWithLabel:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_100045AD4(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [_OSHighBatteryDrainLowChargeDurationModelOutput alloc];
    v7 = [v14 featureValueForName:@"label"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(_OSHighBatteryDrainLowChargeDurationModelOutput *)v6 initWithLabel:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_1000468F0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[base_duration alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100046BA8(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [base_durationOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(base_durationOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_100046D68(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [base_durationOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(base_durationOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_100047BB8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[base_engage alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100047EB0(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [base_engageOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(base_engageOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_1000480B8(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [base_engageOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(base_engageOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_1000490BC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[durationModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100049374(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [durationModelOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(durationModelOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_100049534(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [durationModelOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(durationModelOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_10004CF54(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[xgb_last_lock_model alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10004D24C(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [xgb_last_lock_modelOutput alloc];
    v7 = [v14 featureValueForName:@"is_long"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(xgb_last_lock_modelOutput *)v6 initWithIs_long:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_10004D454(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [xgb_last_lock_modelOutput alloc];
    v7 = [v14 featureValueForName:@"is_long"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(xgb_last_lock_modelOutput *)v6 initWithIs_long:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_10004E8C4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[Prev12Next12Drain alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10004EBBC(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [Prev12Next12DrainOutput alloc];
    v7 = [v14 featureValueForName:@"24hour_only_drain_label_100"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(Prev12Next12DrainOutput *)v6 initWith_24hour_only_drain_label_100:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_10004EDC4(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [Prev12Next12DrainOutput alloc];
    v7 = [v14 featureValueForName:@"24hour_only_drain_label_100"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(Prev12Next12DrainOutput *)v6 initWith_24hour_only_drain_label_100:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_10004FE7C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[engageOnPlugin alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100050174(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [engageOnPluginOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(engageOnPluginOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_10005037C(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [engageOnPluginOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(engageOnPluginOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_100051294(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[easy_engage alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10005158C(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [easy_engageOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(easy_engageOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_100051794(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [easy_engageOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(easy_engageOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_100052324(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[tte_v1 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000525DC(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [tte_v1Output alloc];
    v7 = [v11 featureValueForName:@"tte"];
    [v7 doubleValue];
    v8 = [(tte_v1Output *)v6 initWithTte:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_10005279C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [tte_v1Output alloc];
    v7 = [v11 featureValueForName:@"tte"];
    [v7 doubleValue];
    v8 = [(tte_v1Output *)v6 initWithTte:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_1000534E8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[long_duration alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000537A0(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [long_durationOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(long_durationOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_100053960(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [long_durationOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(long_durationOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_1000548DC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[dynamic_scheduling alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100054B94(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [dynamic_schedulingOutput alloc];
    v7 = [v11 featureValueForName:@"charge_duration"];
    [v7 doubleValue];
    v8 = [(dynamic_schedulingOutput *)v6 initWithCharge_duration:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_100054D54(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [dynamic_schedulingOutput alloc];
    v7 = [v11 featureValueForName:@"charge_duration"];
    [v7 doubleValue];
    v8 = [(dynamic_schedulingOutput *)v6 initWithCharge_duration:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_100055928(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[_OSDischargeETA alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100055C28(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [_OSDischargeETAOutput alloc];
    v7 = [v14 featureValueForName:@"binned_hours_to_end"];
    v8 = [v7 stringValue];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(_OSDischargeETAOutput *)v6 initWithBinned_hours_to_end:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_100055E38(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [_OSDischargeETAOutput alloc];
    v7 = [v14 featureValueForName:@"binned_hours_to_end"];
    v8 = [v7 stringValue];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(_OSDischargeETAOutput *)v6 initWithBinned_hours_to_end:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_100056DE4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[longDurationModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10005709C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [longDurationModelOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(longDurationModelOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_10005725C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [longDurationModelOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(longDurationModelOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_100058218(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[shortDurationModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000584D0(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [shortDurationModelOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(shortDurationModelOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_100058690(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if (v11)
  {
    v5 = a3;
    v6 = [shortDurationModelOutput alloc];
    v7 = [v11 featureValueForName:@"duration_pred"];
    [v7 doubleValue];
    v8 = [(shortDurationModelOutput *)v6 initWithDuration_pred:?];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v8 = a3;
    v10(v9, 0, v8);
  }
}

void sub_100059700(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[engageModel alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000599F8(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [engageModelOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(engageModelOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_100059C00(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [engageModelOutput alloc];
    v7 = [v14 featureValueForName:@"engage"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(engageModelOutput *)v6 initWithEngage:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_10005A090()
{
  sub_100008628();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005A100()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005A13C()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005A178(void *a1)
{
  v1 = a1;
  v2 = +[OSIntelligenceUtilities deviceUsageDiagnosis];
  sub_100008628();
  sub_100008634(&_mh_execute_header, v3, v4, "[WARNING] DEVICE RARELY USED\n%@", v5, v6, v7, v8, v9);
}

void sub_10005A210()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005A2BC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[NSDate now];
  v5 = 134218242;
  v6 = a2;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "(%ld) %@ is out of time range; returning low confidence prediction", &v5, 0x16u);
}

void sub_10005A404(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100008660();
  sub_100008694();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0xEu);
}

void sub_10005A550()
{
  sub_100008628();
  sub_100008694();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void sub_10005A5D0()
{
  sub_100008628();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005A680(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100008660();
  sub_100008694();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0xEu);
}

void sub_10005A6FC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 predictor];
  v5 = [v4 predictorType];
  sub_100008628();
  sub_100008634(&_mh_execute_header, v6, v7, "Upgraded model but model is still model-independent: %@. Upgrade failed.", v8, v9, v10, v11, v12);
}

void sub_10005A958()
{
  sub_100008628();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005A9C8()
{
  sub_100008628();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005AA38()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005AA74()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005AAB0()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005AAEC()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005AB28()
{
  sub_100008628();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005AB98()
{
  sub_100008628();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005AC08()
{
  sub_100008628();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005AC78()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005ACF8(void *a1, NSObject *a2)
{
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error reading activity levels from Biome: %@", &v4, 0xCu);
}

void sub_10005AD90(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Dropping nil or invalid interval: %@", &v4, 0xCu);
}

void sub_10005AE28(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = [a2 allIntervalsSortByStartAsc];
  v7 = [v6 count];
  v8 = [a2 intervalsSameDayOfWeekAsQuery];
  v9 = [v8 count];
  v10 = [a2 intervalsSameWorkOrOffAsQuery];
  v11 = [v10 count];
  v12 = [a2 intervalsRecentFromQuery];
  v13 = 138413314;
  v14 = a1;
  v15 = 2048;
  v16 = v7;
  v17 = 2048;
  v18 = v9;
  v19 = 2048;
  v20 = v11;
  v21 = 2048;
  v22 = [v12 count];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Updated strata sizes with date %@: all=%lu | dow=%lu | woo=%lu | recent=%lu", &v13, 0x34u);
}

void sub_10005AF68(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown strata type %lu; default to all", &v2, 0xCu);
}

void sub_10005AFE0(os_log_t log, double a2, double a3)
{
  v3 = 134218240;
  v4 = a2;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid boundary arguments: (%.2f, %.2f)", &v3, 0x16u);
}

void sub_10005B068(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Activities: %@", &v2, 0xCu);
}

void sub_10005B124(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  sub_10001138C(&_mh_execute_header, v3, v4, "Error getting battery stream in batteryLevelByTimeSlot: %s", v5, v6, v7, v8, 2u);
}

void sub_10005B1CC(void *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1 - 1;
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = v3;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Computed slot: %lu out of bounds for max range: %lu ", &v4, 0x16u);
}

void sub_10005B25C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Added Slot %ld, battery level %ld", &v3, 0x16u);
}

void sub_10005B2E4(uint64_t a1)
{
  v1 = [NSNumber numberWithInteger:a1];
  sub_10001138C(&_mh_execute_header, v2, v3, "Skipping battery level %@", v4, v5, v6, v7, 2u);
}

void sub_10005B4F0()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005B52C(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Requery time overridden to %.2f sec", &v2, 0xCu);
}

void sub_10005B5A8()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005B658(int *a1, int *a2, os_log_t log)
{
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Invalid input range (%d,%d).\nBedtime and wakeup time cannot be the same and must be in range [0, 23]", v5, 0xEu);
}

void sub_10005B6E8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 predictor];
  v5 = [v4 predictorType];
  v6 = 138412290;
  v7 = v5;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Upgraded model but model is still model-independent: %@. Upgrade failed.", &v6, 0xCu);
}

void sub_10005B7F0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Reporting sleep suppression query event to CA: %@", &v2, 0xCu);
}

void sub_10005B868(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Is %@ in sleep window?", &v2, 0xCu);
}

void sub_10005B924(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "User chose model type %lu which is not supported; instantiating normally...", &v2, 0xCu);
}

void sub_10005B99C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Loading compiled model from %@", &v2, 0xCu);
}

void sub_10005BACC()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005BB08(void *a1, void *a2)
{
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 count];
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Array count %ld", &v4, 0xCu);
}

void sub_10005BC30()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005BC6C(void *a1, void *a2)
{
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 count];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Not enough data (%ld) from PPS to make prediction", &v4, 0xCu);
}

void sub_10005BD8C()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005BDC8()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005BEEC()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005C074(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [a2 timestamp];
  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v7 = [a3 title];
  sub_10001F8EC();
  sub_10001F904(&_mh_execute_header, v8, v9, "Playback ended at %@ (%@)", v10, v11, v12, v13, v14);
}

void sub_10005C138(void *a1, void *a2, void *a3)
{
  v5 = a1;
  [a2 timestamp];
  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v7 = [a3 title];
  sub_10001F8EC();
  sub_10001F904(&_mh_execute_header, v8, v9, "Playback started at %@ (%@)", v10, v11, v12, v13, v14);
}

void sub_10005C784(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Model output overridden to %@", &v2, 0xCu);
}

void sub_10005C7FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error unarchiving overridden output: %@", &v2, 0xCu);
}

void sub_10005C8B8()
{
  sub_100008628();
  sub_10000AEF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005C99C(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  sub_100008628();
  sub_10001138C(&_mh_execute_header, v3, v4, "Error getting plugin stream in signalMonitor: %s", v5, v6, v7, v8, v9);
}

void sub_10005CA40()
{
  sub_1000086A0();
  sub_10000AEF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005CA7C()
{
  sub_1000086A0();
  sub_10000AEF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005CAB8(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  sub_100008628();
  sub_10001138C(&_mh_execute_header, v3, v4, "Error getting KML in signalMonitor: %s", v5, v6, v7, v8, v9);
}

void sub_10005CB5C(uint8_t *buf, NSObject *a2, double a3)
{
  *buf = 134217984;
  *(buf + 4) = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "current time zone: %f", buf, 0xCu);
}

void sub_10005CBD4(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  sub_100008628();
  sub_10001138C(&_mh_execute_header, v3, v4, "Error getting TimeZone biome events in signal monitor: %s", v5, v6, v7, v8, v9);
}

void sub_10005CC78(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  sub_100008628();
  sub_10001138C(&_mh_execute_header, v3, v4, "Error getting Timezone/plugin biome events in signal monitor: %s", v5, v6, v7, v8, v9);
}

void sub_10005CD50()
{
  sub_1000086A0();
  sub_10000AEF0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005CD8C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error saving latest features: %@", &v2, 0xCu);
}

void sub_10005CF5C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Negative progress for interrupt with %@", &v3, 0xCu);
}

void sub_10005D0A4(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  sub_100008628();
  v7 = 2048;
  v8 = v3;
  sub_100037834(&_mh_execute_header, v4, v5, "Battery level at %@ is %lf", v6);
}

void sub_10005D124(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  sub_100008628();
  sub_100037818();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10005D1C8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Skipping battery level %@", buf, 0xCu);
}

void sub_10005D220(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  sub_100008628();
  sub_100037818();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10005D2CC(uint64_t a1)
{
  v1 = [NSNumber numberWithInteger:a1];
  sub_100008628();
  sub_100037818();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10005D364()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005D3E0()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005D41C()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005D458(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  sub_100008628();
  sub_100037818();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10005D4FC(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  sub_100008628();
  sub_100037818();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10005D5A8(void *a1)
{
  v1 = [a1 error];
  v2 = [v1 description];
  [v2 UTF8String];
  sub_100008628();
  sub_100037818();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10005D654(uint64_t a1, NSObject *a2)
{
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "  %@", &v3, 0xCu);
}

void sub_10005D6D8()
{
  sub_100008628();
  sub_100037828();
  v3 = v0;
  sub_100037834(&_mh_execute_header, v0, v1, "Timeline event '%@' exists %@", v2);
}

void sub_10005D74C()
{
  sub_10003786C();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10005D7C0()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005D7FC()
{
  sub_100008628();
  sub_100037828();
  sub_100037884(&_mh_execute_header, v0, v1, "Bad input point(s): Points should be arrays of length 2. PointA = %@. PointB = %@");
}

void sub_10005D86C(void *a1)
{
  v2 = [a1 startDate];
  v3 = [a1 endDate];
  sub_100037828();
  sub_100037818();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10005D93C(uint64_t a1, void *a2)
{
  v3 = [a2 startDate];
  v4 = [a2 endDate];
  sub_100037828();
  sub_100037818();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10005DA04()
{
  sub_100008628();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005DA74()
{
  sub_100008628();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005DAE4()
{
  sub_100008628();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005DB54()
{
  sub_100008628();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005DC04()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005DC40()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005DC7C()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005DCB8()
{
  sub_100008628();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005DD28()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005DD64()
{
  sub_100008628();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005DE48()
{
  sub_100008628();
  sub_100037828();
  sub_100037884(&_mh_execute_header, v0, v1, "Error loading model content from %@: %@");
}

void sub_10005DEB8()
{
  sub_1000086A0();
  sub_100008654();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005DEF4(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = [NSNumber numberWithUnsignedLongLong:a1];
  v8 = [NSNumber numberWithUnsignedLongLong:a2];
  v11 = 138412802;
  v12 = a3;
  sub_100037828();
  v13 = v7;
  v14 = v9;
  v15 = v10;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "(%@) current memory usage: %@ kB - peak usage: %@ kB", &v11, 0x20u);
}

void sub_10005DFD8(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Computing for hour %ld", buf, 0xCu);
}

void sub_10005E248(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 description];
  sub_100008628();
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "nil model for class: %@", v4, 0xCu);
}

void sub_10005E318(void *a1, NSObject *a2)
{
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error reading screen tz-lock tuples from Biome: %@", &v4, 0xCu);
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}