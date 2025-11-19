@interface APAdBatchRequester
- ($F24F406B2B787EFB06265DBA3D28CBD5)_computeMinimumSize:(id)a3;
- (APAdBatchRequester)initWithBatch:(id)a3 bundleID:(id)a4 requestIdentifier:(id)a5 clientInfo:(id)a6 idAccount:(id)a7;
- (BOOL)_canSendLocationInformationForClientInfo:(id)a3;
- (NSArray)requestParameters;
- (id)batchResponseFromBase64EncodedString:(id)a3;
- (id)headers;
- (id)protoBuffer;
- (id)requestFromRequestID:(id)a3;
- (id)requestProperties;
- (void)addAccountProperties:(id)a3;
- (void)addClientInfoProperties:(id)a3;
- (void)addContentRestrictionProperties:(id)a3;
- (void)addDeviceInfoProperties:(id)a3;
- (void)addMiscellaneousProperties:(id)a3;
- (void)addPandoraTestProperties:(id)a3;
- (void)addRequestersToRequest:(id)a3;
- (void)makeRequest:(id)a3;
- (void)sendAnalyticsForMakingRequest;
@end

@implementation APAdBatchRequester

- (id)batchResponseFromBase64EncodedString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    v10 = 0;
    goto LABEL_55;
  }

  v6 = &_sSo13os_log_type_ta0A0E5debugABvgZ_ptr;
  v7 = [NSMutableDictionary dictionaryWithCapacity:2];
  v8 = [(APAdBatchRequester *)self headers];

  if (v8)
  {
    v9 = [(APAdBatchRequester *)self headers];
    [v7 setValue:v9 forKey:@"headers"];
  }

  else
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412290;
      v84 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@] Request headers were nil", buf, 0xCu);
    }
  }

  v14 = [(APAdBatchRequester *)self protoBuffer];
  v15 = [v14 dictionaryRepresentation];

  if (v15)
  {
    v16 = [(APAdBatchRequester *)self protoBuffer];
    v17 = [v16 dictionaryRepresentation];
    [v7 setValue:v17 forKey:@"body"];
LABEL_13:

    goto LABEL_14;
  }

  v16 = APLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    *buf = 138412290;
    v84 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%@] Request body was nil", buf, 0xCu);
    goto LABEL_13;
  }

