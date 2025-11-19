@interface CLFenceAnalyticsHistoricalStates
- (CLDaemonLocation)currentLocation;
- (CLDaemonLocation)nMinusOneStateChangeLocation;
- (CLDaemonLocation)nMinusTwoStateChangeLocation;
- (CLFenceAnalyticsHistoricalStates)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)resetHistoricalStates;
- (void)setCurrentLocation:(CLDaemonLocation *)a3;
- (void)setNMinusOneStateChangeLocation:(CLDaemonLocation *)a3;
- (void)setNMinusTwoStateChangeLocation:(CLDaemonLocation *)a3;
- (void)updateCurrentState:(int)a3 previousState:(int)a4 location:(CLDaemonLocation *)a5 locationReceivedTime:(double)a6;
@end

@implementation CLFenceAnalyticsHistoricalStates

- (CLFenceAnalyticsHistoricalStates)init
{
  v5.receiver = self;
  v5.super_class = CLFenceAnalyticsHistoricalStates;
  v2 = [(CLFenceAnalyticsHistoricalStates *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CLFenceAnalyticsHistoricalStates *)v2 resetHistoricalStates];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFenceAnalyticsHistoricalStates;
  [(CLFenceAnalyticsHistoricalStates *)&v3 dealloc];
}

- (void)updateCurrentState:(int)a3 previousState:(int)a4 location:(CLDaemonLocation *)a5 locationReceivedTime:(double)a6
{
  v9 = *&a3;
  if ([(CLFenceAnalyticsHistoricalStates *)self currentState]!= a4)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101960B98();
    }

    v11 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      if ((v9 + 1) > 4)
      {
        v12 = "---";
      }

      else
      {
        v12 = off_10247C450[(v9 + 1)];
      }

      if ((a4 + 1) > 4)
      {
        v13 = "---";
      }

      else
      {
        v13 = off_10247C450[a4 + 1];
      }

      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#FenceMetrics Previous fence states don't match, reseting historical states, currentState %s, previousState %s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101960BAC(v9, a4);
    }

    [(CLFenceAnalyticsHistoricalStates *)self resetHistoricalStates];
  }

  if (qword_1025D4640 != -1)
  {
    sub_101960D24();
  }

  v14 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
  {
    if ((v9 + 1) > 4)
    {
      v15 = "---";
    }

    else
    {
      v15 = off_10247C450[(v9 + 1)];
    }

    if ((a4 + 1) > 4)
    {
      v16 = "---";
    }

    else
    {
      v16 = off_10247C450[a4 + 1];
    }

    lifespan_low = LODWORD(a5->lifespan);
    v18 = *(&a5->coordinate.longitude + 4);
    *buf = 136315906;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = v16;
    *&buf[22] = 1024;
    *&buf[24] = lifespan_low;
    *&buf[28] = 2048;
    *&buf[30] = v18;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#FenceMetrics updating to currentState %s, previousState %s, provider %d, accuracy %f", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4640 != -1)
    {
      sub_101960D24();
    }

    v23 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLFenceAnalyticsHistoricalStates updateCurrentState:previousState:location:locationReceivedTime:]", "%s\n", v23);
    if (v23 != buf)
    {
      free(v23);
    }
  }

  [(CLFenceAnalyticsHistoricalStates *)self setNMinusThreeState:self->_nMinusTwoState];
  [(CLFenceAnalyticsHistoricalStates *)self setNMinusTwoState:self->_nMinusOneState];
  [(CLFenceAnalyticsHistoricalStates *)self setTimeOfNMinusTwoStateChange:[(CLFenceAnalyticsHistoricalStates *)self timeOfNMinusOneStateChange]];
  [(CLFenceAnalyticsHistoricalStates *)self nMinusOneStateChangeLocation];
  v46 = v39;
  v47 = v40;
  v48[0] = *v41;
  *(v48 + 12) = *&v41[12];
  *&buf[32] = v35;
  v43 = v36;
  v44 = v37;
  v45 = v38;
  *buf = v33;
  *&buf[16] = v34;
  [(CLFenceAnalyticsHistoricalStates *)self setNMinusTwoStateChangeLocation:buf];
  [(CLFenceAnalyticsHistoricalStates *)self setNMinusOneState:[(CLFenceAnalyticsHistoricalStates *)self currentState]];
  [(CLFenceAnalyticsHistoricalStates *)self setTimeOfNMinusOneStateChange:[(CLFenceAnalyticsHistoricalStates *)self timeOfCurrentStateChange]];
  [(CLFenceAnalyticsHistoricalStates *)self currentLocation];
  v46 = v30;
  v47 = v31;
  v48[0] = *v32;
  *(v48 + 12) = *&v32[12];
  *&buf[32] = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  *buf = v24;
  *&buf[16] = v25;
  [(CLFenceAnalyticsHistoricalStates *)self setNMinusOneStateChangeLocation:buf];
  [(CLFenceAnalyticsHistoricalStates *)self setCurrentState:v9];
  [(CLFenceAnalyticsHistoricalStates *)self setTimeOfCurrentStateChange:[NSDate dateWithTimeIntervalSinceReferenceDate:a6]];
  rawCoordinate = a5->rawCoordinate;
  v46 = *&a5->lifespan;
  v47 = rawCoordinate;
  v48[0] = *&a5->rawCourse;
  *(v48 + 12) = *&a5->integrity;
  v20 = *&a5->speed;
  *&buf[32] = *&a5->altitude;
  v43 = v20;
  v21 = *&a5->timestamp;
  v44 = *&a5->course;
  v45 = v21;
  v22 = *&a5->coordinate.longitude;
  *buf = *&a5->suitability;
  *&buf[16] = v22;
  [(CLFenceAnalyticsHistoricalStates *)self setCurrentLocation:buf];
}

