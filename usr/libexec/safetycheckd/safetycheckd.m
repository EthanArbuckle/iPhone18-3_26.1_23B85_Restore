uint64_t sub_1000013DC(uint64_t a1)
{
  qword_100015118 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000016BC(uint64_t a1, xpc_object_t xdict)
{
  v3 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, _xpc_event_key_name)];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) handleXPCEventWithName:v3];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_100001D7C(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SCDaemonClientInterface];
  v2 = qword_100015128;
  qword_100015128 = v1;

  v3 = qword_100015128;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v4, v5, v6, objc_opt_class(), 0];
  [v3 setClasses:v7 forSelector:"stopSharingWithParticipants:completion:" argumentIndex:0 ofReply:0];
}

void sub_1000020FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(a1 + 32);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  (*(v5 + 16))(v5, v12, v6, v7, v8, v9, v10, v11);
}

void sub_100002160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100002178(va);
  _Unwind_Resume(a1);
}

void sub_100002178(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void sub_100002854(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_transaction_create();
  v2 = +[SCDaemon sharedDaemon];
  [v2 start];

  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

id sub_100002AF4()
{
  if (qword_100015140 != -1)
  {
    sub_1000096E4();
  }

  v1 = qword_100015138;

  return v1;
}

void sub_100002B38(id a1)
{
  qword_100015138 = os_log_create("com.apple.safetycheckd", "SCLogger");

  _objc_release_x1();
}

void sub_100002DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002DE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained fetchPermissionsFromSources:v6 includingErrors:v5 queue:*(a1 + 32) completion:*(a1 + 40)];
}

void sub_100003330(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  obj = v5;
  if (v6)
  {
    v7 = sub_100002AF4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000096F8(a1);
    }

    v8 = [DSError errorWithCode:5];
    v9 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v37 = v8;
    v10 = [NSArray arrayWithObjects:&v37 count:1];
    v11 = [DSError errorWithCode:1 sourceName:v9 underlyingErrors:v10];

    [*(a1 + 48) addObject:v11];
    dispatch_group_leave(*(a1 + 56));

    v5 = obj;
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = [v5 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = *(a1 + 32);
          v18 = [v16 bundleId];
          v19 = [v17 objectForKeyedSubscript:v18];

          v20 = sub_100002AF4();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v33 = v19;
            v34 = 2114;
            v35 = v16;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Got data usage policy for %{public}@: %{public}@", buf, 0x16u);
          }

          v21 = [CTDataUsagePolicies ds_DataUsagePolicyWithPolicy:v16 sourceName:v19];
          if (v21)
          {
            v22 = sub_100002AF4();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v33 = v21;
              v34 = 2114;
              v35 = v19;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Required policy %{public}@ for %{public}@ not met.", buf, 0x16u);
            }

            [*(a1 + 64) setObject:0 forKeyedSubscript:v19];
            v23 = [DSError errorWithCode:5];
            v31 = v23;
            v24 = [NSArray arrayWithObjects:&v31 count:1];
            v25 = [DSError errorWithCode:1 sourceName:v19 underlyingErrors:v24];

            [*(a1 + 48) addObject:v25];
          }
        }

        v5 = obj;
        v13 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v13);
    }

    dispatch_group_leave(*(a1 + 56));
    v6 = 0;
  }
}

void sub_1000036AC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) allValues];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