LABEL_14:

  v19 = APLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(APAdBatchRequester *)self protoBuffer];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [(APServerRequester *)self requestIdentifier];
    v24 = [(APServerRequester *)self additionalRequestDescription];
    v25 = [v7 jsonString];
    *buf = 138413058;
    v84 = v22;
    v85 = 2112;
    v86 = v23;
    v87 = 2112;
    v88 = v24;
    v89 = 2112;
    v90 = v25;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Making MOCKED APPBAdBatchRequest for content identifier %@%@:\n%@", buf, 0x2Au);

    v6 = &_sSo13os_log_type_ta0A0E5debugABvgZ_ptr;
  }

  v26 = [[NSData alloc] initWithBase64EncodedString:v5 options:0];
  if (!v26)
  {
    v10 = 0;
    goto LABEL_50;
  }

  v27 = [[NSString alloc] initWithData:v26 encoding:4];
  v28 = objc_alloc_init(PBTextReader);
  v29 = [v28 readMessageType:objc_opt_class() fromString:v27];
  v10 = v29;
  if (!v29)
  {
    goto LABEL_48;
  }

  v62 = v28;
  v63 = v27;
  v64 = v26;
  v65 = v5;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v69 = v29;
  obj = [v29 ads];
  v70 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (!v70)
  {
    goto LABEL_47;
  }

  v30 = 0;
  v67 = *v78;
  v68 = self;
  do
  {
    v31 = 0;
    do
    {
      if (*v78 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v71 = v31;
      v32 = *(*(&v77 + 1) + 8 * v31);
      v33 = [(APAdBatchRequester *)self batchedRequests];
      v34 = [(APAdBatchRequester *)self batchedRequests];
      v35 = [v34 count] - 1;

      v72 = v30;
      if (v30 >= v35)
      {
        v36 = v35;
      }

      else
      {
        v36 = v30;
      }

      v37 = [v33 objectAtIndexedSubscript:v36];
      v38 = [v37 identifier];
      v39 = [v38 UUIDString];
      [v32 setAdOriginalRequesterId:v39];

      v40 = [v69 specification];
      v41 = [v40 type];
      v42 = [v32 specification];
      [v42 setType:v41];

      v43 = [v32 impressionIdentifierData];
      objc_opt_class();
      LOBYTE(v41) = objc_opt_isKindOfClass();

      if (v41)
      {
        v44 = [v32 impressionIdentifierData];
        v45 = [v44 dataUsingEncoding:4];
        [v32 setImpressionIdentifierData:v45];
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v46 = [v32 actions];
      v47 = [v46 countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v74;
        do
        {
          for (i = 0; i != v48; i = i + 1)
          {
            if (*v74 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v73 + 1) + 8 * i);
            if (![v51 action])
            {
              v52 = [v32 specification];
              v53 = [v52 type];

              switch(v53)
              {
                case 2u:
                  v54 = 13;
                  break;
                case 0xAu:
                  goto LABEL_41;
                case 8u:
                  v54 = 10;
                  break;
                default:
                  v54 = 12;
                  break;
              }

              [v51 setAction:v54];
            }

LABEL_41:
            v55 = [v51 actionURL];

            if (!v55)
            {
              [v51 setActionURL:@"https://www.apple.com"];
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v73 objects:v81 count:16];
        }

        while (v48);
      }

      v30 = v72 + 1;
      v31 = v71 + 1;
      self = v68;
    }

    while ((v71 + 1) != v70);
    v70 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
  }

  while (v70);
LABEL_47:

  v5 = v65;
  v6 = &_sSo13os_log_type_ta0A0E5debugABvgZ_ptr;
  v27 = v63;
  v26 = v64;
  v10 = v69;
  v28 = v62;
LABEL_48:

LABEL_50:
  v56 = [v6[433] dictionaryWithCapacity:1];
  if (v10)
  {
    v57 = [v10 dictionaryRepresentation];
    [v56 setValue:v57 forKey:@"body"];
  }

  v58 = APLogForCategory();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = [(APServerRequester *)self requestIdentifier];
    v60 = [v56 jsonString];
    *buf = 138412546;
    v84 = v59;
    v85 = 2112;
    v86 = v60;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Returning MOCKED APPBAdBatchResponse for request %@:\n%@", buf, 0x16u);
  }

LABEL_55:

  return v10;
}

- (APAdBatchRequester)initWithBatch:(id)a3 bundleID:(id)a4 requestIdentifier:(id)a5 clientInfo:(id)a6 idAccount:(id)a7
{
  v11 = a3;
  v40 = a4;
  v39 = a5;
  obj = a6;
  v38 = a6;
  v37 = a7;
  v12 = v11;
  if ([v11 count])
  {
    v13 = 0;
    v14 = &stru_1004810B8;
    v15 = &stru_1004810B8;
    do
    {
      if (v13)
      {
        v16 = @",";
      }

      else
      {
        v16 = &stru_1004810B8;
      }

      v17 = [v12 objectAtIndexedSubscript:v13];
      v18 = [v17 context];
      v19 = [v18 identifier];
      v20 = [v19 UUIDString];
      v21 = v12;
      v22 = [(__CFString *)v14 stringByAppendingFormat:@"%@%@", v16, v20, obj];

      v23 = [v21 objectAtIndexedSubscript:v13];
      v24 = [v23 identifier];
      v25 = [v24 UUIDString];
      v26 = v21;
      v27 = v22;
      v28 = [(__CFString *)v15 stringByAppendingFormat:@"%@%@", v16, v25];

      ++v13;
      v12 = v26;
      v29 = [v26 count];
      v15 = v28;
      v14 = v27;
    }

    while (v13 < v29);
  }

  else
  {
    v28 = &stru_1004810B8;
    v27 = &stru_1004810B8;
  }

  v41.receiver = self;
  v41.super_class = APAdBatchRequester;
  v30 = [(APServerRequester *)&v41 initWithBundleID:v40 requestIdentifier:v39 contextIdentifier:v27 contentIdentifier:v28 idAccount:v37];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_clientInfo, obj);
    v32 = [v12 copy];
    batchedRequests = v31->_batchedRequests;
    v31->_batchedRequests = v32;
  }

  return v31;
}

