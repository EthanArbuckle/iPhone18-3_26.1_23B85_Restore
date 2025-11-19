@interface MODiagnosticReporter
+ (id)defaultReporter;
- (MODiagnosticReporter)init;
- (void)_configureFromDictionary:(id)a3;
- (void)_notificationHandlerWithNotificationRef:(__CFUserNotification *)a3 andOptionFlags:(unint64_t)a4;
- (void)_saveTimeOfLastIncident;
- (void)configureWithDaemonClient:(id)a3;
- (void)reportIncident:(id)a3 subtype:(id)a4 context:(id)a5;
- (void)reportIncidentAfterUserConsent:(id)a3 subtype:(id)a4 context:(id)a5;
- (void)showUserNotificationWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 acceptButtonTitle:(id)a6 withAcceptanceBlock:(id)a7;
@end

@implementation MODiagnosticReporter

+ (id)defaultReporter
{
  if (defaultReporter_onceToken != -1)
  {
    +[MODiagnosticReporter defaultReporter];
  }

  v3 = defaultReporter_reporter;

  return v3;
}

- (void)configureWithDaemonClient:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __58__MODiagnosticReporter_MOCore__configureWithDaemonClient___block_invoke;
  v3[3] = &unk_100337FC8;
  v3[4] = self;
  [a3 _getDiagnosticReporterConfiguration:v3];
}

id *__58__MODiagnosticReporter_MOCore__configureWithDaemonClient___block_invoke(id *result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [result[4] _configureFromDictionary:a2];
  }

  return result;
}

void __39__MODiagnosticReporter_defaultReporter__block_invoke(id a1)
{
  v1 = objc_alloc_init(MODiagnosticReporter);
  v2 = defaultReporter_reporter;
  defaultReporter_reporter = v1;

  _objc_release_x1(v1, v2);
}

- (MODiagnosticReporter)init
{
  v9.receiver = self;
  v9.super_class = MODiagnosticReporter;
  v2 = [(MODiagnosticReporter *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("MODiagnosticReporter", v4);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    v7 = *(v2 + 6);
    *(v2 + 6) = 0;

    *(v2 + 56) = xmmword_1003235F0;
    *(v2 + 9) = 0x4024000000000000;
    *(v2 + 20) = 0;
    *(v2 + 11) = 4;
  }

  return v2;
}

- (void)_notificationHandlerWithNotificationRef:(__CFUserNotification *)a3 andOptionFlags:(unint64_t)a4
{
  p_notification = &self->_notification;
  if (self->_notification != a3)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [MODiagnosticReporter _notificationHandlerWithNotificationRef:andOptionFlags:];
    }
  }

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithUnsignedLong:a4];
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received response flags %@", &v13, 0xCu);
  }

  if ((a4 & 3) != 0)
  {
    self->_lastResult = 2;
  }

  else
  {
    self->_lastResult = 1;
    notificationAcceptanceCallback = self->_notificationAcceptanceCallback;
    if (notificationAcceptanceCallback)
    {
      notificationAcceptanceCallback[2]();
    }
  }

  Main = CFRunLoopGetMain();
  CFRunLoopRemoveSource(Main, self->_notificationSource, kCFRunLoopCommonModes);
  *p_notification = 0;
  p_notification[1] = 0;
  v12 = self->_notificationAcceptanceCallback;
  self->_notificationAcceptanceCallback = 0;
}

- (void)showUserNotificationWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 acceptButtonTitle:(id)a6 withAcceptanceBlock:(id)a7
{
  v12 = a7;
  if (!self->_notification)
  {
    v14 = [NSDictionary dictionaryWithObjectsAndKeys:a3, kCFUserNotificationAlertHeaderKey, a4, kCFUserNotificationAlertMessageKey, a6, kCFUserNotificationDefaultButtonTitleKey, a5, kCFUserNotificationAlternateButtonTitleKey, 0];
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Prompting diagnostic report notification with alert parameters %@", buf, 0xCu);
    }

    *buf = 0;
    v16 = CFUserNotificationCreate(kCFAllocatorDefault, 60.0, 0, buf, v14);
    self->_notification = v16;
    if (v16)
    {
      RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v16, _MODiagnosticReporter_NotificationHandler, 0);
      self->_notificationSource = RunLoopSource;
      if (RunLoopSource)
      {
        v18 = [v12 copy];
        notificationAcceptanceCallback = self->_notificationAcceptanceCallback;
        self->_notificationAcceptanceCallback = v18;

        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, self->_notificationSource, kCFRunLoopCommonModes);
LABEL_15:

        goto LABEL_16;
      }

      self->_notification = 0;
      v21 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [MODiagnosticReporter showUserNotificationWithTitle:message:cancelButtonTitle:acceptButtonTitle:withAcceptanceBlock:];
      }
    }

    else
    {
      v21 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [MODiagnosticReporter showUserNotificationWithTitle:buf message:? cancelButtonTitle:? acceptButtonTitle:? withAcceptanceBlock:?];
      }
    }

    goto LABEL_15;
  }

  v13 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [MODiagnosticReporter showUserNotificationWithTitle:message:cancelButtonTitle:acceptButtonTitle:withAcceptanceBlock:];
  }

  self->_lastResult = 2;
