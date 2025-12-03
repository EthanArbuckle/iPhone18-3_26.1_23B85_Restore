@interface APMediaServiceResponseTranslator
+ (BOOL)checkForNonWKDiscardOverrides:(BOOL)overrides forAdamID:(id)d;
+ (id)_translateAd:(id)ad contextID:(id)d iAdID:(id)iD placement:(unint64_t)placement;
+ (id)_translateAdResult:(id)result contextID:(id)d iAdID:(id)iD;
+ (id)_translateMediaApiResponseToAds:(id)ads error:(id *)error;
+ (id)translateResponse:(id)response requestParams:(id)params responseReceivedTimestamp:(double)timestamp;
@end

@implementation APMediaServiceResponseTranslator

+ (id)translateResponse:(id)response requestParams:(id)params responseReceivedTimestamp:(double)timestamp
{
  responseCopy = response;
  paramsCopy = params;
  v56 = 0;
  v10 = [self _translateMediaApiResponseToAds:responseCopy error:&v56];
  v11 = v56;
  if (!v10 || v11)
  {
    v37 = v11 == 0;
    v36 = v11;
    context = [paramsCopy context];
    identifier = [context identifier];
    v12 = _contentDataWithContextIDAndError(identifier, v36);

    [v12 setServerUnfilledReason:1025];
    [v12 setDiagnosticCode:8 * v37];
    v61 = v12;
    v35 = [NSArray arrayWithObjects:&v61 count:1];
  }

  else
  {
    v42 = responseCopy;
    v12 = +[NSMutableArray array];
    context2 = [paramsCopy context];
    current = [context2 current];
    placement = [current placement];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v41 = v10;
    obj = v10;
    v47 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v47)
    {
      v45 = *v53;
      v43 = v12;
      do
      {
        for (i = 0; i != v47; i = i + 1)
        {
          if (*v53 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v52 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          context3 = [paramsCopy context];
          identifier2 = [context3 identifier];
          idAccount = [paramsCopy idAccount];
          iAdID = [idAccount iAdID];
          v22 = [APMediaServiceResponseTranslator _translateAd:v16 contextID:identifier2 iAdID:iAdID placement:placement];

          if (v22)
          {
            [v22 setServerResponseReceivedTimestamp:timestamp];
            if (![v22 serverUnfilledReason])
            {
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              representations = [v22 representations];
              v24 = [representations countByEnumeratingWithState:&v48 objects:v57 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v49;
                do
                {
                  for (j = 0; j != v25; j = j + 1)
                  {
                    if (*v49 != v26)
                    {
                      objc_enumerationMutation(representations);
                    }

                    v28 = *(*(&v48 + 1) + 8 * j);
                    storeFront = [paramsCopy storeFront];
                    [v28 setStoreFront:storeFront];

                    storeFrontLocale = [paramsCopy storeFrontLocale];
                    [v28 setStoreFrontLocale:storeFrontLocale];
                  }

                  v25 = [representations countByEnumeratingWithState:&v48 objects:v57 count:16];
                }

                while (v25);
              }

              v12 = v43;
            }

            [v12 addObject:v22];
          }

          else
          {
            v31 = APLogForCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v59 = v16;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Translated content for ad:\n%{public}@\ncannot be nil", buf, 0xCu);
            }

            context4 = [paramsCopy context];
            identifier3 = [context4 identifier];
            v34 = _contentDataWithContextIDAndError(identifier3, 0);

            [v34 setServerUnfilledReason:-1];
            [v34 setDiagnosticCode:0];
            [v12 addObject:v34];
          }

          objc_autoreleasePoolPop(v17);
        }

        v47 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v47);
    }

    v35 = [v12 copy];
    v10 = v41;
    responseCopy = v42;
    v36 = 0;
  }

  return v35;
}

