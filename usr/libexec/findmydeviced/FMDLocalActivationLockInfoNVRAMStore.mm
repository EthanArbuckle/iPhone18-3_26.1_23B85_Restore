@interface FMDLocalActivationLockInfoNVRAMStore
- (id)_statusFromStringValue:(id)value;
- (id)retrieveActivationLockStatus;
- (id)retrieveMaskedAppleID;
- (id)retrieveOfflineFindingInfo;
- (id)retrieveOfflineFindingStatus;
- (void)clearMaskedAppleID;
- (void)clearOfflineFindingInfo;
- (void)updateActivationLockStatus:(id)status;
- (void)updateMaskedAppleID:(id)d;
- (void)updateOfflineFindingInfo:(id)info;
- (void)updateOfflineFindingStatus:(id)status;
@end

@implementation FMDLocalActivationLockInfoNVRAMStore

- (void)updateMaskedAppleID:(id)d
{
  dCopy = d;
  v4 = +[FMDNVRAMUtil sharedInstance];
  [v4 setStringPropertyWithKey:@"40A0DDD2-77F8-4392-B4A3-1E7304206516:fm-account-masked" value:dCopy];
}

- (id)retrieveMaskedAppleID
{
  v2 = +[FMDNVRAMUtil sharedInstance];
  v3 = [v2 stringValueForKey:@"40A0DDD2-77F8-4392-B4A3-1E7304206516:fm-account-masked"];

  if (v3 && ![v3 length])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)clearMaskedAppleID
{
  v2 = +[FMDNVRAMUtil sharedInstance];
  [v2 clearPropertyWithKey:@"40A0DDD2-77F8-4392-B4A3-1E7304206516:fm-account-masked"];
}

- (void)updateActivationLockStatus:(id)status
{
  bOOLValue = [status BOOLValue];
  v4 = @"NO";
  if (bOOLValue)
  {
    v4 = @"YES";
  }

  v5 = v4;
  v6 = +[FMDNVRAMUtil sharedInstance];
  [v6 setStringPropertyWithKey:@"40A0DDD2-77F8-4392-B4A3-1E7304206516:fm-activation-locked" value:v5];
}

- (id)retrieveActivationLockStatus
{
  v3 = +[FMDNVRAMUtil sharedInstance];
  v4 = [v3 stringValueForKey:@"40A0DDD2-77F8-4392-B4A3-1E7304206516:fm-activation-locked"];

  v5 = [(FMDLocalActivationLockInfoNVRAMStore *)self _statusFromStringValue:v4];

  return v5;
}

- (void)updateOfflineFindingStatus:(id)status
{
  bOOLValue = [status BOOLValue];
  v4 = @"NO";
  if (bOOLValue)
  {
    v4 = @"YES";
  }

  v5 = v4;
  v6 = +[FMDNVRAMUtil sharedInstance];
  [v6 setStringPropertyWithKey:@"40A0DDD2-77F8-4392-B4A3-1E7304206516:fm-spstatus" value:v5];
}

- (id)retrieveOfflineFindingStatus
{
  v3 = +[FMDNVRAMUtil sharedInstance];
  v4 = [v3 stringValueForKey:@"40A0DDD2-77F8-4392-B4A3-1E7304206516:fm-spstatus"];

  v5 = [(FMDLocalActivationLockInfoNVRAMStore *)self _statusFromStringValue:v4];

  return v5;
}

- (void)updateOfflineFindingInfo:(id)info
{
  infoCopy = info;
  v4 = +[FMDNVRAMUtil sharedInstance];
  [v4 setDataPropertyWithKey:@"40A0DDD2-77F8-4392-B4A3-1E7304206516:fm-spkeys" value:infoCopy];
}

- (id)retrieveOfflineFindingInfo
{
  v2 = +[FMDNVRAMUtil sharedInstance];
  v3 = [v2 dataValueForKey:@"40A0DDD2-77F8-4392-B4A3-1E7304206516:fm-spkeys"];

  return v3;
}

- (void)clearOfflineFindingInfo
{
  v2 = +[FMDNVRAMUtil sharedInstance];
  [v2 clearPropertyWithKey:@"40A0DDD2-77F8-4392-B4A3-1E7304206516:fm-spkeys"];
}

- (id)_statusFromStringValue:(id)value
{
  valueCopy = value;
  v4 = valueCopy;
  if (!valueCopy)
  {
    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "status Key not found in nvram", v8, 2u);
    }

    goto LABEL_10;
  }

  if (([valueCopy isEqualToString:@"YES"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"NO"])
    {
      v5 = &__kCFBooleanFalse;
      goto LABEL_11;
    }

    v6 = sub_100002880();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1002274C8(v4, v6);
    }

LABEL_10:

    v5 = 0;
    goto LABEL_11;
  }

  v5 = &__kCFBooleanTrue;
LABEL_11:

  return v5;
}

@end