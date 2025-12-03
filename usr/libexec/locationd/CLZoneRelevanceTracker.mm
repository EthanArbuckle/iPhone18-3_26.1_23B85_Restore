@interface CLZoneRelevanceTracker
- (CLDaemonLocation)currentLocation;
- (CLZoneRelevanceTracker)initWithClientManagerPointer:(void *)pointer andUniverse:(id)universe;
- (id).cxx_construct;
- (void)dealloc;
- (void)handleEntryExitDelegateCallbackForRegion:(id)region withState:(int64_t)state;
- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region;
- (void)locationManager:(id)manager didEnterRegion:(id)region;
- (void)locationManager:(id)manager didExitRegion:(id)region;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region;
- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error;
- (void)onLeechedNotification:(int)notification withData:(NotificationData *)data;
- (void)startStopCircularZoneMonitoringForClient:(id)client withZoneId:(id)id latitude:(double)latitude longitude:(double)longitude radius:(double)radius shouldStart:(BOOL)start;
@end

@implementation CLZoneRelevanceTracker

- (CLZoneRelevanceTracker)initWithClientManagerPointer:(void *)pointer andUniverse:(id)universe
{
  v8.receiver = self;
  v8.super_class = CLZoneRelevanceTracker;
  v6 = [(CLZoneRelevanceTracker *)&v8 init];
  if (v6)
  {
    v6->_universe = universe;
    *&v6->_currentLocation.ellipsoidalAltitude = pointer;
    *&v6->_currentLocation.fromSimulationController = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/LocationBundles/PLAMonitor.bundle" delegate:v6 onQueue:{objc_msgSend(-[CLIntersiloUniverse silo](v6->_universe, "silo"), "queue")}];
    LOBYTE(v6->_clientManager) = 1;
    sub_100678564();
  }

  return 0;
}

- (void)dealloc
{
  [*(self->_locationClient.__ptr_ + 2) unregister:*(self->_locationClient.__ptr_ + 1) forNotification:5];
  ptr = self->_locationClient.__ptr_;
  self->_locationClient.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  *&self->_currentLocation.fromSimulationController = 0;
  v4.receiver = self;
  v4.super_class = CLZoneRelevanceTracker;
  [(CLZoneRelevanceTracker *)&v4 dealloc];
}

- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region
{
  if (qword_1025D47A0 != -1)
  {
    sub_10193A2B8();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = [objc_msgSend(region "identifier")];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pla #zone-relevance-tracker region-monitoring started, RegionIdentifier/ZoneRelevanceMonitoringId:%{public, location:escape_only}s}", v6, 0x1Cu);
  }
}

- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error
{
  if (qword_1025D47A0 != -1)
  {
    sub_10193A2B8();
  }

  v7 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    v11 = 68289538;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = [objc_msgSend(region "identifier")];
    v17 = 2082;
    v18 = [objc_msgSend(error "description")];
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#pla #zone-relevance-tracker region-monitoring failed to start, RegionIdentifier/ZoneRelevanceMonitoringId:%{public, location:escape_only}s, Error:%{public, location:escape_only}s}", &v11, 0x26u);
    if (qword_1025D47A0 != -1)
    {
      sub_10193A2CC();
    }
  }

  v8 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v9 = [objc_msgSend(region "identifier")];
    v10 = [objc_msgSend(error "description")];
    v11 = 68289538;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = v9;
    v17 = 2082;
    v18 = v10;
    _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#pla #zone-relevance-tracker region-monitoring failed to start", "{msg%{public}.0s:#pla #zone-relevance-tracker region-monitoring failed to start, RegionIdentifier/ZoneRelevanceMonitoringId:%{public, location:escape_only}s, Error:%{public, location:escape_only}s}", &v11, 0x26u);
  }
}

- (void)locationManager:(id)manager didEnterRegion:(id)region
{
  if (qword_1025D47A0 != -1)
  {
    sub_10193A2B8();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = [objc_msgSend(region "identifier")];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pla #zone-relevance-tracker entered circular region, RegionIdentifier/ZoneRelevanceMonitoringId:%{public, location:escape_only}s}", v7, 0x1Cu);
  }

  [(CLZoneRelevanceTracker *)self handleEntryExitDelegateCallbackForRegion:region withState:1];
}

- (void)locationManager:(id)manager didExitRegion:(id)region
{
  if (qword_1025D47A0 != -1)
  {
    sub_10193A2B8();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = [objc_msgSend(region "identifier")];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pla #zone-relevance-tracker exited circular-region, RegionIdentifier/ZoneRelevanceMonitoringId:%{public, location:escape_only}s}", v7, 0x1Cu);
  }

  [(CLZoneRelevanceTracker *)self handleEntryExitDelegateCallbackForRegion:region withState:2];
}

- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region
{
  if (qword_1025D47A0 != -1)
  {
    sub_10193A2B8();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 68289538;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1026;
    stateCopy = state;
    v14 = 2082;
    v15 = [objc_msgSend(region "identifier")];
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pla #zone-relevance-tracker determined state, State:%{public}d, RegionIdentifier/ZoneRelevanceMonitoringId:%{public, location:escape_only}s}", v9, 0x22u);
  }

  [(CLZoneRelevanceTracker *)self handleEntryExitDelegateCallbackForRegion:region withState:state];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  if (qword_1025D47A0 != -1)
  {
    sub_10193A2B8();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    v8 = 68289282;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = [objc_msgSend(error "description")];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#pla locationManager delegate received error, Error:%{public, location:escape_only}s}", &v8, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10193A2CC();
    }
  }

  v6 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v7 = [objc_msgSend(error "description")];
    v8 = 68289282;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = v7;
    _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#pla locationManager delegate received error", "{msg%{public}.0s:#pla locationManager delegate received error, Error:%{public, location:escape_only}s}", &v8, 0x1Cu);
  }
}

- (void)handleEntryExitDelegateCallbackForRegion:(id)region withState:(int64_t)state
{
  if (state)
  {
    identifier = [region identifier];
    v6 = [identifier rangeOfString:@":"];
    v7 = [identifier substringToIndex:v6];
    v8 = [identifier substringFromIndex:v6 + 1];
    if (self->_clientManager)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10193A2B8();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        LOWORD(__p) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#pla #zone-relevance-tracker recompute auth context", &__p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193A2F4();
      }

      v10 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:v7];
      v11 = *&self->_currentLocation.ellipsoidalAltitude;
      BYTE3(uTF8String) = 0;
      LOBYTE(__p) = 0;
      sub_100018918(v11, v10, &__p);
      if (SBYTE3(uTF8String) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v12 = v8;
      if (qword_1025D47A0 != -1)
      {
        sub_10193A2B8();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        __p = 68289538;
        v15 = 2082;
        v16 = "";
        v17 = 2082;
        uTF8String = [v7 UTF8String];
        v19 = 2082;
        uTF8String2 = [v12 UTF8String];
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pla ClientManager has marked ZoneTracker as invalid, not updating zone relevance, Client:%{public, location:escape_only}s, ZoneId:%{public, location:escape_only}s}", &__p, 0x26u);
      }
    }
  }
}

- (void)startStopCircularZoneMonitoringForClient:(id)client withZoneId:(id)id latitude:(double)latitude longitude:(double)longitude radius:(double)radius shouldStart:(BOOL)start
{
  startCopy = start;
  v15 = [NSString stringWithFormat:@"%@%@%@", client, @":", id];
  if (startCopy)
  {
    v16 = CLLocationCoordinate2DMake(latitude, longitude);
    v17 = [[CLCircularRegion alloc] initNearbyAllowedWithCenter:v15 radius:v16.latitude identifier:{v16.longitude, radius}];
    [v17 setNotifyOnEntry:1];
    [v17 setNotifyOnExit:1];
  }

  else
  {
    v17 = [[CLCircularRegion alloc] initWithCenter:v15 radius:? identifier:?];
  }

  if (v17)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10193A2B8();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      selfCopy = self;
      if (startCopy)
      {
        v19 = "starting";
      }

      else
      {
        v19 = "stopping";
      }

      *buf = 68291074;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      uTF8String3 = v19;
      self = selfCopy;
      v32 = 1040;
      *v33 = LocationLogEncryptionDataSize();
      *&v33[4] = 2098;
      *&v33[6] = LocationLogEncryptionEncryptData();
      v34 = 1040;
      v35 = LocationLogEncryptionDataSize();
      v36 = 2098;
      v37 = LocationLogEncryptionEncryptData();
      v38 = 2050;
      radiusCopy = radius;
      v40 = 2082;
      uTF8String = [client UTF8String];
      v42 = 2082;
      uTF8String2 = [id UTF8String];
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pla #zone-relevance-tracker for circular-region, monitoring:%{public, location:escape_only}s, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, radius:%{public}.3f, Client:%{public, location:escape_only}s, ZoneId:%{public, location:escape_only}s}", buf, 0x5Au);
    }

    v20 = *&self->_currentLocation.fromSimulationController;
    if (startCopy)
    {
      [v20 startMonitoringForRegion:v17];
    }

    else
    {
      [v20 stopMonitoringForRegion:v17];
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10193A2B8();
    }

    v21 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289538;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      uTF8String3 = [client UTF8String];
      v32 = 2082;
      *v33 = [id UTF8String];
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#pla #zone-relevance-tracker cannot create CircularRegion, Client:%{public, location:escape_only}s, ZoneId:%{public, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10193A2CC();
      }
    }

    v22 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      uTF8String4 = [client UTF8String];
      uTF8String5 = [id UTF8String];
      *buf = 68289538;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2082;
      uTF8String3 = uTF8String4;
      v32 = 2082;
      *v33 = uTF8String5;
      _os_signpost_emit_with_name_impl(dword_100000000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#pla #zone-relevance-tracker cannot create CircularRegion", "{msg%{public}.0s:#pla #zone-relevance-tracker cannot create CircularRegion, Client:%{public, location:escape_only}s, ZoneId:%{public, location:escape_only}s}", buf, 0x26u);
    }
  }
}

