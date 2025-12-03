@interface NIServerDLTDOASession
- (BOOL)_anySessionWithState:(int)state;
- (BOOL)_assignAnchorCoordinates:(void *)coordinates;
- (BOOL)_invalidateSessionWithClusterAddress:(unsigned __int16)address reason:(id)reason;
- (BOOL)_prepareLocalizationSessionFromOOBConfig:(const void *)config outServiceRequest:(void *)request outStartOptions:(void *)options;
- (BOOL)_scheduleSessionToTrackAddress:(unsigned __int16)address;
- (BOOL)_startTrackClusterWithAddress:(unsigned __int16)address;
- (BOOL)_triggerRangingForSession:(shared_ptr<rose:(const void *)session :objects::LocalizationSession>)a3 startRangingOptions:;
- (BOOL)_validMeasurement:(void *)measurement;
- (NIServerDLTDOASession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error;
- (id).cxx_construct;
- (id)configure;
- (id)pauseWithSource:(int64_t)source;
- (id)run;
- (id)sessionRecordPrintableState;
- (optional<OOBConfig>)_buildOOBConfigFromOOBMessage:(SEL)message;
- (optional<OOBConfig>)_findOOBConfigWithAddress:(SEL)address;
- (optional<unsigned)_findAddressWithTicketId:(unsigned __int16)id;
- (optional<unsigned)_nextPendingTriggerAnchor;
- (vector<OOBConfig,)_parseOOBConfigFromDebugParameters:(NIServerDLTDOASession *)self;
- (void)_didUpdateWifiEvent:(id)event;
- (void)_executeWiFiScanning;
- (void)_getCachedWifiResult;
- (void)_internalConfigWithDebugParams;
- (void)_invalidateSessionWhenTimeout;
- (void)_processUWBOOBRangingPayload:(const void *)payload;
- (void)_removeInactiveRangingAnchorIfAny;
- (void)_startDevicePDRUpdates;
- (void)_watchdogLoop;
- (void)dealloc;
- (void)didReceiveNewSolution:(const void *)solution;
- (void)invalidate;
- (void)processVisionInput:(id)input;
- (void)roseSession:(shared_ptr<rose:(int)session :objects::RoseBaseSession>)a3 invalidatedWithReason:;
- (void)updatesEngine:(id)engine didUpdateDLTDOAMeasurements:(id)measurements;
- (void)updatesEngine:(id)engine didUpdateNICoordinates:(id)coordinates;
@end

@implementation NIServerDLTDOASession

- (NIServerDLTDOASession)initWithResourcesManager:(id)manager configuration:(id)configuration error:(id *)error
{
  managerCopy = manager;
  configurationCopy = configuration;
  v11 = objc_opt_class();
  if (v11 != objc_opt_class())
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"NIServerDLTDOASession.mm" lineNumber:271 description:@"NIServerDLTDOASession given invalid configuration."];
  }

  v30.receiver = self;
  v30.super_class = NIServerDLTDOASession;
  v12 = [(NIServerBaseSession *)&v30 initWithResourcesManager:managerCopy configuration:configurationCopy error:error];
  if (v12)
  {
    serverSessionIdentifier = [managerCopy serverSessionIdentifier];
    uUIDString = [serverSessionIdentifier UUIDString];
    v15 = +[NSUUID UUID];
    uUIDString2 = [v15 UUIDString];
    v17 = [NSString stringWithFormat:@"%@---%@", uUIDString, uUIDString2];
    v18 = *(v12 + 6);
    *(v12 + 6) = v17;

    clientConnectionQueue = [managerCopy clientConnectionQueue];
    v20 = *(v12 + 7);
    *(v12 + 7) = clientConnectionQueue;

    if (managerCopy)
    {
      [managerCopy protobufLogger];
      v21 = v29;
    }

    else
    {
      v21 = 0uLL;
    }

    v22 = *(v12 + 9);
    *(v12 + 4) = v21;
    if (v22)
    {
      sub_10000AD84(v22);
    }

    v23 = [configurationCopy copy];
    v24 = *(v12 + 10);
    *(v12 + 10) = v23;

    v25 = *(v12 + 11);
    *(v12 + 11) = 0;

    v12[96] = 0;
    sub_10027C3D4(v12 + 13, 0, 0, 0);
    sub_10027C9B4(v12 + 16, 0, 0);
    sub_10027C9B4(v12 + 19, 0, 0);
    sub_10027CC30(v12 + 22, 0, 0);
    sub_10002074C((v12 + 200), *(v12 + 26));
    *(v12 + 25) = v12 + 208;
    *(v12 + 27) = 0;
    *(v12 + 26) = 0;
    if (v12[226] == 1)
    {
      v12[226] = 0;
    }

    sub_10027CEA4(v12 + 29, 0, 0);
    sub_10027D108((v12 + 256), *(v12 + 32));
    sub_10027D210(v12 + 35, 0, 0);
    sub_10027D5C4(v12 + 51, 0, 0);
    v26 = v12;
  }

  return v12;
}

- (id)configure
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (!self->_configuration)
  {
    sub_1004B55E8();
  }

  v3 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    configuration = self->_configuration;
    *buf = 138412290;
    v20 = configuration;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-loc,Configure. Configuration given: %@", buf, 0xCu);
  }

  v18.receiver = self;
  v18.super_class = NIServerDLTDOASession;
  resourcesManager = [(NIServerBaseSession *)&v18 resourcesManager];
  if (self->_updatesEngine)
  {
    goto LABEL_11;
  }

  v6 = [NINearbyUpdatesEngine alloc];
  v7 = self->_configuration;
  clientQueue = self->_clientQueue;
  analytics = [resourcesManager analytics];
  cntrl = self->_pbLogger.__cntrl_;
  ptr = self->_pbLogger.__ptr_;
  v17 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v15 = 0;
  v11 = [(NINearbyUpdatesEngine *)v6 initWithConfiguration:v7 queue:clientQueue delegate:self dataSource:self analyticsManager:analytics protobufLogger:&ptr error:&v15];
  v12 = v15;
  updatesEngine = self->_updatesEngine;
  self->_updatesEngine = v11;

  if (v17)
  {
    sub_10000AD84(v17);
  }

  if (self->_updatesEngine)
  {

LABEL_11:
    v12 = 0;
  }

  return v12;
}

- (id)run
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (self->_isRunning)
  {
    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ses-loc,Session is running, return", v12, 2u);
    }
  }

  else
  {
    v4 = +[NIServerDLTDOAService sharedInstance];
    [v4 setClient:self];

    self->_sessionLastActiveEventTimestamp.var0.__val_ = sub_100005288();
    self->_sessionLastActiveEventTimestamp.__engaged_ = 1;
    self->_sessionRunTimestamp.var0.__val_ = sub_100005288();
    self->_sessionRunTimestamp.__engaged_ = 1;
    v5 = objc_alloc_init(CMOdometryManager);
    pdrManager = self->_pdrManager;
    self->_pdrManager = v5;

    if (self->_pdrManager)
    {
      v7 = objc_opt_new();
      pdrOperationQueue = self->_pdrOperationQueue;
      self->_pdrOperationQueue = v7;

      [(NSOperationQueue *)self->_pdrOperationQueue setUnderlyingQueue:self->_clientQueue];
      [(NIServerDLTDOASession *)self _startDevicePDRUpdates];
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B5614();
    }

    self->_isRunning = 1;
    v9 = +[NSUserDefaults standardUserDefaults];
    if ([v9 BOOLForKey:@"NIDLTDOAWIFIOOBTest"])
    {
      [(NIServerDLTDOASession *)self _executeWiFiScanning];
    }

    else
    {
      debugParameters = [(NIDLTDOAConfiguration *)self->_configuration debugParameters];
      if (debugParameters)
      {
        [(NIServerDLTDOASession *)self _internalConfigWithDebugParams];
      }

      else
      {
        [(NIServerDLTDOASession *)self _executeWiFiScanning];
      }
    }

    [(NIServerDLTDOASession *)self _watchdogLoop];
  }

  return 0;
}