+ (id)_translateMediaApiResponseToAds:(id)ads error:(id *)error
{
  adsCopy = ads;
  v6 = objc_opt_class();
  if (_checkClassType(adsCopy, v6, @"Response dictionary", error))
  {
    v7 = [adsCopy objectForKey:@"results"];
    v8 = objc_opt_class();
    if (_checkClassType(v7, v8, @"Results dictionary", error))
    {
      v9 = [v7 objectForKey:@"ads"];
      v10 = objc_opt_class();
      if (_checkClassType(v9, v10, @"Ads array", error))
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_translateAd:(id)ad contextID:(id)d iAdID:(id)iD placement:(unint64_t)placement
{
  adCopy = ad;
  dCopy = d;
  iDCopy = iD;
  v9 = objc_opt_class();
  v118 = 0;
  LODWORD(iD) = _checkClassType(adCopy, v9, @"ad", &v118);
  v10 = v118;
  v105 = adCopy;
  if (!iD)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v16 = 0;
    v26 = 0;
    goto LABEL_36;
  }

  v11 = adCopy;
  v12 = [v11 objectForKey:@"id"];
  v13 = objc_opt_class();
  v117 = v10;
  v14 = _checkClassType(v12, v13, @"adamId (id) is missing.", &v117);
  v15 = v117;

  if (v14)
  {
    v16 = v12;
    v17 = [v11 objectForKey:@"attributes"];
    if (v17)
    {
      v116 = 0;
      v18 = [NSJSONSerialization dataWithJSONObject:v17 options:0 error:&v116];
      v19 = v116;
      if (v19)
      {
        v20 = APLogForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = objc_opt_class();
          *buf = 138478083;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          v121[0] = v19;
          v22 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{private}@] There was an error with the attributes field: %@.", buf, 0x16u);
        }

        v101 = 0;
      }

      else
      {
        v20 = [[NSString alloc] initWithData:v18 encoding:4];
        if (([v20 containsString:@"uses-non-webkit-browser-engine"]& 1) != 0)
        {
          v101 = 1;
        }

        else
        {
          v101 = [v20 containsString:@"is-custom-browser-engine-app"];
        }
      }

      v27 = [v17 objectForKey:@"ageRating"];
      v28 = v27;
      if (v27)
      {
        v23 = [v27 objectForKey:@"value"];
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
      v101 = 0;
    }

    v29 = [v11 objectForKey:@"meta"];
    v30 = objc_opt_class();
    v115 = v15;
    v31 = _checkClassType(v29, v30, @"meta dictionary in ad", &v115);
    v32 = v115;

    if (!v31)
    {
      v25 = 0;
      v26 = 0;
LABEL_34:

      v15 = v32;
      goto LABEL_35;
    }

    v99 = v17;
    v33 = [v29 objectForKey:@"adResult"];
    v106 = [v29 mutableCopy];
    [v106 removeObjectForKey:@"adResult"];
    v34 = objc_opt_class();
    v114 = v32;
    v35 = _checkClassType(v33, v34, @"adResult", &v114);
    v36 = v114;

    v109 = v33;
    if (!v35)
    {
      v17 = v99;
LABEL_33:
      v25 = [v106 copy];

      v32 = v36;
      v26 = v109;
      goto LABEL_34;
    }

    v37 = [v33 dataUsingEncoding:4];
    if (v37)
    {
      v113 = v36;
      v97 = [NSJSONSerialization JSONObjectWithData:v37 options:0 error:&v113];
      v38 = v113;

      v17 = v99;
      if (v38 || (v39 = objc_opt_class(), v112 = 0, v40 = _checkClassType(v97, v39, @"ad JSON object", &v112), v38 = v112, !v40))
      {
        v45 = v97;
LABEL_32:

        v36 = v38;
        goto LABEL_33;
      }

      v96 = v37;
      v41 = v97;

      v36 = [v41 objectForKey:@"passthroughAdInfo"];
      if (v36)
      {
        v98 = v41;
        v42 = objc_opt_class();
        v111 = v38;
        v43 = _checkClassType(v36, v42, @"passthroughAdInfo", &v111);
        v44 = v111;

        if (v43)
        {
          [v106 setValue:v36 forKey:@"passthroughAdInfo"];
        }

        v45 = v98;
        v109 = v98;
      }

      else
      {
        v109 = v41;
        v45 = v41;
        v44 = v38;
      }
    }

    else
    {
      v96 = 0;
      v122 = @"reason";
      v123 = @"Cannot convert adResult string to NSData.";
      v45 = [NSDictionary dictionaryWithObjects:&v123 forKeys:&v122 count:1];
      v44 = [NSError errorWithDomain:@"com.apple.ap.MediaServiceRequest" code:2201 userInfo:v45];
      v17 = v99;
    }

    v38 = v44;
    v37 = v96;
    goto LABEL_32;
  }

  v23 = 0;
  v101 = 0;
  v25 = 0;
  v16 = 0;
  v26 = 0;
LABEL_35:

  v10 = v15;
  v24 = v101;
LABEL_36:
  v110 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  contentRestrictionEnforcementEnabled = [v110 contentRestrictionEnforcementEnabled];
  bOOLValue = [contentRestrictionEnforcementEnabled BOOLValue];

  v107 = v25;
  if (bOOLValue)
  {
    v48 = +[MCProfileConnection sharedConnection];
    v49 = [v48 effectiveValueForSetting:MCFeatureMaximumAppsRating];
    v50 = v49;
    if (v49)
    {
      intValue = [v49 intValue];
    }

    else
    {
      intValue = 1000;
    }

    v55 = APLogForCategory();
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_INFO);
    if (v23)
    {
      if (!v56)
      {
        goto LABEL_50;
      }

      intValue2 = [v23 intValue];
      *buf = 138412546;
      *&buf[4] = v16;
      *&buf[12] = 1024;
      LODWORD(v121[0]) = intValue2;
      v58 = "We GOT the app rating from MAPI for AdamID: %@ and it is: %d";
      v59 = v55;
      v60 = 18;
    }

    else
    {
      if (!v56)
      {
        goto LABEL_50;
      }

      *buf = 138412290;
      *&buf[4] = v16;
      v58 = "We FAILED to receive the app rating from MAPI for AdamID: %@";
      v59 = v55;
      v60 = 12;
    }

    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, v58, buf, v60);
LABEL_50:

    v61 = APLogForCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = intValue;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "The device screentime setting is: %d", buf, 8u);
    }

    if (!intValue)
    {
      v66 = v23;
      supportsDontAllow = [v110 supportsDontAllow];
      bOOLValue2 = [supportsDontAllow BOOLValue];

      v62 = APLogForCategory();
      v69 = os_log_type_enabled(v62, OS_LOG_TYPE_INFO);
      if (!bOOLValue2)
      {
        v23 = v66;
        if (v69)
        {
          *buf = 0;
          v63 = "The screentime Don't Allow is set and it is not supported. We shall do nothing.";
          v64 = v62;
          v65 = 2;
          goto LABEL_64;
        }

LABEL_65:
        v52 = 0;
        goto LABEL_73;
      }

      v23 = v66;
      if (v69)
      {
        *buf = 138412290;
        *&buf[4] = v16;
        v52 = 1;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "The AdamID: %@ FAILED content restrictions check due to Don't Allow being a supported preference.", buf, 0xCu);
      }

      else
      {
        v52 = 1;
      }