LABEL_16:
}

- (void)reportIncident:(id)a3 subtype:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_isInternalBuild)
  {
    if (self->_onboardingStatus || self->_forceNotification)
    {
      if (self->_isOnboardedOnDiagnosticReporter || self->_forceNotification)
      {
        if (self->_avoidNotification)
        {
          v11 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
          if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_DEBUG))
          {
            [MODiagnosticReporter reportIncident:subtype:context:];
          }
        }

        else
        {
          Current = CFAbsoluteTimeGetCurrent();
          v11 = self;
          objc_sync_enter(v11);
          lastResult = v11->_lastResult;
          if (lastResult)
          {
            v14 = 0;
          }

          else
          {
            v14 = v11->_timeOfLastIncident <= 0.0;
          }

          if (v11->_forceNotification || v14)
          {
            goto LABEL_21;
          }

          v15 = Current - v11->_timeOfLastIncident;
          v16 = lastResult == 1;
          v17 = 64;
          if (v16)
          {
            v17 = 56;
          }

          if (v15 > *(&v11->super.isa + v17))
          {
LABEL_21:
            v11->_timeOfLastIncident = Current;
            [(MODiagnosticReporter *)v11 _saveTimeOfLastIncident];
            objc_sync_exit(v11);

            v18 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v37 = v9;
              v38 = 2112;
              v39 = v10;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MODiagnosticReporter reporting incident [subtype=%@,context=%@]", buf, 0x16u);
            }

            if (v8 == @"XPCInterruption")
            {
              v19 = @"The connection with %@ has been interrupted. Please tap Accept to proceed to Tap-to-Radar";
            }

            else
            {
              v19 = @"Process %@ appears to hang. Please tap Accept to proceed to Tap-to-Radar";
            }

            v20 = +[NSProcessInfo processInfo];
            v21 = [v20 processName];

            v22 = [NSString stringWithFormat:v19, v21];
            v23 = [NSString stringWithFormat:@"%@\nSubtype: %@\nContext: %@", v22, v9, v10];

            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v32[2] = __55__MODiagnosticReporter_reportIncident_subtype_context___block_invoke;
            v32[3] = &unk_10033C0A8;
            v32[4] = v11;
            v33 = v8;
            v34 = v9;
            v35 = v10;
            [(MODiagnosticReporter *)v11 showUserNotificationWithTitle:@"Issue Detected" message:v23 cancelButtonTitle:@"Cancel" acceptButtonTitle:@"Accept" withAcceptanceBlock:v32];

            v11 = v23;
          }

          else
          {
            v24 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v30 = [NSNumber numberWithUnsignedInteger:v11->_lastResult];
              v31 = [NSNumber numberWithDouble:v11->_timeOfLastIncident];
              v26 = [NSNumber numberWithDouble:v15];
              v27 = [NSNumber numberWithDouble:v11->_refractoryPeriodAfterAcceptance];
              v28 = [NSNumber numberWithDouble:v11->_refractoryPeriodAfterRejection];
              v29 = [NSNumber numberWithUnsignedInteger:self->_onboardingStatus];
              *buf = 138413570;
              v37 = v30;
              v38 = 2112;
              v39 = v31;
              v40 = 2112;
              v41 = v26;
              v42 = 2112;
              v43 = v27;
              v44 = 2112;
              v45 = v28;
              v46 = 2112;
              v47 = v29;
              _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "MODiagnosticReporter states [_lastResult=%@, _timeOfLastIncident=%@, interval=%@, _refractoryPeriodAfterAcceptance=%@, _refractoryPeriodAfterRejection=%@, _onboardingStatus=%@]", buf, 0x3Eu);
            }

            v25 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [MODiagnosticReporter reportIncident:subtype:context:];
            }

            objc_sync_exit(v11);
          }
        }
      }

      else
      {
        v11 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
        if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_DEBUG))
        {
          [MODiagnosticReporter reportIncident:subtype:context:];
        }
      }
    }

    else
    {
      v11 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
      if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_DEBUG))
      {
        [MODiagnosticReporter reportIncident:subtype:context:];
      }
    }
  }
}