- (id)pauseWithSource:(int64_t)source
{
  dispatch_assert_queue_V2(self->_clientQueue);
  self->_isRunning = 0;
  [(CMOdometryManager *)self->_pdrManager stopOdometryUpdates];
  pdrManager = self->_pdrManager;
  self->_pdrManager = 0;

  sub_100274AB0(&self->_oobConfigs);
  sub_10002074C(&self->_addressToCoordinatesOOB, self->_addressToCoordinatesOOB.__tree_.__end_node_.__left_);
  self->_addressToCoordinatesOOB.__tree_.__begin_node_ = &self->_addressToCoordinatesOOB.__tree_.__end_node_;
  self->_addressToCoordinatesOOB.__tree_.__size_ = 0;
  self->_addressToCoordinatesOOB.__tree_.__end_node_.__left_ = 0;
  sub_10002074C(&self->_addressToCoordinatesDTM, self->_addressToCoordinatesDTM.__tree_.__end_node_.__left_);
  self->_addressToCoordinatesDTM.__tree_.__begin_node_ = &self->_addressToCoordinatesDTM.__tree_.__end_node_;
  self->_addressToCoordinatesDTM.__tree_.__size_ = 0;
  self->_addressToCoordinatesDTM.__tree_.__end_node_.__left_ = 0;
  sub_10002074C(&self->_addressToTrackingAnchorState, self->_addressToTrackingAnchorState.__tree_.__end_node_.__left_);
  self->_addressToTrackingAnchorState.__tree_.__begin_node_ = &self->_addressToTrackingAnchorState.__tree_.__end_node_;
  self->_addressToTrackingAnchorState.__tree_.__size_ = 0;
  self->_addressToTrackingAnchorState.__tree_.__end_node_.__left_ = 0;
  if (self->_sessionRunTimestamp.__engaged_)
  {
    self->_sessionRunTimestamp.__engaged_ = 0;
  }

  if (self->_sessionLastActiveEventTimestamp.__engaged_)
  {
    self->_sessionLastActiveEventTimestamp.__engaged_ = 0;
  }

  wifiLeechIfc = self->_wifiLeechIfc;
  if (wifiLeechIfc)
  {
    [(CWFInterface *)wifiLeechIfc invalidate];
    v6 = self->_wifiLeechIfc;
    self->_wifiLeechIfc = 0;
  }

  p_end_node = &self->_sessions.__tree_.__end_node_;
  begin_node = self->_sessions.__tree_.__begin_node_;
  if (begin_node != &self->_sessions.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[5].__left_;
      if (left)
      {
        sub_10033B864(left);
        v10 = begin_node[6].__left_;
        begin_node[5].__left_ = 0;
        begin_node[6].__left_ = 0;
        if (v10)
        {
          sub_10000AD84(v10);
        }
      }

      v11 = begin_node[1].__left_;
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = v11->__left_;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = begin_node[2].__left_;
          v13 = v12->__left_ == begin_node;
          begin_node = v12;
        }

        while (!v13);
      }

      begin_node = v12;
    }

    while (v12 != p_end_node);
  }

  sub_10027D480(&self->_sessions, self->_sessions.__tree_.__end_node_.__left_);
  self->_sessions.__tree_.__end_node_.__left_ = 0;
  self->_sessions.__tree_.__size_ = 0;
  self->_sessions.__tree_.__begin_node_ = p_end_node;
  if (self->_currentBlockIndex.__engaged_)
  {
    self->_currentBlockIndex.__engaged_ = 0;
  }

  sub_10027CEA4(&self->_expectedAddresses, 0, 0);
  sub_10027D108(&self->_cachedMeasurements, self->_cachedMeasurements.__begin_);
  p_cachedWifiOOBAnchors = &self->_cachedWifiOOBAnchors;
  sub_10002074C(p_cachedWifiOOBAnchors, p_cachedWifiOOBAnchors->__tree_.__end_node_.__left_);
  p_cachedWifiOOBAnchors->__tree_.__begin_node_ = &p_cachedWifiOOBAnchors->__tree_.__end_node_;
  p_cachedWifiOOBAnchors->__tree_.__size_ = 0;
  p_cachedWifiOOBAnchors->__tree_.__end_node_.__left_ = 0;
  return 0;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_clientQueue);
  p_end_node = &self->_clusterToSessionRecord.__tree_.__end_node_;
  begin_node = self->_clusterToSessionRecord.__tree_.__begin_node_;
  if (begin_node != &self->_clusterToSessionRecord.__tree_.__end_node_)
  {
    do
    {
      v5 = +[NIServerDLTDOAService sharedInstance];
      v6 = *&begin_node[5].__left_;
      *&v24[9] = *(&begin_node[8].__left_ + 1);
      v7 = *&begin_node[7].__left_;
      v23 = v6;
      *v24 = v7;
      if (SHIBYTE(begin_node[13].__left_) < 0)
      {
        sub_1000056BC(&__p, begin_node[11].__left_, begin_node[12].__left_);
      }

      else
      {
        __p = *&begin_node[11].__left_;
        left = begin_node[13].__left_;
      }

      [v5 clientInvalidateWithSessionRecord:&v23];
      if (SHIBYTE(left) < 0)
      {
        operator delete(__p);
      }

      v8 = begin_node[1].__left_;
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = v8->__left_;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = begin_node[2].__left_;
          v10 = v9->__left_ == begin_node;
          begin_node = v9;
        }

        while (!v10);
      }

      begin_node = v9;
    }

    while (v9 != p_end_node);
  }

  v11 = +[NIServerDLTDOAService sharedInstance];
  [v11 setClient:0];

  sub_10027D7EC(&self->_clusterToSessionRecord, self->_clusterToSessionRecord.__tree_.__end_node_.__left_);
  self->_clusterToSessionRecord.__tree_.__end_node_.__left_ = 0;
  self->_clusterToSessionRecord.__tree_.__size_ = 0;
  self->_clusterToSessionRecord.__tree_.__begin_node_ = p_end_node;
  [(CMOdometryManager *)self->_pdrManager stopOdometryUpdates];
  pdrManager = self->_pdrManager;
  self->_pdrManager = 0;

  [(NINearbyUpdatesEngine *)self->_updatesEngine invalidate];
  updatesEngine = self->_updatesEngine;
  self->_updatesEngine = 0;

  wifiLeechIfc = self->_wifiLeechIfc;
  if (wifiLeechIfc)
  {
    [(CWFInterface *)wifiLeechIfc invalidate];
    v15 = self->_wifiLeechIfc;
    self->_wifiLeechIfc = 0;
  }

  v16 = &self->_sessions.__tree_.__end_node_;
  v17 = self->_sessions.__tree_.__begin_node_;
  if (v17 != &self->_sessions.__tree_.__end_node_)
  {
    do
    {
      v18 = v17[5].__left_;
      if (v18)
      {
        sub_10033B864(v18);
        v19 = v17[6].__left_;
        v17[5].__left_ = 0;
        v17[6].__left_ = 0;
        if (v19)
        {
          sub_10000AD84(v19);
        }
      }

      v20 = v17[1].__left_;
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = v20->__left_;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v17[2].__left_;
          v10 = v21->__left_ == v17;
          v17 = v21;
        }

        while (!v10);
      }

      v17 = v21;
    }

    while (v21 != v16);
  }

  sub_10027D480(&self->_sessions, self->_sessions.__tree_.__end_node_.__left_);
  self->_sessions.__tree_.__end_node_.__left_ = 0;
  self->_sessions.__tree_.__size_ = 0;
  self->_sessions.__tree_.__begin_node_ = v16;
  sub_10002074C(&self->_cachedWifiOOBAnchors, self->_cachedWifiOOBAnchors.__tree_.__end_node_.__left_);
  self->_cachedWifiOOBAnchors.__tree_.__begin_node_ = &self->_cachedWifiOOBAnchors.__tree_.__end_node_;
  self->_cachedWifiOOBAnchors.__tree_.__size_ = 0;
  self->_cachedWifiOOBAnchors.__tree_.__end_node_.__left_ = 0;
  if (self->_sessionRunTimestamp.__engaged_)
  {
    self->_sessionRunTimestamp.__engaged_ = 0;
  }

  if (self->_sessionLastActiveEventTimestamp.__engaged_)
  {
    self->_sessionLastActiveEventTimestamp.__engaged_ = 0;
  }

  if (self->_currentBlockIndex.__engaged_)
  {
    self->_currentBlockIndex.__engaged_ = 0;
  }

  sub_10027CEA4(&self->_expectedAddresses, 0, 0);
  self->_isRunning = 0;
  v22.receiver = self;
  v22.super_class = NIServerDLTDOASession;
  [(NIServerBaseSession *)&v22 invalidate];
}

- (void)processVisionInput:(id)input
{
  inputCopy = input;
  dispatch_assert_queue_V2(self->_clientQueue);
  updatesEngine = self->_updatesEngine;
  if (updatesEngine)
  {
    [(NINearbyUpdatesEngine *)updatesEngine acceptVisionInput:inputCopy];
  }

  begin_node = self->_clusterToSessionRecord.__tree_.__begin_node_;
  if (begin_node != &self->_clusterToSessionRecord.__tree_.__end_node_)
  {
    do
    {
      ++HIDWORD(begin_node[7].__left_);
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v7 = left;
          left = left->super.super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v7 = begin_node[2].__left_;
          v8 = v7->super.super.isa == begin_node;
          begin_node = v7;
        }

        while (!v8);
      }

      begin_node = v7;
    }

    while (v7 != &self->_clusterToSessionRecord.__tree_.__end_node_);
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NIServerDLTDOASession;
  [(NIServerDLTDOASession *)&v2 dealloc];
}

- (void)_executeWiFiScanning
{
  if (!self->_wifiLeechIfc)
  {
    v3 = objc_alloc_init(CWFInterface);
    wifiLeechIfc = self->_wifiLeechIfc;
    self->_wifiLeechIfc = v3;

    [(CWFInterface *)self->_wifiLeechIfc setTargetQueue:self->_clientQueue];
    [(CWFInterface *)self->_wifiLeechIfc activate];
    objc_initWeak(&location, self);
    v5 = self->_wifiLeechIfc;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002750FC;
    v10[3] = &unk_1009A14F8;
    objc_copyWeak(&v11, &location);
    [(CWFInterface *)v5 setEventHandler:v10];
    v6 = self->_wifiLeechIfc;
    v9 = 0;
    [(CWFInterface *)v6 startMonitoringEventType:5 error:&v9];
    v7 = v9;
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ses-loc,Start leeching wifi scanning with error? %@", buf, 0xCu);
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  [(NIServerDLTDOASession *)self _getCachedWifiResult];
}

- (BOOL)_scheduleSessionToTrackAddress:(unsigned __int16)address
{
  addressCopy = address;
  addressCopy2 = address;
  v5 = [(NIServerDLTDOASession *)self _anySessionWithState:1];
  v6 = [(NIServerDLTDOASession *)self _anySessionWithState:2];
  v7 = v6;
  if ((v5 & 1) != 0 || v6)
  {
    v14 = qword_1009F9820;
    v13 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      return v13;
    }

    *buf = 67109376;
    *&buf[4] = v5;
    v23 = 1024;
    v24 = v7;
    v15 = "#ses-loc,at least one session in ranging triggered: [%d] or RangingStarted: [%d] state, return";
    v16 = v14;
    v17 = 14;
    goto LABEL_15;
  }

  left = self->_addressToTrackingAnchorState.__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &self->_addressToTrackingAnchorState.__tree_.__end_node_;
    do
    {
      left_low = LOWORD(left[4].__left_);
      v11 = left_low >= addressCopy;
      v12 = left_low < addressCopy;
      if (v11)
      {
        p_end_node = left;
      }

      left = left[v12].__left_;
    }

    while (left);
    if (p_end_node != &self->_addressToTrackingAnchorState.__tree_.__end_node_ && LOWORD(p_end_node[4].__left_) <= addressCopy)
    {
      *buf = &addressCopy2;
      if (*(sub_10027DA6C(&self->_addressToTrackingAnchorState, &addressCopy2) + 10))
      {
        *buf = &addressCopy2;
        if (*(sub_10027DA6C(&self->_addressToTrackingAnchorState, &addressCopy2) + 10) != 3)
        {
          goto LABEL_16;
        }
      }

      if ([(NIServerDLTDOASession *)self _idleSessionsAvailable])
      {
        v13 = [(NIServerDLTDOASession *)self _startTrackClusterWithAddress:addressCopy2];
        if (v13)
        {
          v18 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = addressCopy2;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-loc,started tracking address %hu", buf, 8u);
          }

          LOBYTE(v13) = 1;
        }

        return v13;
      }

      v19 = qword_1009F9820;
      v13 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT);
      if (!v13)
      {
        return v13;
      }

      *buf = 0;
      v15 = "#ses-loc,no idle sessions available, return";
      v16 = v19;
      v17 = 2;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      goto LABEL_16;
    }
  }

  v13 = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
  if (v13)
  {
    sub_1004B5650();
LABEL_16:
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)_startTrackClusterWithAddress:(unsigned __int16)address
{
  addressCopy = address;
  [(NIServerDLTDOASession *)self _findOOBConfigWithAddress:?];
  if ((v34 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B56C4(&addressCopy);
    }

    goto LABEL_27;
  }

  if (![(NIServerDLTDOASession *)self _idleSessionsAvailable])
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B5734(&addressCopy);
    }

    goto LABEL_27;
  }

  left = self->_sessions.__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &self->_sessions.__tree_.__end_node_;
    do
    {
      left_low = LOWORD(left[4].__left_);
      v7 = left_low >= addressCopy;
      v8 = left_low < addressCopy;
      if (v7)
      {
        p_end_node = left;
      }

      left = left[v8].__left_;
    }

    while (left);
    if (p_end_node != &self->_sessions.__tree_.__end_node_ && addressCopy >= LOWORD(p_end_node[4].__left_))
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B57A4(&addressCopy);
      }

      goto LABEL_27;
    }
  }

  v47[0] = 0;
  v48 = 0;
  v45[0] = 0;
  v46 = 0;
  if ((v34 & 1) == 0)
  {
    sub_1000195BC();
  }

  if (![(NIServerDLTDOASession *)self _prepareLocalizationSessionFromOOBConfig:v31 outServiceRequest:v47 outStartOptions:v45])
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B5814();
    }

LABEL_27:
    LOBYTE(v9) = 0;
    goto LABEL_28;
  }

  if ((v48 & 1) == 0)
  {
    sub_1000195BC();
  }

  [(NIServerDLTDOASession *)self _buildRoseSession:v47];
  if (v29 && (*(v29 + 754) & 1) != 0)
  {
    v28.receiver = self;
    v28.super_class = NIServerDLTDOASession;
    resourcesManager = [(NIServerBaseSession *)&v28 resourcesManager];
    *buf = 0;
    *&buf[4] = addressCopy;
    v12 = +[NSDate now];
    [v12 timeIntervalSince1970];
    v39 = v13;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    appStateMonitor = [resourcesManager appStateMonitor];
    monitoredProcessName = [appStateMonitor monitoredProcessName];
    v16 = monitoredProcessName;
    sub_100004A08(&v43, [monitoredProcessName UTF8String]);
    v37 = &addressCopy;
    v36 = buf;
    sub_10027DB40(&self->_clusterToSessionRecord, &addressCopy);
    if (v44 < 0)
    {
      operator delete(v43);
    }

    *buf = &addressCopy;
    v17 = sub_10027DC44(&self->_sessions, &addressCopy);
    v19 = v29;
    v18 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = v17[6];
    v17[5] = v19;
    v17[6] = v18;
    if (v20)
    {
      sub_10000AD84(v20);
    }

    *buf = &addressCopy;
    v21 = sub_10027DC44(&self->_sessions, &addressCopy);
    v22 = v21[6];
    v26 = v21[5];
    v27 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((v46 & 1) == 0)
    {
      sub_1000195BC();
    }

    v9 = [(NIServerDLTDOASession *)self _triggerRangingForSession:&v26 startRangingOptions:v45];
    if (v27)
    {
      sub_10000AD84(v27);
    }

    *buf = &addressCopy;
    *(sub_10027DA6C(&self->_addressToTrackingAnchorState, &addressCopy) + 10) = 1;
    v23 = sub_100005288();
    *buf = &addressCopy;
    *(sub_10027DA6C(&self->_addressToTrackingAnchorState, &addressCopy) + 6) = v23;
    v24 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v25 = "unsuccessfully";
      if (v9)
      {
        v25 = "successfully";
      }

      *buf = 67109378;
      *&buf[4] = addressCopy;
      LOWORD(v39) = 2080;
      *(&v39 + 2) = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#ses-loc,ranging to address %hu is triggered %s", buf, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B5850();
    }

    LOBYTE(v9) = 0;
  }

  if (v30)
  {
    sub_10000AD84(v30);
  }

