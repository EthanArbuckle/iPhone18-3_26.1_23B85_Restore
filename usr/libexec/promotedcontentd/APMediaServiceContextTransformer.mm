@interface APMediaServiceContextTransformer
- (APMediaServiceContextTransformer)initWithParams:(id)params;
- (id)_adRequestDictionary;
- (id)_capArray:(id)array;
- (id)_locationDictionary;
- (id)_propertiesDictionary;
- (id)_requestDebugInfo;
- (id)_typeDictionary;
- (id)transformedContextJSON:(id *)n;
- (void)_addFrequencyCappingDataToRequestDictionary:(id)dictionary fromSupplementalContext:(id)context;
- (void)_addImpressionCap:(id)cap clickCap:(id)clickCap toDictionary:(id)dictionary;
@end

@implementation APMediaServiceContextTransformer

- (APMediaServiceContextTransformer)initWithParams:(id)params
{
  paramsCopy = params;
  if (paramsCopy)
  {
    v11.receiver = self;
    v11.super_class = APMediaServiceContextTransformer;
    v6 = [(APMediaServiceContextTransformer *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_params, params);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Required parameter missing.", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)transformedContextJSON:(id *)n
{
  v5 = +[NSMutableDictionary dictionary];
  _typeDictionary = [(APMediaServiceContextTransformer *)self _typeDictionary];
  _adRequestDictionary = [(APMediaServiceContextTransformer *)self _adRequestDictionary];
  v8 = _adRequestDictionary;
  if (!_typeDictionary)
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      params = [(APMediaServiceContextTransformer *)self params];
      context = [params context];
      identifier = [context identifier];
      *buf = 138543362;
      v36 = identifier;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error requestType nil %{public}@", buf, 0xCu);
    }

    v41 = NSLocalizedDescriptionKey;
    v42 = @"Error unexpected nil requestType";
    v21 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v22 = 2121;
    goto LABEL_21;
  }

  if (!_adRequestDictionary)
  {
    v23 = APLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      params2 = [(APMediaServiceContextTransformer *)self params];
      context2 = [params2 context];
      identifier2 = [context2 identifier];
      *buf = 138543362;
      v36 = identifier2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Error adRequestDict nil %{public}@", buf, 0xCu);
    }

    v39 = NSLocalizedDescriptionKey;
    v40 = @"Error unexpected nil adRequestDict";
    v21 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v22 = 2122;
LABEL_21:
    v15 = [NSError errorWithDomain:@"APMediaServiceErrorDomain" code:v22 userInfo:v21];

    if (n)
    {
      v27 = v15;
      v16 = 0;
      *n = v15;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_30;
  }

  if (+[APSystemInternal isAppleInternalInstall])
  {
    if (![NSJSONSerialization isValidJSONObject:_typeDictionary])
    {
      v9 = APLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = _typeDictionary;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error not valid json object requestType %@", buf, 0xCu);
      }

      v10 = [NSString stringWithFormat:@"Error transforming context requestType not json"];
      CreateDiagnosticReport();
    }

    if (![NSJSONSerialization isValidJSONObject:v8])
    {
      v11 = APLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error not valid json object adRequestDictionary %@", buf, 0xCu);
      }

      v12 = [NSString stringWithFormat:@"Error transforming context adRequestDict not json"];
      CreateDiagnosticReport();
    }
  }

  [v5 setObject:_typeDictionary forKey:@"type"];
  [v5 setObject:v8 forKey:@"AdRequest"];
  v34 = 0;
  v13 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:&v34];
  v14 = v34;
  v15 = v14;
  if (!v13 || v14)
  {
    if (n)
    {
      v28 = v14;
      *n = v15;
    }

    v29 = APLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      params3 = [(APMediaServiceContextTransformer *)self params];
      context3 = [params3 context];
      identifier3 = [context3 identifier];
      *buf = 138543618;
      v36 = identifier3;
      v37 = 2114;
      v38 = v15;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Error serializing request for context %{public}@: %{public}@", buf, 0x16u);
    }

    v16 = 0;
  }

  else
  {
    v16 = [[NSString alloc] initWithData:v13 encoding:4];
  }