- (void)resetHistoricalStates
{
  *&v3 = 0x300000003;
  *(&v3 + 1) = 0x300000003;
  *&self->_currentState = v3;
  [(CLFenceAnalyticsHistoricalStates *)self setTimeOfCurrentStateChange:0];
  [(CLFenceAnalyticsHistoricalStates *)self setTimeOfNMinusOneStateChange:0];
  [(CLFenceAnalyticsHistoricalStates *)self setTimeOfNMinusTwoStateChange:0];
  *&self->_currentLocation.coordinate.longitude = xmmword_101CE6CE8;
  *&self->_currentLocation.suitability = xmmword_101CE6CD8;
  *&self->_currentLocation.speed = xmmword_101CE6D08;
  *&self->_currentLocation.altitude = xmmword_101CE6CF8;
  *&self->_currentLocation.timestamp = xmmword_101CE6D28;
  *&self->_currentLocation.course = xmmword_101CE6D18;
  *&self->_currentLocation.lifespan = xmmword_101CE6D38;
  self->_currentLocation.rawCoordinate = xmmword_101CE6D48;
  *&self->_currentLocation.rawCourse = xmmword_101CE6D58;
  *&self->_currentLocation.integrity = *(&xmmword_101CE6D58 + 12);
  *(&self->_nMinusOneStateChangeLocation.confidence + 1) = xmmword_101CE6D48;
  *(&self->_nMinusOneStateChangeLocation.type + 1) = xmmword_101CE6D58;
  *(&self->_nMinusOneStateChangeLocation.coordinate + 4) = xmmword_101CE6CF8;
  *(&self->_nMinusOneStateChangeLocation.horizontalAccuracy + 4) = xmmword_101CE6D08;
  *(&self->_nMinusOneStateChangeLocation.verticalAccuracy + 4) = xmmword_101CE6D18;
  *(&self->_nMinusOneStateChangeLocation.speedAccuracy + 4) = xmmword_101CE6D28;
  *(&self->_nMinusOneStateChangeLocation.courseAccuracy + 4) = xmmword_101CE6D38;
  *(&self->_currentLocation.signalEnvironmentType + 1) = xmmword_101CE6CD8;
  *(&self->_currentLocation.fromSimulationController + 4) = xmmword_101CE6CE8;
  *&self->_nMinusTwoStateChangeLocation.courseAccuracy = xmmword_101CE6D48;
  *&self->_nMinusTwoStateChangeLocation.confidence = xmmword_101CE6D58;
  *(&self->_nMinusTwoStateChangeLocation.lifespan + 4) = *(&xmmword_101CE6D58 + 12);
  self->_nMinusTwoStateChangeLocation.coordinate = xmmword_101CE6D08;
  *&self->_nMinusTwoStateChangeLocation.horizontalAccuracy = xmmword_101CE6D18;
  *&self->_nMinusTwoStateChangeLocation.verticalAccuracy = xmmword_101CE6D28;
  *&self->_nMinusTwoStateChangeLocation.speedAccuracy = xmmword_101CE6D38;
  *&self->_nMinusOneStateChangeLocation.rawCoordinate.longitude = *(&xmmword_101CE6D58 + 12);
  *&self->_nMinusOneStateChangeLocation.floor = xmmword_101CE6CD8;
  *&self->_nMinusOneStateChangeLocation.signalEnvironmentType = xmmword_101CE6CE8;
  *&self->_nMinusOneStateChangeLocation.fromSimulationController = xmmword_101CE6CF8;
  self->_timeToInitialStateChange = -1.0;
}