LABEL_28:
  if (v34 == 1 && __p)
  {
    v33 = __p;
    operator delete(__p);
  }

  return v9;
}

- (BOOL)_invalidateSessionWithClusterAddress:(unsigned __int16)address reason:(id)reason
{
  addressCopy = address;
  addressCopy2 = address;
  reasonCopy = reason;
  p_sessions = &self->_sessions;
  left = p_sessions->__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_22;
  }

  p_end_node = &p_sessions->__tree_.__end_node_;
  do
  {
    left_low = LOWORD(left[4].__left_);
    v11 = left_low >= addressCopy;
    v12 = left_low < addressCopy;
    if (v11)
    {
      p_end_node = left;
    }

    left = left[v12].__left_;
  }

  while (left);
  if (p_end_node != &p_sessions->__tree_.__end_node_ && LOWORD(p_end_node[4].__left_) <= addressCopy)
  {
    *buf = &addressCopy2;
    v15 = sub_10027DC44(p_sessions, &addressCopy2);
    v16 = v15[5];
    v17 = v15[6];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10033B864(v16);
    if (v17)
    {
      sub_10000AD84(v17);
    }

    sub_10027DD18(p_sessions, &addressCopy2);
    v18 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = addressCopy2;
      v21 = 2112;
      v22 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#ses-loc,cluster: %hu's ranging session will be invalidate due to %@", buf, 0x12u);
    }

    v13 = 1;
  }

  else
  {
LABEL_22:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B588C();
    }

    v13 = 0;
  }

  return v13;
}

- (void)_startDevicePDRUpdates
{
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_100275C38;
  v7 = &unk_10099F040;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(&v4);
  [(CMOdometryManager *)self->_pdrManager setOdometryUpdateInterval:0.1, v4, v5, v6, v7];
  [(CMOdometryManager *)self->_pdrManager startOdometryUpdatesToQueue:self->_pdrOperationQueue withHandler:v3];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)updatesEngine:(id)engine didUpdateNICoordinates:(id)coordinates
{
  coordinatesCopy = coordinates;
  v7 = coordinatesCopy;
  if (self->_updatesEngine == engine)
  {
    clientQueue = self->_clientQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100275FA4;
    v9[3] = &unk_10098A2E8;
    v9[4] = self;
    v10 = coordinatesCopy;
    dispatch_async(clientQueue, v9);
  }
}

- (void)updatesEngine:(id)engine didUpdateDLTDOAMeasurements:(id)measurements
{
  measurementsCopy = measurements;
  v7 = measurementsCopy;
  if (self->_updatesEngine == engine)
  {
    clientQueue = self->_clientQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1002760F8;
    v9[3] = &unk_10098A2E8;
    v9[4] = self;
    v10 = measurementsCopy;
    dispatch_async(clientQueue, v9);
  }
}

- (void)didReceiveNewSolution:(const void *)solution
{
  dispatch_assert_queue_V2(self->_clientQueue);
  v5 = *(solution + 1);
  v59 = *solution;
  v60 = v5;
  v61 = *(solution + 2);
  sub_100020458(v62, solution + 48);
  sub_1000206E0(v68, solution + 608);
  sub_1000207A0(v71, solution + 95);
  memcpy(v75, solution + 880, sizeof(v75));
  sub_10002096C(v76, solution + 91);
  if (v61 != 6)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004B5974(&v61);
    }

    goto LABEL_84;
  }

  if ((BYTE8(v60) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B59EC();
    }

    goto LABEL_84;
  }

  if ((v87 & 1) == 0)
  {
    __assert_rtn("[NIServerDLTDOASession didReceiveNewSolution:]", "NIServerDLTDOASession.mm", 738, "solCopy.dt_tag_event.has_value()");
  }

  v34 = v78[0];
  if (!v78[1])
  {
    if (v84 == 1)
    {
      v7 = *(&v82 + 1);
      v6 = v82;
      v8 = v83;
      __p[0] = v78;
      v9 = sub_10027DDC8(&self->_addressToCoordinatesDTM, v78);
      *(v9 + 10) = 1;
    }

    else
    {
      if (v81 != 1)
      {
        goto LABEL_14;
      }

      v7 = *(&v79 + 1);
      v6 = v79;
      v8 = v80;
      __p[0] = v78;
      v9 = sub_10027DDC8(&self->_addressToCoordinatesDTM, v78);
      *(v9 + 10) = 0;
    }

    v9[6] = v6;
    v9[7] = v7;
    v9[8] = v8;
  }

LABEL_14:
  if ((v84 & 1) == 0 && (v81 & 1) == 0)
  {
    left = self->_addressToCoordinatesDTM.__tree_.__end_node_.__left_;
    if (left)
    {
      v11 = &v81;
      p_end_node = &self->_addressToCoordinatesDTM.__tree_.__end_node_;
      do
      {
        left_low = LOWORD(left[4].__left_);
        v14 = left_low >= v78[0];
        v15 = left_low < v78[0];
        if (v14)
        {
          p_end_node = left;
        }

        left = left[v15].__left_;
      }

      while (left);
      if (p_end_node != &self->_addressToCoordinatesDTM.__tree_.__end_node_ && v78[0] >= LOWORD(p_end_node[4].__left_))
      {
        __p[0] = v78;
        v16 = sub_10027DDC8(&self->_addressToCoordinatesDTM, v78);
        v17 = *(v16 + 10);
        if (v17)
        {
          if (v17 == 1)
          {
            v18 = v16[8];
            v82 = *(v16 + 3);
            v83 = v18;
            if ((v84 & 1) == 0)
            {
              v84 = 1;
            }

            if (v81)
            {
LABEL_29:
              *v11 = 0;
            }
          }
        }

        else
        {
          v33 = v16[8];
          v79 = *(v16 + 3);
          v80 = v33;
          if ((v81 & 1) == 0)
          {
            v81 = 1;
          }

          v11 = &v84;
          if (v84 == 1)
          {
            goto LABEL_29;
          }
        }
      }
    }
  }

  if (self->_addressToCoordinatesOOB.__tree_.__size_ && ![(NIServerDLTDOASession *)self _assignAnchorCoordinates:&v59])
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B5A28();
    }
  }

  else if (v81 & 1) != 0 || (v84)
  {
    if ((v87 & 1) == 0)
    {
      sub_1000195BC();
    }

    if ([(NIServerDLTDOASession *)self _validMeasurement:v76])
    {
      __p[0] = &v34;
      if (*(sub_10027DA6C(&self->_addressToTrackingAnchorState, &v34) + 10) != 4)
      {
        __p[0] = &v34;
        *(sub_10027DA6C(&self->_addressToTrackingAnchorState, &v34) + 10) = 4;
        v19 = qword_1009F9820;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v34;
          sub_100004A08(__p, "MeasurementReceived");
          v21 = (SBYTE7(v36) & 0x80u) == 0 ? __p : __p[0];
          buf[0] = 67109378;
          buf[1] = v20;
          v57 = 2080;
          v58 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#ses-loc,anchor %hu state changed to %s", buf, 0x12u);
          if (SBYTE7(v36) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v22 = sub_100005288();
      __p[0] = &v34;
      *(sub_10027DA6C(&self->_addressToTrackingAnchorState, &v34) + 6) = v22;
      self->_sessionLastActiveEventTimestamp.var0.__val_ = v22;
      self->_sessionLastActiveEventTimestamp.__engaged_ = 1;
      for (i = self->_clusterToSessionRecord.__tree_.__end_node_.__left_; i; i = *i)
      {
        v24 = *(i + 16);
        if (v34 >= v24)
        {
          if (v24 >= v34)
          {
            __p[0] = &v34;
            v25 = sub_10027DEA4(&self->_clusterToSessionRecord, &v34);
            ++*(v25 + 14);
            break;
          }

          ++i;
        }
      }
    }

    if ((v87 & 1) == 0)
    {
      sub_1000195BC();
    }

    p_currentBlockIndex = &self->_currentBlockIndex;
    if (!self->_currentBlockIndex.__engaged_ || v77 != p_currentBlockIndex->var0.__val_)
    {
      p_currentBlockIndex->var0.__val_ = v77;
      self->_currentBlockIndex.__engaged_ = 1;
      sub_10002074C(&self->_expectedAddresses, self->_expectedAddresses.__tree_.__end_node_.__left_);
      self->_expectedAddresses.__tree_.__begin_node_ = &self->_expectedAddresses.__tree_.__end_node_;
      self->_expectedAddresses.__tree_.__size_ = 0;
      self->_expectedAddresses.__tree_.__end_node_.__left_ = 0;
      sub_10027D108(&self->_cachedMeasurements, self->_cachedMeasurements.__begin_);
      begin_node = self->_addressToTrackingAnchorState.__tree_.__begin_node_;
      selfCopy = self;
      if (begin_node != &self->_addressToTrackingAnchorState.__tree_.__end_node_)
      {
        do
        {
          if (LODWORD(begin_node[5].__left_) == 4)
          {
            sub_10027D03C(&self->_expectedAddresses, &begin_node[4]);
          }

          isa = begin_node[1].__left_;
          if (isa)
          {
            do
            {
              v30 = isa;
              isa = isa->super.super.isa;
            }

            while (isa);
          }

          else
          {
            do
            {
              v30 = begin_node[2].__left_;
              v31 = v30->super.super.isa == begin_node;
              begin_node = v30;
            }

            while (!v31);
          }

          begin_node = v30;
        }

        while (v30 != &self->_addressToTrackingAnchorState.__tree_.__end_node_);
      }
    }

    sub_10027DF8C(&self->_expectedAddresses, &v34);
    *__p = v59;
    v36 = v60;
    v37 = v61;
    sub_100020458(&v38, v62);
    sub_1000206E0(v44, v68);
    sub_1000207A0(&v47, v71);
    memcpy(v51, v75, sizeof(v51));
    sub_10002096C(&v52, v76);
    sub_100276ADC(&self->_cachedMeasurements, __p);
    if (v55 == 1 && v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    if (v50 == 1 && v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    if (v46 == 1)
    {
      sub_10002074C(v45, v45[1]);
    }

    if (v43 == 1)
    {
      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }
    }

    updatesEngine = self->_updatesEngine;
    if (updatesEngine && !self->_expectedAddresses.__tree_.__size_)
    {
      [(NINearbyUpdatesEngine *)updatesEngine acceptDTTagMeasurements:&self->_cachedMeasurements];
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B5A64(&v34);
  }

LABEL_84:
  if (v87 == 1 && v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v74 == 1 && v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v70 == 1)
  {
    sub_10002074C(v69, v69[1]);
  }

  if (v67 == 1)
  {
    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }

    if (v63)
    {
      v64 = v63;
      operator delete(v63);
    }
  }
}

- (void)roseSession:(shared_ptr<rose:(int)session :objects::RoseBaseSession>)a3 invalidatedWithReason:
{
  var1 = a3.var1;
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100342FC8(var1, v10);
    sub_1004B5B48(v10);
  }

  [(NIServerDLTDOASession *)self invalidate];
  v9.receiver = self;
  v9.super_class = NIServerDLTDOASession;
  invalidationHandler = [(NIServerBaseSession *)&v9 invalidationHandler];
  v8 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5887 userInfo:0];
  (invalidationHandler)[2](invalidationHandler, v8);
}

