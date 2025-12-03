@interface CLRouteListener
- (id)initInUniverse:(id)universe withDelegate:(INotifier *)delegate;
- (void)dealloc;
- (void)disable;
- (void)enable;
- (void)logRoute:(id)route;
- (void)logState:(id)state;
- (void)logTransitRoute:(id)route;
- (void)navigationListener:(id)listener didUpdateGuidanceState:(id)state;
- (void)navigationListener:(id)listener didUpdateRouteSummary:(id)summary;
- (void)navigationListener:(id)listener didUpdateTransitSummary:(id)summary;
- (void)notifyFromLastInfo;
- (void)onDarwinNotification:(int)notification data:(id)data;
@end

@implementation CLRouteListener

- (void)enable
{
  if (self->_enabled)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019259F4();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "!_enabled";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLC: Enable CLRouteListener when already enabled, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101925AEC();
      }
    }

    v5 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "!_enabled";
      _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLC: Enable CLRouteListener when already enabled", "{msg%{public}.0s:CLC: Enable CLRouteListener when already enabled, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101925AEC();
      }
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "!_enabled";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLC: Enable CLRouteListener when already enabled, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  [(GEONavigationListener *)self->_geoNavListener setDelegate:self];
  self->_enabled = 1;
  [(GEONavigationListener *)self->_geoNavListener requestRouteSummary];
  [(GEONavigationListener *)self->_geoNavListener requestTransitSummary];
  [(GEONavigationListener *)self->_geoNavListener requestGuidanceState];
  if (qword_1025D4600 != -1)
  {
    sub_1019259F4();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLC: Enabled", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101925A08();
  }
}

- (void)notifyFromLastInfo
{
  if (self->_lastEtaInSeconds != -1.0)
  {
    v3.n128_f64[0] = CFAbsoluteTimeGetCurrent();
    v4 = self->_lastEtaInSeconds + self->_lastEtaAbsTime;
    if (v3.n128_f64[0] < v4)
    {
      v5 = v4 - v3.n128_f64[0];
      self->_lastEtaInSeconds = v5;
      *&self->_lastEtaAbsTime = v3.n128_u64[0];
      v6 = *(self->_parentNotifier->var0 + 2);
      v3.n128_f64[0] = v5;

      v6(v3);
      return;
    }

    self->_lastEtaInSeconds = -1.0;
  }

  v7 = *(self->_parentNotifier->var0 + 3);

  v7();
}

- (id)initInUniverse:(id)universe withDelegate:(INotifier *)delegate
{
  v9.receiver = self;
  v9.super_class = CLRouteListener;
  v6 = [(CLRouteListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_parentNotifier = delegate;
    v6->_universe = universe;
    v6->_silo = [universe silo];
    v7->_enabled = 0;
    *&v7->_lastEtaInSeconds = xmmword_101C75BF0;
    v7->_lastCoordinate = xmmword_101C8C320;
    v7->_geoNavListener = [[GEONavigationListener alloc] initWithQueue:{-[CLDispatchSilo queue](v7->_silo, "queue")}];
    sub_1011B7A48();
  }

  return 0;
}

- (void)dealloc
{
  [(GEONavigationListener *)self->_geoNavListener setDelegate:0];

  self->_geoNavListener = 0;
  v3.receiver = self;
  v3.super_class = CLRouteListener;
  [(CLRouteListener *)&v3 dealloc];
}

- (void)disable
{
  if (self->_enabled)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019259F4();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CLC: Disable", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101925BF8();
    }

    self->_enabled = 0;
    [(GEONavigationListener *)self->_geoNavListener setDelegate:0];
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019259F4();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning CLC: Disable CLRouteListener when already disabled, shutdown?", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101925B14();
    }
  }
}

