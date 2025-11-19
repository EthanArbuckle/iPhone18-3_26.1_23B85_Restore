@interface APContentData
+ (id)journeyStartRelayValuesFrom:(id)a3;
- (APContentData)initWithAdData:(id)a3 identifier:(id)a4 contextIdentifier:(id)a5 placementType:(int64_t)a6 maxSize:(id)a7;
- (APContentData)initWithUnfilledReason:(int64_t)a3 error:(id)a4 contentIdentifier:(id)a5 contextIdentifier:(id)a6 containerSize:(id)a7 placementType:(int64_t)a8;
- (id)_createInstallAttributionFromAdData:(id)a3;
- (id)_createRepresentationsFromAdData:(id)a3 placementType:(int64_t)a4 maxSize:(id)a5 mediaAssets:(id)a6;
- (id)initRateLimitedForContextId:(id)a3 containerSize:(id)a4 placementType:(int64_t)a5;
- (void)addRepresentationWithSize:(id)a3 andPlacementType:(int64_t)a4;
@end

@implementation APContentData

- (APContentData)initWithAdData:(id)a3 identifier:(id)a4 contextIdentifier:(id)a5 placementType:(int64_t)a6 maxSize:(id)a7
{
  var1 = a7.var1;
  var0 = a7.var0;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [(APContentData *)self init];
  v17 = v16;
  if (!v16)
  {
LABEL_79:
    v109 = v17;
    goto LABEL_80;
  }

  [(APContentData *)v16 setIdentifier:v14];
  [(APContentData *)v17 setContextIdentifier:v15];
  if ([v13 hasUniqueIdentifier])
  {
    v18 = [v13 uniqueIdentifier];
    [(APContentData *)v17 setUniqueIdentifier:v18];
  }

  v19 = [v13 mediaFiles];
  v20 = [v19 mediaAssets];
  v113 = a6;
  v21 = [(APContentData *)v17 _createRepresentationsFromAdData:v13 placementType:a6 maxSize:v20 mediaAssets:var0, var1];

  v114 = v15;
  if ([v13 hasMediaFiles])
  {
    v22 = [v13 mediaFiles];
    v23 = [v22 mediaAssets];
    v24 = [v23 count];

    if (v24)
    {
      v111 = v14;
      v25 = +[APDeviceInfo current];
      v26 = [v25 signalStrength];
      v27 = [v26 unsignedIntegerValue];

      v28 = +[APDeviceInfo current];
      v29 = [v28 connectionType];

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v30 = v21;
      v31 = v21;
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
            [v36 setSignalStrength:v27];
            [v36 setConnectionType:v29];
          }

          v33 = [v31 countByEnumeratingWithState:&v117 objects:v129 count:16];
        }

        while (v33);
      }

      v14 = v111;
      v21 = v30;
    }
  }

  [(APContentData *)v17 addRepresentations:v21];
  v37 = [v13 actions];
  v38 = [v37 firstObject];

  v115 = v21;
  if (!v38)
  {
    v40 = 0;
    if (![v13 hasInstallAttribution])
    {
      goto LABEL_32;
    }

LABEL_20:
    v41 = [v13 installAttribution];
    v42 = [(APContentData *)v17 _createInstallAttributionFromAdData:v41];
    [(APContentData *)v17 setInstallAttribution:v42];

    v43 = [v13 installAttribution];
    v44 = [v43 attributionSignature];
    if (v44)
    {
      v45 = v44;
      v46 = v14;
      v47 = [v13 installAttribution];
      v48 = [v47 attributionSignature];
      if ([v48 isEqualToString:&stru_1004810B8] && v40)
      {
        v49 = [v40 action];

        v50 = v49 == 8;
        v14 = v46;
        goto LABEL_26;
      }

      v14 = v46;
    }

    else
    {
      if (v40)
      {
        v51 = [v40 action];

        v50 = v51 == 8;
LABEL_26:
        v21 = v115;
        if (!v50)
        {
          goto LABEL_32;
        }

LABEL_28:
        [APAnalytics sendEvent:@"attributionSignatureForAdDestination"];
        goto LABEL_32;
      }
    }

    v21 = v115;
    goto LABEL_32;
  }

  v39 = [v13 actions];
  v40 = [v39 firstObject];

  if ([v13 hasInstallAttribution])
  {
    goto LABEL_20;
  }

  if (v40 && [v40 action] == 8)
  {
    goto LABEL_28;
  }

