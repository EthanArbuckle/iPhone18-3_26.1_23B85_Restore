@interface MCNewAPNPayloadHandler
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (void)_remove;
- (void)_sendNotifications;
- (void)remove;
- (void)unsetAside;
@end

@implementation MCNewAPNPayloadHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MCNewAPNPayloadHandler ignoring install because APN payloads are no longer supported", v8, 2u);
  }

  return 1;
}

- (void)_remove
{
  payload = [(MCNewPayloadHandler *)self payload];
  apnDefaults = [payload apnDefaults];
  allKeys = [apnDefaults allKeys];
  v4 = +[MCAPNPayload apnDomainName];
  [MCManagedPreferencesManager removeManagedPreferences:allKeys fromDomain:v4];
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {

    [(MCNewAPNPayloadHandler *)self _remove];
  }
}

- (void)unsetAside
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MCNewAPNPayloadHandler ignoring unset aside because APN payloads are no longer supported", v3, 2u);
  }
}

- (void)_sendNotifications
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MCNewAPNPayloadHandler notifying Core Telephony of APN changes", &v8, 2u);
  }

  v3 = +[MCAPNPayload apnDomainName];
  v10 = v3;
  v4 = [NSArray arrayWithObjects:&v10 count:1];
  [MCManagedPreferencesManager sendManagedPreferencesChangedNotificationForDomains:v4];

  v5 = [[CoreTelephonyClient alloc] initWithQueue:0];
  resetAPNSettings = [v5 resetAPNSettings];
  if (resetAPNSettings)
  {
    v7 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = resetAPNSettings;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MCNewAPNPayloadHandler reset APN settings error: %{public}@", &v8, 0xCu);
    }
  }
}

@end