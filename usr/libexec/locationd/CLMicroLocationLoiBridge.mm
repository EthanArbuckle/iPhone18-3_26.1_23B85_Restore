@interface CLMicroLocationLoiBridge
- (id)generateLocationManagerNotAvailableError;
- (id)generateRegionMonitorNotAvailableError;
- (id)initInUniverse:(id)universe;
- (id)retrieveAllActiveGeofences;
- (unint64_t)convertMonitoringEventToGeofenceState:(id)state;
- (void)dealloc;
- (void)fetchLocationOfInterestAtLocation:(id)location;
- (void)fetchPlaceInferenceAtCurrentLocation;
- (void)fetchRelatedLoisForLoi:(id)loi;
- (void)generateGeofenceUpdateToClient:(id)client;
- (void)getAllActiveGeofences;
- (void)getCurrentLocation;
- (void)invalidateFetchPlaceInferenceTimer;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)onVisit:(id)visit;
- (void)regionMonitor:(id)monitor didGenerateEvent:(id)event;
- (void)removeGeofenceWithRegionId:(id)id;
- (void)removeGeofencesNearLocationWithLatitude:(double)latitude andLongitude:(double)longitude;
- (void)requestBootstrapWithLastGeofenceStates;
- (void)setGeofenceAtLocation:(id)location;
- (void)startVisitMonitoring;
@end

@implementation CLMicroLocationLoiBridge

- (id)initInUniverse:(id)universe
{
  v28.receiver = self;
  v28.super_class = CLMicroLocationLoiBridge;
  v4 = [(CLMicroLocationLoiBridge *)&v28 init];
  if (v4)
  {
    v4->_universe = universe;
    silo = [universe silo];
    v4->_silo = silo;
    v4->_queue = [(CLDispatchSilo *)silo queue];
    v4->_fetchPlaceInferenceTimer = 0;
    *&v4->_bridgeReady = 256;
    v6 = [-[CLIntersiloUniverse vendor](v4->_universe "vendor")];
    v4->_routineMonitor = v6;
    [(CLRoutineMonitorServiceProtocol *)v6 registerDelegate:v4 inSilo:[(CLIntersiloUniverse *)v4->_universe silo]];
    [(CLRoutineMonitorServiceProtocol *)v4->_routineMonitor setDelegateEntityName:"CLMicroLocationLoiBridge"];
    if (sub_1003960C8())
    {
      v7 = [CLLocationManager alloc];
      if (byte_102655FA7 >= 0)
      {
        v8 = &qword_102655F90;
      }

      else
      {
        v8 = qword_102655F90;
      }

      v9 = [v7 initWithEffectiveBundlePath:+[NSString stringWithUTF8String:](NSString delegate:"stringWithUTF8String:" onQueue:{v8), v4, v4->_queue}];
      v4->_clLocationManager = v9;
      if (!v9)
      {
        if (qword_1025D46D0 != -1)
        {
          sub_101871594();
        }

        v10 = qword_1025D46D8;
        if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Failed to create location manager using MicroLocation bundle", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018715BC();
        }
      }

      [(CLLocationManager *)v4->_clLocationManager setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_100396170;
      v25 = &unk_1024473A0;
      v26 = v4;
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_1003961B8;
      v20 = &unk_1024473C8;
      v21 = v4;
      v11 = [CLMonitorConfiguration alloc];
      if (byte_102655FD7 >= 0)
      {
        v12 = &qword_102655FC0;
      }

      else
      {
        v12 = qword_102655FC0;
      }

      v13 = [NSString stringWithUTF8String:v12, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26];
      if (byte_102655FBF >= 0)
      {
        v14 = &qword_102655FA8;
      }

      else
      {
        v14 = qword_102655FA8;
      }

      v15 = [v11 initWithName:v13 path:+[NSString stringWithUTF8String:](NSString onQueue:"stringWithUTF8String:" eventHandler:v14) useMonitorQueueForVendingMonitor:v4->_queue vendingHandler:{&v17, 1, &v22}];
      v4->_regionMonitorConfiguration = v15;
      [(CLLocationManager *)v4->_clLocationManager requestMonitorWithConfiguration:v15 completion:&v22];
    }

    if (sub_1003960C8())
    {
      [(CLMicroLocationLoiBridge *)v4 startVisitMonitoring];
    }
  }

  return v4;
}