void sub_100003B84(uint64_t a1, uint64_t a2)
{
  dispatch_group_enter(*(a1 + 32));
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v5 = [v4 name];
  v6 = [v5 copy];

  v7 = os_signpost_id_generate(qword_100015148);
  if ([v6 isEqualToString:DSSourceNameCalendars])
  {
    v8 = qword_100015148;
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fetch.Calendars", " enableTelemetry=YES ", buf, 2u);
    }

LABEL_55:

    goto LABEL_61;
  }

  if ([v6 isEqualToString:DSSourceNameFindMy])
  {
    v10 = qword_100015148;
    v9 = v10;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fetch.FindMy", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  if ([v6 isEqualToString:DSSourceNamePhotos])
  {
    v11 = qword_100015148;
    v9 = v11;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fetch.Photos", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  if ([v6 isEqualToString:DSSourceNameHomeSharing])
  {
    v12 = qword_100015148;
    v9 = v12;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fetch.Home", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  if ([v6 isEqualToString:DSSourceNameHealthSharing])
  {
    v13 = qword_100015148;
    v9 = v13;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fetch.Health", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  if ([v6 isEqualToString:DSSourceNameNotes])
  {
    v14 = qword_100015148;
    v9 = v14;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fetch.Notes", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  if ([v6 isEqualToString:DSSourceNameZelkova])
  {
    v15 = qword_100015148;
    v9 = v15;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fetch.Zelkova", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  if ([v6 isEqualToString:DSSourceNameActivity])
  {
    v16 = qword_100015148;
    v9 = v16;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fetch.Activity", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  if ([v6 isEqualToString:DSSourceNamePassKeys])
  {
    v17 = qword_100015148;
    v9 = v17;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fetch.Passkeys", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  if ([v6 isEqualToString:DSSourceNameItemSharing])
  {
    v18 = qword_100015148;
    v9 = v18;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fetch.ItemSharing", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  v19 = [v6 isEqualToString:DSSourceNameMaps];
  v20 = qword_100015148;
  v9 = v20;
  if (v19)
  {
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fetch.Maps", " enableTelemetry=YES ", buf, 2u);
    }

    goto LABEL_55;
  }

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fetch.Notes", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_FAULT))
  {
    sub_1000097A8();
  }

LABEL_61:
  v21 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v32 = v4;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Fetching sharing permissions from %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained fetchStartedForSource:v6];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000048F4;
  v24[3] = &unk_1000105C0;
  v23 = v6;
  v25 = v23;
  v26 = WeakRetained;
  v27 = *(a1 + 48);
  v28 = *(a1 + 56);
  v30 = v7;
  v29 = *(a1 + 32);
  [v4 fetchSharedResourcesWithCompletion:v24];
}

void sub_1000048F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    *buf = 138543875;
    v65 = v8;
    v66 = 2113;
    v67 = v5;
    v68 = 2050;
    v69 = [v5 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Finished fetching sharing permissions from %{public}@ with %{private}@ resources (%{public}lu)", buf, 0x20u);
  }

  v10 = (a1 + 32);
  [*(a1 + 40) fetchCompletedForSource:*(a1 + 32)];
  v11 = [NSError ds_errorFromIgnorableError:v6 sourceName:*(a1 + 32)];

  if (v11)
  {
    if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_ERROR))
    {
      sub_1000098E0((a1 + 32));
    }

    v12 = *(a1 + 32);
    v63 = v11;
    v13 = [NSArray arrayWithObjects:&v63 count:1];
    v14 = [DSError errorWithCode:1 sourceName:v12 underlyingErrors:v13];

    [*(a1 + 48) addObject:v14];
    v56 = _NSConcreteStackBlock;
    v57 = 3221225472;
    v58 = sub_1000051A4;
    v59 = &unk_100010570;
    v60 = v11;
    v61 = *(a1 + 32);
    AnalyticsSendEventLazy();
  }

  else
  {
    v51 = _NSConcreteStackBlock;
    v52 = 3221225472;
    v53 = sub_1000052A0;
    v54 = &unk_100010598;
    v55 = *v10;
    AnalyticsSendEventLazy();
    v14 = v55;
  }

  if ([v5 count])
  {
    v44 = v11;
    v45 = a1;
    v15 = +[NSMutableArray array];
    v16 = +[NSMutableArray array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v46 = v5;
    v17 = v5;
    v18 = [v17 countByEnumeratingWithState:&v47 objects:v62 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v48;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v48 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v47 + 1) + 8 * i);
          v23 = [v22 participants];
          [v16 addObjectsFromArray:v23];

          v24 = [[DSXPCSharedResource alloc] initWithResource:v22];
          [v15 addObject:v24];
        }

        v19 = [v17 countByEnumeratingWithState:&v47 objects:v62 count:16];
      }

      while (v19);
    }

    a1 = v45;
    os_unfair_lock_lock((*(v45 + 40) + 24));
    [*(a1 + 56) setValue:v15 forKey:*(a1 + 32)];
    os_unfair_lock_unlock((*(v45 + 40) + 24));

    v5 = v46;
    v11 = v44;
  }

  if ([*v10 isEqualToString:DSSourceNameCalendars])
  {
    v25 = qword_100015148;
    v26 = v25;
    v27 = *(a1 + 72);
    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v25))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v28 = "fetch.Calendars";
