void sub_100034628(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = *(a1 + 136);
    if (v3)
    {
      Property = objc_getProperty(v3, a2, 72, 1);
      v5 = [Property countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      Property = 0;
      v5 = [0 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v5)
      {
LABEL_4:
        v7 = v5;
        v8 = *v18;
        *&v6 = 138543362;
        v16 = v6;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v18 != v8)
            {
              objc_enumerationMutation(Property);
            }

            v10 = *(a1 + 136);
            if (v10)
            {
              v11 = *(*(&v17 + 1) + 8 * i);
              v12 = [*(v10 + 72) objectForKey:v11];
              if (v12)
              {
                v14 = objc_getProperty(v12, v13, 24, 1);
                v15 = qword_100071B30;
                if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
                {
                  *buf = v16;
                  v24 = v14;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Resetting datastore for %{public}@", buf, 0xCu);
                }

                v21[0] = _NSConcreteStackBlock;
                v21[1] = 3221225472;
                v21[2] = sub_100034868;
                v21[3] = &unk_1000611D0;
                v21[4] = v14;
                [objc_msgSend(v11 remoteObjectProxyWithErrorHandler:{v21, v16, v17), "resetDatastoreFiles:", &__NSDictionary0__struct}];
              }
            }
          }

          v7 = [Property countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v7);
      }
    }

    if (*(a1 + 8) == 1)
    {
      sub_10001D9A8(RDNotifier, @"com.apple.SensorKit.resetDatastore");
    }
  }
}

void sub_100034868(uint64_t a1, uint64_t a2)
{
  v4 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error trying to reset datastore for %{public}@. %{public}@", &v6, 0x16u);
  }
}

void sub_100034B50(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v8 = [SRSensorDescription sensorDescriptionForSensor:?];
    if (v8)
    {
      v9 = v8;
      v10 = objc_autoreleasePoolPush();
      v23 = 0;
      v11 = [LSBundleRecord sr_bundleRecordWithIdentifier:a2 error:&v23];
      if (v11)
      {
        v12 = [a1 validateBundleRecord:v11 withFilters:{objc_msgSend(v9, "filters")}];
        v13 = qword_100071B30;
        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
        {
          *buf = 138543874;
          v25 = a3;
          v26 = 2114;
          v27 = a2;
          v28 = 1026;
          v29 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ eligibility status: %{public, BOOL}d", buf, 0x1Cu);
        }

        v14 = *(a4 + 16);
        v15 = a4;
        v16 = v12;
      }

      else
      {
        v18 = qword_100071B30;
        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v25 = a2;
          v26 = 2114;
          v27 = v23;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Failed to find application record for %{public}@ because %{public}@", buf, 0x16u);
        }

        v19 = [objc_msgSend(v9 "eligibleDaemons")];
        v20 = qword_100071B30;
        if (!v19)
        {
          if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
          {
            v22 = [v9 name];
            *buf = 138543618;
            v25 = a2;
            v26 = 2114;
            v27 = v22;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ not eligible for %{public}@ because an app nor daemon record couldn't be found", buf, 0x16u);
          }

          (*(a4 + 16))(a4, 0, [SRError errorWithCode:20480]);
          goto LABEL_17;
        }

        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
        {
          v21 = [v9 name];
          *buf = 138543618;
          v25 = a2;
          v26 = 2114;
          v27 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%{public}@ is an eligible daemon for writing to %{public}@", buf, 0x16u);
        }

        v14 = *(a4 + 16);
        v15 = a4;
        v16 = 1;
      }

      v14(v15, v16, 0);
LABEL_17:
      objc_autoreleasePoolPop(v10);
      return;
    }

    v17 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = a3;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to find a sensor description for %{public}@", buf, 0xCu);
    }

    (*(a4 + 16))(a4, 0, [SRError errorWithCode:8194]);
  }
}

void sub_10003606C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    v6 = sub_10003A2C0(*(a1 + 64), *(a1 + 56));
    v7 = sub_10000DB60([RDTopLevelInformingDatastore alloc], v6);
    v8 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Removing all files for all sensors", buf, 2u);
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      if (v7)
      {
LABEL_4:
        v9 = sub_10000DC14(v7, 0);
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v9 = 0;
    v10 = [0 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
LABEL_5:
      v12 = v10;
      v13 = *v16;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v9);
          }

          sub_10003115C(a1, *(*(&v15 + 1) + 8 * i), a2, a3);
        }

        v12 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v12);
    }

LABEL_13:
    sub_100034628(a1, v11);
  }
}

NSDictionary *sub_100036250(void *a1)
{
  v10[0] = @"RDAnalyticsBundleIdentifierKey";
  v10[1] = @"RDAnalyticsSensorIdentifierKey";
  v2 = a1[5];
  v11[0] = a1[4];
  v11[1] = v2;
  v10[2] = @"RDAnalyticsAuthorizationGrantedKey";
  v3 = a1[6];
  if (v3)
  {
    v4 = *(v3 + 112);
  }

  else
  {
    v4 = 0;
  }

  v11[2] = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 sensorHasReaderAuthorization:? forBundleId:?]);
  v10[3] = @"RDAnalyticsDataCollectionEnabledKey";
  v5 = a1[6];
  if (v5)
  {
    v6 = *(v5 + 56);
  }

  else
  {
    v6 = 0;
  }

  v11[3] = [NSNumber numberWithBool:sub_1000296BC(v6)];
  v10[4] = @"RDAnalyticsRequiredOnboardingCompletedKey";
  v7 = a1[6];
  if (v7)
  {
    v8 = *(v7 + 56);
  }

  else
  {
    v8 = 0;
  }

  v11[4] = [NSNumber numberWithBool:sub_1000297E4(v8)];
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5]);
}

void sub_1000365F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(v2 + 112) sensorKitActive];
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = [0 sensorKitActive];
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  *(v4 + 8) = v3;
  v5 = *(a1 + 32);
  if (v5 && *(v5 + 8) == 1)
  {
    *buf = @"com.apple.sensorkit.decryptArchives";
    v6 = [NSArray arrayWithObjects:buf count:1];
    v7 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Registering for authorized XPC Activities", v18, 2u);
    }

    [*(v5 + 40) registerForXPCActivities:v6];
    goto LABEL_11;
  }

LABEL_9:
  v8 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No clients authorized so skipping registration of XPC activities that only apply when SensorKit is active", buf, 2u);
  }

LABEL_11:
  v9 = *(*(a1 + 32) + 96);
  v10 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v11 = qword_100071B68;
  v12 = *&qword_100071B70;
  v13 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v9)
  {
    if (v11 >= v10)
    {
      v14 = -v14;
    }

    v15 = v13 + v12 + v14;
    v16 = objc_autoreleasePoolPush();
    if (sub_10001DCD4(v9, v15))
    {
      v17 = sub_1000296BC(v9[2]);
      objc_autoreleasePoolPop(v16);
      if (v17)
      {
        sub_10001E15C(v9);
      }
    }

    else
    {
      objc_autoreleasePoolPop(v16);
    }
  }
}

void sub_100036AE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = 0;
    v4 = [0 sensorKitActive];
    v5 = *(a1 + 32);
    v6 = &off_100071000;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_31:
    v7 = 0;
    if ((v3 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v3 = *(v2 + 8);
  v4 = [*(v2 + 112) sensorKitActive];
  v5 = *(a1 + 32);
  v6 = &off_100071000;
  if (!v5)
  {
    goto LABEL_31;
  }

LABEL_3:
  *(v5 + 8) = v4;
  v7 = *(a1 + 32);
  if (v7 && !(v3 & 1 | ((*(v7 + 8) & 1) == 0)))
  {
    v31[0] = @"com.apple.sensorkit.decryptArchives";
    v8 = [NSArray arrayWithObjects:v31 count:1];
    v9 = v6[358];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Registering for authorized XPC Activities", &v23, 2u);
    }

    [*(v7 + 40) registerForXPCActivities:v8];
    v7 = *(a1 + 32);
  }

  if (v3)
  {
LABEL_9:
    if (v7 && (*(v7 + 8) & 1) == 0)
    {
      v31[0] = @"com.apple.sensorkit.decryptArchives";
      v10 = [NSArray arrayWithObjects:v31 count:1];
      v11 = v6[358];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unregistering for authorized XPC Activities", &v23, 2u);
      }

      [*(v7 + 40) unregisterForXPCActivities:v10];
      v7 = *(a1 + 32);
    }
  }

LABEL_14:
  sub_1000318E8(v7, *(a1 + 40));
  v12 = *(a1 + 32);
  if (v12)
  {
    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15 = +[NSMutableSet set];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          v21 = [v12 authorizedAndInterestedClientsForSensor:v20];
          if ([v21 count] >= 2 && objc_msgSend(v21, "containsObject:", v13))
          {
            [v15 addObject:{objc_msgSend(+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription, "sensorDescriptionForSensor:", v20), "name")}];
          }
        }

        v17 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }

    if ([v15 count])
    {
      v22 = qword_100071B30;
      if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412547;
        v28 = v15;
        v29 = 2113;
        v30 = v13;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Request new segment for %@, because of new study authorization %{private}@", buf, 0x16u);
      }

      sub_100032390(v12, v15);
    }
  }
}

NSDictionary *__cdecl sub_100037A98(id a1)
{
  v2 = @"RDAnalyticsDaemonStartReasonKey";
  v3 = &off_100065508;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1]);
}

NSDictionary *sub_100037B10(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = @"RDAnalyticsSensorIdentifierKey";
  v5[1] = @"RDAnalyticsDataSizeKey";
  v6[0] = v3;
  v6[1] = [NSNumber numberWithUnsignedLongLong:sub_10000D1C4(v2, a2)];
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2]);
}

NSArray *sub_10003A234(NSArray *result)
{
  if (result)
  {
    if (result[4].super.isa)
    {
      isa = result[4].super.isa;
      return [NSArray arrayWithObjects:&isa count:1];
    }

    else
    {
      return &__NSArray0__struct;
    }
  }

  return result;
}

RDDatastoreContext *sub_10003A2C0(void *a1, void *a2)
{
  v4 = objc_alloc_init(RDDatastoreContext);
  v6 = v4;
  if (v4)
  {
    objc_setProperty_atomic(v4, v5, a1, 8);
    objc_setProperty_atomic(v6, v7, a2, 16);
  }

  return v6;
}

RDDatastoreContext *sub_10003A334(void *a1, void *a2, void *a3, void *a4)
{
  v8 = objc_alloc_init(RDDatastoreContext);
  v10 = v8;
  if (v8)
  {
    objc_setProperty_atomic(v8, v9, a3, 8);
    objc_setProperty_atomic(v10, v11, a4, 16);
    objc_setProperty_atomic(v10, v12, a2, 32);
    objc_setProperty_atomic(v10, v13, a1, 24);
  }

  return v10;
}