- (void)navigationListener:(id)listener didUpdateRouteSummary:(id)summary
{
  [(CLDispatchSilo *)self->_silo assertInside];
  if (qword_1025D4600 != -1)
  {
    sub_1019259F4();
  }

  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    enabled = self->_enabled;
    v8 = [summary transportType] == 1;
    hasDestination = [summary hasDestination];
    v10 = self->_lastEtaInSeconds == -1.0;
    v18[0] = 67240960;
    v18[1] = enabled;
    v19 = 1026;
    v20 = v8;
    v21 = 1026;
    v22 = hasDestination;
    v23 = 1026;
    v24 = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLC: Received a route, %{public}d,%{public}d,%{public}d,%{public}d", v18, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101925CDC();
  }

  if (self->_enabled)
  {
    [(CLRouteListener *)self logRoute:summary];
    if ([summary transportType] == 1)
    {
      [summary travelTime];
      self->_lastEtaInSeconds = v11;
      self->_lastEtaAbsTime = CFAbsoluteTimeGetCurrent();
      if ([summary hasDestination])
      {
        [objc_msgSend(objc_msgSend(summary "destination")];
        self->_lastCoordinate.latitude = v12;
        destination = [summary destination];
      }

      else
      {
        if (![summary hasOrigin])
        {
          if (qword_1025D4600 != -1)
          {
            sub_101925AEC();
          }

          v16 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v18[0]) = 0;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning CLC: Starting route without an appoximate location", v18, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101925E14();
          }

          goto LABEL_22;
        }

        [objc_msgSend(objc_msgSend(summary "origin")];
        self->_lastCoordinate.latitude = v14;
        destination = [summary origin];
      }

      [objc_msgSend(destination "latLng")];
      self->_lastCoordinate.longitude = v15;
LABEL_22:
      parentNotifier = self->_parentNotifier;
      [summary travelTime];
      (*(parentNotifier->var0 + 2))(parentNotifier, &self->_lastCoordinate);
      return;
    }

    if (self->_lastEtaInSeconds != -1.0)
    {
      self->_lastEtaInSeconds = -1.0;
      (*(self->_parentNotifier->var0 + 3))(self->_parentNotifier);
    }
  }
}

- (void)navigationListener:(id)listener didUpdateTransitSummary:(id)summary
{
  [(CLDispatchSilo *)self->_silo assertInside];
  if (qword_1025D4600 != -1)
  {
    sub_1019259F4();
  }

  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLC: Received a transit route", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101925EF8();
  }

  if (self->_enabled)
  {
    [(CLRouteListener *)self logTransitRoute:summary];
  }
}

- (void)navigationListener:(id)listener didUpdateGuidanceState:(id)state
{
  [(CLDispatchSilo *)self->_silo assertInside];
  if (qword_1025D4600 != -1)
  {
    sub_1019259F4();
  }

  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    enabled = self->_enabled;
    v8 = [state guidanceLevel] != 2;
    hasGuidanceLevel = [state hasGuidanceLevel];
    v10 = self->_lastEtaInSeconds == -1.0;
    v17 = 67240960;
    v18 = enabled;
    v19 = 1026;
    v20 = v8;
    v21 = 1026;
    v22 = hasGuidanceLevel;
    v23 = 1026;
    v24 = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLC: Received a state change, %{public}d,%{public}d,%{public}d,%{public}d", &v17, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101925FDC();
  }

  if (self->_enabled)
  {
    [(CLRouteListener *)self logState:state];
    if (self->_lastEtaInSeconds != -1.0 && [state hasGuidanceLevel] && objc_msgSend(state, "guidanceLevel") != 2)
    {
      self->_lastEtaInSeconds = -1.0;
      (*(self->_parentNotifier->var0 + 3))(self->_parentNotifier);
    }

    if ([state hasNavigationState])
    {
      parentNotifier = self->_parentNotifier;
      navigationState = [state navigationState];
      v13 = navigationState;
      if (navigationState >= 9)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101925AEC();
        }

        v15 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
        {
          v17 = 67109120;
          v18 = v13;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "CLC: Received a unsupported GEONavigationState, %d", &v17, 8u);
        }

        v16 = sub_10000A100(121, 0);
        v14 = 0;
        if (v16)
        {
          sub_101926114(v13);
          v14 = 0;
        }
      }

      else
      {
        v14 = navigationState;
      }

      (*(parentNotifier->var0 + 4))(parentNotifier, v14);
    }
  }
}