- (void)_didUpdateWifiEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_clientQueue);
  if ([eventCopy type] == 5)
  {
    [(NIServerDLTDOASession *)self _getCachedWifiResult];
  }
}

- (void)_getCachedWifiResult
{
  beaconCache = [(CWFInterface *)self->_wifiLeechIfc beaconCache];

  if (beaconCache)
  {
    v89[0] = 0;
    v89[1] = 0;
    v88 = v89;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    beaconCache2 = [(CWFInterface *)self->_wifiLeechIfc beaconCache];
    v4 = [beaconCache2 countByEnumeratingWithState:&v84 objects:v104 count:16];
    if (!v4)
    {
      goto LABEL_102;
    }

    v5 = *v85;
    v76 = beaconCache2;
    v64 = *v85;
    while (1)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v85 != v5)
        {
          objc_enumerationMutation(beaconCache2);
        }

        informationElementData = [*(*(&v84 + 1) + 8 * i) informationElementData];
        v8 = informationElementData;
        if (informationElementData)
        {
          v9 = informationElementData;
          bytes = [v8 bytes];
          v11 = [v8 length];
          if (v11)
          {
            v12 = 0;
            v13 = bytes + 2;
            v14 = bytes;
            while (1)
            {
              v15 = &v12[bytes];
              if (v12[bytes] == 221 && v12 + 5 < v11)
              {
                v17 = v15[1];
                if (v17 >= 3 && v11 >= v17)
                {
                  v19 = 0;
                  v20 = 0;
                  do
                  {
                    v20 = v13[v19++] | (v20 << 8);
                  }

                  while (v19 != 3);
                  if (v17 >= 8 && v20 == 5904639)
                  {
                    break;
                  }
                }
              }

LABEL_41:
              ++v12;
              ++v13;
              ++v14;
              if (v12 == v11)
              {
                goto LABEL_100;
              }
            }

            v21 = 5;
            while (2)
            {
              v22 = v21 + 1;
              v23 = v15[v21];
              v24 = v23 & 0xF;
              if ((v23 & 0xF) == 0xF)
              {
                v25 = -240;
                do
                {
                  v26 = v14[v22++];
                  v25 += 255;
                }

                while (v22 < v11 && v26 == 255);
                v24 = v26 + v25;
              }

              if (v24)
              {
                v21 = v24 + v22;
                v27 = (v23 & 0xF0) != 0x50 || v21 >= v11;
                v28 = v22 + 2;
                v29 = v27 || v28 >= v21;
                if (!v29 && v15[v22] == 2)
                {
                  v30 = 0;
                  v31 = 0;
                  v80 = 0;
                  v81 = 0;
                  v32 = 0;
                  v79 = 0;
                  v33 = 0;
                  v34 = 0;
                  v35 = 0;
                  v36 = 0;
                  v37 = 0;
                  v38 = 0;
                  v39 = 0;
                  v40 = 0;
                  v41 = 0;
                  v78 = 0;
                  v42 = 0;
                  v43 = 0;
                  v44 = 0;
                  v82 = 0;
                  v83 = 0;
                  BYTE4(v91) = v15[v22 + 1];
                  LOBYTE(v91) = 0;
                  *&__dst = 0;
                  *(&__dst + 5) = 0;
                  while (1)
                  {
                    v45 = v28 + 1;
                    if (v28 + 1 >= v21)
                    {
LABEL_97:
                      *&v105[1] = __dst;
                      *&v105[17] = v91;
                      *buf = v31 | (v30 << 8);
                      *&buf[2] = WORD2(v80) | (v81 << 8);
                      LOBYTE(v93) = BYTE4(v79);
                      WORD1(v93) = WORD2(v81) | (v32 << 8);
                      BYTE4(v93) = v80;
                      *v94 = v33 | (v79 << 8);
                      v94[4] = v78;
                      *&v94[8] = v35 | (v34 << 8);
                      v95 = v37 | (v36 << 8);
                      v96 = v39 | (v38 << 8);
                      v97 = v41 | (v40 << 8);
                      v98 = WORD2(v82) | (v82 << 8);
                      v99 = WORD2(v83) | (v83 << 8);
                      v100 = v42 | (v43 << 8);
                      v101 = v44;
                      *v102 = *v105;
                      *&v102[9] = *&v105[9];
                      v103 = 1;
                      beaconCache2 = v76;
                      if (BYTE4(v79) == 1)
                      {
                        sub_10027D03C(&v88, &buf[2]);
                        if ((v103 & 1) == 0)
                        {
                          sub_1000195BC();
                        }
                      }

                      [(NIServerDLTDOASession *)self _processUWBOOBRangingPayload:buf];
                      goto LABEL_100;
                    }

                    v46 = v15[v45];
                    if (v15[v45])
                    {
                      v47 = v28 + 2;
                      v45 = v28 + 2 + v46;
                      if (v45 > v21)
                      {
                        goto LABEL_97;
                      }

                      v48 = v15[v28];
                      if (v48 > 0x1E)
                      {
                        if (v15[v28] <= 0x30u)
                        {
                          if (v15[v28] > 0x26u)
                          {
                            if (v48 == 39)
                            {
                              if (v46 == 2)
                              {
                                v43 = v15[v47 + 1];
                                v42 = v15[v47];
                                v44 = 1;
                              }
                            }

                            else if (v48 == 40 && v46 == 6)
                            {
                              v71 = v43;
                              v72 = v41;
                              v73 = v36;
                              v74 = v39;
                              v75 = v4;
                              v54 = v37;
                              v55 = v38;
                              v56 = v40;
                              v69 = v35;
                              v70 = v34;
                              v67 = v30;
                              v68 = v42;
                              v66 = v31;
                              v65 = v32;
                              memcpy(&__dst, &v15[v47], v46);
                              v32 = v65;
                              v31 = v66;
                              v30 = v67;
                              v42 = v68;
                              v35 = v69;
                              v34 = v70;
                              v43 = v71;
                              v41 = v72;
                              v36 = v73;
                              v40 = v56;
                              v39 = v74;
                              v38 = v55;
                              v37 = v54;
                              v5 = v64;
                              v4 = v75;
                            }
                          }

                          else if (v48 == 31)
                          {
                            LOWORD(v82) = 1;
                            WORD2(v82) = v15[v47];
                          }

                          else if (v48 == 38)
                          {
                            LOWORD(v83) = 1;
                            WORD2(v83) = v15[v47];
                          }

                          goto LABEL_96;
                        }

                        if (v15[v28] <= 0x3Cu)
                        {
                          if (v48 == 49)
                          {
                            WORD5(__dst) = v15[v47] | 0x100;
                          }

                          else if (v48 == 53)
                          {
                            WORD3(__dst) = v15[v47] | 0x100;
                          }

                          goto LABEL_96;
                        }

                        if (v48 == 61)
                        {
                          WORD4(__dst) = v15[v47] | 0x100;
                          goto LABEL_96;
                        }

                        if (v48 != 159 || v46 != 4)
                        {
                          goto LABEL_96;
                        }

                        v49 = v32;
                        v57 = 0;
                        v58 = &v14[v28];
                        for (j = 5; j > 1; --j)
                        {
                          v57 = v58[j] | (v57 << 8);
                        }

                        HIDWORD(__dst) = v57;
                        LOBYTE(v91) = 1;
                        goto LABEL_85;
                      }

                      if (v15[v28] > 0x13u)
                      {
                        if (v15[v28] > 0x16u)
                        {
                          if (v48 == 23)
                          {
                            v39 = v15[v47];
                            v38 = 1;
                          }

                          else if (v48 == 27)
                          {
                            v41 = v15[v47];
                            v40 = 1;
                          }
                        }

                        else if (v48 == 20)
                        {
                          v35 = v15[v47];
                          v34 = 1;
                        }

                        else if (v48 == 21)
                        {
                          v37 = v15[v47];
                          v36 = 1;
                        }

                        goto LABEL_96;
                      }

                      if (v15[v28] <= 7u)
                      {
                        if (v48 == 4)
                        {
                          v31 = v15[v47];
                          v30 = 1;
                        }

                        else if (v48 == 6 && v46 == 2)
                        {
                          WORD2(v80) = v15[v47];
                          LOWORD(v81) = v15[v47 + 1];
                          BYTE4(v79) = 1;
                        }

                        goto LABEL_96;
                      }

                      if (v48 == 8)
                      {
                        if (v46 == 2)
                        {
                          v32 = v15[v47 + 1];
                          WORD2(v81) = v15[v47];
                          LOBYTE(v80) = 1;
                        }

                        goto LABEL_96;
                      }

                      if (v48 == 9 && v46 == 4)
                      {
                        v49 = v32;
                        v50 = 0;
                        v51 = &v14[v28];
                        for (k = 5; k > 1; --k)
                        {
                          v53 = v50;
                          v33 = v51[k];
                          v50 = v33 | (v50 << 8);
                        }

                        v78 = 1;
                        LODWORD(v79) = v53 & 0xFFFFFF;
LABEL_85:
                        v32 = v49;
                      }
                    }

LABEL_96:
                    v28 = v45;
                    if (v45 >= v21)
                    {
                      goto LABEL_97;
                    }
                  }
                }
              }

              else
              {
                v21 = v22;
              }

              if (v21 + 2 >= v17)
              {
                goto LABEL_41;
              }

              continue;
            }
          }
        }

LABEL_100:
      }

      v4 = [beaconCache2 countByEnumeratingWithState:&v84 objects:v104 count:16];
      if (!v4)
      {
LABEL_102:

        sub_10002074C(&self->_cachedWifiOOBAnchors, self->_cachedWifiOOBAnchors.__tree_.__end_node_.__left_);
        self->_cachedWifiOOBAnchors.__tree_.__begin_node_ = &self->_cachedWifiOOBAnchors.__tree_.__end_node_;
        self->_cachedWifiOOBAnchors.__tree_.__size_ = 0;
        self->_cachedWifiOOBAnchors.__tree_.__end_node_.__left_ = 0;
        sub_10018AF74(&self->_cachedWifiOOBAnchors, v88, v89);
        v60 = qword_1009F9820;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          beaconCache3 = [(CWFInterface *)self->_wifiLeechIfc beaconCache];
          v62 = [beaconCache3 count];
          size = self->_cachedWifiOOBAnchors.__tree_.__size_;
          *buf = 134218240;
          v93 = v62;
          *v94 = 2048;
          *&v94[2] = size;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#ses-loc,Fetch cached wifi scan results count: %lu, current Wifi OOB found %zu of DL-TDOA clusters' address", buf, 0x16u);
        }

        sub_10002074C(&v88, v89[0]);
        return;
      }
    }
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B5BA4();
  }
}