RDDatastoreContext *sub_10003A3D8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = objc_alloc_init(RDDatastoreContext);
  v12 = v10;
  if (v10)
  {
    objc_setProperty_atomic(v10, v11, a3, 8);
    objc_setProperty_atomic(v12, v13, a4, 16);
    objc_setProperty_atomic(v12, v14, a2, 32);
    objc_setProperty_atomic(v12, v15, a5, 40);
    objc_setProperty_atomic(v12, v16, a1, 24);
  }

  return v12;
}

id sub_10003A4EC(void *a1, NSObject *a2, void *a3, void *a4, void *a5)
{
  v5 = a1;
  if (a1)
  {
    v10 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.SensorKit.authorization"];
    v11 = objc_alloc_init(SRFollowUp);
    v25.receiver = v5;
    v25.super_class = RDAuthorizationBroadcaster;
    v12 = objc_msgSendSuper2(&v25, "init");
    v5 = v12;
    if (v12)
    {
      v12[1] = a2;
      dispatch_retain(a2);
      *(v5 + 10) = a3;
      *(v5 + 11) = a4;
      *(v5 + 12) = a5;
      objc_setProperty_nonatomic(v5, v13, v10, 32);
      [*(v5 + 4) _setQueue:a2];
      [*(v5 + 4) setDelegate:v5];
      [*(v5 + 12) addReaderAuthorizationDelegate:v5];
      v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SRSensorKitServiceServerAuthorizationListening];
      objc_setProperty_nonatomic(v5, v15, v14, 40);
      v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SRSensorKitServiceClientAuthorizationListening];
      objc_setProperty_nonatomic(v5, v17, v16, 48);
      v18 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:0];
      objc_setProperty_nonatomic(v5, v19, v18, 56);
      v20 = +[NSMutableDictionary dictionary];
      objc_setProperty_nonatomic(v5, v21, v20, 64);
      objc_setProperty_nonatomic(v5, v22, v11, 72);
      if (sub_1000296BC(*(v5 + 10)))
      {
        v23 = *(v5 + 9);
        v26 = @"com.apple.SensorKit.followup.enableSensorKit";
        [v23 clearPendingFollowUpItemsWithUniqueIdentifiers:+[NSArray arrayWithObjects:count:](NSArray completion:{"arrayWithObjects:count:", &v26, 1), &stru_100061830}];
      }
    }
  }

  return v5;
}