- (NSArray)requestParameters
{
  v2 = [(APAdBatchRequester *)self batchedRequests];
  v3 = [v2 copy];

  return v3;
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBAdBatchRequest);
  v4 = [(APAdBatchRequester *)self requestProperties];
  [(APPBAdBatchRequest *)v3 setRequestProperties:v4];

  [(APAdBatchRequester *)self addRequestersToRequest:v3];
  v5 = [(APAdBatchRequester *)self batchedRequests];
  v6 = [v5 count];

  if (v6)
  {
    v7 = objc_alloc_init(APPBAdSpecification);
    [(APPBAdBatchRequest *)v3 setSpecification:v7];

    v8 = [(APAdBatchRequester *)self batchedRequests];
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = +[APLegacyTypeTranslator placementTypeToCreativeType:](APLegacyTypeTranslator, "placementTypeToCreativeType:", [v9 placementType]);
    v11 = [(APPBAdBatchRequest *)v3 specification];
    [v11 setType:v10];
  }

  return v3;
}

- (id)headers
{
  v6.receiver = self;
  v6.super_class = APAdBatchRequester;
  v2 = [(APServerRequester *)&v6 headers];
  v3 = [v2 mutableCopy];

  v4 = [v3 copy];

  return v4;
}

- (id)requestProperties
{
  v3 = objc_alloc_init(APPBRequestProperties);
  [(APAdBatchRequester *)self addClientInfoProperties:v3];
  [(APAdBatchRequester *)self addDeviceInfoProperties:v3];
  [(APAdBatchRequester *)self addAccountProperties:v3];
  [(APAdBatchRequester *)self addContentRestrictionProperties:v3];
  [(APAdBatchRequester *)self addMiscellaneousProperties:v3];
  [(APAdBatchRequester *)self addPandoraTestProperties:v3];

  return v3;
}