LABEL_73:

      if (v24)
      {
        goto LABEL_74;
      }

      goto LABEL_40;
    }

    if (intValue == 1000)
    {
      v62 = APLogForCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v16;
        v63 = "There are no app content restrictions set on the device. The AdamID: %@ passed content restrictions check.";
        v64 = v62;
        v65 = 12;
LABEL_64:
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, v63, buf, v65);
        goto LABEL_65;
      }

      goto LABEL_65;
    }

    v102 = v24;
    v70 = v16;
    v71 = v26;
    v72 = v23;
    intValue3 = [v23 intValue];
    v62 = APLogForCategory();
    v74 = os_log_type_enabled(v62, OS_LOG_TYPE_INFO);
    if (intValue3 <= intValue)
    {
      if (v74)
      {
        *buf = 138412290;
        *&buf[4] = v70;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "The AdamID: %@ passed content restrictions check.", buf, 0xCu);
      }

      v52 = 0;
    }

    else
    {
      if (v74)
      {
        v23 = v72;
        intValue4 = [v72 intValue];
        *buf = 138412802;
        *&buf[4] = v70;
        *&buf[12] = 1024;
        LODWORD(v121[0]) = intValue4;
        WORD2(v121[0]) = 1024;
        *(v121 + 6) = intValue;
        v52 = 1;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "AdamID: %@ DISCARDED due to Content Restriction. The app rating from MAPI: %d. The user Content Restriction: %d", buf, 0x18u);
LABEL_72:
        v26 = v71;
        v16 = v70;
        v24 = v102;
        goto LABEL_73;
      }

      v52 = 1;
    }

    v23 = v72;
    goto LABEL_72;
  }

  v52 = 0;
  if (v24)
  {
LABEL_74:
    v119[0] = @"uses-non-webkit-browser-engine";
    v119[1] = @"is-custom-browser-engine-app";
    v53 = [NSArray arrayWithObjects:v119 count:2];
    v76 = [ASDAppCapabilities isCapableOfAction:4 capabilities:v53];
    v54 = v76 ^ 1;
    v77 = APLogForCategory();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = 1;
      *&buf[8] = 1024;
      *&buf[10] = v76;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "App discard state: isEntitledApp: %d isDMAEligible: %d", buf, 0xEu);
    }

    goto LABEL_77;
  }

