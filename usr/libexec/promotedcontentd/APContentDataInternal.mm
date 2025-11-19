@interface APContentDataInternal
+ (BOOL)isFinalMessage:(int)a3;
- (APContentDataInternal)init;
- (APContentDataInternal)initWithAdData:(id)a3 identifier:(id)a4 contextIdentifier:(id)a5 placementType:(int64_t)a6 maxSize:(id)a7;
- (APContentDataInternal)initWithContent:(id)a3 privateContent:(id)a4 andTransientContent:(id)a5;
- (APContentDataInternal)initWithContentDataProvider:(id)a3;
- (APContentDataInternal)initWithUnfilledReason:(int64_t)a3 error:(id)a4 contentIdentifier:(id)a5 contextIdentifier:(id)a6 containerSize:(id)a7 placementType:(int64_t)a8 journeyStartRelayValues:(id)a9;
- (BOOL)_hasSentFinalEvent;
- (BOOL)canSend50PercentImpression:(BOOL)a3;
- (BOOL)canSendImpression:(BOOL)a3;
- (BOOL)hasConfirmed50PercentImpression;
- (BOOL)hasConfirmedImpression;
- (BOOL)hasSentStatusEvent:(int)a3;
- (BOOL)isFirstMessage:(int)a3;
- (BOOL)isPlaceholder;
- (BOOL)shouldSendAdSpaceStatusEvent:(int)a3;
- (id)_loadJourneyStartRelayValuesFromAdData:(id)a3;
- (id)initRateLimitedForContextId:(id)a3 containerSize:(id)a4 placementType:(int64_t)a5;
- (void)_accumulatePlaybackTimeIfNoDuration;
- (void)_clicked:(id)a3;
- (void)_updateLastPlaybackTimestamp;
- (void)_visibleStateChanged:(int64_t)a3 duration:(double)a4 shouldUseNewVisibleLogic:(BOOL)a5;
- (void)accumulate50PercentVisibilityTime:(double)a3;
- (void)accumulateVisibilityTime:(double)a3;
- (void)addTimeSpent:(double)a3;
- (void)appearedOnScreenWithStatus:(int)a3;
- (void)carouselElementClicked:(id)a3 element:(int)a4;
- (void)carouselFinishedSent;
- (void)carouselVisibleStateChanged:(int64_t)a3 duration:(double)a4 elements:(id)a5 partialElements:(id)a6 shouldUseNewVisibleLogic:(BOOL)a7;
- (void)clicked:(id)a3;
- (void)confirm50PercentImpression;
- (void)confirmClick;
- (void)confirmImpression;
- (void)discarded;
- (void)eventSent;
- (void)incrementVideoEventSequence;
- (void)interfaceReady;
- (void)interfaceReplaced;
- (void)loadFailed;
- (void)pendingConfirmedClick:(BOOL)a3;
- (void)resetTimeSpent;
- (void)resetTransientData;
- (void)statusEventSent:(int)a3;
- (void)videoLoaded:(double)a3;
- (void)videoStateChanged:(double)a3 fromMetric:(int64_t)a4;
- (void)videoUnloaded;
- (void)visibleStateChanged:(int64_t)a3 duration:(double)a4 shouldUseNewVisibleLogic:(BOOL)a5;
- (void)volumeChanged:(double)a3;
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

- (APContentDataInternal)initWithAdData:(id)a3 identifier:(id)a4 contextIdentifier:(id)a5 placementType:(int64_t)a6 maxSize:(id)a7
{
  var1 = a7.var1;
  var0 = a7.var0;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v28.receiver = self;
  v28.super_class = APContentDataInternal;
  v16 = [(APContentDataInternal *)&v28 init];
  if (v16)
  {
    v17 = [[APContentData alloc] initWithAdData:v13 identifier:v14 contextIdentifier:v15 placementType:a6 maxSize:{var0, var1}];
    content = v16->_content;
    v16->_content = v17;

    v19 = [APAgePolicyProcessor processContentData:v16->_content];
    v20 = v16->_content;
    v16->_content = v19;

    v21 = [[APContentDataPrivate alloc] initWithAdData:v13 forPlacementType:a6];
    privateContent = v16->_privateContent;
    v16->_privateContent = v21;

    v23 = objc_alloc_init(APContentDataTransient);
    transientContent = v16->_transientContent;
    v16->_transientContent = v23;

    v25 = [(APContentDataInternal *)v16 _loadJourneyStartRelayValuesFromAdData:v13];
    journeyStartRelayValues = v16->_journeyStartRelayValues;
    v16->_journeyStartRelayValues = v25;
  }

  return v16;
}