- (void)logRoute:(id)route
{
  if ([route hasTransportType])
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019259F4();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      transportType = [route transportType];
      transportType2 = [route transportType];
      if (transportType2 >= 7)
      {
        v7 = [NSString stringWithFormat:@"(unknown: %i)", transportType2];
      }

      else
      {
        v7 = off_10246E570[transportType2];
      }

      *buf = 67174915;
      LODWORD(v15[0]) = transportType;
      WORD2(v15[0]) = 2113;
      *(v15 + 6) = v7;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLC: Route type        : %{private}d, %{private}@", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101926218(route);
    }
  }

  if ([route hasOrigin])
  {
    if (qword_1025D4600 != -1)
    {
      sub_101925AEC();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v15[0] = "Has origin";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLC: Route origin      : %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101926378();
    }
  }

  if ([route hasDestination])
  {
    if (qword_1025D4600 != -1)
    {
      sub_101925AEC();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v15[0] = "Has destination";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLC: Route destination : %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101926470();
    }
  }

  if ([route hasDestinationName])
  {
    if (qword_1025D4600 != -1)
    {
      sub_101925AEC();
    }

    v10 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      destinationName = [route destinationName];
      *buf = 138477827;
      v15[0] = destinationName;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLC: Route dest name   : %{private}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101926568(route);
    }
  }

  if ([route hasTravelTime])
  {
    if (qword_1025D4600 != -1)
    {
      sub_101925AEC();
    }

    v12 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      [route travelTime];
      *buf = 134283521;
      v15[0] = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "CLC: Route travel time : %{private}.01lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101926664(route);
    }
  }
}

- (void)logTransitRoute:(id)route
{
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  possibleStops = [route possibleStops];
  v4 = [possibleStops countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v53;
    do
    {
      v7 = 0;
      do
      {
        if (*v53 != v6)
        {
          objc_enumerationMutation(possibleStops);
        }

        v8 = *(*(&v52 + 1) + 8 * v7);
        if (qword_1025D4600 != -1)
        {
          sub_101925AEC();
        }

        v9 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLC: Transit Stop:", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101926768();
        }

        if ([v8 hasStopID])
        {
          if (qword_1025D4600 != -1)
          {
            sub_101925AEC();
          }

          v10 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            stopID = [v8 stopID];
            *buf = 134283521;
            v58 = stopID;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLC:     ID  : %{private}llu", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10192684C();
          }
        }

        if ([v8 hasCoordinate])
        {
          coordinate = [v8 coordinate];
          if (qword_1025D4600 != -1)
          {
            sub_101925AEC();
          }

          v13 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            [coordinate lat];
            *buf = 134545665;
            v58 = v14;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CLC:     LAT : %{sensitive}lf", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101926940();
          }

          if (qword_1025D4600 != -1)
          {
            sub_101925AEC();
          }

          v15 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            [coordinate lng];
            *buf = 134545665;
            v58 = v16;
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CLC:     LON : %{sensitive}lf", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101926A34();
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [possibleStops countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v5);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [route scheduledLinks];
  v17 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v49;
    v46 = 134545665;
    do
    {
      v20 = 0;
      do
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v48 + 1) + 8 * v20);
        if (qword_1025D4600 != -1)
        {
          sub_101925AEC();
        }

        v22 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CLC: Transit Link:", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101926B28();
        }

        if ([v21 hasLineID])
        {
          if (qword_1025D4600 != -1)
          {
            sub_101925AEC();
          }

          v23 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            lineID = [v21 lineID];
            *buf = 134283521;
            v58 = lineID;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "CLC:     ID  : %{private}llu", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101926C0C();
          }
        }

        if ([v21 hasScheduledDeparture])
        {
          if (qword_1025D4600 != -1)
          {
            sub_101925AEC();
          }

          v25 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            [v21 scheduledDeparture];
            *buf = 134283521;
            v58 = v26;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLC:     DEP : %{private}lf", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101926D00();
          }
        }

        if ([v21 hasScheduledArrival])
        {
          if (qword_1025D4600 != -1)
          {
            sub_101925AEC();
          }

          v27 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            [v21 scheduledArrival];
            *buf = 134283521;
            v58 = v28;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "CLC:     ARR : %{private}lf", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101926DF4();
          }
        }

        if ([v21 hasStopFrom])
        {
          if (qword_1025D4600 != -1)
          {
            sub_101925AEC();
          }

          v29 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "CLC:     Stop From :", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101926EE8();
          }

          if ([objc_msgSend(v21 "stopFrom")])
          {
            if (qword_1025D4600 != -1)
            {
              sub_101925AEC();
            }

            v30 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v31 = [objc_msgSend(v21 "stopFrom")];
              *buf = 134283521;
              v58 = v31;
              _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "CLC:         ID  : %{private}llu", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101926FCC();
            }
          }

          if ([objc_msgSend(v21 "stopFrom")])
          {
            v32 = [objc_msgSend(v21 "stopFrom")];
            if (qword_1025D4600 != -1)
            {
              sub_101925AEC();
            }

            v33 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              [v32 lat];
              *buf = v46;
              v58 = v34;
              _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "CLC:         LAT : %{sensitive}lf", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019270C4();
            }

            if (qword_1025D4600 != -1)
            {
              sub_101925AEC();
            }

            v35 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              [v32 lng];
              *buf = v46;
              v58 = v36;
              _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "CLC:         LON : %{sensitive}lf", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019271B8();
            }
          }
        }

        if ([v21 hasStopTo])
        {
          if (qword_1025D4600 != -1)
          {
            sub_101925AEC();
          }

          v37 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "CLC:     Stop To :", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019272AC();
          }

          if ([objc_msgSend(v21 "stopTo")])
          {
            if (qword_1025D4600 != -1)
            {
              sub_101925AEC();
            }

            v38 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v39 = [objc_msgSend(v21 "stopTo")];
              *buf = 134283521;
              v58 = v39;
              _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "CLC:         ID  : %{private}llu", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101927390();
            }
          }

          if ([objc_msgSend(v21 "stopFrom")])
          {
            v40 = [objc_msgSend(v21 "stopTo")];
            if (qword_1025D4600 != -1)
            {
              sub_101925AEC();
            }

            v41 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              [v40 lat];
              *buf = v46;
              v58 = v42;
              _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "CLC:         LAT : %{sensitive}lf", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019270C4();
            }

            if (qword_1025D4600 != -1)
            {
              sub_101925AEC();
            }

            v43 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              [v40 lng];
              *buf = v46;
              v58 = v44;
              _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "CLC:         LON : %{sensitive}lf", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1019271B8();
            }
          }
        }

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v18);
  }
}

