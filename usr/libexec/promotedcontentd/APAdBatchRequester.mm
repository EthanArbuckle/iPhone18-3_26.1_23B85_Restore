@interface APAdBatchRequester
- ($F24F406B2B787EFB06265DBA3D28CBD5)_computeMinimumSize:(id)size;
- (APAdBatchRequester)initWithBatch:(id)batch bundleID:(id)d requestIdentifier:(id)identifier clientInfo:(id)info idAccount:(id)account;
- (BOOL)_canSendLocationInformationForClientInfo:(id)info;
- (NSArray)requestParameters;
- (id)batchResponseFromBase64EncodedString:(id)string;
- (id)headers;
- (id)protoBuffer;
- (id)requestFromRequestID:(id)d;
- (id)requestProperties;
- (void)addAccountProperties:(id)properties;
- (void)addClientInfoProperties:(id)properties;
- (void)addContentRestrictionProperties:(id)properties;
- (void)addDeviceInfoProperties:(id)properties;
- (void)addMiscellaneousProperties:(id)properties;
- (void)addPandoraTestProperties:(id)properties;
- (void)addRequestersToRequest:(id)request;
- (void)makeRequest:(id)request;
- (void)sendAnalyticsForMakingRequest;
@end

@implementation APAdBatchRequester

- (id)batchResponseFromBase64EncodedString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (!stringCopy || ![stringCopy length])
  {
    v10 = 0;
    goto LABEL_55;
  }

  v6 = &_sSo13os_log_type_ta0A0E5debugABvgZ_ptr;
  v7 = [NSMutableDictionary dictionaryWithCapacity:2];
  headers = [(APAdBatchRequester *)self headers];

  if (headers)
  {
    headers2 = [(APAdBatchRequester *)self headers];
    [v7 setValue:headers2 forKey:@"headers"];
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

  protoBuffer = [(APAdBatchRequester *)self protoBuffer];
  dictionaryRepresentation = [protoBuffer dictionaryRepresentation];

  if (dictionaryRepresentation)
  {
    protoBuffer2 = [(APAdBatchRequester *)self protoBuffer];
    dictionaryRepresentation2 = [protoBuffer2 dictionaryRepresentation];
    [v7 setValue:dictionaryRepresentation2 forKey:@"body"];
LABEL_13:

    goto LABEL_14;
  }

  protoBuffer2 = APLogForCategory();
  if (os_log_type_enabled(protoBuffer2, OS_LOG_TYPE_ERROR))
  {
    v18 = objc_opt_class();
    dictionaryRepresentation2 = NSStringFromClass(v18);
    *buf = 138412290;
    v84 = dictionaryRepresentation2;
    _os_log_impl(&_mh_execute_header, protoBuffer2, OS_LOG_TYPE_ERROR, "[%@] Request body was nil", buf, 0xCu);
    goto LABEL_13;
  }

LABEL_14:

  v19 = APLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    protoBuffer3 = [(APAdBatchRequester *)self protoBuffer];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    requestIdentifier = [(APServerRequester *)self requestIdentifier];
    additionalRequestDescription = [(APServerRequester *)self additionalRequestDescription];
    jsonString = [v7 jsonString];
    *buf = 138413058;
    v84 = v22;
    v85 = 2112;
    v86 = requestIdentifier;
    v87 = 2112;
    v88 = additionalRequestDescription;
    v89 = 2112;
    v90 = jsonString;
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
  selfCopy = self;
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
      batchedRequests = [(APAdBatchRequester *)self batchedRequests];
      batchedRequests2 = [(APAdBatchRequester *)self batchedRequests];
      v35 = [batchedRequests2 count] - 1;

      v72 = v30;
      if (v30 >= v35)
      {
        v36 = v35;
      }

      else
      {
        v36 = v30;
      }

      v37 = [batchedRequests objectAtIndexedSubscript:v36];
      identifier = [v37 identifier];
      uUIDString = [identifier UUIDString];
      [v32 setAdOriginalRequesterId:uUIDString];

      specification = [v69 specification];
      type = [specification type];
      specification2 = [v32 specification];
      [specification2 setType:type];

      impressionIdentifierData = [v32 impressionIdentifierData];
      objc_opt_class();
      LOBYTE(type) = objc_opt_isKindOfClass();

      if (type)
      {
        impressionIdentifierData2 = [v32 impressionIdentifierData];
        v45 = [impressionIdentifierData2 dataUsingEncoding:4];
        [v32 setImpressionIdentifierData:v45];
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      actions = [v32 actions];
      v47 = [actions countByEnumeratingWithState:&v73 objects:v81 count:16];
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
              objc_enumerationMutation(actions);
            }

            v51 = *(*(&v73 + 1) + 8 * i);
            if (![v51 action])
            {
              specification3 = [v32 specification];
              type2 = [specification3 type];

              switch(type2)
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
            actionURL = [v51 actionURL];

            if (!actionURL)
            {
              [v51 setActionURL:@"https://www.apple.com"];
            }
          }

          v48 = [actions countByEnumeratingWithState:&v73 objects:v81 count:16];
        }

        while (v48);
      }

      v30 = v72 + 1;
      v31 = v71 + 1;
      self = selfCopy;
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
    dictionaryRepresentation3 = [v10 dictionaryRepresentation];
    [v56 setValue:dictionaryRepresentation3 forKey:@"body"];
  }

  v58 = APLogForCategory();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier2 = [(APServerRequester *)self requestIdentifier];
    jsonString2 = [v56 jsonString];
    *buf = 138412546;
    v84 = requestIdentifier2;
    v85 = 2112;
    v86 = jsonString2;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Returning MOCKED APPBAdBatchResponse for request %@:\n%@", buf, 0x16u);
  }

