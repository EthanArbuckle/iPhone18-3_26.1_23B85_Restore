@interface HRCSourceController
- (HRCHeartRateReceiver)delegate;
- (HRCSourceController)initWithDelegate:(id)delegate onQueue:(id)queue analyticsReporter:(id)reporter internalVariant:(BOOL)variant;
- (HRCSourceController)initWithDelegate:(id)delegate watchSource:(id)source aacpSource:(id)aacpSource bleSource:(id)bleSource onQueue:(id)queue analyticsReporter:(id)reporter internalVariant:(BOOL)variant;
- (void)_enableWatchSource:(BOOL)source enableAacpSource:(BOOL)aacpSource;
- (void)_setupAppleSource:(id)source;
- (void)_streamAppleHeartRates:(BOOL)rates;
- (void)_updateActiveSources;
- (void)didReceiveAppleHeartRate:(id)rate;
- (void)didReceiveBLEHeartRate:(id)rate;
- (void)enableWatchSource:(BOOL)source enableAacpSource:(BOOL)aacpSource;
- (void)handleBleSourceListUpdate:(id)update;
- (void)handleSourceUpdate:(const HRCSourceUpdate *)update;
- (void)setEnableBluetoothSourceDiscovery:(BOOL)discovery;
- (void)setOpportunisticMode:(BOOL)mode;
- (void)setStreamingMode:(unint64_t)mode;
- (void)updateWorkoutActivityType:(unint64_t)type withLocationType:(int64_t)locationType;
@end

@implementation HRCSourceController

- (HRCHeartRateReceiver)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HRCSourceController)initWithDelegate:(id)delegate onQueue:(id)queue analyticsReporter:(id)reporter internalVariant:(BOOL)variant
{
  delegateCopy = delegate;
  queueCopy = queue;
  reporterCopy = reporter;
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  LOBYTE(v17) = variant;
  v15 = [(HRCSourceController *)self initWithDelegate:delegateCopy watchSource:0 aacpSource:v13 bleSource:v14 onQueue:queueCopy analyticsReporter:reporterCopy internalVariant:v17];

  return v15;
}

- (HRCSourceController)initWithDelegate:(id)delegate watchSource:(id)source aacpSource:(id)aacpSource bleSource:(id)bleSource onQueue:(id)queue analyticsReporter:(id)reporter internalVariant:(BOOL)variant
{
  delegateCopy = delegate;
  sourceCopy = source;
  aacpSourceCopy = aacpSource;
  bleSourceCopy = bleSource;
  queueCopy = queue;
  reporterCopy = reporter;
  v49.receiver = self;
  v49.super_class = HRCSourceController;
  v18 = [(HRCSourceController *)&v49 init];
  [(HRCSourceController *)v18 setDelegate:delegateCopy];
  objc_storeStrong(&v18->_bleSource, bleSource);
  objc_storeStrong(&v18->_queue, queue);
  objc_storeStrong(&v18->_analyticsReporter, reporter);
  v18->_internalVariant = variant;
  objc_storeStrong(&v18->_watchSource, source);
  objc_storeStrong(&v18->_aacpSource, aacpSource);
  [(HRCSourceController *)v18 _setupAppleSource:sourceCopy];
  [(HRCSourceController *)v18 _setupAppleSource:aacpSourceCopy];
  objc_initWeak(&location, v18);
  bleSource = v18->_bleSource;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100008318;
  v45[3] = &unk_1000408B8;
  v20 = queueCopy;
  v46 = v20;
  objc_copyWeak(&v47, &location);
  [(HRCSource *)bleSource setHeartRateHandler:v45];
  v21 = v18->_bleSource;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100008434;
  v42[3] = &unk_1000408E0;
  v22 = v20;
  v43 = v22;
  objc_copyWeak(&v44, &location);
  [(HRCSource *)v21 setAvailabilityHandler:v42];
  v23 = v18->_bleSource;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100008520;
  v39[3] = &unk_100040940;
  v24 = v22;
  v40 = v24;
  objc_copyWeak(&v41, &location);
  [(HRCSource *)v23 setSourceUpdateHandler:v39];
  v25 = v18->_bleSource;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100008734;
  v36[3] = &unk_100040968;
  v26 = v24;
  v37 = v26;
  objc_copyWeak(&v38, &location);
  [(HRCSource *)v25 setBluetoothLeSourcesUpdateHandler:v36];
  [(HRCSource *)v18->_bleSource activate];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008850;
  block[3] = &unk_1000406C0;
  v27 = v18;
  v35 = v27;
  dispatch_async(v26, block);
  v28 = v35;
  v29 = v27;

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v41);

  objc_destroyWeak(&v44);
  objc_destroyWeak(&v47);

  objc_destroyWeak(&location);
  return v29;
}

- (void)updateWorkoutActivityType:(unint64_t)type withLocationType:(int64_t)locationType
{
  dispatch_assert_queue_V2(self->_queue);
  [(HRCSource *)self->_watchSource updateWorkoutActivityType:type withLocationType:locationType];
  aacpSource = self->_aacpSource;

  [(HRCSource *)aacpSource updateWorkoutActivityType:type withLocationType:locationType];
}

