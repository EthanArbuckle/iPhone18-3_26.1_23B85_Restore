@interface OSChargingPredictorSignalsOnly
- (BOOL)areEntryConditionsMetWithLog:(id)log;
- (OSChargingPredictorSignalsOnly)initWithDefaultsDomain:(id)domain withContextStore:(id)store withTrialManager:(id)manager;
- (id)chargingDecisionWithLog:(id)log;
@end

@implementation OSChargingPredictorSignalsOnly

- (OSChargingPredictorSignalsOnly)initWithDefaultsDomain:(id)domain withContextStore:(id)store withTrialManager:(id)manager
{
  domainCopy = domain;
  storeCopy = store;
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = OSChargingPredictorSignalsOnly;
  v11 = [(OSChargingPredictorSignalsOnly *)&v21 init];
  defaultsDomain = v11->_defaultsDomain;
  v11->_defaultsDomain = domainCopy;
  v13 = domainCopy;

  context = v11->_context;
  v11->_context = storeCopy;
  v15 = storeCopy;

  trialManager = v11->_trialManager;
  v11->_trialManager = managerCopy;
  v17 = managerCopy;

  v18 = +[OSChargingSignals sharedInstance];
  chargingSignals = v11->_chargingSignals;
  v11->_chargingSignals = v18;

  return v11;
}

- (id)chargingDecisionWithLog:(id)log
{
  logCopy = log;
  v5 = objc_alloc_init(_OSChargingPredictorOutput);
  v6 = [(OSChargingPredictorSignalsOnly *)self areEntryConditionsMetWithLog:logCopy];
  v7 = os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT);
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

  _os_log_impl(&_mh_execute_header, logCopy, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
LABEL_7:
  [v5 setConfidence:{v8, v12}];
  [v5 setMeetsSystemConfidenceThreshold:v6];
  [v5 setChargingDuration:0.0];

  return v5;
}

- (BOOL)areEntryConditionsMetWithLog:(id)log
{
  logCopy = log;
  chargingSignals = [(OSChargingPredictorSignalsOnly *)self chargingSignals];
  walletMonitor = [chargingSignals walletMonitor];
  relevantEventDeadline = [walletMonitor relevantEventDeadline];

  v8 = +[NSDate distantFuture];
  LOBYTE(walletMonitor) = [relevantEventDeadline isEqualToDate:v8];

  if (walletMonitor)
  {
    chargingSignals2 = [(OSChargingPredictorSignalsOnly *)self chargingSignals];
    calendarMonitor = [chargingSignals2 calendarMonitor];
    relevantEventDeadline2 = [calendarMonitor relevantEventDeadline];

    v12 = +[NSDate distantFuture];
    LOBYTE(calendarMonitor) = [relevantEventDeadline2 isEqualToDate:v12];

    if (calendarMonitor)
    {
      chargingSignals3 = [(OSChargingPredictorSignalsOnly *)self chargingSignals];
      locationMonitor = [chargingSignals3 locationMonitor];
      inTypicalLocation = [locationMonitor inTypicalLocation];

      if (inTypicalLocation)
      {
        v16 = 1;
LABEL_13:

        goto LABEL_14;
      }

      if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 0;
        v17 = "Not in typical location. Returning NO";
        v18 = &v20;
        goto LABEL_11;
      }
    }

    else if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v17 = "Found calendar event. Returning NO";
      v18 = &v21;
LABEL_11:
      _os_log_impl(&_mh_execute_header, logCopy, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
    }

    v16 = 0;
    goto LABEL_13;
  }

  v16 = 0;
  if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, logCopy, OS_LOG_TYPE_DEFAULT, "Found wallet event. Returning NO", buf, 2u);
    v16 = 0;
  }

LABEL_14:

  return v16;
}

@end