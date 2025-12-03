@interface CLIndoorProvider
+ (id)getAvailabilityTilePathFromWorkdir:(id)workdir;
+ (id)makeReason:(id)reason withCode:(int64_t)code withFailure:(id)failure;
+ (id)makeReason:(id)reason withCode:(int64_t)code withInfo:(id)info;
- (BOOL)onQueueProcessCompletedFetch:(id)fetch;
- (CLIndoorProvider)init;
- (CLIndoorProvider)initWithConnection:(id)connection;
- (CLIndoorTilePrefetcher)prefetcher;
- (NSXPCConnection)xpcConnection;
- (id).cxx_construct;
- (id)getAvailabilityTileParserAndSetParams:(id)params;
- (id)initializeServiceApi;
- (id)locationRequests:(id)requests usingAvailabilityTile:(const void *)tile forAction:(unsigned __int8)action;
- (optional<SelectedLocations>)selectedLocation;
- (shared_ptr<ITileDb>)fsDb;
- (void)changeLocationGroups:(id)groups;
- (void)clVisionNotificationARSessionStateAvailable:(id)available;
- (void)clVisionNotificationAvailable:(id)available;
- (void)clVisionNotificationVIOEstimationAvailable:(id)available;
- (void)clVisionNotificationVLLocalizationResultAvailable:(id)available;
- (void)clpOutdoorEstimatorLogEntryNotificationAvailable:(id)available;
- (void)dealloc;
- (void)foregroundRequestCompleted:(id)completed;
- (void)foregroundRequestCompleted:(id)completed withError:(id)error;
- (void)foregroundTileDownloadComplete;
- (void)gpsEstimateAvailable:(id)available;
- (void)gpsSignalQualityAvailable:(id)available;
- (void)initializeIndoorUniverse:(id)universe atLocation:(id)location;
- (void)mutableDeferredState;
- (void)notify:(id)notify failedWithReason:(id)reason;
- (void)notifyProxyOfDownloadError;
- (void)notifyProxyOfDownloadError:(id)error;
- (void)onConnectionQueueShutdown;
- (void)onQueueInterruptDownloads:(int)downloads;
- (void)onQueueLocalizeOnSelection:(const void *)selection withParameterOverrides:(optional<proto::params::LocalizerParameters>)overrides;
- (void)onQueueNotify:(const void *)notify onFloor:(const void *)floor;
- (void)onQueueNotifyLocationContext:(BOOL)context withLocationContext:(int)locationContext;
- (void)onQueueSelectedLocationDownloadCompleted:(const void *)completed forAction:(unsigned __int8)action;
- (void)outdoorLocationAvailable:(id)available;
- (void)playbackDatarun:(id)datarun;
- (void)requestForegroundTileDownload;
- (void)requestLocationTilesForGroup:(id)group usingAvailabilityTile:(const void *)tile forAction:(unsigned __int8)action;
- (void)setApiKey:(id)key;
- (void)setApiKey:(id)key onServer:(id)server;
- (void)setFsDb:(shared_ptr<ITileDb>)db;
- (void)setLocationGroups:(id)groups;
- (void)setSelectedLocation:(optional<SelectedLocations>)location;
- (void)startLocalizer;
- (void)startUpdatingLocationAtLocation:(id)location;
- (void)startUpdatingLocationDeferred:(id)deferred;
- (void)stopLocalizer;
- (void)updateUniverseIfAllowedAndNecessary:(id *)necessary;
@end

@implementation CLIndoorProvider

- (id).cxx_construct
{
  self->_deferredState.m_initialized = 0;
  self->_possibleLocationObserver.m_initialized = 0;
  self->_params.m_initialized = 0;
  self->_floorEnvironmentLoader.__ptr_ = 0;
  self->_serviceLocalizer.__ptr_ = 0;
  self->_simulation.m_initialized = 0;
  self->_platformInfo = 0u;
  self->_eventBuses = 0u;
  self->_localizationSensorCollection = 0u;
  self->_scanPriorityObserver = 0u;
  self->_localizerObserver.m_initialized = 0;
  self->_sensorLogger.__ptr_ = 0;
  self->_sensorLogger.__cntrl_ = 0;
  self->_paramOverrides.m_initialized = 0;
  self->_localizationSessionMetrics._vptr$ILocalizerInputEventReceiver = off_10044AED0;
  *&self->_localizationSessionMetrics.sessionStartTimeNanos.__rep_ = 0u;
  *&self->_localizationSessionMetrics.ttffNanos.__rep_ = 0u;
  *&self->_localizationSessionMetrics.numOfIndoorFixes = 0u;
  *&self->_localizationSessionMetrics.numOfIncomingVIOEstimates = 0u;
  self->_sensorMetricsObserver = 0u;
  *&self->_localizationSessionMetrics.avgNumOfSelectedLocations = 0u;
  v6 = sub_100003CCC();
  v7 = v3;
  v4 = sub_100003CDC(&v6, &v7 + 1);
  sub_100005C88(&self->_pipelinedFixCrossCheckMetrics, v4);
  self->_selectedLocation.m_initialized = 0;
  self->_fsDb = 0u;
  return self;
}

- (CLIndoorProvider)init
{
  [(CLIndoorProvider *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CLIndoorProvider)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v55.receiver = self;
  v55.super_class = CLIndoorProvider;
  v5 = [(CLIndoorProvider *)&v55 init];
  if (v5)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v6 = qword_10045B078;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      serviceName = [connectionCopy serviceName];
      v8 = serviceName;
      uTF8String = [serviceName UTF8String];
      processIdentifier = [connectionCopy processIdentifier];
      *buf = 136315394;
      *&buf[4] = uTF8String;
      *&buf[12] = 1024;
      *&buf[14] = processIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Initting w/ NSXPCConnection serviceName = %s pid = %d", buf, 0x12u);
    }

    objc_storeWeak(&v5->_xpcConnection, connectionCopy);
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v11 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Creating indoor service provider instance %p", buf, 0xCu);
    }

    latestFix = v5->_latestFix;
    v5->_latestFix = 0;

    *buf = sub_100005F30();
    *&buf[8] = v13;
    v5->_prefetchFloorLimitIndoor = sub_100005C94(buf, &buf[12]);
    *buf = sub_100005F40();
    *&buf[8] = v14;
    v5->_prefetchByteSizeLimitIndoor = sub_100005C94(buf, &buf[12]);
    *buf = sub_100005F54();
    *&buf[8] = v15;
    v5->_prefetchFloorLimitRegional = sub_100005C94(buf, &buf[12]);
    *buf = sub_100005F64();
    *&buf[8] = v16;
    v5->_prefetchByteSizeLimitRegional = sub_100005C94(buf, &buf[12]);
    *buf = sub_100006214();
    *&buf[8] = v17;
    v5->_numOfDaysBeforeIndoorTileRedownload = sub_100005F78(buf, &buf[12]);
    *buf = sub_100006224();
    *&buf[8] = v18;
    v5->_numOfDaysBeforeRegionalTileRedownload = sub_100005F78(buf, &buf[12]);
    v19 = sub_100006234();
    sub_100003AE8(v19);
    v20 = *buf;
    sub_100005B18(buf);
    if (v20 == v20 >> 31)
    {
      v5->_isRegionalEnabled = sub_100007F9C();
      if (qword_10045B070 != -1)
      {
        sub_100387B98();
      }

      v21 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        isRegionalEnabled = v5->_isRegionalEnabled;
        *buf = 67109120;
        *&buf[4] = isRegionalEnabled;
        v23 = "Regional enabled %d";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v23, buf, 8u);
      }
    }

    else
    {
      *buf = sub_100006234();
      buf[8] = v24;
      LOBYTE(to) = 0;
      v5->_isRegionalEnabled = sub_100008F80(buf, &to) & 1;
      if (qword_10045B070 != -1)
      {
        sub_100387B98();
      }

      v21 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        v25 = v5->_isRegionalEnabled;
        *buf = 67109120;
        *&buf[4] = v25;
        v23 = "WARNING: Regional enabled overriden %d";
        goto LABEL_19;
      }
    }

    v26 = sub_100007FA8();
    v27 = sub_1000080C0();
    v28 = atomic_load(v27 + 26);
    if ((v28 & 1) == 0 && (v27[2] & 1) == 0)
    {
      v29 = v27;
      v30 = sub_100005F78(v27, v27 + 3);
      v27 = v29;
      *(v29 + 5) = v30;
      *(v29 + 16) = 1;
      atomic_store(1u, v29 + 26);
    }

    sub_100007FE8(v26, *(v27 + 5));
    v31 = sub_100007FA8();
    *buf = sub_100008250();
    *&buf[8] = v32;
    v33 = sub_100005C94(buf, &buf[12]);
    sub_100008F78(v31, v33);
    *buf = sub_10000AEA0();
    *&buf[8] = v34;
    if (sub_100008F80(buf, &buf[9]))
    {
      v35 = sub_100007FA8();
      sub_10000AEB0(v35, 2);
    }

    *buf = sub_100009DF8();
    *&buf[8] = v36;
    if (sub_100005C94(buf, &buf[12]) >= 1)
    {
      to = sub_10000AEA0();
      LOWORD(_queue) = v37;
      if ((sub_100008F80(&to, &_queue + 1) & 1) == 0)
      {
        v38 = sub_100007FA8();
        sub_10000AEB0(v38, 3);
      }
    }

    objc_initWeak(&location, v5);
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3321888768;
    v50[2] = sub_100356E80;
    v50[3] = &unk_10044B168;
    objc_copyWeak(&to, &location);
    _queue = [connectionCopy _queue];
    objc_copyWeak(v51, &to);
    v51[1] = _queue;
    *buf = off_10044B338;
    v39 = objc_retainBlock(v50);
    if (v5->_localizerObserver.m_initialized)
    {
      *&buf[8] = 0;
      v40 = *&v5->_anon_d1[7];
      *&v5->_anon_d1[7] = v39;

      v41 = *&buf[8];
    }

    else
    {
      v41 = 0;
      *&buf[8] = 0;
      *(&v5->_localizerObserver.m_storage.dummy_.aligner_ + 7) = off_10044B338;
      *&v5->_anon_d1[7] = v39;
      v5->_localizerObserver.m_initialized = 1;
    }

    objc_destroyWeak(&to);
    objc_initWeak(&from, v5);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3321888768;
    v47[2] = sub_100357110;
    v47[3] = &unk_10044B198;
    objc_copyWeak(&to, &from);
    _queue = [connectionCopy _queue];
    objc_copyWeak(v48, &to);
    v48[1] = _queue;
    *buf = off_10044B3B8;
    v42 = objc_retainBlock(v47);
    if (v5->_possibleLocationObserver.m_initialized)
    {
      *&buf[8] = 0;
      v43 = *&v5->_anon_e9[7];
      *&v5->_anon_e9[7] = v42;

      v44 = *&buf[8];
    }

    else
    {
      v44 = 0;
      *&buf[8] = 0;
      *(&v5->_possibleLocationObserver.m_storage.dummy_.aligner_ + 7) = off_10044B3B8;
      *&v5->_anon_e9[7] = v42;
      v5->_possibleLocationObserver.m_initialized = 1;
    }

    objc_destroyWeak(&to);
    objc_initWeak(&v46, v5);
    objc_copyWeak(&to, &v46);
    _queue = [connectionCopy _queue];
    operator new();
  }

  return 0;
}

- (void)mutableDeferredState
{
  if (!self->_deferredState.m_initialized)
  {
    *(&self->_deferredState.m_storage.dummy_.aligner_ + 7) = 0;
    self->_anon_11[7] = 0;
    self->_deferredState.m_initialized = 1;
  }

  return &self->_deferredState.m_storage.dummy_.aligner_ + 7;
}

