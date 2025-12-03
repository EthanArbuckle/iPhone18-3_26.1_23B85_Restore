@interface APReportHelper
- (BOOL)_isExperimentationReportEnabled;
- (id)_experimentationReportDate;
- (id)_integrityReportDatasources;
- (id)_reportDatasources;
- (void)_cleanOldData;
- (void)_logReportDelivery:(id)delivery;
- (void)cancelReportGeneration;
- (void)preparePastDueReports;
- (void)prepareReports;
- (void)verifyPastDueReports:(id)reports;
@end

@implementation APReportHelper

- (void)prepareReports
{
  selfCopy = self;
  _reportDatasources = [(APReportHelper *)self _reportDatasources];
  v4 = +[APDatabaseManager mainDatabase];
  v5 = [v4 getTableForClass:objc_opt_class()];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = _reportDatasources;
  v32 = [v6 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v32)
  {
    v8 = *v34;
    v9 = APDBAdSignalTrack;
    v10 = &_sSo13os_log_type_ta0A0E5debugABvgZ_ptr;
    *&v7 = 141558530;
    v29 = v7;
    v30 = v6;
    v31 = v5;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v33 + 1) + 8 * v11);
        v13 = objc_alloc(&v9[11]);
        date = [v10[425] date];
        v15 = [v13 initWithReportDatasource:v12 deliveredReport:v5 currentDate:date];

        if ([v15 validateCurrent])
        {
          v16 = [[APReportDelivery alloc] initWithDatasource:v12];
          [(APReportDelivery *)v16 prepareDelivery];
          [(APReportHelper *)selfCopy _logReportDelivery:v12];
        }

        else
        {
          v16 = APLogForCategory();
          if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_INFO))
          {
            [v12 reportType];
            v18 = v17 = selfCopy;
            reportDate = [v12 reportDate];
            [reportDate reportDayString];
            v20 = v10;
            v21 = v9;
            v23 = v22 = v8;
            *buf = v29;
            v38 = 1752392040;
            v39 = 2112;
            v40 = v18;
            v41 = 2114;
            v42 = v23;
            _os_log_impl(&_mh_execute_header, &v16->super, OS_LOG_TYPE_INFO, "Reports: Skipping report %{mask.hash}@ for day %{public}@, report is up to date.", buf, 0x20u);

            v8 = v22;
            v9 = v21;
            v10 = v20;

            selfCopy = v17;
            v6 = v30;
            v5 = v31;
          }
        }

        v11 = v11 + 1;
      }

      while (v32 != v11);
      v32 = [v6 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v32);
  }

  if ([(APReportHelper *)selfCopy _isExperimentationReportEnabled])
  {
    v24 = [APExperimentationReportBuilder alloc];
    v25 = +[APDatabaseManager mainDatabase];
    v26 = [(APExperimentationReportBuilder *)v24 initWithDatabase:v25];
    [(APReportHelper *)selfCopy setExperimentationReportBuilder:v26];

    experimentationReportBuilder = [(APReportHelper *)selfCopy experimentationReportBuilder];
    _experimentationReportDate = [(APReportHelper *)selfCopy _experimentationReportDate];
    [experimentationReportBuilder prepareReportsWithDate:_experimentationReportDate];
  }

  [(APReportHelper *)selfCopy _cleanOldData];
}

- (void)preparePastDueReports
{
  _reportDatasources = [(APReportHelper *)self _reportDatasources];
  v4 = +[APDatabaseManager mainDatabase];
  v19 = [v4 getTableForClass:objc_opt_class()];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = _reportDatasources;
  v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v18 = *v27;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        v7 = [APReportValidator alloc];
        v8 = +[NSDate date];
        v9 = [(APReportValidator *)v7 initWithReportDatasource:v6 deliveredReport:v19 currentDate:v8];

        v21 = v9;
        pastDueReportDates = [(APReportValidator *)v9 pastDueReportDates];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = [pastDueReportDates countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            v14 = 0;
            do
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(pastDueReportDates);
              }

              v15 = [[APReportDate alloc] initWithDate:*(*(&v22 + 1) + 8 * v14)];
              [v6 setReportDate:v15];

              v16 = [[APReportDelivery alloc] initWithDatasource:v6];
              [(APReportDelivery *)v16 prepareDelivery];
              [(APReportHelper *)self _logReportDelivery:v6];

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [pastDueReportDates countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }

        v5 = v5 + 1;
      }

      while (v5 != v20);
      v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }
}

- (void)verifyPastDueReports:(id)reports
{
  reportsCopy = reports;
  v5 = os_transaction_create();
  _reportDatasources = [(APReportHelper *)self _reportDatasources];
  v7 = +[APDatabaseManager mainDatabase];
  v8 = [v7 getTableForClass:objc_opt_class()];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001FD9C0;
  v11[3] = &unk_100478A88;
  v12 = v5;
  v13 = reportsCopy;
  v9 = v5;
  v10 = reportsCopy;
  [APReportValidator verifyPastDueReports:_reportDatasources deliveredReport:v8 completion:v11];
}

- (void)cancelReportGeneration
{
  experimentationReportBuilder = [(APReportHelper *)self experimentationReportBuilder];

  if (experimentationReportBuilder)
  {
    experimentationReportBuilder2 = [(APReportHelper *)self experimentationReportBuilder];
    [experimentationReportBuilder2 setCanceled:1];
  }
}

- (BOOL)_isExperimentationReportEnabled
{
  v2 = objc_alloc_init(APLegacyFeatureFlags);
  devicePipelinesEnabled = [v2 devicePipelinesEnabled];
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = @"DISABLED";
    if (devicePipelinesEnabled)
    {
      v5 = @"ENABLED";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Experimentation report is: %{public}@", &v7, 0xCu);
  }

  return devicePipelinesEnabled;
}

