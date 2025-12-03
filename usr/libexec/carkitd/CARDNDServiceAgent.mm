@interface CARDNDServiceAgent
+ (id)_DNDServiceInterface;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CARDNDServiceAgent)initWithVehicleStore:(id)store;
- (void)_triggerModeChanged:(unint64_t)changed mechanism:(id)mechanism;
- (void)allowedAutoReplyAudienceWithReply:(id)reply;
- (void)autoReplyMessageWithReply:(id)reply;
- (void)dealloc;
- (void)disableDNDUntilEndOfDriveWithContext:(id)context reply:(id)reply;
- (void)fetchDNDTriggerModeWithReply:(id)reply;
- (void)isCarPlayAutomaticDNDActiveWithReply:(id)reply;
- (void)resetAutomaticDNDPreferencesWithReply:(id)reply;
- (void)setAllowedAutoReplyAudience:(unint64_t)audience reply:(id)reply;
- (void)setAutoReplyMessage:(id)message reply:(id)reply;
- (void)setCarPlayAutomaticDNDActive:(BOOL)active withReply:(id)reply;
- (void)setDNDTriggerMode:(unint64_t)mode withReply:(id)reply;
- (void)shouldDisplayExitConfirmationWithReply:(id)reply;
@end

@implementation CARDNDServiceAgent

- (CARDNDServiceAgent)initWithVehicleStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = CARDNDServiceAgent;
  v6 = [(CARDNDServiceAgent *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vehicleStore, store);
    v8 = objc_alloc_init(CARAutomaticDNDStatus);
    status = v7->_status;
    v7->_status = v8;

    [(CARAutomaticDNDStatus *)v7->_status _detachObservers];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, sub_1000501E4, CARAutomaticDNDCarPlayActivationChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v7;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = CARDNDServiceAgent;
  [(CARDNDServiceAgent *)&v4 dealloc];
}

+ (id)_DNDServiceInterface
{
  if (qword_100107F98 != -1)
  {
    sub_100087BF4();
  }

  v3 = qword_100107F90;

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.carkit.app"];
  if ([v6 BOOLValue])
  {

LABEL_4:
    v9 = CarDNDWDLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = [connectionCopy serviceName];
      v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [connectionCopy processIdentifier]);
      v16 = 138412802;
      v17 = connectionCopy;
      v18 = 2112;
      v19 = serviceName;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Receiving connection %@ to service %@ from %@", &v16, 0x20u);
    }

    _DNDServiceInterface = [objc_opt_class() _DNDServiceInterface];
    [connectionCopy setExportedInterface:_DNDServiceInterface];

    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
    v13 = 1;
    goto LABEL_10;
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.private.carkit.dnd"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_4;
  }

  v14 = CarDNDWDLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_100087C08(connectionCopy, v14);
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (void)isCarPlayAutomaticDNDActiveWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[CARDNDManager sharedManager];
  (*(reply + 2))(replyCopy, [v5 isDNDValid]);
}

- (void)setCarPlayAutomaticDNDActive:(BOOL)active withReply:(id)reply
{
  activeCopy = active;
  replyCopy = reply;
  v6 = +[CARDNDManager sharedManager];
  objc_initWeak(&location, v6);

  if (activeCopy)
  {
    v7 = CarDNDWDLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Engaging Driving from external activation.";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
    }
  }

  else
  {
    v7 = CarDNDWDLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Disabling Driving from external activation.";
      goto LABEL_6;
    }
  }

  v9 = objc_loadWeakRetained(&location);
  cARDNDQueue = [v9 CARDNDQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050744;
  block[3] = &unk_1000DF220;
  v15 = activeCopy;
  objc_copyWeak(&v14, &location);
  v13 = replyCopy;
  v11 = replyCopy;
  dispatch_async(cARDNDQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)resetAutomaticDNDPreferencesWithReply:(id)reply
{
  replyCopy = reply;
  status = [(CARDNDServiceAgent *)self status];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100050A64;
  v6[3] = &unk_1000DD480;
  v6[4] = self;
  [status _performCARPreferencesBlock:v6 forReading:0];

  if (replyCopy)
  {
    replyCopy[2](replyCopy, 1, 0);
  }
}

- (void)shouldDisplayExitConfirmationWithReply:(id)reply
{
  replyCopy = reply;
  v4 = +[CARDNDManager sharedManager];
  if ([v4 isDNDValid])
  {
    v5 = +[CARDNDManager sharedManager];
    v6 = [v5 isCurrentlyInGeofencedRegion] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = CarDNDWDLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Should Display Exit Confirmation: %d", v8, 8u);
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v6, 0);
  }
}

- (void)fetchDNDTriggerModeWithReply:(id)reply
{
  if (reply)
  {
    replyCopy = reply;
    status = [(CARDNDServiceAgent *)self status];
    (*(reply + 2))(replyCopy, [status automaticDNDTriggeringMethod], 0);
  }
}

