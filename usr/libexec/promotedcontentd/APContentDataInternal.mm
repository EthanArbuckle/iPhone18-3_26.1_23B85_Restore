@interface APContentDataInternal
+ (BOOL)isFinalMessage:(int)message;
- (APContentDataInternal)init;
- (APContentDataInternal)initWithAdData:(id)data identifier:(id)identifier contextIdentifier:(id)contextIdentifier placementType:(int64_t)type maxSize:(id)size;
- (APContentDataInternal)initWithContent:(id)content privateContent:(id)privateContent andTransientContent:(id)transientContent;
- (APContentDataInternal)initWithContentDataProvider:(id)provider;
- (APContentDataInternal)initWithUnfilledReason:(int64_t)reason error:(id)error contentIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier containerSize:(id)size placementType:(int64_t)type journeyStartRelayValues:(id)values;
- (BOOL)_hasSentFinalEvent;
- (BOOL)canSend50PercentImpression:(BOOL)impression;
- (BOOL)canSendImpression:(BOOL)impression;
- (BOOL)hasConfirmed50PercentImpression;
- (BOOL)hasConfirmedImpression;
- (BOOL)hasSentStatusEvent:(int)event;
- (BOOL)isFirstMessage:(int)message;
- (BOOL)isPlaceholder;
- (BOOL)shouldSendAdSpaceStatusEvent:(int)event;
- (id)_loadJourneyStartRelayValuesFromAdData:(id)data;
- (id)initRateLimitedForContextId:(id)id containerSize:(id)size placementType:(int64_t)type;
- (void)_accumulatePlaybackTimeIfNoDuration;
- (void)_clicked:(id)_clicked;
- (void)_updateLastPlaybackTimestamp;
- (void)_visibleStateChanged:(int64_t)changed duration:(double)duration shouldUseNewVisibleLogic:(BOOL)logic;
- (void)accumulate50PercentVisibilityTime:(double)time;
- (void)accumulateVisibilityTime:(double)time;
- (void)addTimeSpent:(double)spent;
- (void)appearedOnScreenWithStatus:(int)status;
- (void)carouselElementClicked:(id)clicked element:(int)element;
- (void)carouselFinishedSent;
- (void)carouselVisibleStateChanged:(int64_t)changed duration:(double)duration elements:(id)elements partialElements:(id)partialElements shouldUseNewVisibleLogic:(BOOL)logic;
- (void)clicked:(id)clicked;
- (void)confirm50PercentImpression;
- (void)confirmClick;
- (void)confirmImpression;
- (void)discarded;
- (void)eventSent;
- (void)incrementVideoEventSequence;
- (void)interfaceReady;
- (void)interfaceReplaced;
- (void)loadFailed;
- (void)pendingConfirmedClick:(BOOL)click;
- (void)resetTimeSpent;
- (void)resetTransientData;
- (void)statusEventSent:(int)sent;
- (void)videoLoaded:(double)loaded;
- (void)videoStateChanged:(double)changed fromMetric:(int64_t)metric;
- (void)videoUnloaded;
- (void)visibleStateChanged:(int64_t)changed duration:(double)duration shouldUseNewVisibleLogic:(BOOL)logic;
- (void)volumeChanged:(double)changed;
- (void)wasFullyVisible;
@end

@implementation APContentDataInternal