LABEL_55:

  return v10;
}

- (APAdBatchRequester)initWithBatch:(id)batch bundleID:(id)d requestIdentifier:(id)identifier clientInfo:(id)info idAccount:(id)account
{
  batchCopy = batch;
  dCopy = d;
  identifierCopy = identifier;
  obj = info;
  infoCopy = info;
  accountCopy = account;
  v12 = batchCopy;
  if ([batchCopy count])
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
      context = [v17 context];
      identifier = [context identifier];
      uUIDString = [identifier UUIDString];
      v21 = v12;
      v22 = [(__CFString *)v14 stringByAppendingFormat:@"%@%@", v16, uUIDString, obj];

      v23 = [v21 objectAtIndexedSubscript:v13];
      identifier2 = [v23 identifier];
      uUIDString2 = [identifier2 UUIDString];
      v26 = v21;
      v27 = v22;
      v28 = [(__CFString *)v15 stringByAppendingFormat:@"%@%@", v16, uUIDString2];

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
  v30 = [(APServerRequester *)&v41 initWithBundleID:dCopy requestIdentifier:identifierCopy contextIdentifier:v27 contentIdentifier:v28 idAccount:accountCopy];
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
  batchedRequests = [(APAdBatchRequester *)self batchedRequests];
  v3 = [batchedRequests copy];

  return v3;
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(APPBAdBatchRequest);
  requestProperties = [(APAdBatchRequester *)self requestProperties];
  [(APPBAdBatchRequest *)v3 setRequestProperties:requestProperties];

  [(APAdBatchRequester *)self addRequestersToRequest:v3];
  batchedRequests = [(APAdBatchRequester *)self batchedRequests];
  v6 = [batchedRequests count];

  if (v6)
  {
    v7 = objc_alloc_init(APPBAdSpecification);
    [(APPBAdBatchRequest *)v3 setSpecification:v7];

    batchedRequests2 = [(APAdBatchRequester *)self batchedRequests];
    v9 = [batchedRequests2 objectAtIndexedSubscript:0];
    v10 = +[APLegacyTypeTranslator placementTypeToCreativeType:](APLegacyTypeTranslator, "placementTypeToCreativeType:", [v9 placementType]);
    specification = [(APPBAdBatchRequest *)v3 specification];
    [specification setType:v10];
  }

  return v3;
}