- (void)_triggerModeChanged:(unint64_t)changed mechanism:(id)mechanism
{
  mechanismCopy = mechanism;
  status = [(CARDNDServiceAgent *)self status];
  automaticDNDTriggeringMethod = [status automaticDNDTriggeringMethod];

  status2 = [(CARDNDServiceAgent *)self status];
  [status2 mostRecentTriggerMethodChange];
  v11 = v10;

  status3 = [(CARDNDServiceAgent *)self status];
  if ([status3 hasAdjustedTriggerMethod])
  {
    if (automaticDNDTriggeringMethod > 2)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = off_1000DF2A8[automaticDNDTriggeringMethod];
    }
  }

  else
  {
    v13 = @"New";
  }

  status4 = [(CARDNDServiceAgent *)self status];
  [status4 setHasAdjustedTriggerMethod:1];

  v17 = +[CARAnalytics sharedInstance];
  if (changed > 2)
  {
    v15 = @"Unknown";
  }

  else
  {
    v15 = off_1000DF2A8[changed];
  }

  status5 = [(CARDNDServiceAgent *)self status];
  [v17 userChangedFromTriggerMethod:v13 toMethod:v15 withMechanism:mechanismCopy fromPreviousInterval:objc_msgSend(status5 activateWithCarPlay:{"shouldActivateWithCarPlay"), v11}];
}

- (void)setDNDTriggerMode:(unint64_t)mode withReply:(id)reply
{
  replyCopy = reply;
  status = [(CARDNDServiceAgent *)self status];
  automaticDNDTriggeringMethod = [status automaticDNDTriggeringMethod];

  if (automaticDNDTriggeringMethod != mode)
  {
    [(CARDNDServiceAgent *)self _triggerModeChanged:mode mechanism:@"Settings"];
    status2 = [(CARDNDServiceAgent *)self status];
    [status2 setAutomaticDNDTriggeringMethod:mode];

    if (mode)
    {
      v9 = +[CARDNDManager sharedManager];
      [v9 _checkVehicleState];
    }
  }

  v10 = replyCopy;
  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, 1, 0);
    v10 = replyCopy;
  }
}

- (void)allowedAutoReplyAudienceWithReply:(id)reply
{
  v3 = CARDNDAutoReplyAudience;
  v4 = CRPreferencesAutomaticDNDDomain;
  replyCopy = reply;
  v6 = CFPreferencesCopyAppValue(v3, v4);
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 4;
  }

  v9 = CarDNDWDLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated auto-reply audience to %@", &v11, 0xCu);
  }

  replyCopy[2](replyCopy, unsignedIntegerValue, 0);
}

- (void)setAllowedAutoReplyAudience:(unint64_t)audience reply:(id)reply
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000510FC;
  v7[3] = &unk_1000DF248;
  replyCopy = reply;
  audienceCopy = audience;
  v6 = replyCopy;
  [(CARDNDServiceAgent *)self allowedAutoReplyAudienceWithReply:v7];
}

- (void)autoReplyMessageWithReply:(id)reply
{
  replyCopy = reply;
  v3 = CFPreferencesCopyAppValue(CARDNDAutoReplyMessage, CRPreferencesAutomaticDNDDomain);
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if (![v5 length])
  {
    v6 = CRLocalizedStringForKey();

    v5 = v6;
  }

  replyCopy[2](replyCopy, v5, 0);
}

- (void)setAutoReplyMessage:(id)message reply:(id)reply
{
  v6 = CARDNDAutoReplyMessage;
  v7 = CRPreferencesAutomaticDNDDomain;
  replyCopy = reply;
  CFPreferencesSetAppValue(v6, message, v7);
  [(CARDNDServiceAgent *)self allowedAutoReplyAudienceWithReply:&stru_1000DF288];
  replyCopy[2](replyCopy, 1, 0);
}

- (void)disableDNDUntilEndOfDriveWithContext:(id)context reply:(id)reply
{
  contextCopy = context;
  replyCopy = reply;
  v7 = +[CARDNDManager sharedManager];
  isDNDValid = [v7 isDNDValid];
  v9 = CarDNDWDLogging();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (isDNDValid)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Disabling Driving until end of drive.", buf, 2u);
    }

    v11 = +[CARAnalytics sharedInstance];
    if ([v7 isCurrentlyInGeofencedRegion])
    {
      v12 = 1;
    }

    else
    {
      v12 = 4;
    }

    [v11 DNDEndedWithTrigger:v12 vehicleHints:objc_msgSend(v7 context:{"lastKnownVehicularHints"), contextCopy}];

    [v7 _disableDNDUntilEndOfDrive];
    if (!replyCopy)
    {
      goto LABEL_13;
    }

LABEL_12:
    replyCopy[2](replyCopy, 1, 0);
    goto LABEL_13;
  }

  if (v10)
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring disable Driving until end of drive - Driving was not valid.", v13, 2u);
  }

  if (replyCopy)
  {
    goto LABEL_12;
  }

LABEL_13:
}

@end