LABEL_57:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, v27, v28, " enableTelemetry=YES ", buf, 2u);
LABEL_58:

    goto LABEL_59;
  }

  if ([*v10 isEqualToString:DSSourceNameFindMy])
  {
    v29 = qword_100015148;
    v26 = v29;
    v27 = *(a1 + 72);
    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v29))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v28 = "fetch.FindMy";
    goto LABEL_57;
  }

  if ([*v10 isEqualToString:DSSourceNamePhotos])
  {
    v30 = qword_100015148;
    v26 = v30;
    v27 = *(a1 + 72);
    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v30))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v28 = "fetch.Photos";
    goto LABEL_57;
  }

  if ([*v10 isEqualToString:DSSourceNameHomeSharing])
  {
    v31 = qword_100015148;
    v26 = v31;
    v27 = *(a1 + 72);
    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v31))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v28 = "fetch.Home";
    goto LABEL_57;
  }

  if ([*v10 isEqualToString:DSSourceNameHealthSharing])
  {
    v32 = qword_100015148;
    v26 = v32;
    v27 = *(a1 + 72);
    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v32))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v28 = "fetch.Health";
    goto LABEL_57;
  }

  if ([*v10 isEqualToString:DSSourceNameNotes])
  {
    v33 = qword_100015148;
    v26 = v33;
    v27 = *(a1 + 72);
    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v33))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v28 = "fetch.Notes";
    goto LABEL_57;
  }

  if ([*v10 isEqualToString:DSSourceNameZelkova])
  {
    v34 = qword_100015148;
    v26 = v34;
    v27 = *(a1 + 72);
    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v34))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v28 = "fetch.Zelkova";
    goto LABEL_57;
  }

  if ([*v10 isEqualToString:DSSourceNameActivity])
  {
    v35 = qword_100015148;
    v26 = v35;
    v27 = *(a1 + 72);
    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v35))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v28 = "fetch.Activity";
    goto LABEL_57;
  }

  if ([*v10 isEqualToString:DSSourceNamePassKeys])
  {
    v36 = qword_100015148;
    v26 = v36;
    v27 = *(a1 + 72);
    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v36))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v28 = "fetch.Passkeys";
    goto LABEL_57;
  }

  if ([*v10 isEqualToString:DSSourceNameItemSharing])
  {
    v37 = qword_100015148;
    v26 = v37;
    v27 = *(a1 + 72);
    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v37))
    {
      goto LABEL_58;
    }

    *buf = 0;
    v28 = "fetch.ItemSharing";
    goto LABEL_57;
  }

  v38 = [*(a1 + 32) isEqualToString:DSSourceNameMaps];
  v39 = qword_100015148;
  v40 = v39;
  v41 = *(a1 + 72);
  if (v38)
  {
    if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_END, v41, "fetch.Maps", " enableTelemetry=YES ", buf, 2u);
    }
  }

  else
  {
    if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_INTERVAL_END, v41, "fetch.Notes", " enableTelemetry=YES ", buf, 2u);
    }

    v42 = qword_100015148;
    if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_FAULT))
    {
      sub_10000994C(v10, v42, v43);
    }
  }

LABEL_59:
  dispatch_group_leave(*(a1 + 64));
}

id sub_1000051A4(uint64_t a1)
{
  v7[0] = @"errorCode";
  v2 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [*(a1 + 32) code]);
  v8[0] = v2;
  v7[1] = @"errorDomain";
  v3 = [*(a1 + 32) domain];
  v7[2] = @"sourceName";
  v4 = *(a1 + 40);
  v8[1] = v3;
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