dispatch_queue_t *sub_10003A7DC(dispatch_queue_t *result, void *a2)
{
  v111 = result;
  if (result)
  {
    dispatch_assert_queue_V2(result[1]);
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    obj = [v111[8] objectForKeyedSubscript:a2];
    v105 = [obj countByEnumeratingWithState:&v118 objects:v131 count:16];
    if (v105)
    {
      v101 = *v119;
      *&v3 = 67240704;
      v99 = v3;
      v103 = a2;
      do
      {
        v4 = 0;
        do
        {
          if (*v119 != v101)
          {
            objc_enumerationMutation(obj);
          }

          v107 = *(*(&v118 + 1) + 8 * v4);
          v109 = v4;
          if ([a2 isEqualToString:{@"com.apple.private.SensorKit._compositeBundle", v99}])
          {
            v5 = +[NSMutableSet set];
            v6 = [v111[12] readerAuthorizationBundleIdValues];
            v126 = 0u;
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            v7 = [v6 countByEnumeratingWithState:&v126 objects:buf count:16];
            if (v7)
            {
              v8 = v7;
              v9 = *v127;
              do
              {
                for (i = 0; i != v8; i = i + 1)
                {
                  if (*v127 != v9)
                  {
                    objc_enumerationMutation(v6);
                  }

                  v11 = [v6 objectForKeyedSubscript:*(*(&v126 + 1) + 8 * i)];
                  v122 = 0u;
                  v123 = 0u;
                  v124 = 0u;
                  v125 = 0u;
                  v12 = [v11 countByEnumeratingWithState:&v122 objects:&v132 count:16];
                  if (v12)
                  {
                    v13 = v12;
                    v14 = *v123;
                    do
                    {
                      for (j = 0; j != v13; j = j + 1)
                      {
                        if (*v123 != v14)
                        {
                          objc_enumerationMutation(v11);
                        }

                        v16 = *(*(&v122 + 1) + 8 * j);
                        if ([objc_msgSend(v11 objectForKeyedSubscript:{v16), "BOOLValue"}])
                        {
                          [v5 addObject:v16];
                        }
                      }

                      v13 = [v11 countByEnumeratingWithState:&v122 objects:&v132 count:16];
                    }

                    while (v13);
                  }
                }

                v8 = [v6 countByEnumeratingWithState:&v126 objects:buf count:16];
              }

              while (v8);
            }

            v17 = [NSSet setWithSet:v5];
            a2 = v103;
          }

          else
          {
            dispatch_assert_queue_V2(v111[1]);
            v17 = +[NSMutableSet set];
            v18 = [v111[12] readerAuthorizationBundleIdValues];
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v19 = [v18 objectForKeyedSubscript:a2];
            v20 = [v19 countByEnumeratingWithState:&v132 objects:buf count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v133;
              do
              {
                for (k = 0; k != v21; k = k + 1)
                {
                  if (*v133 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v132 + 1) + 8 * k);
                  if ([objc_msgSend(objc_msgSend(v18 objectForKeyedSubscript:{a2), "objectForKeyedSubscript:", v24), "BOOLValue"}])
                  {
                    [(NSSet *)v17 addObject:v24];
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v132 objects:buf count:16];
              }

              while (v21);
            }
          }

          if ([a2 isEqualToString:@"com.apple.private.SensorKit._compositeBundle"])
          {
            v25 = +[NSMutableSet set];
            v26 = [v111[12] readerAuthorizationBundleIdValues];
            v126 = 0u;
            v127 = 0u;
            v128 = 0u;
            v129 = 0u;
            v27 = [v26 countByEnumeratingWithState:&v126 objects:buf count:16];
            if (v27)
            {
              v28 = v27;
              v112 = *v127;
              do
              {
                for (m = 0; m != v28; m = m + 1)
                {
                  if (*v127 != v112)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v30 = [v26 objectForKeyedSubscript:*(*(&v126 + 1) + 8 * m)];
                  v122 = 0u;
                  v123 = 0u;
                  v124 = 0u;
                  v125 = 0u;
                  v31 = [v30 countByEnumeratingWithState:&v122 objects:&v132 count:16];
                  if (v31)
                  {
                    v32 = v31;
                    v33 = *v123;
                    do
                    {
                      for (n = 0; n != v32; n = n + 1)
                      {
                        if (*v123 != v33)
                        {
                          objc_enumerationMutation(v30);
                        }

                        v35 = *(*(&v122 + 1) + 8 * n);
                        if ([v30 count] && !-[NSSet containsObject:](v17, "containsObject:", v35))
                        {
                          [v25 addObject:v35];
                        }
                      }

                      v32 = [v30 countByEnumeratingWithState:&v122 objects:&v132 count:16];
                    }

                    while (v32);
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v126 objects:buf count:16];
              }

              while (v28);
            }

            v36 = [NSSet setWithSet:v25];
            a2 = v103;
          }

          else
          {
            dispatch_assert_queue_V2(v111[1]);
            v36 = +[NSMutableSet set];
            v37 = [v111[12] readerAuthorizationBundleIdValues];
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v135 = 0u;
            v38 = [v37 objectForKeyedSubscript:a2];
            v39 = [v38 countByEnumeratingWithState:&v132 objects:buf count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v133;
              do
              {
                for (ii = 0; ii != v40; ii = ii + 1)
                {
                  if (*v133 != v41)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v43 = *(*(&v132 + 1) + 8 * ii);
                  if (([objc_msgSend(objc_msgSend(v37 objectForKeyedSubscript:{a2), "objectForKeyedSubscript:", v43), "BOOLValue"}] & 1) == 0)
                  {
                    [(NSSet *)v36 addObject:v43];
                  }
                }

                v40 = [v38 countByEnumeratingWithState:&v132 objects:buf count:16];
              }

              while (v40);
            }
          }

          v44 = [-[NSObject readerLastModifiedAuthorizationTimes](v111[12] "readerLastModifiedAuthorizationTimes")];
          if (v44)
          {
            v45 = v44;
          }

          else
          {
            v45 = &__NSDictionary0__struct;
          }

          v46 = sub_1000296BC(v111[10]);
          v47 = sub_1000297E4(v111[10]);
          if (v47)
          {
            v48 = 2;
          }

          else
          {
            v48 = 0;
          }

          v49 = qword_100071B38;
          if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_DEFAULT))
          {
            v50 = sub_10002B090(v111[10]);
            *buf = v99;
            v137 = v46;
            v138 = 1026;
            v139 = v47;
            v140 = 2048;
            v141 = v50;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "dataCollectionEnabled is %{public, BOOL}d. onboardingCompleted is %{public, BOOL}d. Enabled is %lu", buf, 0x18u);
          }

          [objc_msgSend(v107 "remoteObjectProxy")];
          v4 = v109 + 1;
        }

        while ((v109 + 1) != v105);
        v105 = [obj countByEnumeratingWithState:&v118 objects:v131 count:16];
      }

      while (v105);
    }

    result = [a2 isEqualToString:@"com.apple.private.SensorKit._compositeBundle"];
    if ((result & 1) == 0)
    {
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v102 = [v111[8] objectForKeyedSubscript:@"com.apple.private.SensorKit._compositeBundle"];
      result = [v102 countByEnumeratingWithState:&v114 objects:v130 count:16];
      v106 = result;
      if (result)
      {
        v104 = *v115;
        v51 = &IDSCopyIDForDevice_ptr;
        do
        {
          v52 = 0;
          do
          {
            if (*v115 != v104)
            {
              objc_enumerationMutation(v102);
            }

            v108 = *(*(&v114 + 1) + 8 * v52);
            v110 = v52;
            if ([@"com.apple.private.SensorKit._compositeBundle" isEqualToString:@"com.apple.private.SensorKit._compositeBundle"])
            {
              v53 = [v51[301] set];
              v54 = [v111[12] readerAuthorizationBundleIdValues];
              v126 = 0u;
              v127 = 0u;
              v128 = 0u;
              v129 = 0u;
              v55 = [v54 countByEnumeratingWithState:&v126 objects:buf count:16];
              if (v55)
              {
                v56 = v55;
                v57 = *v127;
                do
                {
                  for (jj = 0; jj != v56; jj = jj + 1)
                  {
                    if (*v127 != v57)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v59 = [v54 objectForKeyedSubscript:*(*(&v126 + 1) + 8 * jj)];
                    v122 = 0u;
                    v123 = 0u;
                    v124 = 0u;
                    v125 = 0u;
                    v60 = [v59 countByEnumeratingWithState:&v122 objects:&v132 count:16];
                    if (v60)
                    {
                      v61 = v60;
                      v62 = *v123;
                      do
                      {
                        for (kk = 0; kk != v61; kk = kk + 1)
                        {
                          if (*v123 != v62)
                          {
                            objc_enumerationMutation(v59);
                          }

                          v64 = *(*(&v122 + 1) + 8 * kk);
                          if ([objc_msgSend(v59 objectForKeyedSubscript:{v64), "BOOLValue"}])
                          {
                            [v53 addObject:v64];
                          }
                        }

                        v61 = [v59 countByEnumeratingWithState:&v122 objects:&v132 count:16];
                      }

                      while (v61);
                    }
                  }

                  v56 = [v54 countByEnumeratingWithState:&v126 objects:buf count:16];
                }

                while (v56);
              }

              v65 = [NSSet setWithSet:v53];
              v51 = &IDSCopyIDForDevice_ptr;
            }

            else
            {
              dispatch_assert_queue_V2(v111[1]);
              v65 = [v51[301] set];
              v66 = [v111[12] readerAuthorizationBundleIdValues];
              v132 = 0u;
              v133 = 0u;
              v134 = 0u;
              v135 = 0u;
              v67 = [v66 objectForKeyedSubscript:@"com.apple.private.SensorKit._compositeBundle"];
              v68 = [v67 countByEnumeratingWithState:&v132 objects:buf count:16];
              if (v68)
              {
                v69 = v68;
                v70 = *v133;
                do
                {
                  for (mm = 0; mm != v69; mm = mm + 1)
                  {
                    if (*v133 != v70)
                    {
                      objc_enumerationMutation(v67);
                    }

                    v72 = *(*(&v132 + 1) + 8 * mm);
                    if ([objc_msgSend(objc_msgSend(v66 objectForKeyedSubscript:{@"com.apple.private.SensorKit._compositeBundle", "objectForKeyedSubscript:", v72), "BOOLValue"}])
                    {
                      [(NSSet *)v65 addObject:v72];
                    }
                  }

                  v69 = [v67 countByEnumeratingWithState:&v132 objects:buf count:16];
                }

                while (v69);
              }
            }

            if ([@"com.apple.private.SensorKit._compositeBundle" isEqualToString:@"com.apple.private.SensorKit._compositeBundle"])
            {
              v73 = [v51[301] set];
              v74 = [v111[12] readerAuthorizationBundleIdValues];
              v126 = 0u;
              v127 = 0u;
              v128 = 0u;
              v129 = 0u;
              v75 = [v74 countByEnumeratingWithState:&v126 objects:buf count:16];
              if (v75)
              {
                v76 = v75;
                v113 = *v127;
                do
                {
                  for (nn = 0; nn != v76; nn = nn + 1)
                  {
                    if (*v127 != v113)
                    {
                      objc_enumerationMutation(v74);
                    }

                    v78 = [v74 objectForKeyedSubscript:*(*(&v126 + 1) + 8 * nn)];
                    v122 = 0u;
                    v123 = 0u;
                    v124 = 0u;
                    v125 = 0u;
                    v79 = [v78 countByEnumeratingWithState:&v122 objects:&v132 count:16];
                    if (v79)
                    {
                      v80 = v79;
                      v81 = *v123;
                      do
                      {
                        for (i1 = 0; i1 != v80; i1 = i1 + 1)
                        {
                          if (*v123 != v81)
                          {
                            objc_enumerationMutation(v78);
                          }

                          v83 = *(*(&v122 + 1) + 8 * i1);
                          if ([v78 count] && !-[NSSet containsObject:](v65, "containsObject:", v83))
                          {
                            [v73 addObject:v83];
                          }
                        }

                        v80 = [v78 countByEnumeratingWithState:&v122 objects:&v132 count:16];
                      }

                      while (v80);
                    }
                  }

                  v76 = [v74 countByEnumeratingWithState:&v126 objects:buf count:16];
                }

                while (v76);
              }

              v84 = [NSSet setWithSet:v73];
              v51 = &IDSCopyIDForDevice_ptr;
            }

            else
            {
              dispatch_assert_queue_V2(v111[1]);
              v84 = [v51[301] set];
              v85 = [v111[12] readerAuthorizationBundleIdValues];
              v132 = 0u;
              v133 = 0u;
              v134 = 0u;
              v135 = 0u;
              v86 = [v85 objectForKeyedSubscript:@"com.apple.private.SensorKit._compositeBundle"];
              v87 = [v86 countByEnumeratingWithState:&v132 objects:buf count:16];
              if (v87)
              {
                v88 = v87;
                v89 = *v133;
                do
                {
                  for (i2 = 0; i2 != v88; i2 = i2 + 1)
                  {
                    if (*v133 != v89)
                    {
                      objc_enumerationMutation(v86);
                    }

                    v91 = *(*(&v132 + 1) + 8 * i2);
                    if (([objc_msgSend(objc_msgSend(v85 objectForKeyedSubscript:{@"com.apple.private.SensorKit._compositeBundle", "objectForKeyedSubscript:", v91), "BOOLValue"}] & 1) == 0)
                    {
                      [(NSSet *)v84 addObject:v91];
                    }
                  }

                  v88 = [v86 countByEnumeratingWithState:&v132 objects:buf count:16];
                }

                while (v88);
              }
            }

            v92 = [-[NSObject readerLastModifiedAuthorizationTimes](v111[12] "readerLastModifiedAuthorizationTimes")];
            if (v92)
            {
              v93 = v92;
            }

            else
            {
              v93 = &__NSDictionary0__struct;
            }

            v94 = sub_1000296BC(v111[10]);
            v95 = sub_1000297E4(v111[10]);
            if (v95)
            {
              v96 = 2;
            }

            else
            {
              v96 = 0;
            }

            v97 = qword_100071B38;
            if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_DEFAULT))
            {
              v98 = sub_10002B090(v111[10]);
              *buf = 67240704;
              v137 = v94;
              v138 = 1026;
              v139 = v95;
              v140 = 2048;
              v141 = v98;
              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "dataCollectionEnabled is %{public, BOOL}d. onboardingCompleted is %{public, BOOL}d. Enabled is %lu", buf, 0x18u);
            }

            [objc_msgSend(v108 "remoteObjectProxy")];
            v52 = v110 + 1;
          }

          while ((v110 + 1) != v106);
          result = [v102 countByEnumeratingWithState:&v114 objects:v130 count:16];
          v106 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

uint64_t sub_10003B54C(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1000296BC(*(a1 + 80));
    v3 = sub_1000297E4(*(a1 + 80));
    if (v3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4 | v2;
    v6 = qword_100071B38;
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_10002B090(*(a1 + 80));
      v9[0] = 67240704;
      v9[1] = v2;
      v10 = 1026;
      v11 = v3;
      v12 = 2048;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "dataCollectionEnabled is %{public, BOOL}d. onboardingCompleted is %{public, BOOL}d. Enabled is %lu", v9, 0x18u);
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

void sub_10003B668(uint64_t a1, void *a2, void *a3, int a4)
{
  if (a1)
  {
    v4 = a3;
    if (([a3 isEqualToString:@"com.apple.sensorkit.dummy-bundle-id"] & 1) == 0)
    {
      v44 = objc_alloc_init(NSMutableSet);
      v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(a2, "count")}];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v50 = [a2 countByEnumeratingWithState:&v56 objects:v67 count:16];
      if (v50)
      {
        v49 = *v57;
        *&v8 = 138543362;
        v43 = v8;
        v46 = v7;
        v47 = v4;
        v45 = a2;
        do
        {
          for (i = 0; i != v50; i = i + 1)
          {
            if (*v57 != v49)
            {
              objc_enumerationMutation(a2);
            }

            v11 = *(*(&v56 + 1) + 8 * i);
            v12 = objc_autoreleasePoolPush();
            v13 = [SRSensorDescription sensorDescriptionForSensor:v11];
            if (v13)
            {
              v14 = v13;
              v51 = v12;
              v15 = [v13 authorizationService];
              v16 = [objc_msgSend(a2 objectForKeyedSubscript:{v11), "BOOLValue"}];
              if (v16)
              {
                v17 = *(a1 + 88);
                if (v17)
                {
                  if (![*(v17 + 48) objectForKeyedSubscript:v15])
                  {
                    goto LABEL_16;
                  }
                }

                else if (![0 objectForKeyedSubscript:v15])
                {
LABEL_16:
                  sub_1000277E0(*(a1 + 88), v15);
                }

                v18 = *(a1 + 88);
                if (!v18)
                {
                  v21 = 0.0;
                  if (!__isnand())
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_23;
                }

                v19 = [objc_msgSend(*(v18 + 112) objectForKeyedSubscript:{v15), "objectForKeyedSubscript:", v4}];
                if (v19)
                {
                  [v19 doubleValue];
                  v21 = v20;
                  if (!__isnand())
                  {
                    goto LABEL_30;
                  }

LABEL_23:
                  [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 96) readerLastModifiedAuthorizationTimes];
                  v23 = v22;
                  v24 = qword_100071B38;
                  if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138478339;
                    *&buf[4] = v15;
                    *&buf[12] = 2113;
                    *&buf[14] = v4;
                    v63 = 2049;
                    v64 = v23;
                    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "No last modified authorization time found in the state cache for auth service: %{private}@ bundle id: %{private}@. Migrating from TCC %{private}f.", buf, 0x20u);
                  }

                  v60 = 0;
                  *buf = 0;
                  *&buf[8] = 0;
                  mach_get_times();
                  v25 = *buf;
                  v26 = *&buf[8];
                  v27 = v60;
                  if (qword_100071B60 != -1)
                  {
                    dispatch_once(&qword_100071B60, &stru_100060D90);
                  }

                  v28 = qword_100071B68;
                  v29 = *&qword_100071B70;
                  v30 = *&qword_100071B78;
                  TMConvertTicksToSeconds();
                  if (v28 >= v27)
                  {
                    v31 = -v31;
                  }

                  v21 = v23 - v25 + kCFAbsoluteTimeIntervalSince1970 + v26 * -0.000000001 + v29 + v30 + v31;
                  v7 = v46;
                  v4 = v47;
                  a2 = v45;
                  goto LABEL_30;
                }

                v21 = NAN;
                if (__isnand())
                {
                  goto LABEL_23;
                }
              }

              else
              {
                v21 = NAN;
              }

LABEL_30:
              sub_1000278F0(*(a1 + 88), v15, v4, v21);
              v32 = [objc_msgSend(sub_10002B550(*(a1 + 80)) objectForKeyedSubscript:{v4), "objectForKeyedSubscript:", v11}];
              if (!v32)
              {
                if ([v14 legacyName])
                {
                  v32 = [objc_msgSend(sub_10002B550(*(a1 + 80)) objectForKeyedSubscript:{v4), "objectForKeyedSubscript:", objc_msgSend(v14, "legacyName")}];
                }

                else
                {
                  v32 = 0;
                }
              }

              v33 = [v14 authorizationVersion];
              v34 = [v32 integerValue];
              if (v33 == v34)
              {
                v35 = 0;
              }

              else
              {
                v35 = v16;
              }

              v12 = v51;
              if (v35 == 1)
              {
                if (a4)
                {
                  v36 = v34;
                  v37 = qword_100071B38;
                  if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134349826;
                    *&buf[4] = v36;
                    *&buf[12] = 2114;
                    *&buf[14] = v11;
                    v63 = 2114;
                    v64 = *&v15;
                    v65 = 2050;
                    v66 = v33;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Authorization version %{public}ld for sensor: %{public}@, TCC Service: %{public}@ does not match the expected version (%{public}ld}. Resetting the authorization", buf, 0x2Au);
                  }

                  [v44 addObject:v15];
                  v12 = v51;
                }

                v38 = qword_100071B38;
                if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543874;
                  *&buf[4] = v11;
                  *&buf[12] = 2050;
                  *&buf[14] = v33;
                  v63 = 2114;
                  v64 = *&v4;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Setting sensor %{public}@ authorization version to %{public}ld for bundle %{public}@", buf, 0x20u);
                }

                [v7 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", v33), v11}];
              }

              goto LABEL_9;
            }

            v10 = qword_100071B38;
            if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
            {
              *buf = v43;
              *&buf[4] = v11;
              _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to find description for sensor %{public}@", buf, 0xCu);
            }

LABEL_9:
            objc_autoreleasePoolPop(v12);
          }

          v50 = [a2 countByEnumeratingWithState:&v56 objects:v67 count:16];
        }

        while (v50);
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v39 = [v44 countByEnumeratingWithState:&v52 objects:v61 count:{16, v43}];
      if (v39)
      {
        v40 = v39;
        v41 = *v53;
        do
        {
          for (j = 0; j != v40; j = j + 1)
          {
            if (*v53 != v41)
            {
              objc_enumerationMutation(v44);
            }

            [*(a1 + 96) resetAuthorizationForService:*(*(&v52 + 1) + 8 * j) bundleId:v4];
          }

          v40 = [v44 countByEnumeratingWithState:&v52 objects:v61 count:16];
        }

        while (v40);
      }

      if ([v7 count])
      {
        [*(a1 + 80) updateAuthorizationVersions:v7 forBundleId:v4];
      }
    }
  }
}