LABEL_30:

  return v16;
}

- (id)_typeDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:&off_100493618 forKey:@"id"];
  params = [(APMediaServiceContextTransformer *)self params];
  placement = [params placement];

  if ((placement - 7006) > 2)
  {
    v6 = @"SLPAdRequest";
  }

  else
  {
    v6 = off_100480E48[(placement - 7006)];
  }

  [v3 setObject:v6 forKey:@"value"];
  [v3 setObject:&off_100493630 forKey:@"version"];

  return v3;
}

- (id)_adRequestDictionary
{
  params = [(APMediaServiceContextTransformer *)self params];
  context = [params context];
  supplementalContext = [context supplementalContext];

  v6 = +[NSMutableDictionary dictionary];
  v7 = [supplementalContext objectForKeyedSubscript:@"RequestType"];
  v8 = v7;
  v9 = @"Regular";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  [v6 setObject:v10 forKey:@"RequestType"];
  params2 = [(APMediaServiceContextTransformer *)self params];
  context2 = [params2 context];
  identifier = [context2 identifier];
  uUIDString = [identifier UUIDString];
  [v6 setObject:uUIDString forKey:@"deviceRequestID"];

  _propertiesDictionary = [(APMediaServiceContextTransformer *)self _propertiesDictionary];
  [v6 setObject:_propertiesDictionary forKey:@"properties"];

  _contextDictionary = [(APMediaServiceContextTransformer *)self _contextDictionary];
  [v6 setObject:_contextDictionary forKey:@"context"];

  params3 = [(APMediaServiceContextTransformer *)self params];
  if ([params3 placement] == 7007)
  {
  }

  else
  {
    params4 = [(APMediaServiceContextTransformer *)self params];
    placement = [params4 placement];

    if (placement != 7008)
    {
      goto LABEL_10;
    }
  }

  params5 = [(APMediaServiceContextTransformer *)self params];
  adamId = [params5 adamId];
  if (adamId)
  {
    [v6 setObject:adamId forKey:@"sourceAppId"];
  }

  else
  {
    v22 = +[NSNull null];
    [v6 setObject:v22 forKey:@"sourceAppId"];
  }

LABEL_10:
  [(APMediaServiceContextTransformer *)self _addFrequencyCappingDataToRequestDictionary:v6 fromSupplementalContext:supplementalContext];
  params6 = [(APMediaServiceContextTransformer *)self params];
  hasOdml = [params6 hasOdml];

  if (hasOdml)
  {
    _odmlProperties = [(APMediaServiceContextTransformer *)self _odmlProperties];
    [v6 setObject:_odmlProperties forKey:@"odmlProperties"];
  }

  return v6;
}