- (void)setFsDb:(shared_ptr<ITileDb>)db
{
  ptr = db.__ptr_;
  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
  }

  v5 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    v6 = *ptr != 0;
    *buf = 67240192;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[CLIndoorProvider] Keybag unlock, FsDb, %{public}d", buf, 8u);
  }

  v7 = self->_fsDb.__ptr_;
  v8 = *ptr;
  if (v7 && v7 != v8)
  {
    sub_1000474A4(buf, "");
    sub_1002114B8("Cannot change the localizer DB being used", &v18);
    sub_100383AA4(&v18, __p, buf);
    sub_10003F5D0(__p);
  }

  v9 = *(ptr + 1);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  self->_fsDb.__ptr_ = v8;
  cntrl = self->_fsDb.__cntrl_;
  self->_fsDb.__cntrl_ = v9;
  if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*cntrl + 16))(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
    if (!self->_deferredState.m_initialized)
    {
      return;
    }
  }

  else if (!self->_deferredState.m_initialized)
  {
    return;
  }

  xpcConnection = [(CLIndoorProvider *)self xpcConnection];
  if (xpcConnection)
  {
    *buf = *(&self->_deferredState.m_storage.dummy_.aligner_ + 7);
    v14 = 0;
    if (self->_anon_11[7] == 1)
    {
      v15 = *&self->_anon_11[15];
      if (self->_anon_11[46] < 0)
      {
        sub_100003228(&v16, *&self->_anon_11[23], *&self->_anon_11[31]);
      }

      else
      {
        v16 = *&self->_anon_11[23];
        v17 = *&self->_anon_11[39];
      }

      v14 = 1;
    }

    if (self->_deferredState.m_initialized)
    {
      if (self->_anon_11[7] == 1)
      {
        sub_100364D88(&self->_anon_11[15]);
        self->_anon_11[7] = 0;
      }

      self->_deferredState.m_initialized = 0;
    }

    if (*buf)
    {
      [(CLIndoorProvider *)self playbackDatarun:?];
    }

    if (v14 == 1)
    {
      if (!self->_lastOutdoorPositionAvailable || ([(CLIndoorProvider *)self startUpdatingLocationDeferred:?], (v14 & 1) != 0))
      {
        sub_100364D88(&v15);
        v14 = 0;
      }
    }
  }
}

- (void)onQueueNotify:(const void *)notify onFloor:(const void *)floor
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  if (WeakRetained && self->_localizationActive)
  {
    v8 = sub_100356144(*(notify + 131));
    sub_10034BD8C(&self->_pipelinedFixCrossCheckMetrics.fSamplingFactor, notify, v8, self->_lastGpsPositionAvailable, self->_lastGpsReceivedTime.__rep_, floor);
    v9 = sub_100356144(*(notify + 131));
    sub_10034BD8C(&self->_pipelinedFixCrossCheckMetrics.fSamplingFactor, notify, v9, self->_lastNonGpsPositionAvailable, self->_lastNonGpsReceivedTime.__rep_, floor);
    v10 = sub_10010C670();
    if (*(notify + 131) == 4)
    {
      if (self->_lastGpsPositionAvailable)
      {
        v11 = v10;
        rep = self->_lastGpsReceivedTime.__rep_;
        if ((v10 - rep) / 1000000000.0 < sub_10025137C(&self->_params.m_storage.dummy_.aligner_ + 7))
        {
          v17 = [CLIndoorLocation fromPoseEstimate:notify andGpsEstimate:self->_lastGpsPositionAvailable];
LABEL_16:
          v18 = v17;
          if (!v17)
          {
            remoteObjectProxy = [NSError errorWithDomain:@"com.apple.pipelined" code:-1 userInfo:&__NSDictionary0__struct];
            [(CLIndoorProvider *)self notify:WeakRetained failedWithReason:remoteObjectProxy];
LABEL_35:

            goto LABEL_36;
          }

          ptr = self->_sensorLogger.__ptr_;
          if (ptr)
          {
            sub_1000CF258(ptr, notify);
          }

          remoteObjectProxy = [WeakRetained remoteObjectProxy];
          v21 = *(notify + 74);
          if ((v21 - 1) < 3)
          {
            goto LABEL_20;
          }

          if (v21)
          {
            if (v21 == 4)
            {
              if (qword_10045B070 != -1)
              {
                sub_100387B98();
              }

              v22 = qword_10045B078;
              if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Illegal yieldStatus emitted from localizer. We should never receive YIELD_DATA_MISSING. It means we forgot to set yieldStatus...", buf, 2u);
              }

LABEL_20:
              if ((*(notify + 755) & 0x20) != 0)
              {
                if (!*(notify + 75))
                {
                  [remoteObjectProxy indoorGivesUpWithLocation:0];
                }
              }

              else
              {
                [remoteObjectProxy indoorIsUncertainWithLocation:0];
              }
            }

LABEL_34:
            objc_storeStrong(&self->_latestFix, v18);
            goto LABEL_35;
          }

          [v18 location];
          [v18 location];
          v23 = v34;
          [v18 location];
          if (v23 > 0.0)
          {
            [remoteObjectProxy indoorDidUpdateToLocation:v18 fromLocation:self->_latestFix];
            [v18 location];
            [(CLIndoorProvider *)self updateUniverseIfAllowedAndNecessary:buf];
            sub_10034DA20(&self->_localizationSessionMetrics, notify);
            goto LABEL_34;
          }

          sub_1000474A4(v26, "");
          sub_1003675F4("lifespan = ", &v35);
          sub_1000DE42C(&v24, &v36);
          sub_1000E661C(v26, &v35, 2);
          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_39:
              if ((v27 & 0x80000000) == 0)
              {
                goto LABEL_40;
              }

LABEL_43:
              operator delete(v26[0]);
LABEL_40:
              sub_10003F5D0(&__p);
            }
          }

          else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_39;
          }

          operator delete(v35.__r_.__value_.__l.__data_);
          if ((v27 & 0x80000000) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_43;
        }

        if (qword_10045B070 != -1)
        {
          sub_100387BC0();
        }

        v13 = qword_10045B078;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = sub_10025137C(&self->_params.m_storage.dummy_.aligner_ + 7);
          v15 = self->_lastGpsReceivedTime.__rep_;
          *buf = 134218496;
          v29 = v14;
          v30 = 2048;
          v31 = v15;
          v32 = 2048;
          v33 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Yielding Wifi2 but available GPS's time mismatch is more than %f seconds (GPS timestamp: %llu, Current time: %llu), therefore not copying GPS fields...", buf, 0x20u);
        }
      }

      else
      {
        if (qword_10045B070 != -1)
        {
          sub_100387BC0();
        }

        v16 = qword_10045B078;
        if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Yielding Wifi2 but no GPS available yet, therefore not copying GPS fields...", buf, 2u);
        }
      }
    }

    v17 = [CLIndoorLocation fromPoseEstimate:notify];
    goto LABEL_16;
  }

LABEL_36:
}

- (void)onQueueNotifyLocationContext:(BOOL)context withLocationContext:(int)locationContext
{
  if (locationContext == 1)
  {
    v5 = sub_10033987C();
    v6 = atomic_load(v5 + 26);
    if (v6 & 1) != 0 || (v5[2])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = sub_1000080C0();
    v7 = atomic_load(v5 + 26);
    if (v7 & 1) != 0 || (v5[2])
    {
      goto LABEL_8;
    }
  }

  v8 = v5;
  v9 = sub_100005F78(v5, v5 + 3);
  v5 = v8;
  *(v8 + 5) = v9;
  *(v8 + 16) = 1;
  atomic_store(1u, v8 + 26);
LABEL_8:
  v10 = *(v5 + 5);
  v11 = sub_100007FA8();
  if (sub_1002FA9E4(v11) != v10)
  {
    v12 = sub_100007FA8();
    sub_100007FE8(v12, v10);
    ++self->_localizationSessionMetrics.numOfLocationContextChange;
  }
}

- (void)dealloc
{
  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
  }

  v3 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "dealloc start", buf, 2u);
  }

  [(CLIndoorProvider *)self onQueueInvalidate:1];
  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v4 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Connection state %p invalidated", buf, 0xCu);
  }

  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v5 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "dealloc end", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = CLIndoorProvider;
  [(CLIndoorProvider *)&v6 dealloc];
}

- (void)onConnectionQueueShutdown
{
  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
  }

  v3 = qword_10045B078;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = +[CLIndoorServiceDelegate versionString];
    v10 = 136315138;
    uTF8String = [v4 UTF8String];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Request to shutdown %s", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  _queue = [WeakRetained _queue];
  v7 = _queue;
  if (_queue)
  {
    dispatch_assert_queue_V2(_queue);
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v8 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Processing shutdown request", &v10, 2u);
    }

    [(CLIndoorProvider *)self onQueueInvalidate:0];
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v9 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Already shut down?", &v10, 2u);
    }
  }
}

- (void)setApiKey:(id)key
{
  keyCopy = key;
  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
    v4 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
  {
LABEL_3:
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "This API is unused", v5, 2u);
  }

LABEL_4:
}

- (void)setApiKey:(id)key onServer:(id)server
{
  keyCopy = key;
  serverCopy = server;
  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
    v7 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
  {
LABEL_3:
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "This API is unused", v8, 2u);
  }

LABEL_4:
}

- (void)notifyProxyOfDownloadError
{
  v3 = [CLIndoorProvider makeReason:@"download request failed" withCode:2 withFailure:0];
  [(CLIndoorProvider *)self notifyProxyOfDownloadError:?];
}

- (void)notifyProxyOfDownloadError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  _queue = [WeakRetained _queue];

  if (!_queue)
  {
    if (qword_10045B070 == -1)
    {
      v10 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_100387BC0();
      v10 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }
    }

    LOWORD(location) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "No queue so unable to notify proxy of download error", &location, 2u);
    goto LABEL_6;
  }

  location = sub_1000DD590();
  v15 = v7;
  v8 = sub_100005C94(&location, &v15 + 1);
  v9 = dispatch_time(0, (v8 * 1000000000.0));
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100358998;
  v11[3] = &unk_10044B1D0;
  objc_copyWeak(&v13, &location);
  v12 = errorCopy;
  dispatch_after(v9, _queue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
LABEL_6:
}

- (void)notify:(id)notify failedWithReason:(id)reason
{
  reasonCopy = reason;
  remoteObjectProxy = [notify remoteObjectProxy];
  [remoteObjectProxy indoorDidFailWithError:reasonCopy];
}

+ (id)makeReason:(id)reason withCode:(int64_t)code withFailure:(id)failure
{
  reasonCopy = reason;
  failureCopy = failure;
  v10 = failureCopy;
  if (failureCopy)
  {
    v14 = NSLocalizedFailureReasonErrorKey;
    v15 = failureCopy;
    v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  }

  else
  {
    v11 = &__NSDictionary0__struct;
  }

  v12 = [self makeReason:reasonCopy withCode:code withInfo:v11];

  return v12;
}

+ (id)makeReason:(id)reason withCode:(int64_t)code withInfo:(id)info
{
  reasonCopy = reason;
  infoCopy = info;
  v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [infoCopy count] + 1);
  [v9 setObject:reasonCopy forKey:NSLocalizedDescriptionKey];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = infoCopy;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v10 objectForKeyedSubscript:{v14, v18}];
        [v9 setObject:v15 forKey:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [NSError errorWithDomain:@"com.apple.pipelined" code:code userInfo:v9];

  return v16;
}

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    goto LABEL_6;
  }

  if (qword_10045B070 == -1)
  {
    v5 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100387BC0();
  v5 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
  {
LABEL_5:
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "request to login, but connection to client is dead", v7, 2u);
  }

LABEL_6:

  return v3;
}

+ (id)getAvailabilityTilePathFromWorkdir:(id)workdir
{
  uRLByDeletingLastPathComponent = [workdir URLByDeletingLastPathComponent];
  v4 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"locationd/indoor_tiles/availability.pb"];

  return v4;
}

