@interface MCNewAPNPayloadHandler
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (void)_remove;
- (void)_sendNotifications;
- (void)remove;
- (void)unsetAside;
@end

@implementation MCNewAPNPayloadHandler

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
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
  v5 = [(MCNewPayloadHandler *)self payload];
  v2 = [v5 apnDefaults];
  v3 = [v2 allKeys];
  v4 = +[MCAPNPayload apnDomainName];
  [MCManagedPreferencesManager removeManagedPreferences:v3 fromDomain:v4];
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if ((v4 & 1) == 0)
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
  v6 = [v5 resetAPNSettings];
  if (v6)
  {
    v7 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MCNewAPNPayloadHandler reset APN settings error: %{public}@", &v8, 0xCu);
    }
  }
}

@end