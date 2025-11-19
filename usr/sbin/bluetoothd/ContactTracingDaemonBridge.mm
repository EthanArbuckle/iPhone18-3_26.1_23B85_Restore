@interface ContactTracingDaemonBridge
+ (id)sharedDaemonBridge;
- (BOOL)isBluetoothPoweredOn;
- (BOOL)isENLoggingProfileInstalled;
- (ContactTracingDaemonBridge)init;
- (ContactTracingPowerObserverCPP)_getPowerObserver;
- (id)bluetoothSystemContainerURL;
- (id)createAdvertisementQuerySessionWithThreshold:(unsigned __int8)a3 error:(id *)a4;
- (id)retrieveCurrentAdvertisingPayload;
- (id)retrieveTEKHistoryIncludingActive:(BOOL)a3 generateNewTEK:(BOOL)a4;
- (int)startTracingWithAppBundleIdentifier:(id)a3;
- (int)stopTracing;
- (unsigned)storedAdvertisementCount;
- (void)activate;
- (void)performPeriodicAdvertisementDatabasePurgeWithDate:(id)a3;
- (void)printBluetoothDebug;
- (void)purgeAdvertisementDatabase;
- (void)registerStateMetricPullCallback:(id)a3;
- (void)resetTEKHistory;
- (void)sendErrorMetricWithType:(unsigned int)a3;
- (void)sendOnBoardingMetricWithTrigger:(unsigned int)a3 completed:(BOOL)a4 firstTime:(BOOL)a5 countryCode:(id)a6 subdivisionCode:(id)a7 legalConsent:(BOOL)a8;
- (void)sendStateMetricWithVersion:(unsigned int)a3 subdivisionCode:(id)a4 availabilityAlertCount:(unsigned __int8)a5 legalConsentPageCount:(unsigned __int8)a6;
- (void)setAggressiveScanningEnabled:(BOOL)a3;
- (void)setENAppHasLoggingEntitlement:(BOOL)a3;
- (void)setLoggingParams:(BOOL)a3 loggingSensitive:(BOOL)a4;
- (void)setRegionServerConfiguration:(id)a3;
- (void)startPowerMonitoringWithStateChangeHandler:(id)a3;
- (void)stopPowerMonitoring;
- (void)switchToCentralAdvertisementStoreAsync;
@end

@implementation ContactTracingDaemonBridge

