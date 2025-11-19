@interface APMediaServiceContextTransformer
- (APMediaServiceContextTransformer)initWithParams:(id)a3;
- (id)_adRequestDictionary;
- (id)_capArray:(id)a3;
- (id)_locationDictionary;
- (id)_propertiesDictionary;
- (id)_requestDebugInfo;
- (id)_typeDictionary;
- (id)transformedContextJSON:(id *)a3;
- (void)_addFrequencyCappingDataToRequestDictionary:(id)a3 fromSupplementalContext:(id)a4;
- (void)_addImpressionCap:(id)a3 clickCap:(id)a4 toDictionary:(id)a5;
@end

@implementation APMediaServiceContextTransformer

- (APMediaServiceContextTransformer)initWithParams:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = APMediaServiceContextTransformer;
    v6 = [(APMediaServiceContextTransformer *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_params, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Required parameter missing.", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)transformedContextJSON:(id *)a3
{
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(APMediaServiceContextTransformer *)self _typeDictionary];
  v7 = [(APMediaServiceContextTransformer *)self _adRequestDictionary];
  v8 = v7;
  if (!v6)
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(APMediaServiceContextTransformer *)self params];
      v19 = [v18 context];
      v20 = [v19 identifier];
      *buf = 138543362;
      v36 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error requestType nil %{public}@", buf, 0xCu);
    }

    v41 = NSLocalizedDescriptionKey;
    v42 = @"Error unexpected nil requestType";
    v21 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v22 = 2121;
    goto LABEL_21;
  }

  if (!v7)
  {
    v23 = APLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [(APMediaServiceContextTransformer *)self params];
      v25 = [v24 context];
      v26 = [v25 identifier];
      *buf = 138543362;
      v36 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Error adRequestDict nil %{public}@", buf, 0xCu);
    }

    v39 = NSLocalizedDescriptionKey;
    v40 = @"Error unexpected nil adRequestDict";
    v21 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v22 = 2122;
LABEL_21:
    v15 = [NSError errorWithDomain:@"APMediaServiceErrorDomain" code:v22 userInfo:v21];

    if (a3)
    {
      v27 = v15;
      v16 = 0;
      *a3 = v15;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_30;
  }

  if (+[APSystemInternal isAppleInternalInstall])
  {
    if (![NSJSONSerialization isValidJSONObject:v6])
    {
      v9 = APLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v6;
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

  [v5 setObject:v6 forKey:@"type"];
  [v5 setObject:v8 forKey:@"AdRequest"];
  v34 = 0;
  v13 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:&v34];
  v14 = v34;
  v15 = v14;
  if (!v13 || v14)
  {
    if (a3)
    {
      v28 = v14;
      *a3 = v15;
    }

    v29 = APLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [(APMediaServiceContextTransformer *)self params];
      v31 = [v30 context];
      v32 = [v31 identifier];
      *buf = 138543618;
      v36 = v32;
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
  v4 = [(APMediaServiceContextTransformer *)self params];
  v5 = [v4 placement];

  if ((v5 - 7006) > 2)
  {
    v6 = @"SLPAdRequest";
  }

  else
  {
    v6 = off_100480E48[(v5 - 7006)];
  }

  [v3 setObject:v6 forKey:@"value"];
  [v3 setObject:&off_100493630 forKey:@"version"];

  return v3;
}

- (id)_adRequestDictionary
{
  v3 = [(APMediaServiceContextTransformer *)self params];
  v4 = [v3 context];
  v5 = [v4 supplementalContext];

  v6 = +[NSMutableDictionary dictionary];
  v7 = [v5 objectForKeyedSubscript:@"RequestType"];
  v8 = v7;
  v9 = @"Regular";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  [v6 setObject:v10 forKey:@"RequestType"];
  v11 = [(APMediaServiceContextTransformer *)self params];
  v12 = [v11 context];
  v13 = [v12 identifier];
  v14 = [v13 UUIDString];
  [v6 setObject:v14 forKey:@"deviceRequestID"];

  v15 = [(APMediaServiceContextTransformer *)self _propertiesDictionary];
  [v6 setObject:v15 forKey:@"properties"];

  v16 = [(APMediaServiceContextTransformer *)self _contextDictionary];
  [v6 setObject:v16 forKey:@"context"];

  v17 = [(APMediaServiceContextTransformer *)self params];
  if ([v17 placement] == 7007)
  {
  }

  else
  {
    v18 = [(APMediaServiceContextTransformer *)self params];
    v19 = [v18 placement];

    if (v19 != 7008)
    {
      goto LABEL_10;
    }
  }

  v20 = [(APMediaServiceContextTransformer *)self params];
  v21 = [v20 adamId];
  if (v21)
  {
    [v6 setObject:v21 forKey:@"sourceAppId"];
  }

  else
  {
    v22 = +[NSNull null];
    [v6 setObject:v22 forKey:@"sourceAppId"];
  }

LABEL_10:
  [(APMediaServiceContextTransformer *)self _addFrequencyCappingDataToRequestDictionary:v6 fromSupplementalContext:v5];
  v23 = [(APMediaServiceContextTransformer *)self params];
  v24 = [v23 hasOdml];

  if (v24)
  {
    v25 = [(APMediaServiceContextTransformer *)self _odmlProperties];
    [v6 setObject:v25 forKey:@"odmlProperties"];
  }

  return v6;
}

- (id)_propertiesDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(APMediaServiceContextTransformer *)self params];
  v5 = [v4 idAccount];
  v6 = [v5 DPID];
  if (v6)
  {
    [v3 setObject:v6 forKey:@"DPIDString"];
  }

  else
  {
    v7 = objc_alloc_init(NSNull);
    [v3 setObject:v7 forKey:@"DPIDString"];
  }

  v8 = +[APDeviceInfo current];
  v9 = [v8 deviceModel];
  if (v9)
  {
    [v3 setObject:v9 forKey:@"deviceModel"];
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
  v16 = [v15 operatingSystemVersionString];
  [v3 setObject:v16 forKey:@"osVersionAndBuild"];

  v17 = [(APMediaServiceContextTransformer *)self params];
  v18 = [v17 context];
  v19 = [v18 supplementalContext];
  v20 = [v19 objectForKey:@"storeFront"];
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
  v24 = [(APMediaServiceContextTransformer *)self params];
  v25 = [v24 context];
  v26 = [v25 supplementalContext];
  v27 = [v26 objectForKey:@"storeFrontLocale"];
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

  v33 = [(APMediaServiceContextTransformer *)self params];
  v34 = [v33 featureFlagProvider];
  if (([v34 toroIDPartialSuppression] & 1) == 0)
  {

    goto LABEL_21;
  }

  v35 = [(APMediaServiceContextTransformer *)self params];
  v36 = [v35 personalizedAdsEnabled];

  if (v36)
  {
LABEL_21:
    v37 = [(APMediaServiceContextTransformer *)self params];
    v38 = [v37 idAccount];
    v39 = [v38 toroID];
    v40 = [v39 UUIDString];
    [v3 setObject:v40 forKey:@"clientId"];

    goto LABEL_22;
  }

  v37 = APLogForCategory();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "ToroID suppression is enabled for APMediaServiceContextTransformer", buf, 2u);
  }