- (void)logState:(id)state
{
  if ([state hasGuidanceLevel])
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019259F4();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      guidanceLevel = [state guidanceLevel];
      if (guidanceLevel >= 4)
      {
        v6 = [NSString stringWithFormat:@"(unknown: %i)", guidanceLevel];
      }

      else
      {
        v6 = off_10246E508[guidanceLevel];
      }

      *buf = 138543362;
      v14 = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLC: Guidance Level   : %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101927488(state);
    }
  }

  if ([state hasNavigationState])
  {
    if (qword_1025D4600 != -1)
    {
      sub_101925AEC();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      navigationState = [state navigationState];
      if (navigationState >= 9)
      {
        v9 = [NSString stringWithFormat:@"(unknown: %i)", navigationState];
      }

      else
      {
        v9 = off_10246E528[navigationState];
      }

      *buf = 138543362;
      v14 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLC: Navigation State : %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019275AC(state);
    }
  }

  if ([state hasTrackedTransportType])
  {
    if (qword_1025D4600 != -1)
    {
      sub_101925AEC();
    }

    v10 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      trackedTransportType = [state trackedTransportType];
      if (trackedTransportType >= 7)
      {
        v12 = [NSString stringWithFormat:@"(unknown: %i)", trackedTransportType];
      }

      else
      {
        v12 = off_10246E570[trackedTransportType];
      }

      *buf = 138477827;
      v14 = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLC: Transport Type   : %{private}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019276D0(state);
    }
  }
}

- (void)onDarwinNotification:(int)notification data:(id)data
{
  if (notification == 8)
  {
    v9 = v4;
    v10 = v5;
    if (qword_1025D4600 != -1)
    {
      sub_1019259F4();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLC: navigation stopped", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019277F4();
    }

    if (self->_lastEtaInSeconds != -1.0)
    {
      self->_lastEtaInSeconds = -1.0;
      (*(self->_parentNotifier->var0 + 3))(self->_parentNotifier);
    }
  }
}

@end