void sub_100001114(uint64_t a1)
{
  v2 = +[_GDSBalancingAuthority loadRegistrations];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000011B8;
  v3[3] = &unk_1000082F8;
  v4 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_100001208(id a1)
{
  if (!qword_10000CAE0)
  {
    qword_10000CAE0 = objc_alloc_init(_GDBAManager);

    _objc_release_x1();
  }
}

void sub_100001974(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (!v9 || (v10 = [v9 hash], v10 == objc_msgSend(v8, "hash")))
  {
    v11 = [v8 authorizationStatus];
    v12 = *(*(a1 + 40) + 8);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11 == 3)
    {
      if (v13)
      {
        v17 = 138412290;
        v18 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Location bundle %@ authorized for Carbon Awareness", &v17, 0xCu);
      }

      v14 = &__kCFBooleanTrue;
    }

    else
    {
      if (v13)
      {
        v15 = v12;
        v16 = [NSNumber numberWithInt:v11];
        v17 = 138412546;
        v18 = v7;
        v19 = 2112;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Location bundle %@ authorization status: %@", &v17, 0x16u);
      }

      v14 = &__kCFBooleanFalse;
    }

    [*(a1 + 48) setObject:v14 forKeyedSubscript:v7];
    if (*(a1 + 32))
    {
      *a4 = 1;
    }
  }
}

void sub_100001BC8(uint64_t a1)
{
  [*(a1 + 32) updateBAStatusForLocationManager:0];
  AnalyticsSendEventLazy();
  if ([*(*(a1 + 32) + 32) count])
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_100002280;
    v46 = sub_100002290;
    v47 = 0;
    v2 = *(*(a1 + 32) + 32);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100002298;
    v41[3] = &unk_100008410;
    v41[4] = &v42;
    v41[5] = &v48;
    [v2 enumerateKeysAndObjectsUsingBlock:v41];
    if ((v49[3] & 1) == 0)
    {
      if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100003948();
      }

      AnalyticsSendEventLazy();
      v21 = +[NSMutableDictionary dictionary];
      v22 = *(*(a1 + 32) + 32);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10000230C;
      v39[3] = &unk_100008458;
      v8 = v21;
      v40 = v8;
      [v22 enumerateKeysAndObjectsUsingBlock:v39];
      [_GDSBalancingAuthority saveBalancingAuthorityStatus:v8];
      v23 = v40;
      goto LABEL_37;
    }

    [v43[5] coordinate];
    v4 = v3;
    [v43[5] coordinate];
    v6 = v5;
    v7 = +[_GDSBalancingAuthority currentBalancingAuthority];
    v8 = v7;
    if (v7)
    {
      if (([v7 latStart], v9 < v4) && (objc_msgSend(v8, "latEnd"), v4 < v10) || (objc_msgSend(v8, "latStart"), v11 > v4) && (objc_msgSend(v8, "latEnd"), v4 > v12))
      {
        if (([v8 longStart], v13 < v6) && (objc_msgSend(v8, "longEnd"), v6 < v14) || (objc_msgSend(v8, "longStart"), v15 > v6) && (objc_msgSend(v8, "longEnd"), v6 > v16))
        {
          v17 = [v8 lastUpdatedDate];
          [v17 timeIntervalSinceNow];
          v19 = v18 > -604800.0;

          if (v19)
          {
            v20 = *(*(a1 + 32) + 8);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Location still within current bounding box. Last update was less than 7 days ago. No need to update", buf, 2u);
            }

            AnalyticsSendEventLazy();
            goto LABEL_38;
          }
        }
      }
    }

    v23 = [*(a1 + 32) boundaryPolygons];
    v24 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Polygons returned %@", buf, 0xCu);
    }

    if (!v23 || ([v23 allKeys], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "count") == 0, v25, v26))
    {
      if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10000397C();
      }

      AnalyticsSendEventLazy();
      goto LABEL_37;
    }

    v27 = +[_GDBAResolver sharedInstance];
    [v43[5] coordinate];
    v29 = v28;
    [v43[5] coordinate];
    v30 = [v27 balancingAuthorityForLatitude:v23 longitude:v29 polygons:?];

    if (!v30)
    {
      AnalyticsSendEventLazy();
      v8 = 0;
      goto LABEL_37;
    }

    v31 = [v30 identifier];
    v32 = [NSString stringWithFormat:@"%@", v31];

    v33 = [v30 lastUpdatedDate];
    v34 = [NSString stringWithFormat:@"%@", v33];

    v35 = [v30 name];
    v36 = v35;
    if (v35 && v32)
    {

      if (!v34)
      {
LABEL_33:
        [_GDSBalancingAuthority saveBalancingAuthority:v30];

        v8 = v30;
LABEL_37:

LABEL_38:
        _Block_object_dispose(&v42, 8);

        _Block_object_dispose(&v48, 8);
        return;
      }

      v52[0] = @"Name";
      v37 = [v30 name];
      v53[0] = v37;
      v53[1] = v32;
      v52[1] = @"Identifier";
      v52[2] = @"lastUpdatedDate";
      v53[2] = v34;
      v36 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:3];

      AnalyticsSendEventLazy();
      v38 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v36;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }
    }

    goto LABEL_33;
  }

  if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
  {
    sub_1000039B0();
  }

  AnalyticsSendEventLazy();
}

