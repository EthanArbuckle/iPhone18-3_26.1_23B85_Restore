unint64_t sub_100320D04()
{
  result = qword_1004D9AE8;
  if (!qword_1004D9AE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D9AE8);
  }

  return result;
}

uint64_t sub_100320D50(void *a1)
{
  v2 = sub_100398CA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1003204D0(a1)[2] && (sub_1001EC1DC(0x64695F656E696CLL, 0xE700000000000000), (v6 & 1) != 0))
  {
    swift_unknownObjectRetain();

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 stringValue];
      v9 = sub_100398F58();
      swift_unknownObjectRelease();

      return v9;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_100398C98();
  v11 = sub_100398C88();
  v12 = sub_1003993E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Specified dictionary did not contain valid journey start relay campaign value.", v13, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_100320F84(void *a1)
{
  v2 = sub_100398CA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1003204D0(a1);
  if (v6[2] && (v7 = sub_1001EC1DC(0x6E676961706D6163, 0xEB0000000064695FLL), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_unknownObjectRetain();

    v14[3] = v9;
    sub_1001E27A8(&unk_1004D5850);
    if (swift_dynamicCast())
    {
      return v14[1];
    }
  }

  else
  {
  }

  sub_100398C98();
  v11 = sub_100398C88();
  v12 = sub_1003993E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Specified dictionary did not contain valid journey start relay campaign value.", v13, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

void sub_100321EBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = APPerfLogForCategory();
  v8 = [*(a1 + 32) intervalId];
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v9, "Request Certificate", "", v10, 2u);
    }
  }

  [*(a1 + 32) certificateRetrievalDidFinish:v6 error:v5];
}

void sub_10032243C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = APPerfLogForCategory();
  v8 = [*(a1 + 32) intervalId];
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v9, "SAP Negotiating", "", v10, 2u);
    }
  }

  [*(a1 + 32) setupNegotiationStepDidFinish:v6 certificateIsCached:*(a1 + 40) error:v5];
}

void sub_100323B9C(uint64_t a1)
{
  if (![*(a1 + 32) state])
  {
    [*(a1 + 32) setState:1];
    v2 = [*(a1 + 32) provider];
    [v2 setup];
  }
}

void sub_100324208(id a1)
{
  v2 = @"finalStatus";
  v3 = &off_100492E80;
  v1 = [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
  AnalyticsSendEvent();
}

void sub_100324BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100324BE0(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v2 rawSignatureForData:v3 error:&v6];
  v5 = v6;

  (*(*(a1 + 48) + 16))();
}

void sub_100324C68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained syncRequestsLock];

  [v8 lock];
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 requestsWhileInitializing];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 requestsWhileInitializing];
    [v7 removeObjectForKey:*(a1 + 32)];

    [v8 unlock];
    v5[2](v5);
  }

  else
  {
    [v8 unlock];
  }
}

void sub_100324E08(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    v8 = [a2 base64EncodedStringWithOptions:32];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8 = a3;
    v7(v6, 0);
  }
}

void sub_100325224(uint64_t a1)
{
  v1 = [*(a1 + 32) provider];
  [v1 retrySetup];
}

void sub_100325480(id a1)
{
  v1 = [APEventChannel alloc];
  v4 = +[APDestination ecRouter];
  v2 = [(APEventChannel *)v1 initWithDestination:v4 purpose:1234];
  v3 = qword_1004E6D28;
  qword_1004E6D28 = v2;
}

void sub_100325698(id a1)
{
  v1 = +[MetricsModuleClasses metricClass];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v1, v2, v3, objc_opt_class(), 0];
  [APSupportedSecureEncodedClass addClasses:v4];
}

APEventChannel *__cdecl sub_100325C28(id a1, NSString *a2)
{
  v2 = [(NSString *)a2 componentsSeparatedByString:@"/"];
  if ([v2 count] == 2)
  {
    v3 = [APEventChannel alloc];
    v4 = [APDestination alloc];
    v5 = [v2 objectAtIndexedSubscript:0];
    v6 = [(APDestination *)v4 initWithString:v5];
    v7 = [v2 objectAtIndexedSubscript:1];
    v8 = -[APEventChannel initWithDestination:purpose:](v3, "initWithDestination:purpose:", v6, [v7 intValue]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id *sub_1003270F8(id *result)
{
  if (*(result + 48) == 1)
  {
    return [result[4] flushMetricsToServerForChannel:result[5]];
  }

  if (*(result + 49) == 1)
  {
    return [result[4] metricsReadyForDeliveryToChannel:result[5]];
  }

  return result;
}

uint64_t sub_100327710(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 buildSignatureUsingSigning:*(a1 + 32) error:0];
  v6 = [*(a1 + 40) destination];
  v7 = [v6 protectedDestination];
  v8 = [*(a1 + 40) purpose];
  v9 = [v3 signature];
  v10 = +[APMetricStorage_private preparedDataPathForDestination:purpose:containsSignature:](APMetricStorage_private, "preparedDataPathForDestination:purpose:containsSignature:", v7, v8, [v9 length] != 0);

  v11 = +[NSDate now];
  v12 = [v11 yearDayOfYearHourMinute];
  v13 = +[NSUUID UUID];
  v14 = [v13 UUIDString];
  v15 = [NSString stringWithFormat:@"%@.%@", v12, v14];

  v16 = [v10 stringByAppendingPathComponent:v15];
  v17 = *(a1 + 48);
  v25 = 0;
  v18 = [v17 fileForWritingAtKeyPath:v16 error:&v25];
  v19 = v25;
  if (v19)
  {
    v20 = v19;
    v21 = APLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v20;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to save prepared data: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v24 = 0;
    [v18 addObject:v3 error:&v24];
    v20 = v24;
    [v18 close];
    if (!v20)
    {
      v22 = 1;
      goto LABEL_9;
    }

    v21 = APLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v20;
      goto LABEL_7;
    }
  }

  v22 = 0;
LABEL_9:

  objc_autoreleasePoolPop(v4);
  return v22;
}

id *sub_100327D4C(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = APMetricPreparedUnsignedDataProcessor;
    v10 = objc_msgSendSuper2(&v18, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a3);
      objc_storeWeak(a1 + 3, v7);
      objc_storeStrong(a1 + 5, a4);
      objc_initWeak(&location, a1);
      v11 = [APSequentialProcessor alloc];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100327EBC;
      v15[3] = &unk_10047E408;
      objc_copyWeak(&v16, &location);
      v12 = sub_1003951C0(v11, v8, v15);
      v13 = a1[4];
      a1[4] = v12;

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void sub_100327E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100327EBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100327F94;
  v10[3] = &unk_10047E3E0;
  v11 = v5;
  v9 = v5;
  [WeakRetained _processNextFile:v6 completionHandler:v10];
}

uint64_t sub_100327F94(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100327FB0(void *a1)
{
  if (a1)
  {
    v2 = APLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Unsigned prepared data server delivery update.", buf, 2u);
    }

    objc_initWeak(buf, a1);
    v3 = [a1 processor];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1003280D4;
    v4[3] = &unk_10047E430;
    objc_copyWeak(&v5, buf);
    sub_100395298(v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(buf);
  }
}

void sub_1003280B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

id sub_1003280D4(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained storage];
  v5 = +[APDestination ecRouter];
  v6 = [v4 preparedMetricDataForDestination:v5 purpose:1234 containsSignature:0];

  v7 = [v6 objectEnumerator];

  return v7;
}

void sub_1003282C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003282EC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _signFile:*(a1 + 32) usingSigningAuthority:v3 completionHandler:*(a1 + 40)];
}

uint64_t sub_100329620(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100329638(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) data];
  v4 = [*(a1 + 40) signature];
  v5 = [v2 _hashAndSavePayloadForInternalTesting:v3 signature:v4];

  v6 = [*(a1 + 40) headers];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  if (+[APSystemInternal isAppleInternalInstall])
  {
    [v7 setObject:@"true" forKeyedSubscript:@"X-Apple-EventCollection-Internal"];
  }

  v8 = +[APDeviceInfo current];
  v9 = [v8 deviceModel];
  [v7 setObject:v9 forKeyedSubscript:@"X-Apple-EventCollection-Model"];

  v10 = [v8 buildVersion];
  [v7 setObject:v10 forKeyedSubscript:@"X-Apple-EventCollection-Build"];

  v11 = +[APSystemInfo osIdentifier];
  [v7 setObject:v11 forKeyedSubscript:@"X-Apple-EventCollection-OS"];

  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"EventCollection %d", [&off_100493480 intValue]);
  [v7 setObject:v12 forKeyedSubscript:@"User-Agent"];

  v13 = [*(a1 + 40) signature];
  [v7 setObject:v13 forKeyedSubscript:@"X-Apple-ActionSignature"];

  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:@"apple-request-id"];
  }

  if (+[APSystemInternal isAppleInternalInstall])
  {
    v14 = [NSUserDefaults alloc];
    v15 = [v14 initWithSuiteName:APDefaultsBundleID];
    v16 = [v15 BOOLForKey:kAPAutomationLoggingEnabled];

    if (v16)
    {
      v17 = APLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Headers (%@)", buf, 0xCu);
      }
    }
  }

  v18 = sub_100007F08();
  sub_100394A90(v18, *(a1 + 48));

  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = [*(a1 + 40) data];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1003299E8;
  v25[3] = &unk_10047E4A0;
  v25[4] = *(a1 + 32);
  v26 = *(a1 + 64);
  v27 = *(a1 + 72);
  v24 = *(a1 + 80);
  v22 = v24;
  v28 = v24;
  v23 = [v19 POST:v20 headers:v7 body:v21 withCompletionHandler:v25];
}

void sub_1003299E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 URLResponse];
  v5 = [v4 statusCode];
  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v14 = 138478595;
    v15 = v8;
    v16 = 2113;
    v17 = v9;
    v18 = 2117;
    v19 = v10;
    v20 = 2048;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{private}@] Metric data sent to server (%{private}@) (%{sensitive}@) with result (%ld).", &v14, 0x2Au);
  }

  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
  v13 = v3;

  dispatch_group_leave(*(a1 + 56));
}

void sub_10032A0D8(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1004E6D50;
  qword_1004E6D50 = v1;

  [qword_1004E6D50 setDateFormat:@"yyyyDDDHHmm"];
  v3 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
  [qword_1004E6D50 setTimeZone:v3];

  v4 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1004E6D50 setLocale:v4];
}

void sub_10032A1E4(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1004E6D60;
  qword_1004E6D60 = v1;

  [qword_1004E6D60 setDateFormat:@"yyyyDDDHHmmSSSSSS"];
  v3 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
  [qword_1004E6D60 setTimeZone:v3];

  v4 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1004E6D60 setLocale:v4];
}

void sub_10032AB54(id a1)
{
  v1 = +[NSSet setWithObject:](NSSet, "setWithObject:", +[MetricsModuleClasses metricClass]);
  [APSupportedSecureEncodedClass addClasses:v1];
}

void sub_10032C604(uint64_t a1)
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Batch expired, batch ID: %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) signalMonitor];
  [v4 batchExpiredWithBatchID:*(a1 + 32)];
}

void sub_10032C6CC(uint64_t a1)
{
  v2 = [*(a1 + 32) signalMonitor];
  [v2 eventSavedWithCreatedToSavedTimeInterval:*(a1 + 48)];
}

void sub_10032C810(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) compactMapObjectsUsingBlock:&stru_10047E5B8];
    if (![v2 count])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = @"server";
    v5 = *(a1 + 64);
    if (!*(a1 + 56))
    {
      v4 = @"client";
    }

    v9 = 138543874;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    v13 = 2114;
    v14 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Upload failed with error %{public}@: %ld, batchIDs: %{public}@", &v9, 0x20u);
  }

  v6 = [*(a1 + 40) signalMonitor];
  v7 = v6;
  if (v2)
  {
    v8 = v2;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  [v6 uploadFailureWithType:*(a1 + 56) code:*(a1 + 64) batchIDs:v8];

LABEL_13:
}

id sub_10032C958(id a1, APMetricBatchInfoObservable *a2)
{
  v2 = a2;
  v3 = [(APMetricBatchInfoObservable *)v2 purpose];
  if (v3 < 1 || v3 == 8501)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(APMetricBatchInfoObservable *)v2 identifier];
  }

  return v5;
}

void sub_10032CA9C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) compactMapObjectsUsingBlock:&stru_10047E600];
    if (![v2 count])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Upload success", v5, 2u);
  }

  v4 = [*(a1 + 40) signalMonitor];
  [v4 uploadSuccess];

LABEL_8:
}

id sub_10032CB64(id a1, APMetricBatchInfoObservable *a2)
{
  v2 = a2;
  v3 = [(APMetricBatchInfoObservable *)v2 purpose];
  if (v3 < 1 || v3 == 8501)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(APMetricBatchInfoObservable *)v2 identifier];
  }

  return v5;
}

void sub_10032CBCC(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) compactMapObjectsUsingBlock:&stru_10047E620];
    if (![v2 count])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134218242;
    v6 = [v2 count];
    v7 = 2114;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Will upload %ld batches. BatchIDs: %{public}@", &v5, 0x16u);
  }

  v4 = [*(a1 + 40) signalMonitor];
  [v4 willUploadWithBatchCount:{objc_msgSend(v2, "count")}];

LABEL_8:
}

id sub_10032CCF0(id a1, APMetricBatchInfoObservable *a2)
{
  v2 = a2;
  v3 = [(APMetricBatchInfoObservable *)v2 purpose];
  if (v3 < 1 || v3 == 8501)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(APMetricBatchInfoObservable *)v2 identifier];
  }

  return v5;
}

id sub_10032CD58(uint64_t a1)
{
  [*(a1 + 32) _batchClosedWithBatchLifetime:*(a1 + 40) batchID:*(a1 + 64) eventsCount:*(a1 + 56)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);

  return [v2 _batchEnqueuedWithQueueLength:v3];
}

id sub_10032CDB8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v10 = 0;
  v6 = [v5 createdDateForFileAtPath:v4 error:&v10];

  v7 = v10;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    APSimulateCrashNoKillProcess();
  }

  return v6;
}

id sub_10032CE6C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v10 = 0;
  v6 = [v5 addedToDirectoryDateForFileAtPath:v4 error:&v10];

  v7 = v10;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    APSimulateCrashNoKillProcess();
  }

  return v6;
}

void sub_10032D078(id a1)
{
  if (!qword_1004E6D80)
  {
    qword_1004E6D80 = NSClassFromString(@"APMetric");
  }
}

void sub_10032D1B8(id a1)
{
  if (!qword_1004E6D90)
  {
    qword_1004E6D90 = NSClassFromString(@"APMetricBatch");
  }
}

void sub_10032D33C(id a1)
{
  if (!qword_1004E6DA0)
  {
    qword_1004E6DA0 = NSClassFromString(@"APMetricNotificationRegistrar");
  }
}

void sub_10032D508(id a1)
{
  if (!qword_1004E6DB0)
  {
    qword_1004E6DB0 = NSClassFromString(@"APMetricPurpose");
  }
}

void sub_10032D68C(id a1)
{
  if (!qword_1004E6DC0)
  {
    qword_1004E6DC0 = NSClassFromString(@"APMetricHTTPDelivery");
  }
}

void sub_10032D810(id a1)
{
  if (!qword_1004E6DD0)
  {
    qword_1004E6DD0 = NSClassFromString(@"APMetricServerDelivery");
  }
}

void sub_10032D950(id a1)
{
  if (!qword_1004E6DE0)
  {
    qword_1004E6DE0 = NSClassFromString(@"APMetricStorageEC");
  }
}

unint64_t typeTranslation(unint64_t result)
{
  if (result <= 5)
  {
    return qword_1003F0938[result];
  }

  return result;
}

id *sub_10032ECDC(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = APMetricPreparedDataServerDelivery;
    v13 = objc_msgSendSuper2(&v21, "init");
    a1 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, a3);
      objc_storeWeak(a1 + 2, v9);
      objc_storeWeak(a1 + 3, v11);
      objc_storeStrong(a1 + 7, a5);
      objc_initWeak(&location, a1);
      v14 = [APSequentialProcessor alloc];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10032EE70;
      v18[3] = &unk_10047E408;
      objc_copyWeak(&v19, &location);
      v15 = sub_1003951C0(v14, v10, v18);
      v16 = a1[6];
      a1[6] = v15;

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void sub_10032EE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10032EE70(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _uploadFile:v6];

  v5[2](v5, v8);
}

void sub_10032EF10(void *a1)
{
  if (a1)
  {
    v2 = APLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Prepared data server delivery update.", buf, 2u);
    }

    objc_initWeak(buf, a1);
    v3 = [a1 processor];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10032F034;
    v4[3] = &unk_10047E430;
    objc_copyWeak(&v5, buf);
    sub_100395298(v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(buf);
  }
}

void sub_10032F010(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

id sub_10032F034(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained storage];
  v5 = +[APDestination ecRouter];
  v6 = [v4 preparedMetricDataForDestination:v5 purpose:1234 containsSignature:1];

  v7 = [v6 objectEnumerator];
  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setFiles:v7];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 files];

  return v10;
}

void sub_10032F1E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_10032F208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained files];

  return v2;
}

id sub_1003329A4(uint64_t a1)
{
  v2 = +[APMetricOffsetSettings settings];
  v3 = qword_1004E6DF8;
  qword_1004E6DF8 = v2;

  v4 = *(a1 + 32);

  return [v4 _setupDefaultRoutes];
}