- (APContentDataInternal)init
{
  v10.receiver = self;
  v10.super_class = APContentDataInternal;
  v2 = [(APContentDataInternal *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(APContentData);
    content = v2->_content;
    v2->_content = v3;

    v5 = objc_alloc_init(APContentDataPrivate);
    privateContent = v2->_privateContent;
    v2->_privateContent = v5;

    v7 = objc_alloc_init(APContentDataTransient);
    transientContent = v2->_transientContent;
    v2->_transientContent = v7;
  }

  return v2;
}

- (APContentDataInternal)initWithAdData:(id)data identifier:(id)identifier contextIdentifier:(id)contextIdentifier placementType:(int64_t)type maxSize:(id)size
{
  var1 = size.var1;
  var0 = size.var0;
  dataCopy = data;
  identifierCopy = identifier;
  contextIdentifierCopy = contextIdentifier;
  v28.receiver = self;
  v28.super_class = APContentDataInternal;
  v16 = [(APContentDataInternal *)&v28 init];
  if (v16)
  {
    v17 = [[APContentData alloc] initWithAdData:dataCopy identifier:identifierCopy contextIdentifier:contextIdentifierCopy placementType:type maxSize:{var0, var1}];
    content = v16->_content;
    v16->_content = v17;

    v19 = [APAgePolicyProcessor processContentData:v16->_content];
    v20 = v16->_content;
    v16->_content = v19;

    v21 = [[APContentDataPrivate alloc] initWithAdData:dataCopy forPlacementType:type];
    privateContent = v16->_privateContent;
    v16->_privateContent = v21;

    v23 = objc_alloc_init(APContentDataTransient);
    transientContent = v16->_transientContent;
    v16->_transientContent = v23;

    v25 = [(APContentDataInternal *)v16 _loadJourneyStartRelayValuesFromAdData:dataCopy];
    journeyStartRelayValues = v16->_journeyStartRelayValues;
    v16->_journeyStartRelayValues = v25;
  }

  return v16;
}

- (APContentDataInternal)initWithUnfilledReason:(int64_t)reason error:(id)error contentIdentifier:(id)identifier contextIdentifier:(id)contextIdentifier containerSize:(id)size placementType:(int64_t)type journeyStartRelayValues:(id)values
{
  var1 = size.var1;
  var0 = size.var0;
  errorCopy = error;
  identifierCopy = identifier;
  contextIdentifierCopy = contextIdentifier;
  valuesCopy = values;
  v21 = [(APContentDataInternal *)self init];
  if (v21)
  {
    v22 = [[APContentData alloc] initWithUnfilledReason:reason error:errorCopy contentIdentifier:identifierCopy contextIdentifier:contextIdentifierCopy containerSize:type placementType:{var0, var1}];
    content = v21->_content;
    v21->_content = v22;

    v24 = objc_alloc_init(APContentDataPrivate);
    privateContent = v21->_privateContent;
    v21->_privateContent = v24;

    objc_storeStrong(&v21->_journeyStartRelayValues, values);
  }

  return v21;
}

- (APContentDataInternal)initWithContent:(id)content privateContent:(id)privateContent andTransientContent:(id)transientContent
{
  contentCopy = content;
  privateContentCopy = privateContent;
  transientContentCopy = transientContent;
  v12 = [(APContentDataInternal *)self init];
  v13 = v12;
  if (v12)
  {
    if (contentCopy)
    {
      objc_storeStrong(&v12->_content, content);
    }

    if (privateContentCopy)
    {
      objc_storeStrong(&v13->_privateContent, privateContent);
    }

    if (transientContentCopy)
    {
      objc_storeStrong(&v13->_transientContent, transientContent);
    }
  }

  return v13;
}

- (APContentDataInternal)initWithContentDataProvider:(id)provider
{
  providerCopy = provider;
  contentData = [providerCopy contentData];
  contentDataPrivate = [providerCopy contentDataPrivate];
  contentDataTransient = [providerCopy contentDataTransient];
  v9 = [(APContentDataInternal *)self initWithContent:contentData privateContent:contentDataPrivate andTransientContent:contentDataTransient];

  if (v9)
  {
    objc_storeStrong(&v9->_contentDataProvider, provider);
  }

  return v9;
}

- (id)initRateLimitedForContextId:(id)id containerSize:(id)size placementType:(int64_t)type
{
  var1 = size.var1;
  var0 = size.var0;
  idCopy = id;
  v18.receiver = self;
  v18.super_class = APContentDataInternal;
  v10 = [(APContentDataInternal *)&v18 init];
  if (v10)
  {
    v11 = [[APContentData alloc] initRateLimitedForContextId:idCopy containerSize:type placementType:{var0, var1}];
    content = v10->_content;
    v10->_content = v11;

    v13 = objc_alloc_init(APContentDataPrivate);
    privateContent = v10->_privateContent;
    v10->_privateContent = v13;

    v15 = objc_alloc_init(APContentDataTransient);
    transientContent = v10->_transientContent;
    v10->_transientContent = v15;
  }

  return v10;
}

- (void)resetTransientData
{
  self->_transientContent = objc_alloc_init(APContentDataTransient);

  _objc_release_x1();
}

- (void)accumulateVisibilityTime:(double)time
{
  privateContent = [(APContentDataInternal *)self privateContent];
  isCarouselAd = [privateContent isCarouselAd];

  if (isCarouselAd)
  {
    transientContent = [(APContentDataInternal *)self transientContent];
    [transientContent carouselVisibleTime];
    [transientContent setCarouselVisibleTime:v8 + time];
  }

  if (![(APContentDataInternal *)self hasConfirmedImpression])
  {
    transientContent2 = [(APContentDataInternal *)self transientContent];
    [transientContent2 accumulatedVisibilityTime];
    v11 = v10;
    content = [(APContentDataInternal *)self content];
    [content impressionThreshold];
    v14 = v13;

    if (v11 <= v14)
    {
      transientContent3 = [(APContentDataInternal *)self transientContent];
      [transientContent3 accumulatedVisibilityTime];
      [transientContent3 setAccumulatedVisibilityTime:v15 + time];
    }
  }
}

- (void)accumulate50PercentVisibilityTime:(double)time
{
  privateContent = [(APContentDataInternal *)self privateContent];
  isCarouselAd = [privateContent isCarouselAd];

  if (isCarouselAd)
  {
    transientContent = [(APContentDataInternal *)self transientContent];
    [transientContent carousel50PercentVisibleTime];
    [transientContent setCarousel50PercentVisibleTime:v8 + time];
  }

  if (![(APContentDataInternal *)self hasConfirmed50PercentImpression])
  {
    transientContent2 = [(APContentDataInternal *)self transientContent];
    [transientContent2 accumulated50PercentVisibilityTime];
    v11 = v10;
    content = [(APContentDataInternal *)self content];
    [content impressionThreshold];
    v14 = v13;

    if (v11 <= v14)
    {
      transientContent3 = [(APContentDataInternal *)self transientContent];
      [transientContent3 accumulated50PercentVisibilityTime];
      [transientContent3 setAccumulated50PercentVisibilityTime:v15 + time];
    }
  }
}

- (void)appearedOnScreenWithStatus:(int)status
{
  v3 = *&status;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    content = [(APContentDataInternal *)self content];
    contextIdentifier = [content contextIdentifier];
    content2 = [(APContentDataInternal *)self content];
    identifier = [content2 identifier];
    if (v3 > 359)
    {
      switch(v3)
      {
        case 3000:
          v10 = @"ADStatusCodeNoError";
          break;
        case 3001:
          v10 = @"ADStatusCodeAdNotAvailable";
          break;
        case 3002:
          v10 = @"ADStatusCodeSpacedTooCloseToAnAd";
          break;
        case 3003:
          v10 = @"ADStatusCodePlacedInFirstScreenful";
          break;
        case 3004:
          v10 = @"ADStatusCodeAdLoadedTooLate";
          break;
        case 3005:
          v10 = @"ADStatusCodeAdUnloadedExceedingContainer";
          break;
        case 3006:
          v10 = @"ADStatusCodeAdUnloadedMedusaResizing";
          break;
        case 3007:
          v10 = @"ADStatusCodeAdGlobalCategoryBlacklisted";
          break;
        case 3008:
          v10 = @"ADStatusCodeAdGlobalKeywordBlacklisted";
          break;
        case 3009:
          v10 = @"ADStatusCodeAdCampaignCategoryBlacklisted";
          break;
        case 3010:
          v10 = @"ADStatusCodeAdCampaignKeywordBlacklisted";
          break;
        case 3011:
          v10 = @"ADStatusCodeAdMetadataError";
          break;
        case 3012:
          v10 = @"ADStatusCodeAdArticleLoadError";
          break;
        case 3013:
          v10 = @"ADStatusCodeAdVideoLoadError";
          break;
        default:
          if (v3 == 360)
          {
            v10 = @"ADStatusCodeNoAdDueToSubscriptionStatus";
          }

          else if (v3 == 370)
          {
            v10 = @"ADStatusCodeNoAdDueToPolicyRequirement";
          }

          else
          {
LABEL_27:
            v10 = [NSString stringWithFormat:@"(unknown: %i)", v3];
          }

          break;
      }
    }

    else
    {
      v10 = @"ADStatusCodeUnknown";
      switch(v3)
      {
        case 0:
          break;
        case 1:
          v10 = @"ADStatusCodeServerFailure";
          break;
        case 2:
          v10 = @"ADStatusCodeLoadingThrottled";
          break;
        case 3:
          v10 = @"ADStatusCodeInventoryUnavailable";
          break;
        case 4:
          v10 = @"ADStatusCodeConfigurationError";
          break;
        case 5:
          v10 = @"ADStatusCodeBannerVisibleWithoutContent";
          break;
        case 6:
          v10 = @"ADStatusCodeApplicationInactive";
          break;
        case 7:
          v10 = @"ADStatusCodeAdUnloaded";
          break;
        case 8:
          v10 = @"ADStatusCodeAssetLoadFailure";
          break;
        case 9:
          v10 = @"ADStatusCodeAdResponseValidateFailure";
          break;
        case 10:
          v10 = @"ADStatusCodeAdAssetLoadPending";
          break;
        case 11:
          v10 = @"ADStatusCodeWaitingForResponse";
          break;
        case 12:
          v10 = @"ADStatusCodeNoAdDueToGlobalExclusion";
          break;
        case 13:
          v10 = @"ADStatusCodeNoAdDueToPolicyExclusion";
          break;
        case 14:
          v10 = @"ADStatusCodeBatchLimitExceeded";
          break;
        case 15:
          v10 = @"ADStatusCodeAdsDisabledInIssue";
          break;
        default:
          goto LABEL_27;
      }
    }

    *buf = 138543874;
    v15 = contextIdentifier;
    v16 = 2114;
    v17 = identifier;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content for context %{public}@ with ID %{public}@ appeared on screen with status %{public}@.", buf, 0x20u);
  }

  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setHasBeenOnScreen:1];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 setLastStatusCode:v3];

  transientContent3 = [(APContentDataInternal *)self transientContent];
  [transientContent3 save];
}