id sub_1000052A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = @"sourceName";
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_1000058D8(uint64_t a1, uint64_t a2)
{
  dispatch_group_enter(*(a1 + 32));
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v5 = [v4 name];
  v6 = [DSRestrictionStore isSourceRestricted:v5];

  if (v6)
  {
    v7 = qword_100015148;
    if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [v4 name];
      *buf = 138412290;
      v30 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Cannot reset %@ due to restrictions", buf, 0xCu);
    }

    v10 = *(a1 + 48);
    v11 = [v4 name];
    v12 = [DSError errorWithCode:6 sourceName:v11];
    [v10 addObject:v12];

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = [v4 name];
    v15 = [v13 objectForKeyedSubscript:v14];

    v16 = +[NSMutableArray array];
    v17 = qword_100015148;
    if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v19 = [v4 name];
      *buf = 138412290;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "stopSharingWithParticipants: Fetching sharing from %@", buf, 0xCu);
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100005BE4;
    v22[3] = &unk_100010660;
    v23 = v4;
    v20 = v15;
    v24 = v20;
    v21 = v16;
    v25 = v21;
    v26 = *(a1 + 48);
    objc_copyWeak(&v28, (a1 + 64));
    v27 = *(a1 + 32);
    [v23 fetchSharedResourcesWithCompletion:v22];

    objc_destroyWeak(&v28);
  }
}

void sub_100005BE4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = v7;
    v10 = [v8 name];
    v11 = v10;
    v12 = @"None";
    if (v6)
    {
      v12 = v6;
    }

    *buf = 138412546;
    v53 = v10;
    v54 = 2112;
    v55 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "stopSharingWithParticipants: Finished fetching sharing from %@. Error: %@", buf, 0x16u);
  }

  v36 = v6;
  v13 = +[NSMutableArray array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v47;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v47 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v46 + 1) + 8 * i) participants];
        [(__CFString *)v13 addObjectsFromArray:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v16);
  }

  v35 = v14;

  v45 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  obj = a1[5];
  v20 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      v23 = 0;
      do
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v42 + 1) + 8 * v23);
        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_1000060EC;
        v41[3] = &unk_100010610;
        v41[4] = v24;
        v25 = [(__CFString *)v13 indexOfObjectPassingTest:v41, v35];
        if (v25 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = qword_100015148;
          if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v53 = v24;
            v54 = 2112;
            v55 = v13;
            _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to find participant matching %@ in list %@", buf, 0x16u);
          }

          v27 = a1[7];
          v28 = [a1[4] name];
          v29 = [DSError errorWithCode:2 sourceName:v28];
          [v27 addObject:v29];
        }

        else
        {
          v30 = v25;
          v28 = [(__CFString *)v13 objectAtIndexedSubscript:v25];
          v31 = qword_100015148;
          if (v28)
          {
            if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v53 = v28;
              v54 = 2112;
              v55 = v24;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Found DSParticipation %@ matching UI representation %@", buf, 0x16u);
            }

            [a1[6] addObject:v28];
          }

          else if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v53 = v24;
            v54 = 2048;
            v55 = v30;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Found participant matching %@ at idx %ld, but the retrieved participant is null", buf, 0x16u);
          }
        }

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v21);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v33 = a1[4];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10000619C;
  v38[3] = &unk_100010638;
  v34 = a1[6];
  v39 = a1[7];
  v40 = a1[8];
  [WeakRetained stopSharingParticipation:v34 fromSource:v33 completion:v38];
}

