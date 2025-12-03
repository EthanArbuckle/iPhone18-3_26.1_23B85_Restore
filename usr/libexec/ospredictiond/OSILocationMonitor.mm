@interface OSILocationMonitor
- (BOOL)inTypicalChargingLocation;
- (BOOL)inTypicalLocation;
- (BOOL)isInSameTimeZone;
- (BOOL)locationIsUncertain:(id)uncertain;
- (BOOL)locationOfInterestFoundNear:(id)near withError:(id *)error considerCharging:(BOOL)charging distance:(int)distance;
- (BOOL)notAuthorizedForLocation;
- (OSILocationMonitor)init;
- (id)likelyToBeInKnownArea;
- (int64_t)inKnownMicrolocation;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation OSILocationMonitor

- (BOOL)inTypicalLocation
{
  typicalLocationCheckDate = self->_typicalLocationCheckDate;
  if (typicalLocationCheckDate)
  {
    [(NSDate *)typicalLocationCheckDate timeIntervalSinceNow];
    if (v4 > -300.0)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        inTypicalLocationCached = self->_inTypicalLocationCached;
        *buf = 134217984;
        v22 = inTypicalLocationCached;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Using cached result for location %ld", buf, 0xCu);
      }

      LOBYTE(v7) = self->_inTypicalLocationCached;
      return v7 & 1;
    }
  }

  if ([(OSILocationMonitor *)self notAuthorizedForLocation])
  {
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not authorized for location", buf, 2u);
    }

    goto LABEL_14;
  }

  authorizationSemaphore = self->_authorizationSemaphore;
  v10 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(authorizationSemaphore, v10);
  v20 = 0;
  v7 = [(OSILocationMonitor *)self inTypicalLocationWithError:&v20 considerCharging:0];
  v11 = v20;
  v12 = v11;
  if (v7)
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "In a typical location";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (!v11)
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Not in a typical location";
      goto LABEL_19;
    }

LABEL_20:

    v17 = +[NSDate date];
    v18 = self->_typicalLocationCheckDate;
    self->_typicalLocationCheckDate = v17;

    self->_inTypicalLocationCached = v7;
    return v7 & 1;
  }

LABEL_14:
  likelyToBeInKnownArea = [(OSILocationMonitor *)self likelyToBeInKnownArea];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C8B8();
  }

  v16 = [likelyToBeInKnownArea objectForKeyedSubscript:@"value"];
  LOBYTE(v7) = [v16 BOOLValue];

  return v7 & 1;
}

- (id)likelyToBeInKnownArea
{
  v3 = +[NSMutableDictionary dictionary];
  inKnownMicrolocation = [(OSILocationMonitor *)self inKnownMicrolocation];
  if (inKnownMicrolocation == -1)
  {
    [v3 setObject:@"TimeZone" forKeyedSubscript:@"reason"];
    isInSameTimeZone = [(OSILocationMonitor *)self isInSameTimeZone];
    log = self->_log;
    v11 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (isInSameTimeZone)
    {
      if (v11)
      {
        *buf = 0;
        v8 = "Device has has been in consistent timezones; Not opting out of feature";
        v9 = buf;
        goto LABEL_8;
      }

LABEL_9:
      v12 = &__kCFBooleanTrue;
      goto LABEL_16;
    }

    if (v11)
    {
      *v18 = 0;
      v13 = "Device has been through multiple timezones; Opting out of feature";
      v14 = v18;
      goto LABEL_14;
    }
  }

  else
  {
    v5 = inKnownMicrolocation;
    [v3 setObject:@"Microlocation" forKeyedSubscript:@"reason"];
    log = self->_log;
    v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v17 = 0;
        v8 = "In a known micro-location; Not opting out of the feature";
        v9 = &v17;
LABEL_8:
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v7)
    {
      LOWORD(v16) = 0;
      v13 = "Not In a known micro-location; Opting out of the feature";
      v14 = &v16;
LABEL_14:
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
    }
  }

  v12 = &__kCFBooleanFalse;
LABEL_16:
  [v3 setObject:v12 forKeyedSubscript:{@"value", v16}];

  return v3;
}

