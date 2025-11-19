@interface CLGatheringSettings
- (BOOL)evalScanForceScreenOffOnly;
- (BOOL)getSettings:(id)a3 fallback:(BOOL)a4;
- (CLGatheringSettings)initWithUniverse:(id)a3;
- (void)_setupSettings;
- (void)dealloc;
- (void)onUpdatedSettings:(id)a3;
- (void)overrideWithConfiguration:(id)a3;
@end

@implementation CLGatheringSettings

- (CLGatheringSettings)initWithUniverse:(id)a3
{
  v4.receiver = self;
  v4.super_class = CLGatheringSettings;
  if ([(CLGatheringSettings *)&v4 init])
  {
    operator new();
  }

  [0 _setupSettings];
  return 0;
}

- (void)dealloc
{
  [(CLGatheringSettings *)self setOtaSettings:0];
  [(CLGatheringSettings *)self unregisterForOTASettingsNotification];
  v3.receiver = self;
  v3.super_class = CLGatheringSettings;
  [(CLGatheringSettings *)&v3 dealloc];
}

- (void)onUpdatedSettings:(id)a3
{
  if (qword_1025D4720 != -1)
  {
    sub_101896788();
  }

  v5 = qword_1025D4728;
  if (os_log_type_enabled(qword_1025D4728, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "CLGatheringSettings Received OTA settings %{private}@", &buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189679C(a3);
  }

  [(CLGatheringSettings *)self setOtaSettings:a3];
  if ([(NSDictionary *)self->_otaSettings objectForKeyedSubscript:@"ADPD"])
  {
    v6 = [(NSDictionary *)self->_otaSettings objectForKeyedSubscript:@"ADPD"];
    if ([v6 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "CLGatheringScanForceScreenOffOnly")}])
    {
      v7 = [objc_msgSend(v6 objectForKeyedSubscript:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "CLGatheringScanForceScreenOffOnly")), "BOOLValue"}];
      sub_10001CAF4(&buf);
      sub_100043360(buf, "CLGatheringScanForceScreenOffOnly", &v7);
      if (*(&buf + 1))
      {
        sub_100008080(*(&buf + 1));
      }
    }
  }
}

- (void)_setupSettings
{
  sub_10001CAF4(&v23);
  LOBYTE(v25) = 0;
  v3 = sub_10001CB4C(v23, "CLGatheringScanEnabled", &v25);
  self->_scanEnabled = v3 & v25;
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_10001CAF4(&v23);
  LOBYTE(v25) = 0;
  v4 = sub_10001CB4C(v23, "CLGatheringScanForceNoAopPolicy", &v25);
  self->_scanForceNoAopPolicy = v4 & v25;
  if (v24)
  {
    sub_100008080(v24);
  }

  self->_scanForceScreenOffOnly = [(CLGatheringSettings *)self evalScanForceScreenOffOnly];
  sub_10001CAF4(&v23);
  v25 = 0;
  v5 = sub_1004FBB50(v23, "CLGatheringScanDutyCyle", &v25);
  v6 = v25;
  if (!v5)
  {
    v6 = 35;
  }

  self->_scanDutyCycle = v6;
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_10001CAF4(&v23);
  v25 = 0;
  v7 = sub_1004FBB50(v23, "CLGatheringScanBackgroundDutyCyle", &v25);
  v8 = v25;
  if (!v7)
  {
    v8 = 20;
  }

  self->_scanAonDutyCycle = v8;
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_10001CAF4(&v23);
  v25 = 0;
  v9 = sub_1004FBB50(v23, "CLGatheringScanBackoffTimeout", &v25);
  v10 = v25;
  if (!v9)
  {
    v10 = 15;
  }

  self->_scanBackoffTimeout = v10;
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_10001CAF4(&v23);
  v25 = 0;
  v11 = sub_1004FBB50(v23, "CLGatheringScanPeriodicInterval", &v25);
  v12 = v25;
  if (!v11)
  {
    v12 = 360;
  }

  self->_scanPeriodicInterval = v12;
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_10001CAF4(&v23);
  LOBYTE(v25) = 0;
  v13 = sub_10001CB4C(v23, "CLGatheringScanWithDuplicates", &v25);
  self->_scanWithDuplicates = v13 & v25;
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_10001CAF4(&v23);
  LOBYTE(v25) = 0;
  v14 = sub_10001CB4C(v23, "CLGatheringAdvertiseEnabled", &v25);
  self->_advertiseEnabled = v14 & v25;
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_10001CAF4(&v23);
  v25 = 0;
  v15 = sub_1004FBB50(v23, "CLGatheringAdvertisePeriod", &v25);
  v16 = v25;
  if (!v15)
  {
    v16 = 10;
  }

  self->_advertisePeriod = v16;
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_10001CAF4(&v23);
  v25 = 0;
  v17 = sub_1004FBB50(v23, "CLGatheringLoggingVolatileMaxAge", &v25);
  v18 = v25;
  if (!v17)
  {
    v18 = 1800;
  }

  self->_loggingVolatileMaxAge = v18;
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_10001CAF4(&v23);
  LOBYTE(v25) = 0;
  v19 = sub_10001CB4C(v23, "CLGatheringLoggingPersistentEnabled", &v25);
  self->_loggingPersistentEnabled = v19 & v25;
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_10001CAF4(&v23);
  v25 = 0;
  v20 = sub_1004FBB50(v23, "CLGatheringLoggingPersistentMaxAge", &v25);
  v21 = v25;
  if (!v20)
  {
    v21 = 604800;
  }

  self->_loggingPersistentMaxAge = v21;
  if (v24)
  {
    sub_100008080(v24);
  }

  sub_10001CAF4(&v23);
  LOBYTE(v25) = 0;
  v22 = sub_10001CB4C(v23, "CLGatheringLoggingPersistentInTempFolder", &v25);
  self->_loggingPersistentInTempFolder = v25 & 1 | ((v22 & 1) == 0);
  if (v24)
  {
    sub_100008080(v24);
  }
}