- (void)dealloc
{
  [(CLRoutineMonitorServiceProtocol *)self->_routineMonitor stopLeechingVisitsForClient:self];
  [(CLRoutineMonitorServiceProtocol *)self->_routineMonitor stopLeechingLowConfidenceVisitsForClient:self];

  v3.receiver = self;
  v3.super_class = CLMicroLocationLoiBridge;
  [(CLMicroLocationLoiBridge *)&v3 dealloc];
}

- (void)requestBootstrapWithLastGeofenceStates
{
  regionMonitor = self->_regionMonitor;
  if (regionMonitor)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    monitoredIdentifiers = [(CLMonitor *)regionMonitor monitoredIdentifiers];
    v5 = [(NSArray *)monitoredIdentifiers countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(monitoredIdentifiers);
          }

          v9 = [(CLMonitor *)self->_regionMonitor monitoringRecordForIdentifier:*(*(&v13 + 1) + 8 * i)];
          if ([(CLMonitoringRecord *)v9 lastEvent])
          {
            silo = self->_silo;
            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_10039643C;
            v12[3] = &unk_1024473F0;
            v12[4] = v9;
            v12[5] = self;
            [(CLDispatchSilo *)silo async:v12];
          }
        }

        v6 = [(NSArray *)monitoredIdentifiers countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v6);
    }
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101871698();
    }

    v11 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#LOI Bridge, Attempted bootstraping when region monitor was not available", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018716AC();
    }
  }
}

- (id)generateLocationManagerNotAvailableError
{
  if (qword_1025D46D0 != -1)
  {
    sub_101871698();
  }

  v2 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "#LOI Bridge, Attempted LOI request when location manager was not available", v5, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101871788();
  }

  v3 = [NSError alloc];
  v6 = NSLocalizedDescriptionKey;
  v7 = @"Location Manager not available";
  return [v3 initWithDomain:kCLErrorDomainPrivate code:2 userInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v7, &v6, 1)}];
}

- (id)generateRegionMonitorNotAvailableError
{
  if (qword_1025D46D0 != -1)
  {
    sub_101871698();
  }

  v2 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "#LOI Bridge, Attempted geofence request when region monitor was not available", v5, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101871864();
  }

  v3 = [NSError alloc];
  v6 = NSLocalizedDescriptionKey;
  v7 = @"Routine Monitor is not active";
  return [v3 initWithDomain:kCLErrorDomainPrivate code:3 userInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v7, &v6, 1)}];
}

- (void)generateGeofenceUpdateToClient:(id)client
{
  v5 = [(CLMicroLocationLoiBridge *)self convertMonitoringEventToGeofenceState:?];
  microlocationLoiClient = self->_microlocationLoiClient;
  identifier = [client identifier];
  v8 = *(microlocationLoiClient->var0 + 7);

  v8(microlocationLoiClient, identifier, v5);
}

- (unint64_t)convertMonitoringEventToGeofenceState:(id)state
{
  state = [state state];
  if (state == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (state == 2);
  }
}

- (void)regionMonitor:(id)monitor didGenerateEvent:(id)event
{
  if (qword_1025D46D0 != -1)
  {
    sub_101871698();
  }

  v6 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_INFO))
  {
    v7[0] = 68289539;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2081;
    v11 = [objc_msgSend(event "identifier")];
    v12 = 1025;
    state = [event state];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Bridge, got geofence update, Geofence Id:%{private, location:escape_only}s, state:%{private}d}", v7, 0x22u);
  }

  [(CLMicroLocationLoiBridge *)self generateGeofenceUpdateToClient:event];
}

- (void)startVisitMonitoring
{
  [(CLRoutineMonitorServiceProtocol *)self->_routineMonitor startLeechingVisitsForClient:self];
  routineMonitor = self->_routineMonitor;

  [(CLRoutineMonitorServiceProtocol *)routineMonitor startLeechingLowConfidenceVisitsForClient:self];
}

- (void)invalidateFetchPlaceInferenceTimer
{
  [(CLTimer *)self->_fetchPlaceInferenceTimer invalidate];

  self->_fetchPlaceInferenceTimer = 0;
}

- (void)fetchPlaceInferenceAtCurrentLocation
{
  if (sub_1003960C8())
  {
    if (!self->_clLocationManager)
    {
      silo = self->_silo;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100396B94;
      v10[3] = &unk_102447418;
      v10[4] = self;
      [(CLDispatchSilo *)silo async:v10];
    }

    newTimer = [(CLDispatchSilo *)self->_silo newTimer];
    self->_fetchPlaceInferenceTimer = newTimer;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100396BF8;
    v9[3] = &unk_102447418;
    v9[4] = self;
    [(CLTimer *)newTimer setHandler:v9];
    [(CLTimer *)self->_fetchPlaceInferenceTimer setNextFireDelay:5.0];
    clLocationManager = self->_clLocationManager;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100396DE8;
    v8[3] = &unk_102447440;
    v8[4] = self;
    [(CLLocationManager *)clLocationManager _fetchPlaceInferencesWithFidelityPolicy:0 handler:v8];
  }

  if (qword_1025D46D0 != -1)
  {
    sub_101871594();
  }

  v6 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "fetchPlaceInferenceAtCurrentLocation - MicroLocation is disabled", v7, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101871940();
  }
}