- (int64_t)inKnownMicrolocation
{
  v3 = +[OSIntelligenceUtilities lastPluggedInDate];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v6 = BiomeLibrary();
  location = [v6 Location];
  microLocationVisit = [location MicroLocationVisit];

  publisher = [microLocationVisit publisher];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100002BEC;
  v19[3] = &unk_100094B80;
  v19[4] = self;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100025E24;
  v18[3] = &unk_100095068;
  v18[7] = v5;
  v18[4] = self;
  v18[5] = &v24;
  v18[6] = &v20;
  v10 = [publisher sinkWithCompletion:v19 receiveInput:v18];

  if (v25[3])
  {
    v11 = *(v21 + 24);
    log = self->_log;
    v13 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (v11 == 1)
    {
      if (v13)
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Microlocation event near pluggedIn time", v17, 2u);
      }

      v14 = 1;
    }

    else
    {
      if (v13)
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "No matching microlocation found", v17, 2u);
      }

      v14 = 0;
    }
  }

  else
  {
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No microlocations found. Falling back to TimeZone check", v17, 2u);
    }

    v14 = -1;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v14;
}

- (BOOL)isInSameTimeZone
{
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_10000326C;
  v54 = sub_100003578;
  v55 = 0;
  v3 = BiomeLibrary();
  device = [v3 Device];
  timeZone = [device TimeZone];

  publisher = [timeZone publisher];
  last = [publisher last];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000032AC;
  v49[3] = &unk_100094B80;
  v49[4] = self;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100003444;
  v48[3] = &unk_100095090;
  v48[4] = &v50;
  v8 = [last sinkWithCompletion:v49 receiveInput:v48];

  if (v51[5])
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [v51[5] secondsFromGMT];
      sub_10005CB5C(v62, v9, v10);
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = sub_10000326C;
    v34[4] = sub_100003578;
    v35 = 0;
    v11 = BiomeLibrary();
    device2 = [v11 Device];
    power = [device2 Power];
    pluggedIn = [power PluggedIn];

    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = -1;
    publisher2 = [timeZone publisher];
    publisher3 = [pluggedIn publisher];
    v17 = [publisher2 orderedMergeWithOther:publisher3 comparator:&stru_1000950B0];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100003310;
    v31[3] = &unk_1000950D8;
    v31[4] = v34;
    v31[5] = v32;
    v18 = [v17 filterWithIsIncluded:v31];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100003490;
    v30[3] = &unk_100094B80;
    v30[4] = self;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100026084;
    v29[3] = &unk_100095100;
    v29[4] = self;
    v29[5] = &v36;
    v29[6] = v34;
    v29[7] = &v50;
    v29[8] = &v44;
    v29[9] = &v40;
    v19 = [v18 sinkWithCompletion:v30 receiveInput:v29];

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(v41 + 6);
      v27 = *(v45 + 6);
      v28 = *(v37 + 24);
      *buf = 67109632;
      v57 = v26;
      v58 = 1024;
      v59 = v27;
      v60 = 1024;
      v61 = v28;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "differentTimeZone: %d - sameTimeZone: %d, foundEvents %d", buf, 0x14u);
    }

    v21 = *(v41 + 6);
    if (v21)
    {
      v22 = *(v45 + 6);
      v23 = v22 >= 11 && v22 / v21 > 3;
    }

    else
    {
      v23 = 1;
    }

    _Block_object_dispose(v32, 8);

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
  }

  else
  {
    v24 = [(OSILocationMonitor *)self log];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10005CBA0();
    }

    v23 = 0;
  }

  _Block_object_dispose(&v50, 8);
  return v23;
}