- (id)getAvailabilityTileParserAndSetParams:(id)params
{
  paramsCopy = params;
  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
  }

  v5 = qword_10045B078;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14[0] = [paramsCopy UTF8String];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "@IndoorAvl, load, getAvailabilityTileParserAndSetParams because %s", buf, 0xCu);
  }

  v6 = [CLAvailabilityTileParser alloc];
  workdir = [(CLIndoorProvider *)self workdir];
  v8 = [CLIndoorProvider getAvailabilityTilePathFromWorkdir:workdir];
  v9 = [(CLAvailabilityTileParser *)v6 initWithTilePathIncrementalIO:v8];

  if (v9)
  {
    sub_100170224([(CLAvailabilityTileParser *)v9 getAvlTile], buf);
    if (self->_paramOverrides.m_initialized)
    {
      if (buf[0])
      {
        sub_10015511C(&self->_paramOverrides.m_storage.dummy_.aligner_ + 7, v14 + 4);
        goto LABEL_13;
      }

      sub_10014E2CC((&self->_paramOverrides.m_storage.dummy_.aligner_ + 7));
      v10 = 0;
    }

    else
    {
      if (!buf[0])
      {
        goto LABEL_13;
      }

      sub_10014DE18(&self->_paramOverrides.m_storage.dummy_.aligner_ + 7, v14 + 4);
      v10 = 1;
    }

    self->_paramOverrides.m_initialized = v10;
LABEL_13:
    if (buf[0] == 1)
    {
      sub_10014E2CC((v14 + 4));
    }

    v12 = off_10044B408;
    sub_100250ABC(buf, &v12, &self->_paramOverrides.m_initialized);
  }

  return 0;
}

- (id)locationRequests:(id)requests usingAvailabilityTile:(const void *)tile forAction:(unsigned __int8)action
{
  actionCopy = action;
  requestsCopy = requests;
  v69 = +[NSMutableArray array];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = requestsCopy;
  v64 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
  if (v64)
  {
    v73 = 0;
    v62 = *v87;
    while (1)
    {
      for (i = 0; i != v64; i = i + 1)
      {
        if (*v87 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v86 + 1) + 8 * i);
        v70 = v6;
        if (v6)
        {
          [v6 ps_STLString];
        }

        else
        {
          v83 = 0;
          v84 = 0;
          v85 = 0;
        }

        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v66 = *(tile + 1);
        v7 = [v66 countByEnumeratingWithState:&v79 objects:v98 count:16];
        if (v7)
        {
          v68 = *v80;
          do
          {
            v67 = v7;
            for (j = 0; j != v67; j = j + 1)
            {
              if (*v80 != v68)
              {
                objc_enumerationMutation(v66);
              }

              v9 = *(*(&v79 + 1) + 8 * j);
              v10 = v9;
              if (v9)
              {
                [v9 getGroupId];
                v11 = HIBYTE(v78);
                v12 = v77;
              }

              else
              {
                v12 = 0;
                v11 = 0;
                __p = 0;
                v77 = 0;
                v78 = 0;
              }

              if (v85 >= 0)
              {
                v13 = HIBYTE(v85);
              }

              else
              {
                v13 = v84;
              }

              v14 = v11;
              if ((v11 & 0x80u) != 0)
              {
                v11 = v12;
              }

              if (v13 != v11 || (v85 >= 0 ? (v15 = &v83) : (v15 = v83), v14 >= 0 ? (p_p = &__p) : (p_p = __p), memcmp(v15, p_p, v13)))
              {
LABEL_30:
                v17 = 1;
                if ((SHIBYTE(v78) & 0x80000000) == 0)
                {
                  goto LABEL_32;
                }

LABEL_31:
                operator delete(__p);
                goto LABEL_32;
              }

              if (-[CLIndoorProvider isRegionalEnabled](self, "isRegionalEnabled") || [v10 locationContext] != 1)
              {
                getLocationIds = [v10 getLocationIds];
                if (qword_10045B070 != -1)
                {
                  sub_100387B98();
                }

                v19 = qword_10045B078;
                if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
                {
                  v20 = &__p;
                  if (v78 < 0)
                  {
                    v20 = __p;
                  }

                  v21 = 0xAAAAAAAAAAAAAAABLL * ((getLocationIds[1] - *getLocationIds) >> 3);
                  *buf = 136380931;
                  v91 = v20;
                  v92 = 2050;
                  v93 = v21;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "TileLookup, groupId, %{private}s, %{public}lu", buf, 0x16u);
                }

                v23 = *getLocationIds;
                v22 = getLocationIds[1];
                if (v22 != *getLocationIds)
                {
                  v24 = 0;
                  for (k = 0; k < 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3); ++k)
                  {
                    v26 = (v23 + v24);
                    if (*(v23 + v24 + 23) < 0)
                    {
                      if (**v26 == 76)
                      {
LABEL_55:
                        v27 = objc_autoreleasePoolPush();
                        v28 = (v23 + v24);
                        if (v26[23] < 0)
                        {
                          v28 = *v26;
                        }

                        v29 = [NSString stringWithUTF8String:v28];
                        [v29 substringFromIndex:1];
                        objc_claimAutoreleasedReturnValue();

                        v30 = v26[23];
                        if (v30 < 0)
                        {
                          v32 = *(v23 + v24 + 8);
                          if (v32)
                          {
                            v26 = *v26;
                            v31 = v32 - 1;
                            if ((v32 - 1) >= 0x7FFFFFFFFFFFFFF8)
                            {
                              goto LABEL_114;
                            }

                            goto LABEL_63;
                          }
                        }

                        else if (v26[23])
                        {
                          v31 = v30 - 1;
                          if ((v30 - 1) >= 0x7FFFFFFFFFFFFFF8)
                          {
LABEL_114:
                            sub_10000D39C();
                          }

LABEL_63:
                          if (v31 < 0x17)
                          {
                            v75 = v31;
                            if (v31)
                            {
                              memmove(&__dst, v26 + 1, v31);
                            }

                            *(&__dst + v31) = 0;
                            ptr = self->_fsDb.__ptr_;
                            sub_1001181E4(buf, &__dst);
                          }

                          operator new();
                        }

                        sub_10001C6BC();
                      }
                    }

                    else if (*(v23 + v24) == 76)
                    {
                      goto LABEL_55;
                    }

                    v24 += 24;
                  }
                }

                v17 = 0;
                if (SHIBYTE(v78) < 0)
                {
                  goto LABEL_31;
                }
              }

              else
              {
                if (qword_10045B070 != -1)
                {
                  sub_100387B98();
                }

                v18 = qword_10045B078;
                if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_30;
                }

                *buf = 0;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "locationRequests include not allowed regional tile", buf, 2u);
                v17 = 1;
                if (SHIBYTE(v78) < 0)
                {
                  goto LABEL_31;
                }
              }

LABEL_32:

              if ((v17 & 1) == 0)
              {
                goto LABEL_72;
              }
            }

            v7 = [v66 countByEnumeratingWithState:&v79 objects:v98 count:16];
          }

          while (v7);
        }

LABEL_72:

        if ([v69 count])
        {
          if (qword_10045B070 != -1)
          {
            sub_100387B98();
          }

          v34 = qword_10045B078;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = [v69 count];
            v36 = v70;
            uTF8String = [v70 UTF8String];
            *buf = 134218755;
            v91 = v35;
            v92 = 2081;
            v93 = uTF8String;
            v94 = 2048;
            v95 = 0;
            v96 = 2048;
            v97 = 0;
            v38 = v34;
            v39 = OS_LOG_TYPE_INFO;
            v40 = "Found %lu floors in availability tile for %{private}s, found %zu floors with data already, %zu floors without data";
            v41 = 42;
LABEL_81:
            _os_log_impl(&_mh_execute_header, v38, v39, v40, buf, v41);
          }
        }

        else
        {
          if (qword_10045B070 != -1)
          {
            sub_100387B98();
          }

          v34 = qword_10045B078;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v42 = v70;
            uTF8String2 = [v70 UTF8String];
            *buf = 136380675;
            v91 = uTF8String2;
            v38 = v34;
            v39 = OS_LOG_TYPE_ERROR;
            v40 = "Couldn't find any floors within %{private}s in availability tile.";
            v41 = 12;
            goto LABEL_81;
          }
        }

        if (SHIBYTE(v85) < 0)
        {
          operator delete(v83);
        }
      }

      v64 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
      if (!v64)
      {
        goto LABEL_88;
      }
    }
  }

  v73 = 0;
LABEL_88:

  v44 = sub_10033990C();
  v45 = atomic_load(v44 + 20);
  if ((v45 & 1) != 0 || *(v44 + 16) == 1)
  {
    if (*(v44 + 17))
    {
LABEL_91:
      v46 = [v69 indexesOfObjectsPassingTest:&stru_10044B210];
      v47 = [v46 count];
      if (qword_10045B070 != -1)
      {
        sub_100387B98();
      }

      v48 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
      {
        v49 = "s";
        if (v47 == 1)
        {
          v49 = "";
        }

        *buf = 134218242;
        v91 = v47;
        v92 = 2080;
        v93 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Ignoring %lu Indoor tile %s", buf, 0x16u);
      }

      goto LABEL_106;
    }
  }

  else
  {
    v50 = v44;
    v51 = sub_100008F80(v44, v44 + 9);
    *(v50 + 17) = v51 & 1;
    *(v50 + 16) = 1;
    atomic_store(1u, v50 + 20);
    if (v51)
    {
      goto LABEL_91;
    }
  }

  if (actionCopy != 0 || (v73 & 1) == 0)
  {
    goto LABEL_107;
  }

  v46 = [v69 indexesOfObjectsPassingTest:&stru_10044B230];
  v52 = [v46 count];
  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v53 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
  {
    v54 = "s";
    if (v52 == 1)
    {
      v54 = "";
    }

    *buf = 134218242;
    v91 = v52;
    v92 = 2080;
    v93 = v54;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Ignoring %lu Regional tile %s", buf, 0x16u);
  }

LABEL_106:
  [v69 removeObjectsAtIndexes:v46];

LABEL_107:
  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v55 = qword_10045B078;
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = [*(tile + 1) count];
    v57 = [obj count];
    v58 = [v69 count];
    *buf = 134349568;
    v91 = v56;
    v92 = 2050;
    v93 = v57;
    v94 = 2050;
    v95 = v58;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "@TileLookup, avlVenues, %{public}lu, groupIds, %{public}lu, requested, %{public}lu", buf, 0x20u);
  }

  return v69;
}

- (void)requestLocationTilesForGroup:(id)group usingAvailabilityTile:(const void *)tile forAction:(unsigned __int8)action
{
  groupCopy = group;
  actionCopy = action;
  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
  }

  v9 = qword_10045B078;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    allObjects = [groupCopy allObjects];
    v11 = [allObjects componentsJoinedByString:{@", "}];
    LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
    *(buf.__r_.__value_.__r.__words + 4) = [v11 UTF8String];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "async fetch location tiles for group %{private}s", &buf, 0xCu);
  }

  v12 = [(CLIndoorProvider *)self locationRequests:groupCopy usingAvailabilityTile:tile forAction:actionCopy];
  if (![v12 count])
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v13 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No floors found in availability tile?!", &buf, 2u);
    }
  }

  v14 = [v12 count];
  v15 = [groupCopy description];
  v16 = v15;
  if (v15)
  {
    [v15 ps_STLStringOnNil:@"<nil location groups>"];
    if (!v14)
    {
LABEL_17:
      sub_1000474A4(v22, "");
      sub_10022679C("No floors found in availability tile? Group Ids: ", &buf);
      if (SHIBYTE(v19) < 0)
      {
        sub_100003228(&v25, __p[0], __p[1]);
      }

      else
      {
        v25 = *__p;
        v26 = v19;
      }

      sub_100050F78(" ,action: ", &v27);
      sub_100368994(&actionCopy, &v28);
      sub_1000E661C(v22, &buf, 4);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_22:
          if ((SHIBYTE(v26) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_28;
        }
      }

      else if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      operator delete(v27.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v26) & 0x80000000) == 0)
      {
LABEL_23:
        if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }

LABEL_28:
      operator delete(v25);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_24:
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

LABEL_30:
        operator delete(v22[0]);
LABEL_25:
        sub_10003F5D0(&v21);
      }

LABEL_29:
      operator delete(buf.__r_.__value_.__l.__data_);
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }
  }

  else
  {
    *__p = 0uLL;
    v19 = 0;
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = [[CLIndoorForegroundFetchRequest alloc] initWithFloorRequests:v12 forAction:actionCopy];
  [(CLIndoorProvider *)self setCurrentForegroundFetchRequest:v17];

  [(CLIndoorProvider *)self requestForegroundTileDownload];
}