LABEL_22:

  v41 = +[NSMutableArray array];
  v42 = [(APMediaServiceContextTransformer *)self params];
  v43 = [v42 idAccount];

  v44 = [v43 iTunesDSID];
  v45 = [v44 isEqualToNumber:&off_100493648];

  if (v45)
  {
    v46 = @"NoAccount";
LABEL_33:
    [v41 addObject:v46];
    goto LABEL_34;
  }

  if ([v43 isManagedAccount])
  {
    [v41 addObject:@"ManagedAccount"];
  }

  if ([v43 ageUnknown])
  {
    v46 = @"AgeUnknown";
    goto LABEL_33;
  }

  if ([v43 isChild])
  {
    v46 = @"U18";
    v47 = @"U13";
LABEL_30:
    [v41 addObject:v47];
    goto LABEL_33;
  }

  if ([v43 isAdolescent])
  {
    v46 = @"U18";
    goto LABEL_33;
  }

  if ([v43 sensitiveContentEligible])
  {
    v46 = @"Consumer";
    v47 = @"SensitiveContentEligible";
    goto LABEL_30;
  }

  if ([v43 isAdult])
  {
    v46 = @"Consumer";
    goto LABEL_33;
  }

LABEL_34:
  [v3 setObject:v41 forKey:@"accountType"];
  v48 = [v43 monthlyIDResetCount];
  if (v48)
  {
    [v3 setObject:v48 forKey:@"advertisingIdentifierMonthResetCount"];
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

  v52 = [v8 connectionType];
  if (v52 > 9)
  {
    v53 = @"UnknownConnection";
  }

  else
  {
    v53 = off_100480E60[v52];
  }

  [v3 setObject:v53 forKey:@"connectionType"];
  v54 = [(APMediaServiceContextTransformer *)self _locationDictionary];
  [v3 setObject:v54 forKey:@"currentLocation"];

  v55 = [(APMediaServiceContextTransformer *)self _requestDebugInfo];
  if (v55)
  {
    v56 = [(APMediaServiceContextTransformer *)self _requestDebugInfo];
    [v3 setObject:v56 forKey:@"requestDebugInfo"];
  }

  v69 = v43;
  v70 = v41;
  v71 = v23;
  v57 = [(APMediaServiceContextTransformer *)self params];
  v58 = [v57 rotatingIdentifiers];

  if (v58)
  {
    [v3 setObject:v58 forKey:@"rotatingIdentifiers"];
  }

  v59 = v30;
  v60 = v8;
  v61 = objc_alloc_init(APJSVersionProvider);
  v62 = [v61 getJetPackVersion];

  if (v62)
  {
    [v3 setObject:v62 forKey:@"jsVersion"];
  }

  v63 = [(APMediaServiceContextTransformer *)self params];
  v64 = [v63 featureFlagProvider];
  v65 = [v64 capabilityEngine];
  v66 = [v65 build];

  v67 = [NSNumber numberWithInt:v66];
  [v3 setObject:v67 forKey:@"featureEnabledBitmap"];

  return v3;
}