LABEL_32:
  if ([v13 hasUnfilledReasonCode])
  {
    -[APContentData setServerUnfilledReason:](v17, "setServerUnfilledReason:", +[APLegacyTypeTranslator AdDataUnfilledReasonCodeToUnfilledReasonCode:](APLegacyTypeTranslator, "AdDataUnfilledReasonCodeToUnfilledReasonCode:", [v13 unfilledReasonCode]));
    v52 = APLogForCategory();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = [v13 unfilledReasonCode];
      v54 = [v13 unfilledReasonCode];
      if ((v54 - 201) >= 5)
      {
        v55 = [NSString stringWithFormat:@"(unknown: %i)", v54];
      }

      else
      {
        v55 = *(&off_10047D268 + (v54 - 201));
      }

      v90 = [v13 unfilledReasonInfo];
      *buf = 138544130;
      v122 = v14;
      v123 = 2048;
      v124 = v53;
      v125 = 2114;
      v126 = v55;
      v127 = 2114;
      v128 = v90;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Ad %{public}@ returned unfilled with code %ld (%{public}@) and reason %{public}@", buf, 0x2Au);
    }

    v91 = v17;
    goto LABEL_65;
  }

  if (+[APSystemInternal isAppleInternalInstall])
  {
    v56 = +[APMockAdServerSettings settings];
    v57 = [v56 statusConditionExpression];

    if (v57)
    {
      v58 = +[APMockAdServerSettings settings];
      v59 = [v58 statusConditionExpression];
      v60 = [NSString stringWithFormat:@"%@", v59];
      [v13 setExpressionToEvaluate:v60];

      v61 = APLogForCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = [v13 expressionToEvaluate];
        *buf = 138412290;
        v122 = v62;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "Forcing status condition expression from defaults write: %@", buf, 0xCu);
      }
    }
  }

  if ([v13 hasExpressionToEvaluate])
  {
    v63 = +[PCStatusConditionsService sharedInstance];
    v64 = [v13 expressionToEvaluate];
    v116 = 0;
    v65 = [v63 evaluate:v64 error:&v116];
    v66 = v116;

    if (v66)
    {
      v67 = v14;
      v68 = APLogForCategory();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v122 = v67;
        v123 = 2114;
        v124 = v66;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Error in status condition for content %{public}@: %{public}@", buf, 0x16u);
      }

      v69 = [v66 localizedDescription];
      v70 = [APLegacyInterfaceError validationErrorWithCode:4507 andReason:v69];
      [(APContentData *)v17 setError:v70];

      [(APContentData *)v17 setServerUnfilledReason:1021];
      v14 = v67;
    }

    if (v65)
    {
      v71 = APLogForCategory();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v72 = [v13 expressionToEvaluate];
        *buf = 138543618;
        v122 = v14;
        v123 = 2112;
        v124 = v72;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Discarding content %{public}@ for status condition %@", buf, 0x16u);
      }

      v73 = [APLegacyInterfaceError discardedErrorWithCode:2600 andReason:@"Status condition hit"];
      [(APContentData *)v17 setError:v73];

      [(APContentData *)v17 setServerUnfilledReason:1020];
    }
  }

  if ([v13 hasStartDate])
  {
    [v13 startDate];
    v74 = [NSDate dateWithTimeIntervalSince1970:?];
    [(APContentData *)v17 setStartDate:v74];
  }

  if (![v13 hasExpirationDate])
  {
    v85 = [v13 adDataResponseIdentifier];
    v86 = [(APContentData *)v17 identifier];
    v87 = [NSString stringWithFormat:@"Ad %@ with adOpID %@ has no expiration date set.", v85, v86];
    v88 = [APLegacyInterfaceError validationErrorWithCode:4502 andReason:v87];
    [(APContentData *)v17 setError:v88];

    [(APContentData *)v17 setServerUnfilledReason:1021];
    v89 = v17;
    goto LABEL_61;
  }

  [v13 expirationDate];
  v75 = [NSDate dateWithTimeIntervalSince1970:?];
  if (+[APSystemInternal isAppleInternalInstall]&& [APMockAdServerSettings isAdResponseMockedForPlacementType:v113])
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

    v93 = [v13 nativeMetadatas];

    if (v93)
    {
      v94 = [v13 nativeMetadatas];
      v95 = [APLegacyTypeTranslator parameterArrayToDictionaryForMetadata:v94];

      v96 = [(APContentData *)v17 metadata];
      [v96 setValue:v95 forKey:@"nativeMetadata"];
    }

    if ([v13 hasTransparencyDetails])
    {
      v97 = [v13 transparencyDetails];
      v98 = [v97 transparencyRendererURL];
      v99 = [NSURL URLWithString:v98];
      [(APContentData *)v17 setDisclosureURL:v99];

      v100 = [v13 transparencyDetails];
      v101 = [v100 transparencyRendererPayload];
      [(APContentData *)v17 setDisclosureRendererPayload:v101];

      v102 = [v13 transparencyDetails];
      v103 = [v102 targetingExpressionId];
      [(APContentData *)v17 setTargetingExpressionId:v103];
    }

    if ([v13 hasMinimumIntervalBetweenPresentations])
    {
      [v13 minimumIntervalBetweenPresentations];
      [(APContentData *)v17 setMinimumTimeBetweenPresentation:v104];
    }

    if ([v13 hasHumanReadableName])
    {
      v105 = [v13 humanReadableName];
      [(APContentData *)v17 setBrandName:v105];

      v106 = [v13 humanReadableName];
      [(APContentData *)v17 setHumanReadableName:v106];
    }

    if ([v13 hasAccessibilityDescription])
    {
      v107 = [v13 accessibilityDescription];
      [(APContentData *)v17 setCampaignText:v107];
    }

    if ([v13 hasBannerImpressionThreshold])
    {
      [v13 bannerImpressionThreshold];
      [(APContentData *)v17 setImpressionThreshold:v108];
    }

    v15 = v114;
    goto LABEL_79;
  }

  [v13 adDataResponseIdentifier];
  v80 = v112 = v14;
  v81 = [(APContentData *)v17 identifier];
  v82 = [NSString stringWithFormat:@"Ad %@ with adOpID %@ has an invalid expiration date.", v80, v81];
  v83 = [APLegacyInterfaceError validationErrorWithCode:4502 andReason:v82];
  [(APContentData *)v17 setError:v83];

  v14 = v112;
  [(APContentData *)v17 setServerUnfilledReason:1021];
  v84 = v17;