- (void)_processUWBOOBRangingPayload:(const void *)payload
{
  if (*(payload + 4))
  {
    v5 = *(payload + 1);
    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 objectForKey:@"NIDLTDOADebugInitiatorMacAddress"];

    if (!v7 || v5 == [v6 integerForKey:@"NIDLTDOADebugInitiatorMacAddress"])
    {
      left = self->_addressToTrackingAnchorState.__tree_.__end_node_.__left_;
      if (!left)
      {
LABEL_9:
        v10 = [v6 objectForKey:@"NIDLTDOADebugBypassNetworkIdentifierCheck"];

        if (!v10 || ([v6 BOOLForKey:@"NIDLTDOADebugBypassNetworkIdentifierCheck"]& 1) == 0)
        {
          if ((*(payload + 52) & 1) == 0)
          {
            v16 = qword_1009F9820;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_100277E4C(payload, buf);
              sub_1004B5D3C(buf);
            }

            goto LABEL_39;
          }

          v11 = *(payload + 12);
          if ([(NIDLTDOAConfiguration *)self->_configuration networkIdentifier]!= v11)
          {
            v17 = qword_1009F9820;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v19 = __p;
              sub_100277E4C(payload, __p);
              if (SBYTE7(v23) < 0)
              {
                v19 = __p[0];
              }

              if ((*(payload + 52) & 1) == 0)
              {
                sub_1000195BC();
              }

              v20 = *(payload + 12);
              networkIdentifier = [(NIDLTDOAConfiguration *)self->_configuration networkIdentifier];
              *buf = 136315906;
              *v29 = v19;
              *&v29[8] = 1024;
              *&v29[10] = v5;
              v30 = 1024;
              *v31 = v20;
              *&v31[4] = 2048;
              *&v31[6] = networkIdentifier;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#ses-loc,Scanned wifi result: %s. Mac addr: [0x%02hx], uwb session id: [0x%02x], not match client's network identifier: [0x%02lx]", buf, 0x22u);
              if (SBYTE7(v23) < 0)
              {
                operator delete(__p[0]);
              }
            }

            goto LABEL_39;
          }
        }

        v12 = qword_1009F9820;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          networkIdentifier2 = [(NIDLTDOAConfiguration *)self->_configuration networkIdentifier];
          sub_100277E4C(payload, __p);
          v14 = (SBYTE7(v23) & 0x80u) == 0 ? __p : __p[0];
          *buf = 67109634;
          *v29 = v5;
          *&v29[4] = 2048;
          *&v29[6] = networkIdentifier2;
          v30 = 2080;
          *v31 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#ses-loc,Scanned Wifi OOB: Mac addr: [0x%02hx], uwb session id: [0x%02lx], details: %s.", buf, 0x1Cu);
          if (SBYTE7(v23) < 0)
          {
            operator delete(__p[0]);
          }
        }

        v15 = *(payload + 1);
        *__p = *payload;
        v23 = v15;
        v24[0] = *(payload + 2);
        *(v24 + 12) = *(payload + 44);
        [(NIServerDLTDOASession *)self _buildOOBConfigFromOOBMessage:__p];
        if (v34)
        {
          [(NIServerDLTDOASession *)self _findOOBConfigWithAddress:v5];
          if (v27 == 1)
          {
            if (v25)
            {
              v26 = v25;
              operator delete(v25);
            }
          }

          else
          {
            if ((v34 & 1) == 0)
            {
              sub_1000195BC();
            }

            sub_10027E6C4(&self->_oobConfigs, buf);
          }

          v18 = sub_100005288();
          LOWORD(__p[0]) = v5;
          LODWORD(__p[1]) = 0;
          *&v23 = v18;
          sub_10027CDD0(&self->_addressToTrackingAnchorState, __p);
          if ((v34 & 1) != 0 && v32)
          {
            v33 = v32;
            operator delete(v32);
          }
        }

        goto LABEL_39;
      }

      while (1)
      {
        v9 = *(left + 16);
        if (v5 >= v9)
        {
          if (v9 >= v5)
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
            {
              sub_1004B5CC4();
            }

            goto LABEL_39;
          }

          ++left;
        }

        left = *left;
        if (!left)
        {
          goto LABEL_9;
        }
      }
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B5C3C();
    }
  }

  else
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100277E4C(payload, buf);
      sub_1004B5BE0(buf);
    }
  }

LABEL_39:
}

- (BOOL)_validMeasurement:(void *)measurement
{
  v20 = *(measurement + 10);
  v21 = *(measurement + 11);
  v22 = *(measurement + 192);
  v16 = *(measurement + 6);
  v17 = *(measurement + 7);
  v18 = *(measurement + 8);
  v19 = *(measurement + 9);
  v12 = *(measurement + 2);
  v13 = *(measurement + 3);
  v14 = *(measurement + 4);
  v15 = *(measurement + 5);
  v4 = *(measurement + 25);
  v5 = *(measurement + 26);
  __p = 0;
  v24 = 0;
  v25 = 0;
  sub_100020A60(&__p, v4, v5, 0xEEEEEEEEEEEEEEEFLL * ((v5 - v4) >> 3));
  if (v12)
  {
    goto LABEL_2;
  }

  v6 = 1;
  if (WORD4(v14) && WORD2(v16))
  {
    v9 = *(measurement + 25);
    v8 = *(measurement + 26);
    if (v9 == v8)
    {
LABEL_2:
      v6 = 0;
      goto LABEL_3;
    }

    v10 = v9 + 120;
    do
    {
      v6 = *(v10 - 120) == 0;
      if (*(v10 - 120))
      {
        v11 = v10 == v8;
      }

      else
      {
        v11 = 1;
      }

      v10 += 120;
    }

    while (!v11);
  }

LABEL_3:
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return v6;
}

- (optional<unsigned)_findAddressWithTicketId:(unsigned __int16)id
{
  p_end_node = &self->_sessions.__tree_.__end_node_;
  begin_node = self->_sessions.__tree_.__begin_node_;
  if (begin_node != &self->_sessions.__tree_.__end_node_)
  {
    while (1)
    {
      left = begin_node[5].__left_;
      if (left)
      {
        v6 = left[188];
        if ((v6 & 0x10000) != 0 && v6 == id)
        {
          break;
        }
      }

      v7 = begin_node[1].__left_;
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = v7->__left_;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = begin_node[2].__left_;
          v9 = v8->__left_ == begin_node;
          begin_node = v8;
        }

        while (!v9);
      }

      begin_node = v8;
      if (v8 == p_end_node)
      {
        return 0;
      }
    }
  }

  if (begin_node == p_end_node)
  {
    return 0;
  }

  else
  {
    return (LOWORD(begin_node[4].__left_) | 0x10000);
  }
}

- (optional<OOBConfig>)_findOOBConfigWithAddress:(SEL)address
{
  v6 = *&self->var0.var1.var3.var0.__null_state_;
  v5 = *&self->var1;
  if (v6 != v5)
  {
    while (*(v6 + 32) != a4)
    {
      v6 += 112;
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_7:
    v10 = 0;
    retstr->var0.var0 = 0;
  }

  else
  {
    *&retstr->var0.var0 = *v6;
    v7 = *(v6 + 16);
    v8 = *(v6 + 32);
    v9 = *(v6 + 64);
    *retstr->var0.var1.var1.var3.var0.var1.var1.var0 = *(v6 + 48);
    *&retstr->var0.var1.var1.var3.var0.var1.var1.var0[2] = v9;
    *&retstr->var0.var1.var0.var8 = v7;
    *&retstr->var0.var1.var1.var0 = v8;
    retstr->var0.var1.var2.var1 = 0;
    retstr->var0.var1.var2.var2 = 0;
    retstr->var0.var1.var2.var0 = 0;
    self = sub_10027BF1C(&retstr->var0.var1.var2, *(v6 + 80), *(v6 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 88) - *(v6 + 80)) >> 4));
    retstr->var0.var1.var3 = *(v6 + 104);
    v10 = 1;
  }

  retstr->var1 = v10;
  return self;
}

- (vector<OOBConfig,)_parseOOBConfigFromDebugParameters:(NIServerDLTDOASession *)self
{
  v93 = a4;
  v4 = [v93 objectForKey:@"UseConfigParametersOverrides"];
  bOOLValue = [v4 BOOLValue];

  v130 = 0;
  __src = 0;
  v131 = 0;
  if (!bOOLValue)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B5D98();
    }

    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    goto LABEL_91;
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = [v93 valueForKey:@"Configurations"];
  v6 = [obj countByEnumeratingWithState:&v125 objects:v136 count:16];
  if (!v6)
  {
    goto LABEL_31;
  }

  v94 = *v126;
  while (2)
  {
    v104 = 0;
    v92 = v6;
    do
    {
      if (*v126 != v94)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v125 + 1) + 8 * v104);
      *v106 = 0;
      *&v106[8] = v106;
      *&v106[16] = 0x2020000000;
      v106[24] = 0;
      v124[0] = _NSConcreteStackBlock;
      v124[1] = 3221225472;
      v124[2] = sub_10027A1A4;
      v124[3] = &unk_1009A1520;
      v124[4] = v7;
      v124[5] = v106;
      [&off_1009C3C68 enumerateObjectsUsingBlock:v124];
      if (*(*&v106[8] + 24) == 1)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004B5DD4();
        }

        retstr->__begin_ = 0;
        retstr->__end_ = 0;
        retstr->__cap_ = 0;
        goto LABEL_84;
      }

      v95 = [v7 objectForKeyedSubscript:@"ClusterID"];
      v99 = [v7 objectForKeyedSubscript:@"ConfigID"];
      v98 = [v7 objectForKeyedSubscript:@"Preamble"];
      v97 = [v7 objectForKeyedSubscript:@"VendorID"];
      v101 = [v7 objectForKeyedSubscript:@"UWBSessionID"];
      v102 = [v7 objectForKeyedSubscript:@"Static_STS_IV"];
      unsignedIntValue = [v95 unsignedIntValue];
      unsignedIntValue2 = [v99 unsignedIntValue];
      unsignedIntValue3 = [v98 unsignedIntValue];
      unsignedIntValue4 = [v97 unsignedIntValue];
      unsignedIntValue5 = [v101 unsignedIntValue];
      [v102 getBytes:&v122 length:6];
      sub_100359A3C(unsignedIntValue2, &v118);
      if ((v121 & 1) == 0)
      {
        v85 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = unsignedIntValue2;
          v82 = "#ses-loc,Unsupported config_id %hu";
          v83 = v85;
          v84 = 8;
LABEL_82:
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, v82, buf, v84);
        }

LABEL_83:
        retstr->__begin_ = 0;
        retstr->__end_ = 0;
        retstr->__cap_ = 0;