- (BOOL)canSendImpression:(BOOL)impression
{
  impressionCopy = impression;
  if ([(APContentDataInternal *)self hasConfirmedImpression])
  {
    v5 = APLogForCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_55:
      v10 = 0;
      goto LABEL_56;
    }

    content = [(APContentDataInternal *)self content];
    identifier = [content identifier];
    *buf = 138543362;
    v38 = identifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can NOT send viewable impression - it has already impressed.", buf, 0xCu);
LABEL_4:

    goto LABEL_55;
  }

  transientContent = [(APContentDataInternal *)self transientContent];
  lastStatusCode = [transientContent lastStatusCode];

  if (lastStatusCode != 3000)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      content2 = [(APContentDataInternal *)self content];
      identifier2 = [content2 identifier];
      transientContent2 = [(APContentDataInternal *)self transientContent];
      lastStatusCode2 = [transientContent2 lastStatusCode];
      if (lastStatusCode2 > 359)
      {
        switch(lastStatusCode2)
        {
          case 3000:
            v17 = @"ADStatusCodeNoError";
            break;
          case 3001:
            v17 = @"ADStatusCodeAdNotAvailable";
            break;
          case 3002:
            v17 = @"ADStatusCodeSpacedTooCloseToAnAd";
            break;
          case 3003:
            v17 = @"ADStatusCodePlacedInFirstScreenful";
            break;
          case 3004:
            v17 = @"ADStatusCodeAdLoadedTooLate";
            break;
          case 3005:
            v17 = @"ADStatusCodeAdUnloadedExceedingContainer";
            break;
          case 3006:
            v17 = @"ADStatusCodeAdUnloadedMedusaResizing";
            break;
          case 3007:
            v17 = @"ADStatusCodeAdGlobalCategoryBlacklisted";
            break;
          case 3008:
            v17 = @"ADStatusCodeAdGlobalKeywordBlacklisted";
            break;
          case 3009:
            v17 = @"ADStatusCodeAdCampaignCategoryBlacklisted";
            break;
          case 3010:
            v17 = @"ADStatusCodeAdCampaignKeywordBlacklisted";
            break;
          case 3011:
            v17 = @"ADStatusCodeAdMetadataError";
            break;
          case 3012:
            v17 = @"ADStatusCodeAdArticleLoadError";
            break;
          case 3013:
            v17 = @"ADStatusCodeAdVideoLoadError";
            break;
          default:
            if (lastStatusCode2 == 360)
            {
              v17 = @"ADStatusCodeNoAdDueToSubscriptionStatus";
            }

            else if (lastStatusCode2 == 370)
            {
              v17 = @"ADStatusCodeNoAdDueToPolicyRequirement";
            }

            else
            {
LABEL_42:
              v17 = [NSString stringWithFormat:@"(unknown: %i)", lastStatusCode2];
            }

            break;
        }
      }

      else
      {
        v17 = @"ADStatusCodeUnknown";
        switch(lastStatusCode2)
        {
          case 0:
            break;
          case 1:
            v17 = @"ADStatusCodeServerFailure";
            break;
          case 2:
            v17 = @"ADStatusCodeLoadingThrottled";
            break;
          case 3:
            v17 = @"ADStatusCodeInventoryUnavailable";
            break;
          case 4:
            v17 = @"ADStatusCodeConfigurationError";
            break;
          case 5:
            v17 = @"ADStatusCodeBannerVisibleWithoutContent";
            break;
          case 6:
            v17 = @"ADStatusCodeApplicationInactive";
            break;
          case 7:
            v17 = @"ADStatusCodeAdUnloaded";
            break;
          case 8:
            v17 = @"ADStatusCodeAssetLoadFailure";
            break;
          case 9:
            v17 = @"ADStatusCodeAdResponseValidateFailure";
            break;
          case 10:
            v17 = @"ADStatusCodeAdAssetLoadPending";
            break;
          case 11:
            v17 = @"ADStatusCodeWaitingForResponse";
            break;
          case 12:
            v17 = @"ADStatusCodeNoAdDueToGlobalExclusion";
            break;
          case 13:
            v17 = @"ADStatusCodeNoAdDueToPolicyExclusion";
            break;
          case 14:
            v17 = @"ADStatusCodeBatchLimitExceeded";
            break;
          case 15:
            v17 = @"ADStatusCodeAdsDisabledInIssue";
            break;
          default:
            goto LABEL_42;
        }
      }

      *buf = 138543618;
      v38 = identifier2;
      v39 = 2112;
      v40 = v17;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can NOT send viewable impression - current ASE code is %@.", buf, 0x16u);
    }

    goto LABEL_55;
  }

  if (!impressionCopy)
  {
    transientContent3 = [(APContentDataInternal *)self transientContent];
    [transientContent3 accumulatedVisibilityTime];
    v20 = v19;
    content3 = [(APContentDataInternal *)self content];
    [content3 impressionThreshold];
    v23 = v22;

    v5 = APLogForCategory();
    v24 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v20 < v23)
    {
      if (!v24)
      {
        goto LABEL_55;
      }

      content = [(APContentDataInternal *)self content];
      identifier = [content identifier];
      transientContent4 = [(APContentDataInternal *)self transientContent];
      [transientContent4 accumulatedVisibilityTime];
      v27 = v26;
      content4 = [(APContentDataInternal *)self content];
      [content4 impressionThreshold];
      *buf = 138543874;
      v38 = identifier;
      v39 = 2048;
      v40 = v27;
      v41 = 2048;
      v42 = v29;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can NOT send viewable impression - at visible threshold for only %.2f of %.2f seconds", buf, 0x20u);

      goto LABEL_4;
    }

    if (!v24)
    {
      v10 = 1;
      goto LABEL_56;
    }

    content5 = [(APContentDataInternal *)self content];
    identifier3 = [content5 identifier];
    content6 = [(APContentDataInternal *)self content];
    [content6 impressionThreshold];
    v33 = v32;
    transientContent5 = [(APContentDataInternal *)self transientContent];
    [transientContent5 accumulatedVisibilityTime];
    *buf = 138543874;
    v38 = identifier3;
    v39 = 2048;
    v40 = v33;
    v41 = 2048;
    v42 = v35;
    v10 = 1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can send viewable impression - at visible threshold more than %.2f seconds (%.2f)", buf, 0x20u);

    goto LABEL_20;
  }

  v5 = APLogForCategory();
  v10 = 1;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    content5 = [(APContentDataInternal *)self content];
    identifier4 = [content5 identifier];
    *buf = 138543362;
    v38 = identifier4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can send viewable impression due to interaction", buf, 0xCu);

LABEL_20:
  }

LABEL_56:

  return v10;
}

- (BOOL)canSend50PercentImpression:(BOOL)impression
{
  impressionCopy = impression;
  if ([(APContentDataInternal *)self hasConfirmed50PercentImpression])
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      content = [(APContentDataInternal *)self content];
      identifier = [content identifier];
      *buf = 138543362;
      v54 = identifier;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can NOT send 50 percent viewable impression - it has already impressed.", buf, 0xCu);
    }