- (id)_propertiesDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  params = [(APMediaServiceContextTransformer *)self params];
  idAccount = [params idAccount];
  dPID = [idAccount DPID];
  if (dPID)
  {
    [v3 setObject:dPID forKey:@"DPIDString"];
  }

  else
  {
    v7 = objc_alloc_init(NSNull);
    [v3 setObject:v7 forKey:@"DPIDString"];
  }

  v8 = +[APDeviceInfo current];
  deviceModel = [v8 deviceModel];
  if (deviceModel)
  {
    [v3 setObject:deviceModel forKey:@"deviceModel"];
  }

  else
  {
    v10 = objc_alloc_init(NSNull);
    [v3 setObject:v10 forKey:@"deviceModel"];
  }

  v11 = +[NSDate date];
  [v11 timeIntervalSince1970];
  v12 = [NSNumber numberWithDouble:?];
  [v3 setObject:v12 forKey:@"clientClockTime"];

  v13 = +[NSTimeZone localTimeZone];
  v14 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [v13 secondsFromGMT] / 3600.0);
  [v3 setObject:v14 forKey:@"timezone"];

  v15 = +[NSProcessInfo processInfo];
  operatingSystemVersionString = [v15 operatingSystemVersionString];
  [v3 setObject:operatingSystemVersionString forKey:@"osVersionAndBuild"];

  params2 = [(APMediaServiceContextTransformer *)self params];
  context = [params2 context];
  supplementalContext = [context supplementalContext];
  v20 = [supplementalContext objectForKey:@"storeFront"];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = objc_alloc_init(NSNull);
  }

  v23 = v22;

  [v3 setObject:v23 forKey:@"iTunesStore"];
  params3 = [(APMediaServiceContextTransformer *)self params];
  context2 = [params3 context];
  supplementalContext2 = [context2 supplementalContext];
  v27 = [supplementalContext2 objectForKey:@"storeFrontLocale"];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = objc_alloc_init(NSNull);
  }

  v30 = v29;

  [v3 setObject:v30 forKey:@"storeFrontLocaleIdentifier"];
  if ([v8 educationModeEnabled])
  {
    v74 = @"EducationMode";
    v31 = &v74;
  }

  else
  {
    v73 = @"Default";
    v31 = &v73;
  }

  v32 = [NSArray arrayWithObjects:v31 count:1];
  [v3 setObject:v32 forKey:@"deviceMode"];

  params4 = [(APMediaServiceContextTransformer *)self params];
  featureFlagProvider = [params4 featureFlagProvider];
  if (([featureFlagProvider toroIDPartialSuppression] & 1) == 0)
  {

    goto LABEL_21;
  }

  params5 = [(APMediaServiceContextTransformer *)self params];
  personalizedAdsEnabled = [params5 personalizedAdsEnabled];

  if (personalizedAdsEnabled)
  {
LABEL_21:
    params6 = [(APMediaServiceContextTransformer *)self params];
    idAccount2 = [params6 idAccount];
    toroID = [idAccount2 toroID];
    uUIDString = [toroID UUIDString];
    [v3 setObject:uUIDString forKey:@"clientId"];

    goto LABEL_22;
  }

  params6 = APLogForCategory();
  if (os_log_type_enabled(params6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, params6, OS_LOG_TYPE_DEFAULT, "ToroID suppression is enabled for APMediaServiceContextTransformer", buf, 2u);
  }

LABEL_22:

  v41 = +[NSMutableArray array];
  params7 = [(APMediaServiceContextTransformer *)self params];
  idAccount3 = [params7 idAccount];

  iTunesDSID = [idAccount3 iTunesDSID];
  v45 = [iTunesDSID isEqualToNumber:&off_100493648];

  if (v45)
  {
    v46 = @"NoAccount";
LABEL_33:
    [v41 addObject:v46];
    goto LABEL_34;
  }

  if ([idAccount3 isManagedAccount])
  {
    [v41 addObject:@"ManagedAccount"];
  }

  if ([idAccount3 ageUnknown])
  {
    v46 = @"AgeUnknown";
    goto LABEL_33;
  }

  if ([idAccount3 isChild])
  {
    v46 = @"U18";
    v47 = @"U13";
LABEL_30:
    [v41 addObject:v47];
    goto LABEL_33;
  }

  if ([idAccount3 isAdolescent])
  {
    v46 = @"U18";
    goto LABEL_33;
  }

  if ([idAccount3 sensitiveContentEligible])
  {
    v46 = @"Consumer";
    v47 = @"SensitiveContentEligible";
    goto LABEL_30;
  }

  if ([idAccount3 isAdult])
  {
    v46 = @"Consumer";
    goto LABEL_33;
  }

