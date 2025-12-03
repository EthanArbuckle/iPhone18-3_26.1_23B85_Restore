@interface MONotificationsBiomeDonation
+ (BOOL)donateNotificationReport:(id)report error:(id *)error;
+ (id)sharedDateFormatter;
+ (int)convertAnalyticsDeviceTypeToBiomeDeviceType:(unint64_t)type;
@end

@implementation MONotificationsBiomeDonation

+ (int)convertAnalyticsDeviceTypeToBiomeDeviceType:(unint64_t)type
{
  if (type - 1 > 4)
  {
    return 0;
  }

  else
  {
    return dword_100323010[type - 1];
  }
}

+ (id)sharedDateFormatter
{
  if (sharedDateFormatter_onceToken != -1)
  {
    +[MONotificationsBiomeDonation sharedDateFormatter];
  }

  v3 = sharedDateFormatter_formatter;

  return v3;
}

void __51__MONotificationsBiomeDonation_sharedDateFormatter__block_invoke(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = sharedDateFormatter_formatter;
  sharedDateFormatter_formatter = v1;

  v3 = sharedDateFormatter_formatter;

  [v3 setDateFormat:@"yyyy-MM-dd HH:mm"];
}

+ (BOOL)donateNotificationReport:(id)report error:(id *)error
{
  reportCopy = report;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationReporter);
  v5 = v4;
  if (!reportCopy)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [MONotificationsBiomeDonation donateNotificationReport:v5 error:?];
    }

    if (error)
    {
      v72[0] = NSLocalizedDescriptionKey;
      v72[1] = NSLocalizedFailureReasonErrorKey;
      v73[0] = @"No report dictionary provided for Biome donation";
      v73[1] = @"The report parameter cannot be nil";
      v64 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
      [NSError errorWithDomain:@"MONotificationsBiomeDonation" code:1001 userInfo:v64];
      *error = v6 = 0;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_49;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "biome donation happening", buf, 2u);
  }

  sharedDateFormatter = [self sharedDateFormatter];
  v54 = [reportCopy objectForKeyedSubscript:@"reporterUUID"];
  v60 = [reportCopy objectForKeyedSubscript:@"reporterWritingDate"];
  if (v60)
  {
    v53 = [sharedDateFormatter dateFromString:?];
  }

  else
  {
    v53 = 0;
  }

  v57 = [reportCopy objectForKeyedSubscript:@"isSignificantLocationEnabled"];
  v56 = [reportCopy objectForKeyedSubscript:@"isSystemNotificationsEnabled"];
  v55 = [reportCopy objectForKeyedSubscript:@"isAppNotificationsEnabled"];
  v7 = [reportCopy objectForKeyedSubscript:@"maxAvailabilityProbability"];
  v59 = v7;
  if (v7)
  {
    [v7 doubleValue];
    v51 = [NSNumber numberWithDouble:v8 / 1000.0];
  }

  else
  {
    v51 = 0;
  }

  v58 = [reportCopy objectForKeyedSubscript:@"maxAvailabilityProbabilityDate"];
  if (v58)
  {
    v52 = [sharedDateFormatter dateFromString:?];
  }

  else
  {
    v52 = 0;
  }

  v65 = +[NSMutableArray array];
  for (i = 1; i != 25; ++i)
  {
    v10 = [NSString stringWithFormat:@"availabilityProbability%02ld", i];
    v11 = [NSString stringWithFormat:@"predictionDate%02ld", i];
    v12 = [NSString stringWithFormat:@"locationFilterProbability%02ld", i];
    v13 = [reportCopy objectForKeyedSubscript:v10];
    v14 = [reportCopy objectForKeyedSubscript:v12];
    v15 = [reportCopy objectForKeyedSubscript:v11];
    v16 = v15;
    if (v13 || v14 || v15)
    {
      if (v13)
      {
        [v13 doubleValue];
        v66 = [NSNumber numberWithDouble:v17 / 1000.0];
        if (v14)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v66 = &off_10036E610;
        if (v14)
        {
LABEL_23:
          [v14 doubleValue];
          v19 = [NSNumber numberWithDouble:v18 / 1000.0];
          if (v16)
          {
LABEL_24:
            v20 = [sharedDateFormatter dateFromString:v16];
LABEL_28:
            v21 = [[BMMomentsNotificationsPrediction alloc] initWithVailabilityProbability:v66 locationFilterProbability:v19 predictionDate:v20];
            [v65 addObject:v21];

            goto LABEL_29;
          }

LABEL_27:
          v20 = 0;
          goto LABEL_28;
        }
      }

      v19 = &off_10036E610;
      if (v16)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

LABEL_29:
  }

  v67 = [reportCopy objectForKeyedSubscript:@"proposedFireDate"];
  if (v67)
  {
    v50 = [sharedDateFormatter dateFromString:?];
  }

  else
  {
    v50 = 0;
  }

  v22 = [reportCopy objectForKeyedSubscript:@"proposedFireDateSource"];
  v23 = v22;
  if (v22)
  {
    integerValue = [v22 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v25 = [reportCopy objectForKeyedSubscript:@"fireAlarmDate"];
  if (v25)
  {
    v47 = [sharedDateFormatter dateFromString:v25];
  }

  else
  {
    v47 = 0;
  }

  v49 = [reportCopy objectForKeyedSubscript:@"fireTimerAlarmErrorDescription"];
  v48 = [reportCopy objectForKeyedSubscript:@"fireTimerAlarmErrorCode"];
  v26 = [reportCopy objectForKeyedSubscript:@"fireTimerAlarmErrorDomain"];
  v27 = +[MOPlatformInfo extractHardwareAndSoftwareMetadata];
  v28 = [v27 objectForKey:@"kMODeviceClass"];

  v29 = [self convertAnalyticsDeviceTypeToBiomeDeviceType:{+[MOOnboardingAnalyticsUtilities convertMGDeviceClassToAnalyticsDeviceType:](MOOnboardingAnalyticsUtilities, "convertMGDeviceClassToAnalyticsDeviceType:", v28)}];
  v30 = [BMMomentsNotifications alloc];
  v31 = +[NSDate date];
  v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[MOPlatformInfo isDNUEnabled]);
  LODWORD(v46) = v29;
  LODWORD(v45) = 0;
  LODWORD(v44) = 0;
  LODWORD(v43) = 0;
  LODWORD(v42) = integerValue;
  v33 = [v30 initWithReporterIdentification:v54 reporterWritingDate:v53 isSignificantLocationEnabled:v57 isSystemNotificationsEnabled:v56 isAppNotificationsEnabled:v55 predictionTuple:v65 maxAvailabilityProbability:v51 maxAvailabilityProbabilityDate:v52 proposedFireDate:v50 proposedFireDateSource:v42 realTimeCheckHandlerRetryDate:0 realTimeCheckHandlerFailure:0 realTimeCheckHandlerErrorDescription:0 realTimeCheckHandlerErrorCode:0 realTimeAlarmErrorDomain:0 fireAlarmDate:v47 fireTimerAlarmErrorDescription:v49 fireTimerAlarmErrorCode:v48 fireTimerAlarmErrorDomain:v26 realTimeCheckRejected:0 realTimeCheckIsTraveling:0 realTimeCheckIsPlaceEligible:0 realTimeCheckIsInVisit:0 realTimeCheckIsInWorkoutHealthKit:0 realTimeCheckIsInWorkoutMotion:0 realTimeCheckIsJournaling:0 realTimeCheckIsAtHome:0 eventType:v43 eventTime:v31 AttemptSuccessful:0 contentType:v44 suggestionIdentifier:0 bundleInterfaceType:v45 bundleGoodnessScore:0 deviceId:0 deviceType:v46 isDevicePrimary:0 journalingAppFirstParty:0 schedulingState:0 scheduleDeliverySetting:0 isOnDefaultSchedule:v32 isDNUGated:?];

  v34 = BiomeLibrary();
  moments = [v34 Moments];
  events = [moments Events];
  notifications = [events Notifications];
  source = [notifications source];

  v6 = source != 0;
  if (source)
  {
    [source sendEvent:v33];
    v39 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationReporter);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Notification event donated to Biome successfully", buf, 2u);
    }

LABEL_46:
  }

  else
  {
    v40 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationReporter);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [MONotificationsBiomeDonation donateNotificationReport:v40 error:?];
    }

    if (error)
    {
      v70[0] = NSLocalizedDescriptionKey;
      v70[1] = NSLocalizedFailureReasonErrorKey;
      v71[0] = @"Biome Notifications source not available";
      v71[1] = @"BMLibrary.Moments.Events.Notifications.source returned nil";
      v39 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:2];
      *error = [NSError errorWithDomain:@"MONotificationsBiomeDonation" code:1002 userInfo:v39];
      goto LABEL_46;
    }
  }

LABEL_49:
  return v6;
}

+ (void)donateNotificationReport:(os_log_t)log error:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Failed to donate notification event to Biome: %@", buf, 0xCu);
}

@end