- (BOOL)notAuthorizedForLocation
{
  authorizationStatus = self->_authorizationStatus;
  if (authorizationStatus)
  {
    v3 = authorizationStatus == 3;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (OSILocationMonitor)init
{
  v20.receiver = self;
  v20.super_class = OSILocationMonitor;
  v2 = [(OSILocationMonitor *)&v20 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "locationmonitor");
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.osintelligence.locationmonitor.queue", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.osintelligence.locsignalmonitor.callbackqueue", v8);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v9;

    v11 = +[RTRoutineManager defaultManager];
    routine = v2->_routine;
    v2->_routine = v11;

    v13 = dispatch_semaphore_create(0);
    authorizationSemaphore = v2->_authorizationSemaphore;
    v2->_authorizationSemaphore = v13;

    v15 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/LocationBundles/SystemCustomization.bundle" delegate:v2 onQueue:v2->_callbackQueue];
    locationManager = v2->_locationManager;
    v2->_locationManager = v15;

    [(CLLocationManager *)v2->_locationManager setDesiredAccuracy:100.0];
    typicalLocationCheckDate = v2->_typicalLocationCheckDate;
    v2->_typicalLocationCheckDate = 0;

    typicalChargingLocationCheckDate = v2->_typicalChargingLocationCheckDate;
    v2->_typicalChargingLocationCheckDate = 0;
  }

  return v2;
}

- (BOOL)inTypicalChargingLocation
{
  typicalChargingLocationCheckDate = self->_typicalChargingLocationCheckDate;
  if (typicalChargingLocationCheckDate)
  {
    [(NSDate *)typicalChargingLocationCheckDate timeIntervalSinceNow];
    if (v4 > -300.0)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        inTypicalChargingLocationCached = self->_inTypicalChargingLocationCached;
        *buf = 134217984;
        v22 = inTypicalChargingLocationCached;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Using cached result for charging location %ld", buf, 0xCu);
      }

      LOBYTE(v7) = self->_inTypicalChargingLocationCached;
      return v7 & 1;
    }
  }

  if ([(OSILocationMonitor *)self notAuthorizedForLocation])
  {
    v8 = self->_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not authorized for location", buf, 2u);
    }

    goto LABEL_14;
  }

  authorizationSemaphore = self->_authorizationSemaphore;
  v10 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(authorizationSemaphore, v10);
  v20 = 0;
  v7 = [(OSILocationMonitor *)self inTypicalLocationWithError:&v20 considerCharging:1];
  v11 = v20;
  v12 = v11;
  if (v7)
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "In a typical location";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (!v11)
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Not in a typical location";
      goto LABEL_19;
    }

LABEL_20:

    v17 = +[NSDate date];
    v18 = self->_typicalChargingLocationCheckDate;
    self->_typicalChargingLocationCheckDate = v17;

    self->_inTypicalChargingLocationCached = v7;
    return v7 & 1;
  }

LABEL_14:
  likelyToBeInKnownArea = [(OSILocationMonitor *)self likelyToBeInKnownArea];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005C8B8();
  }

  v16 = [likelyToBeInKnownArea objectForKeyedSubscript:@"value"];
  LOBYTE(v7) = [v16 BOOLValue];

  return v7 & 1;
}