- (id)_integrityReportDatasources
{
  v2 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  reportEnabled = [v2 reportEnabled];

  if (reportEnabled && ([v2 reportEnabled], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLValue"), v4, v5))
  {
    v6 = [APConfigurationMediator configurationForClass:objc_opt_class()];
    v7 = +[APDatabaseManager mainDatabase];
    v8 = [v7 getTableForClass:objc_opt_class()];

    reportingPurposes = [v6 reportingPurposes];

    if (reportingPurposes)
    {
      v10 = +[NSMutableArray array];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = [v6 reportingPurposes];
      v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(obj);
            }

            integerValue = [*(*(&v22 + 1) + 8 * i) integerValue];
            v16 = [APIntegrityDatasource alloc];
            v17 = +[NSDate date];
            v18 = [(APBaseReport *)v16 initWithReportDate:v17 purpose:integerValue reportEventCount:v8];

            [v10 addObject:v18];
          }

          v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }

      v19 = [NSArray arrayWithArray:v10];
    }

    else
    {
      v19 = &__NSArray0__struct;
    }
  }

  else
  {
    v19 = &__NSArray0__struct;
  }

  return v19;
}

- (id)_reportDatasources
{
  v3 = objc_alloc_init(NSMutableArray);
  _integrityReportDatasources = [(APReportHelper *)self _integrityReportDatasources];
  [v3 addObjectsFromArray:_integrityReportDatasources];

  v5 = [NSArray arrayWithArray:v3];

  return v5;
}

- (void)_cleanOldData
{
  v3 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  removeDataAfterDays = [v3 removeDataAfterDays];

  if (removeDataAfterDays)
  {
    removeDataAfterDays2 = [v3 removeDataAfterDays];
    removeDataAfterDays = [removeDataAfterDays2 unsignedIntegerValue];
  }

  if (removeDataAfterDays >= 0x16D)
  {
    v6 = 365;
  }

  else
  {
    v6 = removeDataAfterDays;
  }

  v7 = [APReportDate alloc];
  v8 = +[NSDate date];
  v9 = [(APReportDate *)v7 initWithDate:v8];

  v10 = [(APReportDate *)v9 currentDateMinusDays:v6];
  if (v10)
  {
    v11 = +[APDatabaseManager mainDatabase];
    v12 = [v11 getTableForClass:objc_opt_class()];

    [v12 deleteCountsOlderThan:v10];
    if ([(APReportHelper *)self _isExperimentationReportEnabled])
    {
      v13 = [APExperimentationDataRemoval alloc];
      v14 = +[APDatabaseManager mainDatabase];
      v15 = [(APExperimentationDataRemoval *)v13 initWithDatabase:v14];

      _experimentationReportDate = [(APReportHelper *)self _experimentationReportDate];
      [(APExperimentationDataRemoval *)v15 removeExperimentationDataBefore:_experimentationReportDate];
    }

    else
    {
      v18 = +[APDatabaseManager mainDatabase];
      v15 = [v18 getTableForClass:objc_opt_class()];

      [(APExperimentationDataRemoval *)v15 deleteReportsOlderThan:v10];
    }
  }

  else
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Reports: Error creating remove date.", v19, 2u);
    }
  }
}

- (void)_logReportDelivery:(id)delivery
{
  deliveryCopy = delivery;
  v4 = +[APDatabaseManager mainDatabase];
  v5 = [v4 getTableForClass:objc_opt_class()];

  reportType = [deliveryCopy reportType];
  reportDate = [deliveryCopy reportDate];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [reportDate reportEndDay]);
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_opt_class() reportFrequency]);
  v10 = +[NSDate date];
  v11 = [v5 storeDeliveryReportType:reportType dayOfYear:v8 frequency:v9 reportDate:v10];

  v12 = APLogForCategory();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      reportType2 = [deliveryCopy reportType];
      reportDate2 = [deliveryCopy reportDate];
      reportDayString = [reportDate2 reportDayString];
      v20 = 141558530;
      v21 = 1752392040;
      v22 = 2112;
      v23 = reportType2;
      v24 = 2114;
      v25 = reportDayString;
      v17 = "Reports: Report %{mask.hash}@ for day %{public}@ saved to DB.";
      v18 = v13;
      v19 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, &v20, 0x20u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    reportType2 = [deliveryCopy reportType];
    reportDate2 = [deliveryCopy reportDate];
    reportDayString = [reportDate2 reportDayString];
    v20 = 141558530;
    v21 = 1752392040;
    v22 = 2112;
    v23 = reportType2;
    v24 = 2114;
    v25 = reportDayString;
    v17 = "Reports: Error saving report %{mask.hash}@ for day %{public}@ to DB.";
    v18 = v13;
    v19 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

- (id)_experimentationReportDate
{
  v2 = +[NSDate date];
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v3 = [NSUserDefaults alloc];
    v4 = [v3 initWithSuiteName:APDefaultsBundleID];
    if ([v4 BOOLForKey:@"enableExperimentationReportTimestamp"])
    {
      v5 = [v4 objectForKey:@"experimentationReportTimestampOverride"];
      if (v5)
      {
        v6 = APLogForCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = +[NSISO8601DateFormatter apUTCSharedFormatter];
          v8 = [v7 stringFromDate:v5];
          v11 = 138543362;
          v12 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Overriding Experimentation Report timestamp %{public}@.", &v11, 0xCu);
        }

        v9 = v5;
        v2 = v9;
      }
    }
  }

  return v2;
}

@end