LABEL_40:
  v53 = APLogForCategory();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "App discard state: isEntitledApp: %d", buf, 8u);
  }

  v54 = 0;
LABEL_77:

  if (+[APSystemInternal isAppleInternalInstall])
  {
    LODWORD(v54) = [self checkForNonWKDiscardOverrides:v54 forAdamID:v16];
  }

  if (v10 || !v16)
  {
    v82 = dCopy;
    v83 = _contentDataWithContextID(dCopy);
    [v83 setServerUnfilledReason:1025];
    v84 = v83;
    v85 = v10 == 0;
LABEL_89:
    [v84 setDiagnosticCode:v85];
    goto LABEL_90;
  }

  if (v54)
  {
    v78 = 1;
    if (placement != 7005)
    {
      v78 = -1;
    }

    if (placement - 7006 >= 3)
    {
      v79 = v78;
    }

    else
    {
      v79 = placement - 7004;
    }

    v80 = +[NSMutableDictionary dictionary];
    [v80 setValue:&__kCFBooleanFalse forKey:@"wasServed"];
    v81 = [NSNumber numberWithUnsignedInteger:v79];
    [v80 setValue:v81 forKey:@"placement"];

    AnalyticsSendEvent();
    v82 = dCopy;
    v83 = _contentDataWithContextID(dCopy);
    [v83 setServerUnfilledReason:1031];
    [v83 setDiagnosticCode:17];

    goto LABEL_90;
  }

  if (v52)
  {
    v82 = dCopy;
    v83 = _contentDataWithContextID(dCopy);
    [v83 setServerUnfilledReason:1031];
    v84 = v83;
    v85 = 17;
    goto LABEL_89;
  }

  v87 = v26;
  v88 = v23;
  v82 = dCopy;
  v89 = v16;
  v90 = v87;
  v83 = [self _translateAdResult:? contextID:? iAdID:?];
  representations = [v83 representations];
  anyObject = [representations anyObject];

  v93 = v89;
  [anyObject setAdamID:v89];
  if (v107)
  {
    v94 = [v105 mutableCopy];
    [v94 setObject:v107 forKeyedSubscript:@"meta"];
    v95 = [v94 copy];
    [anyObject setAppMetadata:v95];
  }

  v23 = v88;
  v26 = v90;
  v16 = v93;