- (CLDaemonLocation)currentLocation
{
  v3 = *&self->fromSimulationController;
  *&retstr->lifespan = *&self->signalEnvironmentType;
  retstr->rawCoordinate = v3;
  *&retstr->rawCourse = self[1].coordinate;
  *&retstr->integrity = *(&self[1].coordinate.longitude + 4);
  v4 = *&self->type;
  *&retstr->altitude = *&self->confidence;
  *&retstr->speed = v4;
  v5 = *&self->floor;
  *&retstr->course = *&self->rawCoordinate.longitude;
  *&retstr->timestamp = v5;
  v6 = *&self->courseAccuracy;
  *&retstr->suitability = *&self->speedAccuracy;
  *&retstr->coordinate.longitude = v6;
  return self;
}

- (void)setCurrentLocation:(CLDaemonLocation *)a3
{
  v3 = *&a3->suitability;
  *&self->_currentLocation.coordinate.longitude = *&a3->coordinate.longitude;
  *&self->_currentLocation.suitability = v3;
  v4 = *&a3->altitude;
  v5 = *&a3->speed;
  v6 = *&a3->course;
  *&self->_currentLocation.timestamp = *&a3->timestamp;
  *&self->_currentLocation.course = v6;
  *&self->_currentLocation.speed = v5;
  *&self->_currentLocation.altitude = v4;
  v7 = *&a3->lifespan;
  rawCoordinate = a3->rawCoordinate;
  v9 = *&a3->rawCourse;
  *&self->_currentLocation.integrity = *&a3->integrity;
  *&self->_currentLocation.rawCourse = v9;
  self->_currentLocation.rawCoordinate = rawCoordinate;
  *&self->_currentLocation.lifespan = v7;
}

- (CLDaemonLocation)nMinusOneStateChangeLocation
{
  *&retstr->integrity = *&self[2].suitability;
  v3 = *(&self[1].course + 4);
  v4 = *(&self[1].speed + 4);
  *&retstr->suitability = *(&self[1].altitude + 4);
  *&retstr->coordinate.longitude = v4;
  v5 = *&self[1].rawReferenceFrame;
  v6 = *(&self[1].ellipsoidalAltitude + 4);
  v7 = *(&self[1].rawCoordinate + 4);
  *&retstr->lifespan = *(&self[1].rawCourse + 4);
  retstr->rawCoordinate = v5;
  *&retstr->rawCourse = v6;
  v8 = *(&self[1].timestamp + 4);
  v9 = *(&self[1].lifespan + 4);
  *&retstr->altitude = v3;
  *&retstr->speed = v8;
  *&retstr->course = v9;
  *&retstr->timestamp = v7;
  return self;
}

- (void)setNMinusOneStateChangeLocation:(CLDaemonLocation *)a3
{
  v3 = *&a3->suitability;
  *(&self->_currentLocation.fromSimulationController + 4) = *&a3->coordinate.longitude;
  *(&self->_currentLocation.signalEnvironmentType + 1) = v3;
  v4 = *&a3->altitude;
  v5 = *&a3->speed;
  v6 = *&a3->timestamp;
  *(&self->_nMinusOneStateChangeLocation.verticalAccuracy + 4) = *&a3->course;
  *(&self->_nMinusOneStateChangeLocation.speedAccuracy + 4) = v6;
  *(&self->_nMinusOneStateChangeLocation.horizontalAccuracy + 4) = v5;
  *(&self->_nMinusOneStateChangeLocation.coordinate + 4) = v4;
  v7 = *&a3->lifespan;
  rawCoordinate = a3->rawCoordinate;
  v9 = *&a3->rawCourse;
  *&self->_nMinusOneStateChangeLocation.rawCoordinate.longitude = *&a3->integrity;
  *(&self->_nMinusOneStateChangeLocation.confidence + 1) = rawCoordinate;
  *(&self->_nMinusOneStateChangeLocation.type + 1) = v9;
  *(&self->_nMinusOneStateChangeLocation.courseAccuracy + 4) = v7;
}