void sub_100332B20(id a1)
{
  if (!qword_1004E6E10)
  {
    qword_1004E6E10 = objc_opt_class();
  }
}

void sub_100332CA4(id a1)
{
  if (!qword_1004E6E20)
  {
    qword_1004E6E20 = objc_opt_class();
  }
}

id sub_100334454(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = 0;
  v5 = [v4 lastModifiedDateForFileAtPath:v3 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740227;
      v12 = v3;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error getting last modified date of batch at (%{sensitive}@)! %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = [v5 isBefore:*(a1 + 40)];
  }

  return v8;
}

void sub_100335F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100335F9C(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 count];
  if (result == 4)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    *a3 = 1;
  }

  return result;
}

void sub_1003361C0(id a1)
{
  qword_1004E6E28 = [NSMutableDictionary dictionaryWithCapacity:5];

  _objc_release_x1();
}

id sub_100336DDC(uint64_t a1)
{
  [*(a1 + 32) lock];
  if (([*(a1 + 40) isRunning] & 1) == 0)
  {
    [*(a1 + 40) setIsRunning:1];
    v2 = [*(a1 + 40) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100336E94;
    block[3] = &unk_1004790A8;
    block[4] = *(a1 + 40);
    dispatch_async(v2, block);
  }

  return [*(a1 + 32) unlock];
}

void sub_100337038(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003370D8;
  v5[3] = &unk_10047E8B8;
  v5[4] = *(a1 + 32);
  v6 = a2;
  dispatch_async(v4, v5);
}

void sub_100337214(id a1)
{
  v2 = objc_alloc_init(APJourneyBatchSettings);
  [(APJourneyBatchSettings *)v2 periodicDelayTimeInterval];
  qword_1004E6E38 = v1;
}

void sub_10033745C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100337480(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configurePreparedDataObjects];
}

void sub_100337590(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1003375B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained serverDeliveryQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003376CC;
  v10[3] = &unk_10047E908;
  v9 = v5;
  v11 = v9;
  objc_copyWeak(&v12, (a1 + 32));
  dispatch_async(v8, v10);

  v6[2](v6, @"OK");
  objc_destroyWeak(&v12);
}

void sub_1003376CC(uint64_t a1)
{
  v10 = objc_alloc_init(APFakeNetworkResponse);
  v2 = [(APFakeNetworkResponse *)v10 loadConfig:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v2)
  {
    v4 = v10;
  }

  else
  {
    v4 = 0;
  }

  [WeakRetained setFakeNetworkResponse:v4];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 backoffTimers];
  [v6 removeAllObjects];

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = [v7 lastProcessingDates];
  [v8 removeAllObjects];

  v9 = objc_loadWeakRetained((a1 + 40));
  [v9 processServerDeliveryTimer];
}

void sub_1003377F4(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  [v1 processServerDeliveryTimer];

  objc_destroyWeak(&to);
}

void sub_100338F3C(uint64_t a1, void *a2)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v3 = [a2 bundleIdentifier];
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_100339270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100339298(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003392B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [APEventChannel alloc];
  v5 = [*(a1 + 32) destination];
  v6 = [v3 intValue];

  v10 = [(APEventChannel *)v4 initWithDestination:v5 purpose:v6];
  v7 = [*(*(*(a1 + 40) + 8) + 40) arrayByAddingObject:v10];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100339AAC(uint64_t a1, char a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if (*(a1 + 56) == 1)
        {
          v10 = [*(a1 + 40) batchDeliveredClosure];
          if (v10)
          {
            v11 = [v9 identifier];
            (v10)[2](v10, v11, [v9 metricsCount]);
          }
        }

        v12 = APLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [v9 identifier];
          *buf = 138543362;
          v22 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "deleting batch %{public}@", buf, 0xCu);
        }

        v14 = [v9 fileSystemToken];
        v15 = [APMetricBatch removeBatchByFileSystemToken:v14];

        v7 &= v15;
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v7 & a2;
}

void sub_100339DA8(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 40));
  v2 = objc_loadWeakRetained(&to);
  [v2 processMetrics:*(a1 + 48) forChannel:*(a1 + 32)];

  objc_destroyWeak(&to);
}

void sub_10033A4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10033A4F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained preparedDataServerDelivery];
  sub_10032EF10(v1);
}

void sub_10033A7A0(id a1)
{
  qword_1004E6E50 = [[APDestination alloc] initWithString:@"ECRouter"];

  _objc_release_x1();
}

uint64_t sub_10033B27C()
{
  sub_100003894(v0 + 16);

  return swift_deallocClassInstance();
}

float sub_10033B2B4()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1000035B8(v0 + 2, v1);
  v3 = (*(v2 + 8))(v1, v2);
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v4 = sub_100398CA8();
  sub_10000351C(v4, qword_1004DE5D0);
  v5 = sub_100398C88();
  v6 = sub_1003993D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v11 = v8;
    sub_1003992E8();
    v9 = sub_100005700(0, 0xE000000000000000, &v11);

    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "time range offset: %s", v7, 0xCu);
    sub_100003894(v8);
  }

  return v3;
}

double variable initialization expression of ObservabilityManager.stateDumper@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10033B4DC()
{
  sub_1001E27A8(&unk_1004D7BF0);
  v0 = sub_100397E08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003EB210;
  v5 = (v4 + v3);
  *v5 = xmmword_1003EE0D0;
  v6 = enum case for IntBucketContents.range(_:);
  v7 = *(v1 + 104);
  v7(v5, enum case for IntBucketContents.range(_:), v0);
  *(v5 + v2) = xmmword_1003EE0E0;
  v7((v5 + v2), v6, v0);

  return IntBucketConfiguration.init(unknownBucketName:discreteBuckets:classifiedBuckets:)(100000, v4, _swiftEmptyArrayStorage);
}

Swift::Int sub_10033B62C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100399B58();
  sub_100399B68(v1);
  sub_100399B68(v2);
  return sub_100399B88();
}

void sub_10033B688()
{
  v1 = v0[1];
  sub_100399B68(*v0);
  sub_100399B68(v1);
}

Swift::Int sub_10033B6C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100399B58();
  sub_100399B68(v1);
  sub_100399B68(v2);
  return sub_100399B88();
}

uint64_t sub_10033B748()
{
  v1 = sub_100399998();
  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  sub_100399068(v2);
  v3._countAndFlagsBits = sub_100399998();
  sub_100399068(v3);

  return v1;
}

