@interface CARDNDServiceAgent
+ (id)_DNDServiceInterface;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CARDNDServiceAgent)initWithVehicleStore:(id)a3;
- (void)_triggerModeChanged:(unint64_t)a3 mechanism:(id)a4;
- (void)allowedAutoReplyAudienceWithReply:(id)a3;
- (void)autoReplyMessageWithReply:(id)a3;
- (void)dealloc;
- (void)disableDNDUntilEndOfDriveWithContext:(id)a3 reply:(id)a4;
- (void)fetchDNDTriggerModeWithReply:(id)a3;
- (void)isCarPlayAutomaticDNDActiveWithReply:(id)a3;
- (void)resetAutomaticDNDPreferencesWithReply:(id)a3;
- (void)setAllowedAutoReplyAudience:(unint64_t)a3 reply:(id)a4;
- (void)setAutoReplyMessage:(id)a3 reply:(id)a4;
- (void)setCarPlayAutomaticDNDActive:(BOOL)a3 withReply:(id)a4;
- (void)setDNDTriggerMode:(unint64_t)a3 withReply:(id)a4;
- (void)shouldDisplayExitConfirmationWithReply:(id)a3;
@end

@implementation CARDNDServiceAgent

- (CARDNDServiceAgent)initWithVehicleStore:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CARDNDServiceAgent;
  v6 = [(CARDNDServiceAgent *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_vehicleStore, a3);
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.private.carkit.app"];
  if ([v6 BOOLValue])
  {

LABEL_4:
    v9 = CarDNDWDLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 serviceName];
      v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 processIdentifier]);
      v16 = 138412802;
      v17 = v5;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Receiving connection %@ to service %@ from %@", &v16, 0x20u);
    }

    v12 = [objc_opt_class() _DNDServiceInterface];
    [v5 setExportedInterface:v12];

    [v5 setExportedObject:self];
    [v5 resume];
    v13 = 1;
    goto LABEL_10;
  }

  v7 = [v5 valueForEntitlement:@"com.apple.private.carkit.dnd"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    goto LABEL_4;
  }

  v14 = CarDNDWDLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_100087C08(v5, v14);
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (void)isCarPlayAutomaticDNDActiveWithReply:(id)a3
{
  v4 = a3;
  v5 = +[CARDNDManager sharedManager];
  (*(a3 + 2))(v4, [v5 isDNDValid]);
}

- (void)setCarPlayAutomaticDNDActive:(BOOL)a3 withReply:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = +[CARDNDManager sharedManager];
  objc_initWeak(&location, v6);

  if (v4)
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
  v10 = [v9 CARDNDQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050744;
  block[3] = &unk_1000DF220;
  v15 = v4;
  objc_copyWeak(&v14, &location);
  v13 = v5;
  v11 = v5;
  dispatch_async(v10, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)resetAutomaticDNDPreferencesWithReply:(id)a3
{
  v4 = a3;
  v5 = [(CARDNDServiceAgent *)self status];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100050A64;
  v6[3] = &unk_1000DD480;
  v6[4] = self;
  [v5 _performCARPreferencesBlock:v6 forReading:0];

  if (v4)
  {
    v4[2](v4, 1, 0);
  }
}

- (void)shouldDisplayExitConfirmationWithReply:(id)a3
{
  v3 = a3;
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

  if (v3)
  {
    v3[2](v3, v6, 0);
  }
}

- (void)fetchDNDTriggerModeWithReply:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(CARDNDServiceAgent *)self status];
    (*(a3 + 2))(v5, [v6 automaticDNDTriggeringMethod], 0);
  }
}

