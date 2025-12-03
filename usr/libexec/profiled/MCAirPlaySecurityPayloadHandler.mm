@interface MCAirPlaySecurityPayloadHandler
- (void)_setAccessType:(id)type securityType:(id)securityType password:(id)password;
- (void)_setAirPlaySecurityConfiguration;
- (void)_unsetAirPlaySecurityConfiguration;
- (void)remove;
@end

@implementation MCAirPlaySecurityPayloadHandler

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {

    [(MCAirPlaySecurityPayloadHandler *)self _unsetAirPlaySecurityConfiguration];
  }
}

- (void)_setAirPlaySecurityConfiguration
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  profile = [profileHandler profile];
  identifier = [profile identifier];
  profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
  profile2 = [profileHandler2 profile];
  uUID = [profile2 UUID];
  v14 = [NSString stringWithFormat:@"%@-%@", identifier, uUID];

  v9 = +[MCRestrictionManagerWriter sharedManager];
  [v9 setBoolValue:0 forSetting:MCFeatureAirPlaySecuritySettingsUIAllowed sender:v14];

  payload = [(MCNewPayloadHandler *)self payload];
  accessType = [payload accessType];
  securityType = [payload securityType];
  password = [payload password];
  [(MCAirPlaySecurityPayloadHandler *)self _setAccessType:accessType securityType:securityType password:password];
}

- (void)_unsetAirPlaySecurityConfiguration
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  profile = [profileHandler profile];
  identifier = [profile identifier];
  profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
  profile2 = [profileHandler2 profile];
  uUID = [profile2 UUID];
  v10 = [NSString stringWithFormat:@"%@-%@", identifier, uUID];

  v9 = +[MCRestrictionManagerWriter sharedManager];
  [v9 removeBoolSetting:MCFeatureAirPlaySecuritySettingsUIAllowed sender:v10];

  [(MCAirPlaySecurityPayloadHandler *)self _setAccessType:0 securityType:0 password:0];
}

- (void)_setAccessType:(id)type securityType:(id)securityType password:(id)password
{
  v5 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "AirPlay Security payload can only be installed on tvOS", v6, 2u);
  }
}

@end