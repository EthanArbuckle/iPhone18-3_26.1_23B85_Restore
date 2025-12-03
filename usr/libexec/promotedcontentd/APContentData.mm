@interface APContentData
+ (id)journeyStartRelayValuesFrom:(id)from;
- (APContentData)initWithAdData:(id)data identifier:(id)identifier contextIdentifier:(id)contextIdentifier placementType:(int64_t)type maxSize:(id)size;
- (APContentData)initWithUnfilledReason:(int64_t)reason error:(id)error contentIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier containerSize:(id)size placementType:(int64_t)type;
- (id)_createInstallAttributionFromAdData:(id)data;
- (id)_createRepresentationsFromAdData:(id)data placementType:(int64_t)type maxSize:(id)size mediaAssets:(id)assets;
- (id)initRateLimitedForContextId:(id)id containerSize:(id)size placementType:(int64_t)type;
- (void)addRepresentationWithSize:(id)size andPlacementType:(int64_t)type;
@end

@implementation APContentData

- (APContentData)initWithAdData:(id)data identifier:(id)identifier contextIdentifier:(id)contextIdentifier placementType:(int64_t)type maxSize:(id)size
{
  var1 = size.var1;
  var0 = size.var0;
  dataCopy = data;
  identifierCopy = identifier;
  contextIdentifierCopy = contextIdentifier;
  v16 = [(APContentData *)self init];
  v17 = v16;
  if (!v16)
  {
LABEL_79:
    v109 = v17;
    goto LABEL_80;
  }

  [(APContentData *)v16 setIdentifier:identifierCopy];
  [(APContentData *)v17 setContextIdentifier:contextIdentifierCopy];
  if ([dataCopy hasUniqueIdentifier])
  {
    uniqueIdentifier = [dataCopy uniqueIdentifier];
    [(APContentData *)v17 setUniqueIdentifier:uniqueIdentifier];
  }

  mediaFiles = [dataCopy mediaFiles];
  mediaAssets = [mediaFiles mediaAssets];
  typeCopy = type;
  var1 = [(APContentData *)v17 _createRepresentationsFromAdData:dataCopy placementType:type maxSize:mediaAssets mediaAssets:var0, var1];

  v114 = contextIdentifierCopy;
  if ([dataCopy hasMediaFiles])
  {
    mediaFiles2 = [dataCopy mediaFiles];
    mediaAssets2 = [mediaFiles2 mediaAssets];
    v24 = [mediaAssets2 count];

    if (v24)
    {
      v111 = identifierCopy;
      v25 = +[APDeviceInfo current];
      signalStrength = [v25 signalStrength];
      unsignedIntegerValue = [signalStrength unsignedIntegerValue];

      v28 = +[APDeviceInfo current];
      connectionType = [v28 connectionType];

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v30 = var1;
      v31 = var1;
      v32 = [v31 countByEnumeratingWithState:&v117 objects:v129 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v118;
        do
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v118 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v117 + 1) + 8 * i);
            [v36 setSignalStrength:unsignedIntegerValue];
            [v36 setConnectionType:connectionType];
          }

          v33 = [v31 countByEnumeratingWithState:&v117 objects:v129 count:16];
        }

        while (v33);
      }

      identifierCopy = v111;
      var1 = v30;
    }
  }

  [(APContentData *)v17 addRepresentations:var1];
  actions = [dataCopy actions];
  firstObject = [actions firstObject];

  v115 = var1;
  if (!firstObject)
  {
    firstObject2 = 0;
    if (![dataCopy hasInstallAttribution])
    {
      goto LABEL_32;
    }

LABEL_20:
    installAttribution = [dataCopy installAttribution];
    v42 = [(APContentData *)v17 _createInstallAttributionFromAdData:installAttribution];
    [(APContentData *)v17 setInstallAttribution:v42];

    installAttribution2 = [dataCopy installAttribution];
    attributionSignature = [installAttribution2 attributionSignature];
    if (attributionSignature)
    {
      v45 = attributionSignature;
      v46 = identifierCopy;
      installAttribution3 = [dataCopy installAttribution];
      attributionSignature2 = [installAttribution3 attributionSignature];
      if ([attributionSignature2 isEqualToString:&stru_1004810B8] && firstObject2)
      {
        action = [firstObject2 action];

        v50 = action == 8;
        identifierCopy = v46;
        goto LABEL_26;
      }

      identifierCopy = v46;
    }

    else
    {
      if (firstObject2)
      {
        action2 = [firstObject2 action];

        v50 = action2 == 8;
LABEL_26:
        var1 = v115;
        if (!v50)
        {
          goto LABEL_32;
        }

LABEL_28:
        [APAnalytics sendEvent:@"attributionSignatureForAdDestination"];
        goto LABEL_32;
      }
    }

    var1 = v115;
    goto LABEL_32;
  }

  actions2 = [dataCopy actions];
  firstObject2 = [actions2 firstObject];

  if ([dataCopy hasInstallAttribution])
  {
    goto LABEL_20;
  }

  if (firstObject2 && [firstObject2 action] == 8)
  {
    goto LABEL_28;
  }

