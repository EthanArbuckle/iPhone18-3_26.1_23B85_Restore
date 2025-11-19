@interface APRepresentationData
- (id)_frequencyCapDataFromAdData:(id)a3;
- (id)_policyDataFromAdData:(id)a3;
- (id)_targetingDimensionsFromAdData:(id)a3;
- (id)initWithAdData:(id)a3 placementType:(int64_t)a4 maxSize:(id)a5 mediaAsset:(id)a6 error:(id *)a7;
@end

@implementation APRepresentationData

- (id)initWithAdData:(id)a3 placementType:(int64_t)a4 maxSize:(id)a5 mediaAsset:(id)a6 error:(id *)a7
{
  var1 = a5.var1;
  var0 = a5.var0;
  v13 = a3;
  v14 = a6;
  v15 = [(APRepresentationData *)self init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_51;
  }

  [(APRepresentationData *)v15 setPlacementType:a4];
  if (a4 == 4 && [v13 hasDesiredPosition])
  {
    v17 = [v13 desiredPosition];
  }

  else
  {
    v17 = 0;
  }

  [(APRepresentationData *)v16 setDesiredPosition:v17];
  v18 = [v13 actions];
  v19 = [v18 firstObject];

  if (v19)
  {
    v20 = [v13 actions];
    v21 = [v20 firstObject];

    v22 = [v13 iTunesMetadatas];
    v23 = [APTapAction makeTapActionWithLegacyAction:v21 iTunesMetadata:v22 error:a7];
    [(APRepresentationData *)v16 setTapAction:v23];
  }

  if ([v13 hasSpecification])
  {
    v24 = [v13 specification];
    v25 = [v24 hasType];

    if (v25)
    {
      v26 = [v13 specification];
      -[APRepresentationData setPlacementType:](v16, "setPlacementType:", +[APLegacyTypeTranslator creativeTypeToPlacementType:](APLegacyTypeTranslator, "creativeTypeToPlacementType:", [v26 type]));
    }
  }

  if ([v13 hasAdType])
  {
    v27 = [v13 adType];
    [(APRepresentationData *)v16 setRawAdType:v27];
  }

  if ([v13 hasAdFormatType])
  {
    v28 = [v13 adFormatType];
    [(APRepresentationData *)v16 setRawAdFormatType:v28];
  }

  [(APRepresentationData *)v16 setPrivacyMarkerPosition:3];
  if ([v13 hasAdPrivacyMarkPosition])
  {
    -[APRepresentationData setPrivacyMarkerPosition:](v16, "setPrivacyMarkerPosition:", +[APLegacyTypeTranslator adPrivacyMarkPositionToAdPrivacyMarkerPosition:](APLegacyTypeTranslator, "adPrivacyMarkPositionToAdPrivacyMarkerPosition:", [v13 adPrivacyMarkPosition]));
  }

  if ([v13 hasAdPrivacyMarkerType])
  {
    v29 = +[APLegacyTypeTranslator adPrivacyMarkerTypeToPrivacyMarkerType:](APLegacyTypeTranslator, "adPrivacyMarkerTypeToPrivacyMarkerType:", [v13 adPrivacyMarkerType]);
  }

  else
  {
    v29 = 0;
  }

  [(APRepresentationData *)v16 setPrivacyMarkerType:v29];
  if (v14)
  {
    v30 = [v14 mediaURL];
    v31 = [NSURL URLWithString:v30];
    [(APRepresentationData *)v16 setVideoURL:v31];

    v32 = [v13 mediaFiles];
    [v32 duration];
    [(APRepresentationData *)v16 setDuration:?];

    -[APRepresentationData setSize:](v16, "setSize:", [v14 width], objc_msgSend(v14, "height"));
    [v13 skipThreshold];
    [(APRepresentationData *)v16 setSkipThreshold:?];
    [v14 bitrate];
    [(APRepresentationData *)v16 setBitrate:?];
  }

  v33 = [v13 actions];
  if (![v33 count])
  {

LABEL_28:
    if ([(APRepresentationData *)v16 placementType]!= 3)
    {
      [APLegacyTypeTranslator adSizeForContainerSize:v13 adData:var0, var1];
      [(APRepresentationData *)v16 setSize:?];
    }

    v40 = [v13 nativeMetadatas];

    if (v40)
    {
      v41 = [v13 nativeMetadatas];
      v42 = [APLegacyTypeTranslator parameterArrayToDictionary:v41];

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

      v40 = [v42 objectForKeyedSubscript:@"campaignId"];
      v49 = [v42 objectForKeyedSubscript:@"lineId"];
    }

    else
    {
      v49 = 0;
    }

    if (+[APSystemInternal isAppleInternalInstall](APSystemInternal, "isAppleInternalInstall") && (+[APMockAdServerSettings settings](APMockAdServerSettings, "settings"), v50 = objc_claimAutoreleasedReturnValue(), [v50 adTag], v51 = objc_claimAutoreleasedReturnValue(), v51, v50, v51))
    {
      v52 = +[APMockAdServerSettings settings];
      v53 = [v52 adTag];
      v54 = [APLegacyTypeTranslator base64Decode:v53];
      [(APRepresentationData *)v16 setAdTag:v54];
    }

    else
    {
      if (![v13 hasAdTagContentString])
      {
        goto LABEL_39;
      }

      v52 = [v13 adTagContentString];
      v53 = [APLegacyTypeTranslator base64Decode:v52];
      [(APRepresentationData *)v16 setAdTag:v53];
    }

LABEL_39:
    if ([v13 hasAdFrequencyCapData])
    {
      v55 = [(APRepresentationData *)v16 _frequencyCapDataFromAdData:v13];
      [(APRepresentationData *)v16 setFrequencyCapData:v55];
    }

    if ([v13 hasPolicyData])
    {
      v56 = [(APRepresentationData *)v16 _policyDataFromAdData:v13];
      [(APRepresentationData *)v16 setPolicyData:v56];
    }

    if ([v13 hasTargetingDimensions])
    {
      v57 = [(APRepresentationData *)v16 _targetingDimensionsFromAdData:v13];
      [(APRepresentationData *)v16 setTargetingDimensions:v57];
    }

    if (v40)
    {
      [(APRepresentationData *)v16 setJourneyRelayCampaignId:v40];
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
      v58 = [APContentData journeyStartRelayCampaignValueFrom:v13];
      [(APRepresentationData *)v16 setJourneyRelayCampaignId:v58];

      if (v49)
      {
        goto LABEL_47;
      }
    }

    v59 = [APContentData journeyStartRelayLineIdentifierValueFrom:v13];
    [(APRepresentationData *)v16 setJourneyRelayLineId:v59];

    goto LABEL_50;
  }

  v34 = [v13 actions];
  v35 = [v34 objectAtIndexedSubscript:0];
  v36 = [v35 hasAppStoreViewTemplate];

  if (!v36)
  {
    goto LABEL_28;
  }

  [(APRepresentationData *)v16 setSize:var0, var1];
  v37 = APLogForCategory();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = [(APRepresentationData *)v16 identifier];
    v61 = 138543362;
    v62 = v38;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "We are turning off NAAN ads. Following content is being dropped: %{public}@", &v61, 0xCu);
  }

  v39 = 0;