uint64_t getEnumTagSinglePayload for ObservabilityErrorBucket(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ObservabilityErrorBucket(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t sub_10033B838()
{
  result = qword_1004DA248[0];
  if (!qword_1004DA248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1004DA248);
  }

  return result;
}

uint64_t sub_10033B894()
{
  result = sub_1003995E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10033B910(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = ((*(v4 + 80) + ((v7 + ((v7 + *(v4 + 80)) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v4 + 80)) + v7;
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
        }

        if (v9)
        {
          if (v9 > 3)
          {
            LODWORD(v9) = 4;
          }

          if (v9 > 2)
          {
            if (v9 == 3)
            {
              LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v9) = *a1;
            }
          }

          else if (v9 == 1)
          {
            LODWORD(v9) = *a1;
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        return v6 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v15 = (*(v4 + 48))(a1, v5);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_10033BAB0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((*(v6 + 80) + ((v8 + ((v8 + *(v6 + 80)) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v6 + 80)) + v8;
  v11 = a3 >= v9;
  v12 = a3 - v9;
  if (v12 == 0 || !v11)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v10 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v13 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
  if (!HIWORD(v13))
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v15 = ~v9 + a2;
    if (v10 < 4)
    {
      v17 = (v15 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v15 & ~(-1 << (8 * v10));
        v19 = result;
        bzero(result, v10);
        result = v19;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v19 = v18;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v10] = v17;
              }

              else
              {
                *&result[v10] = v17;
              }

              return result;
            }
          }

          else
          {
            *v19 = v15;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
      v17 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v10] = v17;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v10] = 0;
  }

  else if (v5)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v20 = *(v6 + 56);

    return v20();
  }

  return result;
}

uint64_t sub_10033BD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v69 = a5;
  v74 = a4;
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v68 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1003995E8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v66 = &v61[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v67 = &v61[-v15];
  __chkstk_darwin(v14);
  v17 = &v61[-v16];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v75 = *(TupleTypeMetadata2 - 8);
  v19 = __chkstk_darwin(TupleTypeMetadata2);
  v65 = &v61[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v70 = &v61[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v61[-v24];
  v76 = v11;
  v77 = v23;
  v26 = *(v23 + 48);
  v27 = *(v11 + 16);
  v72 = a1;
  v28 = a1;
  v29 = v27;
  (v27)(&v61[-v24], v28, v10);
  v73 = a2;
  (v27)(&v25[v26], a2, v10);
  v30 = *(v8 + 48);
  v31 = v30(v25, 1, a3);
  v71 = v30;
  if (v31 == 1)
  {
    if (v30(&v25[v26], 1, a3) == 1)
    {
      v64 = v8;
      v32 = *(v76 + 8);
      v32(v25, v10);
      goto LABEL_8;
    }

LABEL_6:
    (*(v75 + 8))(v25, v77);
    return 0;
  }

  (v29)(v17, v25, v10);
  if (v30(&v25[v26], 1, a3) == 1)
  {
    (*(v8 + 8))(v17, a3);
    goto LABEL_6;
  }

  v33 = *(v8 + 32);
  v63 = v29;
  v34 = v68;
  v33(v68, &v25[v26], a3);
  v62 = sub_100398F08();
  v64 = v8;
  v35 = *(v8 + 8);
  v36 = v34;
  v29 = v63;
  v35(v36, a3);
  v35(v17, a3);
  v32 = *(v76 + 8);
  v32(v25, v10);
  if ((v62 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v63 = v32;
  v69 = type metadata accessor for FourNumberSummary();
  v37 = v69[11];
  v38 = *(v77 + 48);
  v39 = v72;
  v40 = v70;
  (v29)(v70, v72 + v37, v10);
  v41 = v73 + v37;
  v42 = v73;
  (v29)(&v40[v38], v41, v10);
  v43 = v71;
  if (v71(v40, 1, a3) != 1)
  {
    v44 = v67;
    (v29)(v67, v40, v10);
    v45 = v43(&v40[v38], 1, a3);
    v46 = v64;
    if (v45 != 1)
    {
      v48 = v44;
      v49 = v68;
      (*(v64 + 32))(v68, &v40[v38], a3);
      v62 = sub_100398F08();
      v50 = *(v46 + 8);
      v51 = v49;
      v39 = v72;
      v50(v51, a3);
      v50(v48, a3);
      v63(v40, v10);
      v42 = v73;
      v43 = v71;
      if ((v62 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v64 + 8))(v44, a3);
LABEL_13:
    (*(v75 + 8))(v40, v77);
    return 0;
  }

  if (v43(&v40[v38], 1, a3) != 1)
  {
    goto LABEL_13;
  }

  v63(v40, v10);
LABEL_17:
  if (*(v39 + v69[12]) == *(v42 + v69[12]))
  {
    v52 = v39;
    v53 = v69[13];
    v54 = *(v77 + 48);
    v55 = v65;
    (v29)(v65, v52 + v53, v10);
    (v29)(&v55[v54], v42 + v53, v10);
    if (v43(v55, 1, a3) == 1)
    {
      if (v43(&v55[v54], 1, a3) == 1)
      {
        v63(v55, v10);
        return 1;
      }

      goto LABEL_23;
    }

    (v29)(v66, v55, v10);
    if (v43(&v55[v54], 1, a3) == 1)
    {
      (*(v64 + 8))(v66, a3);
LABEL_23:
      (*(v75 + 8))(v55, v77);
      return 0;
    }

    v56 = v64;
    v57 = v68;
    (*(v64 + 32))(v68, &v55[v54], a3);
    v58 = v66;
    v59 = sub_100398F08();
    v60 = *(v56 + 8);
    v60(v57, a3);
    v60(v58, a3);
    v63(v55, v10);
    if (v59)
    {
      return 1;
    }
  }

  return 0;
}

__n128 sub_10033C4F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10033C528(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10033C570(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10033C5E0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v78 = a1;
  v74 = a2;
  v2 = sub_1001E27A8(&qword_1004D4CE0);
  v3 = __chkstk_darwin(v2 - 8);
  v67 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v69 = &v63 - v6;
  __chkstk_darwin(v5);
  v70 = &v63 - v7;
  v75 = type metadata accessor for TimeRange();
  v8 = __chkstk_darwin(v75);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v68 = &v63 - v11;
  __chkstk_darwin(v10);
  v66 = &v63 - v12;
  v77 = sub_100397968();
  v13 = *(v77 - 8);
  __chkstk_darwin(v77);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100397918();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100397318();
  v72 = *(v20 - 8);
  v73 = v20;
  __chkstk_darwin(v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100397748();
  v23 = *(v76 - 8);
  v24 = __chkstk_darwin(v76);
  v63 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v65 = &v63 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v63 - v29;
  __chkstk_darwin(v28);
  v32 = &v63 - v31;
  sub_100397678();
  sub_100397868();
  sub_100397928();
  v71 = v32;
  sub_100397888();
  (*(v13 + 8))(v15, v77);
  v33 = *(v17 + 8);
  v33(v19, v16);
  sub_1003972B8();
  sub_1003971D8();
  if (!v78)
  {
    v44 = v30;
    sub_100397298();
    sub_100397258();
    sub_100397868();
    v45 = v70;
    sub_1003978B8();
    v33(v19, v16);
    v35 = v76;
    result = (*(v23 + 48))(v45, 1, v76);
    if (result != 1)
    {
      v46 = v70;
      sub_100397678();
      v38 = *(v23 + 8);
      v38(v46, v35);
      v39 = v66;
      (*(v23 + 32))(v66, v44, v35);
      *(v39 + *(v75 + 20)) = 0;
      sub_1001E27A8(&qword_1004D5860);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1003EB210;
      result = sub_100397278();
      if ((v48 & 1) == 0)
      {
        *(v47 + 56) = &type metadata for Int;
        *(v47 + 64) = &protocol witness table for Int;
        *(v47 + 32) = result;
        result = sub_100397228();
        if ((v49 & 1) == 0)
        {
          *(v47 + 96) = &type metadata for Int;
          *(v47 + 104) = &protocol witness table for Int;
          *(v47 + 72) = result;
          goto LABEL_19;
        }

        goto LABEL_27;
      }

      goto LABEL_24;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v78 == 1)
  {
    sub_100397298();
    sub_100397868();
    v34 = v69;
    sub_1003978B8();
    v33(v19, v16);
    v35 = v76;
    result = (*(v23 + 48))(v34, 1, v76);
    if (result != 1)
    {
      v37 = v65;
      sub_100397678();
      v38 = *(v23 + 8);
      v38(v34, v35);
      v39 = v68;
      (*(v23 + 32))(v68, v37, v35);
      *(v39 + *(v75 + 20)) = 1;
      sub_1001E27A8(&qword_1004D5860);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1003C9260;
      result = sub_100397278();
      if ((v41 & 1) == 0)
      {
        *(v40 + 56) = &type metadata for Int;
        *(v40 + 64) = &protocol witness table for Int;
        *(v40 + 32) = result;
        result = sub_100397228();
        if ((v42 & 1) == 0)
        {
          *(v40 + 96) = &type metadata for Int;
          *(v40 + 104) = &protocol witness table for Int;
          *(v40 + 72) = result;
          result = sub_100397248();
          if ((v43 & 1) == 0)
          {
            *(v40 + 136) = &type metadata for Int;
            *(v40 + 144) = &protocol witness table for Int;
            *(v40 + 112) = result;
LABEL_19:
            v58 = sub_100398F88();
            v60 = v59;
            (*(v72 + 8))(v22, v73);
            v38(v71, v35);
            v61 = v74;
            sub_10000C120(v39, v74);
            result = type metadata accessor for ObservabilityReportingInterval(0);
            v62 = (v61 + *(result + 20));
            *v62 = v58;
            v62[1] = v60;
            return result;
          }

          goto LABEL_29;
        }

        goto LABEL_26;
      }

      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_21;
  }

  result = sub_100397288();
  if (v50)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_100397298();
  sub_100397868();
  v51 = v67;
  sub_1003978B8();
  v33(v19, v16);
  v35 = v76;
  result = (*(v23 + 48))(v51, 1, v76);
  if (result == 1)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v52 = v63;
  sub_100397678();
  v38 = *(v23 + 8);
  v38(v51, v35);
  v39 = v64;
  (*(v23 + 32))(v64, v52, v35);
  *(v39 + *(v75 + 20)) = 2;
  sub_1001E27A8(&qword_1004D5860);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1003EB200;
  result = sub_100397278();
  if (v54)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v53 + 56) = &type metadata for Int;
  *(v53 + 64) = &protocol witness table for Int;
  *(v53 + 32) = result;
  result = sub_100397228();
  if (v55)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v53 + 96) = &type metadata for Int;
  *(v53 + 104) = &protocol witness table for Int;
  *(v53 + 72) = result;
  result = sub_100397248();
  if (v56)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v53 + 136) = &type metadata for Int;
  *(v53 + 144) = &protocol witness table for Int;
  *(v53 + 112) = result;
  result = sub_100397288();
  if ((v57 & 1) == 0)
  {
    *(v53 + 176) = &type metadata for Int;
    *(v53 + 184) = &protocol witness table for Int;
    *(v53 + 152) = result;
    goto LABEL_19;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10033CF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1003999B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10033CFD8(uint64_t a1)
{
  v2 = sub_10033E5A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033D014(uint64_t a1)
{
  v2 = sub_10033E5A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10033D050@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_1001E27A8(&qword_1004DA2D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_1001E27A8(&qword_1004DA400);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ObservabilityStateDumper.ObservabilityStateDumperParams(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UtcDate();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1000035B8(a1, a1[3]);
  sub_10033E5A4();
  v13 = v18;
  sub_100399BC8();
  if (!v13)
  {
    v14 = v16;
    sub_10033E5F8(&qword_1004DCEE0, type metadata accessor for UtcDate);
    sub_1003998A8();
    (*(v17 + 8))(v8, v6);
    sub_10033E640(v5, v11);
    sub_10033E6B0(v11, v14, type metadata accessor for ObservabilityStateDumper.ObservabilityStateDumperParams);
  }

  sub_100003894(a1);
  return sub_10033E39C(v11, type metadata accessor for ObservabilityStateDumper.ObservabilityStateDumperParams);
}

uint64_t sub_10033D320(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004DA2D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_100397748();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10033D600(a1, v4);
  v12 = type metadata accessor for UtcDate();
  if ((*(*(v12 - 8) + 48))(v4, 1, v12) == 1)
  {
    sub_1001ED244(v4, &qword_1004DA2D0);
    (*(v9 + 56))(v7, 1, 1, v8);
    sub_100397738();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_1001ED244(v7, &qword_1004D4CE0);
    }
  }

  else
  {
    (*(v9 + 16))(v7, v4, v8);
    sub_10033E39C(v4, type metadata accessor for UtcDate);
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v11, v7, v8);
  }

  v13 = sub_10033D670();
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_10033D600(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004DA2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033D670()
{
  v1 = v0;
  v97 = sub_100397318();
  v100 = *(v97 - 8);
  __chkstk_darwin(v97);
  v93 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100397918();
  v99 = *(v96 - 8);
  __chkstk_darwin(v96);
  v85 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100397748();
  v101 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v78 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v79 = &v77 - v8;
  __chkstk_darwin(v7);
  v82 = &v77 - v9;
  v95 = type metadata accessor for TimeRange();
  __chkstk_darwin(v95);
  v84 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001E27A8(&qword_1004D4CE0);
  v12 = __chkstk_darwin(v11 - 8);
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v83 = &v77 - v15;
  v16 = __chkstk_darwin(v14);
  v86 = &v77 - v17;
  v18 = __chkstk_darwin(v16);
  v92 = (&v77 - v19);
  __chkstk_darwin(v18);
  v21 = &v77 - v20;
  v22 = type metadata accessor for ObservabilityReportingInterval(0);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v77 - v27;
  __chkstk_darwin(v26);
  v30 = &v77 - v29;
  v32 = v0[3];
  v31 = v0[4];
  sub_1000035B8(v0, v32);
  v33 = (*(v31 + 8))(v32, v31);
  v90 = v30;
  sub_10033C5E0(0, v30);
  v87 = v28;
  sub_10033C5E0(1, v28);
  v80 = v25;
  v34 = v25;
  v35 = v4;
  sub_10033C5E0(2, v34);
  v36 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v102 = 0;
  v103 = 0xE000000000000000;
  sub_1003996F8(252);
  v104._countAndFlagsBits = 0xD000000000000033;
  v104._object = 0x8000000100437FE0;
  sub_100399068(v104);
  v37 = sub_10033E5F8(&qword_1004D5AC0, &type metadata accessor for Date);
  v105._countAndFlagsBits = sub_100399998();
  sub_100399068(v105);

  v106._countAndFlagsBits = 10272;
  v106._object = 0xE200000000000000;
  sub_100399068(v106);
  v107._countAndFlagsBits = sub_100397618();
  sub_100399068(v107);

  v108._countAndFlagsBits = 0xD00000000000001CLL;
  v108._object = 0x8000000100438020;
  sub_100399068(v108);
  sub_1003992E8();
  v109._countAndFlagsBits = 10272;
  v109._object = 0xE200000000000000;
  sub_100399068(v109);
  v77 = v36;
  v38 = [v36 stringFromTimeInterval:floorf(v33 * 86400.0)];
  if (v38)
  {
    v39 = v38;
    v40 = sub_100398F58();
    v42 = v41;
  }

  else
  {
    v42 = 0xE300000000000000;
    v40 = 7104878;
  }

  v110._countAndFlagsBits = v40;
  v110._object = v42;
  sub_100399068(v110);

  v111._countAndFlagsBits = 0xD00000000000001CLL;
  v111._object = 0x8000000100438040;
  sub_100399068(v111);
  v43 = v1[15];
  v44 = v1[16];
  sub_1000035B8(v1 + 12, v43);
  (*(v44 + 32))(v43, v44);
  v45 = v101;
  v46 = v101 + 48;
  v98 = *(v101 + 48);
  v47 = 7104878;
  if (v98(v21, 1, v35) == 1)
  {
    sub_1001ED244(v21, &qword_1004D4CE0);
    v48 = 0xE300000000000000;
    v49 = 7104878;
  }

  else
  {
    v49 = sub_100397618();
    v48 = v50;
    (*(v45 + 8))(v21, v35);
  }

  v112._countAndFlagsBits = v49;
  v112._object = v48;
  sub_100399068(v112);

  v113._object = 0x8000000100438060;
  v113._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100399068(v113);
  v51 = v1[10];
  v52 = v1[11];
  sub_1000035B8(v1 + 7, v51);
  v53 = v92;
  (*(v52 + 32))(v51, v52);
  v94 = v46;
  v54 = v98(v53, 1, v35);
  v55 = v100;
  if (v54 == 1)
  {
    sub_1001ED244(v53, &qword_1004D4CE0);
    v56 = 0xE300000000000000;
    v57 = v97;
    v58 = v93;
    v59 = v99;
    v60 = v101;
  }

  else
  {
    v47 = sub_100397618();
    v56 = v61;
    v60 = v101;
    (*(v101 + 8))(v53, v35);
    v57 = v97;
    v58 = v93;
    v59 = v99;
  }

  v114._countAndFlagsBits = v47;
  v114._object = v56;
  sub_100399068(v114);

  v115._object = 0x8000000100438080;
  v115._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100399068(v115);
  v62 = v84;
  sub_10033E6B0(v90, v84, type metadata accessor for TimeRange);
  v116._countAndFlagsBits = sub_100399998();
  v91 = v37;
  sub_100399068(v116);

  v92 = *(v60 + 8);
  v93 = (v60 + 8);
  v92(v62, v35);
  v117._countAndFlagsBits = 2108704;
  v117._object = 0xE300000000000000;
  sub_100399068(v117);
  v63 = v85;
  sub_100397868();
  sub_10000BE6C();
  v64 = v86;
  sub_1003978C8();
  v65 = *(v55 + 8);
  v100 = v55 + 8;
  v89 = v65;
  v65(v58, v57);
  v88 = *(v59 + 8);
  v99 = v59 + 8;
  v88(v63, v96);
  result = (v98)(v64, 1, v35);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v67 = *(v101 + 32);
  v68 = v82;
  v101 += 32;
  v86 = v67;
  (v67)(v82, v64, v35);
  v118._countAndFlagsBits = sub_100399998();
  sub_100399068(v118);

  v69 = v92;
  v92(v68, v35);
  v119._object = 0x80000001004380A0;
  v119._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100399068(v119);
  sub_10033E6B0(v87, v62, type metadata accessor for TimeRange);
  v120._countAndFlagsBits = sub_100399998();
  sub_100399068(v120);

  v69(v62, v35);
  v121._countAndFlagsBits = 2108704;
  v121._object = 0xE300000000000000;
  sub_100399068(v121);
  sub_100397868();
  sub_10000BE6C();
  v70 = v83;
  sub_1003978C8();
  v89(v58, v97);
  v88(v63, v96);
  result = (v98)(v70, 1, v35);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v71 = v79;
  (v86)(v79, v70, v35);
  v122._countAndFlagsBits = sub_100399998();
  sub_100399068(v122);

  v72 = v92;
  v92(v71, v35);
  v123._object = 0x80000001004380C0;
  v123._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100399068(v123);
  v73 = v80;
  sub_10033E6B0(v80, v62, type metadata accessor for TimeRange);
  v124._countAndFlagsBits = sub_100399998();
  sub_100399068(v124);

  v72(v62, v35);
  v125._countAndFlagsBits = 2108704;
  v125._object = 0xE300000000000000;
  sub_100399068(v125);
  sub_100397868();
  sub_10000BE6C();
  v74 = v81;
  sub_1003978C8();
  v89(v58, v97);
  v88(v63, v96);
  result = (v98)(v74, 1, v35);
  if (result != 1)
  {
    v75 = v78;
    (v86)(v78, v74, v35);
    v126._countAndFlagsBits = sub_100399998();
    sub_100399068(v126);

    v92(v75, v35);

    v76 = v102;
    sub_10033E39C(v73, type metadata accessor for ObservabilityReportingInterval);
    sub_10033E39C(v87, type metadata accessor for ObservabilityReportingInterval);
    sub_10033E39C(v90, type metadata accessor for ObservabilityReportingInterval);
    return v76;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10033E39C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10033E424()
{
  result = type metadata accessor for TimeRange();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10033E4E0()
{
  sub_10033E54C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10033E54C()
{
  if (!qword_1004DA3D0)
  {
    type metadata accessor for UtcDate();
    v0 = sub_1003995E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004DA3D0);
    }
  }
}

unint64_t sub_10033E5A4()
{
  result = qword_1004DA408;
  if (!qword_1004DA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DA408);
  }

  return result;
}

uint64_t sub_10033E5F8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10033E640(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004DA2D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033E6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10033E72C()
{
  result = qword_1004DA410;
  if (!qword_1004DA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DA410);
  }

  return result;
}

unint64_t sub_10033E784()
{
  result = qword_1004DA418;
  if (!qword_1004DA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DA418);
  }

  return result;
}

unint64_t sub_10033E7DC()
{
  result = qword_1004DA420;
  if (!qword_1004DA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DA420);
  }

  return result;
}

id sub_10033E830()
{
  v1 = v0;
  v2 = sub_100397418();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1003974E8();
  v6 = *(v59 - 8);
  v7 = __chkstk_darwin(v59);
  v56 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  v11 = sub_1001E27A8(&qword_1004D4AB8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v57 = &v46 - v15;
  v16 = &v1[OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_propertyListDirectoryName];
  *v16 = 1280331841;
  *(v16 + 1) = 0xE400000000000000;
  v55 = v16;
  v17 = &selRef_fetchSponsorshipAdsWithActivityIfFeatureFlagEnabled_;
  v18 = [objc_allocWithZone(NSFileManager) init];
  *&v1[OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileManager] = v18;
  v19 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v20 = sub_100399198();

  v21 = *(v20 + 16);
  if (v21 && (v22 = v20 + 16 + 16 * v21, v23 = *(v22 + 8), v53 = *v22, v54 = v10, , , v24 = [objc_opt_self() mainBundle], v25 = objc_msgSend(v24, "bundleIdentifier"), v24, v25))
  {
    v26 = sub_100398F58();
    v27 = v6;
    v58 = v6;
    v28 = v2;
    v47 = v23;
    v48 = v26;
    v29 = v14;
    v31 = v30;

    v32 = *(v27 + 56);
    v50 = v27 + 56;
    v51 = v32;
    v33 = v59;
    v32(v29, 1, 1, v59);
    v34 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v52 = v1;
    v35 = *(v3 + 104);
    v35(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v28);
    v36 = v35;
    v49 = v35;
    v37 = v56;
    sub_1003974C8();
    v60 = v48;
    v61 = v31;
    v36(v5, v34, v28);
    v48 = sub_1001E4D94();
    v38 = v54;
    sub_1003974D8();
    v47 = *(v3 + 8);
    v47(v5, v28);
    v39 = *(v58 + 8);
    v58 += 8;
    v53 = v39;
    v39(v37, v33);

    v40 = v55[1];
    v60 = *v55;
    v61 = v40;
    v49(v5, v34, v28);
    v1 = v52;

    v41 = v57;
    sub_1003974D8();
    v47(v5, v28);

    v53(v38, v33);
    v42 = v33;
    v17 = &selRef_fetchSponsorshipAdsWithActivityIfFeatureFlagEnabled_;
    v51(v41, 0, 1, v42);
    sub_100340604(v41, &v1[OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileDirectory]);
  }

  else
  {

    sub_1003993E8();
    sub_100206B54();
    v43 = sub_1003995A8();
    sub_100398B98();

    (*(v6 + 56))(&v1[OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileDirectory], 1, 1, v59);
  }

  v44 = type metadata accessor for PropertyListFileManagerFileSystem();
  v62.receiver = v1;
  v62.super_class = v44;
  return objc_msgSendSuper2(&v62, v17[225]);
}

uint64_t sub_10033EDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_100397418();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001E27A8(&qword_1004D4AB8);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_1003974E8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100340594(v3 + OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileDirectory, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1001ED244(v12, &qword_1004D4AB8);
    sub_1003993E8();
    sub_100206B54();
    v17 = sub_1003995A8();
    sub_100398B98();

    v18 = 1;
    v19 = v23;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v24 = a1;
    v25 = a2;
    (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
    sub_1001E4D94();
    v20 = v23;
    sub_1003974D8();
    (*(v7 + 8))(v9, v6);
    (*(v14 + 8))(v16, v13);
    v18 = 0;
    v19 = v20;
  }

  return (*(v14 + 56))(v19, v18, 1, v13);
}

id sub_10033F100()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PropertyListFileManagerFileSystem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PropertyListFileManagerFileSystem()
{
  result = qword_1004DA470;
  if (!qword_1004DA470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10033F1FC()
{
  sub_10033F2A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10033F2A4()
{
  if (!qword_1004DA480)
  {
    sub_1003974E8();
    v0 = sub_1003995E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004DA480);
    }
  }
}

uint64_t sub_10033F2FC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001E27A8(&qword_1004D4AB8);
  __chkstk_darwin(v5 - 8);
  v7 = &v24[-v6];
  v8 = sub_1003974E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10033EDD4(a1, a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1001ED244(v7, &qword_1004D4AB8);
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = *(v2 + OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileManager);
  sub_100397488(0);
  v14 = sub_100398F28();

  v15 = [v13 fileExistsAtPath:v14];

  if (v15)
  {
    sub_100397438(v16);
    v18 = v17;
    v25 = 0;
    v19 = [v13 removeItemAtURL:v17 error:&v25];

    if (v19)
    {
      v20 = *(v9 + 8);
      v21 = v25;
      return v20(v11, v8);
    }

    v22 = v25;
    sub_1003973E8();

    swift_willThrow();
    sub_1003993E8();
    sub_100206B54();
    v23 = sub_1003995A8();
    sub_100398B98();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10033F600(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001E27A8(&qword_1004D4AB8);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1003974E8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  sub_10033EDD4(a1, a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1001ED244(v7, &qword_1004D4AB8);
    return 0;
  }

  (*(v9 + 32))(v14, v7, v8);
  v15 = *(v2 + OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileManager);
  sub_100397488(0);
  v16 = sub_100398F28();

  v17 = [v15 fileExistsAtPath:v16];

  if (!v17)
  {
    sub_1003993D8();
    sub_100206B54();
    v19 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1003C9930;
    v21 = sub_100397488(0);
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100206BA0();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    sub_100398B98();

    (*(v9 + 8))(v14, v8);
    return 0;
  }

  (*(v9 + 16))(v12, v14, v8);
  v18 = objc_allocWithZone(NSDictionary);
  v25 = sub_100340448(v12);
  (*(v9 + 8))(v14, v8);
  v26 = 0;
  sub_1001E27A8(&unk_1004D4400);
  sub_100398E58();

  result = v26;
  if (!v26)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10033FA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1001E27A8(&qword_1004D4AB8);
  __chkstk_darwin(v7 - 8);
  v9 = &v38[-v8];
  v10 = sub_1003974E8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v38[-v15];
  sub_10033EDD4(a2, a3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1001ED244(v9, &qword_1004D4AB8);
  }

  (*(v11 + 32))(v16, v9, v10);
  sub_100397458();
  v18 = *(v4 + OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileManager);
  sub_100397488(0);
  v19 = sub_100398F28();

  v20 = [v18 fileExistsAtPath:v19];

  if ((v20 & 1) == 0)
  {
    sub_100397438(v21);
    v23 = v22;
    v39 = 0;
    v24 = [v18 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v39];

    if (v24)
    {
      v25 = v39;
    }

    else
    {
      v26 = v39;
      sub_1003973E8();

      swift_willThrow();
      sub_1003993E8();
      sub_100206B54();
      v27 = sub_1003995A8();
      sub_100398B98();
    }
  }

  sub_1001E27A8(&unk_1004D4400);
  isa = sub_100398E48().super.isa;
  sub_100397438(v29);
  v31 = v30;
  v39 = 0;
  v32 = [(objc_class *)isa writeToURL:v30 error:&v39];

  if (v32)
  {
    v33 = *(v11 + 8);
    v34 = v39;
    v33(v14, v10);
    return (v33)(v16, v10);
  }

  else
  {
    v35 = v39;
    sub_1003973E8();

    swift_willThrow();
    sub_1003993E8();
    sub_100206B54();
    v36 = sub_1003995A8();
    sub_100398B98();

    v37 = *(v11 + 8);
    v37(v14, v10);
    return (v37)(v16, v10);
  }
}

void *sub_10033FF08(void *a1, uint64_t a2)
{
  v3 = v2;
  v35[0] = a2;
  v5 = sub_100397418();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001E27A8(&qword_1004D4AB8);
  __chkstk_darwin(v9 - 8);
  v11 = v35 - v10;
  v12 = sub_1003974E8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v35 - v17;
  sub_100340594(v3 + OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileDirectory, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1001ED244(v11, &qword_1004D4AB8);
    sub_1003993E8();
    sub_100206B54();
    v19 = sub_1003995A8();
    v20 = _swiftEmptyArrayStorage;
    sub_100398B98();
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    v36[0] = a1;
    v36[1] = v35[0];
    v37 = _swiftEmptyArrayStorage;
    (*(v6 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
    sub_1001E4D94();
    sub_1003974D8();
    (*(v6 + 8))(v8, v5);
    sub_100397488(0);
    v21 = *(v13 + 8);
    v21(v16, v12);
    v22 = *(v3 + OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileManager);
    v23 = sub_100398F28();

    v36[0] = 0;
    v24 = [v22 contentsOfDirectoryAtPath:v23 error:v36];

    v25 = v36[0];
    if (v24)
    {
      v26 = sub_100399198();
      v27 = v25;

      sub_1003535A0(v26);
    }

    else
    {
      v28 = v36[0];
      sub_1003973E8();

      swift_willThrow();
      v29 = sub_1003993E8();
      sub_100206B54();
      v30 = sub_1003995A8();
      if (os_log_type_enabled(v30, v29))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        swift_errorRetain();
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v33;
        *v32 = v33;
        _os_log_impl(&_mh_execute_header, v30, v29, "Error: Could not get files in directory, error info: %@", v31, 0xCu);
        sub_1001ED244(v32, &qword_1004D8610);
      }

      else
      {
      }
    }

    v21(v18, v12);
    return v37;
  }

  return v20;
}

id sub_100340448(uint64_t a1)
{
  v2 = v1;
  sub_100397438(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_1003974E8();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_1003973E8();

    swift_willThrow();
    v12 = sub_1003974E8();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_100340594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D4AB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100340604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D4AB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100340674()
{
  swift_unknownObjectRelease();
  sub_100003894(v0 + 24);
  sub_100003894(v0 + 64);
  sub_100003894(v0 + 104);
  sub_100003894(v0 + 144);

  return swift_deallocClassInstance();
}

uint64_t sub_1003406F0(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for TimeRange();
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  __chkstk_darwin(v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - v8;
  v10 = sub_100397748();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[16];
  v15 = v1[17];
  sub_1000035B8(v1 + 13, v14);
  v16 = (*(v15 + 8))(v14, v15);
  v17 = v1[21];
  v18 = v1[22];
  sub_1000035B8(v2 + 18, v2[21]);
  (*(v18 + 8))(v16, v17, v18);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1001ED244(v9, &qword_1004D4CE0);
  }

  v52 = v11;
  (*(v11 + 32))(v13, v9, v10);
  sub_1000035B8(v1 + 8, v1[11]);
  v20 = sub_100340D88(v56, 2 - v16, v13);
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v21 = sub_100398CA8();
  sub_10000351C(v21, qword_1004DE5D0);

  v22 = sub_100398C88();
  v23 = sub_1003993C8();

  v24 = os_log_type_enabled(v22, v23);
  v53 = v13;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v25 = 136315394;
    if (v16)
    {
      if (v16 == 1)
      {
        v26 = 0x796C72756F68;
      }

      else
      {
        v26 = 0x796C696164;
      }

      if (v16 == 1)
      {
        v27 = 0xE600000000000000;
      }

      else
      {
        v27 = 0xE500000000000000;
      }
    }

    else
    {
      v27 = 0xED00006E6F697461;
      v26 = 0x63696E756D6D6F63;
    }

    v46 = sub_100005700(v26, v27, v59);

    *(v25 + 4) = v46;
    *(v25 + 12) = 2080;
    v47 = sub_1003991A8();
    v49 = v20;
    v50 = sub_100005700(v47, v48, v59);

    *(v25 + 14) = v50;
    v20 = v49;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s performing work for %s", v25, 0x16u);
    swift_arrayDestroy();

    v13 = v53;
    v28 = *(v49 + 16);
    if (!v28)
    {
      goto LABEL_22;
    }

LABEL_14:
    v54 = v10;
    v29 = *(v55 + 80);
    v51 = v20;
    v30 = v20 + ((v29 + 32) & ~v29);
    v56 = *(v55 + 72);
    do
    {
      sub_10000B904(v30, v6);
      v31 = v2[16];
      v32 = v2[17];
      sub_1000035B8(v2 + 13, v31);
      v33 = (*(v32 + 8))(v31, v32);
      v35 = v2[16];
      v34 = v2[17];
      sub_1000035B8(v2 + 13, v35);
      (*(v34 + 16))(&v57, v6, v35, v34);
      if (v58)
      {
        sub_100004A68(&v57, v59);
        v36 = sub_1000035B8(v2 + 3, v2[6]);
        v38 = v2[16];
        v37 = v2[17];
        sub_1000035B8(v2 + 13, v38);
        v39 = (*(v37 + 8))(v38, v37);
        v40 = v60;
        v41 = v61;
        sub_1000035B8(v59, v60);
        (*(v41 + 8))(v40, v41);
        v42 = *(*v36 + 16);
        sub_1001E27A8(&unk_1004D5850);
        isa = sub_100398E48().super.isa;

        [v42 recordMetric:v39 + 2801 forPurpose:8501 properties:isa internalProperties:0 order:0 options:{0, v51}];

        v44 = v2[21];
        v45 = v2[22];
        sub_1000035B8(v2 + 18, v44);
        (*(v45 + 32))(v6, v33, v44, v45);
        sub_10000C5AC(v6);
        sub_100003894(v59);
      }

      else
      {
        sub_10000C5AC(v6);
        sub_1001ED244(&v57, &unk_1004DCD90);
      }

      v30 += v56;
      --v28;
    }

    while (v28);

    v13 = v53;
    v10 = v54;
    return (*(v52 + 8))(v13, v10);
  }

  v28 = *(v20 + 16);
  if (v28)
  {
    goto LABEL_14;
  }

LABEL_22:

  return (*(v52 + 8))(v13, v10);
}

uint64_t sub_100340D88(void (*a1)(char *, uint64_t), int a2, uint64_t a3)
{
  LODWORD(v87) = a2;
  v88 = a1;
  v4 = sub_100397318();
  v91 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100397918();
  v8 = *(v7 - 8);
  v89 = v7;
  v90 = v8;
  __chkstk_darwin(v7);
  v66 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001E27A8(&qword_1004D4CE0);
  v11 = __chkstk_darwin(v10 - 8);
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v79 = &v65 - v14;
  __chkstk_darwin(v13);
  v84 = &v65 - v15;
  v16 = sub_100397748();
  v80 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v71 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v77 = &v65 - v20;
  __chkstk_darwin(v19);
  v22 = &v65 - v21;
  v23 = type metadata accessor for TimeRange();
  v72 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v70 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v82 = &v65 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v65 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v65 - v32;
  __chkstk_darwin(v31);
  v35 = &v65 - v34;
  v36 = a3;
  LOBYTE(a3) = v87;
  sub_10000AEE8(v36, v87, &v65 - v34);
  sub_10000AEE8(v88, a3, v33);
  v37 = v66;
  sub_100397868();
  v78 = v23;
  v38 = v37;
  sub_10000BE6C();
  v39 = v84;
  v67 = v35;
  sub_1003978C8();
  v40 = *(v91 + 8);
  v91 += 8;
  v88 = v40;
  v40(v6, v4);
  v41 = *(v90 + 8);
  v90 += 8;
  v87 = v41;
  v41(v37, v89);
  v42 = v80;
  v85 = *(v80 + 48);
  v86 = v80 + 48;
  result = v85(v39, 1, v16);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v44 = *(v42 + 32);
  v83 = v42 + 32;
  v84 = v44;
  (v44)(v22, v39, v16);
  v76 = sub_10000BE14();
  v45 = sub_100398EE8();
  v47 = *(v42 + 8);
  v46 = v42 + 8;
  v48 = v22;
  v49 = v16;
  v75 = v47;
  v47(v48, v16);
  if ((v45 & 1) == 0)
  {
    v74 = v33;
    v80 = v46;
    sub_10000B904(v67, v30);
    v69 = *(v78 + 20);
    v50 = _swiftEmptyArrayStorage;
    v68 = v4;
    while (1)
    {
      sub_100397868();
      v51 = v30[v69];
      sub_10000BE6C();
      v52 = v79;
      sub_1003978C8();
      v88(v6, v4);
      v87(v38, v89);
      result = v85(v52, 1, v49);
      if (result == 1)
      {
        break;
      }

      v53 = v77;
      (v84)(v77, v52, v49);
      v54 = sub_100398EE8();
      v75(v53, v49);
      if (v54)
      {
        sub_10000C5AC(v30);
        v33 = v74;
        goto LABEL_14;
      }

      sub_10000B904(v30, v82);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_100354158(0, v50[2] + 1, 1, v50);
      }

      v56 = v50[2];
      v55 = v50[3];
      if (v56 >= v55 >> 1)
      {
        v50 = sub_100354158(v55 > 1, v56 + 1, 1, v50);
      }

      v50[2] = v56 + 1;
      v57 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v81 = v50;
      sub_10000C120(v82, v50 + v57 + *(v72 + 72) * v56);
      sub_100397868();
      sub_10000BE6C();
      v58 = v73;
      sub_1003978C8();
      v59 = v58;
      v60 = v68;
      (v88)(v6);
      v61 = v38;
      v87(v38, v89);
      result = v85(v59, 1, v49);
      if (result == 1)
      {
        goto LABEL_16;
      }

      sub_10000C5AC(v30);
      v62 = v71;
      v63 = v84;
      (v84)(v71, v59, v49);
      v64 = v70;
      v63(v70, v62, v49);
      *(v64 + *(v78 + 20)) = v51;
      sub_10000C120(v64, v30);
      v38 = v61;
      v4 = v60;
      v50 = v81;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v50 = _swiftEmptyArrayStorage;
LABEL_14:
  sub_10000C5AC(v33);
  sub_10000C5AC(v67);
  return v50;
}

id sub_1003415D4()
{
  v26 = OBJC_IVAR____TtC7Metrics42APSigningObservabilityCorrespondentWrapper_correspondent;
  v1 = [objc_allocWithZone(APSystemClock) init];
  v2 = type metadata accessor for PropertyListFileManagerFileSystem();
  v32 = v2;
  v33 = &off_10047F170;
  v31[0] = [objc_allocWithZone(v2) init];
  v3 = type metadata accessor for SigningObservabilityPropertyListFileStore();
  v4 = swift_allocObject();
  v5 = sub_1001F54B4(v31, v2);
  __chkstk_darwin(v5);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v4[5] = v2;
  v4[6] = &off_10047F170;
  v4[2] = v9;
  sub_100003894(v31);
  v10 = type metadata accessor for SigningReportCoreAnalyticsTransmitter();
  v11 = swift_allocObject();
  v32 = v3;
  v33 = &off_10047F2C8;
  v31[0] = v4;
  v29 = v10;
  v30 = &off_10047F418;
  v28[0] = v11;
  type metadata accessor for SigningObservabilityCorrespondent();
  v12 = swift_allocObject();
  v13 = sub_1001F54B4(v31, v3);
  __chkstk_darwin(v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_1001F54B4(v28, v29);
  __chkstk_darwin(v17);
  v19 = (&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v15;
  v22 = *v19;
  v12[6] = v3;
  v12[7] = &off_10047F2C8;
  v12[11] = v10;
  v12[12] = &off_10047F418;
  v12[8] = v22;
  v12[2] = v1;
  v12[3] = v21;
  sub_100003894(v28);
  sub_100003894(v31);
  *&v0[v26] = v12;
  v23 = type metadata accessor for APSigningObservabilityCorrespondentWrapper();
  v27.receiver = v0;
  v27.super_class = v23;
  return objc_msgSendSuper2(&v27, "init");
}

id sub_100341918()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APSigningObservabilityCorrespondentWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100341AC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ECPrimitiveCreator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100341B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v25 = a5;
  v26 = a2;
  v27 = a1;
  v8 = sub_100397798();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003993D8();
  sub_100206B54();
  v12 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860);
  v13 = swift_allocObject();
  v14 = v13;
  *(v13 + 16) = xmmword_1003C9930;
  if (a3)
  {
    v30 = sub_1001E27A8(&qword_1004D5E00);
    v31 = sub_10027C9D4();
    *&v29 = a3;
    sub_100004A68(&v29, v14 + 32);
  }

  else
  {
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100206BA0();
    *(v14 + 32) = 7104878;
    *(v14 + 40) = 0xE300000000000000;
  }

  sub_100398B98();

  [objc_opt_self() metricClass];
  swift_getObjCClassMetadata();
  sub_100397788();
  sub_100397758();
  (*(v9 + 8))(v11, v8);
  v15 = sub_100398F28();

  if (a3)
  {
    sub_1001E27A8(&unk_1004D5850);
    v16.super.isa = sub_100398E48().super.isa;
    if (a4)
    {
LABEL_6:
      sub_1001E27A8(&unk_1004D4400);
      v17.super.isa = sub_100398E48().super.isa;
      goto LABEL_9;
    }
  }

  else
  {
    v16.super.isa = 0;
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v17.super.isa = 0;
LABEL_9:
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v19 = [v18 initWithPurpose:v26 metric:v27 contentIdentifier:0 contextIdentifier:0 handle:v15 secondaryHandle:0 branch:0 properties:v16.super.isa internalProperties:v17.super.isa relayData:0 environment:0 order:v25 options:v24];

  if (v19)
  {
    v28 = &OBJC_PROTOCOL___APMetricDaemonExtension;
    v20 = swift_dynamicCastObjCProtocolConditional();
    if (v20)
    {
      v21 = v20;
      swift_unknownObjectRetain();
      v22 = sub_100398F28();
      [v21 updateClientBundleID:v22];

      swift_unknownObjectRelease();
    }

    [objc_msgSend(objc_opt_self() "storage")];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1003993E8();
    v23 = sub_1003995A8();
    sub_100398B98();
  }
}

uint64_t sub_100341F84()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100341FE8()
{
  swift_unknownObjectRelease();
  sub_100003894(v0 + 24);
  sub_100003894(v0 + 64);
  sub_100003894(v0 + 104);

  return swift_deallocClassInstance();
}

void sub_10034205C()
{
  v1 = sub_100397748();
  __chkstk_darwin(v1);
  v3 = (&v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = 0;
  v6 = (v5 + 8);
  do
  {
    sub_1000035B8((v0 + 104), *(v0 + 128));
    v7 = sub_100367130();
    v8 = v7[2];
    if (v8)
    {
      v14 = v7;
      v9 = (v7 + 4);
      do
      {
        sub_100003554(v9, v15);
        v10 = sub_1000035B8(v15, v15[3]);
        v11 = [*(*v10 + 16) now];
        sub_100397708();

        sub_1003406F0(v3);
        (*v6)(v3, v1);
        sub_100003894(v15);
        v9 += 40;
        --v8;
      }

      while (v8);
    }

    sub_1003421E4();
    if ((v12 & 1) == 0)
    {
      break;
    }
  }

  while (v4++ < 3);
}

void sub_1003421E4()
{
  v1 = type metadata accessor for AvailablePeriodicWork();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100397748();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009E04();
  v10 = [*(v0 + 16) now];
  sub_100397708();

  v11 = 0;
  v12 = v9[2];
  while (1)
  {
    if (v12 == v11)
    {
LABEL_5:

      (*(v6 + 8))(v8, v5);
      return;
    }

    if (v11 >= v9[2])
    {
      break;
    }

    sub_1003423E0(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11++, v4);
    v13 = sub_1003976A8();
    sub_10000C744(v4, type metadata accessor for AvailablePeriodicWork);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1003423E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePeriodicWork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for ObservabilityError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ObservabilityError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ObservabilityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

Swift::Int sub_100342508()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_100399B58();
  sub_100399B68(v2);
  sub_100399B68(v1);
  return sub_100399B88();
}

void sub_100342568()
{
  v1 = *v0;
  sub_100399B68(*(v0 + 8));
  sub_100399B68(v1);
}

Swift::Int sub_1003425A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_100399B58();
  sub_100399B68(v2);
  sub_100399B68(v1);
  return sub_100399B88();
}

unint64_t sub_10034262C()
{
  result = qword_1004DA818;
  if (!qword_1004DA818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DA818);
  }

  return result;
}

uint64_t sub_1003426A4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_1000035B8((*v0 + 16), v2);
  result = (*(v3 + 8))(v2, v3);
  if ((result & 0x100000000) != 0)
  {
    v5 = v1[10];
    v6 = v1[11];
    sub_1000035B8(v1 + 7, v5);
    v7 = (*(v6 + 8))(v5, v6);
    v8 = v1[5];
    v9 = v1[6];
    sub_1000035B8(v1 + 2, v8);
    return (*(v9 + 16))(v8, v9, v7);
  }

  return result;
}

uint64_t sub_10034277C()
{
  sub_100003894(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100342840(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_1003980E8();
  v7 = __chkstk_darwin(v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = _swiftEmptyArrayStorage;
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100367BE8(0, v23[2] + 1, 1);
          v23 = v40;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_100367BE8(v25 > 1, v26 + 1, 1);
          v23 = v40;
        }

        v23[2] = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_100342B10()
{
  v1 = sub_100397748();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001E27A8(&qword_1004DAA48);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_1003980E8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - v11;
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  swift_getObjectType();
  sub_100399538();
  v15 = sub_1000035B8((v0 + 24), *(v0 + 48));
  sub_1000035B8((*v15 + 16), *(*v15 + 40));
  v28 = "tyCorrespondent";
  v16 = sub_10033F600(0xD000000000000016, 0x8000000100438540);
  if (v16)
  {
    sub_1003440C8(v16, v4);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v12, v4, v5);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  sub_100397608();
  sub_1003980A8();
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_1001ED244(v4, &qword_1004DAA48);
  }

LABEL_7:
  if ((sub_100398078() & 1) == 0)
  {
LABEL_13:
    v25 = *(v6 + 8);
    v25(v12, v5);
    return (v25)(v14, v5);
  }

  v27 = v12;
  sub_1000035B8((v0 + 24), *(v0 + 48));
  v17 = sub_100343830();
  __chkstk_darwin(v17);
  v26 = v14;
  *(&v26 - 2) = v14;
  v19 = sub_100342840(sub_100343390, (&v26 - 4), v18);
  v20 = *(v19 + 16);

  if (!v20)
  {
LABEL_12:

    v23 = sub_1000035B8((v0 + 24), *(v0 + 48));
    sub_1000035B8((*v23 + 16), *(*v23 + 40));
    v14 = v26;
    v24 = sub_100344280();
    sub_10033FA7C(v24, 0xD000000000000016, v28 | 0x8000000000000000);

    v12 = v27;
    goto LABEL_13;
  }

  v22 = 0;
  while (v22 < *(v19 + 16))
  {
    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22++, v5);
    sub_100342F5C();
    result = (*(v6 + 8))(v9, v5);
    if (v20 == v22)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100342F5C()
{
  v28 = sub_100397748();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v24 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1003980E8();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001E27A8(&qword_1004DAA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for SigningFailure();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *sub_1000035B8((v0 + 24), *(v0 + 48));
  v12 = sub_100343E5C();
  v14 = v13;
  sub_1000035B8((v11 + 16), *(v11 + 40));
  v15 = sub_10033F600(v12, v14);
  if (v15)
  {
    sub_100344374(v15, v6);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1001ED244(v6, &qword_1004DAA50);
  }

  sub_1003433C0(v6, v10);
  v17 = sub_1000035B8((v0 + 24), *(v0 + 48));
  sub_1000035B8((*v17 + 16), *(*v17 + 40));
  v18 = sub_10033F600(0xD000000000000012, 0x8000000100438560);
  if (v18)
  {
    v19 = v18;
    if (*(v18 + 16))
    {
      v20 = sub_1001EC1DC(0xD000000000000012, 0x8000000100438560);
      if (v21)
      {
        v29 = *(*(v19 + 56) + 8 * v20);
        swift_unknownObjectRetain();
        sub_1001E27A8(&unk_1004D4400);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v30 = 2;
        }
      }
    }
  }

  (*(v26 + 16))(v24, v10, v28);
  sub_1003980A8();
  v22 = sub_100398068();
  result = (*(v25 + 8))(v3, v27);
  if (__OFADD__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    sub_100348F58();
    return sub_100343424(v10);
  }

  return result;
}

uint64_t sub_1003433C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SigningFailure();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100343424(uint64_t a1)
{
  v2 = type metadata accessor for SigningFailure();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100343480(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_100399708();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1003997F8();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100343594()
{
  sub_100003894(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1003435F8(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  sub_1000035B8((*v1 + 16), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_100343668(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  sub_1000035B8((*v2 + 16), v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

uint64_t sub_1003436E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v5[7] = 0;

  v6 = v5[5];
  v7 = v5[6];
  sub_1000035B8(v5 + 2, v6);
  return (*(v7 + 32))(a1, a2, v6, v7);
}

unint64_t sub_10034375C(uint64_t a1)
{
  v2 = sub_100399B48();

  return sub_1003437A0(a1, v2);
}

unint64_t sub_1003437A0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100343830()
{
  v1 = sub_1001E27A8(&qword_1004DAA48);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_1003980E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v20 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8((v0 + 16), *(v0 + 40));
  result = sub_10033FF08(0x736572756C696166, 0xE800000000000000);
  v8 = result;
  v19 = *(result + 16);
  if (v19)
  {
    v9 = 0;
    v10 = (v5 + 48);
    v18 = v5;
    v11 = (v5 + 32);
    v12 = result + 40;
    v13 = _swiftEmptyArrayStorage;
    v17 = result;
    while (v9 < *(v8 + 16))
    {

      sub_100343ADC(v3);
      if ((*v10)(v3, 1, v4) == 1)
      {
        result = sub_1001ED244(v3, &qword_1004DAA48);
      }

      else
      {
        v14 = *v11;
        (*v11)(v20, v3, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_100354180(0, v13[2] + 1, 1, v13);
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = sub_100354180(v15 > 1, v16 + 1, 1, v13);
        }

        v13[2] = v16 + 1;
        result = (v14)(v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16, v20, v4);
        v8 = v17;
      }

      ++v9;
      v12 += 16;
      if (v19 == v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_13:

    return v13;
  }

  return result;
}

uint64_t sub_100343ADC@<X0>(uint64_t a1@<X8>)
{
  if (sub_100399028() != 8)
  {
    goto LABEL_12;
  }

  v2 = sub_100399048();
  if (sub_100399048() >> 14 < v2 >> 14)
  {
    __break(1u);
    goto LABEL_29;
  }

  sub_100399038();
  v3 = sub_100399108();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_100399048();
  if (sub_100399048() >> 14 < v10 >> 14)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v42 = a1;
  sub_100399038();
  v11 = sub_100399108();
  v13 = v12;
  v41 = v14;
  v16 = v15;
  v17 = sub_100399048();
  if (sub_100399048() >> 14 < v17 >> 14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_100399038();
  v38 = sub_100399108();
  v39 = v18;
  v40 = v19;
  v21 = v20;

  if (!((v3 ^ v5) >> 14))
  {
LABEL_31:

    goto LABEL_10;
  }

  sub_1003449C4(v3, v5, v7, v9, 10);
  if ((v22 & 0x100) != 0)
  {
    sub_1001E3B5C(v3, v5, v7, v9, 10);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_10:

LABEL_11:
    a1 = v42;
LABEL_12:

LABEL_13:
    v26 = 1;
    goto LABEL_14;
  }

  v23 = v22;

  if (v23)
  {
    goto LABEL_10;
  }

LABEL_17:
  if ((v11 ^ v13) < 0x4000)
  {
    goto LABEL_10;
  }

  sub_1003449C4(v11, v13, v41, v16, 10);
  if ((v30 & 0x100) != 0)
  {
    sub_1001E3B5C(v11, v13, v41, v16, 10);
    v35 = v34;

    if ((v35 & 1) == 0)
    {
      a1 = v42;
      v33 = v39;
      v32 = v40;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  v31 = v30;

  a1 = v42;
  v33 = v39;
  v32 = v40;
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_23:
  if ((v38 ^ v32) < 0x4000)
  {
    goto LABEL_12;
  }

  sub_1003449C4(v38, v32, v33, v21, 10);
  if ((v36 & 0x100) != 0)
  {
    sub_1001E3B5C(v38, v32, v33, v21, 10);
  }

  v37 = v36;

  if (v37)
  {
    goto LABEL_13;
  }

  sub_1003980B8();
  v26 = 0;
LABEL_14:
  v27 = sub_1003980E8();
  v28 = *(*(v27 - 8) + 56);

  return v28(a1, v26, 1, v27);
}

uint64_t sub_100343E5C()
{
  sub_1001E27A8(&qword_1004D5860);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1003C9260;
  v1 = sub_1003980C8();
  *(v0 + 56) = &type metadata for Int;
  *(v0 + 64) = &protocol witness table for Int;
  *(v0 + 32) = v1;
  v2 = sub_1003980D8();
  *(v0 + 96) = &type metadata for Int;
  *(v0 + 104) = &protocol witness table for Int;
  *(v0 + 72) = v2;
  v3 = sub_100398098();
  *(v0 + 136) = &type metadata for Int;
  *(v0 + 144) = &protocol witness table for Int;
  *(v0 + 112) = v3;
  v5._countAndFlagsBits = sub_100398F88();
  sub_100399068(v5);

  return 0x736572756C696166;
}

unint64_t sub_100343F48()
{
  sub_1001E27A8(&unk_1004D43E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9260;
  strcpy((inited + 32), "firstFailure");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = sub_100397688();
  *(inited + 56) = 0x6C6961467473616CLL;
  *(inited + 64) = 0xEB00000000657275;
  type metadata accessor for SigningFailure();
  sub_100344280();
  sub_1001E27A8(&unk_1004D4400);
  isa = sub_100398E48().super.isa;

  *(inited + 72) = isa;
  strcpy((inited + 80), "daysAttempted");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_100399348();
  v2 = sub_1001EC30C(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004DABD0);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_1003440C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (sub_1001EC1DC(1918985593, 0xE400000000000000), (v4 & 1) == 0) || (swift_unknownObjectRetain(), sub_1001E27A8(&unk_1004D4400), (swift_dynamicCast() & 1) == 0) || !*(a1 + 16) || (sub_1001EC1DC(0x68746E6F6DLL, 0xE500000000000000), (v5 & 1) == 0) || (swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0) || !*(a1 + 16) || (sub_1001EC1DC(7954788, 0xE300000000000000), (v6 & 1) == 0))
  {

    goto LABEL_12;
  }

  swift_unknownObjectRetain();

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v7 = 1;
    goto LABEL_13;
  }

  sub_1003980B8();
  v7 = 0;
LABEL_13:
  v8 = sub_1003980E8();
  return (*(*(v8 - 8) + 56))(a2, v7, 1, v8);
}

unint64_t sub_100344280()
{
  sub_1001E27A8(&unk_1004D43E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9260;
  *(inited + 32) = 1918985593;
  *(inited + 40) = 0xE400000000000000;
  sub_1003980C8();
  *(inited + 48) = sub_100399348();
  *(inited + 56) = 0x68746E6F6DLL;
  *(inited + 64) = 0xE500000000000000;
  sub_1003980D8();
  *(inited + 72) = sub_100399348();
  *(inited + 80) = 7954788;
  *(inited + 88) = 0xE300000000000000;
  sub_100398098();
  *(inited + 96) = sub_100399348();
  v1 = sub_1001EC30C(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004DABD0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_100344374@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1001E27A8(&qword_1004DAA48);
  __chkstk_darwin(v4 - 8);
  v44 = (&v40 - v5);
  v6 = sub_1003980E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100397748();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001E27A8(&qword_1004D4CE0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  if (*(a1 + 16) && (v19 = sub_1001EC1DC(0x6961467473726966, 0xEC0000006572756CLL), (v20 & 1) != 0))
  {
    v47 = *(*(a1 + 56) + 8 * v19);
    swift_unknownObjectRetain();
    sub_1001E27A8(&unk_1004D4400);
    v21 = swift_dynamicCast();
    (*(v11 + 56))(v18, v21 ^ 1u, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v18, 1, 1, v10);
  }

  v22 = *(a1 + 16);
  v43 = v9;
  if (!v22)
  {
    v25 = 0;
    goto LABEL_19;
  }

  v23 = sub_1001EC1DC(0x6C6961467473616CLL, 0xEB00000000657275);
  if ((v24 & 1) == 0)
  {
    v25 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_14;
    }

LABEL_19:

    v30 = 0;
    v31 = 1;
    goto LABEL_20;
  }

  v47 = *(*(a1 + 56) + 8 * v23);
  swift_unknownObjectRetain();
  sub_1001E27A8(&unk_1004D4400);
  sub_1001E27A8(&unk_1004DABC0);
  if (swift_dynamicCast())
  {
    v25 = v46;
  }

  else
  {
    v25 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

LABEL_14:
  v26 = sub_1001EC1DC(0x6574744173796164, 0xED0000646574706DLL);
  if ((v27 & 1) == 0)
  {
    goto LABEL_19;
  }

  v28 = *(*(a1 + 56) + 8 * v26);
  swift_unknownObjectRetain();

  v47 = v28;
  sub_1001E27A8(&unk_1004D4400);
  v29 = swift_dynamicCast();
  if (v29)
  {
    v30 = v46;
  }

  else
  {
    v30 = 0;
  }

  v31 = v29 ^ 1;
LABEL_20:
  sub_1001E2838(v18, v16);
  if ((*(v11 + 48))(v16, 1, v10) != 1)
  {
    v41 = v30;
    v42 = a2;
    v32 = *(v11 + 32);
    v32(v45, v16, v10);
    if (v25)
    {
      v33 = v44;
      sub_1003440C8(v25, v44);
      v34 = v6;
      if ((*(v7 + 48))(v33, 1, v6) != 1)
      {
        v35 = v43;
        v44 = *(v7 + 32);
        (v44)(v43, v33, v34);
        if (!v31)
        {
          v38 = v42;
          v32(v42, v45, v10);
          v39 = type metadata accessor for SigningFailure();
          (v44)(&v38[*(v39 + 20)], v35, v34);
          *&v38[*(v39 + 24)] = v41;
          sub_1001ED244(v18, &qword_1004D4CE0);
          return (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
        }

        (*(v7 + 8))(v35, v34);
        (*(v11 + 8))(v45, v10);
        goto LABEL_28;
      }
    }

    else
    {
      v33 = v44;
      (*(v7 + 56))(v44, 1, 1, v6);
    }

    (*(v11 + 8))(v45, v10);
    sub_1001ED244(v33, &qword_1004DAA48);
LABEL_28:
    a2 = v42;
    goto LABEL_29;
  }

  sub_1001ED244(v16, &qword_1004D4CE0);
LABEL_29:
  sub_1001ED244(v18, &qword_1004D4CE0);
  v36 = type metadata accessor for SigningFailure();
  return (*(*(v36 - 8) + 56))(a2, 1, 1, v36);
}

uint64_t sub_1003449C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_100399768();
  }

  result = sub_1001E4568(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_100344B60(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = type metadata accessor for ObservabilitySignal();
  __chkstk_darwin(v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1001E27A8(&qword_1004DABE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v20[-v12];
  v14 = type metadata accessor for BatchID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];

  sub_100362154(a2, a3, v13);
  (*(v15 + 56))(v13, 0, 1, v14);
  sub_100345B28(v13, v17);
  v18 = *(sub_1001E27A8(&qword_1004DABE8) + 64);
  *v10 = a4;
  *(v10 + 1) = a1;
  sub_100345B8C(v17, &v10[v18]);
  swift_storeEnumTagMultiPayload();
  sub_100007F58(v10);
  sub_10000E4F0(v10, type metadata accessor for ObservabilitySignal);
  return sub_10000E4F0(v17, type metadata accessor for BatchID);
}

uint64_t sub_100344EE4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ObservabilitySignal();
  __chkstk_darwin(v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1001E27A8(&qword_1004DABE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15[-v8];
  v10 = type metadata accessor for BatchID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];

  sub_100362154(a1, a2, v9);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_100345B28(v9, v13);
  sub_100345B8C(v13, v6);
  swift_storeEnumTagMultiPayload();
  sub_100007F58(v6);
  sub_10000E4F0(v6, type metadata accessor for ObservabilitySignal);
  return sub_10000E4F0(v13, type metadata accessor for BatchID);
}

uint64_t sub_1003453A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ObservabilitySignal();
  __chkstk_darwin(v7);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1001E27A8(&qword_1004DABD8);
  __chkstk_darwin(v10 - 8);
  v12 = &v46[-v11];
  v13 = sub_100397AA8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v59 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for BatchID();
  v58 = *(v16 - 8);
  v17 = __chkstk_darwin(v16 - 8);
  v57 = &v46[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v56 = &v46[-v20];
  v21 = __chkstk_darwin(v19);
  v55 = &v46[-v22];
  v23 = __chkstk_darwin(v21);
  v54 = &v46[-v24];
  __chkstk_darwin(v23);
  v60 = &v46[-v25];
  v50 = a2;
  v51 = v3;
  if (a1)
  {
    if (a1 != 1)
    {
      v61 = a1;
      result = sub_100399A68();
      __break(1u);
      return result;
    }

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = v7;
  v49 = v9;
  v26 = *(a3 + 16);
  if (v26)
  {
    v27 = (v14 + 48);
    v28 = (v14 + 32);
    v52 = "";
    v53 = "%04lld%02lld%02lld";
    v29 = (a3 + 40);
    v30 = _swiftEmptyArrayStorage;
    do
    {
      v33 = *(v29 - 1);
      v32 = *v29;
      swift_bridgeObjectRetain_n();
      sub_100397A88();
      if ((*v27)(v12, 1, v13) == 1)
      {
        sub_1001ED244(v12, &qword_1004DABD8);
        v61 = 0;
        v62 = 0xE000000000000000;
        sub_1003996F8(52);
        v63._countAndFlagsBits = 0xD000000000000031;
        v63._object = (v53 | 0x8000000000000000);
        sub_100399068(v63);
        v64._countAndFlagsBits = v33;
        v64._object = v32;
        sub_100399068(v64);
        v65._countAndFlagsBits = 34;
        v65._object = 0xE100000000000000;
        sub_100399068(v65);

        sub_1003993E8();
        sub_100206B54();
        v31 = sub_1003995A8();
        sub_100398B98();
      }

      else
      {

        v34 = *v28;
        v35 = v59;
        (*v28)(v59, v12, v13);
        v36 = v57;
        v34(v57, v35, v13);
        v37 = v56;
        sub_100345B28(v36, v56);
        v38 = v37;
        v39 = v55;
        sub_100345B28(v38, v55);
        v40 = v39;
        v41 = v54;
        sub_100345B28(v40, v54);
        sub_100345B28(v41, v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1003541A8(0, v30[2] + 1, 1, v30);
        }

        v43 = v30[2];
        v42 = v30[3];
        if (v43 >= v42 >> 1)
        {
          v30 = sub_1003541A8(v42 > 1, v43 + 1, 1, v30);
        }

        v30[2] = v43 + 1;
        sub_100345B28(v60, v30 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v43);
      }

      v29 += 2;
      --v26;
    }

    while (v26);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  v44 = v49;
  *v49 = v50;
  *(v44 + 8) = v47;
  *(v44 + 16) = v30;
  swift_storeEnumTagMultiPayload();
  sub_100007F58(v44);
  return sub_10000E4F0(v44, type metadata accessor for ObservabilitySignal);
}

uint64_t sub_100345A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ObservabilitySignal();
  __chkstk_darwin(v4);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a3;
  swift_storeEnumTagMultiPayload();

  sub_100007F58(v6);

  return sub_10000E4F0(v6, type metadata accessor for ObservabilitySignal);
}

uint64_t sub_100345B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100345B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100345C04()
{
  result = qword_1004DABF0;
  if (!qword_1004DABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DABF0);
  }

  return result;
}

uint64_t sub_100345C7C()
{
  sub_1001E27A8(&qword_1004D8F48);
  sub_100397E78();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1003EFC40;
  sub_1001E27A8(&unk_1004D7BF0);
  v0 = sub_100397E08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003C9930;
  *(v4 + v3) = sub_10025D724(&off_10047EC00);
  v28 = enum case for IntBucketContents.individualValues(_:);
  v5 = *(v1 + 104);
  v5(v4 + v3);
  sub_100397E68();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1003C9260;
  v7 = v6 + v3;
  *(v6 + v3) = xmmword_1003EFC50;
  v8 = enum case for IntBucketContents.range(_:);
  v27 = enum case for IntBucketContents.range(_:);
  (v5)(v6 + v3, enum case for IntBucketContents.range(_:), v0);
  *(v7 + v2) = xmmword_1003EFC60;
  (v5)(v7 + v2, v8, v0);
  v26 = 2 * v2;
  *(v7 + v26) = xmmword_1003EFC70;
  (v5)(v7 + 2 * v2, v8, v0);
  sub_100397E68();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1003C9930;
  *(v9 + v3) = sub_10025D724(&off_10047EC30);
  (v5)(v9 + v3, v28, v0);
  sub_100397E68();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1003C9930;
  *(v10 + v3) = sub_10025D724(&off_10047EC60);
  (v5)(v10 + v3, v28, v0);
  sub_100397E68();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003C9930;
  *(v11 + v3) = sub_10025D724(&off_10047EC88);
  (v5)(v11 + v3, v28, v0);
  sub_100397E68();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003C9930;
  *(v12 + v3) = sub_10025D724(&off_10047ECB0);
  (v5)(v12 + v3, v28, v0);
  sub_100397E68();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003C9930;
  *(v13 + v3) = sub_10025D724(&off_10047ECE0);
  (v5)(v13 + v3, v28, v0);
  sub_100397E68();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1003C9930;
  *(v14 + v3) = sub_10025D724(&off_10047ED08);
  (v5)(v14 + v3, v28, v0);
  sub_100397E68();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1003C9930;
  *(v15 + v3) = sub_10025D724(&off_10047ED48);
  (v5)(v15 + v3, v28, v0);
  sub_100397E68();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1003ECC10;
  v17 = (v16 + v3);
  *v17 = sub_10025D724(&off_10047ED78);
  (v5)(v17, v28, v0);
  *(v17 + v2) = xmmword_1003EFC80;
  (v5)(v17 + v2, v27, v0);
  *(v17 + v26) = xmmword_1003EFC90;
  (v5)(v17 + 2 * v2, v27, v0);
  *(v17 + 3 * v2) = xmmword_1003EFCA0;
  (v5)(v17 + 3 * v2, v27, v0);
  *(v17 + 4 * v2) = xmmword_1003EFCB0;
  (v5)(v17 + 4 * v2, v27, v0);
  *(v17 + 5 * v2) = xmmword_1003EFCC0;
  (v5)(v17 + 5 * v2, v27, v0);
  *(v17 + 6 * v2) = xmmword_1003EFCD0;
  (v5)();
  sub_100397E68();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1003EB210;
  v19 = (v18 + v3);
  *v19 = sub_10025D724(&off_10047EDA8);
  (v5)(v19, v28, v0);
  *(v19 + v2) = xmmword_1003EFCE0;
  (v5)(v19 + v2, v27, v0);
  sub_100397E68();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1003C9930;
  *(v20 + v3) = xmmword_1003EFCF0;
  (v5)(v20 + v3, v27, v0);
  sub_100397E68();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1003C9930;
  *(v21 + v3) = sub_10025D724(&off_10047EDD0);
  (v5)(v21 + v3, v28, v0);
  sub_100397E68();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1003EB210;
  v23 = (v22 + v3);
  *v23 = sub_10025D724(&off_10047EE00);
  (v5)(v23, v28, v0);
  *(v23 + v2) = xmmword_1003EFD00;
  (v5)(v23 + v2, v27, v0);
  sub_100397E68();

  return IntBucketConfiguration.init(unknownBucketName:discreteBuckets:classifiedBuckets:)(100011, _swiftEmptyArrayStorage, v25);
}

uint64_t sub_10034662C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v5 = type metadata accessor for TimeRange();
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004DA0A0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v8 = sub_100398CA8();
  sub_10000351C(v8, qword_1004DE5D0);
  sub_1003489D4(a1, v7, type metadata accessor for TimeRange);

  v9 = sub_100398C88();
  v10 = sub_1003993C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = sub_100005700(0x796C696164, 0xE500000000000000, v63);
    *(v11 + 12) = 2082;
    v12 = sub_1003568B8();
    v14 = v13;
    sub_10000C7A4(v7, type metadata accessor for TimeRange);
    v15 = sub_100005700(v12, v14, v63);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Generating %{public}s report for %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000C7A4(v7, type metadata accessor for TimeRange);
  }

  v16 = v3[19];
  v17 = v3[20];
  sub_1000035B8(v3 + 16, v16);
  (*(v17 + 24))(v73, a1, 2, v16, v17);
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v18 = v3[4];
  v19 = v3[5];

  v68[0] = sub_100346E38(v18, v19, sub_10034808C, sub_100367B48);
  v68[1] = v20;
  v69 = v21;
  v22 = v3[2];
  v23 = v3[3];

  v66[0] = sub_100346E38(v22, v23, sub_100347E4C, sub_100367AA8);
  v66[1] = v24;
  v67 = v25;
  v64 = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage;
  v26 = sub_1000035B8(v73, v73[3]);
  __chkstk_darwin(v26);
  *(&v53 - 8) = &v70;
  *(&v53 - 7) = v66;
  *(&v53 - 6) = &v64;
  *(&v53 - 5) = &v65;
  *(&v53 - 4) = &v72;
  *(&v53 - 3) = &v71;
  *(&v53 - 2) = v68;
  sub_100399128();
  v27 = v65;
  v60 = sub_1003476D0(v65);
  v59 = v28;
  sub_1000035B8(v3 + 21, v3[24]);
  v61 = v64;
  sub_100357E4C(v64);
  v58 = v72;
  if (v72 <= 0 && v71 <= 0 && v70 <= 0)
  {
    v29 = v69;
    v30 = v69 + 32;
    v31 = -*(v69 + 16);
    v7 = -1;
    while (v31 + v7 != -1)
    {
      if (++v7 >= *(v29 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v3 = (v30 + 48);
      sub_10000ADB4(v30, v63, &unk_1004DCD50);
      v32 = v63[0];
      sub_1001ED244(v63, &unk_1004DCD50);
      v30 = v3;
      if (v32)
      {
        goto LABEL_19;
      }
    }

    v33 = v67;
    v34 = v67 + 32;
    v35 = -*(v67 + 16);
    v7 = -1;
    while (v35 + v7 != -1)
    {
      if (++v7 >= *(v33 + 16))
      {
        goto LABEL_23;
      }

      v3 = (v34 + 48);
      sub_10000ADB4(v34, v63, &qword_1004DAD70);
      v36 = v63[0];
      sub_1001ED244(v63, &qword_1004DAD70);
      v34 = v3;
      if (v36)
      {
        goto LABEL_19;
      }
    }

    v63[0] = v27;
    sub_1001E27A8(&qword_1004DAD78);
    sub_1001E6C28(&qword_1004DAD80, &qword_1004DAD78);
    if ((sub_100399398() & 1) == 0)
    {
      v52 = type metadata accessor for ObservabilityDailyReport();
      (*(*(v52 - 8) + 56))(v62, 1, 1, v52);

      goto LABEL_20;
    }
  }

LABEL_19:
  v37 = sub_100397748();
  v38 = v62;
  (*(*(v37 - 8) + 16))(v62, a1, v37);
  v56 = v71;
  v57 = v70;
  v54 = sub_100348868(v68[0], v69, &unk_1004DCD50);
  v53 = v39;
  v40 = sub_100348868(v66[0], v67, &qword_1004DAD70);
  v42 = v41;
  v43 = v27[2];

  v44 = sub_100351E1C();
  v55 = v27;
  v45 = v44;

  v46 = sub_100351E1C();

  v47 = type metadata accessor for ObservabilityDailyReport();
  *(v38 + v47[5]) = v58;
  *(v38 + v47[6]) = v56;
  *(v38 + v47[7]) = v57;
  v48 = (v38 + v47[8]);
  v49 = v53;
  *v48 = v54;
  v48[1] = v49;
  v50 = (v38 + v47[9]);
  *v50 = v40;
  v50[1] = v42;
  *(v38 + v47[10]) = v43;
  *(v38 + v47[11]) = v45;
  *(v38 + v47[12]) = v46;
  (*(*(v47 - 1) + 56))(v38, 0, 1, v47);

LABEL_20:

  return sub_100003894(v73);
}

uint64_t sub_100346E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(BOOL, unint64_t, uint64_t))
{

  v8 = a3(a2);

  v9 = *(v8 + 16);
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    v18 = a4;
    a4(0, v9, 0);
    v10 = _swiftEmptyArrayStorage;
    v11 = v8 + 32;
    do
    {
      sub_100003554(v11, v19 + 8);
      *&v19[0] = 0;
      v20 = v10;
      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        v18(v12 > 1, v13 + 1, 1);
        v10 = v20;
      }

      v10[2] = v13 + 1;
      v14 = &v10[6 * v13];
      v15 = v19[0];
      v16 = v19[2];
      v14[3] = v19[1];
      v14[4] = v16;
      v14[2] = v15;
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {
  }

  return a1;
}

void sub_100346F8C(size_t *a1, void *a2, uint64_t a3, size_t *a4, size_t *a5, void *a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v44 = a6;
  v45 = a7;
  v46 = a5;
  v48 = a4;
  v10 = type metadata accessor for BatchID();
  v47 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v43 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v43 - v18;
  __chkstk_darwin(v17);
  v21 = &v43 - v20;
  v22 = type metadata accessor for ObservabilitySignal();
  __chkstk_darwin(v22);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003489D4(a1, v24, type metadata accessor for ObservabilitySignal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v26 = a2;
    v27 = v48;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v28 = sub_1001E27A8(&qword_1004DABE8);
        sub_10034896C(&v24[*(v28 + 64)], v21, type metadata accessor for BatchID);
        sub_1003489D4(v21, v19, type metadata accessor for BatchID);
        a1 = v27;
        v22 = *v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v27 = v22;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_10:
          v31 = v22[2];
          v30 = v22[3];
          if (v31 >= v30 >> 1)
          {
            *a1 = sub_1003541A8(v30 > 1, v31 + 1, 1, v22);
          }

          sub_10000C7A4(v21, type metadata accessor for BatchID);
          v32 = *a1;
          *(v32 + 16) = v31 + 1;
          sub_10034896C(v19, v32 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v31, type metadata accessor for BatchID);
          return;
        }

LABEL_26:
        v22 = sub_1003541A8(0, v22[2] + 1, 1, v22);
        *a1 = v22;
        goto LABEL_10;
      }

      goto LABEL_22;
    }

    v40 = *(v24 + 1);
    v41 = __OFADD__(*v26, v40);
    v42 = *v26 + v40;
    if (!v41)
    {
      *v26 = v42;
      sub_100347460();
      return;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (!__OFADD__(*v45, 1))
        {
          ++*v45;
          sub_100399298();
          sub_10034759C();
          return;
        }

        goto LABEL_25;
      }

LABEL_22:
      sub_10000C7A4(v24, type metadata accessor for ObservabilitySignal);
      return;
    }

    if (!__OFADD__(*v44, 1))
    {
      ++*v44;
      v39 = sub_100397748();
      (*(*(v39 - 8) + 8))(v24, v39);
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

  sub_10034896C(v24, v16, type metadata accessor for BatchID);
  sub_1003489D4(v16, v13, type metadata accessor for BatchID);
  v33 = v46;
  v34 = *v46;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v34;
  if ((v35 & 1) == 0)
  {
    v34 = sub_1003541A8(0, v34[2] + 1, 1, v34);
    *v33 = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    *v33 = sub_1003541A8(v36 > 1, v37 + 1, 1, v34);
  }

  sub_10000C7A4(v16, type metadata accessor for BatchID);
  v38 = *v33;
  *(v38 + 16) = v37 + 1;
  sub_10034896C(v13, v38 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v37, type metadata accessor for BatchID);
}

void sub_100347460()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  if (v2)
  {
    v3 = 0;
    for (i = 4; ; i += 6)
    {
      if (v3 >= v1[2])
      {
        __break(1u);
        goto LABEL_13;
      }

      sub_10000ADB4(&v1[i], v10, &qword_1004DAD70);
      sub_1000035B8(v11, v11[3]);
      v5 = sub_100399138();
      sub_1001ED244(v10, &qword_1004DAD70);
      if (v5)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }

LABEL_13:
    v1 = sub_100348854(v1);
LABEL_8:
    if (v3 >= v1[2])
    {
      __break(1u);
    }

    else
    {
      v6 = v1[i];
      v7 = __OFADD__(v6, 1);
      v8 = v6 + 1;
      if (!v7)
      {
        v1[i] = v8;
        *(v9 + 16) = v1;
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10034759C()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  if (v2)
  {
    v3 = 0;
    for (i = 4; ; i += 6)
    {
      if (v3 >= v1[2])
      {
        __break(1u);
        goto LABEL_13;
      }

      sub_10000ADB4(&v1[i], v11, &unk_1004DCD50);
      sub_1000035B8(v12, v12[3]);
      v5 = sub_100399138();
      result = sub_1001ED244(v11, &unk_1004DCD50);
      if (v5)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return result;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_100348840(v1);
    v1 = result;
LABEL_8:
    if (v3 >= v1[2])
    {
      __break(1u);
    }

    else
    {
      v7 = v1[i];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        v1[i] = v9;
        *(v10 + 16) = v1;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003476D0(uint64_t a1)
{
  sub_100003554(v1 + 88, &v54);
  type metadata accessor for ErrorCollector();
  v3 = swift_allocObject();
  v3[7] = sub_10034BB24(_swiftEmptyArrayStorage);
  v4 = v3 + 7;
  sub_100004A68(&v54, (v3 + 2));
  v49 = v1;
  sub_100003554(v1 + 48, &v54);
  v5 = swift_allocObject();
  v5[7] = sub_10034BB24(_swiftEmptyArrayStorage);
  v6 = v5 + 7;
  sub_100004A68(&v54, (v5 + 2));
  v48 = *(a1 + 16);
  if (!v48)
  {
    return v3;
  }

  v7 = 0;
  v8 = *(type metadata accessor for BatchID() - 8);
  v47[2] = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v47[1] = *(v8 + 72);
  while (1)
  {
    sub_1000035B8((v49 + 168), *(v49 + 192));
    sub_100358198(&v51);
    v9 = sub_1000035B8(&v51, v53);
    __chkstk_darwin(v9);
    (*(v11 + 16))(v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1001E6B7C(&v54);
    sub_100399118();
    sub_100003894(&v51);
    sub_1001F54B4(&v54, AssociatedTypeWitness);
    sub_100399618();
    v12 = v52;
    if (v52 != 255)
    {
      break;
    }

LABEL_3:
    ++v7;
    sub_100003894(&v54);
    if (v7 == v48)
    {
      return v3;
    }
  }

  while (1)
  {
    if ((v12 & 1) == 0)
    {
      sub_1000035B8(v3 + 2, v3[5]);
      v27 = sub_100397E18();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v3[7];
      v29 = v50;
      v31 = sub_10034375C(v27);
      v32 = v29[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_35;
      }

      v35 = v30;
      if (v29[3] < v34)
      {
        sub_10034AD98(v34, isUniquelyReferenced_nonNull_native);
        v29 = v50;
        v36 = sub_10034375C(v27);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_40;
        }

        v31 = v36;
        *v4 = v29;
        if (v35)
        {
          goto LABEL_27;
        }

LABEL_25:
        v29[(v31 >> 6) + 8] |= 1 << v31;
        *(v29[6] + 8 * v31) = v27;
        *(v29[7] + 8 * v31) = 0;
        v40 = v29[2];
        v15 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v15)
        {
          goto LABEL_38;
        }

        v29[2] = v41;
        goto LABEL_27;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        *v4 = v29;
        if ((v30 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_10034B604();
        v29 = v50;
        *v4 = v50;
        if ((v35 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      v42 = v29[7];
      v43 = *(v42 + 8 * v31);
      v15 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v15)
      {
        goto LABEL_37;
      }

      *(v42 + 8 * v31) = v44;
      goto LABEL_8;
    }

    sub_1000035B8(v5 + 2, v5[5]);
    v17 = sub_100397E18();
    swift_beginAccess();
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v5[7];
    v19 = v50;
    v20 = sub_10034375C(v17);
    v22 = v19[2];
    v23 = (v21 & 1) == 0;
    v15 = __OFADD__(v22, v23);
    v24 = v22 + v23;
    if (v15)
    {
      break;
    }

    v25 = v21;
    if (v19[3] < v24)
    {
      sub_10034AD98(v24, v18);
      v19 = v50;
      v20 = sub_10034375C(v17);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_40;
      }

LABEL_20:
      *v6 = v19;
      if ((v25 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_6;
    }

    if (v18)
    {
      goto LABEL_20;
    }

    v45 = v20;
    sub_10034B604();
    v20 = v45;
    v19 = v50;
    *v6 = v50;
    if ((v25 & 1) == 0)
    {
LABEL_21:
      v19[(v20 >> 6) + 8] |= 1 << v20;
      *(v19[6] + 8 * v20) = v17;
      *(v19[7] + 8 * v20) = 0;
      v38 = v19[2];
      v15 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v15)
      {
        goto LABEL_39;
      }

      v19[2] = v39;
    }

LABEL_6:
    v13 = v19[7];
    v14 = *(v13 + 8 * v20);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_36;
    }

    *(v13 + 8 * v20) = v16;
LABEL_8:
    swift_endAccess();
    sub_1001F54B4(&v54, AssociatedTypeWitness);
    sub_100399618();
    v12 = v52;
    if (v52 == 255)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_100399A98();
  __break(1u);
  return result;
}

uint64_t sub_100347C68()
{

  sub_100003894(v0 + 48);
  sub_100003894(v0 + 88);
  sub_100003894(v0 + 128);
  sub_100003894(v0 + 168);

  return swift_deallocClassInstance();
}

uint64_t sub_100347CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001E27A8(&qword_1004DAD68);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_10034662C(a1, &v10 - v5);
  v7 = type metadata accessor for ObservabilityDailyReport();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_1001ED244(v6, &qword_1004DAD68);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a2 + 24) = v7;
    *(a2 + 32) = &off_10047F4B8;
    v9 = sub_1001E6B7C(a2);
    return sub_10034896C(v6, v9, type metadata accessor for ObservabilityDailyReport);
  }

  return result;
}

void *sub_100347E4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 32 + 8 * v1 - 8);
  v15[0] = a1;
  v15[1] = a1 + 32;
  v15[2] = 0;
  v15[3] = 2 * v1 - 1;
  v15[4] = a1;
  v15[5] = a1 + 32;
  v15[6] = 1;
  v15[7] = (2 * v1) | 1;
  sub_1001E27A8(&unk_1004DCD30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003C9930;
  *(v4 + 56) = sub_1001E27A8(&qword_1004DAD88);
  *(v4 + 64) = sub_1001E6C28(&qword_1004DAD90, &qword_1004DAD88);
  *(v4 + 32) = v2;
  v14 = v4;
  swift_bridgeObjectRetain_n();
  v5 = sub_1003482B0(v15);
  v6 = sub_100351474(v5);

  sub_100353694(v6);
  v7 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100354110(0, *(v4 + 16) + 1, 1, v4);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_100354110((v8 > 1), v9 + 1, 1, v7);
  }

  sub_1001ED244(v15, &qword_1004DAD98);
  v12 = sub_1001E27A8(&qword_1004DADA0);
  v13 = sub_1001E6C28(&qword_1004DADA8, &qword_1004DADA0);
  *&v11 = v3;
  v7[2] = v9 + 1;
  sub_100004A68(&v11, &v7[5 * v9 + 4]);
  return v7;
}

void *sub_10034808C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 32 + 8 * v1 - 8);
  v15[0] = a1;
  v15[1] = a1 + 32;
  v15[2] = 0;
  v15[3] = 2 * v1 - 1;
  v15[4] = a1;
  v15[5] = a1 + 32;
  v15[6] = 1;
  v15[7] = (2 * v1) | 1;
  sub_1001E27A8(&qword_1004DADB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003C9930;
  *(v4 + 56) = sub_1001E27A8(&qword_1004DADB8);
  *(v4 + 64) = sub_1001E6C28(&qword_1004DADC0, &qword_1004DADB8);
  *(v4 + 32) = v2;
  v14 = v4;
  swift_bridgeObjectRetain_n();
  v5 = sub_100348578(v15);
  v6 = sub_1003515A8(v5);

  sub_1003536B8(v6);
  v7 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100354134(0, *(v4 + 16) + 1, 1, v4);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_100354134((v8 > 1), v9 + 1, 1, v7);
  }

  sub_1001ED244(v15, &qword_1004DADC8);
  v12 = sub_1001E27A8(&qword_1004DADD0);
  v13 = sub_1001E6C28(&qword_1004DADD8, &qword_1004DADD0);
  *&v11 = v3;
  v7[2] = v9 + 1;
  sub_100004A68(&v11, &v7[5 * v9 + 4]);
  return v7;
}

void *sub_1003482B0(void *result)
{
  v1 = result[2];
  v2 = result[3] >> 1;
  if (__OFSUB__(v2, v1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v3 = result[6];
  v4 = result[7] >> 1;
  if (!__OFSUB__(v4, v3))
  {
    v34 = result[2];
    v35 = result[7] >> 1;
    v32 = result[6];
    v33 = result[3] >> 1;
    v30 = result[5];
    v31 = result[1];
    if (v4 - v3 >= v2 - v1)
    {
      v5 = v2 - v1;
    }

    else
    {
      v5 = v4 - v3;
    }

    result = sub_100367B28(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_44;
    }

    if (v5)
    {
      v6 = v32;
      v7 = v35;
      if (v32 > v35)
      {
        v7 = v32;
      }

      v8 = v7 - v32;
      swift_unknownObjectRetain();
      result = swift_unknownObjectRetain();
      v9 = v5;
      v10 = 0;
      v12 = v30;
      v11 = v31;
      v14 = v33;
      v13 = v34;
      do
      {
        if (!(v34 - v33 + v10))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v13 + v10 >= v14)
        {
          goto LABEL_35;
        }

        if (!(v32 - v35 + v10))
        {
          goto LABEL_36;
        }

        if (v8 == v10)
        {
          goto LABEL_37;
        }

        v15 = *(v31 + 8 * v34 + 8 * v10);
        v16 = *(v30 + 8 * v32 + 8 * v10);
        if (v15 > v16)
        {
          goto LABEL_38;
        }

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          result = sub_100367B28((v17 > 1), v18 + 1, 1);
          v9 = v5;
          v12 = v30;
          v11 = v31;
          v6 = v32;
          v14 = v33;
          v13 = v34;
        }

        ++v10;
        _swiftEmptyArrayStorage[2] = v18 + 1;
        v19 = &_swiftEmptyArrayStorage[2 * v18];
        v19[4] = v15;
        v19[5] = v16;
      }

      while (v9 != v10);
      v20 = v6 + v10;
      v21 = v13 + v10;
      if (v13 + v10 == v14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      result = swift_unknownObjectRetain();
      v6 = v32;
      v14 = v33;
      v20 = v32;
      v13 = v34;
      v21 = v34;
      v12 = v30;
      v11 = v31;
      if (v34 == v33)
      {
LABEL_22:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return _swiftEmptyArrayStorage;
      }
    }

    v22 = v21;
    v23 = v20;
    v24 = v35;
    while (v21 >= v13 && v22 < v14)
    {
      if (v24 == v23)
      {
        goto LABEL_22;
      }

      if (v20 < v6 || v23 >= v24)
      {
        goto LABEL_40;
      }

      v25 = *(v11 + 8 * v22);
      v26 = *(v12 + 8 * v23);
      if (v25 > v26)
      {
        goto LABEL_41;
      }

      v28 = _swiftEmptyArrayStorage[2];
      v27 = _swiftEmptyArrayStorage[3];
      if (v28 >= v27 >> 1)
      {
        result = sub_100367B28((v27 > 1), v28 + 1, 1);
        v12 = v30;
        v11 = v31;
        v13 = v34;
        v24 = v35;
        v6 = v32;
        v14 = v33;
      }

      ++v22;
      _swiftEmptyArrayStorage[2] = v28 + 1;
      v29 = &_swiftEmptyArrayStorage[2 * v28];
      v29[4] = v25;
      v29[5] = v26;
      ++v23;
      if (v14 == v22)
      {
        goto LABEL_22;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void *sub_100348578(void *result)
{
  v1 = result[2];
  v2 = result[3] >> 1;
  if (__OFSUB__(v2, v1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v3 = result[6];
  v4 = result[7] >> 1;
  if (!__OFSUB__(v4, v3))
  {
    v33 = result[2];
    v34 = result[7] >> 1;
    v31 = result[6];
    v32 = result[3] >> 1;
    v29 = result[5];
    v30 = result[1];
    if (v4 - v3 >= v2 - v1)
    {
      v5 = v2 - v1;
    }

    else
    {
      v5 = v4 - v3;
    }

    result = sub_100367BC8(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_44;
    }

    if (v5)
    {
      v6 = v31;
      v7 = v34;
      if (v31 > v34)
      {
        v7 = v31;
      }

      v35 = v7 - v31;
      swift_unknownObjectRetain();
      result = swift_unknownObjectRetain();
      v8 = v5;
      v9 = 0;
      v11 = v29;
      v10 = v30;
      v13 = v32;
      v12 = v33;
      do
      {
        if (!(v33 - v32 + v9))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v12 + v9 >= v13)
        {
          goto LABEL_35;
        }

        if (!(v31 - v34 + v9))
        {
          goto LABEL_36;
        }

        if (v35 == v9)
        {
          goto LABEL_37;
        }

        v14 = *(v30 + 8 * v33 + 8 * v9);
        v15 = *(v29 + 8 * v31 + 8 * v9);
        if (v15 < v14)
        {
          goto LABEL_38;
        }

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          result = sub_100367BC8((v16 > 1), v17 + 1, 1);
          v8 = v5;
          v11 = v29;
          v10 = v30;
          v6 = v31;
          v13 = v32;
          v12 = v33;
        }

        ++v9;
        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[2 * v17];
        v18[4] = v14;
        v18[5] = v15;
      }

      while (v8 != v9);
      v19 = v6 + v9;
      v20 = v12 + v9;
      if (v12 + v9 == v13)
      {
        goto LABEL_22;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      result = swift_unknownObjectRetain();
      v6 = v31;
      v13 = v32;
      v19 = v31;
      v12 = v33;
      v20 = v33;
      v11 = v29;
      v10 = v30;
      if (v33 == v32)
      {
LABEL_22:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return _swiftEmptyArrayStorage;
      }
    }

    v21 = v20;
    v22 = v19;
    v23 = v34;
    while (v20 >= v12 && v21 < v13)
    {
      if (v23 == v22)
      {
        goto LABEL_22;
      }

      if (v19 < v6 || v22 >= v23)
      {
        goto LABEL_40;
      }

      v24 = *(v10 + 8 * v21);
      v25 = *(v11 + 8 * v22);
      if (v25 < v24)
      {
        goto LABEL_41;
      }

      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        result = sub_100367BC8((v26 > 1), v27 + 1, 1);
        v11 = v29;
        v10 = v30;
        v12 = v33;
        v23 = v34;
        v6 = v31;
        v13 = v32;
      }

      ++v21;
      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[2 * v27];
      v28[4] = v24;
      v28[5] = v25;
      ++v22;
      if (v13 == v21)
      {
        goto LABEL_22;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_100348868(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v6 = result;
    v13 = _swiftEmptyArrayStorage;
    sub_100211EA4(0, v3, 0);
    v7 = _swiftEmptyArrayStorage;
    v8 = a2 + 32;
    do
    {
      sub_10000ADB4(v8, v12, a3);
      v9 = v12[0];
      sub_1001ED244(v12, a3);
      v13 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_100211EA4((v10 > 1), v11 + 1, 1);
        v7 = v13;
      }

      v7[2] = v11 + 1;
      v7[v11 + 4] = v9;
      v8 += 48;
      --v3;
    }

    while (v3);
    return v6;
  }

  return result;
}

uint64_t sub_10034896C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003489D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100348A3C()
{
  result = qword_1004DADE0;
  if (!qword_1004DADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DADE0);
  }

  return result;
}

uint64_t sub_100348A90()
{
  if (*v0)
  {
    return 7827308;
  }

  else
  {
    return 1751607656;
  }
}

uint64_t sub_100348B84()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1000035B8(v0 + 2, v1);
  v3 = (*(v2 + 8))(v1, v2);
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v4 = sub_100398CA8();
  sub_10000351C(v4, qword_1004DE5D0);
  v5 = sub_100398C88();
  v6 = sub_1003993D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    sub_1001E27A8(&qword_1004DAF28);
    v9 = sub_100398FB8();
    v11 = sub_100005700(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "stored scale factor: %s", v7, 0xCu);
    sub_100003894(v8);
  }

  return v3 | ((HIDWORD(v3) & 1) << 32);
}

uint64_t sub_100348D2C(float a1)
{
  v2 = v1;
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v4 = sub_100398CA8();
  sub_10000351C(v4, qword_1004DE5D0);
  v5 = sub_100398C88();
  v6 = sub_1003993D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v13 = v8;
    sub_1003992E8();
    v9 = sub_100005700(0, 0xE000000000000000, &v13);

    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "storing scale factor: %s", v7, 0xCu);
    sub_100003894(v8);
  }

  v10 = v2[5];
  v11 = v2[6];
  sub_1000035B8(v2 + 2, v10);
  return (*(v11 + 16))(v10, v11, a1);
}

void sub_100348F58()
{
  v0 = objc_opt_self();
  v1 = sub_100398F28();
  sub_1001E27A8(&unk_1004D5DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9260;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000100438560;
  *(inited + 48) = sub_100399218();
  *(inited + 56) = 0x6C69614673796164;
  *(inited + 64) = 0xEA00000000006465;
  *(inited + 72) = sub_100399348();
  strcpy((inited + 80), "daysAttempted");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_100399348();
  sub_1002143B8(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004D5A28);
  swift_arrayDestroy();
  sub_10025A138();
  isa = sub_100398E48().super.isa;

  [v0 sendEvent:v1 customPayload:isa];
}

unint64_t sub_100349120()
{
  result = qword_1004DAFC8;
  if (!qword_1004DAFC8)
  {
    sub_1001E27F0(&qword_1004DAFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DAFC8);
  }

  return result;
}

unint64_t sub_100349198()
{
  result = qword_1004DAFD8;
  if (!qword_1004DAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DAFD8);
  }

  return result;
}

uint64_t sub_1003491EC()
{
  v1 = 0x796C72756F68;
  if (*v0 != 1)
  {
    v1 = 0x796C696164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63696E756D6D6F63;
  }
}

unint64_t sub_10034924C()
{
  sub_1001E27A8(&unk_1004DAFE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003F17F0;
  *(inited + 32) = 0x444D4D5F65746164;
  *(inited + 40) = 0xEB00000000484844;
  *(inited + 48) = sub_1003494B8();
  strcpy((inited + 56), "created_events");
  *(inited + 71) = -18;
  v2 = type metadata accessor for ObservabilityDailyReport();
  *(inited + 72) = sub_100399348();
  *(inited + 80) = 0x6465726566667562;
  *(inited + 88) = 0xEF73746E6576655FLL;
  *(inited + 96) = sub_100399348();
  strcpy((inited + 104), "queued_events");
  *(inited + 118) = -4864;
  *(inited + 120) = sub_100399348();
  *(inited + 128) = 0xD000000000000018;
  *(inited + 136) = 0x8000000100438870;
  *(inited + 144) = sub_1003497AC(*(v0 + v2[8]), *(v0 + v2[8] + 8));
  strcpy((inited + 152), "buffered_time");
  *(inited + 166) = -4864;
  *(inited + 168) = sub_1003497AC(*(v0 + v2[9]), *(v0 + v2[9] + 8));
  *(inited + 176) = 0x5F64657269707865;
  *(inited + 184) = 0xEF73656863746162;
  *(inited + 192) = sub_100399348();
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x8000000100438890;
  v3 = *(v0 + v2[12]);

  v5 = sub_100349A54(v4, v3);
  v6 = sub_100349B38(v5);

  *(inited + 216) = v6;
  v7 = sub_10034BC14(inited, &unk_1004D5AD0);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004DCA80);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_1003494B8()
{
  v0 = sub_100397968();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100397918();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100397318();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100397868();
  sub_100397928();
  sub_100397888();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  sub_100004218(0, &qword_1004D4900);
  v12 = sub_100399578();
  sub_1001E27A8(&qword_1004D5860);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003C9260;
  result = sub_100397278();
  if (v15)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = result;
  result = sub_100397228();
  if (v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v13 + 96) = &type metadata for Int;
  *(v13 + 104) = &protocol witness table for Int;
  *(v13 + 72) = result;
  result = sub_100397248();
  if ((v17 & 1) == 0)
  {
    *(v13 + 136) = &type metadata for Int;
    *(v13 + 144) = &protocol witness table for Int;
    *(v13 + 112) = result;
    v18 = sub_100399588();

    (*(v9 + 8))(v11, v8);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1003497AC(uint64_t a1, uint64_t a2)
{
  sub_1001E27A8(&unk_1004DB000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9930;
  *(inited + 32) = 0x6E6F6973726576;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_100399348();
  v4 = sub_10025F0F0(inited, &qword_1004DAFF0);
  swift_setDeallocating();
  sub_10034BD10(inited + 32);
  v5 = *(a2 + 16);
  if (!v5)
  {
LABEL_16:
    sub_100004218(0, &qword_1004D43F0);
    isa = sub_100398E48().super.isa;

    return isa;
  }

  v6 = (a2 + 32);
  v7 = 1;
  while (1)
  {
    v10 = *v6++;
    if (v10 < 1)
    {
      goto LABEL_4;
    }

    v28._countAndFlagsBits = sub_100399998();
    sub_100399068(v28);

    v11.super.super.isa = sub_100399348().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v4;
    v13 = sub_1001EC1DC(0x74656B637562, 0xE600000000000000);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      sub_10034AFFC(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_1001EC1DC(0x74656B637562, 0xE600000000000000);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_19;
      }

LABEL_11:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v24 = v13;
    sub_10034B750();
    v13 = v24;
    v4 = v27;
    if (v19)
    {
LABEL_3:
      v8 = v4[7];
      v9 = *(v8 + 8 * v13);
      *(v8 + 8 * v13) = v11;

      goto LABEL_4;
    }

LABEL_12:
    v4[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v4[6] + 16 * v13);
    *v21 = 0x74656B637562;
    v21[1] = 0xE600000000000000;
    *(v4[7] + 8 * v13) = v11;
    v22 = v4[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_18;
    }

    v4[2] = v23;
LABEL_4:
    ++v7;
    if (!--v5)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_100399A98();
  __break(1u);
  return result;
}

uint64_t sub_100349A54(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v13 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_100349DD4(v12, *v11, v11[1]))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v13;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100349B38(uint64_t a1)
{
  v2 = sub_10025F0F0(_swiftEmptyArrayStorage, &qword_1004DAFF0);
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v32 = a1 + 56;
  while (v6)
  {
    v12 = v8;
LABEL_11:
    v13 = sub_100399998();
    v15 = v14;
    v16.super.super.isa = sub_100399348().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v2;
    v18 = sub_1001EC1DC(v13, v15);
    v20 = *(v2 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_22;
    }

    v24 = v19;
    if (*(v2 + 24) >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_10034B750();
        v18 = v29;
      }
    }

    else
    {
      sub_10034AFFC(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_1001EC1DC(v13, v15);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_24;
      }
    }

    v6 &= v6 - 1;
    if (v24)
    {
      v9 = v18;

      v2 = v33;
      v10 = v33[7];
      v11 = *(v10 + 8 * v9);
      *(v10 + 8 * v9) = v16;
    }

    else
    {
      v2 = v33;
      v33[(v18 >> 6) + 8] |= 1 << v18;
      v26 = (v33[6] + 16 * v18);
      *v26 = v13;
      v26[1] = v15;
      *(v33[7] + 8 * v18) = v16;
      v27 = v33[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v33[2] = v28;
    }

    v8 = v12;
    v3 = v32;
  }

  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      sub_100004218(0, &qword_1004D43F0);
      isa = sub_100398E48().super.isa;

      return isa;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
    if (v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_100399A98();
  __break(1u);
  return result;
}

uint64_t sub_100349DD4(Swift::UInt *a1, Swift::UInt a2, Swift::UInt a3)
{
  v7 = *v3;
  sub_100399B58();
  sub_100399B68(a2);
  sub_100399B68(a3);
  v8 = sub_100399B88();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a2 && v13 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10034A45C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_100349EF0(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_100399B48();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10034A5CC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100349FD0()
{
  v1 = v0;
  v2 = *v0;
  sub_1001E27A8(&qword_1004DAFF8);
  result = sub_1003996C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100399B58();
      sub_100399B68(v18);
      sub_100399B68(v19);
      result = sub_100399B88();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10034A238()
{
  v1 = v0;
  v2 = *v0;
  sub_1001E27A8(&qword_1004DB030);
  result = sub_1003996C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_100399B48();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_10034A45C(Swift::Int result, Swift::UInt a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_100349FD0();
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_10034A6EC();
      a3 = v9;
      goto LABEL_15;
    }

    sub_10034A970();
  }

  v10 = *v4;
  sub_100399B58();
  sub_100399B68(v6);
  sub_100399B68(a2);
  result = sub_100399B88();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v6 && v14 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v6;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_100399A88();
  __break(1u);
  return result;
}

uint64_t sub_10034A5CC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10034A238();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10034A830();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10034ABA8();
  }

  v8 = *v3;
  result = sub_100399B48();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100399A88();
  __break(1u);
  return result;
}

void *sub_10034A6EC()
{
  v1 = v0;
  sub_1001E27A8(&qword_1004DAFF8);
  v2 = *v0;
  v3 = sub_1003996B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10034A830()
{
  v1 = v0;
  sub_1001E27A8(&qword_1004DB030);
  v2 = *v0;
  v3 = sub_1003996B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10034A970()
{
  v1 = v0;
  v2 = *v0;
  sub_1001E27A8(&qword_1004DAFF8);
  result = sub_1003996C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_100399B58();
      sub_100399B68(v17);
      sub_100399B68(v18);
      result = sub_100399B88();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10034ABA8()
{
  v1 = v0;
  v2 = *v0;
  sub_1001E27A8(&qword_1004DB030);
  result = sub_1003996C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_100399B48();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10034AD98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001E27A8(&unk_1004DB020);
  result = sub_100399818();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_100399B48();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10034AFFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001E27A8(&qword_1004DAFF0);
  v35 = a2;
  result = sub_100399818();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_100399B58();
      sub_100399018();
      result = sub_100399B88();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10034B2A0(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = sub_100397748();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1001E27A8(&qword_1004DB038);
  v39 = a2;
  result = sub_100399818();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_100399B58();
      sub_100399B68(v24);
      result = sub_100399B88();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void *sub_10034B604()
{
  v1 = v0;
  sub_1001E27A8(&unk_1004DB020);
  v2 = *v0;
  v3 = sub_100399808();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10034B750()
{
  v1 = v0;
  sub_1001E27A8(&qword_1004DAFF0);
  v2 = *v0;
  v3 = sub_100399808();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10034B8BC()
{
  v1 = v0;
  v29 = sub_100397748();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E27A8(&qword_1004DB038);
  v3 = *v0;
  v4 = sub_100399808();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_10034BB24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001E27A8(&unk_1004DB020);
    v3 = sub_100399828();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10034375C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10034BC14(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1001E27A8(a2);
    v4 = sub_100399828();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      swift_unknownObjectRetain();
      result = sub_1001EC1DC(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10034BD10(uint64_t a1)
{
  v2 = sub_1001E27A8(&unk_1004D7E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10034BD78(uint64_t a1)
{
  v2 = sub_1001E27A8(&unk_1004DB040);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001E27A8(&qword_1004DB038);
    v7 = sub_100399828();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10034BF40(v9, v5);
      v11 = *v5;
      result = sub_100008858(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100397748();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10034BF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&unk_1004DB040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034BFB0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 115;
  }

  else
  {
    v2 = 99;
  }

  if (*a2)
  {
    v3 = 115;
  }

  else
  {
    v3 = 99;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1003999B8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10034C020()
{
  sub_100399B58();
  sub_100399018();

  return sub_100399B88();
}

uint64_t sub_10034C080()
{
  sub_100399018();
}

Swift::Int sub_10034C0C4()
{
  sub_100399B58();
  sub_100399018();

  return sub_100399B88();
}

uint64_t sub_10034C120@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10047EE50;
  v8._object = v3;
  v5 = sub_100399848(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10034C180(uint64_t *a1@<X8>)
{
  v2 = 99;
  if (*v1)
  {
    v2 = 115;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_10034C1A0()
{
  if (*v0)
  {
    return 115;
  }

  else
  {
    return 99;
  }
}

uint64_t sub_10034C1BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_10047EE50;
  v9._object = a2;
  v6 = sub_100399848(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10034C220(uint64_t a1)
{
  v2 = sub_10034C97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10034C25C(uint64_t a1)
{
  v2 = sub_10034C97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10034C298(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001E27A8(&qword_1004DB078);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_1000035B8(a1, a1[3]);
  sub_10034C97C();
  sub_100399BF8();
  v14 = a2;
  v13 = 0;
  sub_1001E27A8(&qword_1004DB068);
  sub_10034C9D0(&qword_1004DB080);
  sub_100399948();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_100399948();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10034C480@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10034C4C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10034C4C8(void *a1)
{
  v3 = sub_1001E27A8(&qword_1004DB058);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_1000035B8(a1, v7);
  sub_10034C97C();
  sub_100399BC8();
  if (!v1)
  {
    sub_1001E27A8(&qword_1004DB068);
    v10 = 0;
    sub_10034C9D0(&qword_1004DB070);
    sub_1003998A8();
    v7 = v11;
    v10 = 1;
    sub_1003998A8();
    (*(v4 + 8))(v6, v3);
  }

  sub_100003894(a1);
  return v7;
}

uint64_t sub_10034C6E0()
{
  v1 = sub_100398FA8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003970B8();
  swift_allocObject();
  sub_1003970A8();
  sub_100398F98();
  v5 = sub_100398F68();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  if (v7 >> 60 == 15)
  {

    return 1;
  }

  else
  {
    sub_10034C86C();
    sub_100397098();
    sub_1001DDE50(v5, v7);

    if (!v0)
    {
      return v9;
    }
  }

  return result;
}

unint64_t sub_10034C86C()
{
  result = qword_1004DB050;
  if (!qword_1004DB050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB050);
  }

  return result;
}

uint64_t sub_10034C8C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10034C91C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10034C97C()
{
  result = qword_1004DB060;
  if (!qword_1004DB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB060);
  }

  return result;
}

uint64_t sub_10034C9D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001E27F0(&qword_1004DB068);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10034CA50()
{
  result = qword_1004DB088;
  if (!qword_1004DB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB088);
  }

  return result;
}

unint64_t sub_10034CAA8()
{
  result = qword_1004DB090;
  if (!qword_1004DB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB090);
  }

  return result;
}

unint64_t sub_10034CB00()
{
  result = qword_1004DB098;
  if (!qword_1004DB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB098);
  }

  return result;
}

uint64_t type metadata accessor for ObservabilityCommunicationReport()
{
  result = qword_1004DB0F8;
  if (!qword_1004DB0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034CBC8()
{
  sub_100397748();
  if (v0 <= 0x3F)
  {
    sub_10034CC4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10034CC4C()
{
  if (!qword_1004DB108)
  {
    sub_10034CCA8();
    v0 = sub_100399338();
    if (!v1)
    {
      atomic_store(v0, &qword_1004DB108);
    }
  }
}

unint64_t sub_10034CCA8()
{
  result = qword_1004DB110;
  if (!qword_1004DB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB110);
  }

  return result;
}

uint64_t sub_10034CCFC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10034CD68(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x69747265706F7270;
    v6 = 0xD000000000000016;
    if (a1 != 10)
    {
      v6 = 0x6D6E6F7269766E65;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x696669746E656469;
    v8 = 0x7261646E6F636573;
    if (a1 != 7)
    {
      v8 = 0x68636E617262;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x63697274656DLL;
    v2 = 0x736E6F6974706FLL;
    if (a1 != 3)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0x5465736F70727570;
    if (a1 != 1)
    {
      v3 = 0x726564726FLL;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10034CF14(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004DB290);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_1000035B8(a1, a1[3]);
  sub_10034E678();
  sub_100399BF8();
  LOBYTE(v11) = 0;
  sub_100399968();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_100399968();
    LOBYTE(v11) = 2;
    sub_100399938();
    LOBYTE(v11) = 3;
    sub_100399938();
    LOBYTE(v11) = 4;
    sub_100399918();
    LOBYTE(v11) = 5;
    sub_100399918();
    LOBYTE(v11) = 6;
    sub_100399918();
    LOBYTE(v11) = 7;
    sub_100399918();
    v11 = *(v3 + 112);
    HIBYTE(v10) = 8;
    sub_1001E27A8(&unk_1004D9A20);
    sub_10034E734(&qword_1004DB298);
    sub_100399948();
    LOBYTE(v11) = 9;
    sub_100399918();
    LOBYTE(v11) = 10;
    sub_100399918();
    v11 = *(v3 + 152);
    HIBYTE(v10) = 11;
    sub_100399948();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10034D260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10034D40C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10034D294(uint64_t a1)
{
  v2 = sub_10034E678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10034D2D0(uint64_t a1)
{
  v2 = sub_10034E678();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10034D30C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10034D7F0(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

uint64_t sub_10034D3BC(_OWORD *a1)
{
  v1 = a1[7];
  v7[6] = a1[6];
  v7[7] = v1;
  v2 = a1[9];
  v7[8] = a1[8];
  v7[9] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a1[5];
  v7[4] = a1[4];
  v7[5] = v4;
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return sub_10034DE6C(v7);
}

uint64_t sub_10034D40C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63697274656DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5465736F70727570 && a2 == 0xEB00000000657079 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100438910 == a2 || (sub_1003999B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100438930 == a2 || (sub_1003999B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1003999B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF656C646E614879 || (sub_1003999B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x68636E617262 && a2 == 0xE600000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEE006E6F734A7365 || (sub_1003999B8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100438950 == a2 || (sub_1003999B8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65)
  {

    return 11;
  }

  else
  {
    v6 = sub_1003999B8();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_10034D7F0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v53 = sub_1001E27A8(&qword_1004DB270);
  v5 = *(v53 - 8);
  __chkstk_darwin(v53);
  v7 = &v38 - v6;
  sub_1000035B8(a1, a1[3]);
  sub_10034E678();
  sub_100399BC8();
  if (v2)
  {
    v54 = v2;
LABEL_4:
    sub_100003894(a1);
  }

  v52 = v5;
  LOBYTE(v65[0]) = 0;
  v8 = sub_1003998C8();
  LOBYTE(v65[0]) = 1;
  v9 = sub_1003998C8();
  v10 = v52;
  v11 = v9;
  LOBYTE(v65[0]) = 2;
  v13 = sub_100399898();
  v84 = v14 & 1;
  LOBYTE(v65[0]) = 3;
  v51 = sub_100399898();
  v83 = v15 & 1;
  LOBYTE(v65[0]) = 4;
  *&v50 = sub_100399878();
  *(&v50 + 1) = v16;
  LOBYTE(v65[0]) = 5;
  *&v49 = sub_100399878();
  *(&v49 + 1) = v17;
  LOBYTE(v65[0]) = 6;
  v46 = sub_100399878();
  v47 = v13;
  v48 = v18;
  LOBYTE(v65[0]) = 7;
  v19 = sub_100399878();
  v54 = 0;
  v21 = v20;
  v42 = v19;
  v43 = v11;
  v44 = v8;
  v41 = a2;
  sub_1001E27A8(&unk_1004D9A20);
  LOBYTE(v55) = 8;
  v22 = sub_10034E734(&qword_1004DB288);
  v23 = v54;
  v45 = v22;
  sub_1003998A8();
  v54 = v23;
  if (v23)
  {
    (*(v10 + 8))(v7, v53);
    goto LABEL_4;
  }

  v24 = v65[0];
  LOBYTE(v65[0]) = 9;
  v40 = sub_100399878();
  v54 = 0;
  v26 = v25;
  LOBYTE(v65[0]) = 10;
  v39 = sub_100399878();
  v54 = 0;
  v28 = v27;
  v85 = 11;
  sub_1003998A8();
  v54 = 0;
  (*(v52 + 8))(v7, v53);
  v52 = v82;
  *&v55 = v44;
  *(&v55 + 1) = v43;
  v29 = v48;
  *&v56 = v47;
  LODWORD(v53) = v84;
  BYTE8(v56) = v84;
  v30 = *(&v50 + 1);
  *&v57 = v51;
  LODWORD(v45) = v83;
  BYTE8(v57) = v83;
  v58 = v50;
  v59 = v49;
  *&v60 = v46;
  *(&v60 + 1) = v48;
  *&v61 = v42;
  *(&v61 + 1) = v21;
  v31 = v40;
  *&v62 = v24;
  *(&v62 + 1) = v40;
  *&v63 = v26;
  *(&v63 + 1) = v39;
  *&v64 = v28;
  *(&v64 + 1) = v82;
  sub_10034E6CC(&v55, v65);
  sub_100003894(a1);
  v65[0] = v44;
  v65[1] = v43;
  v65[2] = v47;
  v66 = v53;
  v67 = v51;
  v68 = v45;
  v69 = v50;
  v70 = v30;
  v71 = v49;
  v72 = v46;
  v73 = v29;
  v74 = v42;
  v75 = v21;
  v76 = v24;
  v77 = v31;
  v78 = v26;
  v79 = v39;
  v80 = v28;
  v81 = v52;
  result = sub_10034E704(v65);
  v32 = v62;
  v33 = v41;
  v41[6] = v61;
  v33[7] = v32;
  v34 = v64;
  v33[8] = v63;
  v33[9] = v34;
  v35 = v58;
  v33[2] = v57;
  v33[3] = v35;
  v36 = v60;
  v33[4] = v59;
  v33[5] = v36;
  v37 = v56;
  *v33 = v55;
  v33[1] = v37;
  return result;
}