void sub_10003BD84(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v2 = _os_activity_create(&_mh_execute_header, "RDAuthorizationBroadcaster received full authorization set", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);
  v3 = qword_100071B38;
  if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Received full authorization payload.  Notifying clients.", buf, 2u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 96);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 readerAuthorizationBundleIdValues];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        sub_10003B668(*(a1 + 32), [v6 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * i)], *(*(&v21 + 1) + 8 * i), 1);
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v7);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    if (*(v10 + 16) == 1)
    {
      v11 = +[NSMutableSet setWithArray:](NSMutableSet, "setWithArray:", [*(v10 + 64) allKeys]);
      -[NSMutableSet unionSet:](v11, "unionSet:", +[NSSet setWithArray:](NSSet, "setWithArray:", [v6 allKeys]));
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v27 count:16];
      if (v12)
      {
        v13 = *v18;
        do
        {
          for (j = 0; j != v12; j = j + 1)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v11);
            }

            sub_10003A7DC(*(a1 + 32), *(*(&v17 + 1) + 8 * j));
          }

          v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v17 objects:v27 count:16];
        }

        while (v12);
      }

      goto LABEL_25;
    }

    v15 = *(v10 + 32);
  }

  else
  {
    v15 = 0;
  }

  [v15 resume];
  v16 = *(a1 + 32);
  if (v16)
  {
    *(v16 + 16) = 1;
  }

LABEL_25:
  os_activity_scope_leave(&state);
}

void sub_10003C14C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    dispatch_assert_queue_V2(*(v1 + 8));
    v5.opaque[0] = 0;
    v5.opaque[1] = 0;
    v3 = _os_activity_create(&_mh_execute_header, "RDAuthorizationBroadcaster received authorization change", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v3, &v5);
    v4 = qword_100071B38;
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received authorization change for bundle id: %{public}@", buf, 0xCu);
    }

    sub_10003B668(v1, [objc_msgSend(*(v1 + 96) readerAuthorizationBundleIdValues], v2, 0);
    sub_10003A7DC(v1, v2);
    os_activity_scope_leave(&v5);
  }
}

id *sub_10003C280(id *result)
{
  if (result)
  {
    v1 = result;
    v2 = +[NSMutableSet setWithArray:](NSMutableSet, "setWithArray:", [result[8] allKeys]);
    -[NSMutableSet unionSet:](v2, "unionSet:", +[NSSet setWithArray:](NSSet, "setWithArray:", [objc_msgSend(v1[12] "readerAuthorizationBundleIdValues")]));
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    result = [(NSMutableSet *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v7;
      do
      {
        v5 = 0;
        do
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(v2);
          }

          sub_10003A7DC(v1, *(*(&v6 + 1) + 8 * v5));
          v5 = (v5 + 1);
        }

        while (v3 != v5);
        result = [(NSMutableSet *)v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_10003C67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, os_activity_scope_state_s state, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

NSDictionary *__cdecl sub_10003C6C0(id a1)
{
  v2 = @"RDAnalyticsDaemonStartReasonKey";
  v3 = &off_100065520;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1]);
}

void sub_10003C738(id a1)
{
  v1 = qword_100071B38;
  if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Interruptions are unexpected", v2, 2u);
  }

  abort();
}

void sub_10003C790(uint64_t a1)
{
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  v2 = _os_activity_create(&_mh_execute_header, "authorization listening connection invalidated", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &v16);
  Weak = objc_loadWeak((a1 + 32));
  v4 = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v5 = v4;
    if (v4)
    {
      v6 = qword_100071B38;
      if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Connection invalidated for authorization listening", buf, 2u);
      }

      dispatch_assert_queue_V2(*(v5 + 1));
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v7 = _os_activity_create(&_mh_execute_header, "RDAuthorizationBroadcaster connection invalidated", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
      os_activity_scope_enter(v7, &state);
      v8 = qword_100071B38;
      if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_INFO))
      {
        v9 = [Weak processIdentifier];
        *buf = 67240192;
        v23 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Lost connection from pid %{public}d", buf, 8u);
      }

      v10 = [*(v5 + 7) objectForKey:{Weak, v16.opaque[0], v16.opaque[1]}];
      [*(v5 + 7) removeObjectForKey:Weak];
      if (v10)
      {
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v17 objects:buf count:16];
        if (v11)
        {
          v12 = *v18;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v17 + 1) + 8 * i);
              v15 = [*(v5 + 8) objectForKeyedSubscript:v14];
              [v15 removeObject:Weak];
              if (![v15 count])
              {
                [*(v5 + 8) setObject:0 forKeyedSubscript:v14];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v17 objects:buf count:16];
          }

          while (v11);
        }
      }

      os_activity_scope_leave(&state);
    }
  }

  os_activity_scope_leave(&v16);
}

void sub_10003CA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_activity_scope_state_s a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  os_activity_scope_leave(&a9);
  _Unwind_Resume(a1);
}

void sub_10003E778(id a1, BOOL a2, NSError *a3)
{
  v3 = qword_100071B38;
  if (a2)
  {
    if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_INFO))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Successfully cleared follow up item", &v5, 2u);
    }
  }

  else if (os_log_type_enabled(qword_100071B38, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = a3;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to clear follow up item because %{public}@", &v5, 0xCu);
  }
}

void *sub_10003E8EC(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v5.receiver = a1;
  v5.super_class = RDAnalyticsEventListener;
  v3 = objc_msgSendSuper2(&v5, "init");
  if (v3)
  {
    v3[3] = objc_alloc_init(NSCache);
    v3[1] = a2;
  }

  return v3;
}

NSDictionary *sub_10003EBD4(void *a1)
{
  v6[0] = &off_100065538;
  v5[0] = @"RDAnalyticsWatchSyncEventKey";
  v5[1] = @"RDAnalyticsSyncSideKey";
  v6[1] = [NSNumber numberWithInteger:a1[5]];
  v5[2] = @"RDAnalyticsIDSMessageTypeKey";
  v2 = [NSNumber numberWithInteger:a1[6]];
  v5[3] = @"RDAnalyticsIDSIdentifierKey";
  v3 = a1[4];
  v6[2] = v2;
  v6[3] = v3;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:4]);
}

NSDictionary *sub_10003ECA4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"RDGizmoSyncSensorIdentifierKey"];
  if (!v2)
  {
    return &__NSDictionary0__struct;
  }

  v3 = v2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"RDGizmoSyncKeyKey"];
  if (!v4)
  {
    return &__NSDictionary0__struct;
  }

  v6[0] = @"RDAnalyticsWatchSyncEventKey";
  v6[1] = @"RDAnalyticsSensorIdentifierKey";
  v7[0] = &off_100065550;
  v7[1] = v3;
  v6[2] = @"RDAnalyticsSyncSideKey";
  v6[3] = @"RDAnalyticsKeyNameKey";
  v7[2] = &off_100065568;
  v7[3] = v4;
  v6[4] = @"RDAnalyticsIDSIdentifierKey";
  v7[4] = *(a1 + 40);
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:5]);
}

NSDictionary *sub_10003EE6C(uint64_t a1)
{
  v5[0] = @"RDAnalyticsWatchSyncEventKey";
  v5[1] = @"RDAnalyticsErrorKey";
  v6[0] = &off_100065538;
  v6[1] = &off_100065550;
  v5[2] = @"RDAnalyticsIDSErrorCodeKey";
  v6[2] = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) code]);
  v5[3] = @"RDAnalyticsSyncSideKey";
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v6[3] = [NSNumber numberWithInteger:v3];
  v5[4] = @"RDAnalyticsIDSMessageTypeKey";
  v6[4] = [NSNumber numberWithInteger:*(a1 + 48)];
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:5]);
}