- (BOOL)_canSendLocationInformationForClientInfo:(id)a3
{
  v4 = [a3 locationInfo];
  if (v4)
  {
    v5 = [(APServerRequester *)self idAccount];
    if ([v5 isManagedAccount])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = +[APDeviceInfo current];
      v6 = [v7 educationModeEnabled] ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)addClientInfoProperties:(id)a3
{
  v25 = a3;
  v4 = [(APServerRequester *)self bundleID];
  [v25 setAppID:v4];

  v5 = [(APAdBatchRequester *)self clientInfo];
  v6 = [v5 appVersion];
  [v25 setAppVersion:v6];

  v7 = [v5 scale];
  [v25 setScreenDPI:{objc_msgSend(v7, "intValue")}];

  [v25 setScreenWidth:{objc_msgSend(v5, "screenWidth")}];
  [v25 setScreenHeight:{objc_msgSend(v5, "screenHeight")}];
  v8 = [v5 keyboards];
  v9 = [v8 mutableCopy];
  [v25 setUserKeyboards:v9];

  if (+[APSystemInternal isAppleInternalInstall])
  {
    v10 = +[APMockAdServerSettings settings];
    v11 = [v10 keyboardOverride];

    if (v11)
    {
      v12 = +[APMockAdServerSettings settings];
      v13 = [v12 keyboardOverride];
      v14 = [v13 mutableCopy];
      [v25 setUserKeyboards:v14];
    }
  }

  if ([(APAdBatchRequester *)self _canSendLocationInformationForClientInfo:v5])
  {
    v15 = [v5 locationInfo];
    v16 = [v15 locality];
    [v25 setLocality:v16];

    v17 = [v5 locationInfo];
    v18 = [v17 administrativeArea];
    [v25 setAdministrativeArea:v18];

    v19 = [v5 locationInfo];
    v20 = [v19 subAdministrativeArea];
    [v25 setSubAdministrativeArea:v20];

    v21 = [v5 locationInfo];
    v22 = [v21 isoCountryCode];
    [v25 setIsoCountryCode:v22];

    v23 = [v5 locationInfo];
    v24 = [v23 postalCode];
    [v25 setPostalCode:v24];
  }
}

- (void)addDeviceInfoProperties:(id)a3
{
  v3 = a3;
  v10 = +[APDeviceInfo current];
  [v3 setDeviceMode:{objc_msgSend(v10, "educationModeEnabled")}];
  v4 = [v10 osVersionAndBuild];
  [v3 setOsVersionAndBuild:v4];

  v5 = [v10 deviceModel];
  [v3 setDeviceModel:v5];

  [v3 setConnectionType:{+[APLegacyTypeTranslator connectionTypeToAPPBAdConnection:](APLegacyTypeTranslator, "connectionTypeToAPPBAdConnection:", objc_msgSend(v10, "connectionType"))}];
  v6 = +[NSTimeZone localTimeZone];
  v7 = [v6 secondsFromGMT] / 3600.0;
  *&v7 = v7;
  [v3 setTimezone:v7];

  v8 = +[NSLocale currentLocale];
  v9 = [v8 localeIdentifier];
  [v3 setLocaleIdentifier:v9];
}

- (void)addAccountProperties:(id)a3
{
  v19 = a3;
  v4 = +[APEncryptedIDProvider provider];
  v5 = [(APServerRequester *)self idAccount];
  v6 = [v4 encryptedIDsForIDAccountPrivate:v5];

  v7 = [v6 iAdID];
  [v19 setIAdID:v7];

  v8 = [v6 anonymousDemandID];
  [v19 setAnonymousDemandiAdID:v8];

  v9 = [v6 contentID];
  [v19 setContentiAdID:v9];

  v10 = [v6 DPID];
  [v19 setDPID:v10];

  v11 = [(APServerRequester *)self idAccount];
  v12 = [v11 storefront];
  [v19 setITunesStore:v12];

  v13 = [(APServerRequester *)self idAccount];
  v14 = [v13 monthlyIDResetCount];
  [v19 setAdvertisingIdentifierMonthResetCount:{objc_msgSend(v14, "intValue")}];

  v15 = [v13 iTunesDSID];
  v16 = [v15 isEqualToNumber:&off_100492C10];

  if (v16)
  {
    v17 = 0;
LABEL_3:
    [v19 setAccountType:v17];
    goto LABEL_18;
  }

  if ([v13 ageUnknown])
  {
    v18 = 6;
LABEL_14:
    [v19 setAccountType:v18];
    goto LABEL_15;
  }

  if ([v13 isManagedAccount])
  {
    v18 = 2;
    goto LABEL_14;
  }

  if ([v13 isChild])
  {
    v18 = 3;
    goto LABEL_14;
  }

  if ([v13 isAdolescent])
  {
    v18 = 5;
    goto LABEL_14;
  }

  if ([v13 isAdult])
  {
    v18 = 1;
    goto LABEL_14;
  }

LABEL_15:
  if (_os_feature_enabled_impl() && [v13 sensitiveContentEligible])
  {
    v17 = 7;
    goto LABEL_3;
  }

LABEL_18:
}

- (void)addContentRestrictionProperties:(id)a3
{
  v13 = a3;
  v3 = +[MCProfileConnection sharedConnection];
  [v13 setDenyExplicit:{objc_msgSend(v3, "effectiveBoolValueForSetting:", MCFeatureExplicitContentAllowed) == 2}];
  [v13 setAllowInstallApps:{objc_msgSend(v3, "isOnDeviceAppInstallationAllowed")}];
  [v13 setAllowITunes:{objc_msgSend(v3, "effectiveBoolValueForSetting:", MCFeatureITunesAllowed) != 2}];
  v4 = [v3 effectiveValueForSetting:MCFeatureMaximumMoviesRating];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue];
  }

  else
  {
    v6 = 1000;
  }

  [v13 setMoviesRank:v6];
  v7 = [v3 effectiveValueForSetting:MCFeatureMaximumTVShowsRating];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 intValue];
  }

  else
  {
    v9 = 1000;
  }

  [v13 setTvshowsRank:v9];
  v10 = [v3 effectiveValueForSetting:MCFeatureMaximumAppsRating];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 intValue];
  }

  else
  {
    v12 = 1000;
  }

  [v13 setAppsRank:v12];
}

- (void)addMiscellaneousProperties:(id)a3
{
  v9 = a3;
  v3 = +[APSystemInternal isAppleInternalInstall];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [v9 setRunState:v4];
  v5 = +[NSDate date];
  [v5 timeIntervalSince1970];
  [v9 setClientClockTime:?];

  if (v3)
  {
    v6 = +[APDeviceInfoSettings settings];
    v7 = [v6 serveProductionAds];
    v8 = [v7 isEqualToNumber:&off_100492C28];

    if (v8)
    {
      [v9 setInternalUserWantsProdAds:1];
    }
  }

  [v9 setAppStoreViewAdVersion:2];
}