LABEL_32:
  if ([dataCopy hasUnfilledReasonCode])
  {
    -[APContentData setServerUnfilledReason:](v17, "setServerUnfilledReason:", +[APLegacyTypeTranslator AdDataUnfilledReasonCodeToUnfilledReasonCode:](APLegacyTypeTranslator, "AdDataUnfilledReasonCodeToUnfilledReasonCode:", [dataCopy unfilledReasonCode]));
    v52 = APLogForCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      unfilledReasonCode = [dataCopy unfilledReasonCode];
      unfilledReasonCode2 = [dataCopy unfilledReasonCode];
      if ((unfilledReasonCode2 - 201) >= 5)
      {
        v55 = [NSString stringWithFormat:@"(unknown: %i)", unfilledReasonCode2];
      }

      else
      {
        v55 = *(&off_10047D268 + (unfilledReasonCode2 - 201));
      }

      unfilledReasonInfo = [dataCopy unfilledReasonInfo];
      *buf = 138544130;
      v122 = identifierCopy;
      v123 = 2048;
      v124 = unfilledReasonCode;
      v125 = 2114;
      v126 = v55;
      v127 = 2114;
      v128 = unfilledReasonInfo;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Ad %{public}@ returned unfilled with code %ld (%{public}@) and reason %{public}@", buf, 0x2Au);
    }

    v91 = v17;
    goto LABEL_65;
  }

  if (+[APSystemInternal isAppleInternalInstall])
  {
    v56 = +[APMockAdServerSettings settings];
    statusConditionExpression = [v56 statusConditionExpression];

    if (statusConditionExpression)
    {
      v58 = +[APMockAdServerSettings settings];
      statusConditionExpression2 = [v58 statusConditionExpression];
      v60 = [NSString stringWithFormat:@"%@", statusConditionExpression2];
      [dataCopy setExpressionToEvaluate:v60];

      v61 = APLogForCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        expressionToEvaluate = [dataCopy expressionToEvaluate];
        *buf = 138412290;
        v122 = expressionToEvaluate;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "Forcing status condition expression from defaults write: %@", buf, 0xCu);
      }
    }
  }

  if ([dataCopy hasExpressionToEvaluate])
  {
    v63 = +[PCStatusConditionsService sharedInstance];
    expressionToEvaluate2 = [dataCopy expressionToEvaluate];
    v116 = 0;
    v65 = [v63 evaluate:expressionToEvaluate2 error:&v116];
    v66 = v116;

    if (v66)
    {
      v67 = identifierCopy;
      v68 = APLogForCategory();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v122 = v67;
        v123 = 2114;
        v124 = v66;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Error in status condition for content %{public}@: %{public}@", buf, 0x16u);
      }

      localizedDescription = [v66 localizedDescription];
      v70 = [APLegacyInterfaceError validationErrorWithCode:4507 andReason:localizedDescription];
      [(APContentData *)v17 setError:v70];

      [(APContentData *)v17 setServerUnfilledReason:1021];
      identifierCopy = v67;
    }

    if (v65)
    {
      v71 = APLogForCategory();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        expressionToEvaluate3 = [dataCopy expressionToEvaluate];
        *buf = 138543618;
        v122 = identifierCopy;
        v123 = 2112;
        v124 = expressionToEvaluate3;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Discarding content %{public}@ for status condition %@", buf, 0x16u);
      }

      v73 = [APLegacyInterfaceError discardedErrorWithCode:2600 andReason:@"Status condition hit"];
      [(APContentData *)v17 setError:v73];

      [(APContentData *)v17 setServerUnfilledReason:1020];
    }
  }

  if ([dataCopy hasStartDate])
  {
    [dataCopy startDate];
    v74 = [NSDate dateWithTimeIntervalSince1970:?];
    [(APContentData *)v17 setStartDate:v74];
  }

  if (![dataCopy hasExpirationDate])
  {
    adDataResponseIdentifier = [dataCopy adDataResponseIdentifier];
    identifier = [(APContentData *)v17 identifier];
    v87 = [NSString stringWithFormat:@"Ad %@ with adOpID %@ has no expiration date set.", adDataResponseIdentifier, identifier];
    v88 = [APLegacyInterfaceError validationErrorWithCode:4502 andReason:v87];
    [(APContentData *)v17 setError:v88];

    [(APContentData *)v17 setServerUnfilledReason:1021];
    v89 = v17;
    goto LABEL_61;
  }

  [dataCopy expirationDate];
  v75 = [NSDate dateWithTimeIntervalSince1970:?];
  if (+[APSystemInternal isAppleInternalInstall]&& [APMockAdServerSettings isAdResponseMockedForPlacementType:typeCopy])
  {
    v76 = +[NSDate date];
    v77 = [v76 dateByAddingTimeInterval:14400.0];

    v75 = v77;
  }

  v78 = +[NSDate date];
  v79 = [v78 dateByAddingTimeInterval:2592000.0];
  if ([v75 compare:v78] != -1 && objc_msgSend(v75, "compare:", v79) != 1)
  {
    [(APContentData *)v17 setExpirationDate:v75];

    v92 = +[NSMutableDictionary dictionary];
    [(APContentData *)v17 setMetadata:v92];

    nativeMetadatas = [dataCopy nativeMetadatas];

    if (nativeMetadatas)
    {
      nativeMetadatas2 = [dataCopy nativeMetadatas];
      v95 = [APLegacyTypeTranslator parameterArrayToDictionaryForMetadata:nativeMetadatas2];

      metadata = [(APContentData *)v17 metadata];
      [metadata setValue:v95 forKey:@"nativeMetadata"];
    }

    if ([dataCopy hasTransparencyDetails])
    {
      transparencyDetails = [dataCopy transparencyDetails];
      transparencyRendererURL = [transparencyDetails transparencyRendererURL];
      v99 = [NSURL URLWithString:transparencyRendererURL];
      [(APContentData *)v17 setDisclosureURL:v99];

      transparencyDetails2 = [dataCopy transparencyDetails];
      transparencyRendererPayload = [transparencyDetails2 transparencyRendererPayload];
      [(APContentData *)v17 setDisclosureRendererPayload:transparencyRendererPayload];

      transparencyDetails3 = [dataCopy transparencyDetails];
      targetingExpressionId = [transparencyDetails3 targetingExpressionId];
      [(APContentData *)v17 setTargetingExpressionId:targetingExpressionId];
    }

    if ([dataCopy hasMinimumIntervalBetweenPresentations])
    {
      [dataCopy minimumIntervalBetweenPresentations];
      [(APContentData *)v17 setMinimumTimeBetweenPresentation:v104];
    }

    if ([dataCopy hasHumanReadableName])
    {
      humanReadableName = [dataCopy humanReadableName];
      [(APContentData *)v17 setBrandName:humanReadableName];

      humanReadableName2 = [dataCopy humanReadableName];
      [(APContentData *)v17 setHumanReadableName:humanReadableName2];
    }

    if ([dataCopy hasAccessibilityDescription])
    {
      accessibilityDescription = [dataCopy accessibilityDescription];
      [(APContentData *)v17 setCampaignText:accessibilityDescription];
    }

    if ([dataCopy hasBannerImpressionThreshold])
    {
      [dataCopy bannerImpressionThreshold];
      [(APContentData *)v17 setImpressionThreshold:v108];
    }

    contextIdentifierCopy = v114;
    goto LABEL_79;
  }

  [dataCopy adDataResponseIdentifier];
  v80 = v112 = identifierCopy;
  identifier2 = [(APContentData *)v17 identifier];
  v82 = [NSString stringWithFormat:@"Ad %@ with adOpID %@ has an invalid expiration date.", v80, identifier2];
  v83 = [APLegacyInterfaceError validationErrorWithCode:4502 andReason:v82];
  [(APContentData *)v17 setError:v83];

  identifierCopy = v112;
  [(APContentData *)v17 setServerUnfilledReason:1021];
  v84 = v17;