- (APContentDataInternal)initWithUnfilledReason:(int64_t)a3 error:(id)a4 contentIdentifier:(id)a5 contextIdentifier:(id)a6 containerSize:(id)a7 placementType:(int64_t)a8 journeyStartRelayValues:(id)a9
{
  var1 = a7.var1;
  var0 = a7.var0;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a9;
  v21 = [(APContentDataInternal *)self init];
  if (v21)
  {
    v22 = [[APContentData alloc] initWithUnfilledReason:a3 error:v17 contentIdentifier:v18 contextIdentifier:v19 containerSize:a8 placementType:{var0, var1}];
    content = v21->_content;
    v21->_content = v22;

    v24 = objc_alloc_init(APContentDataPrivate);
    privateContent = v21->_privateContent;
    v21->_privateContent = v24;

    objc_storeStrong(&v21->_journeyStartRelayValues, a9);
  }

  return v21;
}

- (APContentDataInternal)initWithContent:(id)a3 privateContent:(id)a4 andTransientContent:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(APContentDataInternal *)self init];
  v13 = v12;
  if (v12)
  {
    if (v9)
    {
      objc_storeStrong(&v12->_content, a3);
    }

    if (v10)
    {
      objc_storeStrong(&v13->_privateContent, a4);
    }

    if (v11)
    {
      objc_storeStrong(&v13->_transientContent, a5);
    }
  }

  return v13;
}

- (APContentDataInternal)initWithContentDataProvider:(id)a3
{
  v5 = a3;
  v6 = [v5 contentData];
  v7 = [v5 contentDataPrivate];
  v8 = [v5 contentDataTransient];
  v9 = [(APContentDataInternal *)self initWithContent:v6 privateContent:v7 andTransientContent:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_contentDataProvider, a3);
  }

  return v9;
}

- (id)initRateLimitedForContextId:(id)a3 containerSize:(id)a4 placementType:(int64_t)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a3;
  v18.receiver = self;
  v18.super_class = APContentDataInternal;
  v10 = [(APContentDataInternal *)&v18 init];
  if (v10)
  {
    v11 = [[APContentData alloc] initRateLimitedForContextId:v9 containerSize:a5 placementType:{var0, var1}];
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

- (void)accumulateVisibilityTime:(double)a3
{
  v5 = [(APContentDataInternal *)self privateContent];
  v6 = [v5 isCarouselAd];

  if (v6)
  {
    v7 = [(APContentDataInternal *)self transientContent];
    [v7 carouselVisibleTime];
    [v7 setCarouselVisibleTime:v8 + a3];
  }

  if (![(APContentDataInternal *)self hasConfirmedImpression])
  {
    v9 = [(APContentDataInternal *)self transientContent];
    [v9 accumulatedVisibilityTime];
    v11 = v10;
    v12 = [(APContentDataInternal *)self content];
    [v12 impressionThreshold];
    v14 = v13;

    if (v11 <= v14)
    {
      v16 = [(APContentDataInternal *)self transientContent];
      [v16 accumulatedVisibilityTime];
      [v16 setAccumulatedVisibilityTime:v15 + a3];
    }
  }
}

- (void)accumulate50PercentVisibilityTime:(double)a3
{
  v5 = [(APContentDataInternal *)self privateContent];
  v6 = [v5 isCarouselAd];

  if (v6)
  {
    v7 = [(APContentDataInternal *)self transientContent];
    [v7 carousel50PercentVisibleTime];
    [v7 setCarousel50PercentVisibleTime:v8 + a3];
  }

  if (![(APContentDataInternal *)self hasConfirmed50PercentImpression])
  {
    v9 = [(APContentDataInternal *)self transientContent];
    [v9 accumulated50PercentVisibilityTime];
    v11 = v10;
    v12 = [(APContentDataInternal *)self content];
    [v12 impressionThreshold];
    v14 = v13;

    if (v11 <= v14)
    {
      v16 = [(APContentDataInternal *)self transientContent];
      [v16 accumulated50PercentVisibilityTime];
      [v16 setAccumulated50PercentVisibilityTime:v15 + a3];
    }
  }
}

- (void)appearedOnScreenWithStatus:(int)a3
{
  v3 = *&a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(APContentDataInternal *)self content];
    v7 = [v6 contextIdentifier];
    v8 = [(APContentDataInternal *)self content];
    v9 = [v8 identifier];
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
    v15 = v7;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content for context %{public}@ with ID %{public}@ appeared on screen with status %{public}@.", buf, 0x20u);
  }

  v11 = [(APContentDataInternal *)self transientContent];
  [v11 setHasBeenOnScreen:1];

  v12 = [(APContentDataInternal *)self transientContent];
  [v12 setLastStatusCode:v3];

  v13 = [(APContentDataInternal *)self transientContent];
  [v13 save];
}

