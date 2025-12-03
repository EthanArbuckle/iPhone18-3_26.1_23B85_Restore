@interface MOEventRefreshHelper
- (MOEventRefreshHelper)initWithUniverse:(id)universe;
- (void)getBundlingDatesForVariant:(unint64_t)variant withHandler:(id)handler;
- (void)getCollectDatesForVariant:(unint64_t)variant withHandler:(id)handler;
- (void)getPatternDetectorDatesForVariant:(unint64_t)variant withHandler:(id)handler;
@end

@implementation MOEventRefreshHelper

- (MOEventRefreshHelper)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v18.receiver = self;
  v18.super_class = MOEventRefreshHelper;
  v6 = [(MOEventRefreshHelper *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_universe, universe);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [universeCopy getService:v9];
    configurationManager = v7->_configurationManager;
    v7->_configurationManager = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [universeCopy getService:v13];
    defaultsManager = v7->_defaultsManager;
    v7->_defaultsManager = v14;

    v16 = v7;
  }

  return v7;
}

- (void)getCollectDatesForVariant:(unint64_t)variant withHandler:(id)handler
{
  handlerCopy = handler;
  defaultsManager = [(MOEventRefreshHelper *)self defaultsManager];
  v8 = [defaultsManager objectForKey:@"EventRefreshSchedulerLastSuccessfulTrigger"];

  if (!v8)
  {
    v8 = +[NSDate date];
  }

  v10 = 0;
  if (variant <= 767)
  {
    if (variant != 256 && variant != 336)
    {
      v11 = 0;
      if (variant != 512)
      {
        goto LABEL_20;
      }

LABEL_11:
      configurationManager = self->_configurationManager;
      v13 = @"EventManagerOverrideRefreshMinimumLookBackWindowLight";
      LODWORD(v9) = 1216159744;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (variant == 768)
  {
LABEL_12:
    configurationManager = self->_configurationManager;
    v13 = @"EventManagerOverrideRefreshMinimumLookBackWindowDefault";
    goto LABEL_14;
  }

  if (variant != 1280)
  {
    v11 = 0;
    if (variant != 1536)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  configurationManager = self->_configurationManager;
  v13 = @"EventManagerOverrideRefreshMinimumLookBackWindowFull";
LABEL_14:
  LODWORD(v9) = 1242802176;
LABEL_15:
  [(MOConfigurationManagerBase *)configurationManager getFloatSettingForKey:v13 withFallback:v9];
  v10 = [NSDate dateWithTimeInterval:v8 sinceDate:-v14];
  v15 = +[NSDate date];
  v11 = [NSDate dateWithTimeInterval:v15 sinceDate:0.0];

  if (v10)
  {
    v16 = v11 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
LABEL_20:
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshHelper);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [MOEventRefreshHelper getCollectDatesForVariant:variant withHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    goto LABEL_31;
  }

  v18 = +[NSCalendar currentCalendar];
  v19 = [v18 startOfDayForDate:v10];

  v20 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshHelper);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [NSNumber numberWithUnsignedInteger:variant];
    v24 = 138412802;
    v25 = v19;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "inferred collect adjusted start date (%@) and end date (%@) with variant (%@)", &v24, 0x20u);
  }

  if ([v19 isAfterDate:v11])
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshHelper);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [MOEventRefreshHelper getCollectDatesForVariant:withHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1, v19, v11);
  }

LABEL_31:
}