- (void)addPandoraTestProperties:(id)a3
{
  v9 = a3;
  v3 = +[APSystemInternal isAppleInternalInstall];
  if (v3)
  {
    v4 = +[APDeviceInfoSettings settings];
    v5 = [v4 isTest];
    [v9 setIsTest:{objc_msgSend(v5, "BOOLValue")}];
  }

  else
  {
    [v9 setHasIsTest:0];
  }

  v6 = +[APDeviceInfoSettings settings];
  v7 = [v6 campaignNamespace];

  if (v7)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1 && [v7 length])
  {
    [v9 setCampaignNameSpace:v7];
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_computeMinimumSize:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [(APAdBatchRequester *)self clientInfo];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_19;
  }

  if ([v5 interfaceIdiom] == 1)
  {
    v7 = 20.0;
  }

  else
  {
    v7 = 44.0;
  }

  if (var0 <= 0.0)
  {
    var0 = [v6 screenWidth];
  }

  if (var1 <= 0.0)
  {
    var1 = [v6 screenHeight];
  }

  v8 = [v6 interfaceIdiom];
  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_19;
    }

    v9 = [v6 orientation];
    if (v9 < 2)
    {
      goto LABEL_15;
    }

    if ((v9 - 2) <= 1)
    {
      v10 = [v6 screenWidth];
      if (v10 + -320.0 < var0)
      {
        var0 = v10 + -320.0;
      }

LABEL_15:
      v11 = [v6 screenHeight];
      if (v11 - v7 < var1)
      {
        var1 = v11 - v7;
      }
    }
  }

  v12 = [v6 screenHeight];
  if (v12 - v7 < var1)
  {
    var1 = v12 - v7;
  }

LABEL_19:

  v13 = var0;
  v14 = var1;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (void)addRequestersToRequest:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v33 = v4;
  [v4 setRequesters:v5];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(APAdBatchRequester *)self batchedRequests];
  v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v35;
    *&v7 = 138543362;
    v31 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v12 = objc_alloc_init(APPBAdRequester);
        v13 = [v11 identifier];
        v14 = [v13 UUIDString];
        [(APPBAdRequester *)v12 setIdentifier:v14];

        v15 = [v11 context];
        [v15 maxSize];
        [(APAdBatchRequester *)self _computeMinimumSize:?];
        v17 = v16;
        v19 = v18;

        [(APPBAdRequester *)v12 setHeight:v19];
        [(APPBAdRequester *)v12 setWidth:v17];
        v20 = [v11 context];
        v21 = [v11 identifier];
        v22 = [v21 UUIDString];
        v23 = [v20 contextJSONForRequest:v22 andPlacementType:{objc_msgSend(v11, "placementType")}];
        [(APPBAdRequester *)v12 setContextJSON:v23];

        if ([(APPBAdRequester *)v12 width]< 1 || [(APPBAdRequester *)v12 height]<= 0)
        {
          v24 = [(APAdBatchRequester *)self clientInfo];
          v25 = v24;
          if (v24 && [v24 interfaceIdiom] <= 1)
          {
            v26 = [v25 orientation];
            if ((v26 - 2) < 2)
            {
              [(APPBAdRequester *)v12 setHeight:414];
              [(APPBAdRequester *)v12 setWidth:896];
            }

            else if (v26 <= 1)
            {
              [(APPBAdRequester *)v12 setWidth:414];
              [(APPBAdRequester *)v12 setHeight:896];
            }
          }
        }

        v27 = [v33 requesters];
        [v27 addObject:v12];

        v28 = APLogForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [v11 context];
          v30 = [v29 identifier];
          *buf = v31;
          v39 = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Making AdBatchRequest for context %{public}@", buf, 0xCu);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }
}

