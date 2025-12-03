@interface CRCertificationOverridesServiceAgent
+ (NSArray)nextSessionOverrideAirPlayFeatureStrings;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)fetchNextSessionOverrideAirPlayFeatureStringsWithCompletion:(id)completion;
- (void)setNextSessionOverrideAirPlayFeatureStrings:(id)strings completion:(id)completion;
@end

@implementation CRCertificationOverridesServiceAgent

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  objc_opt_class();
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.carkit.certificationOverrides"];
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
    [connectionCopy setExportedInterface:v8];
    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&stru_1000DD738];
    [connectionCopy setInvalidationHandler:&stru_1000DD758];
    v9 = CarCertificationOverrideLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [connectionCopy processIdentifier]);
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "receiving certification override service connection from %@", &v13, 0xCu);
    }

    [connectionCopy resume];
    v11 = 1;
  }

  else
  {
    v8 = CarCertificationOverrideLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10008207C(connectionCopy, v8);
    }

    v11 = 0;
  }

  return v11;
}

- (void)setNextSessionOverrideAirPlayFeatureStrings:(id)strings completion:(id)completion
{
  stringsCopy = strings;
  completionCopy = completion;
  v7 = CarCertificationOverrideLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = stringsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setting next session override AirPlay feature strings: %{public}@", &v8, 0xCu);
  }

  [objc_opt_class() setNextSessionOverrideAirPlayFeatureStrings:stringsCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)fetchNextSessionOverrideAirPlayFeatureStringsWithCompletion:(id)completion
{
  completionCopy = completion;
  nextSessionOverrideAirPlayFeatureStrings = [objc_opt_class() nextSessionOverrideAirPlayFeatureStrings];
  v5 = CarCertificationOverrideLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = nextSessionOverrideAirPlayFeatureStrings;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "returning next session override AirPlay feature strings: %{public}@", &v6, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, nextSessionOverrideAirPlayFeatureStrings, 0);
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