- (void)changeLocationGroups:(id)groups
{
  groupsCopy = groups;
  if (self->_serviceLocalizer.__ptr_ && [(CLIndoorProvider *)self localizationStarted])
  {
    [(CLIndoorProvider *)self setLocationGroups:groupsCopy];
LABEL_4:

    return;
  }

  if (qword_10045B070 == -1)
  {
    v5 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_100387BC0();
    v5 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }
  }

  *v6 = 0;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "WARNING: Ignoring changeLocationGroup request - not localizing yet", v6, 2u);
}

- (void)onQueueSelectedLocationDownloadCompleted:(const void *)completed forAction:(unsigned __int8)action
{
  if (action == 1)
  {
    if (self->_serviceLocalizer.__ptr_)
    {
      v19[0] = 0;
      v6 = *(completed + 1);
      v20[0] = *completed;
      v20[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      sub_10035B044(v21, completed + 16);
      v7 = *(completed + 8);
      v21[5] = *(completed + 7);
      v21[6] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v22 = *(completed + 72);
      v19[0] = 1;
      [(CLIndoorProvider *)self setSelectedLocation:v19];
      if (v19[0] == 1)
      {
        sub_10035B188(v20);
        v19[0] = 0;
      }

      ptr = self->_serviceLocalizer.__ptr_;
      v9 = sub_10010C670();
      (*(*ptr + 48))(ptr, v9, completed);
      sub_1001F10C8(completed, &v16);
      v10.n128_f64[0] = sub_10034D9F0(&self->_localizationSessionMetrics, v18);
      v11 = __p;
      if (__p)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
          v13 = v12[3];
          if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v14 = v12;
            (v13->__on_zero_shared)(v13, v10);
            std::__shared_weak_count::__release_weak(v13);
            v12 = v14;
          }

          operator delete(v12);
        }

        while (v11);
      }

      v15 = v16;
      v16 = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }
  }

  else if (!action)
  {
    v23[0] = 0;
    if (self->_paramOverrides.m_initialized)
    {
      sub_10014DE18(v24, &self->_paramOverrides.m_storage.dummy_.aligner_ + 7);
      v23[0] = 1;
    }

    [(CLIndoorProvider *)self onQueueLocalizeOnSelection:completed withParameterOverrides:v23];
    if (v23[0] == 1)
    {
      sub_10014E2CC(v24);
    }
  }
}

- (void)foregroundTileDownloadComplete
{
  currentForegroundFetchRequest = [(CLIndoorProvider *)self currentForegroundFetchRequest];
  floorRequests = [currentForegroundFetchRequest floorRequests];

  currentForegroundFetchRequest2 = [(CLIndoorProvider *)self currentForegroundFetchRequest];
  action = [currentForegroundFetchRequest2 action];

  v5 = objc_autoreleasePoolPush();
  [(CLIndoorProvider *)self setCurrentForegroundFetchRequest:0];
  objc_autoreleasePoolPop(v5);
  if ([(CLIndoorProvider *)self onQueueProcessCompletedFetch:floorRequests])
  {
    *v41 = 0u;
    v42 = 0u;
    v43 = 1.0;
    prime = vcvtps_u32_f32([floorRequests count] / 1.0);
    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    if (prime > v41[1])
    {
      goto LABEL_14;
    }

    if (prime < v41[1])
    {
      v13 = vcvtps_u32_f32(*(&v42 + 1) / v43);
      if (v41[1] < 3 || (v14 = vcnt_s8(v41[1]), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime < v41[1])
      {
LABEL_14:
        sub_10000FE58(v41, prime);
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = floorRequests;
    if ([v16 countByEnumeratingWithState:&v37 objects:v47 count:16])
    {
      *v38;
      *v38;
      floorUuid = [**(&v37 + 1) floorUuid];
      v18 = floorUuid;
      [floorUuid UTF8String];
      sub_1001180E4();
    }

    ptr = self->_fsDb.__ptr_;
    sub_10035B044(__p, v41);
    sub_1001F0D28(buf, ptr, __p);
    [(CLIndoorProvider *)self onQueueSelectedLocationDownloadCompleted:buf forAction:action];
    sub_10035B188(buf);
    v20 = v36;
    while (v20)
    {
      v21 = v20;
      v20 = *v20;
      sub_10011B04C(v21 + 4);
      v22 = v21[3];
      if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }

      operator delete(v21);
    }

    v23 = __p[0];
    __p[0] = 0;
    if (v23)
    {
      operator delete(v23);
    }

    v24 = v42;
    while (v24)
    {
      v25 = v24;
      v24 = *v24;
      sub_10011B04C(v25 + 4);
      v26 = v25[3];
      if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }

      operator delete(v25);
    }

    v27 = v41[0];
    v41[0] = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100387BC0();
    }

    v7 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "WARNING: Import failed. Signalling download is available and retrying fetch", buf, 2u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = floorRequests;
    if ([v8 countByEnumeratingWithState:&v31 objects:v45 count:16])
    {
      *v32;
      *v32;
      v9 = self->_fsDb.__ptr_;
      floorUuid2 = [**(&v31 + 1) floorUuid];
      v11 = floorUuid2;
      [floorUuid2 UTF8String];
      sub_1001180E4();
    }

    v12 = [[CLIndoorForegroundFetchRequest alloc] initWithFloorRequests:v8 forAction:action];
    [(CLIndoorProvider *)self setCurrentForegroundFetchRequest:v12];

    [(CLIndoorProvider *)self requestForegroundTileDownload];
  }

  WeakRetained = objc_loadWeakRetained(&self->_prefetcher);
  if (!WeakRetained)
  {
    sub_1000474A4(v41, "");
    sub_100211ECC("No prefetcher initialized", buf);
    sub_1000E661C(v41, buf, 1);
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v42) < 0)
    {
      operator delete(v41[0]);
    }

    sub_10003F5D0(&v44);
  }

  [WeakRetained allDownloadItemsCompleted];
}

- (void)foregroundRequestCompleted:(id)completed
{
  completedCopy = completed;
  if (!completedCopy)
  {
    sub_1000474A4(buf, "");
    sub_100383A74(__p, buf);
    sub_1000BC6D8(__p);
  }

  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v5 = qword_10045B078;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    requestUUID = [completedCopy requestUUID];
    uUIDString = [requestUUID UUIDString];
    v8 = uUIDString;
    *buf = 136315138;
    uTF8String = [uUIDString UTF8String];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "download request finished for UUID: %s", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  _queue = [WeakRetained _queue];

  if (_queue)
  {
    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10035B598;
    block[3] = &unk_10044B1D0;
    objc_copyWeak(&v14, buf);
    v13 = completedCopy;
    dispatch_async(_queue, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v11 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "No queue so ignoring message", buf, 2u);
    }
  }
}

- (void)foregroundRequestCompleted:(id)completed withError:(id)error
{
  completedCopy = completed;
  errorCopy = error;
  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
  }

  v8 = qword_10045B078;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    requestUUID = [completedCopy requestUUID];
    uUIDString = [requestUUID UUIDString];
    uTF8String = [uUIDString UTF8String];
    v12 = [errorCopy description];
    v13 = v12;
    if (v12)
    {
      [v12 ps_STLStringOnNil:&stru_10044D120];
      if (v23 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v14 = __p;
      v23 = 0;
    }

    *buf = 136315394;
    v25 = uTF8String;
    v26 = 2080;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "download request finished for UUID: %s with an error %s", buf, 0x16u);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);
  _queue = [WeakRetained _queue];

  if (_queue)
  {
    objc_initWeak(__p, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10035B96C;
    v18[3] = &unk_10044B258;
    objc_copyWeak(&v21, __p);
    v18[4] = self;
    v19 = completedCopy;
    v20 = errorCopy;
    dispatch_async(_queue, v18);

    objc_destroyWeak(&v21);
    objc_destroyWeak(__p);
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v17 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "No queue so ignoring message", __p, 2u);
    }
  }
}

- (void)requestForegroundTileDownload
{
  WeakRetained = objc_loadWeakRetained(&self->_prefetcher);
  if (!WeakRetained)
  {
    sub_1000474A4(__p, "");
    sub_100211ECC("No prefetcher initialized", &buf);
    sub_1000E661C(__p, &buf, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10003F5D0(&v11);
  }

  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v4 = qword_10045B078;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    currentForegroundFetchRequest = [(CLIndoorProvider *)self currentForegroundFetchRequest];
    floorRequests = [currentForegroundFetchRequest floorRequests];
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = [floorRequests count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting foreground downloads for %lu floors", &buf, 0xCu);
  }

  currentForegroundFetchRequest2 = [(CLIndoorProvider *)self currentForegroundFetchRequest];
  floorRequests2 = [currentForegroundFetchRequest2 floorRequests];
  currentForegroundFetchRequest3 = [(CLIndoorProvider *)self currentForegroundFetchRequest];
  uuid = [currentForegroundFetchRequest3 uuid];
  [WeakRetained requestForegroundFetchForFloors:floorRequests2 withRequestUUID:uuid];
}

- (BOOL)onQueueProcessCompletedFetch:(id)fetch
{
  fetchCopy = fetch;
  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
  }

  v3 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Immediate fetch completed.  Importing into localizer", buf, 2u);
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_10035C4EC(&v49, [fetchCopy count]);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = fetchCopy;
  v4 = [obj countByEnumeratingWithState:&v45 objects:v62 count:16];
  if (v4)
  {
    v5 = *v46;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v46 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v45 + 1) + 8 * i);
        floorUuid = [v7 floorUuid];
        v9 = floorUuid;
        uTF8String = [floorUuid UTF8String];
        v11 = strlen(uTF8String);
        if (v11 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_10000D39C();
        }

        v12 = v11;
        if (v11 >= 0x17)
        {
          operator new();
        }

        v44 = v11;
        if (v11)
        {
          memmove(&__dst, uTF8String, v11);
        }

        *(&__dst + v12) = 0;
        venueUuid = [v7 venueUuid];
        v14 = venueUuid;
        uTF8String2 = [venueUuid UTF8String];
        v16 = strlen(uTF8String2);
        if (v16 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_10000D39C();
        }

        v17 = v16;
        if (v16 >= 0x17)
        {
          operator new();
        }

        v42 = v16;
        if (v16)
        {
          memmove(&__p, uTF8String2, v16);
        }

        __p.n128_u8[v17] = 0;
        sub_100261BAC(buf, &__dst, &__p, +[CLLocationContextConversions fromCLPipelinedLocationContext:](CLLocationContextConversions, "fromCLPipelinedLocationContext:", [v7 locationContext]));
        if (v42 < 0)
        {
          operator delete(__p.n128_u64[0]);
        }

        if (v44 < 0)
        {
          operator delete(__dst);
        }

        v18 = v50;
        if (v50 >= v51)
        {
          v50 = sub_1003691DC(&v49, buf);
          if (qword_10045B070 == -1)
          {
            goto LABEL_31;
          }

LABEL_52:
          sub_100387B98();
          goto LABEL_31;
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          sub_100003228(v50, *buf, *&buf[8]);
        }

        else
        {
          v19 = *buf;
          *(v50 + 2) = *&buf[16];
          *v18 = v19;
        }

        if (SHIBYTE(v60) < 0)
        {
          sub_100003228(v18 + 24, v59, *(&v59 + 1));
        }

        else
        {
          v29 = v59;
          *(v18 + 5) = v60;
          *(v18 + 24) = v29;
        }

        *(v18 + 12) = v61;
        v50 = v18 + 56;
        if (qword_10045B070 != -1)
        {
          goto LABEL_52;
        }