LABEL_90:

  return v83;
}

+ (BOOL)checkForNonWKDiscardOverrides:(BOOL)overrides forAdamID:(id)d
{
  dCopy = d;
  v6 = [NSUserDefaults alloc];
  v7 = [v6 initWithSuiteName:APDefaultsBundleID];
  if ([v7 BOOLForKey:@"enableNonWKOverrides"])
  {
    v8 = [v7 stringForKey:@"nonWKAppsPromotedContent"];
    v9 = [v8 componentsSeparatedByString:{@", "}];
    v10 = ([v9 containsObject:dCopy] & 1) != 0 || objc_msgSend(v9, "count") == 0;
    v11 = [v7 BOOLForKey:@"enableDMAEligible"];
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 67109376;
      LODWORD(v17[0]) = v10;
      WORD2(v17[0]) = 1024;
      *(v17 + 6) = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "App discard state after overrides check: isEntitledApp: %d isDMAEligible: %d", &v16, 0xEu);
    }

    v13 = !v10 | v11;
    if ((v13 & 1) == 0)
    {
      v14 = APLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17[0] = dCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Discarding ad with adamid: %@ based off overrides.", &v16, 0xCu);
      }
    }

    overrides = v13 ^ 1;
  }

  return overrides;
}

+ (id)_translateAdResult:(id)result contextID:(id)d iAdID:(id)iD
{
  resultCopy = result;
  iDCopy = iD;
  v9 = _contentDataWithContextID(d);
  v10 = +[NSDate date];
  [v9 setReceivedReferenceTime:v10];

  v11 = objc_alloc_init(APRepresentationData);
  [v11 setPlacementType:5];
  identifier = [v9 identifier];
  [v11 setContentDataIdentifier:identifier];

  v13 = [resultCopy objectForKey:@"impressionId"];
  v14 = objc_opt_class();
  v156 = 0;
  LOBYTE(identifier) = _checkClassType(v13, v14, @"impressionId", &v156);
  v15 = v156;
  if ((identifier & 1) == 0)
  {
    goto LABEL_9;
  }

  [v9 setImpressionId:v13];
  v16 = [resultCopy objectForKey:@"metadata"];

  v17 = objc_opt_class();
  v155 = v15;
  v18 = _checkClassType(v16, v17, @"metadata", &v155);
  v19 = v155;

  if ((v18 & 1) == 0)
  {
    [v9 setError:v19];
    v32 = v9;
    v13 = v16;
    v15 = v19;
    goto LABEL_50;
  }

  [v11 setMetadata:v16];
  v13 = [resultCopy objectForKey:@"privacy"];

  v20 = objc_opt_class();
  v154 = v19;
  v21 = _checkClassType(v13, v20, @"privacy", &v154);
  v15 = v154;

  if ((v21 & 1) == 0)
  {
LABEL_9:
    [v9 setError:v15];
    v31 = v9;
    goto LABEL_50;
  }

  v128 = iDCopy;
  v22 = [[NSData alloc] initWithBase64EncodedString:v13 options:0];
  v23 = [[APPBTransparencyDetails alloc] initWithData:v22];
  transparencyRendererPayload = [(APPBTransparencyDetails *)v23 transparencyRendererPayload];
  [v9 setDisclosureRendererPayload:transparencyRendererPayload];

  if ([(APPBTransparencyDetails *)v23 hasTransparencyRendererURL])
  {
    transparencyRendererURL = [(APPBTransparencyDetails *)v23 transparencyRendererURL];
    v26 = [NSURL URLWithString:transparencyRendererURL];
    [v9 setDisclosureURL:v26];
  }

  v27 = [resultCopy objectForKey:@"targetingExpressionId"];

  if (!v27)
  {
    v127 = v22;
    v30 = v15;
LABEL_12:
    v33 = [resultCopy objectForKey:@"journeyRelay"];
    v34 = objc_opt_class();
    v152 = v30;
    v35 = _checkClassType(v33, v34, @"journeyRelay", &v152);
    v36 = v152;

    if ((v35 & 1) == 0)
    {
      [v9 setError:v36];
      v52 = v9;
LABEL_48:

      v30 = v36;
      v22 = v127;
      goto LABEL_49;
    }

    v126 = v33;
    v37 = v33;
    v38 = [v37 objectForKey:@"adGroupId"];

    v39 = objc_opt_class();
    v151 = v36;
    v40 = _checkClassType(v38, v39, @"adGroupId", &v151);
    v41 = v151;

    v125 = v37;
    if ((v40 & 1) == 0)
    {
      goto LABEL_45;
    }

    stringValue = [v38 stringValue];
    [v11 setJourneyRelayAdGroupId:stringValue];

    v43 = [v37 objectForKey:@"campaignId"];

    v44 = objc_opt_class();
    v150 = v41;
    v45 = _checkClassType(v43, v44, @"campaignId", &v150);
    v46 = v150;

    if (v45)
    {
      stringValue2 = [v43 stringValue];
      [v11 setJourneyRelayCampaignId:stringValue2];

      v38 = [resultCopy objectForKey:@"clientRequestId"];

      v48 = objc_opt_class();
      v149 = v46;
      v49 = _checkClassType(v38, v48, @"clientRequestId", &v149);
      v41 = v149;

      if ((v49 & 1) == 0)
      {
        goto LABEL_45;
      }

      [v11 setClientRequestID:v38];
      v43 = [resultCopy objectForKey:@"parentAppCheckEnabled"];

      if (!v43)
      {
        v46 = v41;
LABEL_23:
        v38 = [resultCopy objectForKey:@"installAttribution"];

        v55 = objc_opt_class();
        v147 = v46;
        v56 = _checkClassType(v38, v55, @"installAttribution", &v147);
        v41 = v147;

        if ((v56 & 1) == 0)
        {
          goto LABEL_45;
        }

        [v11 setInstallAttribution:v38];
        if ((+[APSystemInternal isAppleInternalInstall]& 1) != 0)
        {
          v57 = +[APMediaServiceSettings settings];
          responseTTL = [v57 responseTTL];

          if (responseTTL)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [responseTTL intValue] > 0)
            {
              v38 = responseTTL;
              v59 = v41;
              goto LABEL_31;
            }
          }
        }

        else
        {

          responseTTL = 0;
        }

        v38 = [resultCopy objectForKey:@"ttl"];

        v60 = objc_opt_class();
        v146 = v41;
        v61 = _checkClassType(v38, v60, @"ttl", &v146);
        v59 = v146;

        if ((v61 & 1) == 0)
        {
          [v9 setError:v59];
          v82 = v9;
          v41 = v59;
          goto LABEL_46;
        }

LABEL_31:
        v62 = v38;
        v63 = +[NSDate date];
        v64 = [v63 dateByAddingTimeInterval:{objc_msgSend(v62, "intValue")}];
        [v9 setExpirationDate:v64];

        v38 = [resultCopy objectForKey:@"rank"];

        v65 = objc_opt_class();
        v145 = v59;
        LOBYTE(v62) = _checkClassType(v38, v65, @"rank", &v145);
        v41 = v145;

        if (v62)
        {
          [v11 setRank:{objc_msgSend(v38, "intValue")}];
          v66 = [resultCopy objectForKey:@"timeToDisplay"];

          v33 = v126;
          if (v66)
          {
            v67 = objc_opt_class();
            v144 = v41;
            v68 = _checkClassType(v66, v67, @"timeToDisplay", &v144);
            v69 = v144;

            if ((v68 & 1) == 0)
            {
              [v9 setError:v69];
              v83 = v9;
              v41 = v69;
              v38 = v66;
              goto LABEL_47;
            }

            v41 = v69;
            [v11 setTimeToDisplay:{objc_msgSend(v66, "intValue")}];
          }

          v38 = [resultCopy objectForKey:@"positionInfo"];

          if (!v38)
          {
            goto LABEL_58;
          }

          v70 = objc_opt_class();
          v143 = v41;
          v71 = _checkClassType(v38, v70, @"positionInfo", &v143);
          v72 = v143;

          if ((v71 & 1) == 0)
          {
            [v9 setError:v72];
            v84 = v9;
            v41 = v72;
            goto LABEL_47;
          }

          v38 = v38;
          if (![v38 count])
          {
            v75 = v38;
            v41 = v72;
LABEL_57:

            v33 = v126;
LABEL_58:
            v38 = [resultCopy objectForKey:@"cppIds"];
            if (!v38)
            {
              v123 = v23;
              goto LABEL_70;
            }

            v85 = objc_opt_class();
            v86 = v41;
            v141 = v41;
            v87 = _checkClassType(v38, v85, @"cppIds", &v141);
            v41 = v141;

            if (v87)
            {
              obj = v38;
              v123 = v23;
              v137 = 0u;
              v138 = 0u;
              v139 = 0u;
              v140 = 0u;
              v88 = v38;
              v89 = [v88 countByEnumeratingWithState:&v137 objects:v158 count:16];
              if (v89)
              {
                v90 = v89;
                v91 = *v138;
                while (2)
                {
                  v92 = 0;
                  v93 = v41;
                  do
                  {
                    if (*v138 != v91)
                    {
                      objc_enumerationMutation(v88);
                    }

                    v94 = *(*(&v137 + 1) + 8 * v92);
                    v95 = objc_opt_class();
                    v136 = v93;
                    LODWORD(v94) = _checkClassType(v94, v95, @"CPP_ID", &v136);
                    v41 = v136;

                    if (!v94)
                    {
                      [v9 setError:v41];
                      v107 = v9;

                      goto LABEL_90;
                    }

                    v92 = v92 + 1;
                    v93 = v41;
                  }

                  while (v90 != v92);
                  v90 = [v88 countByEnumeratingWithState:&v137 objects:v158 count:16];
                  if (v90)
                  {
                    continue;
                  }

                  break;
                }
              }

              [v11 setCppIds:v88];
              v38 = obj;
LABEL_70:
              v96 = [resultCopy objectForKey:@"triggers"];

              if (v96)
              {
                v97 = objc_opt_class();
                v98 = v41;
                v135 = v41;
                v88 = v96;
                v99 = _checkClassType(v96, v97, @"triggers", &v135);
                v41 = v135;

                if ((v99 & 1) == 0)
                {
                  [v9 setError:v41];
                  v113 = v9;
LABEL_90:
                  v38 = v88;
                  goto LABEL_98;
                }

                v131 = 0u;
                v132 = 0u;
                v133 = 0u;
                v134 = 0u;
                obja = v96;
                v100 = [obja countByEnumeratingWithState:&v131 objects:v157 count:16];
                if (v100)
                {
                  v101 = v100;
                  v124 = *v132;
                  v38 = obja;
                  while (2)
                  {
                    v102 = 0;
                    v103 = v41;
                    do
                    {
                      if (*v132 != v124)
                      {
                        objc_enumerationMutation(obja);
                      }

                      v104 = *(*(&v131 + 1) + 8 * v102);
                      v105 = objc_opt_class();
                      v130 = v103;
                      LODWORD(v104) = _checkClassType(v104, v105, @"TRIGGER", &v130);
                      v41 = v130;

                      if (!v104)
                      {
                        [v9 setError:v41];
                        v114 = v9;

                        goto LABEL_98;
                      }

                      v102 = v102 + 1;
                      v103 = v41;
                    }

                    while (v101 != v102);
                    v101 = [obja countByEnumeratingWithState:&v131 objects:v157 count:16];
                    if (v101)
                    {
                      continue;
                    }

                    break;
                  }
                }

                [v11 setTriggers:obja];
              }

              else
              {
                v88 = 0;
              }

              v108 = [resultCopy objectForKey:@"creativeDetails"];

              v38 = v108;
              if (v108)
              {
                v109 = objc_opt_class();
                v110 = v41;
                v129 = v41;
                v111 = _checkClassType(v38, v109, @"creativeDetails", &v129);
                v41 = v129;

                if ((v111 & 1) == 0)
                {
                  [v9 setError:v41];
                  goto LABEL_97;
                }

                [v11 setCreativeDetails:v38];
              }

              [v11 setIAdID:v128];
              [v9 addRepresentation:v11];
LABEL_97:
              v120 = v9;
LABEL_98:
              v33 = v126;
              v23 = v123;
              goto LABEL_47;
            }

            [v9 setError:v41];
            v106 = v9;
LABEL_47:

            v27 = v38;
            v36 = v41;
            goto LABEL_48;
          }

          [v11 setPositionInformation:v38];
          positionInformation = [v11 positionInformation];
          v74 = [positionInformation objectForKey:@"slot"];
          v75 = v38;

          v76 = objc_opt_class();
          v142 = v72;
          v38 = v74;
          LOBYTE(positionInformation) = _checkClassType(v74, v76, @"slot", &v142);
          v41 = v142;

          if (positionInformation)
          {
            integerValue = [v74 integerValue];
            v78 = integerValue;
            if ((integerValue - 1) < 0xA)
            {
              if (integerValue >= 3)
              {
                v79 = APLogForCategory();
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  v162 = v78;
                  _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Slot number: %ld", buf, 0xCu);
                }
              }

              [v11 setSlotNumber:v78];
              goto LABEL_57;
            }

            v115 = APLogForCategory();
            if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v162 = v78;
              _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "Unexpected slot: %ld", buf, 0xCu);
            }

            v159 = @"reason";
            v116 = [NSString stringWithFormat:@"Unexpected slot: %ld", v78];
            v160 = v116;
            v117 = [NSDictionary dictionaryWithObjects:&v160 forKeys:&v159 count:1];
            v118 = [NSError errorWithDomain:@"com.apple.ap.MediaServiceRequest" code:2201 userInfo:v117];

            [v9 setError:v118];
            v119 = v9;
          }

          else
          {
            [v9 setError:v41];
            v112 = v9;
          }

LABEL_46:
          v33 = v126;
          goto LABEL_47;
        }

LABEL_45:
        [v9 setError:v41];
        v80 = v9;
        goto LABEL_46;
      }

      v50 = objc_opt_class();
      v148 = v41;
      v51 = _checkClassType(v43, v50, @"parentAppCheckEnabled", &v148);
      v46 = v148;

      if (v51)
      {
        [v11 setParentAppCheckEnabled:{objc_msgSend(v43, "BOOLValue")}];
        goto LABEL_23;
      }
    }

    [v9 setError:v46];
    v54 = v9;
    v38 = v43;
    v41 = v46;
    goto LABEL_46;
  }

  v28 = objc_opt_class();
  v153 = v15;
  v29 = _checkClassType(v27, v28, @"targetingExpressionId", &v153);
  v30 = v153;

  if (v29)
  {
    v127 = v22;
    [v9 setTargetingExpressionId:v27];
    goto LABEL_12;
  }

  [v9 setError:v30];
  v53 = v9;
LABEL_49:

  v13 = v27;
  v15 = v30;
  iDCopy = v128;
LABEL_50:

  return v9;
}

@end