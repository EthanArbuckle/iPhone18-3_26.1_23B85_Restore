@interface MOConfigurationManager
+ (id)getSensedEventGroupSettingNameFromCategory:(unint64_t)a3;
+ (id)getSensedEventGroupSettingNameFromResourceType:(unint64_t)a3;
+ (id)getSensedEventSettingNameFromCategory:(unint64_t)a3;
+ (id)getSensedEventSettingNameFromResourceType:(unint64_t)a3;
- (BOOL)_isAllowedToPromptEventCategory_postlaunch:(unint64_t)a3;
- (BOOL)_isAllowedToPromptEventCategory_prelaunch:(unint64_t)a3;
- (BOOL)_isAllowedToPromptResourceType_postlaunch:(unint64_t)a3;
- (BOOL)_isAllowedToPromptResourceType_prelaunch:(unint64_t)a3;
- (BOOL)_shouldConsiderEventCategory_postlaunch:(unint64_t)a3;
- (BOOL)_shouldConsiderResourceType_postlaunch:(unint64_t)a3;
- (BOOL)isAllowedToProcessEventCategory:(unint64_t)a3;
- (MOConfigurationManager)initWithUniverse:(id)a3;
@end

@implementation MOConfigurationManager

- (MOConfigurationManager)initWithUniverse:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 getService:v7];

  v12.receiver = self;
  v12.super_class = MOConfigurationManager;
  v9 = [(MOConfigurationManagerBase *)&v12 initWithDefaultsManager:v8 enableTrialClient:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->fUniverse, a3);
  }

  return v10;
}

+ (id)getSensedEventSettingNameFromResourceType:(unint64_t)a3
{
  if (a3 < 0x12)
  {
    return off_100335C78[a3];
  }

  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    +[MOConfigurationManager getSensedEventSettingNameFromResourceType:];
  }

  return 0;
}

+ (id)getSensedEventGroupSettingNameFromResourceType:(unint64_t)a3
{
  if (a3 < 0x12)
  {
    return qword_100335D08[a3];
  }

  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    +[MOConfigurationManager getSensedEventGroupSettingNameFromResourceType:];
  }

  return 0;
}

+ (id)getSensedEventSettingNameFromCategory:(unint64_t)a3
{
  if (a3 < 0x1A)
  {
    return off_100335D98[a3];
  }

  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    +[MOConfigurationManager getSensedEventSettingNameFromCategory:];
  }

  return 0;
}

+ (id)getSensedEventGroupSettingNameFromCategory:(unint64_t)a3
{
  if (a3 < 0x1A)
  {
    return qword_100335E68[a3];
  }

  v4 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    +[MOConfigurationManager getSensedEventGroupSettingNameFromResourceType:];
  }

  return 0;
}

- (BOOL)_isAllowedToPromptEventCategory_prelaunch:(unint64_t)a3
{
  v3 = a3 < 0x1A;
  v4 = 0x2EFE47Eu >> a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MOConfigurationManager _isAllowedToPromptEventCategory_prelaunch:];
  }

  return v3 & v4;
}

- (BOOL)_isAllowedToPromptResourceType_prelaunch:(unint64_t)a3
{
  v3 = a3 < 0x12;
  v4 = 0x3FEDCu >> a3;
  v5 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MOConfigurationManager _isAllowedToPromptResourceType_prelaunch:];
  }

  return v3 & v4;
}

- (BOOL)_shouldConsiderEventCategory_postlaunch:(unint64_t)a3
{
  fUniverse = self->fUniverse;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(MODaemonUniverse *)fUniverse getService:v6];

  v8 = [v7 getCollectAndComputeAuthorization];
  v9 = 0;
  switch(a3)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 0xAuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
      v9 = v8 == 2;
      break;
    default:
      break;
  }

  v10 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [MOConfigurationManager _shouldConsiderEventCategory_postlaunch:];
  }

  return v9;
}

- (BOOL)_isAllowedToPromptEventCategory_postlaunch:(unint64_t)a3
{
  if (![(MOConfigurationManager *)self _shouldConsiderEventCategory_postlaunch:?])
  {
    LOBYTE(v9) = 0;
    return v9;
  }

  v5 = [MOConfigurationManager getSensedEventGroupSettingNameFromCategory:a3];
  v6 = [MOConfigurationManager getSensedEventSettingNameFromCategory:a3];
  v7 = v6;
  if (!v5)
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = [(MOConfigurationManagerBase *)self getBoolSettingForKey:v5 withFallback:[MOConfigurationManager getFallbackPermission:v5]];
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = [(MOConfigurationManagerBase *)self getBoolSettingForKey:v7 withFallback:v8];
LABEL_8:
  if (a3 == 1)
  {
    fUniverse = self->fUniverse;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [(MODaemonUniverse *)fUniverse getService:v12];

    v9 &= [v13 fetchSignificantLocationEnablementStatus];
  }

  return v9;
}