- (void)fetchLocationOfInterestAtLocation:(id)location
{
  routineMonitor = self->_routineMonitor;
  if (!routineMonitor)
  {
    v6 = [NSError alloc];
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Routine Monitor is not active";
    v7 = [v6 initWithDomain:kCLErrorDomainPrivate code:1 userInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1)}];
    silo = self->_silo;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003971CC;
    v10[3] = &unk_102447468;
    v10[4] = self;
    v10[5] = location;
    v10[6] = v7;
    [(CLDispatchSilo *)silo async:v10];
    routineMonitor = self->_routineMonitor;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100397204;
  v9[3] = &unk_102447490;
  v9[4] = self;
  v9[5] = location;
  [(CLRoutineMonitorServiceProtocol *)routineMonitor fetchLocationOfInterestAtLocation:location withReply:v9];
}

- (void)fetchRelatedLoisForLoi:(id)loi
{
  routineMonitor = self->_routineMonitor;
  if (!routineMonitor)
  {
    v6 = [NSError alloc];
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Routine Monitor is not active";
    v7 = [v6 initWithDomain:kCLErrorDomainPrivate code:1 userInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1)}];
    silo = self->_silo;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100397434;
    v10[3] = &unk_1024473F0;
    v10[4] = self;
    v10[5] = v7;
    [(CLDispatchSilo *)silo async:v10];
    routineMonitor = self->_routineMonitor;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100397464;
  v9[3] = &unk_102447440;
  v9[4] = self;
  [(CLRoutineMonitorServiceProtocol *)routineMonitor fetchDedupedLocationOfInterestIdentifiersWithIdentifier:loi withReply:v9];
}

- (id)retrieveAllActiveGeofences
{
  v3 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  monitoredIdentifiers = [(CLMonitor *)self->_regionMonitor monitoredIdentifiers];
  v5 = [(NSArray *)monitoredIdentifiers countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(monitoredIdentifiers);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = [(CLMonitor *)self->_regionMonitor monitoringRecordForIdentifier:v9];
        if (v10)
        {
          condition = [(CLMonitoringRecord *)v10 condition];
          v12 = objc_alloc_init(CLMicroLocationGeofence);
          [(CLMicroLocationGeofence *)v12 setRegionId:v9];
          v13 = [CLLocation alloc];
          [(CLCondition *)condition center];
          v15 = v14;
          [(CLCondition *)condition center];
          -[CLMicroLocationGeofence setRegionCenterLocation:](v12, "setRegionCenterLocation:", [v13 initWithLatitude:v15 longitude:?]);
          [v3 addObject:v12];
        }

        else
        {
          if (qword_1025D46D0 != -1)
          {
            sub_101871594();
          }

          v16 = qword_1025D46D8;
          if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
          {
            uTF8String = [v9 UTF8String];
            *buf = 68289282;
            v26 = 2082;
            v27 = "";
            v28 = 2082;
            v29 = uTF8String;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LoiBridge, was unable to retrieve monitor record for valid region identifier, identifier:%{public, location:escape_only}s}", buf, 0x1Cu);
            if (qword_1025D46D0 != -1)
            {
              sub_101871594();
            }
          }

          v18 = qword_1025D46D8;
          if (os_signpost_enabled(qword_1025D46D8))
          {
            uTF8String2 = [v9 UTF8String];
            *buf = 68289282;
            v26 = 2082;
            v27 = "";
            v28 = 2082;
            v29 = uTF8String2;
            _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LoiBridge, was unable to retrieve monitor record for valid region identifier", "{msg%{public}.0s:#LoiBridge, was unable to retrieve monitor record for valid region identifier, identifier:%{public, location:escape_only}s}", buf, 0x1Cu);
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)monitoredIdentifiers countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v6);
  }

  return [NSArray arrayWithArray:v3];
}