- (BOOL)canSendImpression:(BOOL)a3
{
  v3 = a3;
  if ([(APContentDataInternal *)self hasConfirmedImpression])
  {
    v5 = APLogForCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
LABEL_55:
      v10 = 0;
      goto LABEL_56;
    }

    v6 = [(APContentDataInternal *)self content];
    v7 = [v6 identifier];
    *buf = 138543362;
    v38 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can NOT send viewable impression - it has already impressed.", buf, 0xCu);
LABEL_4:

    goto LABEL_55;
  }

  v8 = [(APContentDataInternal *)self transientContent];
  v9 = [v8 lastStatusCode];

  if (v9 != 3000)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = [(APContentDataInternal *)self content];
      v14 = [v13 identifier];
      v15 = [(APContentDataInternal *)self transientContent];
      v16 = [v15 lastStatusCode];
      if (v16 > 359)
      {
        switch(v16)
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
            if (v16 == 360)
            {
              v17 = @"ADStatusCodeNoAdDueToSubscriptionStatus";
            }

            else if (v16 == 370)
            {
              v17 = @"ADStatusCodeNoAdDueToPolicyRequirement";
            }

            else
            {
LABEL_42:
              v17 = [NSString stringWithFormat:@"(unknown: %i)", v16];
            }

            break;
        }
      }

      else
      {
        v17 = @"ADStatusCodeUnknown";
        switch(v16)
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
      v38 = v14;
      v39 = 2112;
      v40 = v17;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can NOT send viewable impression - current ASE code is %@.", buf, 0x16u);
    }

    goto LABEL_55;
  }

  if (!v3)
  {
    v18 = [(APContentDataInternal *)self transientContent];
    [v18 accumulatedVisibilityTime];
    v20 = v19;
    v21 = [(APContentDataInternal *)self content];
    [v21 impressionThreshold];
    v23 = v22;

    v5 = APLogForCategory();
    v24 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v20 < v23)
    {
      if (!v24)
      {
        goto LABEL_55;
      }

      v6 = [(APContentDataInternal *)self content];
      v7 = [v6 identifier];
      v25 = [(APContentDataInternal *)self transientContent];
      [v25 accumulatedVisibilityTime];
      v27 = v26;
      v28 = [(APContentDataInternal *)self content];
      [v28 impressionThreshold];
      *buf = 138543874;
      v38 = v7;
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

    v11 = [(APContentDataInternal *)self content];
    v30 = [v11 identifier];
    v31 = [(APContentDataInternal *)self content];
    [v31 impressionThreshold];
    v33 = v32;
    v34 = [(APContentDataInternal *)self transientContent];
    [v34 accumulatedVisibilityTime];
    *buf = 138543874;
    v38 = v30;
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
    v11 = [(APContentDataInternal *)self content];
    v12 = [v11 identifier];
    *buf = 138543362;
    v38 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can send viewable impression due to interaction", buf, 0xCu);

LABEL_20:
  }

LABEL_56:

  return v10;
}

- (BOOL)canSend50PercentImpression:(BOOL)a3
{
  v3 = a3;
  if ([(APContentDataInternal *)self hasConfirmed50PercentImpression])
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(APContentDataInternal *)self content];
      v7 = [v6 identifier];
      *buf = 138543362;
      v54 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can NOT send 50 percent viewable impression - it has already impressed.", buf, 0xCu);
    }