LABEL_54:
    v10 = 0;
    goto LABEL_55;
  }

  transientContent = [(APContentDataInternal *)self transientContent];
  lastStatusCode = [transientContent lastStatusCode];

  if (lastStatusCode != 3000)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      content2 = [(APContentDataInternal *)self content];
      identifier2 = [content2 identifier];
      transientContent2 = [(APContentDataInternal *)self transientContent];
      lastStatusCode2 = [transientContent2 lastStatusCode];
      if (lastStatusCode2 > 359)
      {
        switch(lastStatusCode2)
        {
          case 3000:
            v17 = @"ADStatusCodeNoError";
            break;
          case 3001:
            v17 = @"ADStatusCodeAdNotAvailable";
            break;
          case 3002:
            v17 = @"ADStatusCodeSpacedTooCloseToAnAd";
            break;
          case 3003:
            v17 = @"ADStatusCodePlacedInFirstScreenful";
            break;
          case 3004:
            v17 = @"ADStatusCodeAdLoadedTooLate";
            break;
          case 3005:
            v17 = @"ADStatusCodeAdUnloadedExceedingContainer";
            break;
          case 3006:
            v17 = @"ADStatusCodeAdUnloadedMedusaResizing";
            break;
          case 3007:
            v17 = @"ADStatusCodeAdGlobalCategoryBlacklisted";
            break;
          case 3008:
            v17 = @"ADStatusCodeAdGlobalKeywordBlacklisted";
            break;
          case 3009:
            v17 = @"ADStatusCodeAdCampaignCategoryBlacklisted";
            break;
          case 3010:
            v17 = @"ADStatusCodeAdCampaignKeywordBlacklisted";
            break;
          case 3011:
            v17 = @"ADStatusCodeAdMetadataError";
            break;
          case 3012:
            v17 = @"ADStatusCodeAdArticleLoadError";
            break;
          case 3013:
            v17 = @"ADStatusCodeAdVideoLoadError";
            break;
          default:
            if (lastStatusCode2 == 360)
            {
              v17 = @"ADStatusCodeNoAdDueToSubscriptionStatus";
            }

            else if (lastStatusCode2 == 370)
            {
              v17 = @"ADStatusCodeNoAdDueToPolicyRequirement";
            }

            else
            {
LABEL_41:
              v17 = [NSString stringWithFormat:@"(unknown: %i)", lastStatusCode2];
            }

            break;
        }
      }

      else
      {
        v17 = @"ADStatusCodeUnknown";
        switch(lastStatusCode2)
        {
          case 0:
            break;
          case 1:
            v17 = @"ADStatusCodeServerFailure";
            break;
          case 2:
            v17 = @"ADStatusCodeLoadingThrottled";
            break;
          case 3:
            v17 = @"ADStatusCodeInventoryUnavailable";
            break;
          case 4:
            v17 = @"ADStatusCodeConfigurationError";
            break;
          case 5:
            v17 = @"ADStatusCodeBannerVisibleWithoutContent";
            break;
          case 6:
            v17 = @"ADStatusCodeApplicationInactive";
            break;
          case 7:
            v17 = @"ADStatusCodeAdUnloaded";
            break;
          case 8:
            v17 = @"ADStatusCodeAssetLoadFailure";
            break;
          case 9:
            v17 = @"ADStatusCodeAdResponseValidateFailure";
            break;
          case 10:
            v17 = @"ADStatusCodeAdAssetLoadPending";
            break;
          case 11:
            v17 = @"ADStatusCodeWaitingForResponse";
            break;
          case 12:
            v17 = @"ADStatusCodeNoAdDueToGlobalExclusion";
            break;
          case 13:
            v17 = @"ADStatusCodeNoAdDueToPolicyExclusion";
            break;
          case 14:
            v17 = @"ADStatusCodeBatchLimitExceeded";
            break;
          case 15:
            v17 = @"ADStatusCodeAdsDisabledInIssue";
            break;
          default:
            goto LABEL_41;
        }
      }

      *buf = 138543618;
      v54 = identifier2;
      v55 = 2112;
      v56 = v17;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can NOT send 50 percent viewable impression - current ASE code is %@.", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if (impressionCopy)
  {
    v5 = APLogForCategory();
    v10 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      content3 = [(APContentDataInternal *)self content];
      identifier3 = [content3 identifier];
      *buf = 138543362;
      v54 = identifier3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can send 50 percent viewable impression due to interaction", buf, 0xCu);
    }
  }

  else
  {
    transientContent3 = [(APContentDataInternal *)self transientContent];
    [transientContent3 accumulated50PercentVisibilityTime];
    v20 = v19;
    content4 = [(APContentDataInternal *)self content];
    [content4 impressionThreshold];
    if (v20 >= v22)
    {
    }

    else
    {
      transientContent4 = [(APContentDataInternal *)self transientContent];
      [transientContent4 accumulatedVisibilityTime];
      v25 = v24;
      content5 = [(APContentDataInternal *)self content];
      [content5 impressionThreshold];
      v28 = v27;

      if (v25 < v28)
      {
        v5 = APLogForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          content6 = [(APContentDataInternal *)self content];
          identifier4 = [content6 identifier];
          transientContent5 = [(APContentDataInternal *)self transientContent];
          [transientContent5 accumulated50PercentVisibilityTime];
          v33 = v32;
          content7 = [(APContentDataInternal *)self content];
          [content7 impressionThreshold];
          v36 = v35;
          transientContent6 = [(APContentDataInternal *)self transientContent];
          [transientContent6 accumulatedVisibilityTime];
          v39 = v38;
          content8 = [(APContentDataInternal *)self content];
          [content8 impressionThreshold];
          *buf = 138544386;
          v54 = identifier4;
          v55 = 2048;
          v56 = v33;
          v57 = 2048;
          v58 = v36;
          v59 = 2048;
          v60 = v39;
          v61 = 2048;
          v62 = v41;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can NOT send 50 percent viewable impression - at 50 percent visible threshold for only %.2f of %.2f seconds and 100 percent visible threshold for only %.2f of %.2f seconds", buf, 0x34u);
        }

        goto LABEL_54;
      }
    }

    v5 = APLogForCategory();
    v10 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      content9 = [(APContentDataInternal *)self content];
      identifier5 = [content9 identifier];
      transientContent7 = [(APContentDataInternal *)self transientContent];
      [transientContent7 accumulated50PercentVisibilityTime];
      v46 = v45;
      transientContent8 = [(APContentDataInternal *)self transientContent];
      [transientContent8 accumulatedVisibilityTime];
      v49 = v48;
      content10 = [(APContentDataInternal *)self content];
      [content10 impressionThreshold];
      *buf = 138544130;
      v54 = identifier5;
      v55 = 2048;
      v56 = v46;
      v57 = 2048;
      v58 = v49;
      v59 = 2048;
      v60 = v51;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can send 50 percent viewable impression - at 50 percent visible threshold for %.2f seconds and 100 percent visible threshold for %.2f seconds (threshold %.2f seconds)", buf, 0x2Au);
    }
  }

LABEL_55:

  return v10;
}

- (void)confirmImpression
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setHasConfirmedImpression:1];

  privateContent = [(APContentDataInternal *)self privateContent];
  [privateContent setConsumedImpressions:{objc_msgSend(privateContent, "consumedImpressions") + 1}];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];

  privateContent2 = [(APContentDataInternal *)self privateContent];
  [privateContent2 save];
}

- (void)confirm50PercentImpression
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setHasConfirmed50PercentImpression:1];

  privateContent = [(APContentDataInternal *)self privateContent];
  [privateContent setConsumed50PercentImpressions:{objc_msgSend(privateContent, "consumed50PercentImpressions") + 1}];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];

  privateContent2 = [(APContentDataInternal *)self privateContent];
  [privateContent2 save];
}

- (void)resetTimeSpent
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setTimeSpent:0.0];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (void)discarded
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setDiscarded:1];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (void)eventSent
{
  v3 = +[NSDate date];
  [v3 timeIntervalSince1970];
  v5 = v4;
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setLastSentEventTime:v5];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (void)interfaceReady
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setInterfaceReady:1];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (void)carouselElementClicked:(id)clicked element:(int)element
{
  v4 = *&element;
  [(APContentDataInternal *)self _clicked:clicked.var0, clicked.var1];
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setClickedCarouselElement:v4];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (void)carouselFinishedSent
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setCarouselFinishedSent:1];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (void)_clicked:(id)_clicked
{
  var1 = _clicked.var1;
  var0 = _clicked.var0;
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setClickLocation:{var0, var1}];

  v7 = +[NSDate date];
  [v7 timeIntervalSince1970];
  v9 = v8;
  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 setClickTime:v9];

  transientContent3 = [(APContentDataInternal *)self transientContent];
  [transientContent3 setClickCount:{objc_msgSend(transientContent3, "clickCount") + 1}];
}

