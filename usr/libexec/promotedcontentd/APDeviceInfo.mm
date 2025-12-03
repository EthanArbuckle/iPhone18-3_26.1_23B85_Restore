@interface APDeviceInfo
+ (APDeviceInfo)current;
- (APDeviceInfo)init;
- (BOOL)educationModeEnabled;
- (BOOL)personalizedAdsAcknowledged;
- (NSString)deviceModel;
- (NSString)osVersionAndBuild;
- (id)userAgentStringForBundleID:(id)d storefront:(id)storefront;
- (int64_t)connectionType;
- (void)_retrievePersonalizedAdsValue;
@end

@implementation APDeviceInfo

- (void)_retrievePersonalizedAdsValue
{
  v3 = objc_alloc_init(ADTrackingTransparency);
  -[APDeviceInfo setPersonalizedAdsEnabled:](self, "setPersonalizedAdsEnabled:", [v3 personalizedAds]);
  self->_personalizedAdsAcknowledged = [v3 acknowledgedVersionForPersonalizedAds] > 0;
}

+ (APDeviceInfo)current
{
  if (qword_1004E68E8 != -1)
  {
    sub_100393A58();
  }

  v3 = qword_1004E68E0;

  return v3;
}

- (APDeviceInfo)init
{
  v14.receiver = self;
  v14.super_class = APDeviceInfo;
  v2 = [(APDeviceInfo *)&v14 init];
  if (v2)
  {
    v3 = +[APTelephony telephony];
    telephony = v2->_telephony;
    v2->_telephony = v3;

    [(APDeviceInfo *)v2 _retrievePersonalizedAdsValue];
    objc_initWeak(&location, v2);
    v5 = +[NSDistributedNotificationCenter defaultCenter];
    v6 = kAPAccountChangedNotification;
    v7 = kAPAdLibBundleID;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100002614;
    v11[3] = &unk_10047C8E0;
    objc_copyWeak(&v12, &location);
    v8 = [v5 addObserverForName:v6 object:v7 queue:0 usingBlock:v11];
    notificationObject = v2->_notificationObject;
    v2->_notificationObject = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (NSString)deviceModel
{
  if (+[APSystemInternal isAppleInternalInstall](APSystemInternal, "isAppleInternalInstall") && (+[APDeviceInfoSettings settings](APDeviceInfoSettings, "settings"), v2 = objc_claimAutoreleasedReturnValue(), [v2 deviceTypeOverride], v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    v4 = +[APDeviceInfoSettings settings];
    deviceTypeOverride = [v4 deviceTypeOverride];
  }

  else
  {
    deviceTypeOverride = +[APSystemInfo deviceModel];
  }

  return deviceTypeOverride;
}

- (NSString)osVersionAndBuild
{
  if (+[APSystemInternal isAppleInternalInstall](APSystemInternal, "isAppleInternalInstall") && (+[APDeviceInfoSettings settings](APDeviceInfoSettings, "settings"), v2 = objc_claimAutoreleasedReturnValue(), [v2 osVersionOverride], v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3))
  {
    v4 = +[APDeviceInfoSettings settings];
    osVersionOverride = [v4 osVersionOverride];
  }

  else
  {
    osVersionOverride = +[APSystemInfo systemDescription];
  }

  return osVersionOverride;
}

- (id)userAgentStringForBundleID:(id)d storefront:(id)storefront
{
  storefrontCopy = storefront;
  dCopy = d;
  deviceModel = [(APDeviceInfo *)self deviceModel];
  osVersionAndBuild = [(APDeviceInfo *)self osVersionAndBuild];
  storefrontCopy = [NSString stringWithFormat:@"%@ %@; %@; %@", deviceModel, osVersionAndBuild, dCopy, storefrontCopy];;

  return storefrontCopy;
}

- (BOOL)educationModeEnabled
{
  v2 = +[UMUserManager sharedManager];
  isSharedIPad = [v2 isSharedIPad];

  return isSharedIPad;
}

- (int64_t)connectionType
{
  if (![(APTelephony *)self->_telephony networkDataValid])
  {
    return -1;
  }

  telephony = self->_telephony;

  return [(APTelephony *)telephony networkType];
}

- (BOOL)personalizedAdsAcknowledged
{
  if (self->_personalizedAdsAcknowledged)
  {
    return 1;
  }

  else
  {
    v4 = objc_alloc_init(ADTrackingTransparency);
    self->_personalizedAdsAcknowledged = [v4 acknowledgedVersionForPersonalizedAds] > 0;

    return self->_personalizedAdsAcknowledged;
  }
}

@end