LABEL_31:
        v20 = qword_10045B078;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = sub_1001F41FC(buf);
          if (*(v21 + 23) >= 0)
          {
            v22 = v21;
          }

          else
          {
            v22 = *v21;
          }

          v23 = nullsub_35(buf);
          v24 = *(v23 + 23);
          v25 = *v23;
          v26 = sub_100261BE4(buf);
          if (v24 >= 0)
          {
            v27 = v23;
          }

          else
          {
            v27 = v25;
          }

          *v52 = 136381187;
          v53 = v22;
          if (v26 == 1)
          {
            v28 = 82;
          }

          else
          {
            v28 = 73;
          }

          v54 = 2081;
          v55 = v27;
          v56 = 1026;
          v57 = v28;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "TileVisit, fetch, %{private}s, %{private}s, %{public}c", v52, 0x1Cu);
        }

        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59);
          if ((buf[23] & 0x80000000) == 0)
          {
            continue;
          }
        }

        else if ((buf[23] & 0x80000000) == 0)
        {
          continue;
        }

        operator delete(*buf);
      }

      v4 = [obj countByEnumeratingWithState:&v45 objects:v62 count:16];
    }

    while (v4);
  }

  v30.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  (*(**(v38 + 856) + 184))(*(v38 + 856), v30.__d_.__rep_ - 1000000 * (v30.__d_.__rep_ % 21600), &v49);
  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v31 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    *buf = 134283777;
    *&buf[4] = v30;
    *&buf[12] = 2049;
    *&buf[14] = v30.__d_.__rep_ - 1000000 * (v30.__d_.__rep_ % 21600);
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Prefetch complete, fuzz, %{private}lld, %{private}lld", buf, 0x16u);
  }

  v32 = v49;
  if (v49)
  {
    v33 = v50;
    v34 = v49;
    if (v50 == v49)
    {
LABEL_68:
      v50 = v32;
      operator delete(v34);
      goto LABEL_69;
    }

    while (1)
    {
      if (*(v33 - 9) < 0)
      {
        operator delete(*(v33 - 4));
        v35 = v33 - 7;
        if (*(v33 - 33) < 0)
        {
LABEL_66:
          operator delete(*v35);
        }
      }

      else
      {
        v35 = v33 - 7;
        if (*(v33 - 33) < 0)
        {
          goto LABEL_66;
        }
      }

      v33 = v35;
      if (v35 == v32)
      {
        v34 = v49;
        goto LABEL_68;
      }
    }
  }

LABEL_69:

  return 1;
}

- (void)playbackDatarun:(id)datarun
{
  datarunCopy = datarun;
  xpcConnection = [(CLIndoorProvider *)self xpcConnection];
  if (xpcConnection)
  {
    ptr = self->_fsDb.__ptr_;
    if (!ptr)
    {
      sub_1000474A4(v14, "");
      sub_100211E7C("Localizer DB must be unlocked to playback dataruns", &v20);
      sub_1000E661C(v14, &v20, 1);
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      sub_1000BA6B0(&__p);
    }

    v7 = (*(*ptr + 240))(ptr);
    sub_100353C18(v14, v7, 0);
    if (datarunCopy)
    {
      [datarunCopy ps_STLString];
    }

    else
    {
      __p = 0uLL;
      v13 = 0;
    }

    sub_100353C1C(v14, &__p, &v20);
    sub_10036493C(&self->_simulation, &v20);
    if (v20.__r_.__value_.__s.__data_[0] == 1)
    {
      v8 = v22;
      if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if ((v21 & 0x80000000) == 0)
        {
LABEL_10:
          v20.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v13) < 0)
          {
            goto LABEL_11;
          }

LABEL_14:
          if (!self->_simulation.m_initialized)
          {
            goto LABEL_12;
          }

          goto LABEL_15;
        }
      }

      else if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      operator delete(v20.__r_.__value_.__l.__size_);
      v20.__r_.__value_.__s.__data_[0] = 0;
      if ((SHIBYTE(v13) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_11:
    operator delete(__p);
    if (!self->_simulation.m_initialized)
    {
LABEL_12:
      v23[0] = NSLocalizedDescriptionKey;
      v23[1] = @"datarunid";
      v24[0] = @"datarun not found";
      v24[1] = datarunCopy;
      v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
      v10 = [NSError errorWithDomain:@"com.apple.pipelined" code:-1 userInfo:v9];

      [(CLIndoorProvider *)self notify:xpcConnection failedWithReason:v10];
      if (v19 < 0)
      {
        operator delete(v18);
        if ((v17 & 0x80000000) == 0)
        {
LABEL_20:
          if ((v15 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

LABEL_24:
          operator delete(v14[0]);
          goto LABEL_21;
        }
      }

      else if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      operator delete(v16);
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

LABEL_15:
    v11 = [(CLIndoorProvider *)self getAvailabilityTileParserAndSetParams:@"playbackDatarun"];
    if (v11)
    {
      *&__p = off_10044B408;
      sub_100170224([v11 getAvlTile], &v20);
      operator new();
    }

    v20.__r_.__value_.__r.__words[0] = off_10044B408;
    operator new();
  }

LABEL_21:
}

- (void)setLocationGroups:(id)groups
{
  groupsCopy = groups;
  if (!self->_fsDb.__ptr_)
  {
    sub_1000474A4(__p, "");
    sub_1000D8214("setLocationGroups fsDb is not set", buf);
    sub_1000E661C(__p, buf, 1);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    sub_1000BA6B0(v33);
  }

  if (!self->_indoorUniverse)
  {
    sub_1000474A4(__p, "");
    sub_1001F2B44("setLocationGroups, indoorUniverse is not set", buf);
    sub_1000E661C(__p, buf, 1);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10003F5D0(v33);
  }

  v5 = objc_loadWeakRetained(&self->_xpcConnection);
  if (!v5)
  {
    sub_1000474A4(__p, "");
    sub_1002B218C("setLocationGroups, xpcConnection is not set", buf);
    sub_1000E661C(__p, buf, 1);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    sub_1000BA6B0(v33);
  }

  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v6 = qword_10045B078;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    allObjects = [groupsCopy allObjects];
    v8 = [allObjects componentsJoinedByString:{@", "}];
    v9 = v8;
    *buf = 136380675;
    *&buf[4] = [v8 UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[CLIndoorProvider] Location group %{private}s request to change", buf, 0xCu);
  }

  sub_100364B68(__p, "setLocationGroups:");
  context = objc_autoreleasePoolPush();
  v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [groupsCopy count]);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = groupsCopy;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        [v10 addObject:v15];
      }

      v12 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v12);
  }

  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v16 = qword_10045B078;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v10 count];
    allObjects2 = [v10 allObjects];
    v19 = [allObjects2 componentsJoinedByString:{@", "}];
    v20 = v19;
    uTF8String = [v19 UTF8String];
    *buf = 134349315;
    *&buf[4] = v17;
    *&buf[12] = 2081;
    *&buf[14] = uTF8String;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Universe size: %{public}lu with locationGroupIds: %{private}s", buf, 0x16u);
  }

  getAvailabilityData = [(CLIndoorUniverse *)self->_indoorUniverse getAvailabilityData];
  *buf = *getAvailabilityData;
  *&buf[8] = getAvailabilityData[1];
  v23 = *(getAvailabilityData + 48);
  v24 = *(getAvailabilityData + 2);
  *&buf[16] = *(getAvailabilityData + 1);
  v35 = v24;
  v36 = v23;
  v25 = [NSSet setWithSet:v10];
  [(CLIndoorProvider *)self requestLocationTilesForGroup:v25 usingAvailabilityTile:buf forAction:1];

  objc_autoreleasePoolPop(context);
  sub_100364D88(__p);
}

- (id)initializeServiceApi
{
  [(CLIndoorProvider *)self xpcConnection];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(*self->_fsDb.__ptr_ + 232))(self->_fsDb.__ptr_);
    (*(*self->_fsDb.__ptr_ + 240))(self->_fsDb.__ptr_);
    operator new();
  }

  return 0;
}

- (void)onQueueLocalizeOnSelection:(const void *)selection withParameterOverrides:(optional<proto::params::LocalizerParameters>)overrides
{
  [(CLIndoorProvider *)self selectedLocation];
  if (buf[0] != 1)
  {
    goto LABEL_6;
  }

  [(CLIndoorProvider *)self selectedLocation];
  v6 = sub_1001F0D2C(selection, v16);
  if (v15 == 1)
  {
    sub_10035B188(v16);
  }

  if ((buf[0] & 1) == 0)
  {
    if (v6)
    {
      goto LABEL_18;
    }

LABEL_6:
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v7 = qword_10045B078;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting up localizer", buf, 2u);
    }

    v11[0] = 0;
    v8 = *(selection + 1);
    v12[0] = *selection;
    v12[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10035B044(v13, selection + 16);
    v9 = *(selection + 8);
    v13[5] = *(selection + 7);
    v13[6] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(selection + 72);
    v11[0] = 1;
    [(CLIndoorProvider *)self setSelectedLocation:v11];
    if (v11[0] == 1)
    {
      sub_10035B188(v12);
      v11[0] = 0;
    }

    [(CLIndoorProvider *)self setLocalizationStarted:0];
    sub_10024B978();
  }

  sub_10035B188(v18);
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_18:
  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v10 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Ignoring request to change to same set of selected venues", buf, 2u);
  }
}

- (void)startUpdatingLocationDeferred:(id)deferred
{
  deferredCopy = deferred;
  if (self->_deferredState.m_initialized)
  {
    sub_1000474A4(v27, "");
    sub_10020A050("startUpdatingLocationDeferred must be entered without a deferredState", __p);
    sub_1000E661C(v27, __p, 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v27[2]) < 0)
    {
      operator delete(v27[0]);
    }

    sub_10003F5D0(v18);
  }

  if ([deferredCopy isStaleFix:std::chrono::steady_clock::now().__d_.__rep_])
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v5 = qword_10045B078;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (deferredCopy)
      {
        [deferredCopy gpsLocation];
        v6 = *(v38 + 12);
        [deferredCopy gpsLocation];
        v7 = *(&v31 + 1);
        [deferredCopy gpsLocation];
        v8 = *(&v19 + 4);
      }

      else
      {
        v8 = 0;
        v7 = 0;
        v6 = 0;
        v40 = 0u;
        memset(v41, 0, sizeof(v41));
        v39 = 0u;
        v37 = 0u;
        memset(v38, 0, sizeof(v38));
        v36 = 0u;
        memset(__p, 0, sizeof(__p));
        v33 = 0u;
        memset(v34, 0, sizeof(v34));
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        memset(v27, 0, sizeof(v27));
        v25 = 0u;
        memset(v26, 0, sizeof(v26));
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        *v18 = 0u;
      }

      *buf = 134349568;
      v43 = v6;
      v44 = 2050;
      v45 = v7;
      v46 = 2050;
      v47 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[CLIndoorProvider] startUpdatingLocationDeferred. Skip, stale location, %{public}lf, %{public}lf, %{public}.2lf", buf, 0x20u);
    }

    sub_100364B68(__p, "deferred startUpdatingLocationAtLocation - location");
    mutableDeferredState = [(CLIndoorProvider *)self mutableDeferredState];
    v14 = mutableDeferredState;
    v15 = *__p;
    if (*(mutableDeferredState + 8) == 1)
    {
      *__p = 0;
      v16 = mutableDeferredState[2];
      mutableDeferredState[2] = v15;
    }

    else
    {
      mutableDeferredState[2] = *__p;
      *(v14 + 3) = *&__p[8];
      v17 = *__p;
      v14[5] = *&__p[24];
      memset(__p, 0, sizeof(__p));

      *(v14 + 8) = 1;
    }

    sub_100364D88(__p);
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v9 = qword_10045B078;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (deferredCopy)
      {
        [deferredCopy gpsLocation];
        v10 = *&__p[4];
        [deferredCopy gpsLocation];
        v11 = *(&v27[1] + 4);
        [deferredCopy gpsLocation];
        v12 = *(&v19 + 4);
      }

      else
      {
        v12 = 0;
        v11 = 0;
        v10 = 0;
        v40 = 0u;
        memset(v41, 0, sizeof(v41));
        v39 = 0u;
        v37 = 0u;
        memset(v38, 0, sizeof(v38));
        v36 = 0u;
        memset(__p, 0, sizeof(__p));
        v33 = 0u;
        memset(v34, 0, sizeof(v34));
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        memset(v27, 0, sizeof(v27));
        v25 = 0u;
        memset(v26, 0, sizeof(v26));
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        *v18 = 0u;
      }

      *buf = 134546177;
      v43 = v10;
      v44 = 2053;
      v45 = v11;
      v46 = 2050;
      v47 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[CLIndoorProvider] startUpdatingLocationDeferred. Starting at latlon: %{sensitive}.8lf,%{sensitive}.8lf, %{public}.2lf", buf, 0x20u);
    }

    [(CLIndoorProvider *)self startUpdatingLocationAtLocation:deferredCopy];
  }
}