NSDictionary *sub_10003EFF8(uint64_t a1)
{
  v5[0] = &off_100065580;
  v4[0] = @"RDAnalyticsWatchSyncEventKey";
  v4[1] = @"RDAnalyticsArchiveStatusKey";
  if (*(a1 + 48))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v5[1] = [NSNumber numberWithInteger:v2];
  v5[2] = &off_100065568;
  v4[2] = @"RDAnalyticsSyncSideKey";
  v4[3] = @"RDAnalyticsSensorIdentifierKey";
  v4[4] = @"RDAnalyticsKeyNameKey";
  v6 = *(a1 + 32);
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5]);
}

NSDictionary *sub_10003F150(void *a1)
{
  v5[0] = @"RDAnalyticsWatchSyncEventKey";
  v5[1] = @"RDAnalyticsErrorKey";
  v6[0] = &off_100065580;
  v6[1] = &off_100065550;
  v3 = a1[4];
  v2 = a1[5];
  v6[2] = v3;
  v5[2] = @"RDAnalyticsSensorIdentifierKey";
  v5[3] = @"RDAnalyticsIDSErrorCodeKey";
  v6[3] = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v2 code]);
  v6[4] = &off_100065568;
  v5[4] = @"RDAnalyticsSyncSideKey";
  v5[5] = @"RDAnalyticsKeyNameKey";
  v6[5] = a1[6];
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:6]);
}

NSDictionary *sub_10003F38C(void *a1)
{
  v7[0] = &off_100065538;
  v6[0] = @"RDAnalyticsWatchSyncEventKey";
  v6[1] = @"RDAnalyticsSyncSideKey";
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v7[1] = [NSNumber numberWithInteger:v3];
  v7[2] = &off_100065580;
  v6[2] = @"RDAnalyticsErrorKey";
  v6[3] = @"RDAnalyticsIDSMessageTypeKey";
  v4 = a1[6];
  v7[3] = a1[5];
  v7[4] = &off_100065580;
  v6[4] = @"RDAnalyticsIDSMessageStatusKey";
  v6[5] = @"RDAnalyticsIDSIdentifierKey";
  v7[5] = v4;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:6]);
}

NSDictionary *sub_10003F5C4(void *a1)
{
  v9[0] = &off_100065538;
  v8[0] = @"RDAnalyticsWatchSyncEventKey";
  v8[1] = @"RDAnalyticsSyncSideKey";
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = [NSNumber numberWithInteger:v3];
  v5 = a1[5];
  v6 = a1[6];
  v9[1] = v4;
  v9[2] = v5;
  v8[2] = @"RDAnalyticsIDSMessageTypeKey";
  v8[3] = @"RDAnalyticsIDSMessageStatusKey";
  v8[4] = @"RDAnalyticsIDSIdentifierKey";
  v9[3] = &off_100065550;
  v9[4] = v6;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5]);
}

NSDictionary *__cdecl sub_10003F798(id a1)
{
  v2 = @"RDAnalyticsDaemonStartReasonKey";
  v3 = &off_100065550;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1]);
}

NSDictionary *__cdecl sub_10003FA0C(id a1)
{
  v2 = @"RDAnalyticsDaemonStartReasonKey";
  v3 = &off_100065550;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1]);
}

NSDictionary *sub_10003FA84(uint64_t a1)
{
  v2[0] = @"RDAnalyticsSyncSideKey";
  v2[1] = @"RDAnalyticsKeyStatusKey";
  v3[0] = &off_100065550;
  v3[1] = &off_100065538;
  v2[2] = @"RDAnalyticsSensorIdentifierKey";
  v2[3] = @"RDAnalyticsKeyNameKey";
  v4 = *(a1 + 32);
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:4]);
}

NSDictionary *sub_10003FC18(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) currentRecordingStatesForAnalytics:{*(a1 + 40)), "isEqualToDictionary:", *(a1 + 48)}];
  v3 = [*(a1 + 32) prerequisitesStatusForAnalytics:*(a1 + 40)] == *(a1 + 56);
  v5[0] = @"RDAnalyticsWatchSyncEventKey";
  v5[1] = @"RDAnalyticsSyncSideKey";
  v6[0] = &off_100065598;
  v6[1] = &off_100065550;
  v6[2] = &off_1000655B0;
  v5[2] = @"RDAnalyticsIDSMessageTypeKey";
  v5[3] = @"RDAnalyticsWatchStateSyncPrerequisitesMatchKey";
  v6[3] = [NSNumber numberWithBool:v3];
  v5[4] = @"RDAnalyticsWatchStateSyncRecordingStatesMatchKey";
  v6[4] = [NSNumber numberWithBool:v2];
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:5]);
}

NSDictionary *sub_10003FD9C(uint64_t a1)
{
  v2[0] = @"RDAnalyticsSyncSideKey";
  v2[1] = @"RDAnalyticsKeyStatusKey";
  v3[0] = &off_100065550;
  v3[1] = &off_1000655C8;
  v2[2] = @"RDAnalyticsSensorIdentifierKey";
  v2[3] = @"RDAnalyticsKeyNameKey";
  v4 = *(a1 + 32);
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:4]);
}

NSDictionary *sub_10003FEC8(uint64_t a1)
{
  v3[0] = @"RDAnalyticsSyncSideKey";
  v3[1] = @"RDAnalyticsWatchSyncEventKey";
  v4[0] = &off_100065550;
  v4[1] = &off_100065580;
  v3[2] = @"RDAnalyticsArchiveStatusKey";
  v4[2] = [NSNumber numberWithInteger:*(a1 + 48)];
  v3[3] = @"RDAnalyticsSensorIdentifierKey";
  v3[4] = @"RDAnalyticsKeyNameKey";
  v5 = *(a1 + 32);
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5]);
}

NSDictionary *sub_1000400BC(uint64_t a1)
{
  v3[0] = @"RDAnalyticsDaemonStartReasonKey";
  v3[1] = @"RDAnalyticsXPCActivityKey";
  v1 = *(a1 + 32);
  v4[0] = &off_100065580;
  v4[1] = v1;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2]);
}

NSDictionary *sub_1000401B8(uint64_t a1)
{
  v2[0] = @"RDAnalyticsSyncSideKey";
  v2[1] = @"RDAnalyticsArchiveStatusKey";
  v3[0] = &off_100065550;
  v3[1] = &off_1000655E0;
  v2[2] = @"RDAnalyticsSensorIdentifierKey";
  v2[3] = @"RDAnalyticsKeyNameKey";
  v4 = *(a1 + 32);
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:4]);
}

NSDictionary *sub_1000402D4(uint64_t a1)
{
  v2[0] = @"RDAnalyticsSyncSideKey";
  v2[1] = @"RDAnalyticsArchiveStatusKey";
  v3[0] = &off_100065550;
  v3[1] = &off_1000655F8;
  v2[2] = @"RDAnalyticsSensorIdentifierKey";
  v2[3] = @"RDAnalyticsKeyNameKey";
  v4 = *(a1 + 32);
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:4]);
}

NSDictionary *sub_1000403F0(uint64_t a1)
{
  v2[0] = @"RDAnalyticsSyncSideKey";
  v2[1] = @"RDAnalyticsArchiveStatusKey";
  v3[0] = &off_100065550;
  v3[1] = &off_100065610;
  v2[2] = @"RDAnalyticsSensorIdentifierKey";
  v2[3] = @"RDAnalyticsKeyNameKey";
  v4 = *(a1 + 32);
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:4]);
}

NSDictionary *sub_10004050C(uint64_t a1)
{
  v4[0] = @"RDAnalyticsSyncSideKey";
  v4[1] = @"RDAnalyticsSensorIdentifierKey";
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = &off_100065550;
  v5[1] = v1;
  v4[2] = @"RDAnalyticsArchiveStatusKey";
  v4[3] = @"RDAnalyticsErrorKey";
  v5[2] = &off_100065628;
  v5[3] = &off_1000655B0;
  v4[4] = @"RDAnalyticsKeyNameKey";
  v5[4] = v2;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5]);
}

NSDictionary *sub_100040640(uint64_t a1)
{
  v3[0] = @"RDAnalyticsWatchSyncEventKey";
  v3[1] = @"RDAnalyticsErrorKey";
  v4[0] = &off_100065580;
  v4[1] = &off_100065598;
  v3[2] = @"RDAnalyticsSensorIdentifierKey";
  v3[3] = @"RDAnalyticsSyncSideKey";
  v1 = *(a1 + 40);
  v4[2] = *(a1 + 32);
  v4[3] = &off_100065568;
  v3[4] = @"RDAnalyticsKeyNameKey";
  v4[4] = v1;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5]);
}

void sub_100040894(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = [a3 code];
    v6 = qword_100071B40;
    if (v5 == 260)
    {
      if (os_log_type_enabled(qword_100071B40, OS_LOG_TYPE_DEBUG))
      {
        v7 = a1[4];
        *buf = 138543362;
        v14 = v7;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@ could not be found and likely has already been removed", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(qword_100071B40, OS_LOG_TYPE_ERROR))
    {
      v10 = a1[4];
      *buf = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = a3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to list %{public}@ because %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v11[0] = @"RDAnalyticsWatchSyncEventKey";
    v11[1] = @"RDAnalyticsSensorIdentifierKey";
    v8 = a1[5];
    v9 = a1[6];
    v12[0] = &off_100065580;
    v12[1] = v8;
    v11[2] = @"RDAnalyticsSyncSideKey";
    v11[3] = @"RDAnalyticsFileNameKey";
    v12[2] = &off_100065568;
    v12[3] = a2;
    v11[4] = @"RDAnalyticsKeyNameKey";
    v12[4] = v9;
    sub_10002DADC([NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5]);
    AnalyticsSendEvent();
  }
}

NSDictionary *sub_100040BAC(uint64_t a1)
{
  v4[0] = @"RDAnalyticsCacheDeleteUrgencyKey";
  v2 = [NSNumber numberWithInteger:*(a1 + 32)];
  v4[1] = @"RDAnalyticsCacheDeleteCallbackTypeKey";
  v5[0] = v2;
  v5[1] = [NSNumber numberWithInteger:*(a1 + 40)];
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2]);
}