- (void)reportIncidentAfterUserConsent:(id)a3 subtype:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[NSProcessInfo processInfo];
  v12 = [v11 processName];
  v13 = [NSString stringWithFormat:@"[%@] %@ Detected", v12, v10];

  v14 = [NSNumber numberWithDouble:self->_timeOfLastIncident];
  v15 = [NSString stringWithFormat:@"Subtype: %@\n\nContext: %@\n\nApproximate timestamp: %@", v9, v8, v14];

  v16 = [NSString stringWithFormat:@"?Title=%@&Description=%@&Classification=%@&Reproducibility=%@&ComponentName=%@&ComponentVersion=%@&ComponentID=%@", v13, v15, @"Crash/Hang/Data Loss", @"I Didn't Try", @"Journaling Suggestions", @"All", @"1330744"];
  v17 = [NSString stringWithFormat:@"tap-to-radar://new%@", v16];
  v18 = [NSURL URLWithString:v17];

  v19 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v18 absoluteString];
    *buf = 138412290;
    v23 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Triggering tap to radar with url [%@]", buf, 0xCu);
  }

  v21 = +[LSApplicationWorkspace defaultWorkspace];
  [v21 openURL:v18 configuration:0 completionHandler:&__block_literal_global_98];
}

void __71__MODiagnosticReporter_reportIncidentAfterUserConsent_subtype_context___block_invoke(id a1, NSDictionary *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__MODiagnosticReporter_reportIncidentAfterUserConsent_subtype_context___block_invoke_cold_1();
    }
  }
}

- (void)_configureFromDictionary:(id)a3
{
  v4 = a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilityDiagnosticReporter);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MODiagnosticReporter *)v4 _configureFromDictionary:v5];
  }

  if (v4)
  {
    v6 = [v4 objectForKey:@"DiagnosticReporterRefractoryPeriodAfterAcceptance"];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      self->_refractoryPeriodAfterAcceptance = v8;
    }

    v9 = [v4 objectForKey:@"DiagnosticReporterRefractoryPeriodAfterRejection"];
    v10 = v9;
    if (v9)
    {
      [v9 doubleValue];
      self->_refractoryPeriodAfterRejection = v11;
    }

    v12 = [v4 objectForKey:@"DiagnosticReporterAvoidNotification"];
    v13 = v12;
    if (v12)
    {
      self->_avoidNotification = [v12 BOOLValue];
    }

    v14 = [v4 objectForKey:@"DiagnosticReporterForceNotification"];
    v15 = v14;
    if (v14)
    {
      self->_forceNotification = [v14 BOOLValue];
    }

    v16 = [v4 objectForKey:@"DiagnosticReporterTimeOfLastNotification"];
    v17 = v16;
    if (v16)
    {
      [v16 doubleValue];
      self->_timeOfLastIncident = v18;
    }

    v19 = [v4 objectForKey:@"DiagnosticReporterIsInternalBuild"];
    v20 = v19;
    if (v19)
    {
      self->_isInternalBuild = [v19 BOOLValue];
    }

    v28 = v10;
    v21 = [v4 objectForKey:@"DiagnosticReporterOnboardingStatus"];
    v22 = v21;
    if (v21)
    {
      self->_onboardingStatus = [v21 intValue];
    }

    v23 = v7;
    v24 = [v4 objectForKey:@"DiagnosticReporterMaxTimeout"];
    v25 = v24;
    if (v24)
    {
      self->_maxTimeout = [v24 intValue];
    }

    v26 = [v4 objectForKey:@"DiagnosticReporterIsOnboardedOnDiagnosticReporter"];
    v27 = v26;
    if (v26)
    {
      self->_isOnboardedOnDiagnosticReporter = [v26 BOOLValue];
    }
  }
}

- (void)_saveTimeOfLastIncident
{
  v3 = +[NSUserDefaults standardUserDefaults];
  if (v3)
  {
    v5 = v3;
    v4 = [NSNumber numberWithDouble:self->_timeOfLastIncident];
    [v5 setObject:v4 forKey:@"DiagnosticReporterLastIncidentTime"];

    v3 = v5;
  }
}

- (void)showUserNotificationWithTitle:message:cancelButtonTitle:acceptButtonTitle:withAcceptanceBlock:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)showUserNotificationWithTitle:(int *)a1 message:cancelButtonTitle:acceptButtonTitle:withAcceptanceBlock:.cold.3(int *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

- (void)reportIncident:subtype:context:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_configureFromDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Received configuration %@", &v2, 0xCu);
}

@end