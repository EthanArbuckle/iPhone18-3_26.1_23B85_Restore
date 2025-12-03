@interface NDTLog
+ (id)facilityWithSubsystem:(id)subsystem category:(id)category;
@end

@implementation NDTLog

+ (id)facilityWithSubsystem:(id)subsystem category:(id)category
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  v7 = objc_alloc_init(NDTLogFacility);
  uTF8String = [subsystemCopy UTF8String];
  uTF8String2 = [categoryCopy UTF8String];

  v10 = os_log_create(uTF8String, uTF8String2);
  os_log_facility = v7->os_log_facility;
  v7->os_log_facility = v10;

  v12 = subsystemCopy;
  if (os_variant_has_internal_diagnostics())
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"obfuscate", v12, &keyExistsAndHasValidFormat))
    {
      v13 = 1;
    }

    else
    {
      v13 = keyExistsAndHasValidFormat == 0;
    }

    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  [NDTLog setObfuscate:v14];

  return v7;
}

@end