- (void)startUpdatingLocationAtLocation:(id)location
{
  locationCopy = location;
  if (self->_indoorUniverse)
  {
    sub_1000474A4(__p, "");
    sub_10036A0C0("startUpdatingLocationAtLocation, indoorUniverse already initialized", buf);
    sub_1000E661C(__p, buf, 1);
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10003F5D0(v49);
  }

  if (!locationCopy)
  {
    sub_1000474A4(__p, "");
    sub_1001FE188("startUpdatingLocationAtLocation needs a valid location", buf);
    sub_1000E661C(__p, buf, 1);
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10003F5D0(v49);
  }

  p_lastOutdoorPositionAvailable = &self->_lastOutdoorPositionAvailable;
  objc_storeStrong(&self->_lastOutdoorPositionAvailable, location);
  if (self->_fsDb.__ptr_)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v7 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "startUpdatingLocationAtLocation", buf, 2u);
    }

    sub_100364B68(__p, "startUpdatingLocationAtLocation:");
    context = objc_autoreleasePoolPush();
    initializeServiceApi = [(CLIndoorProvider *)self initializeServiceApi];
    if (initializeServiceApi)
    {
      v9 = 0;
      v10 = 6;
      while (1)
      {
        if (v9)
        {
          if (qword_10045B070 != -1)
          {
            sub_100387B98();
          }

          v11 = qword_10045B078;
          if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[CLIndoorProvider] Failed to startup the indoor provider due to missing availability tile, notifying locationd of failure then retrying", buf, 2u);
          }

          [(CLIndoorProvider *)self notifyProxyOfDownloadError];
          sub_1000244EC();
        }

        v12 = [(CLIndoorProvider *)self getAvailabilityTileParserAndSetParams:@"startUpdatingLocationAtLocation"];
        if (v12)
        {
          break;
        }

        v9 = 1;
        if (!--v10)
        {
          if (qword_10045B070 != -1)
          {
            sub_100387B98();
          }

          v27 = qword_10045B078;
          if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_FAULT))
          {
            LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "[CLIndoorProvider] Indoor is persistently failing to find the availability tile, something is wrong", buf, 2u);
          }

          [(CLIndoorProvider *)self notifyProxyOfDownloadError];
          goto LABEL_60;
        }
      }

      if (!self->_indoorUniverse)
      {
        [(CLIndoorProvider *)self initializeIndoorUniverse:v12 atLocation:locationCopy];
      }

      v49[0] = +[NSMutableSet set];
      indoorUniverse = self->_indoorUniverse;
      v14 = sub_10010C670();
      if (*p_lastOutdoorPositionAvailable)
      {
        [(CLGpsPosition *)*p_lastOutdoorPositionAvailable gpsLocation];
      }

      else
      {
        v55 = 0u;
        memset(v56, 0, sizeof(v56));
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        memset(buf, 0, sizeof(buf));
      }

      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3321888768;
      v46[2] = sub_10035F558;
      v46[3] = &unk_10044B278;
      v46[4] = v49;
      if (-[CLIndoorUniverse updateLocalizerUniverseIfAllowed:fromLocation:withUniverseUpdatedHandler:](indoorUniverse, "updateLocalizerUniverseIfAllowed:fromLocation:withUniverseUpdatedHandler:", v14, buf, v46) && [v49[0] count])
      {
        if (qword_10045B070 != -1)
        {
          sub_100387B98();
        }

        v15 = qword_10045B078;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          localizationActive = [(CLIndoorProvider *)self localizationActive];
          localizationStarted = [(CLIndoorProvider *)self localizationStarted];
          v42 = self->_serviceLocalizer.__ptr_ != 0;
          v16 = [v49[0] count];
          allObjects = [v49[0] allObjects];
          v18 = [allObjects componentsJoinedByString:{@", "}];
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 67110403;
          HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = localizationActive;
          LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[1] + 2) = localizationStarted;
          HIWORD(buf[0].__r_.__value_.__r.__words[1]) = 1024;
          LODWORD(buf[0].__r_.__value_.__r.__words[2]) = v42;
          WORD2(buf[0].__r_.__value_.__r.__words[2]) = 1024;
          *(&buf[0].__r_.__value_.__r.__words[2] + 6) = 1;
          *&buf[1].__r_.__value_.__s.__data_[2] = 2050;
          *(buf[1].__r_.__value_.__r.__words + 4) = v16;
          WORD2(buf[1].__r_.__value_.__r.__words[1]) = 2113;
          *(&buf[1].__r_.__value_.__r.__words[1] + 6) = v18;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[CLIndoorProvider] Start state %d,%d,%d, didUpdate, %d, Universe size: %{public}lu with locationGroupIds: %{private}@", buf, 0x2Eu);
        }

        getAvailabilityData = [(CLIndoorUniverse *)self->_indoorUniverse getAvailabilityData];
        buf[0].__r_.__value_.__r.__words[0] = *getAvailabilityData;
        buf[0].__r_.__value_.__l.__size_ = getAvailabilityData[1];
        v20 = *(getAvailabilityData + 48);
        v21 = *(getAvailabilityData + 2);
        *&buf[0].__r_.__value_.__r.__words[2] = *(getAvailabilityData + 1);
        *&buf[1].__r_.__value_.__r.__words[1] = v21;
        LOBYTE(v51) = v20;
        v22 = [NSSet setWithSet:v49[0]];
        [(CLIndoorProvider *)self requestLocationTilesForGroup:v22 usingAvailabilityTile:buf forAction:0];

        v40 = 1;
        goto LABEL_61;
      }

      if (qword_10045B070 != -1)
      {
        sub_100387B98();
      }

      v23 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[CLIndoorProvider] Ignoring startUpdatingLocationAtLocation since universe didn't update or no groups in universe", buf, 2u);
      }

      if (qword_10045B070 != -1)
      {
        sub_100387B98();
      }

      v24 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "_lastOutdoorPositionAvailable was available to compute Universe, but the universe did not update", buf, 2u);
      }

      v25 = self->_indoorUniverse;
      self->_indoorUniverse = 0;

      sub_100364B68(buf, "deferred startUpdatingLocationAtLocation - universe");
      mutableDeferredState = [(CLIndoorProvider *)self mutableDeferredState];
      v33 = mutableDeferredState;
      v34 = buf[0].__r_.__value_.__r.__words[0];
      if (*(mutableDeferredState + 8) == 1)
      {
        buf[0].__r_.__value_.__r.__words[0] = 0;
        v35 = mutableDeferredState[2];
        mutableDeferredState[2] = v34;
      }

      else
      {
        mutableDeferredState[2] = buf[0].__r_.__value_.__l.__data_;
        *(v33 + 3) = *&buf[0].__r_.__value_.__r.__words[1];
        v33[5] = buf[1].__r_.__value_.__l.__data_;
        v39 = buf[0].__r_.__value_.__r.__words[0];
        memset(buf, 0, 32);

        *(v33 + 8) = 1;
      }

      sub_100364D88(buf);
    }

    else
    {
      if (qword_10045B070 != -1)
      {
        sub_100387B98();
      }

      v36 = qword_10045B078;
      if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Ignoring startUpdatingLocationAtLocation since connection to client is not alive", buf, 2u);
        v40 = 0;
LABEL_61:

        objc_autoreleasePoolPop(context);
        if (v40)
        {
          [(CLIndoorProvider *)self setLocalizationActive:1];
          if (self->_serviceLocalizer.__ptr_)
          {
            if (![(CLIndoorProvider *)self localizationStarted])
            {
              [(CLIndoorProvider *)self startLocalizer];
            }
          }

          else
          {
            if (qword_10045B070 != -1)
            {
              sub_100387B98();
            }

            v41 = qword_10045B078;
            if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "didn't select a location to localize against yet", buf, 2u);
            }
          }
        }

        v38 = __p;
        goto LABEL_70;
      }
    }

LABEL_60:
    v40 = 0;
    goto LABEL_61;
  }

  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v28 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[CLIndoorProvider] startUpdatingLocationAtLocation. Deferring request to start indoor - localizer DB is locked", buf, 2u);
  }

  sub_100364B68(buf, "deferred startUpdatingLocationAtLocation - locked");
  mutableDeferredState2 = [(CLIndoorProvider *)self mutableDeferredState];
  v30 = mutableDeferredState2;
  v31 = buf[0].__r_.__value_.__r.__words[0];
  if (*(mutableDeferredState2 + 8) == 1)
  {
    buf[0].__r_.__value_.__r.__words[0] = 0;
    v32 = mutableDeferredState2[2];
    mutableDeferredState2[2] = v31;
  }

  else
  {
    mutableDeferredState2[2] = buf[0].__r_.__value_.__l.__data_;
    *(v30 + 3) = *&buf[0].__r_.__value_.__r.__words[1];
    v30[5] = buf[1].__r_.__value_.__l.__data_;
    v37 = buf[0].__r_.__value_.__r.__words[0];
    memset(buf, 0, 32);

    *(v30 + 8) = 1;
  }

  v38 = buf;
LABEL_70:
  sub_100364D88(v38);
}

- (void)startLocalizer
{
  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
  }

  v3 = qword_10045B078;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "startLocalizer", buf, 2u);
  }

  if (self->_simulation.m_initialized)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v4 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "simulating estimation via event playback", buf, 2u);
    }

    (*(*self->_serviceLocalizer.__ptr_ + 24))(self->_serviceLocalizer.__ptr_, 0);
  }

  else
  {
    if (self->_sensorLogger.__ptr_)
    {
      sub_1000DD4BC(buf);
    }

    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v5 = qword_10045B078;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "starting estimation", buf, 2u);
    }

    ptr = self->_serviceLocalizer.__ptr_;
    v7 = sub_10010C670();
    (*(*ptr + 16))(ptr, 0, v7);
  }

  [(CLIndoorProvider *)self setLocalizationStarted:1];
  memset(v19, 0, sizeof(v19));
  *&self->_localizationSessionMetrics.avgNumOfSelectedLocations = 0u;
  *&self->_localizationSessionMetrics.numOfIncomingVIOEstimates = 0u;
  v8 = v19[1];
  *&self->_localizationSessionMetrics.sessionStartTimeNanos.__rep_ = v19[0];
  *&self->_localizationSessionMetrics.ttffNanos.__rep_ = v8;
  *&self->_localizationSessionMetrics.avgHorizontalAccuracy = v19[2];
  self->_localizationSessionMetrics.sessionStartTimeNanos.__rep_ = sub_10010C670();
  [(CLIndoorProvider *)self selectedLocation];
  if (buf[0])
  {
    sub_10035B188(v19);
    [(CLIndoorProvider *)self selectedLocation];
    sub_1001F10C8(v19, v15);
    v9.n128_f64[0] = sub_10034D9F0(&self->_localizationSessionMetrics, v17);
    v10 = v16;
    if (v16)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
        v12 = v11[3];
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v13 = v11;
          (v12->__on_zero_shared)(v12, v9);
          std::__shared_weak_count::__release_weak(v12);
          v11 = v13;
        }

        operator delete(v11);
      }

      while (v10);
    }

    v14 = v15[0];
    v15[0] = 0;
    if (v14)
    {
      operator delete(v14);
    }

    if (buf[0] == 1)
    {
      sub_10035B188(v19);
    }
  }
}

- (void)onQueueInterruptDownloads:(int)downloads
{
  v4 = objc_autoreleasePoolPush();
  [(CLIndoorProvider *)self setCurrentForegroundFetchRequest:0];

  objc_autoreleasePoolPop(v4);
}

