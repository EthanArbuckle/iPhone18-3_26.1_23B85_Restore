@interface APRepresentationData
- (id)_frequencyCapDataFromAdData:(id)data;
- (id)_policyDataFromAdData:(id)data;
- (id)_targetingDimensionsFromAdData:(id)data;
- (id)initWithAdData:(id)data placementType:(int64_t)type maxSize:(id)size mediaAsset:(id)asset error:(id *)error;
@end

@implementation APRepresentationData

- (id)initWithAdData:(id)data placementType:(int64_t)type maxSize:(id)size mediaAsset:(id)asset error:(id *)error
{
  var1 = size.var1;
  var0 = size.var0;
  dataCopy = data;
  assetCopy = asset;
  v15 = [(APRepresentationData *)self init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_51;
  }

  [(APRepresentationData *)v15 setPlacementType:type];
  if (type == 4 && [dataCopy hasDesiredPosition])
  {
    desiredPosition = [dataCopy desiredPosition];
  }

  else
  {
    desiredPosition = 0;
  }

  [(APRepresentationData *)v16 setDesiredPosition:desiredPosition];
  actions = [dataCopy actions];
  firstObject = [actions firstObject];

  if (firstObject)
  {
    actions2 = [dataCopy actions];
    firstObject2 = [actions2 firstObject];

    iTunesMetadatas = [dataCopy iTunesMetadatas];
    v23 = [APTapAction makeTapActionWithLegacyAction:firstObject2 iTunesMetadata:iTunesMetadatas error:error];
    [(APRepresentationData *)v16 setTapAction:v23];
  }

  if ([dataCopy hasSpecification])
  {
    specification = [dataCopy specification];
    hasType = [specification hasType];

    if (hasType)
    {
      specification2 = [dataCopy specification];
      -[APRepresentationData setPlacementType:](v16, "setPlacementType:", +[APLegacyTypeTranslator creativeTypeToPlacementType:](APLegacyTypeTranslator, "creativeTypeToPlacementType:", [specification2 type]));
    }
  }

  if ([dataCopy hasAdType])
  {
    adType = [dataCopy adType];
    [(APRepresentationData *)v16 setRawAdType:adType];
  }

  if ([dataCopy hasAdFormatType])
  {
    adFormatType = [dataCopy adFormatType];
    [(APRepresentationData *)v16 setRawAdFormatType:adFormatType];
  }

  [(APRepresentationData *)v16 setPrivacyMarkerPosition:3];
  if ([dataCopy hasAdPrivacyMarkPosition])
  {
    -[APRepresentationData setPrivacyMarkerPosition:](v16, "setPrivacyMarkerPosition:", +[APLegacyTypeTranslator adPrivacyMarkPositionToAdPrivacyMarkerPosition:](APLegacyTypeTranslator, "adPrivacyMarkPositionToAdPrivacyMarkerPosition:", [dataCopy adPrivacyMarkPosition]));
  }

  if ([dataCopy hasAdPrivacyMarkerType])
  {
    v29 = +[APLegacyTypeTranslator adPrivacyMarkerTypeToPrivacyMarkerType:](APLegacyTypeTranslator, "adPrivacyMarkerTypeToPrivacyMarkerType:", [dataCopy adPrivacyMarkerType]);
  }

  else
  {
    v29 = 0;
  }

  [(APRepresentationData *)v16 setPrivacyMarkerType:v29];
  if (assetCopy)
  {
    mediaURL = [assetCopy mediaURL];
    v31 = [NSURL URLWithString:mediaURL];
    [(APRepresentationData *)v16 setVideoURL:v31];

    mediaFiles = [dataCopy mediaFiles];
    [mediaFiles duration];
    [(APRepresentationData *)v16 setDuration:?];

    -[APRepresentationData setSize:](v16, "setSize:", [assetCopy width], objc_msgSend(assetCopy, "height"));
    [dataCopy skipThreshold];
    [(APRepresentationData *)v16 setSkipThreshold:?];
    [assetCopy bitrate];
    [(APRepresentationData *)v16 setBitrate:?];
  }

  actions3 = [dataCopy actions];
  if (![actions3 count])
  {

LABEL_28:
    if ([(APRepresentationData *)v16 placementType]!= 3)
    {
      [APLegacyTypeTranslator adSizeForContainerSize:dataCopy adData:var0, var1];
      [(APRepresentationData *)v16 setSize:?];
    }

    nativeMetadatas = [dataCopy nativeMetadatas];

    if (nativeMetadatas)
    {
      nativeMetadatas2 = [dataCopy nativeMetadatas];
      v42 = [APLegacyTypeTranslator parameterArrayToDictionary:nativeMetadatas2];

      v43 = [v42 objectForKeyedSubscript:@"nativeAdArticleId"];
      [(APRepresentationData *)v16 setArticleID:v43];

      v44 = [v42 objectForKeyedSubscript:@"nativeAdTitle"];
      [(APRepresentationData *)v16 setArticleTitle:v44];

      v45 = [v42 objectForKeyedSubscript:@"nativeAdSponsoredBy"];
      [(APRepresentationData *)v16 setAdvertiserName:v45];

      v46 = [v42 objectForKeyedSubscript:@"nativeAdCampaignData"];
      [(APRepresentationData *)v16 setCampaignData:v46];

      v47 = [v42 objectForKeyedSubscript:@"videoSkipEnabled"];
      -[APRepresentationData setSkipEnabled:](v16, "setSkipEnabled:", [v47 BOOLValue]);

      v48 = [v42 objectForKeyedSubscript:@"unbranded"];
      -[APRepresentationData setUnbranded:](v16, "setUnbranded:", [v48 BOOLValue]);

      nativeMetadatas = [v42 objectForKeyedSubscript:@"campaignId"];
      v49 = [v42 objectForKeyedSubscript:@"lineId"];
    }

    else
    {
      v49 = 0;
    }

    if (+[APSystemInternal isAppleInternalInstall](APSystemInternal, "isAppleInternalInstall") && (+[APMockAdServerSettings settings](APMockAdServerSettings, "settings"), v50 = objc_claimAutoreleasedReturnValue(), [v50 adTag], v51 = objc_claimAutoreleasedReturnValue(), v51, v50, v51))
    {
      adTagContentString = +[APMockAdServerSettings settings];
      adTag = [adTagContentString adTag];
      v54 = [APLegacyTypeTranslator base64Decode:adTag];
      [(APRepresentationData *)v16 setAdTag:v54];
    }

    else
    {
      if (![dataCopy hasAdTagContentString])
      {
        goto LABEL_39;
      }

      adTagContentString = [dataCopy adTagContentString];
      adTag = [APLegacyTypeTranslator base64Decode:adTagContentString];
      [(APRepresentationData *)v16 setAdTag:adTag];
    }

LABEL_39:
    if ([dataCopy hasAdFrequencyCapData])
    {
      v55 = [(APRepresentationData *)v16 _frequencyCapDataFromAdData:dataCopy];
      [(APRepresentationData *)v16 setFrequencyCapData:v55];
    }

    if ([dataCopy hasPolicyData])
    {
      v56 = [(APRepresentationData *)v16 _policyDataFromAdData:dataCopy];
      [(APRepresentationData *)v16 setPolicyData:v56];
    }

    if ([dataCopy hasTargetingDimensions])
    {
      v57 = [(APRepresentationData *)v16 _targetingDimensionsFromAdData:dataCopy];
      [(APRepresentationData *)v16 setTargetingDimensions:v57];
    }

    if (nativeMetadatas)
    {
      [(APRepresentationData *)v16 setJourneyRelayCampaignId:nativeMetadatas];
      if (v49)
      {
LABEL_47:
        [(APRepresentationData *)v16 setJourneyRelayLineId:v49];
LABEL_50:

LABEL_51:
        v39 = v16;
        goto LABEL_52;
      }
    }

    else
    {
      v58 = [APContentData journeyStartRelayCampaignValueFrom:dataCopy];
      [(APRepresentationData *)v16 setJourneyRelayCampaignId:v58];

      if (v49)
      {
        goto LABEL_47;
      }
    }

    v59 = [APContentData journeyStartRelayLineIdentifierValueFrom:dataCopy];
    [(APRepresentationData *)v16 setJourneyRelayLineId:v59];

    goto LABEL_50;
  }

  actions4 = [dataCopy actions];
  v35 = [actions4 objectAtIndexedSubscript:0];
  hasAppStoreViewTemplate = [v35 hasAppStoreViewTemplate];

  if (!hasAppStoreViewTemplate)
  {
    goto LABEL_28;
  }

  [(APRepresentationData *)v16 setSize:var0, var1];
  v37 = APLogForCategory();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    identifier = [(APRepresentationData *)v16 identifier];
    v61 = 138543362;
    v62 = identifier;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "We are turning off NAAN ads. Following content is being dropped: %{public}@", &v61, 0xCu);
  }

  v39 = 0;