LABEL_84:
        _Block_object_dispose(v106, 8);

        goto LABEL_91;
      }

      v13 = [v7 objectForKey:@"NumSlotsPerRound"];

      if (v13)
      {
        v20 = [v7 objectForKey:@"NumSlotsPerRound"];
        unsignedIntValue6 = [v20 unsignedIntValue];
      }

      else
      {
        unsignedIntValue6 = 0;
      }

      if ((v121 & 1) == 0)
      {
        sub_1000195BC();
      }

      LOBYTE(v118) = unsignedIntValue;
      BYTE6(v118) = unsignedIntValue3;
      WORD2(v119) = unsignedIntValue4;
      v120 = unsignedIntValue5;
      *(&v119 + 6) = v122;
      WORD5(v119) = v123;
      if (v13)
      {
        BYTE1(v119) = unsignedIntValue6;
      }

      v22 = WORD1(v118);
      if (!WORD1(v118) || (v23 = BYTE1(v119), !BYTE1(v119)))
      {
        v81 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = WORD1(v118);
          LOWORD(v134) = 1024;
          *(&v134 + 2) = BYTE1(v119);
          v82 = "#ses-loc,Unexpected 0 for slot_duration: %d or slots_per_round: %d in config";
          v83 = v81;
          v84 = 14;
          goto LABEL_82;
        }

        goto LABEL_83;
      }

      v24 = WORD2(v118);
      v25 = sub_1004281F8(BYTE1(v118), 2, v14, v15, v16, v17, v18, v19);
      v26 = sub_1004272E8(BYTE6(v118), 2);
      v27 = 1200 * v24;
      v28 = v23 * v22;
      v29 = v120;
      v30 = HIBYTE(v118);
      v31 = WORD1(v118);
      v32 = BYTE1(v119);
      v33 = WORD2(v118);
      v34 = WORD2(v119);
      *buf = *(&v119 + 6);
      *&buf[4] = WORD5(v119);
      v35 = v118;
      v36 = v27 / v28;
      v37 = v130;
      if (v130 >= v131)
      {
        v39 = (v130 - __src) >> 5;
        v40 = v39 + 1;
        if ((v39 + 1) >> 59)
        {
          sub_100019B38();
        }

        v41 = v131 - __src;
        if ((v131 - __src) >> 4 > v40)
        {
          v40 = v41 >> 4;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFE0)
        {
          v42 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          sub_10027EA8C(&__src, v42);
        }

        v43 = 32 * v39;
        *v43 = v25;
        *(v43 + 1) = v26;
        *(v43 + 4) = v29;
        *(v43 + 8) = 514;
        *(v43 + 10) = v30;
        *(v43 + 12) = v31;
        *(v43 + 14) = v32;
        *(v43 + 16) = v36;
        *(v43 + 18) = v33;
        *(v43 + 20) = v34;
        *(v43 + 22) = *buf;
        *(v43 + 26) = *&buf[4];
        *(v43 + 28) = 1;
        *(v43 + 30) = v35;
        *(v43 + 31) = 1;
        v38 = 32 * v39 + 32;
        v44 = (32 * v39 - (v130 - __src));
        memcpy(v44, __src, v130 - __src);
        v45 = __src;
        __src = v44;
        v130 = v38;
        v131 = 0;
        if (v45)
        {
          operator delete(v45);
        }
      }

      else
      {
        *v130 = v25;
        v37[1] = v26;
        *(v37 + 1) = v29;
        *(v37 + 4) = 514;
        v37[10] = v30;
        *(v37 + 6) = v31;
        *(v37 + 7) = v32;
        *(v37 + 8) = v36;
        *(v37 + 9) = v33;
        *(v37 + 10) = v34;
        *(v37 + 22) = *buf;
        *(v37 + 13) = *&buf[4];
        *(v37 + 14) = 1;
        v37[30] = v35;
        v38 = (v37 + 32);
        v37[31] = 1;
      }

      v130 = v38;

      _Block_object_dispose(v106, 8);
      v104 = v104 + 1;
    }

    while (v92 != v104);
    v6 = [obj countByEnumeratingWithState:&v125 objects:v136 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v134 = 0;
  *buf = 0;
  v135 = 0;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v100 = [v93 valueForKey:@"Anchors"];
  v46 = [v100 countByEnumeratingWithState:&v114 objects:v132 count:16];
  if (v46)
  {
    v103 = *v115;
    while (2)
    {
      for (i = 0; i != v46; i = i + 1)
      {
        if (*v115 != v103)
        {
          objc_enumerationMutation(v100);
        }

        v48 = *(*(&v114 + 1) + 8 * i);
        v118 = 0;
        *&v119 = &v118;
        *(&v119 + 1) = 0x2020000000;
        LOBYTE(v120) = 0;
        v113[0] = _NSConcreteStackBlock;
        v113[1] = 3221225472;
        v113[2] = sub_10027A248;
        v113[3] = &unk_1009A1520;
        v113[4] = v48;
        v113[5] = &v118;
        [&off_1009C3C80 enumerateObjectsUsingBlock:v113];
        v49 = *(v119 + 24);
        if (v49 == 1)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004B5E10(&v122, &v122 + 1);
          }

          retstr->__begin_ = 0;
          retstr->__end_ = 0;
          retstr->__cap_ = 0;
        }

        else
        {
          v105 = [v48 objectForKeyedSubscript:@"ClusterID"];
          v50 = [v48 objectForKeyedSubscript:@"Address"];
          v51 = [v48 objectForKeyedSubscript:@"Role"];
          unsignedIntValue7 = [v105 unsignedIntValue];
          unsignedIntValue8 = [v50 unsignedIntValue];
          unsignedIntValue9 = [v51 unsignedIntValue];
          *v106 = unsignedIntValue8;
          v106[2] = unsignedIntValue9;
          v106[3] = unsignedIntValue7;
          v106[4] = 1;
          v106[8] = 0;
          v107 = 0;
          v55 = [v48 objectForKey:@"CoordinatesType"];
          v56 = v55 == 0;

          if (!v56)
          {
            v57 = [v48 objectForKey:@"Coordinates0"];
            if (!v57)
            {
              __assert_rtn("[NIServerDLTDOASession _parseOOBConfigFromDebugParameters:]", "NIServerDLTDOASession.mm", 1163, "[anchorFromDebug objectForKey:@Coordinates0] != nil");
            }

            v58 = [v48 objectForKey:@"Coordinates1"];
            if (!v58)
            {
              __assert_rtn("[NIServerDLTDOASession _parseOOBConfigFromDebugParameters:]", "NIServerDLTDOASession.mm", 1164, "[anchorFromDebug objectForKey:@Coordinates1] != nil");
            }

            v59 = [v48 objectForKey:@"Coordinates2"];
            if (!v59)
            {
              __assert_rtn("[NIServerDLTDOASession _parseOOBConfigFromDebugParameters:]", "NIServerDLTDOASession.mm", 1165, "[anchorFromDebug objectForKey:@Coordinates2] != nil");
            }

            v60 = [v48 objectForKeyedSubscript:@"CoordinatesType"];
            v61 = [v48 objectForKeyedSubscript:@"Coordinates0"];
            v62 = [v48 objectForKeyedSubscript:@"Coordinates1"];
            v63 = [v48 objectForKeyedSubscript:@"Coordinates2"];
            unsignedIntValue10 = [v60 unsignedIntValue];
            [v61 doubleValue];
            v66 = v65;
            [v62 doubleValue];
            v68 = v67;
            [v63 doubleValue];
            *&v106[8] = unsignedIntValue10;
            *&v106[16] = v66;
            *&v106[24] = v68;
            *&v106[32] = v69;
            if ((v107 & 1) == 0)
            {
              v107 = 1;
            }
          }

          sub_10027A2EC(buf, v106);
        }

        _Block_object_dispose(&v118, 8);
        if (v49)
        {

          goto LABEL_89;
        }
      }

      v46 = [v100 countByEnumeratingWithState:&v114 objects:v132 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v70 = __src;
  v71 = v130;
  if (__src != v130)
  {
    do
    {
      v72 = v70[1];
      *v106 = *v70;
      *&v106[16] = v72;
      *&v106[32] = 6619135;
      v106[36] = 0;
      v107 = 0;
      v108 = 0;
      v110 = 0;
      v111 = 0;
      __p = 0;
      v112 = *(v70 + 15);
      end = retstr->__end_;
      if (end >= retstr->__cap_)
      {
        v74 = sub_10027E794(retstr, v106);
      }

      else
      {
        sub_10027E708(retstr, v106);
        v74 = end + 1;
      }

      retstr->__end_ = v74;
      if (__p)
      {
        v110 = __p;
        operator delete(__p);
      }

      v70 += 2;
    }

    while (v70 != v71);
    begin = retstr->__begin_;
    v76 = retstr->__end_;
    while (begin != v76)
    {
      if (!begin->var3.__engaged_)
      {
        __assert_rtn("[NIServerDLTDOASession _parseOOBConfigFromDebugParameters:]", "NIServerDLTDOASession.mm", 1199, "oobConfig.clusterID.has_value()");
      }

      v77 = *buf;
      v78 = v134;
      while (v77 != v78)
      {
        if ((*(v77 + 4) & 1) == 0)
        {
          __assert_rtn("[NIServerDLTDOASession _parseOOBConfigFromDebugParameters:]", "NIServerDLTDOASession.mm", 1201, "anchor.clusterID.has_value()");
        }

        if (!begin->var3.__engaged_)
        {
          sub_1000195BC();
        }

        if (*(v77 + 3) == begin->var3.var0.__val_)
        {
          if (*(v77 + 2))
          {
            sub_10027A2EC(&begin->var2, v77);
          }

          else
          {
            v79 = *v77;
            v80 = *(v77 + 32);
            *begin->var1.var3.var0.var1.var1.var0 = *(v77 + 16);
            *&begin->var1.var3.var0.var1.var1.var0[2] = v80;
            *&begin->var1.var0 = v79;
          }
        }

        v77 += 48;
      }

      ++begin;
    }
  }

  v86 = *buf;
  for (j = v134; v86 != j; v86 += 48)
  {
    if (*(v86 + 40) == 1)
    {
      *v106 = *v86;
      v88 = *(v86 + 24);
      *&v106[8] = *(v86 + 8);
      *&v106[24] = v88;
      sub_10027EB28(&self->_addressToCoordinatesOOB, v106);
    }
  }

LABEL_89:
  if (*buf)
  {
    v134 = *buf;
    operator delete(*buf);
  }

LABEL_91:
  if (__src)
  {
    v130 = __src;
    operator delete(__src);
  }

  return result;
}

- (optional<OOBConfig>)_buildOOBConfigFromOOBMessage:(SEL)message
{
  if (!a4->var1.__engaged_)
  {
    sub_1004B5F34();
  }

  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (!a4->var1.__engaged_)
    {
      sub_1000195BC();
    }

    val = a4->var1.var0.__val_;
    sub_100277E4C(a4, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 67109378;
    v32 = val;
    v33 = 2080;
    v34 = p_p;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#ses-loc,_buildOOBConfigFromOOBMessage for anchor mac_address: [0x%02hx], payload %s", buf, 0x12u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  sub_100359A3C(a4->var16, &__p);
  if (v30)
  {
    if (a4->var7.__engaged_)
    {
      __p.__r_.__value_.__s.__data_[9] = a4->var7.var0.__null_state_;
    }

    if (a4->var2.__engaged_)
    {
      *&__p.__r_.__value_.__s.__data_[2] = a4->var2.var0.__val_;
    }

    if (a4->var3.__engaged_)
    {
      WORD2(__p.__r_.__value_.__r.__words[0]) = a4->var3.var0.__val_;
    }

    if (a4->var4.__engaged_)
    {
      __p.__r_.__value_.__s.__data_[6] = a4->var4.var0.__null_state_;
    }

    if (a4->var5.__engaged_)
    {
      __p.__r_.__value_.__s.__data_[7] = a4->var5.var0.__null_state_;
    }

    if (a4->var6.__engaged_)
    {
      __p.__r_.__value_.__s.__data_[8] = a4->var6.var0.__null_state_;
    }

    if (a4->var8.__engaged_)
    {
      __p.__r_.__value_.__s.__data_[10] = a4->var8.var0.__null_state_;
    }

    if (a4->var9.__engaged_)
    {
      __p.__r_.__value_.__s.__data_[11] = a4->var9.var0.__null_state_;
    }

    if (a4->var15.__engaged_)
    {
      v29 = a4->var15.var0.__val_;
    }

    if (a4->var10.__engaged_)
    {
      WORD2(__p.__r_.__value_.__r.__words[1]) = a4->var10.var0.__val_;
    }

    if (a4->var12.__engaged_)
    {
      __p.__r_.__value_.__s.__data_[22] = a4->var12.var0.__null_state_;
    }

    if (a4->var13.__engaged_)
    {
      *(&__p.__r_.__value_.__s + 23) = a4->var13.var0.__null_state_;
    }

    if (a4->var14.__engaged_)
    {
      __p.__r_.__value_.__s.__data_[21] = a4->var14.var0.__null_state_;
    }

    *(&__p.__r_.__value_.__r.__words[1] + 6) = *a4->var11;
    WORD1(__p.__r_.__value_.__r.__words[2]) = *&a4->var11[4];
    v15 = WORD2(__p.__r_.__value_.__r.__words[0]);
    v16 = *&__p.__r_.__value_.__s.__data_[2];
    v17 = __p.__r_.__value_.__s.__data_[9];
    v18 = sub_1004281F8(__p.__r_.__value_.__s.__data_[1], 2, v9, v10, v11, v12, v13, v14);
    result = sub_1004272E8(__p.__r_.__value_.__s.__data_[6], 2);
    if (!a4->var1.__engaged_)
    {
      sub_1000195BC();
    }

    v20 = __p.__r_.__value_.__s.__data_[0];
    v21 = WORD2(__p.__r_.__value_.__r.__words[1]);
    v22 = WORD2(__p.__r_.__value_.__r.__words[0]);
    v23 = __p.__r_.__value_.__s.__data_[9];
    v24 = *&__p.__r_.__value_.__s.__data_[2];
    v25 = __p.__r_.__value_.__s.__data_[7];
    v26 = v29;
    v27 = a4->var1.var0.__val_;
    *retstr->var0.var1.var0.var11.__elems_ = *(&__p.__r_.__value_.__r.__words[1] + 6);
    *&retstr->var0.var1.var0.var11.__elems_[4] = WORD1(__p.__r_.__value_.__r.__words[2]);
    retstr->var0.var0 = v18;
    retstr->var0.var1.var0.var1 = result;
    retstr->var0.var1.var0.var2 = v26;
    *&retstr->var0.var1.var0.var3 = 514;
    retstr->var0.var1.var0.var5 = v25;
    retstr->var0.var1.var0.var6 = v24;
    retstr->var0.var1.var0.var7 = v23;
    retstr->var0.var1.var0.var8 = 1200 * v15 / (v17 * v16);
    retstr->var0.var1.var0.var9 = v22;
    retstr->var0.var1.var0.var10 = v21;
    *&retstr->var0.var1.var0.var12 = 1;
    retstr->var0.var1.var0.var14.var0.__null_state_ = v20;
    retstr->var0.var1.var0.var14.__engaged_ = 1;
    *&retstr->var0.var1.var1.var0 = v27;
    retstr->var0.var1.var1.var2.__engaged_ = 0;
    retstr->var0.var1.var1.var3.var0.var0 = 0;
    retstr->var0.var1.var1.var3.var1 = 0;
    retstr->var0.var1.var2.var0 = 0;
    retstr->var0.var1.var2.var1 = 0;
    retstr->var0.var1.var3 = 0;
    retstr->var0.var1.var2.var2 = 0;
    retstr->var1 = 1;
  }

  else
  {
    result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1004B5F60(&a4->var16);
    }

    retstr->var0.var0 = 0;
    retstr->var1 = 0;
  }

  return result;
}

- (BOOL)_prepareLocalizationSessionFromOOBConfig:(const void *)config outServiceRequest:(void *)request outStartOptions:(void *)options
{
  v26 = 0;
  v25 = 0;
  v27 = 0;
  v8 = *(config + 16);
  v13 = *(config + 14);
  v14 = 0;
  v15 = *config;
  v16 = *(config + 1);
  v17 = *(config + 9);
  v18 = *(config + 8);
  v19 = *(config + 10);
  v20 = *(config + 12);
  v22 = *(config + 13);
  v21 = *(config + 22);
  v23 = *(config + 10);
  v24 = v8;
  v28 = 11;
  sub_10019E89C(&v13, __src);
  v9 = *(request + 576);
  memcpy(request, __src, 0x240uLL);
  if ((v9 & 1) == 0)
  {
    *(request + 576) = 1;
  }

  v10 = 1000 * *(config + 9) + 5000;
  v11 = *(options + 112);
  *options = 0;
  *(options + 40) = 0;
  *(options + 6) = 150000;
  *(options + 56) = 1;
  *(options + 15) = v10;
  *(options + 4) = 0u;
  *(options + 5) = 0u;
  *(options + 6) = 0u;
  if ((v11 & 1) == 0)
  {
    *(options + 112) = 1;
  }

  return 1;
}

- (BOOL)_triggerRangingForSession:(shared_ptr<rose:(const void *)session :objects::LocalizationSession>)a3 startRangingOptions:
{
  if (!*a3.var0)
  {
    sub_1004B6030();
  }

  return sub_10034024C(*a3.var0, a3.var1) == 0;
}

- (BOOL)_assignAnchorCoordinates:(void *)coordinates
{
  if (*(coordinates + 8) != 6 || *(coordinates + 1680) != 1)
  {
    return 0;
  }

  v4 = *(coordinates + 763);
  v40 = *(coordinates + 763);
  p_addressToCoordinatesOOB = &self->_addressToCoordinatesOOB;
  p_end_node = &self->_addressToCoordinatesOOB.__tree_.__end_node_;
  left = self->_addressToCoordinatesOOB.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_54;
  }

  v8 = &self->_addressToCoordinatesOOB.__tree_.__end_node_;
  do
  {
    left_low = LOWORD(left[4].__left_);
    v10 = left_low >= v4;
    v11 = left_low < v4;
    if (v10)
    {
      v8 = left;
    }

    left = left[v11].__left_;
  }

  while (left);
  if (v8 == p_end_node || v4 < LOWORD(v8[4].__left_))
  {
LABEL_54:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B60CC();
    }

    return 0;
  }

  v41 = &v40;
  v14 = *(sub_10027DDC8(&self->_addressToCoordinatesOOB, &v40) + 10);
  switch(v14)
  {
    case 999:
      return 0;
    case 1:
      v41 = &v40;
      v19 = sub_10027DDC8(p_addressToCoordinatesOOB, &v40)[6];
      v41 = &v40;
      v20 = sub_10027DDC8(p_addressToCoordinatesOOB, &v40)[7];
      v41 = &v40;
      v21 = sub_10027DDC8(p_addressToCoordinatesOOB, &v40)[8];
      if (*(coordinates + 1616) == 1)
      {
        *(coordinates + 1616) = 0;
      }

      v22 = *(coordinates + 1648);
      *(coordinates + 203) = v19;
      *(coordinates + 204) = v20;
      *(coordinates + 205) = v21;
      if ((v22 & 1) == 0)
      {
        *(coordinates + 1648) = 1;
      }

      break;
    case 0:
      v41 = &v40;
      v15 = sub_10027DDC8(p_addressToCoordinatesOOB, &v40)[6];
      v41 = &v40;
      v16 = sub_10027DDC8(p_addressToCoordinatesOOB, &v40)[7];
      v41 = &v40;
      v17 = sub_10027DDC8(p_addressToCoordinatesOOB, &v40)[8];
      v18 = *(coordinates + 1616);
      *(coordinates + 199) = v15;
      *(coordinates + 200) = v16;
      *(coordinates + 201) = v17;
      if ((v18 & 1) == 0)
      {
        *(coordinates + 1616) = 1;
      }

      if (*(coordinates + 1648) == 1)
      {
        *(coordinates + 1648) = 0;
      }

      break;
  }

  v23 = *(coordinates + 207);
  v24 = *(coordinates + 208);
  v12 = 1;
  if (v23 != v24)
  {
    while (1)
    {
      if (!*v23)
      {
        v25 = *(v23 + 8);
        v39 = *(v23 + 8);
        v26 = p_end_node->__left_;
        if (!p_end_node->__left_)
        {
          goto LABEL_55;
        }

        v27 = p_end_node;
        do
        {
          v28 = LOWORD(v26[4].__left_);
          v10 = v28 >= v25;
          v29 = v28 < v25;
          if (v10)
          {
            v27 = v26;
          }

          v26 = v26[v29].__left_;
        }

        while (v26);
        if (v27 == p_end_node || v25 < LOWORD(v27[4].__left_))
        {
LABEL_55:
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004B605C(&v39);
          }

          return 0;
        }

        v41 = &v39;
        v30 = *(sub_10027DDC8(p_addressToCoordinatesOOB, &v39) + 10);
        if (v30)
        {
          if (v30 == 1)
          {
            v41 = &v39;
            v31 = sub_10027DDC8(p_addressToCoordinatesOOB, &v39)[6];
            v41 = &v39;
            v32 = sub_10027DDC8(p_addressToCoordinatesOOB, &v39)[7];
            v41 = &v39;
            v33 = sub_10027DDC8(p_addressToCoordinatesOOB, &v39)[8];
            if (*(v23 + 80) == 1)
            {
              *(v23 + 80) = 0;
            }

            v34 = *(v23 + 112);
            *(v23 + 88) = v31;
            *(v23 + 96) = v32;
            *(v23 + 104) = v33;
            if ((v34 & 1) == 0)
            {
              *(v23 + 112) = 1;
            }
          }

          else if (v30 == 999)
          {
            return 0;
          }
        }

        else
        {
          v41 = &v39;
          v35 = sub_10027DDC8(p_addressToCoordinatesOOB, &v39)[6];
          v41 = &v39;
          v36 = sub_10027DDC8(p_addressToCoordinatesOOB, &v39)[7];
          v41 = &v39;
          v37 = sub_10027DDC8(p_addressToCoordinatesOOB, &v39)[8];
          v38 = *(v23 + 80);
          *(v23 + 56) = v35;
          *(v23 + 64) = v36;
          *(v23 + 72) = v37;
          if ((v38 & 1) == 0)
          {
            *(v23 + 80) = 1;
          }

          if (*(v23 + 112) == 1)
          {
            *(v23 + 112) = 0;
          }
        }
      }

      v23 += 120;
      if (v23 == v24)
      {
        return 1;
      }
    }
  }

  return v12;
}