- (BOOL)getSettings:(id)a3 fallback:(BOOL)a4
{
  v12 = 0;
  sub_10001CAF4(&v10);
  v7 = sub_10001CB4C(v10, [a3 cStringUsingEncoding:1], &v12);
  if (v11)
  {
    sub_100008080(v11);
  }

  if (v7)
  {
    return v12;
  }

  else if ([(NSDictionary *)self->_otaSettings objectForKeyedSubscript:@"ADPD"])
  {
    v8 = [(NSDictionary *)self->_otaSettings objectForKeyedSubscript:@"ADPD"];
    if ([v8 objectForKeyedSubscript:a3])
    {
      return [objc_msgSend(v8 objectForKeyedSubscript:{a3), "BOOLValue"}];
    }
  }

  return a4;
}

- (BOOL)evalScanForceScreenOffOnly
{
  v3 = [NSString stringWithUTF8String:"CLGatheringScanForceScreenOffOnly"];

  return [(CLGatheringSettings *)self getSettings:v3 fallback:0];
}

- (void)overrideWithConfiguration:(id)a3
{
  var1 = a3.var1;
  if (a3.var0 == 1)
  {
    sub_10001CAF4(&v21);
    LOBYTE(v23) = 0;
    v6 = sub_10001CB4C(v21, "CLGatheringAdvertiseEnabled", &v23);
    self->_advertiseEnabled = v23 & 1 | ((v6 & 1) == 0);
    if (v22)
    {
      sub_100008080(v22);
    }

    sub_10001CAF4(&v21);
    v23 = 0;
    v7 = sub_1004FBB50(v21, "CLGatheringAdvertisePeriod", &v23);
    v8 = v23;
    if (!v7)
    {
      v8 = 10;
    }

    self->_advertisePeriod = v8;
  }

  else
  {
    if (a3.var0)
    {
      goto LABEL_11;
    }

    sub_10001CAF4(&v21);
    LOBYTE(v23) = 0;
    v5 = sub_10001CB4C(v21, "CLGatheringAdvertiseEnabled", &v23);
    self->_advertiseEnabled = v5 & v23;
  }

  if (v22)
  {
    sub_100008080(v22);
  }

LABEL_11:
  if (var1 == 2)
  {
    sub_10001CAF4(&v21);
    LOBYTE(v23) = 0;
    v17 = sub_10001CB4C(v21, "CLGatheringScanEnabled", &v23);
    self->_scanEnabled = v23 & 1 | ((v17 & 1) == 0);
    if (v22)
    {
      sub_100008080(v22);
    }

    sub_10001CAF4(&v21);
    v23 = 0;
    v18 = sub_1004FBB50(v21, "CLGatheringScanBackgroundDutyCyle", &v23);
    v19 = v23;
    if (!v18)
    {
      v19 = 10;
    }

    self->_scanAonDutyCycle = v19;
    if (v22)
    {
      sub_100008080(v22);
    }

    sub_10001CAF4(&v21);
    v23 = 0;
    v20 = sub_1004FBB50(v21, "CLGatheringScanDutyCyle", &v23);
    v14 = v23;
    v15 = v20 == 0;
    v16 = 30;
    goto LABEL_29;
  }

  if (var1 == 1)
  {
    sub_10001CAF4(&v21);
    LOBYTE(v23) = 0;
    v10 = sub_10001CB4C(v21, "CLGatheringScanEnabled", &v23);
    self->_scanEnabled = v23 & 1 | ((v10 & 1) == 0);
    if (v22)
    {
      sub_100008080(v22);
    }

    sub_10001CAF4(&v21);
    v23 = 0;
    v11 = sub_1004FBB50(v21, "CLGatheringScanBackgroundDutyCyle", &v23);
    v12 = v23;
    if (!v11)
    {
      v12 = 20;
    }

    self->_scanAonDutyCycle = v12;
    if (v22)
    {
      sub_100008080(v22);
    }

    sub_10001CAF4(&v21);
    v23 = 0;
    v13 = sub_1004FBB50(v21, "CLGatheringScanDutyCyle", &v23);
    v14 = v23;
    v15 = v13 == 0;
    v16 = 35;
LABEL_29:
    if (v15)
    {
      v14 = v16;
    }

    self->_scanDutyCycle = v14;
    goto LABEL_33;
  }

  if (var1)
  {
    return;
  }

  sub_10001CAF4(&v21);
  LOBYTE(v23) = 0;
  v9 = sub_10001CB4C(v21, "CLGatheringScanEnabled", &v23);
  self->_scanEnabled = v9 & v23;
LABEL_33:
  if (v22)
  {
    sub_100008080(v22);
  }
}

@end