LABEL_54:
    v10 = 0;
    goto LABEL_55;
  }

  v8 = [(APContentDataInternal *)self transientContent];
  v9 = [v8 lastStatusCode];

  if (v9 != 3000)
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = [(APContentDataInternal *)self content];
      v14 = [v13 identifier];
      v15 = [(APContentDataInternal *)self transientContent];
      v16 = [v15 lastStatusCode];
      if (v16 > 359)
      {
        switch(v16)
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
            if (v16 == 360)
            {
              v17 = @"ADStatusCodeNoAdDueToSubscriptionStatus";
            }

            else if (v16 == 370)
            {
              v17 = @"ADStatusCodeNoAdDueToPolicyRequirement";
            }

            else
            {
LABEL_41:
              v17 = [NSString stringWithFormat:@"(unknown: %i)", v16];
            }

            break;
        }
      }

      else
      {
        v17 = @"ADStatusCodeUnknown";
        switch(v16)
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
      v54 = v14;
      v55 = 2112;
      v56 = v17;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can NOT send 50 percent viewable impression - current ASE code is %@.", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if (v3)
  {
    v5 = APLogForCategory();
    v10 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = [(APContentDataInternal *)self content];
      v12 = [v11 identifier];
      *buf = 138543362;
      v54 = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Content with ID %{public}@ can send 50 percent viewable impression due to interaction", buf, 0xCu);
    }
  }

  else
  {
    v18 = [(APContentDataInternal *)self transientContent];
    [v18 accumulated50PercentVisibilityTime];
    v20 = v19;
    v21 = [(APContentDataInternal *)self content];
    [v21 impressionThreshold];
    if (v20 >= v22)
    {
    }

    else
    {
      v23 = [(APContentDataInternal *)self transientContent];
      [v23 accumulatedVisibilityTime];
      v25 = v24;
      v26 = [(APContentDataInternal *)self content];
      [v26 impressionThreshold];
      v28 = v27;

      if (v25 < v28)
      {
        v5 = APLogForCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v29 = [(APContentDataInternal *)self content];
          v30 = [v29 identifier];
          v31 = [(APContentDataInternal *)self transientContent];
          [v31 accumulated50PercentVisibilityTime];
          v33 = v32;
          v34 = [(APContentDataInternal *)self content];
          [v34 impressionThreshold];
          v36 = v35;
          v37 = [(APContentDataInternal *)self transientContent];
          [v37 accumulatedVisibilityTime];
          v39 = v38;
          v40 = [(APContentDataInternal *)self content];
          [v40 impressionThreshold];
          *buf = 138544386;
          v54 = v30;
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
      v42 = [(APContentDataInternal *)self content];
      v43 = [v42 identifier];
      v44 = [(APContentDataInternal *)self transientContent];
      [v44 accumulated50PercentVisibilityTime];
      v46 = v45;
      v47 = [(APContentDataInternal *)self transientContent];
      [v47 accumulatedVisibilityTime];
      v49 = v48;
      v50 = [(APContentDataInternal *)self content];
      [v50 impressionThreshold];
      *buf = 138544130;
      v54 = v43;
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
  v3 = [(APContentDataInternal *)self transientContent];
  [v3 setHasConfirmedImpression:1];

  v4 = [(APContentDataInternal *)self privateContent];
  [v4 setConsumedImpressions:{objc_msgSend(v4, "consumedImpressions") + 1}];

  v5 = [(APContentDataInternal *)self transientContent];
  [v5 save];

  v6 = [(APContentDataInternal *)self privateContent];
  [v6 save];
}

- (void)confirm50PercentImpression
{
  v3 = [(APContentDataInternal *)self transientContent];
  [v3 setHasConfirmed50PercentImpression:1];

  v4 = [(APContentDataInternal *)self privateContent];
  [v4 setConsumed50PercentImpressions:{objc_msgSend(v4, "consumed50PercentImpressions") + 1}];

  v5 = [(APContentDataInternal *)self transientContent];
  [v5 save];

  v6 = [(APContentDataInternal *)self privateContent];
  [v6 save];
}

- (void)resetTimeSpent
{
  v3 = [(APContentDataInternal *)self transientContent];
  [v3 setTimeSpent:0.0];

  v4 = [(APContentDataInternal *)self transientContent];
  [v4 save];
}

- (void)discarded
{
  v3 = [(APContentDataInternal *)self transientContent];
  [v3 setDiscarded:1];

  v4 = [(APContentDataInternal *)self transientContent];
  [v4 save];
}

- (void)eventSent
{
  v3 = +[NSDate date];
  [v3 timeIntervalSince1970];
  v5 = v4;
  v6 = [(APContentDataInternal *)self transientContent];
  [v6 setLastSentEventTime:v5];

  v7 = [(APContentDataInternal *)self transientContent];
  [v7 save];
}

- (void)interfaceReady
{
  v3 = [(APContentDataInternal *)self transientContent];
  [v3 setInterfaceReady:1];

  v4 = [(APContentDataInternal *)self transientContent];
  [v4 save];
}

- (void)carouselElementClicked:(id)a3 element:(int)a4
{
  v4 = *&a4;
  [(APContentDataInternal *)self _clicked:a3.var0, a3.var1];
  v6 = [(APContentDataInternal *)self transientContent];
  [v6 setClickedCarouselElement:v4];

  v7 = [(APContentDataInternal *)self transientContent];
  [v7 save];
}

- (void)carouselFinishedSent
{
  v3 = [(APContentDataInternal *)self transientContent];
  [v3 setCarouselFinishedSent:1];

  v4 = [(APContentDataInternal *)self transientContent];
  [v4 save];
}

- (void)_clicked:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(APContentDataInternal *)self transientContent];
  [v6 setClickLocation:{var0, var1}];

  v7 = +[NSDate date];
  [v7 timeIntervalSince1970];
  v9 = v8;
  v10 = [(APContentDataInternal *)self transientContent];
  [v10 setClickTime:v9];

  v11 = [(APContentDataInternal *)self transientContent];
  [v11 setClickCount:{objc_msgSend(v11, "clickCount") + 1}];
}

