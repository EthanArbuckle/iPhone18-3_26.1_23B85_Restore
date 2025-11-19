@interface CLIndoorState
+ (DebounceParameters)getFitnessModeDebounceParamsWithOptionalAvailabilityTile:(SEL)a3;
- (CLIndoorState)init;
- (optional<std::chrono::time_point<std::chrono::steady_clock,)lastPrefetchTimestamp;
- (uint64_t)setLatestNavModeEstimate:(uint64_t)a3;
- (void)clearLocationGroups;
- (void)dealloc;
- (void)setLastIndoorError:(optional<CLIndoorError> *)a3;
- (void)setLastPrefetchTimestamp:()optional<std:(std:()std:(1000000000>>>> *)a3 :ratio<1 :chrono::duration<long)long :chrono::time_point<std::chrono::steady_clock;
- (void)setLatestPosition:(CLLastFix *)a3;
- (void)updatePrefetchParameters:(id)a3;
@end

@implementation CLIndoorState

- (CLIndoorState)init
{
  v5.receiver = self;
  v5.super_class = CLIndoorState;
  v2 = [(CLIndoorState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(&v2->_lastIndoorError.m_storage.dummy_.aligner_ + 50) = 0;
    *(&v2->_lastIndoorError.m_storage.dummy_.aligner_ + 78) = xmmword_101C65230;
    *(&v2->_lastIndoorError.m_storage.dummy_.aligner_ + 94) = 0x4085180000000000;
    *(&v2->_lastIndoorError.m_storage.dummy_.aligner_ + 102) = 200;
    *(&v2->_lastIndoorError.m_storage.dummy_.aligner_ + 110) = 200;
    *(&v2->_lastIndoorError.m_storage.dummy_.aligner_ + 118) = 0x40E86A0000000000;
    *(&v2->_lastIndoorError.m_storage.dummy_.aligner_ + 126) = 0x4049000000000000;
    *(&v2->_lastIndoorError.m_storage.dummy_.aligner_ + 142) = objc_alloc_init(CLAvailableVenuesStateMachine);
    *(&v3->_lastIndoorError.m_storage.dummy_.aligner_ + 39) = 257;
    [CLIndoorState getFitnessModeDebounceParamsWithOptionalAvailabilityTile:0];
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLIndoorState;
  [(CLIndoorState *)&v3 dealloc];
}

- (void)setLatestPosition:(CLLastFix *)a3
{
  m_initialized = self->_latestPosition.m_initialized;
  v5 = *&a3->var0.coordinate.longitude;
  v4 = *&a3->var0.altitude;
  *(&self->_latestPosition.m_storage.dummy_.aligner_ + 7) = *&a3->var0.suitability;
  *(&self->_latestPosition.m_storage.dummy_.aligner_ + 23) = v5;
  *(&self->_latestPosition.m_storage.dummy_.aligner_ + 39) = v4;
  v6 = *&a3->var0.timestamp;
  v7 = *&a3->var0.lifespan;
  v8 = *&a3->var0.course;
  *(&self->_latestPosition.m_storage.dummy_.aligner_ + 55) = *&a3->var0.speed;
  *(&self->_latestPosition.m_storage.dummy_.aligner_ + 103) = v7;
  *(&self->_latestPosition.m_storage.dummy_.aligner_ + 87) = v6;
  *(&self->_latestPosition.m_storage.dummy_.aligner_ + 71) = v8;
  v9 = *&a3->var0.referenceFrame;
  v10 = *&a3->var0.ellipsoidalAltitude;
  v11 = *&a3->var0.rawCourse;
  *(&self->_latestPosition.m_storage.dummy_.aligner_ + 119) = a3->var0.rawCoordinate;
  *(&self->_latestPosition.m_storage.dummy_.aligner_ + 167) = v10;
  *(&self->_latestPosition.m_storage.dummy_.aligner_ + 151) = v9;
  *(&self->_latestPosition.m_storage.dummy_.aligner_ + 135) = v11;
  if (!m_initialized)
  {
    self->_latestPosition.m_initialized = 1;
  }
}

- (void)setLastIndoorError:(optional<CLIndoorError> *)a3
{
  if (self->_lastIndoorError.m_storage.dummy_.data[6] == 1)
  {
    if (a3->m_initialized)
    {
      v3 = *(&a3->m_storage.dummy_.aligner_ + 7);
      *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 22) = *(&a3->m_storage.dummy_.aligner_ + 15);
      *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 14) = v3;
    }

    else
    {
      self->_lastIndoorError.m_storage.dummy_.data[6] = 0;
    }
  }

  else if (a3->m_initialized)
  {
    *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 14) = *(&a3->m_storage.dummy_.aligner_ + 7);
    self->_lastIndoorError.m_storage.dummy_.data[6] = 1;
  }
}