void *sub_100040CAC(void *a1, NSString *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    return 0;
  }

  v37.receiver = a1;
  v37.super_class = SRDatastore;
  v13 = objc_msgSendSuper2(&v37, "init");
  v14 = v13;
  if (v13)
  {
    v13[1] = a5;
    if (a6)
    {
      v15 = *(a6 + 16);
      if (a7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v15 = 0;
      if (a7)
      {
LABEL_5:
        v16 = *(a7 + 56);
        v17 = *(a7 + 64);
        if (v17)
        {
          if (a6)
          {
            v18 = *(a6 + 64);
          }

          else
          {
            v18 = 0.0;
          }

          v19 = *(a7 + 8);
          if (v19)
          {
            v20 = *(a7 + 16) / v19;
          }

          else
          {
            v20 = NAN;
          }

          v21 = (exp2((v18 - v20) / v18) * v17);
          if (a6)
          {
            v22 = *(a6 + 72);
          }

          else
          {
            v22 = 0.0;
          }

          v23 = v22 * v15;
          if (v23 <= v21)
          {
            v15 = v21;
          }

          else
          {
            v15 = v23;
          }
        }
      }
    }

    if (a2)
    {
      v24 = [(NSString *)sub_100041968(a2) lastPathComponent];
    }

    else
    {
      v24 = 0;
    }

    [(NSString *)v24 doubleValue];
    sub_100041A3C(a7, v15, v25);
    if (a7)
    {
      v26 = qword_100071B48;
      if (os_log_type_enabled(qword_100071B48, OS_LOG_TYPE_INFO))
      {
        if (a6)
        {
          v27 = *(a6 + 64);
          v28 = *(a6 + 16);
        }

        else
        {
          v28 = 0;
          v27 = 0;
        }

        *buf = 138412802;
        v39 = a7;
        v40 = 2050;
        v41 = v27;
        v42 = 2048;
        v43 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Writing Stats: %@\nExpected segment lifetime: %{public}f\nDefault segment size: %lu", buf, 0x20u);
      }
    }

    if (a6)
    {
      v29 = *(a6 + 44);
    }

    else
    {
      v29 = 0.0;
    }

    v30 = (v29 * v15) / NSPageSize();
    if (a6)
    {
      v31 = *(a6 + 32);
    }

    else
    {
      v31 = 0;
    }

    if (v31 < v30)
    {
      v30 = v31;
    }

    if (v30 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v30;
    }

    v33 = v32 * NSPageSize();
    if (a6)
    {
      v14[2] = *(a6 + 32);
      v34 = *(a6 + 40);
      v35 = *(a6 + 24);
    }

    else
    {
      v35 = 0;
      v14[2] = 0;
      v34 = 0;
    }

    *(v14 + 6) = v34;
    v14[4] = a6;
    v14[5] = sub_100041D98([SRFrameStore alloc], a2, v33, v14[1], a6);
    if (a3)
    {
      v14[6] = sub_100041D98([SRFrameStore alloc], a3, v35, v14[1], a6);
    }

    if (a4)
    {
      v14[7] = sub_100041D98([SRFrameStore alloc], a4, v35, v14[1], a6);
    }
  }

  return v14;
}

BOOL sub_100041018(_BOOL8 result, const char *a2, z_size_t a3, SRError **a4, double a5)
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  Property = objc_getProperty(result, a2, 40, 1);
  if (!Property)
  {
    v20 = qword_100071B48;
    if (!os_log_type_enabled(qword_100071B48, OS_LOG_TYPE_INFO))
    {
      goto LABEL_43;
    }

    LOWORD(v41) = 0;
    v21 = "No disk space available, dropping data";
    v22 = v20;
    v23 = OS_LOG_TYPE_INFO;
    v24 = 2;
LABEL_42:
    _os_log_impl(&_mh_execute_header, v22, v23, v21, &v41, v24);
    goto LABEL_43;
  }

  v11 = Property;
  v12 = Property[2];
  if (v12)
  {
    v13 = v12[6] - v12[3] + v12[2];
  }

  else
  {
    v13 = 0;
  }

  if (v13 >= a3 + 20)
  {
    goto LABEL_21;
  }

  v14 = qword_100071B48;
  if (os_log_type_enabled(qword_100071B48, OS_LOG_TYPE_INFO))
  {
    if (v12)
    {
      v15 = v12[6] - v12[3] + v12[2];
    }

    else
    {
      v15 = 0;
    }

    v41 = 134349312;
    v42 = v15;
    v43 = 2050;
    v44 = a3 + 20;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Not enough free space (%{public}zu) to write %{public}zu. Attempting to expand the mapped region", &v41, 0x16u);
  }

  v16 = *(v9 + 16) * NSPageSize();
  v17 = *(v11 + 24);
  if (v17 && (v18 = *(v17 + 16)) != 0)
  {
    v19 = *(v18 + 4);
  }

  else
  {
    v25 = *(v11 + 16);
    if (v25)
    {
      v19 = *(v25 + 24) - *(v25 + 16) + 56;
    }

    else
    {
      v19 = 56;
    }
  }

  v26 = ((v19 + a3) * *(v9 + 24));
  v27 = qword_100071B48;
  if (v16 <= v26)
  {
    if (!os_log_type_enabled(qword_100071B48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    if (v17 && (v31 = *(v17 + 16)) != 0)
    {
      v32 = *(v31 + 4);
    }

    else
    {
      v39 = *(v11 + 16);
      if (v39)
      {
        v32 = *(v39 + 24) - *(v39 + 16) + 56;
      }

      else
      {
        v32 = 56;
      }
    }

    v41 = 134349312;
    v42 = a3;
    v43 = 2050;
    v44 = v16 - v32;
    v21 = "Trying to write %{public}zd but only have %{public}llul available. Dropping the data.";
    v22 = v27;
    v23 = OS_LOG_TYPE_DEFAULT;
    v24 = 22;
    goto LABEL_42;
  }

  if (os_log_type_enabled(qword_100071B48, OS_LOG_TYPE_INFO))
  {
    v41 = 134217984;
    v42 = v26;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Expanding the mapped region to %llu bytes while a new segment is fetched", &v41, 0xCu);
  }

  if ((sub_100042828(v11, v26) & 1) == 0)
  {
LABEL_43:
    if (a4)
    {
      v40 = [SRError errorWithCode:12291];
      result = 0;
      *a4 = v40;
      return result;
    }

    return 0;
  }

LABEL_21:
  v28 = *(v11 + 24);
  if (v28 && (v29 = *(v28 + 16)) != 0)
  {
    v30 = *(v29 + 4);
  }

  else
  {
    v33 = *(v11 + 16);
    if (v33)
    {
      v30 = *(v33 + 24) - *(v33 + 16) + 56;
    }

    else
    {
      v30 = 56;
    }
  }

  sub_100042B00(v11, a2, a3, a4, a5);
  v34 = *(v11 + 24);
  if (v34 && (v35 = *(v34 + 16)) != 0)
  {
    v36 = *(v35 + 4);
  }

  else
  {
    v37 = *(v11 + 16);
    if (v37)
    {
      v36 = *(v37 + 24) - *(v37 + 16) + 56;
    }

    else
    {
      v36 = 56;
    }
  }

  if (v36 >= v30 + a3)
  {
    return 1;
  }

  v38 = qword_100071B48;
  result = os_log_type_enabled(qword_100071B48, OS_LOG_TYPE_INFO);
  if (result)
  {
    LOWORD(v41) = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Failed to write frames", &v41, 2u);
    return 0;
  }

  return result;
}

void sub_1000413D4(void *a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    v31 = 0;
    v29 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    Property = objc_getProperty(a1, a2, 40, 1);
    v9 = sub_100042A94(Property, 0);
    v10 = [(SRFramesStoreOffsetEnumerator *)v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = *v14;
          if (*v14 <= a3 || v15 > a4)
          {
            if (v15 > a4)
            {
              return;
            }
          }

          else
          {
            v17 = a1[6];
            if (v17)
            {
              sub_1000415D0(v17, &v31, &v30, v15);
              if (v31)
              {
                v18 = *(v31 + 16);
              }

              else
              {
                v18 = 0;
              }

              v19 = v31 + 20;
            }

            else
            {
              v19 = 0;
              v18 = 0;
            }

            v20 = a1[7];
            if (v20)
            {
              sub_1000415D0(v20, &v29, &v28, v15);
              if (v29)
              {
                v21 = *(v29 + 16);
              }

              else
              {
                v21 = 0;
              }

              v22 = v29 + 20;
            }

            else
            {
              v21 = 0;
              v22 = 0;
            }

            v23 = (*(a2 + 16))(a2, v14 + 20, *(v14 + 16), v19, v18, v22, v21, v15);
            if (v15 > a4 || (v23 & 1) == 0)
            {
              return;
            }
          }
        }

        v11 = [(SRFramesStoreOffsetEnumerator *)v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v11);
    }
  }
}