id sub_1000060EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) role];
  if (v4 == [v3 role] && (v5 = objc_msgSend(*(a1 + 32), "permission"), v5 == objc_msgSend(v3, "permission")))
  {
    v6 = [*(a1 + 32) identity];
    v7 = [v3 identity];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10000619C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_1000061E0(uint64_t a1)
{
  v2 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Finished working with %@", &v8, 0xCu);
  }

  if ([*(a1 + 40) count])
  {
    v4 = [DSError errorWithCode:2 underlyingErrors:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  v5 = qword_100015148;
  v6 = v5;
  v7 = *(a1 + 56);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "stop", " enableTelemetry=YES ", &v8, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000073C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 name];
    *buf = 138543362;
    v58 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Stopping sharing with %{public}@ for participants complete", buf, 0xCu);
  }

  v8 = (a1 + 32);
  v9 = [*(a1 + 32) name];
  v10 = [v9 isEqualToString:DSSourceNameCalendars];

  if (v10)
  {
    v11 = qword_100015148;
    v12 = v11;
    v13 = *(a1 + 56);
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v11))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v14 = "stopParticipants.Calendars";
LABEL_47:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, v14, " enableTelemetry=YES ", buf, 2u);
LABEL_48:

    goto LABEL_49;
  }

  v15 = [*v8 name];
  v16 = [v15 isEqualToString:DSSourceNameFindMy];

  if (v16)
  {
    v17 = qword_100015148;
    v12 = v17;
    v13 = *(a1 + 56);
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v14 = "stopParticipants.FindMy";
    goto LABEL_47;
  }

  v18 = [*v8 name];
  v19 = [v18 isEqualToString:DSSourceNamePhotos];

  if (v19)
  {
    v20 = qword_100015148;
    v12 = v20;
    v13 = *(a1 + 56);
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v20))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v14 = "stopParticipants.Photos";
    goto LABEL_47;
  }

  v21 = [*v8 name];
  v22 = [v21 isEqualToString:DSSourceNameHomeSharing];

  if (v22)
  {
    v23 = qword_100015148;
    v12 = v23;
    v13 = *(a1 + 56);
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v23))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v14 = "stopParticipants.Home";
    goto LABEL_47;
  }

  v24 = [*v8 name];
  v25 = [v24 isEqualToString:DSSourceNameHealthSharing];

  if (v25)
  {
    v26 = qword_100015148;
    v12 = v26;
    v13 = *(a1 + 56);
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v26))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v14 = "stopParticipants.Health";
    goto LABEL_47;
  }

  v27 = [*v8 name];
  v28 = [v27 isEqualToString:DSSourceNameNotes];

  if (v28)
  {
    v29 = qword_100015148;
    v12 = v29;
    v13 = *(a1 + 56);
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v29))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v14 = "stopParticipants.Notes";
    goto LABEL_47;
  }

  v30 = [*v8 name];
  v31 = [v30 isEqualToString:DSSourceNameZelkova];

  if (v31)
  {
    v32 = qword_100015148;
    v12 = v32;
    v13 = *(a1 + 56);
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v32))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v14 = "stopParticipants.Zelkova";
    goto LABEL_47;
  }

  v33 = [*v8 name];
  v34 = [v33 isEqualToString:DSSourceNameActivity];

  if (v34)
  {
    v35 = qword_100015148;
    v12 = v35;
    v13 = *(a1 + 56);
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v35))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v14 = "stopParticipants.Activity";
    goto LABEL_47;
  }

  v36 = [*v8 name];
  v37 = [v36 isEqualToString:DSSourceNamePassKeys];

  if (v37)
  {
    v38 = qword_100015148;
    v12 = v38;
    v13 = *(a1 + 56);
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v38))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v14 = "stopParticipants.Passkeys";
    goto LABEL_47;
  }

  v39 = [*v8 name];
  v40 = [v39 isEqualToString:DSSourceNameItemSharing];

  if (v40)
  {
    v41 = qword_100015148;
    v12 = v41;
    v13 = *(a1 + 56);
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v41))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v14 = "stopParticipants.ItemSharing";
    goto LABEL_47;
  }

  v42 = [*(a1 + 32) name];
  v43 = [v42 isEqualToString:DSSourceNameMaps];

  v44 = qword_100015148;
  v12 = v44;
  v13 = *(a1 + 56);
  if (v43)
  {
    if (v13 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v44))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v14 = "stopParticipants.Maps";
    goto LABEL_47;
  }

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, "stopParticipants.Notes", " enableTelemetry=YES ", buf, 2u);
  }

  v55 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_FAULT))
  {
    sub_100009AB0((a1 + 32), v55);
  }