- (void)updatePrefetchParameters:(id)a3
{
  *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 102) = [a3 indoorPrefetchMaxFloorCount];
  *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 86) = (1000 * [a3 indoorPrefetchRadiusKM]);
  *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 118) = (1000 * [a3 indoorLocationOfInterestMergeRadiusKM]);
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v6 = *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 102);
    v7 = *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 86);
    v8 = *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 118);
    *buf = 134349568;
    v18 = v6;
    v19 = 2050;
    v20 = v7;
    v21 = 2050;
    v22 = v8;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Prefetch indoor parameters updated, maxFloors=%{public}lu radiusMeters=%{public}f clusterMergeRadius=%{public}f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLIndoorState updatePrefetchParameters:]", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  if ([a3 hasRegionalPrefetchMaxFloorCount])
  {
    *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 110) = [a3 regionalPrefetchMaxFloorCount];
    *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 94) = (1000 * [a3 regionalPrefetchRadiusKM]);
    v9 = (1000 * [a3 regionalLocationOfInterestMergeRadiusKM]);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E5C();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#warning No regional prefetch parameters found, falling back to indoor values", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101869E84();
    }

    *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 110) = *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 102);
    *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 94) = *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 86);
    v9 = *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 118);
  }

  *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 126) = v9;
  if (qword_1025D4620 != -1)
  {
    sub_101869E5C();
  }

  v11 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v12 = *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 110);
    v13 = *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 94);
    v14 = *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 126);
    *buf = 134349568;
    v18 = v12;
    v19 = 2050;
    v20 = v13;
    v21 = 2050;
    v22 = v14;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "Prefetch regional parameters updated, maxFloors=%{public}lu radiusMeters=%{public}f clusterMergeRadius=%{public}f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101869F60();
  }

  v15 = [(CLIndoorState *)self fitnessModeStateMachine];
  [CLIndoorState getFitnessModeDebounceParamsWithOptionalAvailabilityTile:a3];
  sub_10025C9DC(v15, buf);
}

- (void)clearLocationGroups
{
  if (*(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 30))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Evicting availability tiles from memory", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186A07C();
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning Availability tiles already evicted", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186A158();
    }
  }

  *(&self->_lastIndoorError.m_storage.dummy_.aligner_ + 30) = 0;
}

+ (DebounceParameters)getFitnessModeDebounceParamsWithOptionalAvailabilityTile:(SEL)a3
{
  if (a4 && ([a4 hasMotionActivityDebounceParameters] & 1) != 0)
  {
    if ([a4 hasCyclingToNonFitnessSeconds])
    {
      v6 = [a4 cyclingToNonFitnessSeconds];
    }

    else
    {
      v6 = 180;
    }

    if ([a4 hasRunningToNonFitnessSeconds])
    {
      v12 = [a4 runningToNonFitnessSeconds];
    }

    else
    {
      v12 = 180;
    }

    if ([a4 hasNonFitnessToCyclingSeconds])
    {
      v13 = [a4 nonFitnessToCyclingSeconds];
    }

    else
    {
      v13 = 10;
    }

    if ([a4 hasNonFitnessToRunningSeconds])
    {
      v11 = [a4 nonFitnessToRunningSeconds];
    }

    else
    {
      v11 = 10;
    }

    v7 = retstr;
    v8 = v6;
    v9 = v12;
    v10 = v13;
  }

  else
  {
    v7 = retstr;
    v8 = 180;
    v9 = 180;
    v10 = 10;
    v11 = 10;
  }

  return sub_10025CAE0(v7, v8, v9, v10, v11);
}

- (uint64_t)setLatestNavModeEstimate:(uint64_t)a3
{
  *(result + 368) = a3;
  *(result + 376) = a4;
  *(result + 380) = BYTE4(a4);
  return result;
}

- (optional<std::chrono::time_point<std::chrono::steady_clock,)lastPrefetchTimestamp
{
  retstr->m_initialized = 0;
  if (self[2].m_storage.dummy_.data[29] == 1)
  {
    *(&retstr->m_storage.dummy_.aligner_ + 7) = *(&self[2].m_storage.dummy_.aligner_ + 37);
    retstr->m_initialized = 1;
  }

  return self;
}

- (void)setLastPrefetchTimestamp:()optional<std:(std:()std:(1000000000>>>> *)a3 :ratio<1 :chrono::duration<long)long :chrono::time_point<std::chrono::steady_clock
{
  if (self->_lastIndoorError.m_storage.dummy_.data[174] == 1)
  {
    if (a3->m_initialized)
    {
      self->_locationGroups = *(&a3->m_storage.dummy_.aligner_ + 7);
    }

    else
    {
      self->_lastIndoorError.m_storage.dummy_.data[174] = 0;
    }
  }

  else if (a3->m_initialized)
  {
    self->_locationGroups = *(&a3->m_storage.dummy_.aligner_ + 7);
    self->_lastIndoorError.m_storage.dummy_.data[174] = 1;
  }
}

@end