LABEL_34:
  [v3 setObject:v41 forKey:@"accountType"];
  monthlyIDResetCount = [idAccount3 monthlyIDResetCount];
  if (monthlyIDResetCount)
  {
    [v3 setObject:monthlyIDResetCount forKey:@"advertisingIdentifierMonthResetCount"];
  }

  else
  {
    v49 = objc_alloc_init(NSNull);
    [v3 setObject:v49 forKey:@"advertisingIdentifierMonthResetCount"];
  }

  if ([v8 personalizedAdsAcknowledged])
  {
    v50 = [v8 personalizedAdsEnabled] ^ 1;
  }

  else
  {
    v50 = 1;
  }

  v51 = [NSNumber numberWithBool:v50];
  [v3 setObject:v51 forKey:@"limitAdTracking"];

  connectionType = [v8 connectionType];
  if (connectionType > 9)
  {
    v53 = @"UnknownConnection";
  }

  else
  {
    v53 = off_100480E60[connectionType];
  }

  [v3 setObject:v53 forKey:@"connectionType"];
  _locationDictionary = [(APMediaServiceContextTransformer *)self _locationDictionary];
  [v3 setObject:_locationDictionary forKey:@"currentLocation"];

  _requestDebugInfo = [(APMediaServiceContextTransformer *)self _requestDebugInfo];
  if (_requestDebugInfo)
  {
    _requestDebugInfo2 = [(APMediaServiceContextTransformer *)self _requestDebugInfo];
    [v3 setObject:_requestDebugInfo2 forKey:@"requestDebugInfo"];
  }

  v69 = idAccount3;
  v70 = v41;
  v71 = v23;
  params8 = [(APMediaServiceContextTransformer *)self params];
  rotatingIdentifiers = [params8 rotatingIdentifiers];

  if (rotatingIdentifiers)
  {
    [v3 setObject:rotatingIdentifiers forKey:@"rotatingIdentifiers"];
  }

  v59 = v30;
  v60 = v8;
  v61 = objc_alloc_init(APJSVersionProvider);
  getJetPackVersion = [v61 getJetPackVersion];

  if (getJetPackVersion)
  {
    [v3 setObject:getJetPackVersion forKey:@"jsVersion"];
  }

  params9 = [(APMediaServiceContextTransformer *)self params];
  featureFlagProvider2 = [params9 featureFlagProvider];
  capabilityEngine = [featureFlagProvider2 capabilityEngine];
  build = [capabilityEngine build];

  v67 = [NSNumber numberWithInt:build];
  [v3 setObject:v67 forKey:@"featureEnabledBitmap"];

  return v3;
}

- (id)_locationDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  locationInfo = +[APDeviceInfo current];
  if ([locationInfo educationModeEnabled])
  {
LABEL_2:

    goto LABEL_4;
  }

  v5 = +[APIDAccountProvider privateUserAccount];
  isManagedAccount = [v5 isManagedAccount];

  if ((isManagedAccount & 1) == 0)
  {
    params = [(APMediaServiceContextTransformer *)self params];
    clientInfo = [params clientInfo];
    locationInfo = [clientInfo locationInfo];

    if (locationInfo && ([locationInfo isEmpty] & 1) == 0)
    {
      isoCountryCode = [locationInfo isoCountryCode];

      if (isoCountryCode)
      {
        isoCountryCode2 = [locationInfo isoCountryCode];
        [v3 setObject:isoCountryCode2 forKey:@"isoCountryCode"];
      }

      postalCode = [locationInfo postalCode];

      if (postalCode)
      {
        postalCode2 = [locationInfo postalCode];
        [v3 setObject:postalCode2 forKey:@"postalCode"];
      }

      administrativeArea = [locationInfo administrativeArea];

      if (administrativeArea)
      {
        administrativeArea2 = [locationInfo administrativeArea];
        [v3 setObject:administrativeArea2 forKey:@"administrativeArea"];
      }

      isoCountryCode3 = [locationInfo isoCountryCode];

      if (isoCountryCode3)
      {
        isoCountryCode4 = [locationInfo isoCountryCode];
        [v3 setObject:isoCountryCode4 forKey:@"isoCountryCode"];
      }

      locality = [locationInfo locality];

      if (locality)
      {
        locality2 = [locationInfo locality];
        [v3 setObject:locality2 forKey:@"locality"];
      }

      subAdministrativeArea = [locationInfo subAdministrativeArea];

      if (subAdministrativeArea)
      {
        subAdministrativeArea2 = [locationInfo subAdministrativeArea];
        [v3 setObject:subAdministrativeArea2 forKey:@"subAdministrativeArea"];
      }
    }

    goto LABEL_2;
  }