- (void)clicked:(id)a3
{
  [(APContentDataInternal *)self _clicked:a3.var0, a3.var1];
  v4 = [(APContentDataInternal *)self transientContent];
  [v4 save];
}

- (void)confirmClick
{
  v3 = [(APContentDataInternal *)self transientContent];
  [v3 setHasConfirmedClick:1];

  v4 = [(APContentDataInternal *)self transientContent];
  [v4 save];
}

- (BOOL)hasConfirmedImpression
{
  v2 = [(APContentDataInternal *)self transientContent];
  v3 = [v2 hasConfirmedImpression];

  return v3;
}

- (BOOL)hasConfirmed50PercentImpression
{
  v2 = [(APContentDataInternal *)self transientContent];
  v3 = [v2 hasConfirmed50PercentImpression];

  return v3;
}

- (void)incrementVideoEventSequence
{
  v3 = [(APContentDataInternal *)self transientContent];
  [v3 setVideoEventSequence:{objc_msgSend(v3, "videoEventSequence") + 1}];

  v4 = [(APContentDataInternal *)self transientContent];
  [v4 save];
}

- (void)pendingConfirmedClick:(BOOL)a3
{
  v3 = a3;
  v5 = [(APContentDataInternal *)self transientContent];
  [v5 setPendingConfirmedClick:v3];

  v6 = [(APContentDataInternal *)self transientContent];
  [v6 save];
}

- (BOOL)isFirstMessage:(int)a3
{
  v3 = 1;
  if (a3 <= 0xD)
  {
    if (((1 << a3) & 0x361E) != 0)
    {
      return v3;
    }

    if (a3 == 8)
    {
LABEL_8:
      v5 = [(APContentDataInternal *)self transientContent];
      v6 = [v5 sentStatusCodes];
      v3 = [v6 count] == 0;

      return v3;
    }
  }

  if ((a3 - 3000) > 0xC)
  {
    return a3 == 360;
  }

  v4 = 1 << (a3 + 72);
  if ((v4 & 0x1782) == 0)
  {
    if ((v4 & 0x11) != 0)
    {
      goto LABEL_8;
    }

    return a3 == 360;
  }

  return v3;
}

