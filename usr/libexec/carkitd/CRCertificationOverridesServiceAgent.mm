@interface CRCertificationOverridesServiceAgent
+ (NSArray)nextSessionOverrideAirPlayFeatureStrings;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)fetchNextSessionOverrideAirPlayFeatureStringsWithCompletion:(id)a3;
- (void)setNextSessionOverrideAirPlayFeatureStrings:(id)a3 completion:(id)a4;
@end

@implementation CRCertificationOverridesServiceAgent

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  objc_opt_class();
  v6 = [v5 valueForEntitlement:@"com.apple.private.carkit.certificationOverrides"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && ([v7 BOOLValue] & 1) != 0)
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRCertificationOverridesService];
    [v5 setExportedInterface:v8];
    [v5 setExportedObject:self];
    [v5 setInterruptionHandler:&stru_1000DD738];
    [v5 setInvalidationHandler:&stru_1000DD758];
    v9 = CarCertificationOverrideLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 processIdentifier]);
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "receiving certification override service connection from %@", &v13, 0xCu);
    }

    [v5 resume];
    v11 = 1;
  }

  else
  {
    v8 = CarCertificationOverrideLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10008207C(v5, v8);
    }

    v11 = 0;
  }

  return v11;
}

- (void)setNextSessionOverrideAirPlayFeatureStrings:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CarCertificationOverrideLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setting next session override AirPlay feature strings: %{public}@", &v8, 0xCu);
  }

  [objc_opt_class() setNextSessionOverrideAirPlayFeatureStrings:v5];
  if (v6)
  {
    v6[2](v6, 1, 0);
  }
}

- (void)fetchNextSessionOverrideAirPlayFeatureStringsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() nextSessionOverrideAirPlayFeatureStrings];
  v5 = CarCertificationOverrideLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "returning next session override AirPlay feature strings: %{public}@", &v6, 0xCu);
  }

  if (v3)
  {
    v3[2](v3, v4, 0);
  }
}

+ (NSArray)nextSessionOverrideAirPlayFeatureStrings
{
  v2 = CFPreferencesCopyAppValue(@"AirPlayFeatures", @"com.apple.carplay.certification");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v3 = [NSPredicate predicateWithBlock:&stru_1000DD798];
  v4 = [v2 filteredArrayUsingPredicate:v3];
  v5 = [v4 count];

  if (v5)
  {
    v6 = CarCertificationOverrideLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100082118(v2, v6);
    }

    goto LABEL_6;
  }

  v7 = v2;
LABEL_7:

  return v7;
}

@end