- (void)clicked:(id)clicked
{
  [(APContentDataInternal *)self _clicked:clicked.var0, clicked.var1];
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent save];
}

- (void)confirmClick
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setHasConfirmedClick:1];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (BOOL)hasConfirmedImpression
{
  transientContent = [(APContentDataInternal *)self transientContent];
  hasConfirmedImpression = [transientContent hasConfirmedImpression];

  return hasConfirmedImpression;
}

- (BOOL)hasConfirmed50PercentImpression
{
  transientContent = [(APContentDataInternal *)self transientContent];
  hasConfirmed50PercentImpression = [transientContent hasConfirmed50PercentImpression];

  return hasConfirmed50PercentImpression;
}

- (void)incrementVideoEventSequence
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setVideoEventSequence:{objc_msgSend(transientContent, "videoEventSequence") + 1}];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (void)pendingConfirmedClick:(BOOL)click
{
  clickCopy = click;
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setPendingConfirmedClick:clickCopy];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (BOOL)isFirstMessage:(int)message
{
  v3 = 1;
  if (message <= 0xD)
  {
    if (((1 << message) & 0x361E) != 0)
    {
      return v3;
    }

    if (message == 8)
    {
LABEL_8:
      transientContent = [(APContentDataInternal *)self transientContent];
      sentStatusCodes = [transientContent sentStatusCodes];
      v3 = [sentStatusCodes count] == 0;

      return v3;
    }
  }

  if ((message - 3000) > 0xC)
  {
    return message == 360;
  }

  v4 = 1 << (message + 72);
  if ((v4 & 0x1782) == 0)
  {
    if ((v4 & 0x11) != 0)
    {
      goto LABEL_8;
    }

    return message == 360;
  }

  return v3;
}

+ (BOOL)isFinalMessage:(int)message
{
  result = 1;
  if (message > 369)
  {
    if ((message - 3000) <= 0xD)
    {
      v4 = 1 << (message + 72);
      if ((v4 & 0x37A0) != 0)
      {
        return result;
      }

      if ((v4 & 0x13) != 0)
      {
        return 0;
      }
    }

    if (message != 370)
    {
      return 0;
    }
  }

  else
  {
    if (message <= 0xF)
    {
      if (((1 << message) & 0xF31E) != 0)
      {
        return result;
      }

      if (message == 10)
      {
        return 0;
      }
    }

    if (message != 360)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)isPlaceholder
{
  content = [(APContentDataInternal *)self content];
  identifier = [content identifier];
  v4 = [APContentDataInternal isPlaceholderIdentifier:identifier];

  return v4;
}

- (void)loadFailed
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setLastStatusCode:8];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (BOOL)hasSentStatusEvent:(int)event
{
  v3 = *&event;
  transientContent = [(APContentDataInternal *)self transientContent];
  sentStatusCodes = [transientContent sentStatusCodes];
  v6 = [NSNumber numberWithInt:v3];
  v7 = [sentStatusCodes containsObject:v6];

  return v7;
}

- (void)interfaceReplaced
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setInterfaceReplaced:1];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (void)wasFullyVisible
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setWasFullyVisible:1];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (BOOL)_hasSentFinalEvent
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  transientContent = [(APContentDataInternal *)self transientContent];
  sentStatusCodes = [transientContent sentStatusCodes];

  v4 = [sentStatusCodes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(sentStatusCodes);
        }

        if (+[APContentDataInternal isFinalMessage:](APContentDataInternal, "isFinalMessage:", [*(*(&v8 + 1) + 8 * i) intValue]))
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [sentStatusCodes countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)shouldSendAdSpaceStatusEvent:(int)event
{
  v3 = *&event;
  if (event <= 0)
  {
    content = [(APContentDataInternal *)self content];
    serverUnfilledReason = [content serverUnfilledReason];

    v9 = APLogForCategory();
    v5 = v9;
    if (serverUnfilledReason != 1020)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v52) = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Attempting to send invalid ASE %d", buf, 8u);
      }

      v5 = [NSString stringWithFormat:@"Attempting to send invalid ASE %d", v3];
      APSimulateCrash();
      goto LABEL_164;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_164;
    }

    content2 = [(APContentDataInternal *)self content];
    identifier = [content2 identifier];
    *buf = 138412290;
    v52 = identifier;
    v12 = "Not sending ASE due to status condition discard for content %@";
    goto LABEL_10;
  }

  if ([(APContentDataInternal *)self _hasSentFinalEvent])
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (v3 > 369)
      {
        switch(v3)
        {
          case 3000:
            v3 = @"ADStatusCodeNoError";
            break;
          case 3001:
            v3 = @"ADStatusCodeAdNotAvailable";
            break;
          case 3002:
            v3 = @"ADStatusCodeSpacedTooCloseToAnAd";
            break;
          case 3003:
            v3 = @"ADStatusCodePlacedInFirstScreenful";
            break;
          case 3004:
            v3 = @"ADStatusCodeAdLoadedTooLate";
            break;
          case 3005:
            v3 = @"ADStatusCodeAdUnloadedExceedingContainer";
            break;
          case 3006:
            v3 = @"ADStatusCodeAdUnloadedMedusaResizing";
            break;
          case 3007:
            v3 = @"ADStatusCodeAdGlobalCategoryBlacklisted";
            break;
          case 3008:
            v3 = @"ADStatusCodeAdGlobalKeywordBlacklisted";
            break;
          case 3009:
            v3 = @"ADStatusCodeAdCampaignCategoryBlacklisted";
            break;
          case 3010:
            v3 = @"ADStatusCodeAdCampaignKeywordBlacklisted";
            break;
          case 3011:
            v3 = @"ADStatusCodeAdMetadataError";
            break;
          case 3012:
            v3 = @"ADStatusCodeAdArticleLoadError";
            break;
          case 3013:
            v3 = @"ADStatusCodeAdVideoLoadError";
            break;
          default:
            if (v3 == 370)
            {
              v3 = @"ADStatusCodeNoAdDueToPolicyRequirement";
            }

            else
            {
LABEL_87:
              v3 = [NSString stringWithFormat:@"(unknown: %i)", v3];
            }

            break;
        }
      }

      else
      {
        v6 = v3 - 1;
        v3 = @"ADStatusCodeServerFailure";
        switch(v6)
        {
          case 0:
            break;
          case 1:
            v3 = @"ADStatusCodeLoadingThrottled";
            break;
          case 2:
            v3 = @"ADStatusCodeInventoryUnavailable";
            break;
          case 3:
            v3 = @"ADStatusCodeConfigurationError";
            break;
          case 4:
            v3 = @"ADStatusCodeBannerVisibleWithoutContent";
            break;
          case 5:
            v3 = @"ADStatusCodeApplicationInactive";
            break;
          case 6:
            v3 = @"ADStatusCodeAdUnloaded";
            break;
          case 7:
            v3 = @"ADStatusCodeAssetLoadFailure";
            break;
          case 8:
            v3 = @"ADStatusCodeAdResponseValidateFailure";
            break;
          case 9:
            v3 = @"ADStatusCodeAdAssetLoadPending";
            break;
          case 10:
            v3 = @"ADStatusCodeWaitingForResponse";
            break;
          case 11:
            v3 = @"ADStatusCodeNoAdDueToGlobalExclusion";
            break;
          case 12:
            v3 = @"ADStatusCodeNoAdDueToPolicyExclusion";
            break;
          case 13:
            v3 = @"ADStatusCodeBatchLimitExceeded";
            break;
          case 14:
            v3 = @"ADStatusCodeAdsDisabledInIssue";
            break;
          default:
            if (@"ADStatusCodeServerFailure" != 360)
            {
              goto LABEL_87;
            }

            v3 = @"ADStatusCodeNoAdDueToSubscriptionStatus";
            break;
        }
      }

      content3 = [(APContentDataInternal *)self content];
      identifier2 = [content3 identifier];
      *buf = 138543618;
      v52 = v3;
      v53 = 2114;
      v54 = identifier2;
      v46 = "shouldSendAdSpaceStatusEvent: NOT sending ASE %{public}@ for content %{public}@ - a final ASE was previously sent.";
