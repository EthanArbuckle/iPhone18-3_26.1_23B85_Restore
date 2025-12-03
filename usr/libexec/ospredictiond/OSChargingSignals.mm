@interface OSChargingSignals
+ (id)sharedInstance;
- (OSChargingSignals)init;
- (id)determineNextEvent;
@end

@implementation OSChargingSignals

+ (id)sharedInstance
{
  if (qword_1000B6A58 != -1)
  {
    sub_10005CE04();
  }

  v3 = qword_1000B6A60;

  return v3;
}

- (OSChargingSignals)init
{
  v12.receiver = self;
  v12.super_class = OSChargingSignals;
  v2 = [(OSChargingSignals *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(OSIWalletMonitor);
    walletMonitor = v2->_walletMonitor;
    v2->_walletMonitor = v3;

    v5 = objc_alloc_init(OSICalendarMonitor);
    calendarMonitor = v2->_calendarMonitor;
    v2->_calendarMonitor = v5;

    v7 = objc_alloc_init(OSILocationMonitor);
    locationMonitor = v2->_locationMonitor;
    v2->_locationMonitor = v7;

    v9 = os_log_create("com.apple.osintelligence", "chargingsignals");
    log = v2->_log;
    v2->_log = v9;
  }

  return v2;
}

- (id)determineNextEvent
{
  walletMonitor = [(OSChargingSignals *)self walletMonitor];
  relevantEventDeadline = [walletMonitor relevantEventDeadline];

  calendarMonitor = [(OSChargingSignals *)self calendarMonitor];
  relevantEventDeadline2 = [calendarMonitor relevantEventDeadline];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = relevantEventDeadline;
    v17 = 2112;
    v18 = relevantEventDeadline2;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "walletEvent %@, calendarEvent %@", &v15, 0x16u);
  }

  v8 = +[NSDate distantFuture];
  if ([relevantEventDeadline isEqualToDate:v8])
  {
    v9 = +[NSDate distantFuture];
    v10 = [relevantEventDeadline2 isEqualToDate:v9];

    if (v10)
    {
      v11 = +[NSDate distantFuture];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = relevantEventDeadline;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found flight information at %@", &v15, 0xCu);
  }

  v11 = +[NSDate distantPast];
LABEL_10:
  v13 = v11;

  return v13;
}

@end