+ (BOOL)isFinalMessage:(int)a3
{
  result = 1;
  if (a3 > 369)
  {
    if ((a3 - 3000) <= 0xD)
    {
      v4 = 1 << (a3 + 72);
      if ((v4 & 0x37A0) != 0)
      {
        return result;
      }

      if ((v4 & 0x13) != 0)
      {
        return 0;
      }
    }

    if (a3 != 370)
    {
      return 0;
    }
  }

  else
  {
    if (a3 <= 0xF)
    {
      if (((1 << a3) & 0xF31E) != 0)
      {
        return result;
      }

      if (a3 == 10)
      {
        return 0;
      }
    }

    if (a3 != 360)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)isPlaceholder
{
  v2 = [(APContentDataInternal *)self content];
  v3 = [v2 identifier];
  v4 = [APContentDataInternal isPlaceholderIdentifier:v3];

  return v4;
}

- (void)loadFailed
{
  v3 = [(APContentDataInternal *)self transientContent];
  [v3 setLastStatusCode:8];

  v4 = [(APContentDataInternal *)self transientContent];
  [v4 save];
}

- (BOOL)hasSentStatusEvent:(int)a3
{
  v3 = *&a3;
  v4 = [(APContentDataInternal *)self transientContent];
  v5 = [v4 sentStatusCodes];
  v6 = [NSNumber numberWithInt:v3];
  v7 = [v5 containsObject:v6];

  return v7;
}

- (void)interfaceReplaced
{
  v3 = [(APContentDataInternal *)self transientContent];
  [v3 setInterfaceReplaced:1];

  v4 = [(APContentDataInternal *)self transientContent];
  [v4 save];
}

- (void)wasFullyVisible
{
  v3 = [(APContentDataInternal *)self transientContent];
  [v3 setWasFullyVisible:1];

  v4 = [(APContentDataInternal *)self transientContent];
  [v4 save];
}

- (BOOL)_hasSentFinalEvent
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(APContentDataInternal *)self transientContent];
  v3 = [v2 sentStatusCodes];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (+[APContentDataInternal isFinalMessage:](APContentDataInternal, "isFinalMessage:", [*(*(&v8 + 1) + 8 * i) intValue]))
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (BOOL)shouldSendAdSpaceStatusEvent:(int)a3
{
  v3 = *&a3;
  if (a3 <= 0)
  {
    v7 = [(APContentDataInternal *)self content];
    v8 = [v7 serverUnfilledReason];

    v9 = APLogForCategory();
    v5 = v9;
    if (v8 != 1020)
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

    v10 = [(APContentDataInternal *)self content];
    v11 = [v10 identifier];
    *buf = 138412290;
    v52 = v11;
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

      v43 = [(APContentDataInternal *)self content];
      v44 = [v43 identifier];
      *buf = 138543618;
      v52 = v3;
      v53 = 2114;
      v54 = v44;
      v46 = "shouldSendAdSpaceStatusEvent: NOT sending ASE %{public}@ for content %{public}@ - a final ASE was previously sent.";
LABEL_163:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v46, buf, 0x16u);

      goto LABEL_164;
    }

    goto LABEL_164;
  }

  v13 = [(APContentDataInternal *)self transientContent];
  v14 = [v13 discarded];

  if (!v14)
  {
    v16 = [(APContentDataInternal *)self hasSentStatusEvent:v3];
    if ((v16 & 1) != 0 || (-[APContentDataInternal transientContent](self, "transientContent"), v14 = objc_claimAutoreleasedReturnValue(), [v14 lastStatusCode] == v3))
    {
      v17 = [(APContentDataInternal *)self transientContent];
      v18 = [v17 hasBeenOnScreen];

      if (v16)
      {
        if ((v18 & 1) == 0)
        {
LABEL_29:
          if ([(APContentDataInternal *)self isPlaceholder])
          {
            v20 = [(APContentDataInternal *)self transientContent];
            v19 = [v20 interfaceReplaced] ^ 1;
          }

          else
          {
            v19 = 1;
          }

          if (v3 == 8 && v19)
          {
            v21 = [(APContentDataInternal *)self transientContent];
            v22 = [v21 hasBeenOnScreen];

            if (v22)
            {
              v23 = +[NSDate date];
              [v23 timeIntervalSince1970];
              v25 = v24;
              v26 = [(APContentDataInternal *)self transientContent];
              [v26 lastSentEventTime];
              v28 = v25 - v27;

              v29 = APLogForCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = [(APContentDataInternal *)self content];
                v31 = [v30 identifier];
                v32 = @" NOT";
                *buf = 138543874;
                v52 = v31;
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

            v10 = [(APContentDataInternal *)self content];
            v11 = [v10 identifier];
            *buf = 138543362;
            v52 = v11;
            v12 = "shouldSendAdSpaceStatusEvent: NOT sending AssetLoadFailure for content %{public}@ because the WebView never appeared on screen.";
LABEL_10:
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v12, buf, 0xCu);

            goto LABEL_164;
          }

LABEL_41:
          v33 = APLogForCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v50 = [(APContentDataInternal *)self content];
            v34 = [v50 identifier];
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
            v49 = [(APContentDataInternal *)self transientContent];
            v37 = [v49 lastStatusCode];
            if ([(APContentDataInternal *)self isPlaceholder])
            {
              v38 = @"YES";
            }

            else
            {
              v38 = @"NO";
            }

            v39 = [(APContentDataInternal *)self transientContent];
            v40 = [v39 interfaceReplaced];
            *buf = 138544898;
            if (v40)
            {
              v41 = @"YES";
            }

            else
            {
              v41 = @"NO";
            }

            v52 = v34;
            v53 = 2112;
            v54 = v47;
            v55 = 2114;
            v56 = *&v48;
            v57 = 1024;
            v58 = v3;
            v59 = 1024;
            v60 = v37;
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

          v43 = [(APContentDataInternal *)self content];
          v44 = [v43 identifier];
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
          v52 = v44;
          v53 = 2114;
          v54 = v3;
          v46 = "%{public}@ has already reported AdSpaceStatusEvent %{public}@. Ignoring.";
          goto LABEL_163;
        }
      }

      else
      {

        if ((v18 & 1) == 0)
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

    v43 = [(APContentDataInternal *)self content];
    v44 = [v43 identifier];
    *buf = 138543618;
    v52 = v3;
    v53 = 2114;
    v54 = v44;
    v46 = "shouldSendAdSpaceStatusEvent: NOT sending ASE %{public}@ for content %{public}@ - it has been discarded.";
    goto LABEL_163;
  }

LABEL_164:

  return 0;
}

- (void)statusEventSent:(int)a3
{
  v3 = *&a3;
  v5 = [(APContentDataInternal *)self transientContent];
  v6 = [v5 sentStatusCodes];
  v7 = [NSNumber numberWithInt:v3];
  [v6 addObject:v7];

  v8 = [(APContentDataInternal *)self transientContent];
  [v8 save];
}

- (void)videoLoaded:(double)a3
{
  v4 = fmax(a3, 0.0);
  v5 = [(APContentDataInternal *)self transientContent];
  [v5 setDuration:v4];

  v6 = [(APContentDataInternal *)self transientContent];
  [v6 setPlaybackInProgress:0];

  v7 = [(APContentDataInternal *)self transientContent];
  [v7 save];
}

- (void)_updateLastPlaybackTimestamp
{
  v6 = +[NSDate date];
  [v6 timeIntervalSince1970];
  v4 = v3;
  v5 = [(APContentDataInternal *)self transientContent];
  [v5 setLastPlaybackTimestamp:v4];
}

- (void)_accumulatePlaybackTimeIfNoDuration
{
  v12 = [(APContentDataInternal *)self transientContent];
  if (([v12 hasDuration] & 1) == 0)
  {
    v3 = [(APContentDataInternal *)self transientContent];
    v4 = [v3 playbackInProgress];

    if (!v4)
    {
      return;
    }

    v12 = [(APContentDataInternal *)self transientContent];
    v5 = +[NSDate date];
    [v5 timeIntervalSince1970];
    v7 = v6;
    v8 = [(APContentDataInternal *)self transientContent];
    [v8 lastPlaybackTimestamp];
    v10 = v7 - v9;
    [v12 accumulatedPlaybackTime];
    [v12 setAccumulatedPlaybackTime:v11 + v10];
  }
}

- (void)videoStateChanged:(double)a3 fromMetric:(int64_t)a4
{
  if (a3 >= 0.0)
  {
    v8 = [(APContentDataInternal *)self transientContent];
    [v8 lastPosition];
    v10 = v9;

    v11 = [(APContentDataInternal *)self transientContent];
    v12 = [v11 hasDuration];

    if (v12)
    {
      v13 = a3 - v10;
      if (a3 - v10 > 0.0)
      {
        v14 = [(APContentDataInternal *)self transientContent];
        v15 = [(APContentDataInternal *)self transientContent];
        [v15 duration];
        v17 = v16;
        [v14 accumulatedPlaybackTime];
        [v14 setAccumulatedPlaybackTime:v18 + v13 * v17];
      }
    }

    v19 = [(APContentDataInternal *)self transientContent];
    [v19 setLastPosition:a3];

    if (a4 <= 1602)
    {
      if (a4 != 1600 && a4 != 1602)
      {
        goto LABEL_24;
      }

      [(APContentDataInternal *)self _updateLastPlaybackTimestamp];
      v22 = [(APContentDataInternal *)self transientContent];
      v23 = [v22 playbackInProgress];

      if (v23)
      {
        v24 = APLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "MediaPlayed metric received but media is already thought to be in playback", &v27, 2u);
        }

        goto LABEL_23;
      }

      v25 = [(APContentDataInternal *)self transientContent];
      v24 = v25;
      v26 = 1;
    }

    else
    {
      if (a4 != 1603 && a4 != 1604)
      {
        if (a4 == 1609)
        {
          [(APContentDataInternal *)self _accumulatePlaybackTimeIfNoDuration];
          [(APContentDataInternal *)self _updateLastPlaybackTimestamp];
          v20 = a3 < 1.0 && a3 >= 0.0;
          v21 = [(APContentDataInternal *)self transientContent];
          [v21 setPlaybackInProgress:v20];
        }

        goto LABEL_24;
      }

      [(APContentDataInternal *)self _accumulatePlaybackTimeIfNoDuration];
      v25 = [(APContentDataInternal *)self transientContent];
      v24 = v25;
      v26 = 0;
    }

    [v25 setPlaybackInProgress:v26];
LABEL_23:

LABEL_24:
    v5 = [(APContentDataInternal *)self transientContent];
    [v5 save];
    goto LABEL_25;
  }

  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v27 = 134217984;
    v28 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "updateAccumulatedPlaybackTime: position cannot be negative (%.2f)", &v27, 0xCu);
  }