LABEL_163:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v46, buf, 0x16u);

      goto LABEL_164;
    }

    goto LABEL_164;
  }

  transientContent = [(APContentDataInternal *)self transientContent];
  discarded = [transientContent discarded];

  if (!discarded)
  {
    v16 = [(APContentDataInternal *)self hasSentStatusEvent:v3];
    if ((v16 & 1) != 0 || (-[APContentDataInternal transientContent](self, "transientContent"), discarded = objc_claimAutoreleasedReturnValue(), [discarded lastStatusCode] == v3))
    {
      transientContent2 = [(APContentDataInternal *)self transientContent];
      hasBeenOnScreen = [transientContent2 hasBeenOnScreen];

      if (v16)
      {
        if ((hasBeenOnScreen & 1) == 0)
        {
LABEL_29:
          if ([(APContentDataInternal *)self isPlaceholder])
          {
            transientContent3 = [(APContentDataInternal *)self transientContent];
            v19 = [transientContent3 interfaceReplaced] ^ 1;
          }

          else
          {
            v19 = 1;
          }

          if (v3 == 8 && v19)
          {
            transientContent4 = [(APContentDataInternal *)self transientContent];
            hasBeenOnScreen2 = [transientContent4 hasBeenOnScreen];

            if (hasBeenOnScreen2)
            {
              v23 = +[NSDate date];
              [v23 timeIntervalSince1970];
              v25 = v24;
              transientContent5 = [(APContentDataInternal *)self transientContent];
              [transientContent5 lastSentEventTime];
              v28 = v25 - v27;

              v29 = APLogForCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                content4 = [(APContentDataInternal *)self content];
                identifier3 = [content4 identifier];
                v32 = @" NOT";
                *buf = 138543874;
                v52 = identifier3;
                if (v28 <= 180.0)
                {
                  v32 = &stru_1004810B8;
                }

                v53 = 2114;
                v54 = v32;
                v55 = 2048;
                v56 = v28;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "shouldSendAdSpaceStatusEvent: AssetLoadFailure will%{public}@ be sent because content %{public}@ last event was %.0f seconds ago.", buf, 0x20u);
              }

              if (v28 > 180.0)
              {
                return 0;
              }

              v19 = 1;
              goto LABEL_41;
            }

            v5 = APLogForCategory();
            if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
            {
              goto LABEL_164;
            }

            content2 = [(APContentDataInternal *)self content];
            identifier = [content2 identifier];
            *buf = 138543362;
            v52 = identifier;
            v12 = "shouldSendAdSpaceStatusEvent: NOT sending AssetLoadFailure for content %{public}@ because the WebView never appeared on screen.";
LABEL_10:
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v12, buf, 0xCu);

            goto LABEL_164;
          }

LABEL_41:
          v33 = APLogForCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            content5 = [(APContentDataInternal *)self content];
            identifier4 = [content5 identifier];
            if (v19)
            {
              v35 = @"YES";
            }

            else
            {
              v35 = @"NO";
            }

            if (v16)
            {
              v36 = @"YES";
            }

            else
            {
              v36 = @"NO";
            }

            v47 = v35;
            v48 = v36;
            transientContent6 = [(APContentDataInternal *)self transientContent];
            lastStatusCode = [transientContent6 lastStatusCode];
            if ([(APContentDataInternal *)self isPlaceholder])
            {
              v38 = @"YES";
            }

            else
            {
              v38 = @"NO";
            }

            transientContent7 = [(APContentDataInternal *)self transientContent];
            interfaceReplaced = [transientContent7 interfaceReplaced];
            *buf = 138544898;
            if (interfaceReplaced)
            {
              v41 = @"YES";
            }

            else
            {
              v41 = @"NO";
            }

            v52 = identifier4;
            v53 = 2112;
            v54 = v47;
            v55 = 2114;
            v56 = *&v48;
            v57 = 1024;
            v58 = v3;
            v59 = 1024;
            v60 = lastStatusCode;
            v61 = 2114;
            v62 = v38;
            v63 = 2114;
            v64 = v41;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "shouldSendAdSpaceStatusEvent for %{public}@: %@ statusCodeSent: %{public}@ codeToSend: %d lastStatusCode: %d isPlaceholder: %{public}@ interfaceReplaced: %{public}@", buf, 0x40u);
          }

          if (v19)
          {
            return 1;
          }

          v5 = APLogForCategory();
          if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            goto LABEL_164;
          }

          content3 = [(APContentDataInternal *)self content];
          identifier2 = [content3 identifier];
          if (v3 > 369)
          {
            switch(v3)
            {
              case 3000:
                v3 = @"ADStatusCodeNoError";
                break;
              case 3001:
                v3 = @"ADStatusCodeAdNotAvailable";
                break;
              case 3002:
                v3 = @"ADStatusCodeSpacedTooCloseToAnAd";
                break;
              case 3003:
                v3 = @"ADStatusCodePlacedInFirstScreenful";
                break;
              case 3004:
                v3 = @"ADStatusCodeAdLoadedTooLate";
                break;
              case 3005:
                v3 = @"ADStatusCodeAdUnloadedExceedingContainer";
                break;
              case 3006:
                v3 = @"ADStatusCodeAdUnloadedMedusaResizing";
                break;
              case 3007:
                v3 = @"ADStatusCodeAdGlobalCategoryBlacklisted";
                break;
              case 3008:
                v3 = @"ADStatusCodeAdGlobalKeywordBlacklisted";
                break;
              case 3009:
                v3 = @"ADStatusCodeAdCampaignCategoryBlacklisted";
                break;
              case 3010:
                v3 = @"ADStatusCodeAdCampaignKeywordBlacklisted";
                break;
              case 3011:
                v3 = @"ADStatusCodeAdMetadataError";
                break;
              case 3012:
                v3 = @"ADStatusCodeAdArticleLoadError";
                break;
              case 3013:
                v3 = @"ADStatusCodeAdVideoLoadError";
                break;
              default:
                if (v3 == 370)
                {
                  v3 = @"ADStatusCodeNoAdDueToPolicyRequirement";
                }

                else
                {
LABEL_151:
                  v3 = [NSString stringWithFormat:@"(unknown: %i)", v3];
                }

                break;
            }
          }

          else
          {
            v45 = v3 - 1;
            v3 = @"ADStatusCodeServerFailure";
            switch(v45)
            {
              case 0:
                break;
              case 1:
                v3 = @"ADStatusCodeLoadingThrottled";
                break;
              case 2:
                v3 = @"ADStatusCodeInventoryUnavailable";
                break;
              case 3:
                v3 = @"ADStatusCodeConfigurationError";
                break;
              case 4:
                v3 = @"ADStatusCodeBannerVisibleWithoutContent";
                break;
              case 5:
                v3 = @"ADStatusCodeApplicationInactive";
                break;
              case 6:
                v3 = @"ADStatusCodeAdUnloaded";
                break;
              case 7:
                v3 = @"ADStatusCodeAssetLoadFailure";
                break;
              case 8:
                v3 = @"ADStatusCodeAdResponseValidateFailure";
                break;
              case 9:
                v3 = @"ADStatusCodeAdAssetLoadPending";
                break;
              case 10:
                v3 = @"ADStatusCodeWaitingForResponse";
                break;
              case 11:
                v3 = @"ADStatusCodeNoAdDueToGlobalExclusion";
                break;
              case 12:
                v3 = @"ADStatusCodeNoAdDueToPolicyExclusion";
                break;
              case 13:
                v3 = @"ADStatusCodeBatchLimitExceeded";
                break;
              case 14:
                v3 = @"ADStatusCodeAdsDisabledInIssue";
                break;
              default:
                if (@"ADStatusCodeServerFailure" != 360)
                {
                  goto LABEL_151;
                }

                v3 = @"ADStatusCodeNoAdDueToSubscriptionStatus";
                break;
            }
          }

          *buf = 138543618;
          v52 = identifier2;
          v53 = 2114;
          v54 = v3;
          v46 = "%{public}@ has already reported AdSpaceStatusEvent %{public}@. Ignoring.";
          goto LABEL_163;
        }
      }

      else
      {

        if ((hasBeenOnScreen & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v19 = 0;
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (v3 > 369)
    {
      switch(v3)
      {
        case 3000:
          v3 = @"ADStatusCodeNoError";
          break;
        case 3001:
          v3 = @"ADStatusCodeAdNotAvailable";
          break;
        case 3002:
          v3 = @"ADStatusCodeSpacedTooCloseToAnAd";
          break;
        case 3003:
          v3 = @"ADStatusCodePlacedInFirstScreenful";
          break;
        case 3004:
          v3 = @"ADStatusCodeAdLoadedTooLate";
          break;
        case 3005:
          v3 = @"ADStatusCodeAdUnloadedExceedingContainer";
          break;
        case 3006:
          v3 = @"ADStatusCodeAdUnloadedMedusaResizing";
          break;
        case 3007:
          v3 = @"ADStatusCodeAdGlobalCategoryBlacklisted";
          break;
        case 3008:
          v3 = @"ADStatusCodeAdGlobalKeywordBlacklisted";
          break;
        case 3009:
          v3 = @"ADStatusCodeAdCampaignCategoryBlacklisted";
          break;
        case 3010:
          v3 = @"ADStatusCodeAdCampaignKeywordBlacklisted";
          break;
        case 3011:
          v3 = @"ADStatusCodeAdMetadataError";
          break;
        case 3012:
          v3 = @"ADStatusCodeAdArticleLoadError";
          break;
        case 3013:
          v3 = @"ADStatusCodeAdVideoLoadError";
          break;
        default:
          if (v3 == 370)
          {
            v3 = @"ADStatusCodeNoAdDueToPolicyRequirement";
          }

          else
          {
LABEL_119:
            v3 = [NSString stringWithFormat:@"(unknown: %i)", v3];
          }

          break;
      }
    }

    else
    {
      v15 = v3 - 1;
      v3 = @"ADStatusCodeServerFailure";
      switch(v15)
      {
        case 0:
          break;
        case 1:
          v3 = @"ADStatusCodeLoadingThrottled";
          break;
        case 2:
          v3 = @"ADStatusCodeInventoryUnavailable";
          break;
        case 3:
          v3 = @"ADStatusCodeConfigurationError";
          break;
        case 4:
          v3 = @"ADStatusCodeBannerVisibleWithoutContent";
          break;
        case 5:
          v3 = @"ADStatusCodeApplicationInactive";
          break;
        case 6:
          v3 = @"ADStatusCodeAdUnloaded";
          break;
        case 7:
          v3 = @"ADStatusCodeAssetLoadFailure";
          break;
        case 8:
          v3 = @"ADStatusCodeAdResponseValidateFailure";
          break;
        case 9:
          v3 = @"ADStatusCodeAdAssetLoadPending";
          break;
        case 10:
          v3 = @"ADStatusCodeWaitingForResponse";
          break;
        case 11:
          v3 = @"ADStatusCodeNoAdDueToGlobalExclusion";
          break;
        case 12:
          v3 = @"ADStatusCodeNoAdDueToPolicyExclusion";
          break;
        case 13:
          v3 = @"ADStatusCodeBatchLimitExceeded";
          break;
        case 14:
          v3 = @"ADStatusCodeAdsDisabledInIssue";
          break;
        default:
          if (@"ADStatusCodeServerFailure" != 360)
          {
            goto LABEL_119;
          }

          v3 = @"ADStatusCodeNoAdDueToSubscriptionStatus";
          break;
      }
    }

    content3 = [(APContentDataInternal *)self content];
    identifier2 = [content3 identifier];
    *buf = 138543618;
    v52 = v3;
    v53 = 2114;
    v54 = identifier2;
    v46 = "shouldSendAdSpaceStatusEvent: NOT sending ASE %{public}@ for content %{public}@ - it has been discarded.";
    goto LABEL_163;
  }

LABEL_164:

  return 0;
}

- (void)statusEventSent:(int)sent
{
  v3 = *&sent;
  transientContent = [(APContentDataInternal *)self transientContent];
  sentStatusCodes = [transientContent sentStatusCodes];
  v7 = [NSNumber numberWithInt:v3];
  [sentStatusCodes addObject:v7];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (void)videoLoaded:(double)loaded
{
  v4 = fmax(loaded, 0.0);
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setDuration:v4];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 setPlaybackInProgress:0];

  transientContent3 = [(APContentDataInternal *)self transientContent];
  [transientContent3 save];
}