LABEL_49:
  v45 = [*v8 name];
  v46 = [NSError ds_errorFromIgnorableError:v3 sourceName:v45];

  if (v46)
  {
    v47 = qword_100015148;
    if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_ERROR))
    {
      v51 = *(a1 + 32);
      v52 = v47;
      v53 = [v51 name];
      v54 = *(a1 + 40);
      *buf = 138543875;
      v58 = v53;
      v59 = 2113;
      v60 = v54;
      v61 = 2114;
      v62 = v46;
      _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Failed to stop sharing on source %{public}@ for participants %{private}@ because %{public}@", buf, 0x20u);
    }

    v48 = [*(a1 + 32) name];
    v56 = v46;
    v49 = [NSArray arrayWithObjects:&v56 count:1];
    v50 = [DSError errorWithCode:2 sourceName:v48 underlyingErrors:v49];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000082C8(uint64_t a1, uint64_t a2)
{
  dispatch_group_enter(*(a1 + 32));
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v5 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 48);
    v7 = v5;
    v8 = [v6 name];
    *buf = 138478083;
    v20 = v4;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Stopping sharing of %{private}@ from source %{public}@", buf, 0x16u);
  }

  v9 = *(a1 + 48);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008B34;
  v13[3] = &unk_100010700;
  v14 = v9;
  v10 = v4;
  v15 = v10;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v16 = v11;
  v18 = v12;
  v17 = *(a1 + 32);
  [v14 stopSharingWithParticipant:v10 completion:v13];
}

void sub_100008B34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 name];
    *buf = 138543362;
    v60 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Stopping sharing with %{public}@ complete", buf, 0xCu);
  }

  v8 = (a1 + 32);
  v9 = [*(a1 + 32) name];
  v10 = [NSError ds_errorFromIgnorableError:v3 sourceName:v9];

  if (v10)
  {
    v11 = qword_100015148;
    if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 32);
      v34 = v11;
      v35 = [v33 name];
      v36 = *(a1 + 40);
      *buf = 138543874;
      v60 = v35;
      v61 = 2114;
      v62 = v36;
      v63 = 2114;
      v64 = v10;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to stop sharing on source %{public}@ for %{public}@ because %{public}@", buf, 0x20u);
    }

    v12 = [*(a1 + 32) name];
    v58 = v10;
    v13 = [NSArray arrayWithObjects:&v58 count:1];
    v14 = [DSError errorWithCode:2 sourceName:v12 underlyingErrors:v13];

    [*(a1 + 48) addObject:v14];
  }

  v15 = [*v8 name];
  v16 = [v15 isEqualToString:DSSourceNameCalendars];

  if (v16)
  {
    v17 = qword_100015148;
    v18 = v17;
    v19 = *(a1 + 64);
    if (v19 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v17))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v20 = "stop.Calendars";
LABEL_47:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v19, v20, " enableTelemetry=YES ", buf, 2u);
LABEL_48:

    goto LABEL_49;
  }

  v21 = [*v8 name];
  v22 = [v21 isEqualToString:DSSourceNameFindMy];

  if (v22)
  {
    v23 = qword_100015148;
    v18 = v23;
    v19 = *(a1 + 64);
    if (v19 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v23))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v20 = "stop.FindMy";
    goto LABEL_47;
  }

  v24 = [*v8 name];
  v25 = [v24 isEqualToString:DSSourceNamePhotos];

  if (v25)
  {
    v26 = qword_100015148;
    v18 = v26;
    v19 = *(a1 + 64);
    if (v19 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v26))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v20 = "stop.Photos";
    goto LABEL_47;
  }

  v27 = [*v8 name];
  v28 = [v27 isEqualToString:DSSourceNameHomeSharing];

  if (v28)
  {
    v29 = qword_100015148;
    v18 = v29;
    v19 = *(a1 + 64);
    if (v19 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v29))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v20 = "stop.Home";
    goto LABEL_47;
  }

  v30 = [*v8 name];
  v31 = [v30 isEqualToString:DSSourceNameHealthSharing];

  if (v31)
  {
    v32 = qword_100015148;
    v18 = v32;
    v19 = *(a1 + 64);
    if (v19 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v32))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v20 = "stop.Health";
    goto LABEL_47;
  }

  v37 = [*v8 name];
  v38 = [v37 isEqualToString:DSSourceNameNotes];

  if (v38)
  {
    v39 = qword_100015148;
    v18 = v39;
    v19 = *(a1 + 64);
    if (v19 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v39))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v20 = "stop.Notes";
    goto LABEL_47;
  }

  v40 = [*v8 name];
  v41 = [v40 isEqualToString:DSSourceNameZelkova];

  if (v41)
  {
    v42 = qword_100015148;
    v18 = v42;
    v19 = *(a1 + 64);
    if (v19 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v42))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v20 = "stop.Zelkova";
    goto LABEL_47;
  }

  v43 = [*v8 name];
  v44 = [v43 isEqualToString:DSSourceNameActivity];

  if (v44)
  {
    v45 = qword_100015148;
    v18 = v45;
    v19 = *(a1 + 64);
    if (v19 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v45))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v20 = "stop.Activity";
    goto LABEL_47;
  }

  v46 = [*v8 name];
  v47 = [v46 isEqualToString:DSSourceNamePassKeys];

  if (v47)
  {
    v48 = qword_100015148;
    v18 = v48;
    v19 = *(a1 + 64);
    if (v19 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v48))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v20 = "stop.Passkeys";
    goto LABEL_47;
  }

  v49 = [*v8 name];
  v50 = [v49 isEqualToString:DSSourceNameItemSharing];

  if (v50)
  {
    v51 = qword_100015148;
    v18 = v51;
    v19 = *(a1 + 64);
    if (v19 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v51))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v20 = "stop.ItemSharing";
    goto LABEL_47;
  }

  v52 = [*(a1 + 32) name];
  v53 = [v52 isEqualToString:DSSourceNameMaps];

  v54 = qword_100015148;
  v55 = v54;
  v56 = *(a1 + 64);
  if (v53)
  {
    if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_INTERVAL_END, v56, "stop.Maps", " enableTelemetry=YES ", buf, 2u);
    }
  }

  else
  {
    if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_INTERVAL_END, v56, "stop.Notes", " enableTelemetry=YES ", buf, 2u);
    }

    v57 = qword_100015148;
    if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_FAULT))
    {
      sub_100009AB0((a1 + 32), v57);
    }
  }