- (ContactTracingDaemonBridge)init
{
  v9.receiver = self;
  v9.super_class = ContactTracingDaemonBridge;
  v2 = [(ContactTracingDaemonBridge *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(ENDaemon);
    daemon = v2->_daemon;
    v2->_daemon = v3;

    [(ENDaemon *)v2->_daemon setDelegate:v2];
    v5 = [(ENDaemon *)v2->_daemon dispatchQueue];
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = v2;
  }

  return v2;
}

+ (id)sharedDaemonBridge
{
  if (qword_100BC7B50 != -1)
  {
    sub_100872C88();
  }

  v3 = qword_100BC7B48;

  return v3;
}

- (void)activate
{
  if (qword_100B54220 != -1)
  {
    sub_100872C9C();
  }

  v3 = sub_1003C62F8(qword_100B54218, 2);
  if (!sub_100703D8C(v3))
  {
    [(ENDaemon *)self->_daemon setDisableExposureNotification:1];
  }

  daemon = self->_daemon;

  [(ENDaemon *)daemon activate];
}

- (id)createAdvertisementQuerySessionWithThreshold:(unsigned __int8)a3 error:(id *)a4
{
  if (qword_100B547B0 != -1)
  {
    sub_100872CB0();
  }

  v6 = off_100B547A8;

  return sub_100611CE8(v6, a3, a4);
}

- (void)performPeriodicAdvertisementDatabasePurgeWithDate:(id)a3
{
  v3 = a3;
  v5 = v3;
  if (qword_100B547B0 == -1)
  {
    v4 = v3;
  }

  else
  {
    sub_100872CB0();
    v4 = v5;
  }

  sub_100611B5C(off_100B547A8, v4);
}

- (void)purgeAdvertisementDatabase
{
  if (qword_100B547B0 != -1)
  {
    sub_100872CB0();
  }

  v3 = off_100B547A8;

  sub_1006118B4(v3);
}

- (id)retrieveTEKHistoryIncludingActive:(BOOL)a3 generateNewTEK:(BOOL)a4
{
  v4 = a4;
  if (qword_100B508C0 != -1)
  {
    sub_100872CC4();
  }

  v6 = off_100B508B8;

  return sub_1007CCF40(v6, a3, v4);
}

- (void)resetTEKHistory
{
  if (qword_100B508C0 != -1)
  {
    sub_100872CC4();
  }

  v3 = off_100B508B8;

  sub_1007CCBEC(v3);
}

- (id)retrieveCurrentAdvertisingPayload
{
  if (qword_100B54770 != -1)
  {
    sub_100872CD8();
  }

  v5 = 0;
  v6 = 0;
  sub_10050F874(off_100B54768, &v5);
  v2 = sub_10000C5F8(&v5);
  v3 = [NSData dataWithBytes:v2 length:sub_10000C5E0(&v5)];
  v5 = &off_100AE0A78;
  if (v6)
  {
    sub_10000C808(v6);
  }

  return v3;
}

- (unsigned)storedAdvertisementCount
{
  if (qword_100B547B0 != -1)
  {
    sub_100872CB0();
  }

  v3 = off_100B547A8;

  return sub_100611E80(v3);
}

- (void)switchToCentralAdvertisementStoreAsync
{
  if (qword_100B547B0 != -1)
  {
    sub_100872CB0();
  }

  v3 = off_100B547A8;

  sub_100611A54(v3);
}

- (void)registerStateMetricPullCallback:(id)a3
{
  v4 = a3;
  v3 = sub_10000F034();
  (*(*v3 + 496))(v3, v4);
}

- (void)sendOnBoardingMetricWithTrigger:(unsigned int)a3 completed:(BOOL)a4 firstTime:(BOOL)a5 countryCode:(id)a6 subdivisionCode:(id)a7 legalConsent:(BOOL)a8
{
  v8 = a8;
  v10 = a5;
  v11 = a4;
  v12 = *&a3;
  v15 = a6;
  v13 = a7;
  v14 = sub_10000F034();
  (*(*v14 + 488))(v14, v12, v11, v10, v15, v13, v8);
}

- (void)sendStateMetricWithVersion:(unsigned int)a3 subdivisionCode:(id)a4 availabilityAlertCount:(unsigned __int8)a5 legalConsentPageCount:(unsigned __int8)a6
{
  v6 = a6;
  v7 = a5;
  v8 = *&a3;
  v10 = a4;
  v9 = sub_10000F034();
  (*(*v9 + 480))(v9, v8, v10, v6, v7);
}

- (void)sendErrorMetricWithType:(unsigned int)a3
{
  v3 = *(*sub_10000F034() + 504);

  v3();
}

- (BOOL)isBluetoothPoweredOn
{
  if (qword_100B512C8 != -1)
  {
    sub_100872CEC();
  }

  return sub_10000EE78(off_100B512C0) == 1;
}

- (id)bluetoothSystemContainerURL
{
  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  v2 = sub_100017E6C();
  (*(*v2 + 176))(v2, __p);
  if (v7 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = [NSURL fileURLWithFileSystemRepresentation:v3 isDirectory:1 relativeToURL:0];
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

- (void)printBluetoothDebug
{
  if (qword_100B54770 != -1)
  {
    sub_100872CD8();
  }

  v3 = off_100B54768;

  sub_1005131C0(v3);
}

- (void)setAggressiveScanningEnabled:(BOOL)a3
{
  v3 = a3;
  if (qword_100B54770 != -1)
  {
    sub_100872CD8();
  }

  if (v3)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  v5 = off_100B54768;

  sub_100512734(v5, v4);
}

- (void)setRegionServerConfiguration:(id)a3
{
  v8 = a3;
  v3 = [v8 dynamicAlgorithmEnabled];
  v4 = [v8 dynamicThrottleDownAdvDensity];
  v5 = [v8 dynamicThrottleDownRSSI];
  [v8 dynamicThrottleDownDuration];
  v7 = v6;
  if (qword_100B54770 != -1)
  {
    sub_100872CD8();
  }

  sub_100513008(off_100B54768, (v5 << 32) | (v7 << 48) | (v4 << 16) | v3);
}

- (void)startPowerMonitoringWithStateChangeHandler:(id)a3
{
  v4 = a3;
  sub_10077F6C8([(ContactTracingDaemonBridge *)self _getPowerObserver], v4);
}

- (void)stopPowerMonitoring
{
  v2 = [(ContactTracingDaemonBridge *)self _getPowerObserver];

  sub_10077F7A0(v2);
}

- (int)startTracingWithAppBundleIdentifier:(id)a3
{
  v3 = a3;
  if (qword_100B54770 != -1)
  {
    sub_100872CD8();
  }

  v4 = off_100B54768;
  Current = CFAbsoluteTimeGetCurrent();
  LODWORD(v4) = sub_1005101D4(v4, v3, Current);

  return v4;
}

- (int)stopTracing
{
  if (qword_100B54770 != -1)
  {
    sub_100872CD8();
  }

  v3 = off_100B54768;

  return sub_1005105F0(v3);
}

- (BOOL)isENLoggingProfileInstalled
{
  v2 = *(*sub_10000E92C() + 168);

  return v2();
}

- (void)setENAppHasLoggingEntitlement:(BOOL)a3
{
  v3 = *(*sub_10000E92C() + 200);

  v3();
}

- (void)setLoggingParams:(BOOL)a3 loggingSensitive:(BOOL)a4
{
  v4 = *(*sub_10000E92C() + 232);

  v4();
}

- (ContactTracingPowerObserverCPP)_getPowerObserver
{
  result = qword_100BC7B58;
  if (!qword_100BC7B58)
  {
    operator new();
  }

  return result;
}

@end