- (void)_updateLastPlaybackTimestamp
{
  v6 = +[NSDate date];
  [v6 timeIntervalSince1970];
  v4 = v3;
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setLastPlaybackTimestamp:v4];
}

- (void)_accumulatePlaybackTimeIfNoDuration
{
  transientContent = [(APContentDataInternal *)self transientContent];
  if (([transientContent hasDuration] & 1) == 0)
  {
    transientContent2 = [(APContentDataInternal *)self transientContent];
    playbackInProgress = [transientContent2 playbackInProgress];

    if (!playbackInProgress)
    {
      return;
    }

    transientContent = [(APContentDataInternal *)self transientContent];
    v5 = +[NSDate date];
    [v5 timeIntervalSince1970];
    v7 = v6;
    transientContent3 = [(APContentDataInternal *)self transientContent];
    [transientContent3 lastPlaybackTimestamp];
    v10 = v7 - v9;
    [transientContent accumulatedPlaybackTime];
    [transientContent setAccumulatedPlaybackTime:v11 + v10];
  }
}

- (void)videoStateChanged:(double)changed fromMetric:(int64_t)metric
{
  if (changed >= 0.0)
  {
    transientContent = [(APContentDataInternal *)self transientContent];
    [transientContent lastPosition];
    v10 = v9;

    transientContent2 = [(APContentDataInternal *)self transientContent];
    hasDuration = [transientContent2 hasDuration];

    if (hasDuration)
    {
      v13 = changed - v10;
      if (changed - v10 > 0.0)
      {
        transientContent3 = [(APContentDataInternal *)self transientContent];
        transientContent4 = [(APContentDataInternal *)self transientContent];
        [transientContent4 duration];
        v17 = v16;
        [transientContent3 accumulatedPlaybackTime];
        [transientContent3 setAccumulatedPlaybackTime:v18 + v13 * v17];
      }
    }

    transientContent5 = [(APContentDataInternal *)self transientContent];
    [transientContent5 setLastPosition:changed];

    if (metric <= 1602)
    {
      if (metric != 1600 && metric != 1602)
      {
        goto LABEL_24;
      }

      [(APContentDataInternal *)self _updateLastPlaybackTimestamp];
      transientContent6 = [(APContentDataInternal *)self transientContent];
      playbackInProgress = [transientContent6 playbackInProgress];

      if (playbackInProgress)
      {
        v24 = APLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "MediaPlayed metric received but media is already thought to be in playback", &v27, 2u);
        }

        goto LABEL_23;
      }

      transientContent7 = [(APContentDataInternal *)self transientContent];
      v24 = transientContent7;
      v26 = 1;
    }

    else
    {
      if (metric != 1603 && metric != 1604)
      {
        if (metric == 1609)
        {
          [(APContentDataInternal *)self _accumulatePlaybackTimeIfNoDuration];
          [(APContentDataInternal *)self _updateLastPlaybackTimestamp];
          v20 = changed < 1.0 && changed >= 0.0;
          transientContent8 = [(APContentDataInternal *)self transientContent];
          [transientContent8 setPlaybackInProgress:v20];
        }

        goto LABEL_24;
      }

      [(APContentDataInternal *)self _accumulatePlaybackTimeIfNoDuration];
      transientContent7 = [(APContentDataInternal *)self transientContent];
      v24 = transientContent7;
      v26 = 0;
    }

    [transientContent7 setPlaybackInProgress:v26];