void sub_1000415D0(SRFramesStoreOffsetEnumerator *a1, uint64_t *a2, uint64_t *a3, double a4)
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = sub_100042A94(a1, 0);
  v9 = [(SRFramesStoreOffsetEnumerator *)v8 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (!v9)
  {
    v19 = 0;
    *a2 = 0;
    goto LABEL_28;
  }

  v10 = v9;
  v23 = a2;
  v24 = a3;
  v11 = 0;
  v12 = *v26;
LABEL_3:
  v13 = 0;
  v14 = v11;
  while (1)
  {
    if (*v26 != v12)
    {
      objc_enumerationMutation(v8);
    }

    v11 = *(*(&v25 + 1) + 8 * v13);
    v15 = qword_100071B48;
    if (os_log_type_enabled(qword_100071B48, OS_LOG_TYPE_DEBUG))
    {
      if (a1)
      {
        offset = a1[1]._offset;
      }

      else
      {
        offset = 0;
      }

      v17 = *v11;
      *buf = 138413058;
      v30 = offset;
      v31 = 2048;
      v32 = v17;
      v33 = 2048;
      v34 = a4;
      v35 = 2048;
      v36 = v14;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "metadata segment: %@, metadata frame time: %f, sample time: %f, current metadata object: %p", buf, 0x2Au);
    }

    if (*v11 > a4)
    {
      break;
    }

    ++v13;
    v14 = v11;
    if (v10 == v13)
    {
      v18 = [(SRFramesStoreOffsetEnumerator *)v8 countByEnumeratingWithState:&v25 objects:v37 count:16, *v11];
      v10 = v18;
      v14 = v11;
      if (v18)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  v19 = 0;
  *v23 = v14;
  if (!a1)
  {
    a3 = v24;
    goto LABEL_28;
  }

  a3 = v24;
  if (!v14)
  {
LABEL_28:
    *a3 = v19;
    return;
  }

  v20 = v14 + *(v14 + 4) + 20;
  if (!sub_1000428C8(a1, v20))
  {
    v19 = 0;
    goto LABEL_28;
  }

  *v24 = v20;
  if (*v20 != -1.0 && *v20 <= a4)
  {
    *v23 = v20;
    v22 = v20 + *(v20 + 16) + 20;
    if (sub_1000428C8(a1, v22))
    {
      v19 = v22;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_28;
  }
}

void sub_100041818(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    Property = objc_getProperty(a1, a2, 40, 1);
    v9 = sub_100042A94(Property, 0);
    v10 = [(SRFramesStoreOffsetEnumerator *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = *v14;
        if (*v14 >= a3 && v15 <= a4)
        {
          sub_100042F30(a1[5], v14);
          (*(a2 + 16))(a2, v15);
        }

        if (v15 > a4)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [(SRFramesStoreOffsetEnumerator *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          return;
        }
      }
    }
  }
}

NSString *sub_100041968(NSString *result)
{
  if (result)
  {
    v1 = [(NSString *)result fileDescriptor];
    if (v1 < 0 || fcntl(v1, 50, v2) < 0)
    {
      return 0;
    }

    else
    {
      return [NSString stringWithUTF8String:v2];
    }
  }

  return result;
}

double sub_100041A3C(uint64_t a1, uint64_t a2, double result)
{
  if (a1)
  {
    v4 = result;
    v6 = *(a1 + 16);
    Current = SRAbsoluteTimeGetCurrent();
    *(a1 + 56) = v4;
    *(a1 + 64) = a2;
    ++*(a1 + 8);
    result = Current - v4 + *(a1 + 16);
    *(a1 + 16) = result;
  }

  return result;
}

void sub_100041C4C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  *(a1 + 40) = 0u;
  *a1 = 1195725633;
  *(a1 + 4) = a2;
  *(a1 + 12) = 0;
  *(a1 + 20) = a4;
  *(a1 + 24) = 0u;
  v4 = (a1 + 24);
  if (a3)
  {
    v5 = [a3 UTF8String];
    v6 = strlen(v5);
    if (v6 >= 0x21)
    {
      v7 = v6;
      v8 = qword_100071B50;
      if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_ERROR))
      {
        v11 = 134349312;
        v12 = v7;
        v13 = 2050;
        v14 = 32;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Segment name is too large to store in the segment header. Truncating the segment name of %{public}zu to %{public}lu", &v11, 0x16u);
      }
    }

    v9 = *(v5 + 1);
    *v4 = *v5;
    v4[1] = v9;
  }

  else
  {
    v10 = qword_100071B50;
    if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "No segment name provided for the segment header", &v11, 2u);
    }
  }
}

uint64_t sub_100041D98(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v53.receiver = a1;
  v53.super_class = SRFrameStore;
  v9 = objc_msgSendSuper2(&v53, "init");
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  if (a5)
  {
    v11 = *(a5 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v11 >= 0xFFFFFFFF)
  {
    v12 = -1;
  }

  else
  {
    v12 = v11;
  }

  v9[2] = v12;
  v56 = 0;
  v55 = 0u;
  memset(v54, 0, sizeof(v54));
  objc_opt_self();
  v13 = [a2 seekToEndOfFile];
  [a2 seekToFileOffset:0];
  if (a2)
  {
    v14 = [(NSString *)sub_100041968(a2) lastPathComponent];
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v14 = 0;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  v15 = sub_100041968(a2);
  if (v13 > 0x37)
  {
    v21 = [a2 readDataOfLength:56];
    [a2 seekToFileOffset:0];
    if (v21 && [v21 length] > 0x37)
    {
      v24 = [v21 bytes];
      v25 = v24;
      if (*v24 == 1195725633)
      {
        v52 = v24[1];
        v54[0] = *v24;
        v54[1] = v52;
        v55 = v24[2];
        v56 = *(v24 + 6);
        goto LABEL_22;
      }

      v26 = qword_100071B50;
      if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289794;
        *v58 = 4;
        *&v58[4] = 2082;
        *&v58[6] = "ASEG";
        *&v58[14] = 1042;
        *&v58[16] = 4;
        *v59 = 2082;
        *&v59[2] = v25;
        v60 = 2114;
        v61 = v15;
        v17 = "Segment header magic number %{public}.4s doesn't match %{public}.4s in file %{public}@. Potentially overwriting whatever data is currently there";
        v18 = v26;
        v19 = OS_LOG_TYPE_DEFAULT;
        v20 = 44;
        goto LABEL_20;
      }
    }

    else
    {
      v22 = qword_100071B50;
      if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_INFO))
      {
        v23 = [v21 length];
        *buf = 138543618;
        *v58 = v15;
        *&v58[8] = 2050;
        *&v58[10] = v23;
        v17 = "Unable to read frames file segment header %{public}@. Received data of %{public}lu length. Potentially overwriting whatever data is currently there";
        v18 = v22;
        v19 = OS_LOG_TYPE_INFO;
        v20 = 22;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v16 = qword_100071B50;
    if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *v58 = v15;
      v17 = "Frames file %{public}@ is invalid because the current size is less than a valid segment header. Potentially overwriting whatever data is currently there.";
      v18 = v16;
      v19 = OS_LOG_TYPE_INFO;
      v20 = 12;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v20);
    }
  }

LABEL_21:
  sub_100041C4C(v54, 0, v14, v12);
LABEL_22:
  v27 = [a2 seekToEndOfFile];
  [a2 seekToFileOffset:0];
  v29 = sub_100041968(a2);
  v30 = *(v54 + 4);
  if (*(v54 + 4) > v27)
  {
    v31 = qword_100071B50;
    if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      *v58 = v29;
      *&v58[8] = 2048;
      *&v58[10] = v30;
      *&v58[18] = 2050;
      *v59 = a3;
      v32 = "Segment header in %{public}@ says file size is %llu but that is larger than the max size (%{public}lu) we can support.";
      v33 = v31;
      v34 = OS_LOG_TYPE_INFO;
      v35 = 32;
LABEL_43:
      _os_log_impl(&_mh_execute_header, v33, v34, v32, buf, v35);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  if (!(*(v54 + 4) | a4 & 0xFFFFFFFFFFFFFFFDLL))
  {
    v45 = qword_100071B50;
    if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v58 = v29;
      v32 = "Not mapping an empty file %{public}@";
      v33 = v45;
      v34 = OS_LOG_TYPE_DEFAULT;
      v35 = 12;
      goto LABEL_43;
    }

LABEL_44:

    return 0;
  }

  v36 = DWORD1(v54[1]);
  v37 = *(v10 + 8);
  if (DWORD1(v54[1]) != v37)
  {
    v38 = qword_100071B50;
    if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_DEFAULT))
    {
      v39 = "";
      *buf = 138544130;
      *v58 = v29;
      *&v58[8] = 1026;
      if (a4 == 1)
      {
        v39 = "Potentially overwriting whatever data is currently there";
      }

      *&v58[10] = v36;
      *&v58[14] = 1026;
      *&v58[16] = v37;
      *v59 = 2080;
      *&v59[2] = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Segment versions of %{public}@ don't match. Received %{public}d, expected %{public}d.%s", buf, 0x22u);
    }

    v30 = 0;
    *(v54 + 4) = 0;
  }

  if (a2)
  {
    v40 = [(NSString *)sub_100041968(a2) lastPathComponent];
  }

  else
  {
    v40 = 0;
  }

  objc_setProperty_nonatomic_copy(v10, v28, v40, 40);
  if (v30 <= a3)
  {
    v41 = a3;
  }

  else
  {
    v41 = v30;
  }

  *(v10 + 32) = a4;
  v42 = sub_100042344(a4, v54, v41, v30);
  *(v10 + 56) = a2;
  if (a4 == 1 && (sub_1000424B4(v10, v41) & 1) == 0)
  {
    v51 = qword_100071B50;
    if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to resize backing file", buf, 2u);
    }

    goto LABEL_44;
  }

  *(v10 + 16) = [(NSArray *)v42 lastObject];
  if ([(NSArray *)v42 count]<= 1)
  {
    v44 = *(v10 + 24);
  }

  else
  {
    v44 = [(NSArray *)v42 firstObject];
    *(v10 + 24) = v44;
  }

  Property = objc_getProperty(v10, v43, 56, 1);
  sub_10004327C(v44, Property);
  v47 = *(v10 + 16);
  v49 = objc_getProperty(v10, v48, 56, 1);
  sub_10004327C(v47, v49);
  *(v10 + 48) = *(v54 + 12);
  return v10;
}

NSArray *sub_100042344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a1)
  {
    case 2:
      v5 = sub_100043044([SRMemoryMapping alloc], a4 - 56, 2, 1, 56);
      v12 = v5;
      v6 = &v12;
      goto LABEL_7;
    case 1:
      v9 = sub_100043044([SRMemoryMapping alloc], 56, 2, 1, 0);
      v5 = sub_100043044([SRMemoryMapping alloc], a3 - (*(a2 + 4) + 56), 2, 2, *(a2 + 4) + 56);
      v11[0] = v9;
      v11[1] = v5;
      v4 = [NSArray arrayWithObjects:v11 count:2];

LABEL_8:
      return v4;
    case 0:
      v5 = sub_100043044([SRMemoryMapping alloc], a4 - 56, 1, 1, 56);
      v13 = v5;
      v6 = &v13;
LABEL_7:
      v4 = [NSArray arrayWithObjects:v6 count:1];
      goto LABEL_8;
  }

  return v4;
}

uint64_t sub_1000424B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = qword_100071B50;
    if (*(result + 32) == 1)
    {
      if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_INFO))
      {
        v5 = sub_100041968(*(v2 + 56));
        v6 = 138478083;
        v7 = v5;
        v8 = 2048;
        v9 = a2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Resizing file %{private}@ to %llu bytes", &v6, 0x16u);
      }

      [*(v2 + 56) truncateFileAtOffset:a2];
      return 1;
    }

    else
    {
      result = os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_ERROR);
      if (result)
      {
        LOWORD(v6) = 0;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Attempting to resize a non-writable file", &v6, 2u);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100042828(uint64_t a1, NSUInteger bytes)
{
  if (!a1)
  {
    return 0;
  }

  v3 = NSRoundUpToMultipleOfPageSize(bytes);
  if (!sub_1000424B4(a1, v3))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = sub_100042344(*(a1 + 32), v5, v3, *(v5 + 4));

  v7 = [(NSArray *)v6 lastObject];
  *(a1 + 16) = v7;
  v8 = *(a1 + 56);

  return sub_10004327C(v7, v8);
}

uint64_t sub_1000428C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 16);
    if (!v2)
    {
      return 0;
    }

    v4 = (a2 + 20);
    v5 = *(a2 + 16);
    if (a2 + 20 + v5 > *(v2 + 24))
    {
      return 0;
    }

    v6 = adler32(0, 0, 0);
    v7 = adler32_z(v6, v4, v5);
    v8 = *(a2 + 8);
    result = v7 == v8;
    if (v7 != v8 && v8 != 0)
    {
      v10 = qword_100071B50;
      result = os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_INFO);
      if (result)
      {
        v11 = 134218240;
        v12 = v8;
        v13 = 2050;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Checksums don't match. Header: %llu, Generated checksum: %{public}lu. Skipping frame.", &v11, 0x16u);
        return 0;
      }
    }
  }

  return result;
}