- (void)getAllActiveGeofences
{
  if (self->_regionMonitor)
  {
    retrieveAllActiveGeofences = [(CLMicroLocationLoiBridge *)self retrieveAllActiveGeofences];
    generateRegionMonitorNotAvailableError = 0;
  }

  else
  {
    generateRegionMonitorNotAvailableError = [(CLMicroLocationLoiBridge *)self generateRegionMonitorNotAvailableError];
    retrieveAllActiveGeofences = 0;
  }

  silo = self->_silo;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100397990;
  v6[3] = &unk_102447468;
  v6[4] = self;
  v6[5] = retrieveAllActiveGeofences;
  v6[6] = generateRegionMonitorNotAvailableError;
  [(CLDispatchSilo *)silo async:v6];
}

- (void)removeGeofencesNearLocationWithLatitude:(double)latitude andLongitude:(double)longitude
{
  if (self->_regionMonitor)
  {
    retrieveAllActiveGeofences = [(CLMicroLocationLoiBridge *)self retrieveAllActiveGeofences];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [retrieveAllActiveGeofences countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v25;
      *&v9 = 68289539;
      v23 = v9;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(retrieveAllActiveGeofences);
          }

          v13 = *(*(&v24 + 1) + 8 * v12);
          [objc_msgSend(v13 regionCenterLocation];
          v15 = v14;
          [objc_msgSend(v13 "regionCenterLocation")];
          v17 = sub_100117154(latitude, longitude, v15, v16);
          sub_100397C6C();
          if (v17 <= v18 + v18)
          {
            if (qword_1025D46D0 != -1)
            {
              sub_101871594();
            }

            v21 = qword_1025D46D8;
            if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [objc_msgSend(v13 "regionId")];
              *buf = v23;
              v29 = 0;
              v30 = 2082;
              v31 = "";
              v32 = 2081;
              v33 = v22;
              v34 = 2049;
              v35 = v17;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Bridge, removing geofence because it overlap the geofence at the requested location, Geofence ID:%{private, location:escape_only}s, Distance Between Geofences:%{private}7f}", buf, 0x26u);
            }

            -[CLMonitor removeConditionFromMonitoringWithIdentifier:](self->_regionMonitor, "removeConditionFromMonitoringWithIdentifier:", [v13 regionId]);
          }

          else
          {
            if (qword_1025D46D0 != -1)
            {
              sub_101871594();
            }

            v19 = qword_1025D46D8;
            if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_INFO))
            {
              v20 = [objc_msgSend(v13 "regionId")];
              *buf = v23;
              v29 = 0;
              v30 = 2082;
              v31 = "";
              v32 = 2081;
              v33 = v20;
              v34 = 2049;
              v35 = v17;
              _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#LOI Bridge, geofence does not overlap the geofence at the requested location, Geofence ID:%{private, location:escape_only}s, Distance Between Geofences:%{private}7f}", buf, 0x26u);
            }
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [retrieveAllActiveGeofences countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v10);
    }
  }
}

- (void)getCurrentLocation
{
  if (sub_1003960C8())
  {
    clLocationManager = self->_clLocationManager;
    if (!clLocationManager)
    {
      silo = self->_silo;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100397EF0;
      v7[3] = &unk_102447418;
      v7[4] = self;
      [(CLDispatchSilo *)silo async:v7];
      clLocationManager = self->_clLocationManager;
    }

    [(CLLocationManager *)clLocationManager requestLocation];
    self->_waitingOnLocationUpdate = 1;
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101871698();
    }

    v5 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LOI Bridge, getCurrentLocation while MicroLocation disabled}", buf, 0x12u);
      if (qword_1025D46D0 != -1)
      {
        sub_101871594();
      }
    }

    v6 = qword_1025D46D8;
    if (os_signpost_enabled(qword_1025D46D8))
    {
      *buf = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LOI Bridge, getCurrentLocation while MicroLocation disabled", "{msg%{public}.0s:LOI Bridge, getCurrentLocation while MicroLocation disabled}", buf, 0x12u);
    }
  }
}

