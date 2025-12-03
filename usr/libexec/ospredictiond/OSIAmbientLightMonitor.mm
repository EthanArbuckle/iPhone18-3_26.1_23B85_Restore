@interface OSIAmbientLightMonitor
- (OSIAmbientLightMonitor)init;
- (int)currentAmbientLightLevel;
@end

@implementation OSIAmbientLightMonitor

- (OSIAmbientLightMonitor)init
{
  v6.receiver = self;
  v6.super_class = OSIAmbientLightMonitor;
  v2 = [(OSIAmbientLightMonitor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BrightnessSystemClient);
    brightnessClient = v2->_brightnessClient;
    v2->_brightnessClient = v3;
  }

  return v2;
}

- (int)currentAmbientLightLevel
{
  v3 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1;
  brightnessClient = self->_brightnessClient;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10002691C;
  v14 = &unk_100095150;
  v16 = &v17;
  v5 = v3;
  v15 = v5;
  [(BrightnessSystemClient *)brightnessClient registerNotificationBlock:&v11 forProperties:&off_10009CC48];
  v6 = [(BrightnessSystemClient *)self->_brightnessClient copyPropertyForKey:@"TrustedLux", v11, v12, v13, v14];
  if (([v6 intValue] & 0x80000000) != 0)
  {
    if ((v18[3] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = dispatch_walltime(0, 2000000000);
    goto LABEL_6;
  }

  intValue = [v6 intValue];
  *(v18 + 6) = intValue;
  if ((intValue & 0x80000000) != 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 0;
LABEL_6:
  dispatch_semaphore_wait(v5, v8);
  [(BrightnessSystemClient *)self->_brightnessClient unregisterNotificationForKey:@"TrustedLux"];
  v9 = *(v18 + 6);

  _Block_object_dispose(&v17, 8);
  return v9;
}

@end