- (id)_locationDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[APDeviceInfo current];
  if ([v4 educationModeEnabled])
  {
LABEL_2:

    goto LABEL_4;
  }

  v5 = +[APIDAccountProvider privateUserAccount];
  v6 = [v5 isManagedAccount];

  if ((v6 & 1) == 0)
  {
    v8 = [(APMediaServiceContextTransformer *)self params];
    v9 = [v8 clientInfo];
    v4 = [v9 locationInfo];

    if (v4 && ([v4 isEmpty] & 1) == 0)
    {
      v10 = [v4 isoCountryCode];

      if (v10)
      {
        v11 = [v4 isoCountryCode];
        [v3 setObject:v11 forKey:@"isoCountryCode"];
      }

      v12 = [v4 postalCode];

      if (v12)
      {
        v13 = [v4 postalCode];
        [v3 setObject:v13 forKey:@"postalCode"];
      }

      v14 = [v4 administrativeArea];

      if (v14)
      {
        v15 = [v4 administrativeArea];
        [v3 setObject:v15 forKey:@"administrativeArea"];
      }

      v16 = [v4 isoCountryCode];

      if (v16)
      {
        v17 = [v4 isoCountryCode];
        [v3 setObject:v17 forKey:@"isoCountryCode"];
      }

      v18 = [v4 locality];

      if (v18)
      {
        v19 = [v4 locality];
        [v3 setObject:v19 forKey:@"locality"];
      }

      v20 = [v4 subAdministrativeArea];

      if (v20)
      {
        v21 = [v4 subAdministrativeArea];
        [v3 setObject:v21 forKey:@"subAdministrativeArea"];
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
    v5 = [(APMediaServiceContextTransformer *)self params];
    v6 = [v4 campaignNamespaceForPlacement:{objc_msgSend(v5, "placement")}];

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

- (id)_capArray:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [v3 allKeys];
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
        v10 = [v3 objectForKeyedSubscript:?];
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

- (void)_addImpressionCap:(id)a3 clickCap:(id)a4 toDictionary:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [(APMediaServiceContextTransformer *)self _capArray:v14];
  }

  else
  {
    v10 = +[NSArray array];
  }

  v11 = v10;
  [v9 setObject:v10 forKey:@"impressionCapDataByAdamId"];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [(APMediaServiceContextTransformer *)self _capArray:v8];
  }

  else
  {
    v12 = +[NSArray array];
  }

  v13 = v12;
  [v9 setObject:v12 forKey:@"clickCapDataByAdamId"];
}

- (void)_addFrequencyCappingDataToRequestDictionary:(id)a3 fromSupplementalContext:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [(APMediaServiceContextTransformer *)self params];
  v8 = [v7 placement];

  if (v8 == 7006)
  {
    v9 = +[NSMutableDictionary dictionary];
    [v20 setObject:v9 forKeyedSubscript:@"TodaySlot1"];
    v10 = [v6 objectForKey:@"impressionCap"];
    v11 = [v6 objectForKey:@"clickCap"];
    [(APMediaServiceContextTransformer *)self _addImpressionCap:v10 clickCap:v11 toDictionary:v9];

    v12 = [v6 objectForKey:@"additionalImpressionCaps"];
    v13 = [v6 objectForKey:@"additionalClickCaps"];

    v14 = +[NSMutableDictionary dictionary];

    [v20 setObject:v14 forKeyedSubscript:@"TodaySlot2"];
    v15 = [v12 objectForKey:&off_100493660];
    v16 = [v13 objectForKey:&off_100493660];
    [(APMediaServiceContextTransformer *)self _addImpressionCap:v15 clickCap:v16 toDictionary:v14];

    v17 = [v12 objectForKey:&off_100493678];
    v18 = [v13 objectForKey:&off_100493678];
    if (v17 | v18)
    {
      v19 = +[NSMutableDictionary dictionary];

      [v20 setObject:v19 forKeyedSubscript:@"TodaySlot3"];
      [(APMediaServiceContextTransformer *)self _addImpressionCap:v17 clickCap:v18 toDictionary:v19];
      v14 = v19;
    }
  }

  else
  {
    v14 = [v6 objectForKey:@"impressionCap"];
    v12 = [v6 objectForKey:@"clickCap"];

    [(APMediaServiceContextTransformer *)self _addImpressionCap:v14 clickCap:v12 toDictionary:v20];
  }
}

@end