- (void)_setupAppleSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy)
  {
    objc_initWeak(&location, self);
    v5 = self->_queue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100008B7C;
    v19[3] = &unk_1000408B8;
    v6 = v5;
    v20 = v6;
    objc_copyWeak(&v21, &location);
    [sourceCopy setHeartRateHandler:v19];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100008C98;
    v16[3] = &unk_100040940;
    v7 = v6;
    v17 = v7;
    objc_copyWeak(&v18, &location);
    [sourceCopy setSourceUpdateHandler:v16];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100008E18;
    v13[3] = &unk_1000409B8;
    v8 = v7;
    v14 = v8;
    objc_copyWeak(&v15, &location);
    [sourceCopy setAnalyticsReportHandler:v13];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100008F48;
    v10[3] = &unk_100040A08;
    v9 = v8;
    v11 = v9;
    objc_copyWeak(&v12, &location);
    [sourceCopy setFitNotificationParamUpdateHandler:v10];
    [sourceCopy activate];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)enableWatchSource:(BOOL)source enableAacpSource:(BOOL)aacpSource
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000090DC;
  v5[3] = &unk_100040A30;
  v5[4] = self;
  sourceCopy = source;
  aacpSourceCopy = aacpSource;
  dispatch_async(queue, v5);
}

- (void)didReceiveAppleHeartRate:(id)rate
{
  rateCopy = rate;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_internalVariant && self->_activeSource == 2 && self->_streamingMode && [rateCopy sourceType] == 2 && objc_msgSend(rateCopy, "hrContext") == 2)
  {
    v5 = sub_10000132C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      uuid = [rateCopy uuid];
      v8 = 138543362;
      v9 = uuid;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "dropping HR received from Platinum with context streamingPPG and uuid : %{public}@", &v8, 0xCu);
    }
  }

  else
  {
    delegate = [(HRCSourceController *)self delegate];
    [delegate heartRateSampleWasCollected:rateCopy];
  }
}

- (void)didReceiveBLEHeartRate:(id)rate
{
  rateCopy = rate;
  dispatch_assert_queue_V2(self->_queue);
  delegate = [(HRCSourceController *)self delegate];
  [delegate heartRateSampleWasCollected:rateCopy];
}

- (void)handleSourceUpdate:(const HRCSourceUpdate *)update
{
  dispatch_assert_queue_V2(self->_queue);
  delegate = [(HRCSourceController *)self delegate];
  [delegate handleSourceUpdate:update];
}

- (void)handleBleSourceListUpdate:(id)update
{
  updateCopy = update;
  dispatch_assert_queue_V2(self->_queue);
  delegate = [(HRCSourceController *)self delegate];
  [delegate handleBluetoothLeSourceUpdate:updateCopy];
}

- (void)setStreamingMode:(unint64_t)mode
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_streamingMode != mode)
  {
    v5 = sub_10000132C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = mode;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Source controller set streaming mode %d", v6, 8u);
    }

    self->_streamingMode = mode;
    [(HRCSource *)self->_bleSource setStreamingMode:mode];
    [(HRCSourceController *)self _updateActiveSources];
  }
}

- (void)setOpportunisticMode:(BOOL)mode
{
  modeCopy = mode;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_opportunisticMode != modeCopy)
  {
    self->_opportunisticMode = modeCopy;
    v5 = sub_10000132C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = modeCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Source controller set opportunistic mode %{BOOL}u", v6, 8u);
    }

    [(HRCSourceController *)self _updateActiveSources];
  }
}

- (void)setEnableBluetoothSourceDiscovery:(BOOL)discovery
{
  discoveryCopy = discovery;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_enableBtLeSourceDiscovery != discoveryCopy)
  {
    self->_enableBtLeSourceDiscovery = discoveryCopy;
    v5 = sub_10000132C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = discoveryCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Source controller set bt source discovery to %{BOOL}u", v6, 8u);
    }

    [(HRCSource *)self->_bleSource setDiscoveryEnabled:self->_enableBtLeSourceDiscovery];
  }
}

- (void)_streamAppleHeartRates:(BOOL)rates
{
  ratesCopy = rates;
  dispatch_assert_queue_V2(self->_queue);
  if (ratesCopy)
  {
    streamingMode = self->_streamingMode;
  }

  else
  {
    streamingMode = 0;
  }

  [(HRCSource *)self->_watchSource setStreamingMode:streamingMode];
  aacpSource = self->_aacpSource;

  [(HRCSource *)aacpSource setStreamingMode:streamingMode];
}

- (void)_updateActiveSources
{
  dispatch_assert_queue_V2(self->_queue);
  activeSource = self->_activeSource;
  available = [(HRCSource *)self->_bleSource available];
  v5 = sub_10000132C();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (available)
  {
    if (v6)
    {
      *buf = 0;
      v7 = 2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Source controller: 3P source available", buf, 2u);
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    if (v6)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Source controller: 3P source unavailable", v10, 2u);
    }

    v7 = 1;
  }

  [(HRCSourceController *)self _streamAppleHeartRates:available ^ 1];
  if (self->_streamingMode)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  self->_activeSource = v8;
  if (activeSource != v8)
  {
    delegate = [(HRCSourceController *)self delegate];
    [delegate activeSourceDidChange:self->_activeSource];
  }

  [(HRCSource *)self->_watchSource setOpportunisticMode:self->_opportunisticMode];
  [(HRCSource *)self->_aacpSource setOpportunisticMode:self->_opportunisticMode];
}

- (void)_enableWatchSource:(BOOL)source enableAacpSource:(BOOL)aacpSource
{
  aacpSourceCopy = aacpSource;
  dispatch_assert_queue_V2(self->_queue);
  aacpSource = self->_aacpSource;
  if (aacpSourceCopy)
  {
    if (!aacpSource)
    {
      v7 = objc_opt_new();
      v8 = self->_aacpSource;
      self->_aacpSource = v7;

      [(HRCSourceController *)self _setupAppleSource:self->_aacpSource];
    }
  }

  else
  {
    self->_aacpSource = 0;
  }

  [(HRCSourceController *)self _updateActiveSources];
}

@end