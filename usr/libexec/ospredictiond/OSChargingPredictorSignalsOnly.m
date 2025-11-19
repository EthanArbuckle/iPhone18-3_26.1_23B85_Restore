@interface OSChargingPredictorSignalsOnly
- (BOOL)areEntryConditionsMetWithLog:(id)a3;
- (OSChargingPredictorSignalsOnly)initWithDefaultsDomain:(id)a3 withContextStore:(id)a4 withTrialManager:(id)a5;
- (id)chargingDecisionWithLog:(id)a3;
@end

@implementation OSChargingPredictorSignalsOnly

- (OSChargingPredictorSignalsOnly)initWithDefaultsDomain:(id)a3 withContextStore:(id)a4 withTrialManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = OSChargingPredictorSignalsOnly;
  v11 = [(OSChargingPredictorSignalsOnly *)&v21 init];
  defaultsDomain = v11->_defaultsDomain;
  v11->_defaultsDomain = v8;
  v13 = v8;

  context = v11->_context;
  v11->_context = v9;
  v15 = v9;

  trialManager = v11->_trialManager;
  v11->_trialManager = v10;
  v17 = v10;

  v18 = +[OSChargingSignals sharedInstance];
  chargingSignals = v11->_chargingSignals;
  v11->_chargingSignals = v18;

  return v11;
}

- (id)chargingDecisionWithLog:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_OSChargingPredictorOutput);
  v6 = [(OSChargingPredictorSignalsOnly *)self areEntryConditionsMetWithLog:v4];
  v7 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v8 = 1.0;
    if (!v7)
    {
      goto LABEL_7;
    }

    v13 = 0;
    v9 = "Entry conditions are met";
    v10 = &v13;
  }

  else
  {
    v8 = 0.0;
    if (!v7)
    {
      goto LABEL_7;
    }

    LOWORD(v12) = 0;
    v9 = "Entry conditions are not met";
    v10 = &v12;
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
LABEL_7:
  [v5 setConfidence:{v8, v12}];
  [v5 setMeetsSystemConfidenceThreshold:v6];
  [v5 setChargingDuration:0.0];

  return v5;
}

- (BOOL)areEntryConditionsMetWithLog:(id)a3
{
  v4 = a3;
  v5 = [(OSChargingPredictorSignalsOnly *)self chargingSignals];
  v6 = [v5 walletMonitor];
  v7 = [v6 relevantEventDeadline];

  v8 = +[NSDate distantFuture];
  LOBYTE(v6) = [v7 isEqualToDate:v8];

  if (v6)
  {
    v9 = [(OSChargingPredictorSignalsOnly *)self chargingSignals];
    v10 = [v9 calendarMonitor];
    v11 = [v10 relevantEventDeadline];

    v12 = +[NSDate distantFuture];
    LOBYTE(v10) = [v11 isEqualToDate:v12];

    if (v10)
    {
      v13 = [(OSChargingPredictorSignalsOnly *)self chargingSignals];
      v14 = [v13 locationMonitor];
      v15 = [v14 inTypicalLocation];

      if (v15)
      {
        v16 = 1;
LABEL_13:

        goto LABEL_14;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 0;
        v17 = "Not in typical location. Returning NO";
        v18 = &v20;
        goto LABEL_11;
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v17 = "Found calendar event. Returning NO";
      v18 = &v21;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
    }

    v16 = 0;
    goto LABEL_13;
  }

  v16 = 0;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found wallet event. Returning NO", buf, 2u);
    v16 = 0;
  }

LABEL_14:

  return v16;
}

@end