LABEL_49:
  dispatch_group_leave(*(a1 + 56));
}

void sub_1000092F4(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [DSError errorWithCode:2 underlyingErrors:*(a1 + 32)];
  }

  else
  {
    v2 = 0;
  }

  v3 = qword_100015148;
  v4 = v3;
  v5 = *(a1 + 48);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v5, "stop", " enableTelemetry=YES ", v6, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100009440(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_10000946C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

void sub_10000949C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1000094BC(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "proc_name failed for process identifier: %d", v3, 8u);
}

void sub_100009538(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not resolve path for process identifier: %d", v3, 8u);
}

void sub_1000095C8(uint64_t a1, void *a2)
{
  v2 = [a2 client];
  v3 = [v2 name];
  sub_10000283C();
  sub_100002854(&_mh_execute_header, v4, v5, "@Rejecting %@ request from: %@, client is not entitled", v6, v7, v8, v9, v10);
}

void sub_10000966C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "@Rejecting %@ request, client is nil", &v2, 0xCu);
}

void sub_1000096F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009484();
  sub_10000949C(&_mh_execute_header, v2, v3, "Failed to get data usage policies for %{public}@ because %{public}@");
}

void sub_100009814(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = objc_begin_catch(a1);
  *a4 = v6;
  v7 = v6;
  v8 = qword_100015148;
  if (os_log_type_enabled(qword_100015148, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543618;
    v10 = a3;
    v11 = 2114;
    v12 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch shared resources from %{public}@ because exception %{public}@", &v9, 0x16u);
  }
}

void sub_1000098E0(uint64_t *a1)
{
  v1 = *a1;
  sub_100009484();
  sub_10000949C(&_mh_execute_header, v2, v3, "Failed to fetch shared resources from %{public}@ because %{public}@");
}

void sub_10000994C(uint64_t *a1, NSObject *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = 138543362;
  v5 = v3;
  sub_10000946C(&_mh_execute_header, a2, a3, "Signpost for unsupported source name %{public}@", &v4);
}

void sub_1000099C0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100009460();
  sub_10000946C(&_mh_execute_header, v3, v5, "Signpost for unsupported source name %{public}@", v6);
}

void sub_100009A60(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_10000946C(&_mh_execute_header, a3, a3, "Signpost for unsupported source name %{public}@", a2);
}

void sub_100009AB0(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 name];
  sub_100009460();
  sub_100009440(&_mh_execute_header, v5, v6, "Signpost for unsupported source name %{public}@", v7, v8, v9, v10, v11);
}

void sub_100009B44(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100009460();
  sub_100009440(&_mh_execute_header, v5, v6, "Signpost for unsupported source name %{public}@", v7, v8, v9, v10, v11);
}