LABEL_61:
  var1 = v115;
LABEL_65:

  contextIdentifierCopy = v114;
LABEL_80:

  return v17;
}

- (id)initRateLimitedForContextId:(id)id containerSize:(id)size placementType:(int64_t)type
{
  var1 = size.var1;
  var0 = size.var0;
  idCopy = id;
  v10 = [(APContentData *)self init];
  v11 = v10;
  if (v10)
  {
    [(APContentData *)v10 setContextIdentifier:idCopy];
    [(APContentData *)v11 setServerUnfilledReason:1000];
    [(APContentData *)v11 addRepresentationWithSize:type andPlacementType:var0, var1];
  }

  return v11;
}

- (APContentData)initWithUnfilledReason:(int64_t)reason error:(id)error contentIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier containerSize:(id)size placementType:(int64_t)type
{
  var1 = size.var1;
  var0 = size.var0;
  errorCopy = error;
  identifierCopy = identifier;
  contextIdentifierCopy = contextIdentifier;
  v18 = [(APContentData *)self init];
  v19 = v18;
  if (v18)
  {
    [(APContentData *)v18 setIdentifier:identifierCopy];
    [(APContentData *)v19 setContextIdentifier:contextIdentifierCopy];
    [(APContentData *)v19 setError:errorCopy];
    [(APContentData *)v19 setServerUnfilledReason:reason];
    [(APContentData *)v19 addRepresentationWithSize:type andPlacementType:var0, var1];
  }

  return v19;
}