- (CLDaemonLocation)nMinusTwoStateChangeLocation
{
  v3 = *&self[2].rawCourse;
  *&retstr->lifespan = self[2].rawCoordinate;
  retstr->rawCoordinate = v3;
  *&retstr->rawCourse = *&self[2].referenceFrame;
  v4 = *&self[2].course;
  *&retstr->altitude = *&self[2].speed;
  *&retstr->speed = v4;
  v5 = *&self[2].lifespan;
  *&retstr->course = *&self[2].timestamp;
  *&retstr->timestamp = v5;
  v6 = *&self[2].altitude;
  *&retstr->suitability = *&self[2].coordinate.longitude;
  *&retstr->coordinate.longitude = v6;
  *&retstr->integrity = *(&self[2].signalEnvironmentType + 1);
  return self;
}

- (void)setNMinusTwoStateChangeLocation:(CLDaemonLocation *)a3
{
  v3 = *&a3->coordinate.longitude;
  *&self->_nMinusOneStateChangeLocation.floor = *&a3->suitability;
  *&self->_nMinusOneStateChangeLocation.signalEnvironmentType = v3;
  v4 = *&a3->altitude;
  v5 = *&a3->speed;
  v6 = *&a3->timestamp;
  *&self->_nMinusTwoStateChangeLocation.horizontalAccuracy = *&a3->course;
  *&self->_nMinusTwoStateChangeLocation.verticalAccuracy = v6;
  *&self->_nMinusOneStateChangeLocation.fromSimulationController = v4;
  self->_nMinusTwoStateChangeLocation.coordinate = v5;
  v7 = *&a3->lifespan;
  rawCoordinate = a3->rawCoordinate;
  v9 = *&a3->rawCourse;
  *(&self->_nMinusTwoStateChangeLocation.lifespan + 4) = *&a3->integrity;
  *&self->_nMinusTwoStateChangeLocation.courseAccuracy = rawCoordinate;
  *&self->_nMinusTwoStateChangeLocation.confidence = v9;
  *&self->_nMinusTwoStateChangeLocation.speedAccuracy = v7;
}

- (id).cxx_construct
{
  *(self + 14) = 0xFFFF;
  *(self + 68) = 0;
  *(self + 60) = 0;
  *(self + 76) = xmmword_101C75BF0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(self + 92) = _Q1;
  *(self + 108) = _Q1;
  *(self + 124) = _Q1;
  *(self + 35) = 0;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 18) = 0xBFF0000000000000;
  *(self + 42) = 0;
  *(self + 172) = 0xBFF0000000000000;
  *(self + 45) = 0x7FFFFFFF;
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 23) = 0;
  *(self + 208) = 0;
  *(self + 53) = 0xFFFF;
  *(self + 27) = 0;
  *(self + 28) = 0;
  *(self + 232) = xmmword_101C75BF0;
  *(self + 248) = _Q1;
  *(self + 33) = 0xBFF0000000000000;
  *(self + 17) = _Q1;
  *(self + 36) = 0xBFF0000000000000;
  *(self + 74) = 0;
  *(self + 300) = 0xBFF0000000000000;
  *(self + 81) = 0;
  *(self + 308) = 0;
  *(self + 316) = 0;
  *(self + 41) = 0xBFF0000000000000;
  *(self + 84) = 0x7FFFFFFF;
  *(self + 356) = 0;
  *(self + 340) = 0;
  *(self + 348) = 0;
  *(self + 364) = 0;
  *(self + 92) = 0xFFFF;
  *(self + 380) = 0;
  *(self + 372) = 0;
  *(self + 388) = xmmword_101C75BF0;
  *(self + 404) = _Q1;
  *(self + 420) = _Q1;
  *(self + 436) = _Q1;
  *(self + 113) = 0;
  *(self + 120) = 0;
  *(self + 57) = 0xBFF0000000000000;
  *(self + 58) = 0;
  *(self + 59) = 0;
  *(self + 484) = 0xBFF0000000000000;
  *(self + 123) = 0x7FFFFFFF;
  *(self + 62) = 0;
  *(self + 63) = 0;
  *(self + 64) = 0;
  *(self + 520) = 0;
  return self;
}

@end