LABEL_52:

  return v39;
}

- (id)_frequencyCapDataFromAdData:(id)a3
{
  v4 = a3;
  v5 = [v4 adFrequencyCapData];

  if (v5)
  {
    v6 = [v4 adFrequencyCapData];
    v7 = objc_alloc_init(APFrequencyCapData);
    [v7 setRelevantIdentifier:{+[APLegacyTypeTranslator RelevantIdentifierToRelevantIdentifierType:](APLegacyTypeTranslator, "RelevantIdentifierToRelevantIdentifierType:", objc_msgSend(v6, "relevantIdentifier"))}];
    [v7 setValue:{objc_msgSend(v6, "adFrequencyValue")}];
    [v7 setDuration:{objc_msgSend(v6, "adFrequencyDuration")}];
  }

  else
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(APRepresentationData *)self identifier];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Content %{public}@ has no frequency cap data.", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_policyDataFromAdData:(id)a3
{
  v4 = a3;
  v5 = [v4 policyData];

  if (v5)
  {
    v6 = [v4 policyData];
    v7 = objc_alloc_init(APPolicyData);
    v8 = [v6 identifier];
    [v7 setCreativeIdentifier:v8];

    v9 = [v6 policyValues];
    v10 = [APLegacyTypeTranslator numericParameterArrayToDictionary:v9];
    [v7 setPolicyValue:v10];
  }

  else
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(APRepresentationData *)self identifier];
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Content %{public}@ has no policy data.", &v14, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_targetingDimensionsFromAdData:(id)a3
{
  v4 = a3;
  v5 = [v4 targetingDimensions];

  if (v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = [v4 targetingDimensions];
    v8 = [v7 inclusionCriterias];

    v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v37 + 1) + 8 * i);
          v14 = objc_alloc_init(APTargetingCriteria);
          v15 = [v13 criteriaIdentifier];
          [v14 setIdentifier:v15];

          v16 = [v13 criteriaValues];
          [v14 setValues:v16];

          [v6 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v10);
    }

    v17 = objc_alloc_init(NSMutableArray);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = v4;
    v18 = [v4 targetingDimensions];
    v19 = [v18 exclusionCriterias];

    v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * j);
          v25 = objc_alloc_init(APTargetingCriteria);
          v26 = [v24 criteriaIdentifier];
          [v25 setIdentifier:v26];

          v27 = [v24 criteriaValues];
          [v25 setValues:v27];

          [v17 addObject:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);
    }

    v28 = objc_alloc_init(APTargetingDimensions);
    [v28 setInclusionCriteria:v6];
    [v28 setExclusionCriteria:v17];

    v4 = v32;
  }

  else
  {
    v29 = APLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [(APRepresentationData *)self identifier];
      *buf = 138543362;
      v44 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Content %{public}@ has no targeting dimensions data.", buf, 0xCu);
    }

    v28 = objc_alloc_init(APTargetingDimensions);
    [v28 setInclusionCriteria:&__NSArray0__struct];
    [v28 setExclusionCriteria:&__NSArray0__struct];
  }

  return v28;
}

@end