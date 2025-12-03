@interface APReceivedMetricProcessor
- (APReceivedMetricProcessor)initWithDatabase:(id)database;
- (void)processReceivedMetric:(id)metric;
@end

@implementation APReceivedMetricProcessor

- (APReceivedMetricProcessor)initWithDatabase:(id)database
{
  databaseCopy = database;
  v11.receiver = self;
  v11.super_class = APReceivedMetricProcessor;
  v6 = [(APReceivedMetricProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, database);
    v8 = objc_alloc_init(APExperimentationReportTelemetryDelivery);
    telemetryDelivery = v7->_telemetryDelivery;
    v7->_telemetryDelivery = v8;
  }

  return v7;
}

- (void)processReceivedMetric:(id)metric
{
  metricCopy = metric;
  database = [(APReceivedMetricProcessor *)self database];
  if (database)
  {
    internalProperties = [metricCopy internalProperties];
    v7 = internalProperties;
    if (internalProperties)
    {
      v8 = [internalProperties objectForKey:kAPTriggersIdentifier];
      v9 = v8;
      if (v8 && [v8 count])
      {
        v10 = [database getTableForClass:objc_opt_class()];
        v11 = [database getTableForClass:objc_opt_class()];
        v12 = v11;
        v41 = v10;
        if (v10 && v11)
        {
          v42 = v11;
          v39 = v7;
          v40 = database;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v38 = v9;
          obj = v9;
          v13 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
          v14 = v10;
          if (v13)
          {
            v15 = v13;
            v45 = *v47;
            do
            {
              v16 = 0;
              v43 = v15;
              do
              {
                if (*v47 != v45)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(*(&v46 + 1) + 8 * v16);
                v18 = [v17 objectForKey:@"experimentId"];
                v19 = [v17 objectForKey:@"treatmentId"];
                v20 = v19;
                if (v18)
                {
                  v21 = v19 == 0;
                }

                else
                {
                  v21 = 1;
                }

                if (v21)
                {
                  telemetryDelivery = [(APReceivedMetricProcessor *)self telemetryDelivery];
                  [telemetryDelivery logExperimentationErrorWithErrorType:3 description:0];
                }

                else
                {
                  v23 = [v14 getOrInsertTriggerWithExperimentId:v18 treatmentId:v19];
                  telemetryDelivery = v23;
                  if (v23)
                  {
                    secondaryHandle = [metricCopy secondaryHandle];
                    if (!secondaryHandle)
                    {
                      v25 = APLogForCategory();
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Secondary Handle is nil, falling back to handle for impressionId.", buf, 2u);
                      }

                      secondaryHandle = [metricCopy handle];
                    }

                    rowid = [telemetryDelivery rowid];
                    v27 = [v42 insertSignalTrackForTriggerRowId:rowid impressionId:secondaryHandle];

                    if (!v27)
                    {
                      telemetryDelivery2 = [(APReceivedMetricProcessor *)self telemetryDelivery];
                      [telemetryDelivery2 logExperimentationErrorWithErrorType:5 description:0];
                    }

                    v29 = APLogForCategory();
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                    {
                      v30 = objc_opt_class();
                      *buf = 138478595;
                      v51 = v30;
                      v52 = 2114;
                      v53 = v18;
                      v54 = 2114;
                      v55 = v20;
                      v56 = 2114;
                      v57 = secondaryHandle;
                      selfCopy = self;
                      v32 = metricCopy;
                      v33 = v30;
                      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "[%{private}@] Trigger insert completed successfully, ExperimentId: %{public}@, TreatmentId: %{public}@, ImpressionId: %{public}@.", buf, 0x2Au);

                      metricCopy = v32;
                      self = selfCopy;
                      v14 = v41;
                    }
                  }

                  else
                  {
                    secondaryHandle = [(APReceivedMetricProcessor *)self telemetryDelivery];
                    [secondaryHandle logExperimentationErrorWithErrorType:4 description:0];
                  }

                  v15 = v43;
                }

                v16 = v16 + 1;
              }

              while (v15 != v16);
              v15 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
            }

            while (v15);
          }

          v7 = v39;
          database = v40;
          v9 = v38;
          v12 = v42;
        }

        else
        {
          telemetryDelivery3 = [(APReceivedMetricProcessor *)self telemetryDelivery];
          [telemetryDelivery3 logExperimentationErrorWithErrorType:2 description:@"Received metric processor"];
        }
      }

      else
      {
        v35 = APLogForCategory();
        v41 = v35;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v51 = objc_opt_class();
          v36 = v51;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "[%{private}@] Triggers not found on Received Event.", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v51 = objc_opt_class();
      v34 = v51;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{private}@] Error: Database is nil.", buf, 0xCu);
    }
  }
}

@end