- (BOOL)locationOfInterestFoundNear:(id)near withError:(id *)error considerCharging:(BOOL)charging distance:(int)distance
{
  chargingCopy = charging;
  nearCopy = near;
  v65 = nearCopy;
  if ([(OSILocationMonitor *)self locationIsUncertain:nearCopy])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Location is uncertain; assuming conservatively we are not in typical location.", buf, 2u);
    }

    [NSError errorWithDomain:@"com.apple.ospredictiond" code:2 userInfo:&off_10009CB88];
    *error = v12 = 0;
    goto LABEL_10;
  }

  *buf = 0;
  v119 = buf;
  v120 = 0x3032000000;
  v121 = sub_10000326C;
  v122 = sub_100003578;
  v123 = 0;
  v112 = 0;
  v113 = &v112;
  v114 = 0x3032000000;
  v115 = sub_10000326C;
  v116 = sub_100003578;
  v117 = 0;
  v13 = dispatch_semaphore_create(0);
  routine = self->_routine;
  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_100025524;
  v108[3] = &unk_100094F88;
  v110 = &v112;
  v108[4] = self;
  dsema = v13;
  v109 = dsema;
  v111 = buf;
  [(RTRoutineManager *)routine fetchLocationsOfInterestWithinDistance:nearCopy ofLocation:v108 withHandler:distance];
  v15 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(dsema, v15))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10005C928();
    }

    [NSError errorWithDomain:@"com.apple.ospredictiond" code:7 userInfo:&off_10009CBB0];
    *error = v12 = 0;
    goto LABEL_9;
  }

  v17 = v113[5];
  if (v17)
  {
    *error = v17;
  }

  if ([*(v119 + 5) count])
  {
    if (!chargingCopy)
    {
      v12 = 1;
      goto LABEL_9;
    }

    v18 = +[NSMutableArray array];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v19 = *(v119 + 5);
    v20 = [v19 countByEnumeratingWithState:&v101 objects:v128 count:16];
    if (v20)
    {
      v21 = *v102;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v102 != v21)
          {
            objc_enumerationMutation(v19);
          }

          visits = [*(*(&v101 + 1) + 8 * i) visits];
          [v18 addObjectsFromArray:visits];
        }

        v20 = [v19 countByEnumeratingWithState:&v101 objects:v128 count:16];
      }

      while (v20);
    }

    [v18 sortUsingComparator:&stru_100094FF0];
    v95 = 0;
    v96 = &v95;
    v97 = 0x3032000000;
    v98 = sub_10000326C;
    v99 = sub_100003578;
    v100 = +[NSCalendar currentCalendar];
    v24 = v96[5];
    v25 = +[NSDate date];
    v62 = [v24 components:96 fromDate:v25];

    v89 = 0;
    v90 = &v89;
    v91 = 0x3032000000;
    v92 = sub_10000326C;
    v93 = sub_100003578;
    v94 = [v96[5] dateFromComponents:v62];
    v87[0] = 0;
    v87[1] = v87;
    v87[2] = 0x3032000000;
    v87[3] = sub_10000326C;
    v87[4] = sub_100003578;
    v88 = [v90[5] dateByAddingTimeInterval:86400.0];
    v81 = 0;
    v82 = &v81;
    v83 = 0x3032000000;
    v84 = sub_10000326C;
    v85 = sub_100003578;
    v86 = +[NSMutableArray array];
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = sub_10000326C;
    v79 = sub_100003578;
    v80 = +[NSMutableArray array];
    v73[0] = 0;
    v73[1] = v73;
    v73[2] = 0x3032000000;
    v73[3] = sub_10000326C;
    v73[4] = sub_100003578;
    v74 = 0;
    v71[0] = 0;
    v71[1] = v71;
    v71[2] = 0x3032000000;
    v71[3] = sub_10000326C;
    v71[4] = sub_100003578;
    v72 = 0;
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x2020000000;
    v70 = -1;
    v26 = BiomeLibrary();
    device = [v26 Device];
    power = [device Power];
    pluggedIn = [power PluggedIn];

    publisher = [pluggedIn publisher];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100025844;
    v68[3] = &unk_100095018;
    v68[4] = v69;
    v30 = [publisher filterWithIsIncluded:v68];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_10002590C;
    v67[3] = &unk_100094B80;
    v67[4] = self;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100025970;
    v66[3] = &unk_100095040;
    v66[4] = self;
    v66[5] = v73;
    v66[6] = v71;
    v66[7] = &v95;
    v66[8] = &v89;
    v66[9] = v87;
    v66[10] = &v81;
    v66[11] = &v75;
    v31 = [v30 sinkWithCompletion:v67 receiveInput:v66];

    v63 = 0;
    v32 = 0;
    v33 = 0;
    *&v34 = 134218240;
    v60 = v34;
    while (1)
    {
      v35 = v33;
      if ([v82[5] count] <= v33 || objc_msgSend(v18, "count") <= v32)
      {
        v59 = self->_log;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *v124 = 134217984;
          *&v125 = v63;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Relevant charge sessions %ld", v124, 0xCu);
        }

        v12 = v63 > 4;

        _Block_object_dispose(v69, 8);
        _Block_object_dispose(v71, 8);

        _Block_object_dispose(v73, 8);
        _Block_object_dispose(&v75, 8);

        _Block_object_dispose(&v81, 8);
        _Block_object_dispose(v87, 8);

        _Block_object_dispose(&v89, 8);
        _Block_object_dispose(&v95, 8);

        goto LABEL_9;
      }

      v36 = [v18 objectAtIndexedSubscript:?];
      entryDate = [v36 entryDate];
      v38 = [v82[5] objectAtIndexedSubscript:v33];
      [entryDate timeIntervalSinceDate:v38];
      if (v39 >= 0.0)
      {
      }

      else
      {
        exitDate = [v36 exitDate];
        v41 = [v76[5] objectAtIndexedSubscript:v35];
        [exitDate timeIntervalSinceDate:v41];
        v43 = v42 > 0.0;

        if (!v43)
        {
          goto LABEL_31;
        }

        ++v63;
        entryDate = self->_log;
        if (os_log_type_enabled(entryDate, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [v76[5] objectAtIndexedSubscript:v35];
          v45 = [v82[5] objectAtIndexedSubscript:v35];
          [v44 timeIntervalSinceDate:v45];
          v47 = v46;
          exitDate2 = [v36 exitDate];
          entryDate2 = [v36 entryDate];
          [exitDate2 timeIntervalSinceDate:entryDate2];
          *v124 = v60;
          v125 = round(v47 / 3600.0);
          v126 = 2048;
          v127 = round(v50 / 3600.0);
          _os_log_impl(&_mh_execute_header, entryDate, OS_LOG_TYPE_DEFAULT, "Charged at LOI for %.0f hours, present for %.0f hours", v124, 0x16u);
        }
      }

LABEL_31:
      exitDate3 = [v36 exitDate];
      v52 = [v76[5] objectAtIndexedSubscript:v35];
      [exitDate3 timeIntervalSinceDate:v52];
      v54 = v53 <= 0.0;

      v32 += v54;
      v33 = v35 + (v54 ^ 1);
    }
  }

  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  LOBYTE(v98) = 0;
  v55 = dispatch_semaphore_create(0);

  v56 = self->_routine;
  v57 = [NSDate dateWithTimeIntervalSinceNow:-259200.0];
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = sub_1000256C8;
  v105[3] = &unk_100094FB0;
  v105[4] = self;
  v107 = &v95;
  dsema = v55;
  v106 = dsema;
  [(RTRoutineManager *)v56 fetchLocationsOfInterestVisitedSinceDate:v57 withHandler:v105];

  v58 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(dsema, v58))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10005C928();
    }

    [NSError errorWithDomain:@"com.apple.osintelligence" code:7 userInfo:&off_10009CBD8];
    *error = v12 = 0;
  }

  else
  {
    v12 = *(v96 + 24) ^ 1;
  }

  _Block_object_dispose(&v95, 8);
