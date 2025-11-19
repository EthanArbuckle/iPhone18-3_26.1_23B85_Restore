@interface APDailyReportActivity
- (APXPCActivityCriteria)criteria;
- (BOOL)_isEventDatabaseStorageEnabled;
- (BOOL)runActivity:(id)a3;
- (double)_timeIntervalToTomorrow;
- (id)_expirationOfEventDatabaseDataTimestamp;
- (int)_deliveryLeeway;
- (void)_deleteDataForUnusedAccounts;
- (void)_deleteExpiredDataFromActionStore;
- (void)terminateActivity:(id)a3;
@end

@implementation APDailyReportActivity

- (APXPCActivityCriteria)criteria
{
  v3 = objc_alloc_init(APXPCActivityCriteria);
  [v3 setRequiresNetworkConnectivity:0];
  [v3 setIsRepeating:0];
  [v3 setGracePeriod:3600];
  [v3 setIsCPUIntensive:0];
  [v3 setPriority:XPC_ACTIVITY_PRIORITY_MAINTENANCE];
  [v3 setRequireSleep:1];
  [v3 setDelay:{-[APDailyReportActivity _delay](self, "_delay")}];
  [v3 setRequireClassCData:1];

  return v3;
}

- (BOOL)runActivity:(id)a3
{
  v4 = a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Daily Report Activity Started.", v17, 2u);
  }

  [(APDailyReportActivity *)self _deleteExpiredDataFromActionStore];
  v6 = objc_alloc_init(APReportHelper);
  [(APDailyReportActivity *)self setReportHelper:v6];

  v7 = [(APDailyReportActivity *)self reportHelper];
  [v7 preparePastDueReports];

  v8 = [(APDailyReportActivity *)self reportHelper];
  [v8 prepareReports];

  [(APDailyReportActivity *)self setReportHelper:0];
  [(APDailyReportActivity *)self _deleteDataForUnusedAccounts];
  v9 = +[APDatabaseManager mainDatabase];
  [APDevicePipelinesHousekeepingAdapter removeObsoleteAttributionDataFrom:v9];

  v10 = objc_alloc_init(APSigningObservabilityCorrespondent);
  [(APSigningObservabilityCorrespondent *)v10 submitReport];
  v11 = [APEventDatabaseTelemetryDelivery alloc];
  v12 = +[APDatabaseManager mainDatabase];
  v13 = [(APEventDatabaseTelemetryDelivery *)v11 initWithManager:v12 telemetryClass:objc_opt_class()];

  [(APEventDatabaseTelemetryDelivery *)v13 sendEventDatabaseCoreAnalytics];
  v14 = +[APDatabaseManager mainDatabase];
  [v14 incrementalVacuumIfNeeded];

  v15 = +[APDatabaseManager mainDatabase];
  [v15 optimize];

  [v4 schedule];
  return 0;
}

- (void)terminateActivity:(id)a3
{
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Daily Report Activity Terminated.", v6, 2u);
  }

  v5 = [(APDailyReportActivity *)self reportHelper];
  [v5 cancelReportGeneration];
}

- (int)_deliveryLeeway
{
  v2 = [APConfigurationMediator configurationForClass:objc_opt_class() usingCache:0];
  v3 = [v2 deliveryLeeway];

  if (v3)
  {
    v4 = [v2 deliveryLeeway];
    v5 = [v4 intValue];
  }

  else
  {
    v5 = 10800;
  }

  return v5;
}

- (double)_timeIntervalToTomorrow
{
  v2 = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
  v3 = +[NSTimeZone localTimeZone];
  [v2 setTimeZone:v3];
  v4 = objc_alloc_init(NSDateComponents);
  [v4 setHour:0];
  [v4 setMinute:0];
  [v4 setSecond:0];
  [v4 setTimeZone:v3];
  v5 = +[NSDate date];
  v6 = [v2 nextDateAfterDate:v5 matchingComponents:v4 options:2];
  [v6 timeIntervalSinceDate:v5];
  v8 = v7;

  return v8;
}

- (void)_deleteDataForUnusedAccounts
{
  v2 = +[APDatabaseManager mainDatabase];
  v9 = [v2 getTableForClass:objc_opt_class()];

  v3 = [v9 lastDeliveryReportWithType:@"ExperimentationAggregates"];
  if (v3)
  {
    v4 = +[APDatabaseManager mainDatabase];
    v5 = [v4 getTableForClass:objc_opt_class()];

    v6 = +[APIDAccountProvider privateUserAccount];
    v7 = [v6 accountToken];
    v8 = [v3 reportDate];
    [v5 deleteAdInstancesWithAccountTokenDifferentThan:v7 andDataOlderThan:v8];
  }
}

- (void)_deleteExpiredDataFromActionStore
{
  if ([(APDailyReportActivity *)self _isEventDatabaseStorageEnabled])
  {
    v3 = +[APDatabaseManager mainDatabase];
    v4 = [v3 getTableForClass:objc_opt_class()];

    if (v4)
    {
      v5 = [(APDailyReportActivity *)self _expirationOfEventDatabaseDataTimestamp];
      v6 = [v4 deleteEventsOlderThan:v5];

      if (v6)
      {
        v7 = +[APDatabaseManager mainDatabase];
        v8 = [v7 getTableForClass:objc_opt_class()];

        if ([v8 deleteAdInstancesWithNoEvents])
        {
          v9 = APLogForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Event Database expiration of data completed successfully.", buf, 2u);
          }

          goto LABEL_14;
        }
      }

      v8 = APLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = 0;
        v10 = "Event Database expiration of data completed with error.";
        v11 = &v12;
        goto LABEL_13;
      }
    }

    else
    {
      v8 = APLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = 0;
        v10 = "Daily Activity did not get Event Table instance, drop events failed.";
        v11 = &v14;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v10, v11, 2u);
      }
    }

LABEL_14:
  }
}

- (BOOL)_isEventDatabaseStorageEnabled
{
  v2 = objc_alloc_init(APLegacyFeatureFlags);
  if ([v2 actionStoreEnabled])
  {
    v3 = [APConfigurationMediator configurationForClass:objc_opt_class()];
    v4 = [v3 isEventDatabaseStorageEnabled];

    if (v4)
    {
      v5 = [v3 isEventDatabaseStorageEnabled];
      v6 = [v5 BOOLValue];
    }

    else
    {
      v6 = 1;
    }

    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = @"DISABLED";
      if (v6)
      {
        v8 = @"ENABLED";
      }

      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[Event Database] Event storage is: %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    v3 = APLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Event Database] Event storage is Disabled by user defaults.", &v10, 2u);
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_expirationOfEventDatabaseDataTimestamp
{
  v2 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  v3 = [v2 expirationOfData2024E];

  if (v3)
  {
    v4 = [v2 expirationOfData2024E];
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 90;
  }

  v6 = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
  v7 = +[NSDate date];
  v8 = [v6 startOfDayForDate:v7];
  v9 = [v6 dateByAddingUnit:16 value:-v5 toDate:v8 options:0];

  return v9;
}

@end