- (BOOL)_shouldConsiderResourceType_postlaunch:(unint64_t)a3
{
  fUniverse = self->fUniverse;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(MODaemonUniverse *)fUniverse getService:v6];

  v8 = [v7 getCollectAndComputeAuthorization];
  v9 = 0;
  switch(a3)
  {
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 6uLL:
    case 7uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
      v9 = v8 == 2;
      break;
    case 9uLL:
      v9 = (v8 - 1) < 2;
      break;
    default:
      break;
  }

  v10 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [MOConfigurationManager _shouldConsiderResourceType_postlaunch:];
  }

  return v9;
}

- (BOOL)_isAllowedToPromptResourceType_postlaunch:(unint64_t)a3
{
  if (![(MOConfigurationManager *)self _shouldConsiderResourceType_postlaunch:?])
  {
    LOBYTE(v9) = 0;
    return v9;
  }

  v5 = [MOConfigurationManager getSensedEventGroupSettingNameFromResourceType:a3];
  v6 = [MOConfigurationManager getSensedEventSettingNameFromResourceType:a3];
  v7 = v6;
  if (v5)
  {
    v8 = [(MOConfigurationManagerBase *)self getBoolSettingForKey:v5 withFallback:[MOConfigurationManager getFallbackPermission:v5]];
    if (v7)
    {
LABEL_4:
      v9 = [(MOConfigurationManagerBase *)self getBoolSettingForKey:v7 withFallback:v8];
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_4;
    }
  }

  v9 = 0;
LABEL_8:
  if (a3 <= 0xE && ((1 << a3) & 0x5040) != 0)
  {
    fUniverse = self->fUniverse;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [(MODaemonUniverse *)fUniverse getService:v12];

    v9 &= [v13 fetchSignificantLocationEnablementStatus];
  }

  return v9;
}

- (BOOL)isAllowedToProcessEventCategory:(unint64_t)a3
{
  fUniverse = self->fUniverse;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(MODaemonUniverse *)fUniverse getService:v6];

  v8 = 0;
  switch(a3)
  {
    case 1uLL:
      v8 = [v7 fetchSignificantLocationEnablementStatus];
      break;
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 0xAuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
      v8 = 1;
      break;
    default:
      break;
  }

  v9 = _mo_log_facility_get_os_log(&MOLogFacilitySettings);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [MOConfigurationManager isAllowedToProcessEventCategory:];
  }

  return v8;
}

+ (void)getSensedEventSettingNameFromResourceType:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v0 = [NSNumber numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&_mh_execute_header, v1, v2, "Resource type %@ is not implemented", v3, v4, v5, v6, v7);
}

+ (void)getSensedEventGroupSettingNameFromResourceType:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v0 = [NSNumber numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&_mh_execute_header, v1, v2, "Category %@ is not implemented", v3, v4, v5, v6, v7);
}

+ (void)getSensedEventSettingNameFromCategory:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v0 = [NSNumber numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&_mh_execute_header, v1, v2, "Event category %@ is not implemented", v3, v4, v5, v6, v7);
}

- (void)_isAllowedToPromptEventCategory_prelaunch:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [NSNumber numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v1, v2, "isAllowedToPromptEventCategory %@ is %@", v3, v4, v5, v6, v7);
}

- (void)_isAllowedToPromptResourceType_prelaunch:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [NSNumber numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v1, v2, "isAllowedToPromptResourceType %@ is %@", v3, v4, v5, v6, v7);
}

- (void)_shouldConsiderEventCategory_postlaunch:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [NSNumber numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v1, v2, "shouldConsiderEventCategory %@ is %@", v3, v4, v5, v6, v7);
}

- (void)_shouldConsiderResourceType_postlaunch:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [NSNumber numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v1, v2, "shouldConsiderResourceType %@ is %@", v3, v4, v5, v6, v7);
}

- (void)isAllowedToProcessEventCategory:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [NSNumber numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&_mh_execute_header, v1, v2, "isAllowedToProcessEventCategory %@ is %@", v3, v4, v5, v6, v7);
}

@end