LABEL_52:

  return v39;
}

- (id)_frequencyCapDataFromAdData:(id)data
{
  dataCopy = data;
  adFrequencyCapData = [dataCopy adFrequencyCapData];

  if (adFrequencyCapData)
  {
    adFrequencyCapData2 = [dataCopy adFrequencyCapData];
    v7 = objc_alloc_init(APFrequencyCapData);
    [v7 setRelevantIdentifier:{+[APLegacyTypeTranslator RelevantIdentifierToRelevantIdentifierType:](APLegacyTypeTranslator, "RelevantIdentifierToRelevantIdentifierType:", objc_msgSend(adFrequencyCapData2, "relevantIdentifier"))}];
    [v7 setValue:{objc_msgSend(adFrequencyCapData2, "adFrequencyValue")}];
    [v7 setDuration:{objc_msgSend(adFrequencyCapData2, "adFrequencyDuration")}];
  }

  else
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      identifier = [(APRepresentationData *)self identifier];
      v11 = 138543362;
      v12 = identifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Content %{public}@ has no frequency cap data.", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_policyDataFromAdData:(id)data
{
  dataCopy = data;
  policyData = [dataCopy policyData];

  if (policyData)
  {
    policyData2 = [dataCopy policyData];
    v7 = objc_alloc_init(APPolicyData);
    identifier = [policyData2 identifier];
    [v7 setCreativeIdentifier:identifier];

    policyValues = [policyData2 policyValues];
    v10 = [APLegacyTypeTranslator numericParameterArrayToDictionary:policyValues];
    [v7 setPolicyValue:v10];
  }

  else
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [(APRepresentationData *)self identifier];
      v14 = 138543362;
      v15 = identifier2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Content %{public}@ has no policy data.", &v14, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_targetingDimensionsFromAdData:(id)data
{
  dataCopy = data;
  targetingDimensions = [dataCopy targetingDimensions];

  if (targetingDimensions)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    targetingDimensions2 = [dataCopy targetingDimensions];
    inclusionCriterias = [targetingDimensions2 inclusionCriterias];

    v9 = [inclusionCriterias countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(inclusionCriterias);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          v14 = objc_alloc_init(APTargetingCriteria);
          criteriaIdentifier = [v13 criteriaIdentifier];
          [v14 setIdentifier:criteriaIdentifier];

          criteriaValues = [v13 criteriaValues];
          [v14 setValues:criteriaValues];

          [v6 addObject:v14];
        }

        v10 = [inclusionCriterias countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v10);
    }

    v17 = objc_alloc_init(NSMutableArray);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = dataCopy;
    targetingDimensions3 = [dataCopy targetingDimensions];
    exclusionCriterias = [targetingDimensions3 exclusionCriterias];

    v20 = [exclusionCriterias countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(exclusionCriterias);
          }

          v24 = *(*(&v33 + 1) + 8 * j);
          v25 = objc_alloc_init(APTargetingCriteria);
          criteriaIdentifier2 = [v24 criteriaIdentifier];
          [v25 setIdentifier:criteriaIdentifier2];

          criteriaValues2 = [v24 criteriaValues];
          [v25 setValues:criteriaValues2];

          [v17 addObject:v25];
        }

        v21 = [exclusionCriterias countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);
    }

    v28 = objc_alloc_init(APTargetingDimensions);
    [v28 setInclusionCriteria:v6];
    [v28 setExclusionCriteria:v17];

    dataCopy = v32;
  }

  else
  {
    v29 = APLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      identifier = [(APRepresentationData *)self identifier];
      *buf = 138543362;
      v44 = identifier;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Content %{public}@ has no targeting dimensions data.", buf, 0xCu);
    }

    v28 = objc_alloc_init(APTargetingDimensions);
    [v28 setInclusionCriteria:&__NSArray0__struct];
    [v28 setExclusionCriteria:&__NSArray0__struct];
  }

  return v28;
}

@end