LABEL_23:

LABEL_24:
    transientContent9 = [(APContentDataInternal *)self transientContent];
    [transientContent9 save];
    goto LABEL_25;
  }

  transientContent9 = APLogForCategory();
  if (os_log_type_enabled(transientContent9, OS_LOG_TYPE_ERROR))
  {
    v27 = 134217984;
    changedCopy = changed;
    _os_log_impl(&_mh_execute_header, transientContent9, OS_LOG_TYPE_ERROR, "updateAccumulatedPlaybackTime: position cannot be negative (%.2f)", &v27, 0xCu);
  }

LABEL_25:
}

- (void)videoUnloaded
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setVideoUnloadedSent:1];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (void)_visibleStateChanged:(int64_t)changed duration:(double)duration shouldUseNewVisibleLogic:(BOOL)logic
{
  if (logic)
  {
    if (changed >= 100)
    {

      [(APContentDataInternal *)self accumulateVisibilityTime:?];
      return;
    }
  }

  else
  {
    privateContent = [(APContentDataInternal *)self privateContent];
    isOutstreamVideo = [privateContent isOutstreamVideo];

    if (changed >= 50 && isOutstreamVideo)
    {
      [(APContentDataInternal *)self accumulateVisibilityTime:duration];
      if (changed != 50)
      {
        return;
      }

      goto LABEL_16;
    }

    if (changed >= 100)
    {
      [(APContentDataInternal *)self accumulateVisibilityTime:duration];

      [(APContentDataInternal *)self accumulate50PercentVisibilityTime:duration];
      return;
    }
  }

  if (changed >= 50)
  {
    [(APContentDataInternal *)self accumulate50PercentVisibilityTime:duration];
    transientContent = [(APContentDataInternal *)self transientContent];
    [transientContent setAccumulatedVisibilityTime:0.0];

LABEL_16:

    [(APContentDataInternal *)self addTimeSpent:duration];
    return;
  }

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 setAccumulatedVisibilityTime:0.0];

  transientContent3 = [(APContentDataInternal *)self transientContent];
  [transientContent3 setAccumulated50PercentVisibilityTime:0.0];
}

- (void)visibleStateChanged:(int64_t)changed duration:(double)duration shouldUseNewVisibleLogic:(BOOL)logic
{
  [(APContentDataInternal *)self _visibleStateChanged:changed duration:logic shouldUseNewVisibleLogic:duration];
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent save];
}

- (void)carouselVisibleStateChanged:(int64_t)changed duration:(double)duration elements:(id)elements partialElements:(id)partialElements shouldUseNewVisibleLogic:(BOOL)logic
{
  logicCopy = logic;
  partialElementsCopy = partialElements;
  elementsCopy = elements;
  [(APContentDataInternal *)self _visibleStateChanged:changed duration:logicCopy shouldUseNewVisibleLogic:duration];
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setCarouselElementsVisible:elementsCopy];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 setCarouselElementsPartiallyVisible:partialElementsCopy];

  transientContent3 = [(APContentDataInternal *)self transientContent];
  [transientContent3 save];
}

- (void)volumeChanged:(double)changed
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent setVolume:changed];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

- (id)_loadJourneyStartRelayValuesFromAdData:(id)data
{
  dataCopy = data;
  v4 = [NSMutableDictionary alloc];
  journeyStartRelayValues = [dataCopy journeyStartRelayValues];
  v6 = [v4 initWithCapacity:{objc_msgSend(journeyStartRelayValues, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = dataCopy;
  journeyStartRelayValues2 = [dataCopy journeyStartRelayValues];
  v8 = [journeyStartRelayValues2 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(journeyStartRelayValues2);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        if (![v12 hasKey] || (objc_msgSend(v12, "key"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, !v14))
        {
          v16 = APLogForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Journey start relay value does not have a key.", buf, 2u);
          }

          goto LABEL_21;
        }

        if ([v12 hasValueInt])
        {
          valueString = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 valueInt]);
LABEL_18:
          v16 = valueString;
          if (!valueString)
          {
            goto LABEL_22;
          }

          v17 = [v12 key];
          [v6 setObject:v16 forKeyedSubscript:v17];
          goto LABEL_20;
        }

        if ([v12 hasValueBool])
        {
          valueString = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 valueBool]);
          goto LABEL_18;
        }

        if ([v12 hasValueDouble])
        {
          [v12 valueDouble];
          valueString = [NSNumber numberWithDouble:?];
          goto LABEL_18;
        }

        if ([v12 hasValueString])
        {
          valueString = [v12 valueString];
          goto LABEL_18;
        }

        v16 = APLogForCategory();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        v17 = [v12 key];
        *buf = 138543362;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "No Journey start relay value set for key %{public}@.", buf, 0xCu);
LABEL_20:

LABEL_21:
LABEL_22:
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v18 = [journeyStartRelayValues2 countByEnumeratingWithState:&v22 objects:v28 count:16];
      v9 = v18;
    }

    while (v18);
  }

  v19 = [v6 copy];

  return v19;
}

- (void)addTimeSpent:(double)spent
{
  transientContent = [(APContentDataInternal *)self transientContent];
  [transientContent timeSpent];
  [transientContent setTimeSpent:v6 + spent];

  transientContent2 = [(APContentDataInternal *)self transientContent];
  [transientContent2 save];
}

@end