LABEL_9:

  _Block_object_dispose(&v112, 8);
  _Block_object_dispose(buf, 8);

LABEL_10:
  return v12 & 1;
}

- (BOOL)locationIsUncertain:(id)uncertain
{
  uncertainCopy = uncertain;
  v5 = uncertainCopy;
  if (uncertainCopy)
  {
    [uncertainCopy horizontalAccuracy];
    if (v6 <= 200.0)
    {
      v11 = 0;
      goto LABEL_9;
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = log;
      [v5 horizontalAccuracy];
      v9 = [NSNumber numberWithDouble:?];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Horizontal accuracy: %@. Returning uncertain", &v13, 0xCu);
    }
  }

  else
  {
    v10 = self->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No location: Returning uncertain", &v13, 2u);
    }
  }

  v11 = 1;
LABEL_9:

  return v11;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationStatus = [authorization authorizationStatus];
  log = self->_log;
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (authorizationStatus == 3)
  {
    if (v6)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Authorized for OSIntelligence", &v9, 2u);
    }
  }

  else if (v6)
  {
    v7 = log;
    v8 = [NSNumber numberWithInt:authorizationStatus];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Authorization status: %@", &v9, 0xCu);
  }

  self->_authorizationStatus = authorizationStatus;
  dispatch_semaphore_signal(self->_authorizationSemaphore);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10005CD50();
  }

  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100026458;
  v8[3] = &unk_100095128;
  v8[4] = self;
  v9 = locationsCopy;
  v7 = locationsCopy;
  dispatch_sync(queue, v8);
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Location Manager failed with error: %@", &v7, 0xCu);
  }
}

@end