- (void)addRepresentationWithSize:(id)size andPlacementType:(int64_t)type
{
  var1 = size.var1;
  var0 = size.var0;
  v8 = objc_alloc_init(APRepresentationData);
  [v8 setPlacementType:type];
  [APLegacyTypeTranslator errorAdSizeForContainerSize:var0, var1];
  [v8 setSize:?];
  [(APContentData *)self addRepresentation:v8];
}

- (id)_createInstallAttributionFromAdData:(id)data
{
  dataCopy = data;
  v4 = objc_alloc_init(APInstallAttribution);
  [v4 setAdamId:{objc_msgSend(dataCopy, "adamId")}];
  adNetworkId = [dataCopy adNetworkId];
  [v4 setAdNetworkId:adNetworkId];

  attributionSignature = [dataCopy attributionSignature];
  [v4 setAttributionSignature:attributionSignature];

  [v4 setCampaignId:{objc_msgSend(dataCopy, "campaignId")}];
  v7 = [NSUUID alloc];
  uuid = [dataCopy uuid];
  v9 = [v7 initWithUUIDString:uuid];
  [v4 setContextIdentifier:v9];

  [v4 setSourceAppAdamId:{objc_msgSend(dataCopy, "sourceAppAdamId")}];
  [v4 setTimestamp:{objc_msgSend(dataCopy, "timestamp")}];
  version = [dataCopy version];

  [v4 setVersion:version];

  return v4;
}