SRFramesStoreOffsetEnumerator *sub_100042A94(SRFramesStoreOffsetEnumerator *result, unint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = [SRFramesStoreOffsetEnumerator alloc];
    if (v4)
    {
      v5.receiver = v4;
      v5.super_class = SRFramesStoreOffsetEnumerator;
      v4 = [(SRFramesStoreOffsetEnumerator *)&v5 init];
      if (v4)
      {
        v4->_framesStore = v3;
        v4->_offset = a2;
      }
    }

    return v4;
  }

  return result;
}

uint64_t sub_100042B00(uint64_t result, const Bytef *a2, z_size_t a3, SRError **a4, double a5)
{
  if (result)
  {
    v6 = result;
    v7 = *(result + 24);
    if (!v7 || (v8 = *(v7 + 16)) == 0)
    {
      v20 = qword_100071B50;
      if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to find a segment header while writing. Dropping incoming data", buf, 2u);
        if (!a4)
        {
          return 0;
        }
      }

      else if (!a4)
      {
        return 0;
      }

      v19 = 12294;
      goto LABEL_25;
    }

    if (!*(v8 + 4))
    {
      v37 = 0;
      v36 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_100041C4C(buf, 56, *(result + 40), *(result + 8));
      v12 = *(v6 + 24);
      if (v12)
      {
        v13 = *(v12 + 16);
        if (sub_1000434A0(v12, v13, 0x38uLL, buf))
        {
          v14 = *buf;
          v15 = *&buf[16];
          v16 = v36;
          *(v13 + 48) = v37;
          *(v13 + 16) = v15;
          *(v13 + 32) = v16;
          *v13 = v14;
        }
      }
    }

    v17 = *(v6 + 16);
    if (v17)
    {
      v17 = (v17[6] - v17[3] + v17[2]);
    }

    if (v17 < a3 + 20)
    {
      v18 = qword_100071B50;
      if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "No space left to write to the mapped region", buf, 2u);
        if (a4)
        {
          goto LABEL_13;
        }
      }

      else if (a4)
      {
LABEL_13:
        v19 = 12291;
LABEL_25:
        v25 = [SRError errorWithCode:v19];
        result = 0;
        *a4 = v25;
        return result;
      }

      return 0;
    }

    v21 = *(v6 + 48);
    if (v21 >= a5)
    {
      v24 = qword_100071B50;
      if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = a5;
        *&buf[12] = 2048;
        *&buf[14] = v21;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Frame should come in chronological order. Input %f < last %f", buf, 0x16u);
        if (!a4)
        {
          return 0;
        }
      }

      else if (!a4)
      {
        return 0;
      }

      v19 = 12292;
      goto LABEL_25;
    }

    Current = SRAbsoluteTimeGetCurrent();
    if (Current + 10.0 < a5)
    {
      v23 = qword_100071B50;
      if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = a5;
        *&buf[12] = 2048;
        *&buf[14] = Current;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Timestamp is from the future. Input %f, Current: %f", buf, 0x16u);
        if (a4)
        {
          goto LABEL_21;
        }
      }

      else if (a4)
      {
LABEL_21:
        v19 = 12296;
        goto LABEL_25;
      }

      return 0;
    }

    if (HIDWORD(a3))
    {
      v26 = qword_100071B50;
      if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349312;
        *&buf[4] = a3;
        *&buf[12] = 1024;
        *&buf[14] = -1;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Sample too large %{public}zu but only %u supported", buf, 0x12u);
        if (!a4)
        {
          return 0;
        }
      }

      else if (!a4)
      {
        return 0;
      }

      v19 = 12293;
      goto LABEL_25;
    }

    v27 = adler32(0, 0, 0);
    v28 = adler32_z(v27, a2, a3);
    *buf = a5;
    *&buf[8] = v28;
    *&buf[16] = a3;
    sub_100043614(*(v6 + 16), buf, 0x14uLL);
    sub_100043614(*(v6 + 16), a2, a3);
    *(v6 + 48) = a5;
    v29 = *(v6 + 16);
    if (v29)
    {
      v29 = (v29[3] + v29[4] - v29[2]);
    }

    v34 = v29;
    v30 = *(v6 + 24);
    if (v30)
    {
      v31 = *(v30 + 16);
      if (sub_1000434A0(v30, v31 + 4, 8uLL, &v34))
      {
        *(v31 + 4) = v34;
      }

      v32 = *(v6 + 24);
      if (v32)
      {
        v33 = *(v32 + 16);
        if (sub_1000434A0(v32, v33 + 12, 8uLL, v6 + 48))
        {
          *(v33 + 12) = *(v6 + 48);
        }
      }
    }

    return 1;
  }

  return result;
}

void sub_100042F30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a2 + 8) = 0;
    v2 = memset_s((a2 + 20), *(a2 + 16), 0, *(a2 + 16));
    if (v2 < 0)
    {
      v3 = v2;
      v4 = qword_100071B50;
      if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_FAULT))
      {
        v5[0] = 67240192;
        v5[1] = v3;
        _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Failed to zero out memory. %{public, darwin.errno}d", v5, 8u);
      }
    }
  }
}

id sub_100043044(id result, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (result)
  {
    v9.receiver = result;
    v9.super_class = SRMemoryMapping;
    result = objc_msgSendSuper2(&v9, "init");
    if (result)
    {
      *(result + 6) = a2;
      *(result + 2) = a3;
      *(result + 3) = a4;
      *(result + 4) = a5;
    }
  }

  return result;
}

uint64_t sub_10004327C(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 32);
    v5 = NSRoundDownToMultipleOfPageSize(v4);
    v6 = v4 - v5;
    v7 = NSRoundUpToMultipleOfPageSize(*(v3 + 48) + v4 - v5);
    v8 = mmap(0, v7, *(v3 + 8), 1, [a2 fileDescriptor], v5);
    if (v8 == -1)
    {
      v12 = qword_100071B58;
      result = os_log_type_enabled(qword_100071B58, OS_LOG_TYPE_FAULT);
      if (result)
      {
        v13 = *__error();
        v15 = 138543618;
        v16 = a2;
        v17 = 1026;
        v18 = v13;
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Unable to mmap storage file %{public}@ because %{public, darwin.errno}d", &v15, 0x12u);
        return 0;
      }
    }

    else
    {
      *(v3 + 56) = v7;
      *(v3 + 40) = v8;
      v9 = &v8[v6];
      *(v3 + 16) = &v8[v6];
      v10 = *(v3 + 12);
      if (v10 != 2)
      {
        v9 += *(v3 + 48);
      }

      *(v3 + 24) = v9;
      if (madvise(v8, v7, v10) < 0)
      {
        v11 = qword_100071B58;
        if (os_log_type_enabled(qword_100071B58, OS_LOG_TYPE_FAULT))
        {
          v14 = *__error();
          v15 = 67240192;
          LODWORD(v16) = v14;
          _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Failed to madvise() because %{public, darwin.errno}d", &v15, 8u);
        }
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_1000434A0(_BOOL8 result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = 0;
    if (a4)
    {
      if ((*(v4 + 8) & 2) != 0)
      {
        v5 = *(v4 + 40);
        if ((v5 + 1) < 2)
        {
          return 0;
        }

        v7 = *(v4 + 24);
        if (__CFADD__(v7, a3))
        {
          v8 = qword_100071B58;
          result = os_log_type_enabled(qword_100071B58, OS_LOG_TYPE_ERROR);
          if (result)
          {
            v14 = 134349056;
            v15 = a3;
            _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}zu is too large to write", &v14, 0xCu);
            return 0;
          }
        }

        else
        {
          v10 = v5 + *(v4 + 56);
          if (a2 + a3 <= v10)
          {
            v12 = *(v4 + 16);
            return v7 >= a2 && v12 <= a2;
          }

          else
          {
            v11 = qword_100071B58;
            result = os_log_type_enabled(qword_100071B58, OS_LOG_TYPE_FAULT);
            if (result)
            {
              v14 = 134349568;
              v15 = a2;
              v16 = 2050;
              v17 = a3;
              v18 = 2050;
              v19 = v10;
              _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "writing to %{public}p with length %{public}lu would go past end of file (%{public}p)", &v14, 0x20u);
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100043614(void *a1, const void *a2, size_t a3)
{
  if (a1)
  {
    v6 = a1[3];
    if (sub_1000434A0(a1, v6, a3, a2))
    {
      v7 = a1[6] - a1[3] + a1[2];
      if (v7 >= a3)
      {
        a1[3] = &v6[a3];

        memcpy(v6, a2, a3);
      }

      else
      {
        v8 = qword_100071B58;
        if (os_log_type_enabled(qword_100071B58, OS_LOG_TYPE_INFO))
        {
          v9 = 134349312;
          v10 = a3;
          v11 = 2050;
          v12 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "More bytes requested %{public}zu than the capacity %{public}zu. Client should call -freeSpace: to avoid this", &v9, 0x16u);
        }
      }
    }
  }
}

void *sub_10004375C(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = SRDefaults;
  v3 = objc_msgSendSuper2(&v9, "init");
  if (v3)
  {
    v3[1] = [objc_msgSend(a2 objectForKeyedSubscript:{@"DatastoreVersion", "unsignedIntegerValue"}];
    v3[2] = [objc_msgSend(a2 objectForKeyedSubscript:{@"SegmentSize", "unsignedLongValue"}];
    v3[3] = [objc_msgSend(a2 objectForKeyedSubscript:{@"MetadataSize", "unsignedLongValue"}];
    v3[4] = [objc_msgSend(a2 objectForKeyedSubscript:{@"MaxAllowedMappedPages", "unsignedLongValue"}];
    [objc_msgSend(a2 objectForKeyedSubscript:{@"SegmentResizeFactor", "floatValue"}];
    *(v3 + 10) = v4;
    [objc_msgSend(a2 objectForKeyedSubscript:{@"SegmentPaddingFactor", "floatValue"}];
    *(v3 + 11) = v5;
    [objc_msgSend(a2 objectForKeyedSubscript:{@"SegmentFillDuration", "floatValue"}];
    *(v3 + 8) = v6;
    [objc_msgSend(a2 objectForKeyedSubscript:{@"SegmentMinimumFactor", "floatValue"}];
    *(v3 + 18) = v7;
  }

  return v3;
}