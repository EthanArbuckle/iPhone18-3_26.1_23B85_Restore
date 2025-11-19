@interface NEKAnalyticsDriver
- (BOOL)_forceDiagnosticForTesting;
- (BOOL)_minimumDateThresholdMet;
- (BOOL)_shouldNotifyForDrift:(id)a3 orDuplication:(id)a4 forDiagnosticTimestamp:(double)a5;
- (NEKAnalyticsDriver)initWithSyncController:(id)a3;
- (void)_sendMessage:(id)a3;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation NEKAnalyticsDriver

- (BOOL)_minimumDateThresholdMet
{
  minimumDateThreshold = self->_minimumDateThreshold;
  v3 = +[NSDate now];
  LOBYTE(minimumDateThreshold) = [(NSDate *)minimumDateThreshold isBeforeDate:v3];

  return minimumDateThreshold;
}

- (BOOL)_forceDiagnosticForTesting
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"internal_forceDiagnosticNotification", @"com.apple.EventKitSync", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (NEKAnalyticsDriver)initWithSyncController:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NEKAnalyticsDriver;
  v5 = [(NEKAnalyticsDriver *)&v18 init];
  if (v5)
  {
    v6 = +[NSCalendar autoupdatingCurrentCalendar];
    v7 = +[NSDate now];
    v8 = [v6 dateByAddingUnit:64 value:30 toDate:v7 options:0];
    minimumDateThreshold = v5->_minimumDateThreshold;
    v5->_minimumDateThreshold = v8;

    objc_storeWeak(&v5->_syncController, v4);
    v10 = [[NDTActivity alloc] initWithDelegate:v5];
    activity = v5->_activity;
    v5->_activity = v10;

    v12 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.internal.watch.calendar.analytics"];
    service = v5->_service;
    v5->_service = v12;

    v14 = sub_100004B98("com.apple.internal.watch.calendar.analytics");
    [(IDSService *)v5->_service addDelegate:v5 queue:v14];
    v15 = objc_alloc_init(NEKNotificationCenter);
    notificationCenter = v5->_notificationCenter;
    v5->_notificationCenter = v15;
  }

  return v5;
}

- (void)_sendMessage:(id)a3
{
  v4 = a3;
  v22[0] = IDSSendMessageOptionTimeoutKey;
  v22[1] = IDSSendMessageOptionFireAndForgetKey;
  v23[0] = &off_1000BB7A8;
  v23[1] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
  v6 = [(NEKAnalyticsDriver *)self service];
  v7 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v14 = 0;
  v15 = 0;
  v8 = [v6 sendData:v4 toDestinations:v7 priority:200 options:v5 identifier:&v15 error:&v14];
  v9 = v15;
  v10 = v14;

  v11 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v4 length];
    *buf = 67109634;
    v17 = v13;
    v18 = 2114;
    v19 = v9;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending analytics blob (%d bytes), IDS identifier %{public}@, result: %d", buf, 0x18u);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v42 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [[NEKPBDailyAnalytics alloc] initWithData:v13];
  v17 = [(NEKAnalyticsDriver *)self _forceDiagnosticForTesting];
  v18 = [(NEKAnalyticsDriver *)self _minimumDateThresholdMet];
  WeakRetained = objc_loadWeakRetained(&self->_syncController);
  v20 = [WeakRetained isCurrentlySyncing];

  v21 = [v15 originalGUID];
  if (((v18 | v17) & 1) == 0)
  {
    v32 = *(qword_1000D18A8 + 8);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    minimumDateThreshold = self->_minimumDateThreshold;
    *buf = 138412546;
    v44 = minimumDateThreshold;
    v45 = 2112;
    v46 = v21;
    v34 = "Minimum date threshold not met [%@] - ignoring incoming data for drift or duplication with IDS identifier: %@";
    v35 = v32;
    goto LABEL_11;
  }

  if (!(v17 & 1 | ((v20 & 1) == 0)))
  {
    v38 = *(qword_1000D18A8 + 8);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v44 = v21;
    v34 = "Active sync session - ignoring incomingData for drift or duplication with IDS identifier: %@";
    v35 = v38;
    v36 = OS_LOG_TYPE_INFO;
    goto LABEL_16;
  }

  v22 = *(qword_1000D18A8 + 8);
  if (!v16)
  {
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v44 = v21;
    v34 = "Failed to deserialize analytics data from watch with IDS identifier: %@";
    v35 = v22;
    v36 = OS_LOG_TYPE_DEFAULT;
LABEL_16:
    v37 = 12;
    goto LABEL_17;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Deserialized analytics data from watch with IDS identifier: %@", buf, 0xCu);
  }

  v23 = +[NSFileManager defaultManager];
  v24 = [v23 fileExistsAtPath:@"/var/mobile/Library/Calendar/Calendar.sqlitedb"];

  if ((v24 & 1) == 0)
  {
    v39 = *(qword_1000D18A8 + 8);
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 138412546;
    v44 = @"/var/mobile/Library/Calendar/Calendar.sqlitedb";
    v45 = 2112;
    v46 = v21;
    v34 = "Calendar DB does not exist at path [%@] - ignoring incomingData for drift or duplication with IDS identifier: %@";
    v35 = v39;
LABEL_11:
    v36 = OS_LOG_TYPE_INFO;
    v37 = 22;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v35, v36, v34, buf, v37);
    goto LABEL_18;
  }

  v41 = [[NDTSQFile alloc] initWithPath:@"/var/mobile/Library/Calendar/Calendar.sqlitedb" queue:0 readOnly:1];
  v25 = +[NSDate date];
  [v25 timeIntervalSinceReferenceDate];
  v27 = v26;

  v28 = [(NEKPBDailyAnalytics *)v16 duplicateCheck];
  v29 = [NEKDuplicationResults duplicateResultsFromCheck:v28 withDiagnosticTimestamp:v27];

  v30 = [(NEKPBDailyAnalytics *)v16 occurrenceCache];
  v31 = [NEKDriftResults driftResultsForCache:v30 withDiagnosticTimestamp:v41 andDatabase:v27];

  [NEKAnalyticsReporter saveSyncReportForDrift:v31 andDuplication:v29];
  [NEKAnalyticsReporter sendAnalyticsForDrift:v31 andDuplication:v29];
  if ([(NEKAnalyticsDriver *)self _shouldNotifyForDrift:v31 orDuplication:v29 forDiagnosticTimestamp:v27])
  {
    [(NEKNotificationCenter *)self->_notificationCenter requestDiagnosticNotificationForDeviceID:v14];
  }

  else
  {
    v40 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v44) = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Skipping notification, notifyForDriftOrDuplicates: [%{BOOL}d]", buf, 8u);
    }
  }