LABEL_25:
}

- (void)videoUnloaded
{
  v3 = [(APContentDataInternal *)self transientContent];
  [v3 setVideoUnloadedSent:1];

  v4 = [(APContentDataInternal *)self transientContent];
  [v4 save];
}

- (void)_visibleStateChanged:(int64_t)a3 duration:(double)a4 shouldUseNewVisibleLogic:(BOOL)a5
{
  if (a5)
  {
    if (a3 >= 100)
    {

      [(APContentDataInternal *)self accumulateVisibilityTime:?];
      return;
    }
  }

  else
  {
    v8 = [(APContentDataInternal *)self privateContent];
    v9 = [v8 isOutstreamVideo];

    if (a3 >= 50 && v9)
    {
      [(APContentDataInternal *)self accumulateVisibilityTime:a4];
      if (a3 != 50)
      {
        return;
      }

      goto LABEL_16;
    }

    if (a3 >= 100)
    {
      [(APContentDataInternal *)self accumulateVisibilityTime:a4];

      [(APContentDataInternal *)self accumulate50PercentVisibilityTime:a4];
      return;
    }
  }

  if (a3 >= 50)
  {
    [(APContentDataInternal *)self accumulate50PercentVisibilityTime:a4];
    v10 = [(APContentDataInternal *)self transientContent];
    [v10 setAccumulatedVisibilityTime:0.0];

LABEL_16:

    [(APContentDataInternal *)self addTimeSpent:a4];
    return;
  }

  v11 = [(APContentDataInternal *)self transientContent];
  [v11 setAccumulatedVisibilityTime:0.0];

  v12 = [(APContentDataInternal *)self transientContent];
  [v12 setAccumulated50PercentVisibilityTime:0.0];
}