- (id)headers
{
  v6.receiver = self;
  v6.super_class = APAdBatchRequester;
  headers = [(APServerRequester *)&v6 headers];
  v3 = [headers mutableCopy];

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

- (BOOL)_canSendLocationInformationForClientInfo:(id)info
{
  locationInfo = [info locationInfo];
  if (locationInfo)
  {
    idAccount = [(APServerRequester *)self idAccount];
    if ([idAccount isManagedAccount])
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

- (void)addClientInfoProperties:(id)properties
{
  propertiesCopy = properties;
  bundleID = [(APServerRequester *)self bundleID];
  [propertiesCopy setAppID:bundleID];

  clientInfo = [(APAdBatchRequester *)self clientInfo];
  appVersion = [clientInfo appVersion];
  [propertiesCopy setAppVersion:appVersion];

  scale = [clientInfo scale];
  [propertiesCopy setScreenDPI:{objc_msgSend(scale, "intValue")}];

  [propertiesCopy setScreenWidth:{objc_msgSend(clientInfo, "screenWidth")}];
  [propertiesCopy setScreenHeight:{objc_msgSend(clientInfo, "screenHeight")}];
  keyboards = [clientInfo keyboards];
  v9 = [keyboards mutableCopy];
  [propertiesCopy setUserKeyboards:v9];

  if (+[APSystemInternal isAppleInternalInstall])
  {
    v10 = +[APMockAdServerSettings settings];
    keyboardOverride = [v10 keyboardOverride];

    if (keyboardOverride)
    {
      v12 = +[APMockAdServerSettings settings];
      keyboardOverride2 = [v12 keyboardOverride];
      v14 = [keyboardOverride2 mutableCopy];
      [propertiesCopy setUserKeyboards:v14];
    }
  }

  if ([(APAdBatchRequester *)self _canSendLocationInformationForClientInfo:clientInfo])
  {
    locationInfo = [clientInfo locationInfo];
    locality = [locationInfo locality];
    [propertiesCopy setLocality:locality];

    locationInfo2 = [clientInfo locationInfo];
    administrativeArea = [locationInfo2 administrativeArea];
    [propertiesCopy setAdministrativeArea:administrativeArea];

    locationInfo3 = [clientInfo locationInfo];
    subAdministrativeArea = [locationInfo3 subAdministrativeArea];
    [propertiesCopy setSubAdministrativeArea:subAdministrativeArea];

    locationInfo4 = [clientInfo locationInfo];
    isoCountryCode = [locationInfo4 isoCountryCode];
    [propertiesCopy setIsoCountryCode:isoCountryCode];

    locationInfo5 = [clientInfo locationInfo];
    postalCode = [locationInfo5 postalCode];
    [propertiesCopy setPostalCode:postalCode];
  }
}

- (void)addDeviceInfoProperties:(id)properties
{
  propertiesCopy = properties;
  v10 = +[APDeviceInfo current];
  [propertiesCopy setDeviceMode:{objc_msgSend(v10, "educationModeEnabled")}];
  osVersionAndBuild = [v10 osVersionAndBuild];
  [propertiesCopy setOsVersionAndBuild:osVersionAndBuild];

  deviceModel = [v10 deviceModel];
  [propertiesCopy setDeviceModel:deviceModel];

  [propertiesCopy setConnectionType:{+[APLegacyTypeTranslator connectionTypeToAPPBAdConnection:](APLegacyTypeTranslator, "connectionTypeToAPPBAdConnection:", objc_msgSend(v10, "connectionType"))}];
  v6 = +[NSTimeZone localTimeZone];
  v7 = [v6 secondsFromGMT] / 3600.0;
  *&v7 = v7;
  [propertiesCopy setTimezone:v7];

  v8 = +[NSLocale currentLocale];
  localeIdentifier = [v8 localeIdentifier];
  [propertiesCopy setLocaleIdentifier:localeIdentifier];
}

- (void)addAccountProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = +[APEncryptedIDProvider provider];
  idAccount = [(APServerRequester *)self idAccount];
  v6 = [v4 encryptedIDsForIDAccountPrivate:idAccount];

  iAdID = [v6 iAdID];
  [propertiesCopy setIAdID:iAdID];

  anonymousDemandID = [v6 anonymousDemandID];
  [propertiesCopy setAnonymousDemandiAdID:anonymousDemandID];

  contentID = [v6 contentID];
  [propertiesCopy setContentiAdID:contentID];

  dPID = [v6 DPID];
  [propertiesCopy setDPID:dPID];

  idAccount2 = [(APServerRequester *)self idAccount];
  storefront = [idAccount2 storefront];
  [propertiesCopy setITunesStore:storefront];

  idAccount3 = [(APServerRequester *)self idAccount];
  monthlyIDResetCount = [idAccount3 monthlyIDResetCount];
  [propertiesCopy setAdvertisingIdentifierMonthResetCount:{objc_msgSend(monthlyIDResetCount, "intValue")}];

  iTunesDSID = [idAccount3 iTunesDSID];
  v16 = [iTunesDSID isEqualToNumber:&off_100492C10];

  if (v16)
  {
    v17 = 0;
LABEL_3:
    [propertiesCopy setAccountType:v17];
    goto LABEL_18;
  }

  if ([idAccount3 ageUnknown])
  {
    v18 = 6;
LABEL_14:
    [propertiesCopy setAccountType:v18];
    goto LABEL_15;
  }

  if ([idAccount3 isManagedAccount])
  {
    v18 = 2;
    goto LABEL_14;
  }

  if ([idAccount3 isChild])
  {
    v18 = 3;
    goto LABEL_14;
  }

  if ([idAccount3 isAdolescent])
  {
    v18 = 5;
    goto LABEL_14;
  }

  if ([idAccount3 isAdult])
  {
    v18 = 1;
    goto LABEL_14;
  }

LABEL_15:
  if (_os_feature_enabled_impl() && [idAccount3 sensitiveContentEligible])
  {
    v17 = 7;
    goto LABEL_3;
  }

LABEL_18:
}

- (void)addContentRestrictionProperties:(id)properties
{
  propertiesCopy = properties;
  v3 = +[MCProfileConnection sharedConnection];
  [propertiesCopy setDenyExplicit:{objc_msgSend(v3, "effectiveBoolValueForSetting:", MCFeatureExplicitContentAllowed) == 2}];
  [propertiesCopy setAllowInstallApps:{objc_msgSend(v3, "isOnDeviceAppInstallationAllowed")}];
  [propertiesCopy setAllowITunes:{objc_msgSend(v3, "effectiveBoolValueForSetting:", MCFeatureITunesAllowed) != 2}];
  v4 = [v3 effectiveValueForSetting:MCFeatureMaximumMoviesRating];
  v5 = v4;
  if (v4)
  {
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 1000;
  }

  [propertiesCopy setMoviesRank:intValue];
  v7 = [v3 effectiveValueForSetting:MCFeatureMaximumTVShowsRating];
  v8 = v7;
  if (v7)
  {
    intValue2 = [v7 intValue];
  }

  else
  {
    intValue2 = 1000;
  }

  [propertiesCopy setTvshowsRank:intValue2];
  v10 = [v3 effectiveValueForSetting:MCFeatureMaximumAppsRating];
  v11 = v10;
  if (v10)
  {
    intValue3 = [v10 intValue];
  }

  else
  {
    intValue3 = 1000;
  }

  [propertiesCopy setAppsRank:intValue3];
}

- (void)addMiscellaneousProperties:(id)properties
{
  propertiesCopy = properties;
  v3 = +[APSystemInternal isAppleInternalInstall];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [propertiesCopy setRunState:v4];
  v5 = +[NSDate date];
  [v5 timeIntervalSince1970];
  [propertiesCopy setClientClockTime:?];

  if (v3)
  {
    v6 = +[APDeviceInfoSettings settings];
    serveProductionAds = [v6 serveProductionAds];
    v8 = [serveProductionAds isEqualToNumber:&off_100492C28];

    if (v8)
    {
      [propertiesCopy setInternalUserWantsProdAds:1];
    }
  }

  [propertiesCopy setAppStoreViewAdVersion:2];
}

- (void)addPandoraTestProperties:(id)properties
{
  propertiesCopy = properties;
  v3 = +[APSystemInternal isAppleInternalInstall];
  if (v3)
  {
    v4 = +[APDeviceInfoSettings settings];
    isTest = [v4 isTest];
    [propertiesCopy setIsTest:{objc_msgSend(isTest, "BOOLValue")}];
  }

  else
  {
    [propertiesCopy setHasIsTest:0];
  }

  v6 = +[APDeviceInfoSettings settings];
  campaignNamespace = [v6 campaignNamespace];

  if (campaignNamespace)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1 && [campaignNamespace length])
  {
    [propertiesCopy setCampaignNameSpace:campaignNamespace];
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_computeMinimumSize:(id)size
{
  var1 = size.var1;
  var0 = size.var0;
  clientInfo = [(APAdBatchRequester *)self clientInfo];
  v6 = clientInfo;
  if (!clientInfo)
  {
    goto LABEL_19;
  }

  if ([clientInfo interfaceIdiom] == 1)
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

  interfaceIdiom = [v6 interfaceIdiom];
  if (interfaceIdiom)
  {
    if (interfaceIdiom != 1)
    {
      goto LABEL_19;
    }

    orientation = [v6 orientation];
    if (orientation < 2)
    {
      goto LABEL_15;
    }

    if ((orientation - 2) <= 1)
    {
      screenWidth = [v6 screenWidth];
      if (screenWidth + -320.0 < var0)
      {
        var0 = screenWidth + -320.0;
      }

LABEL_15:
      screenHeight = [v6 screenHeight];
      if (screenHeight - v7 < var1)
      {
        var1 = screenHeight - v7;
      }
    }
  }

  screenHeight2 = [v6 screenHeight];
  if (screenHeight2 - v7 < var1)
  {
    var1 = screenHeight2 - v7;
  }

LABEL_19:

  v13 = var0;
  v14 = var1;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (void)addRequestersToRequest:(id)request
{
  requestCopy = request;
  v5 = +[NSMutableArray array];
  v33 = requestCopy;
  [requestCopy setRequesters:v5];

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
        identifier = [v11 identifier];
        uUIDString = [identifier UUIDString];
        [(APPBAdRequester *)v12 setIdentifier:uUIDString];

        context = [v11 context];
        [context maxSize];
        [(APAdBatchRequester *)self _computeMinimumSize:?];
        v17 = v16;
        v19 = v18;

        [(APPBAdRequester *)v12 setHeight:v19];
        [(APPBAdRequester *)v12 setWidth:v17];
        context2 = [v11 context];
        identifier2 = [v11 identifier];
        uUIDString2 = [identifier2 UUIDString];
        v23 = [context2 contextJSONForRequest:uUIDString2 andPlacementType:{objc_msgSend(v11, "placementType")}];
        [(APPBAdRequester *)v12 setContextJSON:v23];

        if ([(APPBAdRequester *)v12 width]< 1 || [(APPBAdRequester *)v12 height]<= 0)
        {
          clientInfo = [(APAdBatchRequester *)self clientInfo];
          v25 = clientInfo;
          if (clientInfo && [clientInfo interfaceIdiom] <= 1)
          {
            orientation = [v25 orientation];
            if ((orientation - 2) < 2)
            {
              [(APPBAdRequester *)v12 setHeight:414];
              [(APPBAdRequester *)v12 setWidth:896];
            }

            else if (orientation <= 1)
            {
              [(APPBAdRequester *)v12 setWidth:414];
              [(APPBAdRequester *)v12 setHeight:896];
            }
          }
        }

        requesters = [v33 requesters];
        [requesters addObject:v12];

        v28 = APLogForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          context3 = [v11 context];
          identifier3 = [context3 identifier];
          *buf = v31;
          v39 = identifier3;
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

- (id)requestFromRequestID:(id)d
{
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  batchedRequests = [(APAdBatchRequester *)self batchedRequests];
  v6 = [batchedRequests countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(batchedRequests);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        uUIDString = [identifier UUIDString];
        v12 = [dCopy isEqual:uUIDString];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [batchedRequests countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  batchedRequests = [(APAdBatchRequester *)self batchedRequests];
  v4 = [batchedRequests count];

  if (v4)
  {
    batchedRequests2 = [(APAdBatchRequester *)self batchedRequests];
    v6 = [batchedRequests2 objectAtIndexedSubscript:0];
    context = [v6 context];

    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      identifier = [context identifier];
      uUIDString = [identifier UUIDString];
      *buf = 138543362;
      v52 = *&uUIDString;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[LegacyInterface] Requester (%{public}@) sending ad request.", buf, 0xCu);
    }

    v11 = +[NSDate date];
    prefetchTimestamp = [context prefetchTimestamp];

    if (prefetchTimestamp)
    {
      prefetchTimestamp2 = [context prefetchTimestamp];
      [v11 timeIntervalSinceDate:prefetchTimestamp2];
      v15 = v14;

      v16 = APLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        identifier2 = [context identifier];
        uUIDString2 = [identifier2 UUIDString];
        *buf = 138543618;
        v52 = *&uUIDString2;
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
        current = [context current];
        v26 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [current placement]);
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

    batchedRequests3 = [(APAdBatchRequester *)self batchedRequests];
    v29 = [batchedRequests3 objectAtIndexedSubscript:0];
    [v29 timestamp];
    v31 = v30;

    batchedRequests4 = [(APAdBatchRequester *)self batchedRequests];
    v33 = [batchedRequests4 count];
    requestIdentifier = [(APServerRequester *)self requestIdentifier];
    v35 = [NSDate dateWithTimeIntervalSinceReferenceDate:v31];
    v36 = [NSString stringWithFormat:@"Sending %lu requests in batch %@: %@", v33, requestIdentifier, v35];

    batchedRequests5 = [(APAdBatchRequester *)self batchedRequests];
    v38 = [batchedRequests5 count];

    if (v38 < 2)
    {
      v45 = v36;
    }

    else
    {
      v39 = 1;
      do
      {
        batchedRequests6 = [(APAdBatchRequester *)self batchedRequests];
        v41 = [batchedRequests6 objectAtIndexedSubscript:v39];
        [v41 timestamp];
        v43 = v42 - v31;

        v44 = [NSString stringWithFormat:@", + %.0f mS", v43 * 1000.0];
        v45 = [v36 stringByAppendingString:v44];

        ++v39;
        batchedRequests7 = [(APAdBatchRequester *)self batchedRequests];
        v47 = [batchedRequests7 count];

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

- (void)makeRequest:(id)request
{
  requestCopy = request;
  if (!+[APSystemInternal isAppleInternalInstall])
  {
    goto LABEL_7;
  }

  batchedRequests = [(APAdBatchRequester *)self batchedRequests];
  v6 = [batchedRequests objectAtIndexedSubscript:0];
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

  batchedRequests2 = [(APAdBatchRequester *)self batchedRequests];
  v10 = [batchedRequests2 objectAtIndexedSubscript:0];
  v11 = +[APMockAdServerSettings adResponseDataForPlacementType:](APMockAdServerSettings, "adResponseDataForPlacementType:", [v10 placementType]);

  if (v11)
  {
    v12 = [(APAdBatchRequester *)self batchResponseFromBase64EncodedString:v11];
    requestCopy[2](requestCopy, v12, 0);
  }

  else
  {
LABEL_7:
    v13.receiver = self;
    v13.super_class = APAdBatchRequester;
    [(APServerRequester *)&v13 makeRequest:requestCopy];
    [(APAdBatchRequester *)self sendAnalyticsForMakingRequest];
  }
}

@end