- (void)_watchdogLoop
{
  dispatch_assert_queue_V2(self->_clientQueue);
  if (self->_isRunning)
  {
    if (!self->_sessionLastActiveEventTimestamp.__engaged_)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B6140();
      }

      goto LABEL_8;
    }

    val = self->_sessionLastActiveEventTimestamp.var0.__val_;
    if (sub_100005288() - val > 180.0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B617C();
      }

LABEL_8:
      [(NIServerDLTDOASession *)self _invalidateSessionWhenTimeout];
      return;
    }

    [(NIServerDLTDOASession *)self _removeInactiveRangingAnchorIfAny];
    _nextPendingTriggerAnchor = [(NIServerDLTDOASession *)self _nextPendingTriggerAnchor];
    if ((_nextPendingTriggerAnchor & 0x10000) != 0)
    {
      [(NIServerDLTDOASession *)self _scheduleSessionToTrackAddress:_nextPendingTriggerAnchor];
    }

    v5.__rep_ = [(NIServerDLTDOASession *)self nominalCycleRate];
    objc_initWeak(&location, self);
    v6 = dispatch_time(0, 1000000 * v5.__rep_);
    clientQueue = self->_clientQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10027B244;
    v8[3] = &unk_10098AB18;
    objc_copyWeak(&v9, &location);
    dispatch_after(v6, clientQueue, v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_removeInactiveRangingAnchorIfAny
{
  *&v3 = sub_100005288();
  begin_node = self->_addressToTrackingAnchorState.__tree_.__begin_node_;
  if (begin_node != &self->_addressToTrackingAnchorState.__tree_.__end_node_)
  {
    v5 = *&v3;
    *&v3 = 67109632;
    v28 = v3;
    do
    {
      left = begin_node[5].__left_;
      v7 = *&begin_node[6].__left_;
      left_low = LOWORD(begin_node[4].__left_);
      v33 = begin_node[4].__left_;
      v9 = v5 - v7;
      if (left != 4 || v9 <= 15.0)
      {
        isa = begin_node[1].__left_;
        if (isa)
        {
          do
          {
            v12 = isa;
            isa = isa->super.super.isa;
          }

          while (isa);
        }

        else
        {
          do
          {
            v12 = begin_node[2].__left_;
            v13 = v12->super.super.isa == begin_node;
            begin_node = v12;
          }

          while (!v13);
        }
      }

      else
      {
        for (i = self->_clusterToSessionRecord.__tree_.__end_node_.__left_; i; i = *i)
        {
          v15 = *(i + 16);
          if (left_low >= v15)
          {
            if (v15 >= left_low)
            {
              v16 = +[NSDate now];
              [v16 timeIntervalSince1970];
              v18 = v17;
              *buf = &v33;
              v19 = sub_10027DEA4(&self->_clusterToSessionRecord, &v33);
              v19[9] = v18;
              *(v19 + 80) = 1;

              v20 = +[NIServerDLTDOAService sharedInstance];
              *buf = &v33;
              v21 = sub_10027DEA4(&self->_clusterToSessionRecord, &v33);
              v22 = *(v21 + 7);
              v29 = *(v21 + 5);
              v30[0] = v22;
              *(v30 + 9) = *(v21 + 65);
              if (*(v21 + 111) < 0)
              {
                sub_1000056BC(&__p, v21[11], v21[12]);
              }

              else
              {
                __p = *(v21 + 11);
                v32 = v21[13];
              }

              [v20 clientInvalidateWithSessionRecord:{&v29, v28}];
              if (SHIBYTE(v32) < 0)
              {
                operator delete(__p);
              }

              sub_10027F5F8(&self->_clusterToSessionRecord, &v33);
              break;
            }

            ++i;
          }
        }

        v12 = sub_100037488(&self->_addressToTrackingAnchorState, begin_node);
        operator delete(begin_node);
        v23 = [(NIServerDLTDOASession *)self _invalidateSessionWithClusterAddress:v33 reason:@"RangingMeasurementNotReceived"];
        v24 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v28;
          *&buf[4] = v33;
          LOWORD(v35) = 2048;
          *(&v35 + 2) = 0x402E000000000000;
          WORD5(v35) = 1024;
          HIDWORD(v35) = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#ses-loc,Ranging session for anchor: %hu being invalidate since exceed measurement timeout %fs, invalidate session succeed? :%d", buf, 0x18u);
        }

        for (j = self->_cachedWifiOOBAnchors.__tree_.__end_node_.__left_; j; j = *j)
        {
          v26 = *(j + 13);
          if (v33 >= v26)
          {
            if (v26 >= v33)
            {
              v27 = sub_100005288();
              *buf = v33;
              LODWORD(v35) = 0;
              *(&v35 + 1) = v27;
              sub_10027CDD0(&self->_addressToTrackingAnchorState, buf);
              break;
            }

            ++j;
          }
        }
      }

      begin_node = v12;
    }

    while (v12 != &self->_addressToTrackingAnchorState.__tree_.__end_node_);
  }
}