- (id)requestFromRequestID:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(APAdBatchRequester *)self batchedRequests];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 UUIDString];
        v12 = [v4 isEqual:v11];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)sendAnalyticsForMakingRequest
{
  v3 = [(APAdBatchRequester *)self batchedRequests];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(APAdBatchRequester *)self batchedRequests];
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 context];

    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 identifier];
      v10 = [v9 UUIDString];
      *buf = 138543362;
      v52 = *&v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[LegacyInterface] Requester (%{public}@) sending ad request.", buf, 0xCu);
    }

    v11 = +[NSDate date];
    v12 = [v7 prefetchTimestamp];

    if (v12)
    {
      v13 = [v7 prefetchTimestamp];
      [v11 timeIntervalSinceDate:v13];
      v15 = v14;

      v16 = APLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v7 identifier];
        v18 = [v17 UUIDString];
        *buf = 138543618;
        v52 = *&v18;
        v53 = 2050;
        v54 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[LegacyInterface] Context %{public}@: Pre-fetch to daemon ad request interval is %{public}f.", buf, 0x16u);
      }

      v19 = [NSNumber numberWithDouble:v15];
      v20 = +[NSDecimalNumber notANumber];
      v21 = [v19 isEqual:v20];

      if (v21)
      {
        v22 = APLogForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v52 = v15;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%f Invalid interval", buf, 0xCu);
        }
      }

      else
      {
        v50[0] = v19;
        v49[0] = @"Interval";
        v49[1] = @"IntervalType";
        v23 = [NSNumber numberWithLong:3];
        v50[1] = v23;
        v49[2] = @"NetworkType";
        v24 = [NSNumber numberWithUnsignedLong:0];
        v50[2] = v24;
        v49[3] = @"PlacementType";
        v25 = [v7 current];
        v26 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v25 placement]);
        v50[3] = v26;
        v49[4] = @"Failed";
        v27 = [NSNumber numberWithBool:0];
        v50[4] = v27;
        v22 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:5];

        [APAnalytics sendEvent:@"adtiming" customPayload:v22];
      }
    }

    else
    {
      v19 = APLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "prefetchTimestamp is nil!", buf, 2u);
      }
    }

    v28 = [(APAdBatchRequester *)self batchedRequests];
    v29 = [v28 objectAtIndexedSubscript:0];
    [v29 timestamp];
    v31 = v30;

    v32 = [(APAdBatchRequester *)self batchedRequests];
    v33 = [v32 count];
    v34 = [(APServerRequester *)self requestIdentifier];
    v35 = [NSDate dateWithTimeIntervalSinceReferenceDate:v31];
    v36 = [NSString stringWithFormat:@"Sending %lu requests in batch %@: %@", v33, v34, v35];

    v37 = [(APAdBatchRequester *)self batchedRequests];
    v38 = [v37 count];

    if (v38 < 2)
    {
      v45 = v36;
    }

    else
    {
      v39 = 1;
      do
      {
        v40 = [(APAdBatchRequester *)self batchedRequests];
        v41 = [v40 objectAtIndexedSubscript:v39];
        [v41 timestamp];
        v43 = v42 - v31;

        v44 = [NSString stringWithFormat:@", + %.0f mS", v43 * 1000.0];
        v45 = [v36 stringByAppendingString:v44];

        ++v39;
        v46 = [(APAdBatchRequester *)self batchedRequests];
        v47 = [v46 count];

        v36 = v45;
      }

      while (v39 < v47);
    }

    v48 = APLogForCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = *&v45;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }
}

- (void)makeRequest:(id)a3
{
  v4 = a3;
  if (!+[APSystemInternal isAppleInternalInstall])
  {
    goto LABEL_7;
  }

  v5 = [(APAdBatchRequester *)self batchedRequests];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = +[APMockAdServerSettings isAdResponseMockedForPlacementType:](APMockAdServerSettings, "isAdResponseMockedForPlacementType:", [v6 placementType]);

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = APLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AdBatchRequester will return forced ad response for request.", buf, 2u);
  }

  v9 = [(APAdBatchRequester *)self batchedRequests];
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = +[APMockAdServerSettings adResponseDataForPlacementType:](APMockAdServerSettings, "adResponseDataForPlacementType:", [v10 placementType]);

  if (v11)
  {
    v12 = [(APAdBatchRequester *)self batchResponseFromBase64EncodedString:v11];
    v4[2](v4, v12, 0);
  }

  else
  {
LABEL_7:
    v13.receiver = self;
    v13.super_class = APAdBatchRequester;
    [(APServerRequester *)&v13 makeRequest:v4];
    [(APAdBatchRequester *)self sendAnalyticsForMakingRequest];
  }
}

@end