- (void)stopLocalizer
{
  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
  }

  v3 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stopLocalizer", buf, 2u);
  }

  if (self->_serviceLocalizer.__ptr_)
  {
    if (qword_10045B070 != -1)
    {
      sub_100387B98();
    }

    v4 = qword_10045B078;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      localizationActive = [(CLIndoorProvider *)self localizationActive];
      localizationStarted = [(CLIndoorProvider *)self localizationStarted];
      *buf = 67109376;
      *&buf[4] = localizationActive;
      LOWORD(v21) = 1024;
      *(&v21 + 2) = localizationStarted;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "estimation stopped. active=%d, started = %d", buf, 0xEu);
    }

    ptr = self->_localizationSensorCollection.__ptr_;
    (*(*self->_serviceLocalizer.__ptr_ + 32))(self->_serviceLocalizer.__ptr_);
    v8 = self->_sensorLogger.__ptr_;
    if (v8 && sub_1000CCC18(v8))
    {
      (*(*ptr + 32))(ptr, 2);
      sub_1000C84B4(self->_sensorLogger.__ptr_);
    }

    v9 = self->_serviceLocalizer.__ptr_;
    self->_serviceLocalizer.__ptr_ = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = self->_sensorLogger.__ptr_;
    if (v10)
    {
      v11 = v10 + 24;
      cntrl = self->_sensorLogger.__cntrl_;
      *buf = v11;
      *&v21 = cntrl;
      if (cntrl)
      {
        atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
      }

      sub_100336698(ptr, buf);
      v13 = v21;
      if (v21 && !atomic_fetch_add((v21 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v14 = self->_sensorLogger.__cntrl_;
      self->_sensorLogger.__ptr_ = 0;
      self->_sensorLogger.__cntrl_ = 0;
      if (v14 && !atomic_fetch_add(v14 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(*v14 + 16))(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }

    self->_localizationSessionMetrics.sessionStopTimeNanos.__rep_ = sub_10010C670();
    sub_10034DAA8(&self->_localizationSessionMetrics);
    v21 = 0u;
    memset(v22, 0, sizeof(v22));
    *&self->_localizationSessionMetrics.avgNumOfSelectedLocations = 0u;
    *&self->_localizationSessionMetrics.numOfIncomingVIOEstimates = 0u;
    v15 = v22[0];
    *&self->_localizationSessionMetrics.sessionStartTimeNanos.__rep_ = v21;
    *&self->_localizationSessionMetrics.ttffNanos.__rep_ = v15;
    *&self->_localizationSessionMetrics.avgHorizontalAccuracy = v22[1];
  }

  [(CLIndoorProvider *)self setLocalizationStarted:0];
  indoorUniverse = self->_indoorUniverse;
  self->_indoorUniverse = 0;

  lastOutdoorPositionAvailable = self->_lastOutdoorPositionAvailable;
  self->_lastOutdoorPositionAvailable = 0;

  v18[0] = 0;
  [(CLIndoorProvider *)self setSelectedLocation:v18];
  if (v18[0] == 1)
  {
    sub_10035B188(v19);
  }
}

- (void)initializeIndoorUniverse:(id)universe atLocation:(id)location
{
  universeCopy = universe;
  locationCopy = location;
  if (self->_indoorUniverse)
  {
    sub_1000474A4(v21, "");
    sub_10032C15C("IndoorUniverse already set and being asked to re-initialized", __p);
    sub_1000E661C(v21, __p, 1);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(*v21);
    }

    sub_10003F5D0(v20);
  }

  v19 = objc_alloc_init(NSMutableArray);
  v7 = sub_1000DD41C();
  sub_100003AE8(v7);
  data = __p[0].__r_.__value_.__l.__data_;
  sub_100005B18(__p);
  if (data == data >> 31 || (v9 = sub_1000DD41C(), sub_100003AE8(v9), v10 = __p[0].__r_.__value_.__l.__data_, sub_100005B18(__p), v10 == v10 >> 31))
  {
    if (locationCopy)
    {
      v11 = [GeographicCoordinate alloc];
      [locationCopy gpsLocation];
      v12 = *(__p[0].__r_.__value_.__r.__words + 4);
      [locationCopy gpsLocation];
      v13 = *&v21[12];
      [locationCopy gpsLocation];
      v14 = [(GeographicCoordinate *)v11 initWithLatitude:v12 longitude:v13 andAltitude:*(&v20[3] + 4)];
    }

    else
    {
      v14 = 0;
    }

    universeCopy = [NSSet setWithArray:v19, universeCopy];
    [(CLAvailableVenuesStateMachine *)self->_avlVenuesStateMachine setDisabledVenues:universeCopy];

    [(CLAvailableVenuesStateMachine *)self->_avlVenuesStateMachine clearLastFix];
    [(CLAvailableVenuesStateMachine *)self->_avlVenuesStateMachine getNearbyLocationGroupsForTile:v18 withUpdatedPos:v14];
    objc_claimAutoreleasedReturnValue();
    getAvlTile = [v18 getAvlTile];
    v20[0] = off_10044B408;
    sub_100170224(getAvlTile, __p);
    operator new();
  }

  sub_1000474A4(v21, "");
  sub_10032C004("Override of DYNAMIC_UNIVERSE_DISABLED_VENUES is not supported.", __p);
  sub_1000E661C(v21, __p, 1);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(*v21);
LABEL_6:
  sub_10003F5D0(v20);
}

- (void)updateUniverseIfAllowedAndNecessary:(id *)necessary
{
  if (self->_serviceLocalizer.__ptr_ && [(CLIndoorProvider *)self localizationStarted])
  {
    if (!self->_indoorUniverse)
    {
      sub_1000474A4(v12, "");
      sub_100258AB0("IndoorUniverse not initialzied prior to requesting update.", &buf);
      sub_100383AA4(&buf, __p, v12);
      sub_10003F5D0(__p);
    }

    v5 = sub_10010C670();
    indoorUniverse = self->_indoorUniverse;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3321888768;
    v9[2] = sub_100361C38;
    v9[3] = &unk_10044B2A8;
    selfCopy = self;
    v10 = selfCopy;
    [(CLIndoorUniverse *)indoorUniverse updateLocalizerUniverseIfAllowed:v5 fromLocation:necessary withUniverseUpdatedHandler:v9];
  }

  else
  {
    if (qword_10045B070 != -1)
    {
      sub_100387BC0();
    }

    v8 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[CLIndoorProvider] Localizer is not running, ignoring request to updateUniverse", &buf, 2u);
    }
  }
}

- (void)outdoorLocationAvailable:(id)available
{
  availableCopy = available;
  objc_storeStrong(&self->_lastOutdoorPositionAvailable, available);
  v41 = 0u;
  memset(v42, 0, 28);
  v39 = 0u;
  *__val = 0u;
  v38 = 0u;
  memset(v37, 0, sizeof(v37));
  if (self->_lastOutdoorPositionAvailable)
  {
    [(CLGpsPosition *)self->_lastOutdoorPositionAvailable gpsLocation];
    v6 = *(v37 + 4);
    v7 = v36 & 0xFC;
  }

  else
  {
    v7 = 0;
    v6 = 0.0;
  }

  v34 = 0;
  v35 = 0;
  v33 = off_10043DB28;
  v36 = v7;
  sub_1001294D4(&v33, v6);
  sub_1001294DC(&v33, *(v37 + 12));
  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v8 = qword_10045B078;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = v34;
    v9 = v35;
    v11 = __val[0];
    ptr = self->_serviceLocalizer.__ptr_;
    localizationStarted = [(CLIndoorProvider *)self localizationStarted];
    *buf = 134546689;
    *&buf[4] = v10;
    if (localizationStarted)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    *&buf[12] = 2053;
    *&buf[14] = v9;
    *&buf[22] = 1026;
    *&buf[24] = v11;
    *&buf[28] = 1026;
    *&buf[30] = ptr != 0;
    *&buf[34] = 1026;
    *&buf[36] = v14;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[CLIndoorProvider] We just got notified about an outdoor position at %{sensitive}.8lf, %{sensitive}.8lf from provider %{public}d, localizing %{public}d, %{public}d", buf, 0x28u);
  }

  if (__val[0] != 10)
  {
    v47 = *__val;
    v48 = v41;
    v49[0] = v42[0];
    *(v49 + 12) = *(v42 + 12);
    *&buf[32] = v37[2];
    v44 = v37[3];
    v45 = v38;
    v46 = v39;
    *buf = v37[0];
    *&buf[16] = v37[1];
    [(CLIndoorProvider *)self updateUniverseIfAllowedAndNecessary:buf];
    v25[0] = off_10043DF18;
    memset(&v25[1], 0, 24);
    v25[4] = off_10043DB28;
    v25[5] = 0;
    v25[6] = 0;
    v26 &= 0xFCu;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    v32 &= 0xF800u;
    v15 = sub_10010C758();
    rep = std::chrono::system_clock::now().__d_.__rep_;
    v23[1] = 0;
    v23[2] = 0;
    v23[0] = off_10043DB28;
    v24 &= 0xFCu;
    sub_1001294D4(v23, *(v37 + 4));
    sub_1001294DC(v23, *(v37 + 12));
    sub_100126648(v25, v15);
    sub_10012A88C(v25, rep);
    sub_10012E9CC(v25, v15);
    sub_10012E9D4(v25, v23);
    sub_10013D0C0(v25, *(&v37[1] + 12));
    sub_10013D0E8(v25, *(&v37[2] + 12));
    sub_10013D0D4(v25, *(&v37[1] + 4));
    std::to_string(buf, __val[0]);
    sub_10013D08C(v25, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
      if (availableCopy)
      {
        goto LABEL_14;
      }
    }

    else if (availableCopy)
    {
LABEL_14:
      [availableCopy gpsLocationPrivate];
      v17 = *&buf[40];
LABEL_17:
      sub_10013D0FC(v25, v17);
      if (availableCopy)
      {
        [availableCopy gpsLocationPrivate];
        v18 = *&buf[44];
      }

      else
      {
        bzero(buf, 0x230uLL);
        v18 = 0.0;
      }

      sub_10013D110(v25, v18);
      if (availableCopy)
      {
        [availableCopy gpsLocationPrivate];
        v19 = *&v44;
      }

      else
      {
        bzero(buf, 0x230uLL);
        v19 = 0.0;
      }

      sub_10013D124(v25, v19);
      if (self->_serviceLocalizer.__ptr_ && [(CLIndoorProvider *)self localizationStarted])
      {
        if (qword_10045B070 != -1)
        {
          sub_100387B98();
        }

        v20 = qword_10045B078;
        if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Ignoring outdoor position estimate - not localizing yet", buf, 2u);
        }

        sub_1003245E4();
        operator new();
      }

      v21 = self->_sensorLogger.__ptr_;
      if (v21 && self->_localizationActive)
      {
        sub_1000CD068(v21, v25);
      }

      if (self->_deferredState.m_initialized)
      {
        xpcConnection = [(CLIndoorProvider *)self xpcConnection];
        if (xpcConnection)
        {
          *buf = *(&self->_deferredState.m_storage.dummy_.aligner_ + 7);
          buf[8] = 0;
          if (self->_anon_11[7] == 1)
          {
            *&buf[16] = *&self->_anon_11[15];
            if (self->_anon_11[46] < 0)
            {
              sub_100003228(&buf[24], *&self->_anon_11[23], *&self->_anon_11[31]);
            }

            else
            {
              *&buf[24] = *&self->_anon_11[23];
              *&buf[40] = *&self->_anon_11[39];
            }

            buf[8] = 1;
          }

          if (self->_deferredState.m_initialized)
          {
            if (self->_anon_11[7] == 1)
            {
              sub_100364D88(&self->_anon_11[15]);
              self->_anon_11[7] = 0;
            }

            self->_deferredState.m_initialized = 0;
          }

          if (*buf)
          {
            [(CLIndoorProvider *)self playbackDatarun:?];
          }

          if (buf[8] == 1)
          {
            if (!self->_lastOutdoorPositionAvailable || ([(CLIndoorProvider *)self startUpdatingLocationDeferred:?], (buf[8] & 1) != 0))
            {
              sub_100364D88(&buf[16]);
              buf[8] = 0;
            }
          }
        }
      }

      nullsub_76(v23);
      sub_10013CFA4(v25);
      goto LABEL_53;
    }

    bzero(buf, 0x230uLL);
    v17 = 0.0;
    goto LABEL_17;
  }

LABEL_53:
  nullsub_76(&v33);
}