LABEL_61:
  v21 = v115;
LABEL_65:

  v15 = v114;
LABEL_80:

  return v17;
}

- (id)initRateLimitedForContextId:(id)a3 containerSize:(id)a4 placementType:(int64_t)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a3;
  v10 = [(APContentData *)self init];
  v11 = v10;
  if (v10)
  {
    [(APContentData *)v10 setContextIdentifier:v9];
    [(APContentData *)v11 setServerUnfilledReason:1000];
    [(APContentData *)v11 addRepresentationWithSize:a5 andPlacementType:var0, var1];
  }

  return v11;
}

- (APContentData)initWithUnfilledReason:(int64_t)a3 error:(id)a4 contentIdentifier:(id)a5 contextIdentifier:(id)a6 containerSize:(id)a7 placementType:(int64_t)a8
{
  var1 = a7.var1;
  var0 = a7.var0;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = [(APContentData *)self init];
  v19 = v18;
  if (v18)
  {
    [(APContentData *)v18 setIdentifier:v16];
    [(APContentData *)v19 setContextIdentifier:v17];
    [(APContentData *)v19 setError:v15];
    [(APContentData *)v19 setServerUnfilledReason:a3];
    [(APContentData *)v19 addRepresentationWithSize:a8 andPlacementType:var0, var1];
  }

  return v19;
}