- (void)setGeofenceAtLocation:(id)location
{
  v5 = -[NSString uppercaseString]([+[NSUUID UUID](NSUUID UUIDString], "uppercaseString");
  if (qword_1025D46D0 != -1)
  {
    sub_101871698();
  }

  v6 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_INFO))
  {
    [location coordinate];
    v8 = v7;
    [location coordinate];
    *buf = 68289539;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2053;
    v26 = v8;
    v27 = 2053;
    v28 = v9;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:LOI Bridge, requested geofence at location, latitude:%{sensitive}7f, longitude:%{sensitive}7f}", buf, 0x26u);
  }

  if (self->_regionMonitor)
  {
    sub_100397C6C();
    v11 = v10;
    if (qword_1025D46D0 != -1)
    {
      sub_101871594();
    }

    v12 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2049;
      v26 = v11;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LOI Bridge, setting geofence for custom LOI, Custom LOI Geofence radius:%{private}7f}", buf, 0x1Cu);
    }

    v13 = [CLCircularGeographicCondition alloc];
    [location coordinate];
    -[CLMonitor addConditionForMonitoring:identifier:](self->_regionMonitor, "addConditionForMonitoring:identifier:", [v13 initWithCenter:? radius:?], v5);
    uTF8String = [(NSString *)v5 UTF8String];
    v15 = strlen(uTF8String);
    v17 = sub_10039885C(buf, uTF8String, &uTF8String[v15]);
    generateRegionMonitorNotAvailableError = 0;
  }

  else
  {
    generateRegionMonitorNotAvailableError = [(CLMicroLocationLoiBridge *)self generateRegionMonitorNotAvailableError];
    v17 = 0;
    v16 = 0;
  }

  silo = self->_silo;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1003981E0;
  v20[3] = &unk_1024474B8;
  v20[4] = self;
  v20[5] = location;
  v20[7] = v17;
  v20[8] = v16;
  v20[6] = generateRegionMonitorNotAvailableError;
  [(CLDispatchSilo *)silo async:v20];
}

- (void)removeGeofenceWithRegionId:(id)id
{
  regionMonitor = self->_regionMonitor;
  if (regionMonitor)
  {
    [(CLMonitor *)regionMonitor removeConditionFromMonitoringWithIdentifier:id];
    generateRegionMonitorNotAvailableError = 0;
  }

  else
  {
    generateRegionMonitorNotAvailableError = [(CLMicroLocationLoiBridge *)self generateRegionMonitorNotAvailableError];
  }

  silo = self->_silo;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003982C0;
  v8[3] = &unk_102447468;
  v8[4] = self;
  v8[5] = id;
  v8[6] = generateRegionMonitorNotAvailableError;
  [(CLDispatchSilo *)silo async:v8];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  if (self->_waitingOnLocationUpdate)
  {
    self->_waitingOnLocationUpdate = 0;
    if (locations && [locations count])
    {
      v6 = [locations objectAtIndexedSubscript:0];
      v7 = 0;
    }

    else
    {
      v9 = [NSError alloc];
      v19 = NSLocalizedDescriptionKey;
      v20 = @"Failed to get current Location";
      v7 = [v9 initWithDomain:kCLErrorDomainPrivate code:5 userInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v20, &v19, 1)}];
      v6 = 0;
    }

    [v6 horizontalAccuracy];
    v11 = v10;
    sub_100397C6C();
    if (v11 > v12)
    {
      v13 = [NSError alloc];
      v17 = NSLocalizedDescriptionKey;
      v18 = @"Failed to get current Location";
      v7 = [v13 initWithDomain:kCLErrorDomainPrivate code:5 userInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}];
      v6 = 0;
    }

    silo = self->_silo;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10039853C;
    v16[3] = &unk_102447468;
    v16[4] = self;
    v16[5] = v6;
    v16[6] = v7;
    [(CLDispatchSilo *)silo async:v16];
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101871698();
    }

    v8 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "LOI Bridge: Received location update when not waiting on one... Ignoring", v15, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101871A1C();
    }
  }
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  if (qword_1025D46D0 != -1)
  {
    sub_101871698();
  }

  v5 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
  {
    v7 = 68289283;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2113;
    errorCopy2 = error;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LOI Bridge: location manager failed, error::%{private, location:escape_only}@}", &v7, 0x1Cu);
    if (qword_1025D46D0 != -1)
    {
      sub_101871594();
    }
  }

  v6 = qword_1025D46D8;
  if (os_signpost_enabled(qword_1025D46D8))
  {
    v7 = 68289283;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2113;
    errorCopy2 = error;
    _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LOI Bridge: location manager failed", "{msg%{public}.0s:#LOI Bridge: location manager failed, error::%{private, location:escape_only}@}", &v7, 0x1Cu);
  }
}

- (void)onVisit:(id)visit
{
  if (visit)
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101871698();
    }

    v5 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "LOI Bridge: Received visit notification", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101871AF8();
    }

    (*self->_microlocationLoiClient->var0)(self->_microlocationLoiClient, visit);
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_101871698();
    }

    v6 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "LOI Bridge: Received nil visit notification", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101871BE0();
    }
  }
}

@end