- (void)visibleStateChanged:(int64_t)a3 duration:(double)a4 shouldUseNewVisibleLogic:(BOOL)a5
{
  [(APContentDataInternal *)self _visibleStateChanged:a3 duration:a5 shouldUseNewVisibleLogic:a4];
  v6 = [(APContentDataInternal *)self transientContent];
  [v6 save];
}

- (void)carouselVisibleStateChanged:(int64_t)a3 duration:(double)a4 elements:(id)a5 partialElements:(id)a6 shouldUseNewVisibleLogic:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = a5;
  [(APContentDataInternal *)self _visibleStateChanged:a3 duration:v7 shouldUseNewVisibleLogic:a4];
  v14 = [(APContentDataInternal *)self transientContent];
  [v14 setCarouselElementsVisible:v13];

  v15 = [(APContentDataInternal *)self transientContent];
  [v15 setCarouselElementsPartiallyVisible:v12];

  v16 = [(APContentDataInternal *)self transientContent];
  [v16 save];
}

- (void)volumeChanged:(double)a3
{
  v5 = [(APContentDataInternal *)self transientContent];
  [v5 setVolume:a3];

  v6 = [(APContentDataInternal *)self transientContent];
  [v6 save];
}

- (id)_loadJourneyStartRelayValuesFromAdData:(id)a3
{
  v3 = a3;
  v4 = [NSMutableDictionary alloc];
  v5 = [v3 journeyStartRelayValues];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = v3;
  v7 = [v3 journeyStartRelayValues];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(v7);
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
          v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 valueInt]);
LABEL_18:
          v16 = v15;
          if (!v15)
          {
            goto LABEL_22;
          }

          v17 = [v12 key];
          [v6 setObject:v16 forKeyedSubscript:v17];
          goto LABEL_20;
        }

        if ([v12 hasValueBool])
        {
          v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 valueBool]);
          goto LABEL_18;
        }

        if ([v12 hasValueDouble])
        {
          [v12 valueDouble];
          v15 = [NSNumber numberWithDouble:?];
          goto LABEL_18;
        }

        if ([v12 hasValueString])
        {
          v15 = [v12 valueString];
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
      v18 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      v9 = v18;
    }

    while (v18);
  }

  v19 = [v6 copy];

  return v19;
}

- (void)addTimeSpent:(double)a3
{
  v5 = [(APContentDataInternal *)self transientContent];
  [v5 timeSpent];
  [v5 setTimeSpent:v6 + a3];

  v7 = [(APContentDataInternal *)self transientContent];
  [v7 save];
}

@end