- (void)getBundlingDatesForVariant:(unint64_t)variant withHandler:(id)handler
{
  handlerCopy = handler;
  defaultsManager = [(MOEventRefreshHelper *)self defaultsManager];
  v8 = [defaultsManager objectForKey:@"EventRefreshSchedulerLastSuccessfulTrigger"];

  if (!v8)
  {
    v8 = +[NSDate date];
  }

  v10 = 0;
  if (variant <= 767)
  {
    if (variant != 256 && variant != 336)
    {
      v11 = 0;
      if (variant != 512)
      {
        goto LABEL_19;
      }

LABEL_11:
      configurationManager = self->_configurationManager;
      v13 = @"EventBundleManagerOverrideRefreshMinimumLookBackWindowLight";
      LODWORD(v9) = 1216159744;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (variant == 768)
  {
LABEL_12:
    configurationManager = self->_configurationManager;
    v13 = @"EventBundleManagerOverrideRefreshMinimumLookBackWindowDefault";
    LODWORD(v9) = *"";
    goto LABEL_14;
  }

  if (variant != 1280)
  {
    v11 = 0;
    if (variant != 1536)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  configurationManager = self->_configurationManager;
  v13 = @"EventBundleManagerOverrideRefreshMinimumLookBackWindowFull";
  LODWORD(v9) = 1242802176;
LABEL_14:
  [(MOConfigurationManagerBase *)configurationManager getFloatSettingForKey:v13 withFallback:v9];
  v10 = [NSDate dateWithTimeInterval:v8 sinceDate:-v14];
  v15 = +[NSDate date];
  v11 = [NSDate dateWithTimeInterval:v15 sinceDate:0.0];

  if (v10)
  {
    v16 = v11 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
LABEL_19:
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshHelper);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [MOEventRefreshHelper getBundlingDatesForVariant:variant withHandler:?];
    }

    goto LABEL_28;
  }

  v18 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshHelper);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [NSNumber numberWithUnsignedInteger:variant];
    v22 = 138412802;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "inferred bundling start date (%@) and end date (%@) with variant (%@)", &v22, 0x20u);
  }

  if (![v10 isAfterDate:v11])
  {
    handlerCopy[2](handlerCopy, 1, v10, v11);
    goto LABEL_30;
  }

  v21 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshHelper);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
  {
    [MOEventRefreshHelper getBundlingDatesForVariant:withHandler:];
  }

LABEL_28:
  handlerCopy[2](handlerCopy, 0, 0, 0);
LABEL_30:
}

- (void)getPatternDetectorDatesForVariant:(unint64_t)variant withHandler:(id)handler
{
  handlerCopy = handler;
  defaultsManager = [(MOEventRefreshHelper *)self defaultsManager];
  v8 = [defaultsManager objectForKey:@"EventRefreshSchedulerLastSuccessfulTrigger"];

  if (!v8)
  {
    v8 = +[NSDate date];
  }

  v10 = 0;
  if (variant <= 767)
  {
    if (variant != 256 && variant != 336)
    {
      v11 = 0;
      if (variant != 512)
      {
        goto LABEL_20;
      }

LABEL_11:
      configurationManager = self->_configurationManager;
      v13 = @"PatternDetectorRefreshMinimumLookBackWindowLight";
      LODWORD(v9) = 1216159744;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (variant == 768)
  {
LABEL_12:
    configurationManager = self->_configurationManager;
    v13 = @"PatternDetectorRefreshMinimumLookBackWindowDefault";
    goto LABEL_14;
  }

  if (variant != 1280)
  {
    v11 = 0;
    if (variant != 1536)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  configurationManager = self->_configurationManager;
  v13 = @"PatternDetectorRefreshMinimumLookBackWindowFull";
LABEL_14:
  LODWORD(v9) = 1242802176;
LABEL_15:
  [(MOConfigurationManagerBase *)configurationManager getFloatSettingForKey:v13 withFallback:v9];
  v10 = [NSDate dateWithTimeInterval:v8 sinceDate:-v14];
  v15 = +[NSDate date];
  v11 = [NSDate dateWithTimeInterval:v15 sinceDate:0.0];

  if (v10)
  {
    v16 = v11 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
LABEL_20:
    v17 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshHelper);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [MOEventRefreshHelper getPatternDetectorDatesForVariant:variant withHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    goto LABEL_31;
  }

  v18 = +[NSCalendar currentCalendar];
  v19 = [v18 startOfDayForDate:v10];

  v20 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshHelper);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [NSNumber numberWithUnsignedInteger:variant];
    v24 = 138412802;
    v25 = v19;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "inferred pattern detection adjusted date (%@) and end date (%@) with variant (%@)", &v24, 0x20u);
  }

  if ([v19 isAfterDate:v11])
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityRefreshHelper);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [MOEventRefreshHelper getPatternDetectorDatesForVariant:withHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1, v19, v11);
  }

LABEL_31:
}

- (void)getCollectDatesForVariant:(uint64_t)a1 withHandler:.cold.2(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_3(&_mh_execute_header, v2, v3, "unable to determine start and end date for collect (with variant %@)", v4, v5, v6, v7, 2u);
}

- (void)getBundlingDatesForVariant:(uint64_t)a1 withHandler:.cold.2(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_3(&_mh_execute_header, v2, v3, "unable to determine start and end date for bundling (with variant %@)", v4, v5, v6, v7, 2u);
}

- (void)getPatternDetectorDatesForVariant:(uint64_t)a1 withHandler:.cold.2(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_3(&_mh_execute_header, v2, v3, "unable to determine start and end date for pattern detection (with variant %@)", v4, v5, v6, v7, 2u);
}

@end