- (void)addRepresentationWithSize:(id)a3 andPlacementType:(int64_t)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = objc_alloc_init(APRepresentationData);
  [v8 setPlacementType:a4];
  [APLegacyTypeTranslator errorAdSizeForContainerSize:var0, var1];
  [v8 setSize:?];
  [(APContentData *)self addRepresentation:v8];
}

- (id)_createInstallAttributionFromAdData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(APInstallAttribution);
  [v4 setAdamId:{objc_msgSend(v3, "adamId")}];
  v5 = [v3 adNetworkId];
  [v4 setAdNetworkId:v5];

  v6 = [v3 attributionSignature];
  [v4 setAttributionSignature:v6];

  [v4 setCampaignId:{objc_msgSend(v3, "campaignId")}];
  v7 = [NSUUID alloc];
  v8 = [v3 uuid];
  v9 = [v7 initWithUUIDString:v8];
  [v4 setContextIdentifier:v9];

  [v4 setSourceAppAdamId:{objc_msgSend(v3, "sourceAppAdamId")}];
  [v4 setTimestamp:{objc_msgSend(v3, "timestamp")}];
  v10 = [v3 version];

  [v4 setVersion:v10];

  return v4;
}

- (id)_createRepresentationsFromAdData:(id)a3 placementType:(int64_t)a4 maxSize:(id)a5 mediaAssets:(id)a6
{
  var1 = a5.var1;
  var0 = a5.var0;
  v10 = a3;
  v11 = a6;
  v12 = +[NSMutableArray array];
  v40 = v12;
  if ([v10 adLayoutDatasCount])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v13 = [v10 adLayoutDatas];
    v14 = [v13 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v14)
    {
      v15 = v14;
      v39 = v11;
      v16 = 0;
      v17 = *v50;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          v19 = v16;
          if (*v50 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v49 + 1) + 8 * i);
          v21 = [PCNativeRepresentation alloc];
          v48 = v16;
          v22 = [v21 initWithAdData:v10 placementType:a4 maxSize:v20 nativeLayout:&v48 error:{var0, var1}];
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
              v24 = [(APContentData *)self identifier];
              *buf = 138543362;
              v55 = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unknown error creating representation for content %{public}@", buf, 0xCu);

              v12 = v40;
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v15);
LABEL_32:
      v11 = v39;
      goto LABEL_41;
    }

LABEL_33:
    v16 = 0;
    goto LABEL_41;
  }

  if (v11)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v13 = v11;
    v25 = [v13 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v25)
    {
      v26 = v25;
      v39 = v11;
      v16 = 0;
      v27 = *v45;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          v29 = v16;
          if (*v45 != v27)
          {
            objc_enumerationMutation(v13);
          }

          v30 = *(*(&v44 + 1) + 8 * j);
          v31 = [APRepresentationData alloc];
          v43 = v16;
          v32 = [v31 initWithAdData:v10 placementType:a4 maxSize:v30 mediaAsset:&v43 error:{var0, var1}];
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
              v34 = [(APContentData *)self identifier];
              *buf = 138543362;
              v55 = v34;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Unknown error creating representation for content %{public}@", buf, 0xCu);

              v12 = v40;
            }
          }
        }

        v26 = [v13 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v26);
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v42 = 0;
  v13 = [[APRepresentationData alloc] initWithAdData:v10 placementType:a4 maxSize:0 mediaAsset:&v42 error:{var0, var1}];
  v16 = v42;
  if (v16)
  {
    [(APContentData *)self setError:v16];
  }

  else if (v13)
  {
    [v12 addObject:v13];
  }

  else
  {
    v35 = APLogForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [(APContentData *)self identifier];
      *buf = 138543362;
      v55 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unknown error creating representation for content %{public}@", buf, 0xCu);
    }
  }

LABEL_41:

  v37 = [v12 copy];

  return v37;
}

+ (id)journeyStartRelayValuesFrom:(id)a3
{
  v3 = a3;
  sub_1003204D0(v3);

  sub_1001E27A8(&unk_1004D5850);
  v4.super.isa = sub_100398E48().super.isa;

  return v4.super.isa;
}

@end