LABEL_18:
}

- (BOOL)_shouldNotifyForDrift:(id)a3 orDuplication:(id)a4 forDiagnosticTimestamp:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[NEKEnvironment instance];
  v11 = [v10 tinyStore];

  LOBYTE(v10) = +[FeatureFlags sendDiagnosticNotificaton];
  v12 = [(NEKAnalyticsDriver *)self _forceDiagnosticForTesting];
  v13 = v12;
  if ((v10 & 1) == 0 && (v12 & 1) == 0)
  {
    v14 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Ignoring diagnostic notification, feature flag disabled", &v30, 2u);
    }

LABEL_17:
    LOBYTE(v24) = 0;
    goto LABEL_18;
  }

  [v11 getDoubleValueForKey:@"diagnosticNotificationIgnoreUntil" default:*&qword_1000D1130];
  if (!((v15 <= a5) | v13 & 1))
  {
    v27 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    v28 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v30 = 138412290;
      *v31 = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Ignoring diagnostic notification until: %@", &v30, 0xCu);
    }

    goto LABEL_17;
  }

  [v11 getDoubleValueForKey:@"diagnosticLastChecked" default:*&qword_1000D1130];
  v17 = v16;
  v18 = *&qword_1000D1130;
  [v11 setDoubleValue:@"diagnosticLastChecked" forKey:a5];
  [v8 firstFoundTimestamp];
  v20 = v19;
  [v9 firstFoundTimestamp];
  v22 = v21;
  v23 = fmax(v20, v21) > v17;
  v24 = v17 != v18 && v23;
  v25 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v30 = 67109888;
    *v31 = v24;
    *&v31[4] = 1024;
    *&v31[6] = v17 == v18;
    v32 = 1024;
    v33 = v20 > v17;
    v34 = 1024;
    v35 = v22 > v17;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "New drift or duplicates found: [%{BOOL}d] firstTimeDiagnosticsRun: [%{BOOL}d] newDrift: [%{BOOL}d] newDuplicates: [%{BOOL}d]", &v30, 0x1Au);
  }

  if (v13)
  {
    v26 = *(qword_1000D18A8 + 8);
    LOBYTE(v24) = 1;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Forcing diagnostic notification", &v30, 2u);
    }
  }

LABEL_18:

  return v24;
}

@end