- (void)gpsEstimateAvailable:(id)available
{
  availableCopy = available;
  v6 = availableCopy;
  if (!availableCopy || ([availableCopy gpsLocation], v56 != 1) && (objc_msgSend(v6, "gpsLocation"), v25 != 9))
  {
    objc_storeStrong(&self->_lastNonGpsPositionAvailable, available);
    v9 = 0;
    self->_lastNonGpsReceivedTime.__rep_ = sub_10010C670();
    if (!self->_serviceLocalizer.__ptr_)
    {
      goto LABEL_14;
    }

LABEL_11:
    if (![(CLIndoorProvider *)self localizationStarted])
    {
      goto LABEL_14;
    }

    v48 = 0u;
    memset(v49, 0, sizeof(v49));
    v46 = 0u;
    v47 = 0u;
    memset(v45, 0, sizeof(v45));
    if (v6)
    {
      [v6 gpsLocation];
      v81 = 0u;
      v80 = 0u;
      v79 = 0u;
      v78 = 0u;
      v77 = 0u;
      v76 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      *buf = 0u;
      v51 = 0u;
      [v6 gpsLocationPrivate];
    }

    else
    {
      bzero(buf, 0x230uLL);
    }

    sub_10031A37C(v41);
    sub_1000AB69C(v26);
    v40 |= 1u;
    v11 = v27;
    if (!v27)
    {
      operator new();
    }

    *(v27 + 52) |= 1u;
    v40 |= 1u;
    *(v11 + 52) |= 2u;
    *(v11 + 16) = v42;
    v40 |= 1u;
    v12 = v43;
    *(v11 + 52) |= 4u;
    *(v11 + 32) = v12;
    v40 |= 1u;
    v13 = *(&v45[1] + 12);
    v14 = *&v53;
    v15 = v47;
    v16 = *(&v45[1] + 4);
    v17 = v44;
    *(v11 + 52) |= 8u;
    *(v11 + 40) = v17;
    v18 = v40;
    v28 = *(v45 + 4);
    v36 = DWORD1(v46);
    v29 = v15;
    v37 = vcvtq_f64_f32(*(&v52 + 8));
    v40 |= 0x3C10Eu;
    v38 = v14;
    v34 = *(&v45[3] + 12);
    v35 = *(&v45[2] + 12);
    v33 = v16;
    v31 = v13;
    if (!v9)
    {
      v20 = v18 | 0x3DF6E;
      v21 = 1;
      goto LABEL_29;
    }

    if (DWORD2(v69) == 1)
    {
      v19 = v18 | 0x3DF6E;
      v30 = 1;
    }

    else
    {
      v19 = v18 | 0x3DF2E;
      if (DWORD2(v69) != 2)
      {
        goto LABEL_28;
      }
    }

    v19 |= 0x40u;
    v30 = 2;
LABEL_28:
    v21 = 0;
    v20 = v19 | 0x40;
LABEL_29:
    v30 = v21;
    v32 = *(&v45[2] + 4);
    v40 = v20 | 0x40080;
    v22 = v39;
    if (!v39)
    {
      operator new();
    }

    v23 = v82;
    *(v39 + 24) |= 1u;
    *(v22 + 16) = v23;
    sub_100324F84(&v24, 1, v41, v26);
    operator new();
  }

  objc_storeStrong(&self->_lastGpsPositionAvailable, available);
  self->_lastGpsReceivedTime.__rep_ = sub_10010C670();
  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v7 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
  {
    rep = self->_lastGpsReceivedTime.__rep_;
    *buf = 134217984;
    *&buf[4] = rep;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Updated last available GPS estimate. New estimate's timestamp: %llu", buf, 0xCu);
  }

  v9 = 1;
  if (self->_serviceLocalizer.__ptr_)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (qword_10045B070 != -1)
  {
    sub_100387B98();
  }

  v10 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Not passing the GPS estimate to the PF or the logger since we are not localizing yet", buf, 2u);
  }
}

- (void)gpsSignalQualityAvailable:(id)available
{
  availableCopy = available;
  if (self->_serviceLocalizer.__ptr_)
  {
    goto LABEL_2;
  }

  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
    v5 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_5;
    }

LABEL_2:

    return;
  }

  v5 = qword_10045B078;
  if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    goto LABEL_2;
  }

LABEL_5:
  *v6 = 0;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Ignoring GPS signal quality - not localizing yet", v6, 2u);
}

- (void)clVisionNotificationAvailable:(id)available
{
  availableCopy = available;
  v5 = availableCopy;
  if (self->_serviceLocalizer.__ptr_)
  {
    notificationType = [availableCopy notificationType];
    if (notificationType)
    {
      if (notificationType == 1)
      {
        [(CLIndoorProvider *)self clVisionNotificationVIOEstimationAvailable:v5];
      }

      else if (notificationType == 2)
      {
        [(CLIndoorProvider *)self clVisionNotificationVLLocalizationResultAvailable:v5];
      }
    }

    else
    {
      [(CLIndoorProvider *)self clVisionNotificationARSessionStateAvailable:v5];
    }

    goto LABEL_6;
  }

  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
    v7 = qword_10045B078;
    if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

LABEL_6:

    return;
  }

  v7 = qword_10045B078;
  if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    goto LABEL_6;
  }

LABEL_9:
  *v8 = 0;
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Ignoring CLVision notification - not localizing yet", v8, 2u);
}

- (void)clpOutdoorEstimatorLogEntryNotificationAvailable:(id)available
{
  availableCopy = available;
  if (self->_serviceLocalizer.__ptr_)
  {
    if (qword_10045B070 == -1)
    {
      v6 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_100387BC0();
      v6 = qword_10045B078;
      if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }
    }

    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Receiving CLPOutdoorEstimatorLogEntry notification", __p, 2u);
LABEL_6:
    sub_10031A37C(v13);
    sub_10006D430(v12);
    if (availableCopy)
    {
      [availableCopy serializedOutdoorEstimatorLogEntry];
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v11 = 0;
    }

    wireless_diagnostics::google::protobuf::MessageLite::ParseFromString();
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    v5 = *(*(*self->_serviceLocalizer.__ptr_ + 120))(self->_serviceLocalizer.__ptr_);
    sub_1003250D4(__p, v13, v12);
    operator new();
  }

  if (qword_10045B070 == -1)
  {
    v8 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

LABEL_11:
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Ignoring outdoor estimator update notification - not localizing yet", __p, 2u);
    goto LABEL_16;
  }

  sub_100387BC0();
  v8 = qword_10045B078;
  if (os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

LABEL_16:
}

- (void)clVisionNotificationARSessionStateAvailable:(id)available
{
  availableCopy = available;
  if (qword_10045B070 != -1)
  {
    sub_100387BC0();
  }

  v5 = qword_10045B078;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    buf = 134349056;
    buf_4 = [availableCopy arSessionState];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Receiving CLVision notification - ARSessionState %{public}lu", &buf, 0xCu);
  }

  arSessionState = [availableCopy arSessionState];
  if (arSessionState)
  {
    if (arSessionState == 1)
    {
      v7 = 1;
    }

    else if (arSessionState == 2)
    {
      v7 = 2;
    }

    else
    {
      if (qword_10045B070 != -1)
      {
        sub_100387B98();
      }

      v8 = qword_10045B078;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        arSessionState2 = [availableCopy arSessionState];
        buf = 134349056;
        buf_4 = arSessionState2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Invalid arSessionState %{public}lu", &buf, 0xCu);
      }

      v7 = -1;
    }

    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  sub_10031A37C(v11);
  v10 = *(*(*self->_serviceLocalizer.__ptr_ + 120))(self->_serviceLocalizer.__ptr_);
  sub_100324B40(&buf, v11, &v12);
  operator new();
}

- (void)clVisionNotificationVIOEstimationAvailable:(id)available
{
  availableCopy = available;
  if (qword_10045B070 == -1)
  {
    v5 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_100387BC0();
    v5 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
LABEL_4:
      sub_10031A37C(v10);
      sub_10005810C(v9);
      if (availableCopy)
      {
        [availableCopy serializedVIOEstimation];
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v8 = 0;
      }

      wireless_diagnostics::google::protobuf::MessageLite::ParseFromString();
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      v6 = *(*(*self->_serviceLocalizer.__ptr_ + 120))(self->_serviceLocalizer.__ptr_);
      sub_100324CA4(__p, v10, v9);
      operator new();
    }
  }

  LOWORD(__p[0]) = 0;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Receiving CLVision notification - VIOEstimation", __p, 2u);
  goto LABEL_4;
}

- (void)clVisionNotificationVLLocalizationResultAvailable:(id)available
{
  availableCopy = available;
  if (qword_10045B070 == -1)
  {
    v5 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_100387BC0();
    v5 = qword_10045B078;
    if (!os_log_type_enabled(qword_10045B078, OS_LOG_TYPE_DEBUG))
    {
LABEL_4:
      sub_10031A37C(v10);
      sub_100058258(v9);
      if (availableCopy)
      {
        [availableCopy serializedVLLocalizationResult];
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v8 = 0;
      }

      wireless_diagnostics::google::protobuf::MessageLite::ParseFromString();
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      v6 = *(*(*self->_serviceLocalizer.__ptr_ + 120))(self->_serviceLocalizer.__ptr_);
      sub_100324E10(__p, v10, v9);
      operator new();
    }
  }

  LOWORD(__p[0]) = 0;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Receiving CLVision notification - VLLocalizationResult", __p, 2u);
  goto LABEL_4;
}

- (shared_ptr<ITileDb>)fsDb
{
  cntrl = self->_fsDb.__cntrl_;
  *v2 = self->_fsDb.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (CLIndoorTilePrefetcher)prefetcher
{
  WeakRetained = objc_loadWeakRetained(&self->_prefetcher);

  return WeakRetained;
}

- (optional<SelectedLocations>)selectedLocation
{
  v3 = v2;
  *v2 = 0;
  if (self->_selectedLocation.m_initialized)
  {
    selfCopy = self;
    isa = self[1].super.isa;
    *(v3 + 1) = *(&self->_selectedLocation.m_storage.dummy_.aligner_ + 7);
    *(v3 + 2) = isa;
    if (isa)
    {
      atomic_fetch_add_explicit(isa + 1, 1uLL, memory_order_relaxed);
    }

    self = sub_10035B044((v3 + 24), &self[1]._deferredState);
    v6 = *&selfCopy[1]._anon_11[39];
    *(v3 + 8) = *&selfCopy[1]._anon_11[31];
    *(v3 + 9) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v3[80] = selfCopy[1]._floorEnvironmentLoader.__ptr_;
    *v3 = 1;
  }

  result.m_storage.dummy_.data[7] = a2;
  result.m_initialized = self;
  *result.m_storage.dummy_.data = *(&self + 1);
  *(&result.m_storage.dummy_.aligner_ + 2) = *(&self + 5);
  result.m_storage.dummy_.data[6] = HIBYTE(self);
  return result;
}

- (void)setSelectedLocation:(optional<SelectedLocations>)location
{
  v4 = **&location.m_initialized;
  if (self->_selectedLocation.m_initialized)
  {
    if (**&location.m_initialized)
    {
      p_selectedLocation = &self->_selectedLocation;

      sub_100244ACC(p_selectedLocation, (*&location.m_initialized + 8));
    }

    else
    {
      sub_10035B188((&self->_selectedLocation.m_storage.dummy_.aligner_ + 7));
      self->_selectedLocation.m_initialized = 0;
    }
  }

  else if (**&location.m_initialized)
  {
    v6 = *(*&location.m_initialized + 16);
    *(&self->_selectedLocation.m_storage.dummy_.aligner_ + 7) = *(*&location.m_initialized + 8);
    self[1].super.isa = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    }

    v7 = *&location.m_initialized;
    sub_10035B044(&self[1]._deferredState, *&location.m_initialized + 24);
    v8 = *(v7 + 72);
    *&self[1]._anon_11[31] = *(v7 + 64);
    *&self[1]._anon_11[39] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    LOBYTE(self[1]._floorEnvironmentLoader.__ptr_) = *(v7 + 80);
    self->_selectedLocation.m_initialized = 1;
  }
}

@end