LABEL_4:

  return v3;
}

- (id)_requestDebugInfo
{
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v3 = +[NSMutableDictionary dictionary];
    v4 = +[APMediaServiceRequestSettings settings];
    params = [(APMediaServiceContextTransformer *)self params];
    v6 = [v4 campaignNamespaceForPlacement:{objc_msgSend(params, "placement")}];

    if (v6)
    {
      [v3 setObject:v6 forKey:@"campaignNamespace"];
    }

    v7 = [NSUserDefaults alloc];
    v8 = [v7 initWithSuiteName:APDefaultsBundleID];
    v9 = [v8 objectForKey:@"ToroTestClient"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &__kCFBooleanTrue;
    }

    [v3 setObject:v11 forKey:@"isTest"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_capArray:(id)array
{
  arrayCopy = array;
  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [arrayCopy allKeys];
  v5 = [obj countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v18[1] = @"value";
        v19[0] = v9;
        v18[0] = @"key";
        v10 = [arrayCopy objectForKeyedSubscript:?];
        v19[1] = v10;
        v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
        [v4 addObject:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)_addImpressionCap:(id)cap clickCap:(id)clickCap toDictionary:(id)dictionary
{
  capCopy = cap;
  clickCapCopy = clickCap;
  dictionaryCopy = dictionary;
  if (capCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [(APMediaServiceContextTransformer *)self _capArray:capCopy];
  }

  else
  {
    v10 = +[NSArray array];
  }

  v11 = v10;
  [dictionaryCopy setObject:v10 forKey:@"impressionCapDataByAdamId"];

  if (clickCapCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [(APMediaServiceContextTransformer *)self _capArray:clickCapCopy];
  }

  else
  {
    v12 = +[NSArray array];
  }

  v13 = v12;
  [dictionaryCopy setObject:v12 forKey:@"clickCapDataByAdamId"];
}

- (void)_addFrequencyCappingDataToRequestDictionary:(id)dictionary fromSupplementalContext:(id)context
{
  dictionaryCopy = dictionary;
  contextCopy = context;
  params = [(APMediaServiceContextTransformer *)self params];
  placement = [params placement];

  if (placement == 7006)
  {
    v9 = +[NSMutableDictionary dictionary];
    [dictionaryCopy setObject:v9 forKeyedSubscript:@"TodaySlot1"];
    v10 = [contextCopy objectForKey:@"impressionCap"];
    v11 = [contextCopy objectForKey:@"clickCap"];
    [(APMediaServiceContextTransformer *)self _addImpressionCap:v10 clickCap:v11 toDictionary:v9];

    v12 = [contextCopy objectForKey:@"additionalImpressionCaps"];
    v13 = [contextCopy objectForKey:@"additionalClickCaps"];

    v14 = +[NSMutableDictionary dictionary];

    [dictionaryCopy setObject:v14 forKeyedSubscript:@"TodaySlot2"];
    v15 = [v12 objectForKey:&off_100493660];
    v16 = [v13 objectForKey:&off_100493660];
    [(APMediaServiceContextTransformer *)self _addImpressionCap:v15 clickCap:v16 toDictionary:v14];

    v17 = [v12 objectForKey:&off_100493678];
    v18 = [v13 objectForKey:&off_100493678];
    if (v17 | v18)
    {
      v19 = +[NSMutableDictionary dictionary];

      [dictionaryCopy setObject:v19 forKeyedSubscript:@"TodaySlot3"];
      [(APMediaServiceContextTransformer *)self _addImpressionCap:v17 clickCap:v18 toDictionary:v19];
      v14 = v19;
    }
  }

  else
  {
    v14 = [contextCopy objectForKey:@"impressionCap"];
    v12 = [contextCopy objectForKey:@"clickCap"];

    [(APMediaServiceContextTransformer *)self _addImpressionCap:v14 clickCap:v12 toDictionary:dictionaryCopy];
  }
}

@end