- (id)_createRepresentationsFromAdData:(id)data placementType:(int64_t)type maxSize:(id)size mediaAssets:(id)assets
{
  var1 = size.var1;
  var0 = size.var0;
  dataCopy = data;
  assetsCopy = assets;
  v12 = +[NSMutableArray array];
  v40 = v12;
  if ([dataCopy adLayoutDatasCount])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    adLayoutDatas = [dataCopy adLayoutDatas];
    v14 = [adLayoutDatas countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v14)
    {
      v15 = v14;
      v39 = assetsCopy;
      v16 = 0;
      v17 = *v50;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          v19 = v16;
          if (*v50 != v17)
          {
            objc_enumerationMutation(adLayoutDatas);
          }

          v20 = *(*(&v49 + 1) + 8 * i);
          v21 = [PCNativeRepresentation alloc];
          v48 = v16;
          v22 = [v21 initWithAdData:dataCopy placementType:type maxSize:v20 nativeLayout:&v48 error:{var0, var1}];
          v16 = v48;

          if (v16)
          {
            [(APContentData *)self setError:v16];
          }

          else if (v22)
          {
            [v12 addObject:v22];
          }

          else
          {
            v23 = APLogForCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              identifier = [(APContentData *)self identifier];
              *buf = 138543362;
              v55 = identifier;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unknown error creating representation for content %{public}@", buf, 0xCu);

              v12 = v40;
            }
          }
        }

        v15 = [adLayoutDatas countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v15);
LABEL_32:
      assetsCopy = v39;
      goto LABEL_41;
    }

LABEL_33:
    v16 = 0;
    goto LABEL_41;
  }

  if (assetsCopy)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    adLayoutDatas = assetsCopy;
    v25 = [adLayoutDatas countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v25)
    {
      v26 = v25;
      v39 = assetsCopy;
      v16 = 0;
      v27 = *v45;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          v29 = v16;
          if (*v45 != v27)
          {
            objc_enumerationMutation(adLayoutDatas);
          }

          v30 = *(*(&v44 + 1) + 8 * j);
          v31 = [APRepresentationData alloc];
          v43 = v16;
          v32 = [v31 initWithAdData:dataCopy placementType:type maxSize:v30 mediaAsset:&v43 error:{var0, var1}];
          v16 = v43;

          if (v16)
          {
            [(APContentData *)self setError:v16];
          }

          else if (v32)
          {
            [v12 addObject:v32];
          }

          else
          {
            v33 = APLogForCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              identifier2 = [(APContentData *)self identifier];
              *buf = 138543362;
              v55 = identifier2;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Unknown error creating representation for content %{public}@", buf, 0xCu);

              v12 = v40;
            }
          }
        }

        v26 = [adLayoutDatas countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v26);
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v42 = 0;
  adLayoutDatas = [[APRepresentationData alloc] initWithAdData:dataCopy placementType:type maxSize:0 mediaAsset:&v42 error:{var0, var1}];
  v16 = v42;
  if (v16)
  {
    [(APContentData *)self setError:v16];
  }

  else if (adLayoutDatas)
  {
    [v12 addObject:adLayoutDatas];
  }

  else
  {
    v35 = APLogForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      identifier3 = [(APContentData *)self identifier];
      *buf = 138543362;
      v55 = identifier3;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unknown error creating representation for content %{public}@", buf, 0xCu);
    }
  }

LABEL_41:

  v37 = [v12 copy];

  return v37;
}

+ (id)journeyStartRelayValuesFrom:(id)from
{
  fromCopy = from;
  sub_1003204D0(fromCopy);

  sub_1001E27A8(&unk_1004D5850);
  v4.super.isa = sub_100398E48().super.isa;

  return v4.super.isa;
}

@end