- (void)_triggerModeChanged:(unint64_t)a3 mechanism:(id)a4
{
  v6 = a4;
  v7 = [(CARDNDServiceAgent *)self status];
  v8 = [v7 automaticDNDTriggeringMethod];

  v9 = [(CARDNDServiceAgent *)self status];
  [v9 mostRecentTriggerMethodChange];
  v11 = v10;

  v12 = [(CARDNDServiceAgent *)self status];
  if ([v12 hasAdjustedTriggerMethod])
  {
    if (v8 > 2)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = off_1000DF2A8[v8];
    }
  }

  else
  {
    v13 = @"New";
  }

  v14 = [(CARDNDServiceAgent *)self status];
  [v14 setHasAdjustedTriggerMethod:1];

  v17 = +[CARAnalytics sharedInstance];
  if (a3 > 2)
  {
    v15 = @"Unknown";
  }

  else
  {
    v15 = off_1000DF2A8[a3];
  }

  v16 = [(CARDNDServiceAgent *)self status];
  [v17 userChangedFromTriggerMethod:v13 toMethod:v15 withMechanism:v6 fromPreviousInterval:objc_msgSend(v16 activateWithCarPlay:{"shouldActivateWithCarPlay"), v11}];
}

- (void)setDNDTriggerMode:(unint64_t)a3 withReply:(id)a4
{
  v11 = a4;
  v6 = [(CARDNDServiceAgent *)self status];
  v7 = [v6 automaticDNDTriggeringMethod];

  if (v7 != a3)
  {
    [(CARDNDServiceAgent *)self _triggerModeChanged:a3 mechanism:@"Settings"];
    v8 = [(CARDNDServiceAgent *)self status];
    [v8 setAutomaticDNDTriggeringMethod:a3];

    if (a3)
    {
      v9 = +[CARDNDManager sharedManager];
      [v9 _checkVehicleState];
    }
  }

  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, 1, 0);
    v10 = v11;
  }
}

- (void)allowedAutoReplyAudienceWithReply:(id)a3
{
  v3 = CARDNDAutoReplyAudience;
  v4 = CRPreferencesAutomaticDNDDomain;
  v5 = a3;
  v6 = CFPreferencesCopyAppValue(v3, v4);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntegerValue];
  }

  else
  {
    v8 = 4;
  }

  v9 = CarDNDWDLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithUnsignedInteger:v8];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated auto-reply audience to %@", &v11, 0xCu);
  }

  v5[2](v5, v8, 0);
}

- (void)setAllowedAutoReplyAudience:(unint64_t)a3 reply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000510FC;
  v7[3] = &unk_1000DF248;
  v8 = a4;
  v9 = a3;
  v6 = v8;
  [(CARDNDServiceAgent *)self allowedAutoReplyAudienceWithReply:v7];
}

- (void)autoReplyMessageWithReply:(id)a3
{
  v7 = a3;
  v3 = CFPreferencesCopyAppValue(CARDNDAutoReplyMessage, CRPreferencesAutomaticDNDDomain);
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if (![v5 length])
  {
    v6 = CRLocalizedStringForKey();

    v5 = v6;
  }

  v7[2](v7, v5, 0);
}

- (void)setAutoReplyMessage:(id)a3 reply:(id)a4
{
  v6 = CARDNDAutoReplyMessage;
  v7 = CRPreferencesAutomaticDNDDomain;
  v8 = a4;
  CFPreferencesSetAppValue(v6, a3, v7);
  [(CARDNDServiceAgent *)self allowedAutoReplyAudienceWithReply:&stru_1000DF288];
  v8[2](v8, 1, 0);
}

- (void)disableDNDUntilEndOfDriveWithContext:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[CARDNDManager sharedManager];
  v8 = [v7 isDNDValid];
  v9 = CarDNDWDLogging();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
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

    [v11 DNDEndedWithTrigger:v12 vehicleHints:objc_msgSend(v7 context:{"lastKnownVehicularHints"), v5}];

    [v7 _disableDNDUntilEndOfDrive];
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_12:
    v6[2](v6, 1, 0);
    goto LABEL_13;
  }

  if (v10)
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring disable Driving until end of drive - Driving was not valid.", v13, 2u);
  }

  if (v6)
  {
    goto LABEL_12;
  }

LABEL_13:
}

@end