- (optional<unsigned)_nextPendingTriggerAnchor
{
  v3 = sub_100005288();
  begin_node = self->_addressToTrackingAnchorState.__tree_.__begin_node_;
  if (begin_node == &self->_addressToTrackingAnchorState.__tree_.__end_node_)
  {
    v6 = 0;
    goto LABEL_22;
  }

  v5 = v3;
  v6 = 0;
  do
  {
    left = self->_cachedWifiOOBAnchors.__tree_.__end_node_.__left_;
    if (!left)
    {
LABEL_9:
      v11 = sub_100037488(&self->_addressToTrackingAnchorState, begin_node);
      operator delete(begin_node);
      begin_node = v11;
      continue;
    }

    v8 = begin_node[5].__left_;
    left_low = LOWORD(begin_node[4].__left_);
    while (1)
    {
      v10 = *(left + 13);
      if (left_low >= v10)
      {
        break;
      }

LABEL_8:
      left = *left;
      if (!left)
      {
        goto LABEL_9;
      }
    }

    if (v10 < left_low)
    {
      ++left;
      goto LABEL_8;
    }

    if ((v8 == 3 || !v8) && v5 > *&begin_node[6].__left_)
    {
      v6 = LOWORD(begin_node[4].__left_);
      v5 = *&begin_node[6].__left_;
    }

    v12 = begin_node[1].__left_;
    if (v12)
    {
      do
      {
        begin_node = v12;
        v12 = v12->__left_;
      }

      while (v12);
    }

    else
    {
      do
      {
        v13 = begin_node;
        begin_node = begin_node[2].__left_;
      }

      while (begin_node->__left_ != v13);
    }
  }

  while (begin_node != &self->_addressToTrackingAnchorState.__tree_.__end_node_);
LABEL_22:
  _idleSessionsAvailable = [(NIServerDLTDOASession *)self _idleSessionsAvailable];
  if ((_idleSessionsAvailable & (v6 != 0)) != 0)
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = 0;
  }

  if (_idleSessionsAvailable)
  {
    v16 = v6;
  }

  else
  {
    v16 = 0;
  }

  return (v15 | v16);
}

- (BOOL)_anySessionWithState:(int)state
{
  p_end_node = &self->_addressToTrackingAnchorState.__tree_.__end_node_;
  begin_node = self->_addressToTrackingAnchorState.__tree_.__begin_node_;
  if (begin_node == &self->_addressToTrackingAnchorState.__tree_.__end_node_)
  {
    return 0;
  }

  do
  {
    left = begin_node[5].__left_;
    result = left == state;
    if (left == state)
    {
      break;
    }

    v7 = begin_node[1].__left_;
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = v7->__left_;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = begin_node[2].__left_;
        v9 = v8->__left_ == begin_node;
        begin_node = v8;
      }

      while (!v9);
    }

    begin_node = v8;
  }

  while (v8 != p_end_node);
  return result;
}

- (void)_internalConfigWithDebugParams
{
  debugParameters = [(NIDLTDOAConfiguration *)self->_configuration debugParameters];
  if (debugParameters)
  {
    [(NIServerDLTDOASession *)self _parseOOBConfigFromDebugParameters:debugParameters];
    sub_10027C558(&self->_oobConfigs);
    *&self->_oobConfigs.__begin_ = *buf;
    self->_oobConfigs.__cap_ = v18;
    v18 = 0;
    v16 = buf;
    memset(buf, 0, sizeof(buf));
    sub_10027EAD4(&v16);
    begin = self->_oobConfigs.__begin_;
    end = self->_oobConfigs.__end_;
    if (begin == end)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004B61B8();
      }
    }

    else
    {
      v5 = 0;
      p_end_node = &self->_addressToTrackingAnchorState.__tree_.__end_node_;
      do
      {
        var0 = begin[v5].var1.var0;
        LOWORD(v16) = begin[v5].var1.var0;
        left = p_end_node->__left_;
        if (!p_end_node->__left_)
        {
          goto LABEL_12;
        }

        v9 = &self->_addressToTrackingAnchorState.__tree_.__end_node_;
        do
        {
          left_low = LOWORD(left[4].__left_);
          v11 = left_low >= var0;
          v12 = left_low < var0;
          if (v11)
          {
            v9 = left;
          }

          left = left[v12].__left_;
        }

        while (left);
        if (v9 == p_end_node || var0 < LOWORD(v9[4].__left_))
        {
LABEL_12:
          v13 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v16;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#ses-loc,discovered anchor address %hu", buf, 8u);
          }

          v14 = sub_100005288();
          *buf = v16;
          *&buf[8] = 0;
          v18 = *&v14;
          sub_10027CDD0(&self->_addressToTrackingAnchorState, buf);
          sub_10027D03C(&self->_cachedWifiOOBAnchors, &v16);
          begin = self->_oobConfigs.__begin_;
          end = self->_oobConfigs.__end_;
        }

        ++v5;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((end - begin) >> 4) > v5);
    }
  }
}

- (void)_invalidateSessionWhenTimeout
{
  v3 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5886 userInfo:0];
  [(NIServerDLTDOASession *)self invalidate];
  v5.receiver = self;
  v5.super_class = NIServerDLTDOASession;
  invalidationHandler = [(NIServerBaseSession *)&v5 invalidationHandler];
  (invalidationHandler)[2](invalidationHandler, v3);
}

- (id)sessionRecordPrintableState
{
  v3 = objc_opt_new();
  v4 = objc_autoreleasePoolPush();
  begin_node = self->_clusterToSessionRecord.__tree_.__begin_node_;
  if (begin_node != &self->_clusterToSessionRecord.__tree_.__end_node_)
  {
    do
    {
      left_low = LOWORD(begin_node[4].__left_);
      v7 = sub_100273EF4(&begin_node[5]);
      v8 = [NSString stringWithFormat:@" Cluster initiator address: %u \n             %@\n", left_low, v7];
      [v3 appendString:v8];

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v10 = left;
          left = left->super.super.isa;
        }

        while (left);
      }

      else
      {
        do
        {
          v10 = begin_node[2].__left_;
          v11 = v10->super.super.isa == begin_node;
          begin_node = v10;
        }

        while (!v11);
      }

      begin_node = v10;
    }

    while (v10 != &self->_clusterToSessionRecord.__tree_.__end_node_);
  }

  objc_autoreleasePoolPop(v4);

  return v3;
}

- (id).cxx_construct
{
  self->_pbLogger.__ptr_ = 0;
  self->_pbLogger.__cntrl_ = 0;
  self->_oobConfigs.__end_ = 0;
  self->_oobConfigs.__cap_ = 0;
  self->_oobConfigs.__begin_ = 0;
  self->_addressToCoordinatesOOB.__tree_.__size_ = 0;
  self->_addressToCoordinatesOOB.__tree_.__end_node_.__left_ = 0;
  self->_addressToCoordinatesOOB.__tree_.__begin_node_ = &self->_addressToCoordinatesOOB.__tree_.__end_node_;
  self->_addressToCoordinatesDTM.__tree_.__size_ = 0;
  self->_addressToCoordinatesDTM.__tree_.__end_node_.__left_ = 0;
  self->_addressToCoordinatesDTM.__tree_.__begin_node_ = &self->_addressToCoordinatesDTM.__tree_.__end_node_;
  self->_addressToTrackingAnchorState.__tree_.__size_ = 0;
  self->_addressToTrackingAnchorState.__tree_.__end_node_.__left_ = 0;
  self->_addressToTrackingAnchorState.__tree_.__begin_node_ = &self->_addressToTrackingAnchorState.__tree_.__end_node_;
  self->_cachedWifiOOBAnchors.__tree_.__size_ = 0;
  self->_cachedWifiOOBAnchors.__tree_.__end_node_.__left_ = 0;
  self->_cachedWifiOOBAnchors.__tree_.__begin_node_ = &self->_cachedWifiOOBAnchors.__tree_.__end_node_;
  self->_currentBlockIndex.var0.__null_state_ = 0;
  self->_currentBlockIndex.__engaged_ = 0;
  self->_expectedAddresses.__tree_.__end_node_.__left_ = 0;
  self->_expectedAddresses.__tree_.__size_ = 0;
  self->_expectedAddresses.__tree_.__begin_node_ = &self->_expectedAddresses.__tree_.__end_node_;
  self->_cachedMeasurements.__end_ = 0;
  self->_cachedMeasurements.__cap_ = 0;
  self->_cachedMeasurements.__begin_ = 0;
  self->_sessions.__tree_.__size_ = 0;
  self->_sessions.__tree_.__end_node_.__left_ = 0;
  self->_sessions.__tree_.__begin_node_ = &self->_sessions.__tree_.__end_node_;
  sub_1002FE758(&self->_machTimeConverter, a2);
  self->_sessionLastActiveEventTimestamp.var0.__null_state_ = 0;
  self->_sessionLastActiveEventTimestamp.__engaged_ = 0;
  self->_sessionRunTimestamp.var0.__null_state_ = 0;
  self->_sessionRunTimestamp.__engaged_ = 0;
  self->_clusterToSessionRecord.__tree_.__size_ = 0;
  self->_clusterToSessionRecord.__tree_.__end_node_.__left_ = 0;
  self->_clusterToSessionRecord.__tree_.__begin_node_ = &self->_clusterToSessionRecord.__tree_.__end_node_;
  return self;
}

@end