- (CLDaemonLocation)currentLocation
{
  v3 = *&self->floor;
  *&retstr->lifespan = *&self->rawCoordinate.longitude;
  retstr->rawCoordinate = v3;
  *&retstr->rawCourse = *&self->signalEnvironmentType;
  *&retstr->integrity = *(&self->ellipsoidalAltitude + 4);
  v4 = *&self->courseAccuracy;
  *&retstr->altitude = *&self->speedAccuracy;
  *&retstr->speed = v4;
  v5 = *&self->type;
  *&retstr->course = *&self->confidence;
  *&retstr->timestamp = v5;
  v6 = *&self->verticalAccuracy;
  *&retstr->suitability = *&self->horizontalAccuracy;
  *&retstr->coordinate.longitude = v6;
  return self;
}

- (void)onLeechedNotification:(int)notification withData:(NotificationData *)data
{
  v5 = *&notification;
  if (qword_1025D47A0 != -1)
  {
    sub_10193A2B8();
  }

  v7 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 68290306;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2050;
    v24 = v5;
    v25 = 1040;
    v26 = LocationLogEncryptionDataSize();
    v27 = 2098;
    v28 = LocationLogEncryptionEncryptData();
    v29 = 1040;
    v30 = LocationLogEncryptionDataSize();
    v31 = 2098;
    v32 = LocationLogEncryptionEncryptData();
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pla #zone-relevance-tracker, location notification, notification:%{public, location:CLLocationProvider_Type::Notification}lld, _currentLocation:%{public, location:Encrypted_CLClientLocation}.*P, NewLocation:%{public, location:Encrypted_CLClientLocation}.*P}", &v19, 0x3Cu);
  }

  if (v5 == 5)
  {
    if (sub_100072814(data))
    {
      if (*(data + 76) >= *(&self->_currentLocation.courseAccuracy + 4))
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10193A2CC();
        }

        v11 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19) = 0;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "#pla #zone-relevance-tracker Accepting New Location", &v19, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193A5C4();
        }

        v12 = *data;
        *&self->_currentLocation.coordinate.longitude = *(data + 1);
        *&self->_currentLocation.suitability = v12;
        v13 = *(data + 2);
        v14 = *(data + 3);
        v15 = *(data + 4);
        *&self->_currentLocation.timestamp = *(data + 5);
        *&self->_currentLocation.course = v15;
        *&self->_currentLocation.speed = v14;
        *&self->_currentLocation.altitude = v13;
        v16 = *(data + 6);
        v17 = *(data + 7);
        v18 = *(data + 8);
        *&self->_currentLocation.integrity = *(data + 140);
        *&self->_currentLocation.rawCourse = v18;
        self->_currentLocation.rawCoordinate = v17;
        *&self->_currentLocation.lifespan = v16;
        sub_10021C064(*&self->_currentLocation.ellipsoidalAltitude, &self->_currentLocation.suitability);
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10193A2CC();
        }

        v8 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v19) = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "#pla #zone-relevance-tracker stale, older than _currentLocation. Not accepting new location", &v19, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193A698();
        }
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10193A2CC();
      }

      v10 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#pla #zone-relevance-tracker invalid lat/lon. Not accepting new location", &v19, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193A4F0();
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10193A2CC();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v19 = 67240192;
      v20 = v5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#pla #zone-relevance-tracker: Unexpected notification: %{public}d", &v19, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193A3D0(v5);
    }
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 6) = 0xFFFF;
  *(self + 36) = 0;
  *(self + 28) = 0;
  *(self + 44) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(self + 60) = _Q0;
  *(self + 76) = _Q0;
  *(self + 92) = _Q0;
  *(self + 27) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0xBFF0000000000000;
  *(self + 34) = 0;
  *(self + 140) = 0xBFF0000000000000;
  *(self + 37) = 0x7FFFFFFF;
  *(self + 20) = 0;
  *(self + 21) = 0;
  *(self + 19) = 0;
  *(self + 176) = 0;
  return self;
}

@end