void sub_10000221C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002280(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002298(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 location];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t sub_10000251C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received request for %@ with bundle %@!", &v6, 0x16u);
  }

  [*(a1 + 32) setupLocationManagerForPath:*(a1 + 48) identifier:*(a1 + 40)];
  [_GDSBalancingAuthority saveRegisteration:*(a1 + 40) bundlePath:*(a1 + 48)];
  return (*(*(a1 + 56) + 16))();
}

void sub_10000292C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100002A38(id a1)
{
  if (!qword_10000CAF0)
  {
    qword_10000CAF0 = objc_alloc_init(_GDBAResolver);

    _objc_release_x1();
  }
}

void sub_100003520()
{
  if (_os_feature_enabled_impl())
  {

    xpc_activity_register("com.apple.griddatad.daily", XPC_ACTIVITY_CHECK_IN, &stru_100008580);
  }

  else
  {
    xpc_activity_unregister("com.apple.griddatad.daily");

    _xpc_transaction_exit_clean();
  }
}

void sub_10000359C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_activity_get_state(v2) && xpc_activity_get_state(v2) == 2)
  {
    v3 = os_log_create("com.apple.griddatad", "main");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "com.apple.griddatad.daily";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Running activity %s", &v5, 0xCu);
    }

    v4 = +[_GDBAManager sharedInstance];
    [v4 updateBA];
  }
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.griddatad", "main");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Starting griddatad", buf, 2u);
  }

  _set_user_dir_suffix();
  v2 = NSTemporaryDirectory();
  sub_100003520();
  v3 = objc_autoreleasePoolPush();
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000037F0;
  handler[3] = &unk_1000085A8;
  v4 = v1;
  v6 = v4;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Initializing com.apple.griddata service\n", buf, 2u);
  }

  +[_GDBAManager sharedInstance];

  objc_autoreleasePoolPop(v3);
  CFRunLoopRun();
  exit(1);
}

void sub_1000037F0(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = string;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received notification: %s", &v5, 0xCu);
  }
}

void sub_1000038BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = @"/var/db/GridData";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create directory at path %@ -- %@", &v2, 0x16u);
}

void sub_100003A24(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Listener rejected new connection from PID %d (no entitlement)\n", v3, 8u);
}

void sub_100003AC4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error %@", &v2, 0xCu);
}

void sub_100003B3C(os_log_t log)
{
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to convert to GeoJSON %@", &v1, 0xCu);
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v3 = _MKMapPointForCoordinate(coordinate);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}