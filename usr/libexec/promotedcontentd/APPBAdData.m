@interface APPBAdData
- (BOOL)isEqual:(id)a3;
- (id)adPrivacyMarkPositionAsString:(int)a3;
- (id)adPrivacyMarkerTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)desiredPositionAsString:(int)a3;
- (id)dictionaryRepresentation;
- (id)unfilledReasonCodeAsString:(int)a3;
- (int)StringAsAdPrivacyMarkPosition:(id)a3;
- (int)StringAsAdPrivacyMarkerType:(id)a3;
- (int)StringAsDesiredPosition:(id)a3;
- (int)StringAsUnfilledReasonCode:(id)a3;
- (int)adPrivacyMarkPosition;
- (int)adPrivacyMarkerType;
- (int)desiredPosition;
- (int)unfilledReasonCode;
- (unint64_t)hash;
- (void)addActions:(id)a3;
- (void)addAdLayoutData:(id)a3;
- (void)addConfirmedClickPixelURLs:(id)a3;
- (void)addCreativeSizes:(id)a3;
- (void)addExcludeTag:(id)a3;
- (void)addGeofences:(id)a3;
- (void)addITunesMetadata:(id)a3;
- (void)addJourneyStartRelayValues:(id)a3;
- (void)addMatchTagClause:(id)a3;
- (void)addNativeMetadata:(id)a3;
- (void)addRewardTokens:(id)a3;
- (void)addScreenSaverImageURL:(id)a3;
- (void)addTrackingURL:(id)a3;
- (void)addVideoAsset:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAdPrivacyMarkPosition:(BOOL)a3;
- (void)setHasAdPrivacyMarkerType:(BOOL)a3;
- (void)setHasBannerImpressionThreshold:(BOOL)a3;
- (void)setHasBannerNewContentCandidacyThreshold:(BOOL)a3;
- (void)setHasDesiredPosition:(BOOL)a3;
- (void)setHasDoesNotResetListeningTime:(BOOL)a3;
- (void)setHasDownloadWebArchivesBeforeShowingBanner:(BOOL)a3;
- (void)setHasLetterboxCreativeColor:(BOOL)a3;
- (void)setHasMaximumPretapRequestCount:(BOOL)a3;
- (void)setHasMinimumIntervalBetweenPresentations:(BOOL)a3;
- (void)setHasPriority:(BOOL)a3;
- (void)setHasRewardTokensExpiration:(BOOL)a3;
- (void)setHasSkipThreshold:(BOOL)a3;
- (void)setHasStartDate:(BOOL)a3;
- (void)setHasUnbranded:(BOOL)a3;
- (void)setHasUnfilledReasonCode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBAdData

- (void)addTrackingURL:(id)a3
{
  v4 = a3;
  trackingURLs = self->_trackingURLs;
  v8 = v4;
  if (!trackingURLs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_trackingURLs;
    self->_trackingURLs = v6;

    v4 = v8;
    trackingURLs = self->_trackingURLs;
  }

  [(NSMutableArray *)trackingURLs addObject:v4];
}

- (void)setHasUnbranded:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)addConfirmedClickPixelURLs:(id)a3
{
  v4 = a3;
  confirmedClickPixelURLs = self->_confirmedClickPixelURLs;
  v8 = v4;
  if (!confirmedClickPixelURLs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_confirmedClickPixelURLs;
    self->_confirmedClickPixelURLs = v6;

    v4 = v8;
    confirmedClickPixelURLs = self->_confirmedClickPixelURLs;
  }

  [(NSMutableArray *)confirmedClickPixelURLs addObject:v4];
}

- (void)addVideoAsset:(id)a3
{
  v4 = a3;
  videoAssets = self->_videoAssets;
  v8 = v4;
  if (!videoAssets)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_videoAssets;
    self->_videoAssets = v6;

    v4 = v8;
    videoAssets = self->_videoAssets;
  }

  [(NSMutableArray *)videoAssets addObject:v4];
}

- (void)setHasDownloadWebArchivesBeforeShowingBanner:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasBannerImpressionThreshold:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasBannerNewContentCandidacyThreshold:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)addScreenSaverImageURL:(id)a3
{
  v4 = a3;
  screenSaverImageURLs = self->_screenSaverImageURLs;
  v8 = v4;
  if (!screenSaverImageURLs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_screenSaverImageURLs;
    self->_screenSaverImageURLs = v6;

    v4 = v8;
    screenSaverImageURLs = self->_screenSaverImageURLs;
  }

  [(NSMutableArray *)screenSaverImageURLs addObject:v4];
}

- (void)addExcludeTag:(id)a3
{
  v4 = a3;
  excludeTags = self->_excludeTags;
  v8 = v4;
  if (!excludeTags)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_excludeTags;
    self->_excludeTags = v6;

    v4 = v8;
    excludeTags = self->_excludeTags;
  }

  [(NSMutableArray *)excludeTags addObject:v4];
}

- (void)addRewardTokens:(id)a3
{
  v4 = a3;
  rewardTokens = self->_rewardTokens;
  v8 = v4;
  if (!rewardTokens)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_rewardTokens;
    self->_rewardTokens = v6;

    v4 = v8;
    rewardTokens = self->_rewardTokens;
  }

  [(NSMutableArray *)rewardTokens addObject:v4];
}

- (void)setHasRewardTokensExpiration:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)addMatchTagClause:(id)a3
{
  v4 = a3;
  matchTagClauses = self->_matchTagClauses;
  v8 = v4;
  if (!matchTagClauses)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_matchTagClauses;
    self->_matchTagClauses = v6;

    v4 = v8;
    matchTagClauses = self->_matchTagClauses;
  }

  [(NSMutableArray *)matchTagClauses addObject:v4];
}

- (void)setHasSkipThreshold:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasPriority:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)addGeofences:(id)a3
{
  v4 = a3;
  geofences = self->_geofences;
  v8 = v4;
  if (!geofences)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_geofences;
    self->_geofences = v6;

    v4 = v8;
    geofences = self->_geofences;
  }

  [(NSMutableArray *)geofences addObject:v4];
}

- (void)addCreativeSizes:(id)a3
{
  v4 = a3;
  creativeSizes = self->_creativeSizes;
  v8 = v4;
  if (!creativeSizes)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_creativeSizes;
    self->_creativeSizes = v6;

    v4 = v8;
    creativeSizes = self->_creativeSizes;
  }

  [(NSMutableArray *)creativeSizes addObject:v4];
}

- (void)setHasLetterboxCreativeColor:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasMinimumIntervalBetweenPresentations:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasDoesNotResetListeningTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)addNativeMetadata:(id)a3
{
  v4 = a3;
  nativeMetadatas = self->_nativeMetadatas;
  v8 = v4;
  if (!nativeMetadatas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_nativeMetadatas;
    self->_nativeMetadatas = v6;

    v4 = v8;
    nativeMetadatas = self->_nativeMetadatas;
  }

  [(NSMutableArray *)nativeMetadatas addObject:v4];
}

- (int)desiredPosition
{
  if ((*(&self->_has + 1) & 4) != 0)
  {
    return self->_desiredPosition;
  }

  else
  {
    return 1101;
  }
}

- (void)setHasDesiredPosition:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (id)desiredPositionAsString:(int)a3
{
  if (a3 == 1101)
  {
    v4 = @"ResellerNative";
  }

  else if (a3 == 1102)
  {
    v4 = @"PublisherNative";
  }

  else
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  return v4;
}

- (int)StringAsDesiredPosition:(id)a3
{
  v3 = a3;
  v4 = 1101;
  if (([v3 isEqualToString:@"ResellerNative"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"PublisherNative"])
    {
      v4 = 1102;
    }

    else
    {
      v4 = 1101;
    }
  }

  return v4;
}

- (void)addActions:(id)a3
{
  v4 = a3;
  actions = self->_actions;
  v8 = v4;
  if (!actions)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_actions;
    self->_actions = v6;

    v4 = v8;
    actions = self->_actions;
  }

  [(NSMutableArray *)actions addObject:v4];
}

- (void)addITunesMetadata:(id)a3
{
  v4 = a3;
  iTunesMetadatas = self->_iTunesMetadatas;
  v8 = v4;
  if (!iTunesMetadatas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_iTunesMetadatas;
    self->_iTunesMetadatas = v6;

    v4 = v8;
    iTunesMetadatas = self->_iTunesMetadatas;
  }

  [(NSMutableArray *)iTunesMetadatas addObject:v4];
}

- (void)setHasMaximumPretapRequestCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (int)adPrivacyMarkPosition
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_adPrivacyMarkPosition;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAdPrivacyMarkPosition:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (id)adPrivacyMarkPositionAsString:(int)a3
{
  if (a3 >= 5)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047E078 + a3);
  }

  return v4;
}

- (int)StringAsAdPrivacyMarkPosition:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BottomRight"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"TopRight"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TopLeft"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BottomLeft"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NoAdPrivacyMark"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)unfilledReasonCode
{
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    return self->_unfilledReasonCode;
  }

  else
  {
    return 201;
  }
}

- (void)setHasUnfilledReasonCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (id)unfilledReasonCodeAsString:(int)a3
{
  if ((a3 - 201) >= 5)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047E0A0 + (a3 - 201));
  }

  return v4;
}

- (int)StringAsUnfilledReasonCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"InventoryUnavailable"])
  {
    v4 = 201;
  }

  else if ([v3 isEqualToString:@"GlobalExclusion"])
  {
    v4 = 202;
  }

  else if ([v3 isEqualToString:@"PolicyExclusion"])
  {
    v4 = 203;
  }

  else if ([v3 isEqualToString:@"LimitExceeded"])
  {
    v4 = 204;
  }

  else if ([v3 isEqualToString:@"AdsDisabledInIssue"])
  {
    v4 = 205;
  }

  else
  {
    v4 = 201;
  }

  return v4;
}

- (void)addJourneyStartRelayValues:(id)a3
{
  v4 = a3;
  journeyStartRelayValues = self->_journeyStartRelayValues;
  v8 = v4;
  if (!journeyStartRelayValues)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_journeyStartRelayValues;
    self->_journeyStartRelayValues = v6;

    v4 = v8;
    journeyStartRelayValues = self->_journeyStartRelayValues;
  }

  [(NSMutableArray *)journeyStartRelayValues addObject:v4];
}

- (void)addAdLayoutData:(id)a3
{
  v4 = a3;
  adLayoutDatas = self->_adLayoutDatas;
  v8 = v4;
  if (!adLayoutDatas)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_adLayoutDatas;
    self->_adLayoutDatas = v6;

    v4 = v8;
    adLayoutDatas = self->_adLayoutDatas;
  }

  [(NSMutableArray *)adLayoutDatas addObject:v4];
}

- (void)setHasStartDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (int)adPrivacyMarkerType
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_adPrivacyMarkerType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAdPrivacyMarkerType:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (id)adPrivacyMarkerTypeAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"Large";
    }

    else
    {
      v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"Standard";
  }

  return v4;
}

- (int)StringAsAdPrivacyMarkerType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Standard"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Large"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdData;
  v3 = [(APPBAdData *)&v7 description];
  v4 = [(APPBAdData *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  bannerURL = self->_bannerURL;
  if (bannerURL)
  {
    [v3 setObject:bannerURL forKey:@"bannerURL"];
  }

  bannerWebArchiveURL = self->_bannerWebArchiveURL;
  if (bannerWebArchiveURL)
  {
    [v4 setObject:bannerWebArchiveURL forKey:@"bannerWebArchiveURL"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [v4 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  impressionIdentifierData = self->_impressionIdentifierData;
  if (impressionIdentifierData)
  {
    [v4 setObject:impressionIdentifierData forKey:@"impressionIdentifierData"];
  }

  humanReadableName = self->_humanReadableName;
  if (humanReadableName)
  {
    [v4 setObject:humanReadableName forKey:@"humanReadableName"];
  }

  v10 = [NSNumber numberWithInt:self->_impressionCount];
  [v4 setObject:v10 forKey:@"impressionCount"];

  if (*&self->_has)
  {
    v11 = [NSNumber numberWithDouble:self->_expirationDate];
    [v4 setObject:v11 forKey:@"expirationDate"];
  }

  trackingURLs = self->_trackingURLs;
  if (trackingURLs)
  {
    [v4 setObject:trackingURLs forKey:@"trackingURL"];
  }

  trackingURLSubstitutionParameter = self->_trackingURLSubstitutionParameter;
  if (trackingURLSubstitutionParameter)
  {
    [v4 setObject:trackingURLSubstitutionParameter forKey:@"trackingURLSubstitutionParameter"];
  }

  if (*(&self->_has + 2))
  {
    v14 = [NSNumber numberWithBool:self->_unbranded];
    [v4 setObject:v14 forKey:@"unbranded"];
  }

  accessibilityDescription = self->_accessibilityDescription;
  if (accessibilityDescription)
  {
    [v4 setObject:accessibilityDescription forKey:@"accessibilityDescription"];
  }

  confirmedClickPixelURLs = self->_confirmedClickPixelURLs;
  if (confirmedClickPixelURLs)
  {
    [v4 setObject:confirmedClickPixelURLs forKey:@"confirmedClickPixelURLs"];
  }

  bannerQueryString = self->_bannerQueryString;
  if (bannerQueryString)
  {
    [v4 setObject:bannerQueryString forKey:@"bannerQueryString"];
  }

  if ([(NSMutableArray *)self->_videoAssets count])
  {
    v19 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_videoAssets, "count")}];
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v20 = self->_videoAssets;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v177 objects:v189 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v178;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v178 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v177 + 1) + 8 * i) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v177 objects:v189 count:16];
      }

      while (v22);
    }

    [v4 setObject:v19 forKey:@"videoAsset"];
  }

  mediaFiles = self->_mediaFiles;
  if (mediaFiles)
  {
    v27 = [(APPBMediaFiles *)mediaFiles dictionaryRepresentation];
    [v4 setObject:v27 forKey:@"mediaFiles"];
  }

  audioURL = self->_audioURL;
  if (audioURL)
  {
    [v4 setObject:audioURL forKey:@"audioURL"];
  }

  slateImageURL = self->_slateImageURL;
  if (slateImageURL)
  {
    [v4 setObject:slateImageURL forKey:@"slateImageURL"];
  }

  aTVTunerImageURL = self->_aTVTunerImageURL;
  if (aTVTunerImageURL)
  {
    [v4 setObject:aTVTunerImageURL forKey:@"ATVTunerImageURL"];
  }

  has = self->_has;
  if ((*&has & 0x8000) != 0)
  {
    v86 = [NSNumber numberWithBool:self->_downloadWebArchivesBeforeShowingBanner];
    [v4 setObject:v86 forKey:@"downloadWebArchivesBeforeShowingBanner"];

    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_44:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_44;
  }

  *&v18 = self->_bannerImpressionThreshold;
  v87 = [NSNumber numberWithFloat:v18];
  [v4 setObject:v87 forKey:@"bannerImpressionThreshold"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_45:
    *&v18 = self->_bannerNewContentCandidacyThreshold;
    v32 = [NSNumber numberWithFloat:v18];
    [v4 setObject:v32 forKey:@"bannerNewContentCandidacyThreshold"];
  }

LABEL_46:
  screenSaverImageURLs = self->_screenSaverImageURLs;
  if (screenSaverImageURLs)
  {
    [v4 setObject:screenSaverImageURLs forKey:@"screenSaverImageURL"];
  }

  excludeTags = self->_excludeTags;
  if (excludeTags)
  {
    [v4 setObject:excludeTags forKey:@"excludeTag"];
  }

  iAdJSVersion = self->_iAdJSVersion;
  if (iAdJSVersion)
  {
    [v4 setObject:iAdJSVersion forKey:@"iAdJSVersion"];
  }

  iAdJSURL = self->_iAdJSURL;
  if (iAdJSURL)
  {
    [v4 setObject:iAdJSURL forKey:@"iAdJSURL"];
  }

  rewardTokens = self->_rewardTokens;
  if (rewardTokens)
  {
    [v4 setObject:rewardTokens forKey:@"rewardTokens"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v38 = [NSNumber numberWithDouble:self->_rewardTokensExpiration];
    [v4 setObject:v38 forKey:@"rewardTokensExpiration"];
  }

  if ([(NSMutableArray *)self->_matchTagClauses count])
  {
    v39 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_matchTagClauses, "count")}];
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v40 = self->_matchTagClauses;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v173 objects:v188 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v174;
      do
      {
        for (j = 0; j != v42; j = j + 1)
        {
          if (*v174 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [*(*(&v173 + 1) + 8 * j) dictionaryRepresentation];
          [v39 addObject:v45];
        }

        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v173 objects:v188 count:16];
      }

      while (v42);
    }

    [v4 setObject:v39 forKey:@"matchTagClause"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v46 = [NSNumber numberWithDouble:self->_skipThreshold];
    [v4 setObject:v46 forKey:@"skipThreshold"];
  }

  logoImageURL = self->_logoImageURL;
  if (logoImageURL)
  {
    [v4 setObject:logoImageURL forKey:@"logoImageURL"];
  }

  headlineForLCD = self->_headlineForLCD;
  if (headlineForLCD)
  {
    [v4 setObject:headlineForLCD forKey:@"headlineForLCD"];
  }

  descriptionForLCD = self->_descriptionForLCD;
  if (descriptionForLCD)
  {
    [v4 setObject:descriptionForLCD forKey:@"descriptionForLCD"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v50 = [NSNumber numberWithUnsignedLongLong:self->_priority];
    [v4 setObject:v50 forKey:@"priority"];
  }

  if ([(NSMutableArray *)self->_geofences count])
  {
    v51 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_geofences, "count")}];
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v52 = self->_geofences;
    v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v169 objects:v187 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v170;
      do
      {
        for (k = 0; k != v54; k = k + 1)
        {
          if (*v170 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = [*(*(&v169 + 1) + 8 * k) dictionaryRepresentation];
          [v51 addObject:v57];
        }

        v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v169 objects:v187 count:16];
      }

      while (v54);
    }

    [v4 setObject:v51 forKey:@"geofences"];
  }

  targetAppBundleID = self->_targetAppBundleID;
  if (targetAppBundleID)
  {
    [v4 setObject:targetAppBundleID forKey:@"targetAppBundleID"];
  }

  targetAppURLScheme = self->_targetAppURLScheme;
  if (targetAppURLScheme)
  {
    [v4 setObject:targetAppURLScheme forKey:@"targetAppURLScheme"];
  }

  if ([(NSMutableArray *)self->_creativeSizes count])
  {
    v60 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_creativeSizes, "count")}];
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v61 = self->_creativeSizes;
    v62 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v165 objects:v186 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v166;
      do
      {
        for (m = 0; m != v63; m = m + 1)
        {
          if (*v166 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = [*(*(&v165 + 1) + 8 * m) dictionaryRepresentation];
          [v60 addObject:v66];
        }

        v63 = [(NSMutableArray *)v61 countByEnumeratingWithState:&v165 objects:v186 count:16];
      }

      while (v63);
    }

    [v4 setObject:v60 forKey:@"creativeSizes"];
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    v67 = [NSNumber numberWithUnsignedInt:self->_letterboxCreativeColor];
    [v4 setObject:v67 forKey:@"letterboxCreativeColor"];
  }

  installAttribution = self->_installAttribution;
  if (installAttribution)
  {
    v69 = [(APPBInstallAttribution *)installAttribution dictionaryRepresentation];
    [v4 setObject:v69 forKey:@"installAttribution"];
  }

  specification = self->_specification;
  if (specification)
  {
    v71 = [(APPBAdSpecification *)specification dictionaryRepresentation];
    [v4 setObject:v71 forKey:@"specification"];
  }

  v72 = self->_has;
  if ((*&v72 & 2) != 0)
  {
    v73 = [NSNumber numberWithDouble:self->_minimumIntervalBetweenPresentations];
    [v4 setObject:v73 forKey:@"minimumIntervalBetweenPresentations"];

    v72 = self->_has;
  }

  if ((*&v72 & 0x4000) != 0)
  {
    v74 = [NSNumber numberWithBool:self->_doesNotResetListeningTime];
    [v4 setObject:v74 forKey:@"doesNotResetListeningTime"];
  }

  merchant = self->_merchant;
  if (merchant)
  {
    v76 = [(APPBMerchant *)merchant dictionaryRepresentation];
    [v4 setObject:v76 forKey:@"merchant"];
  }

  if ([(NSMutableArray *)self->_nativeMetadatas count])
  {
    v77 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_nativeMetadatas, "count")}];
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v78 = self->_nativeMetadatas;
    v79 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v161 objects:v185 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v162;
      do
      {
        for (n = 0; n != v80; n = n + 1)
        {
          if (*v162 != v81)
          {
            objc_enumerationMutation(v78);
          }

          v83 = [*(*(&v161 + 1) + 8 * n) dictionaryRepresentation];
          [v77 addObject:v83];
        }

        v80 = [(NSMutableArray *)v78 countByEnumeratingWithState:&v161 objects:v185 count:16];
      }

      while (v80);
    }

    [v4 setObject:v77 forKey:@"nativeMetadata"];
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    desiredPosition = self->_desiredPosition;
    if (desiredPosition == 1101)
    {
      v85 = @"ResellerNative";
    }

    else if (desiredPosition == 1102)
    {
      v85 = @"PublisherNative";
    }

    else
    {
      v85 = [NSString stringWithFormat:@"(unknown: %i)", self->_desiredPosition];
    }

    [v4 setObject:v85 forKey:@"desiredPosition"];
  }

  if ([(NSMutableArray *)self->_actions count])
  {
    v88 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_actions, "count")}];
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v89 = self->_actions;
    v90 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v157 objects:v184 count:16];
    if (v90)
    {
      v91 = v90;
      v92 = *v158;
      do
      {
        for (ii = 0; ii != v91; ii = ii + 1)
        {
          if (*v158 != v92)
          {
            objc_enumerationMutation(v89);
          }

          v94 = [*(*(&v157 + 1) + 8 * ii) dictionaryRepresentation];
          [v88 addObject:v94];
        }

        v91 = [(NSMutableArray *)v89 countByEnumeratingWithState:&v157 objects:v184 count:16];
      }

      while (v91);
    }

    [v4 setObject:v88 forKey:@"actions"];
  }

  if ([(NSMutableArray *)self->_iTunesMetadatas count])
  {
    v95 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_iTunesMetadatas, "count")}];
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v96 = self->_iTunesMetadatas;
    v97 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v153 objects:v183 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = *v154;
      do
      {
        for (jj = 0; jj != v98; jj = jj + 1)
        {
          if (*v154 != v99)
          {
            objc_enumerationMutation(v96);
          }

          v101 = [*(*(&v153 + 1) + 8 * jj) dictionaryRepresentation];
          [v95 addObject:v101];
        }

        v98 = [(NSMutableArray *)v96 countByEnumeratingWithState:&v153 objects:v183 count:16];
      }

      while (v98);
    }

    [v4 setObject:v95 forKey:@"iTunesMetadata"];
  }

  transparencyDetails = self->_transparencyDetails;
  if (transparencyDetails)
  {
    v103 = [(APPBTransparencyDetails *)transparencyDetails dictionaryRepresentation];
    [v4 setObject:v103 forKey:@"transparencyDetails"];
  }

  nativeMediaCreativeMetadata = self->_nativeMediaCreativeMetadata;
  if (nativeMediaCreativeMetadata)
  {
    v105 = [(APPBNativeMediaCreativeMetadata *)nativeMediaCreativeMetadata dictionaryRepresentation];
    [v4 setObject:v105 forKey:@"nativeMediaCreativeMetadata"];
  }

  adTagContentString = self->_adTagContentString;
  if (adTagContentString)
  {
    [v4 setObject:adTagContentString forKey:@"adTagContentString"];
  }

  v107 = self->_has;
  if ((*&v107 & 0x1000) != 0)
  {
    v108 = [NSNumber numberWithInt:self->_maximumPretapRequestCount];
    [v4 setObject:v108 forKey:@"maximumPretapRequestCount"];

    v107 = self->_has;
  }

  if ((*&v107 & 0x40) != 0)
  {
    adPrivacyMarkPosition = self->_adPrivacyMarkPosition;
    if (adPrivacyMarkPosition >= 5)
    {
      v110 = [NSString stringWithFormat:@"(unknown: %i)", self->_adPrivacyMarkPosition];
    }

    else
    {
      v110 = *(&off_10047E078 + adPrivacyMarkPosition);
    }

    [v4 setObject:v110 forKey:@"adPrivacyMarkPosition"];
  }

  adDataResponseIdentifier = self->_adDataResponseIdentifier;
  if (adDataResponseIdentifier)
  {
    [v4 setObject:adDataResponseIdentifier forKey:@"adDataResponseIdentifier"];
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v112 = self->_unfilledReasonCode - 201;
    if (v112 >= 5)
    {
      v113 = [NSString stringWithFormat:@"(unknown: %i)", self->_unfilledReasonCode];
    }

    else
    {
      v113 = *(&off_10047E0A0 + v112);
    }

    [v4 setObject:v113 forKey:@"unfilledReasonCode"];
  }

  unfilledReasonInfo = self->_unfilledReasonInfo;
  if (unfilledReasonInfo)
  {
    [v4 setObject:unfilledReasonInfo forKey:@"unfilledReasonInfo"];
  }

  adOriginalRequesterId = self->_adOriginalRequesterId;
  if (adOriginalRequesterId)
  {
    [v4 setObject:adOriginalRequesterId forKey:@"adOriginalRequesterId"];
  }

  expressionToEvaluate = self->_expressionToEvaluate;
  if (expressionToEvaluate)
  {
    [v4 setObject:expressionToEvaluate forKey:@"expressionToEvaluate"];
  }

  if ([(NSMutableArray *)self->_journeyStartRelayValues count])
  {
    v117 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_journeyStartRelayValues, "count")}];
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v118 = self->_journeyStartRelayValues;
    v119 = [(NSMutableArray *)v118 countByEnumeratingWithState:&v149 objects:v182 count:16];
    if (v119)
    {
      v120 = v119;
      v121 = *v150;
      do
      {
        for (kk = 0; kk != v120; kk = kk + 1)
        {
          if (*v150 != v121)
          {
            objc_enumerationMutation(v118);
          }

          v123 = [*(*(&v149 + 1) + 8 * kk) dictionaryRepresentation];
          [v117 addObject:v123];
        }

        v120 = [(NSMutableArray *)v118 countByEnumeratingWithState:&v149 objects:v182 count:16];
      }

      while (v120);
    }

    [v4 setObject:v117 forKey:@"journeyStartRelayValues"];
  }

  if ([(NSMutableArray *)self->_adLayoutDatas count])
  {
    v124 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_adLayoutDatas, "count")}];
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v125 = self->_adLayoutDatas;
    v126 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v145 objects:v181 count:16];
    if (v126)
    {
      v127 = v126;
      v128 = *v146;
      do
      {
        for (mm = 0; mm != v127; mm = mm + 1)
        {
          if (*v146 != v128)
          {
            objc_enumerationMutation(v125);
          }

          v130 = [*(*(&v145 + 1) + 8 * mm) dictionaryRepresentation];
          [v124 addObject:v130];
        }

        v127 = [(NSMutableArray *)v125 countByEnumeratingWithState:&v145 objects:v181 count:16];
      }

      while (v127);
    }

    [v4 setObject:v124 forKey:@"adLayoutData"];
  }

  adType = self->_adType;
  if (adType)
  {
    [v4 setObject:adType forKey:@"AdType"];
  }

  adFormatType = self->_adFormatType;
  if (adFormatType)
  {
    [v4 setObject:adFormatType forKey:@"AdFormatType"];
  }

  adFrequencyCapData = self->_adFrequencyCapData;
  if (adFrequencyCapData)
  {
    v134 = [(APPBAdFrequencyCapData *)adFrequencyCapData dictionaryRepresentation];
    [v4 setObject:v134 forKey:@"adFrequencyCapData"];
  }

  policyData = self->_policyData;
  if (policyData)
  {
    v136 = [(APPBPolicyData *)policyData dictionaryRepresentation];
    [v4 setObject:v136 forKey:@"policyData"];
  }

  targetingDimensions = self->_targetingDimensions;
  if (targetingDimensions)
  {
    v138 = [(APPBTargetingDimensions *)targetingDimensions dictionaryRepresentation];
    [v4 setObject:v138 forKey:@"targetingDimensions"];
  }

  v139 = self->_has;
  if ((*&v139 & 0x20) != 0)
  {
    v140 = [NSNumber numberWithDouble:self->_startDate];
    [v4 setObject:v140 forKey:@"startDate"];

    v139 = self->_has;
  }

  if ((*&v139 & 0x80) != 0)
  {
    adPrivacyMarkerType = self->_adPrivacyMarkerType;
    if (adPrivacyMarkerType)
    {
      if (adPrivacyMarkerType == 1)
      {
        v142 = @"Large";
      }

      else
      {
        v142 = [NSString stringWithFormat:@"(unknown: %i)", self->_adPrivacyMarkerType];
      }
    }

    else
    {
      v142 = @"Standard";
    }

    [v4 setObject:v142 forKey:@"adPrivacyMarkerType"];
  }

  v143 = v4;

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_bannerURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bannerWebArchiveURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_impressionIdentifierData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_humanReadableName)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v5 = self->_trackingURLs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v131 objects:v148 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v132;
    do
    {
      v9 = 0;
      do
      {
        if (*v132 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v131 objects:v148 count:16];
    }

    while (v7);
  }

  if (self->_trackingURLSubstitutionParameter)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_has + 2))
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_accessibilityDescription)
  {
    PBDataWriterWriteStringField();
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v10 = self->_confirmedClickPixelURLs;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v127 objects:v147 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v128;
    do
    {
      v14 = 0;
      do
      {
        if (*v128 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v127 objects:v147 count:16];
    }

    while (v12);
  }

  if (self->_bannerQueryString)
  {
    PBDataWriterWriteStringField();
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v15 = self->_videoAssets;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v123 objects:v146 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v124;
    do
    {
      v19 = 0;
      do
      {
        if (*v124 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v123 objects:v146 count:16];
    }

    while (v17);
  }

  if (self->_mediaFiles)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_audioURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_slateImageURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_aTVTunerImageURL)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((*&has & 0x8000) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_52:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_52;
  }

  PBDataWriterWriteFloatField();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_53:
    PBDataWriterWriteFloatField();
  }

LABEL_54:
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v21 = self->_screenSaverImageURLs;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v119 objects:v145 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v120;
    do
    {
      v25 = 0;
      do
      {
        if (*v120 != v24)
        {
          objc_enumerationMutation(v21);
        }

        PBDataWriterWriteStringField();
        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v119 objects:v145 count:16];
    }

    while (v23);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v26 = self->_excludeTags;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v115 objects:v144 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v116;
    do
    {
      v30 = 0;
      do
      {
        if (*v116 != v29)
        {
          objc_enumerationMutation(v26);
        }

        PBDataWriterWriteStringField();
        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v115 objects:v144 count:16];
    }

    while (v28);
  }

  if (self->_iAdJSVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_iAdJSURL)
  {
    PBDataWriterWriteStringField();
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v31 = self->_rewardTokens;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v111 objects:v143 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v112;
    do
    {
      v35 = 0;
      do
      {
        if (*v112 != v34)
        {
          objc_enumerationMutation(v31);
        }

        PBDataWriterWriteStringField();
        ++v35;
      }

      while (v33 != v35);
      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v111 objects:v143 count:16];
    }

    while (v33);
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v36 = self->_matchTagClauses;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v107 objects:v142 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v108;
    do
    {
      v40 = 0;
      do
      {
        if (*v108 != v39)
        {
          objc_enumerationMutation(v36);
        }

        PBDataWriterWriteSubmessage();
        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v107 objects:v142 count:16];
    }

    while (v38);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_logoImageURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_headlineForLCD)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_descriptionForLCD)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteFixed64Field();
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v41 = self->_geofences;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v103 objects:v141 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v104;
    do
    {
      v45 = 0;
      do
      {
        if (*v104 != v44)
        {
          objc_enumerationMutation(v41);
        }

        PBDataWriterWriteSubmessage();
        ++v45;
      }

      while (v43 != v45);
      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v103 objects:v141 count:16];
    }

    while (v43);
  }

  if (self->_targetAppBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_targetAppURLScheme)
  {
    PBDataWriterWriteStringField();
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v46 = self->_creativeSizes;
  v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v99 objects:v140 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v100;
    do
    {
      v50 = 0;
      do
      {
        if (*v100 != v49)
        {
          objc_enumerationMutation(v46);
        }

        PBDataWriterWriteSubmessage();
        ++v50;
      }

      while (v48 != v50);
      v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v99 objects:v140 count:16];
    }

    while (v48);
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    PBDataWriterWriteFixed32Field();
  }

  if (self->_installAttribution)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_specification)
  {
    PBDataWriterWriteSubmessage();
  }

  v51 = self->_has;
  if ((*&v51 & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v51 = self->_has;
  }

  if ((*&v51 & 0x4000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_merchant)
  {
    PBDataWriterWriteSubmessage();
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v52 = self->_nativeMetadatas;
  v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v95 objects:v139 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v96;
    do
    {
      v56 = 0;
      do
      {
        if (*v96 != v55)
        {
          objc_enumerationMutation(v52);
        }

        PBDataWriterWriteSubmessage();
        ++v56;
      }

      while (v54 != v56);
      v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v95 objects:v139 count:16];
    }

    while (v54);
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v57 = self->_actions;
  v58 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v91 objects:v138 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v92;
    do
    {
      v61 = 0;
      do
      {
        if (*v92 != v60)
        {
          objc_enumerationMutation(v57);
        }

        PBDataWriterWriteSubmessage();
        ++v61;
      }

      while (v59 != v61);
      v59 = [(NSMutableArray *)v57 countByEnumeratingWithState:&v91 objects:v138 count:16];
    }

    while (v59);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v62 = self->_iTunesMetadatas;
  v63 = [(NSMutableArray *)v62 countByEnumeratingWithState:&v87 objects:v137 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v88;
    do
    {
      v66 = 0;
      do
      {
        if (*v88 != v65)
        {
          objc_enumerationMutation(v62);
        }

        PBDataWriterWriteSubmessage();
        ++v66;
      }

      while (v64 != v66);
      v64 = [(NSMutableArray *)v62 countByEnumeratingWithState:&v87 objects:v137 count:16];
    }

    while (v64);
  }

  if (self->_transparencyDetails)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_nativeMediaCreativeMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_adTagContentString)
  {
    PBDataWriterWriteStringField();
  }

  v67 = self->_has;
  if ((*&v67 & 0x1000) != 0)
  {
    PBDataWriterWriteInt32Field();
    v67 = self->_has;
  }

  if ((*&v67 & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_adDataResponseIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_unfilledReasonInfo)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_adOriginalRequesterId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_expressionToEvaluate)
  {
    PBDataWriterWriteStringField();
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v68 = self->_journeyStartRelayValues;
  v69 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v83 objects:v136 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v84;
    do
    {
      v72 = 0;
      do
      {
        if (*v84 != v71)
        {
          objc_enumerationMutation(v68);
        }

        PBDataWriterWriteSubmessage();
        ++v72;
      }

      while (v70 != v72);
      v70 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v83 objects:v136 count:16];
    }

    while (v70);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v73 = self->_adLayoutDatas;
  v74 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v79 objects:v135 count:16];
  if (v74)
  {
    v75 = v74;
    v76 = *v80;
    do
    {
      v77 = 0;
      do
      {
        if (*v80 != v76)
        {
          objc_enumerationMutation(v73);
        }

        PBDataWriterWriteSubmessage();
        ++v77;
      }

      while (v75 != v77);
      v75 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v79 objects:v135 count:16];
    }

    while (v75);
  }

  if (self->_adType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_adFormatType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_adFrequencyCapData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_policyData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_targetingDimensions)
  {
    PBDataWriterWriteSubmessage();
  }

  v78 = self->_has;
  if ((*&v78 & 0x20) != 0)
  {
    PBDataWriterWriteDoubleField();
    v78 = self->_has;
  }

  if ((*&v78 & 0x80) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v70 = v4;
  if (self->_bannerURL)
  {
    [v4 setBannerURL:?];
    v4 = v70;
  }

  if (self->_bannerWebArchiveURL)
  {
    [v70 setBannerWebArchiveURL:?];
    v4 = v70;
  }

  if (self->_uniqueIdentifier)
  {
    [v70 setUniqueIdentifier:?];
    v4 = v70;
  }

  if (self->_impressionIdentifierData)
  {
    [v70 setImpressionIdentifierData:?];
    v4 = v70;
  }

  if (self->_humanReadableName)
  {
    [v70 setHumanReadableName:?];
    v4 = v70;
  }

  *(v4 + 70) = self->_impressionCount;
  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_expirationDate;
    *(v4 + 125) |= 1u;
  }

  if ([(APPBAdData *)self trackingURLsCount])
  {
    [v70 clearTrackingURLs];
    v5 = [(APPBAdData *)self trackingURLsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(APPBAdData *)self trackingURLAtIndex:i];
        [v70 addTrackingURL:v8];
      }
    }
  }

  if (self->_trackingURLSubstitutionParameter)
  {
    [v70 setTrackingURLSubstitutionParameter:?];
  }

  if (*(&self->_has + 2))
  {
    *(v70 + 498) = self->_unbranded;
    *(v70 + 125) |= 0x10000u;
  }

  if (self->_accessibilityDescription)
  {
    [v70 setAccessibilityDescription:?];
  }

  if ([(APPBAdData *)self confirmedClickPixelURLsCount])
  {
    [v70 clearConfirmedClickPixelURLs];
    v9 = [(APPBAdData *)self confirmedClickPixelURLsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(APPBAdData *)self confirmedClickPixelURLsAtIndex:j];
        [v70 addConfirmedClickPixelURLs:v12];
      }
    }
  }

  if (self->_bannerQueryString)
  {
    [v70 setBannerQueryString:?];
  }

  if ([(APPBAdData *)self videoAssetsCount])
  {
    [v70 clearVideoAssets];
    v13 = [(APPBAdData *)self videoAssetsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(APPBAdData *)self videoAssetAtIndex:k];
        [v70 addVideoAsset:v16];
      }
    }
  }

  if (self->_mediaFiles)
  {
    [v70 setMediaFiles:?];
  }

  v17 = v70;
  if (self->_audioURL)
  {
    [v70 setAudioURL:?];
    v17 = v70;
  }

  if (self->_slateImageURL)
  {
    [v70 setSlateImageURL:?];
    v17 = v70;
  }

  if (self->_aTVTunerImageURL)
  {
    [v70 setATVTunerImageURL:?];
    v17 = v70;
  }

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_43;
    }

LABEL_161:
    v17[38] = LODWORD(self->_bannerImpressionThreshold);
    v17[125] |= 0x100u;
    if ((*&self->_has & 0x200) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  *(v17 + 497) = self->_downloadWebArchivesBeforeShowingBanner;
  v17[125] |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    goto LABEL_161;
  }

LABEL_43:
  if ((*&has & 0x200) != 0)
  {
LABEL_44:
    v17[39] = LODWORD(self->_bannerNewContentCandidacyThreshold);
    v17[125] |= 0x200u;
  }

LABEL_45:
  if ([(APPBAdData *)self screenSaverImageURLsCount])
  {
    [v70 clearScreenSaverImageURLs];
    v19 = [(APPBAdData *)self screenSaverImageURLsCount];
    if (v19)
    {
      v20 = v19;
      for (m = 0; m != v20; ++m)
      {
        v22 = [(APPBAdData *)self screenSaverImageURLAtIndex:m];
        [v70 addScreenSaverImageURL:v22];
      }
    }
  }

  if ([(APPBAdData *)self excludeTagsCount])
  {
    [v70 clearExcludeTags];
    v23 = [(APPBAdData *)self excludeTagsCount];
    if (v23)
    {
      v24 = v23;
      for (n = 0; n != v24; ++n)
      {
        v26 = [(APPBAdData *)self excludeTagAtIndex:n];
        [v70 addExcludeTag:v26];
      }
    }
  }

  if (self->_iAdJSVersion)
  {
    [v70 setIAdJSVersion:?];
  }

  if (self->_iAdJSURL)
  {
    [v70 setIAdJSURL:?];
  }

  if ([(APPBAdData *)self rewardTokensCount])
  {
    [v70 clearRewardTokens];
    v27 = [(APPBAdData *)self rewardTokensCount];
    if (v27)
    {
      v28 = v27;
      for (ii = 0; ii != v28; ++ii)
      {
        v30 = [(APPBAdData *)self rewardTokensAtIndex:ii];
        [v70 addRewardTokens:v30];
      }
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v70 + 4) = *&self->_rewardTokensExpiration;
    *(v70 + 125) |= 8u;
  }

  if ([(APPBAdData *)self matchTagClausesCount])
  {
    [v70 clearMatchTagClauses];
    v31 = [(APPBAdData *)self matchTagClausesCount];
    if (v31)
    {
      v32 = v31;
      for (jj = 0; jj != v32; ++jj)
      {
        v34 = [(APPBAdData *)self matchTagClauseAtIndex:jj];
        [v70 addMatchTagClause:v34];
      }
    }
  }

  v35 = v70;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v70 + 5) = *&self->_skipThreshold;
    *(v70 + 125) |= 0x10u;
  }

  if (self->_logoImageURL)
  {
    [v70 setLogoImageURL:?];
    v35 = v70;
  }

  if (self->_headlineForLCD)
  {
    [v70 setHeadlineForLCD:?];
    v35 = v70;
  }

  if (self->_descriptionForLCD)
  {
    [v70 setDescriptionForLCD:?];
    v35 = v70;
  }

  if ((*&self->_has & 4) != 0)
  {
    v35[3] = self->_priority;
    *(v35 + 125) |= 4u;
  }

  if ([(APPBAdData *)self geofencesCount])
  {
    [v70 clearGeofences];
    v36 = [(APPBAdData *)self geofencesCount];
    if (v36)
    {
      v37 = v36;
      for (kk = 0; kk != v37; ++kk)
      {
        v39 = [(APPBAdData *)self geofencesAtIndex:kk];
        [v70 addGeofences:v39];
      }
    }
  }

  if (self->_targetAppBundleID)
  {
    [v70 setTargetAppBundleID:?];
  }

  if (self->_targetAppURLScheme)
  {
    [v70 setTargetAppURLScheme:?];
  }

  if ([(APPBAdData *)self creativeSizesCount])
  {
    [v70 clearCreativeSizes];
    v40 = [(APPBAdData *)self creativeSizesCount];
    if (v40)
    {
      v41 = v40;
      for (mm = 0; mm != v41; ++mm)
      {
        v43 = [(APPBAdData *)self creativeSizesAtIndex:mm];
        [v70 addCreativeSizes:v43];
      }
    }
  }

  v44 = v70;
  if ((*(&self->_has + 1) & 8) != 0)
  {
    *(v70 + 78) = self->_letterboxCreativeColor;
    *(v70 + 125) |= 0x800u;
  }

  if (self->_installAttribution)
  {
    [v70 setInstallAttribution:?];
    v44 = v70;
  }

  if (self->_specification)
  {
    [v70 setSpecification:?];
    v44 = v70;
  }

  v45 = self->_has;
  if ((*&v45 & 2) != 0)
  {
    v44[2] = *&self->_minimumIntervalBetweenPresentations;
    *(v44 + 125) |= 2u;
    v45 = self->_has;
  }

  if ((*&v45 & 0x4000) != 0)
  {
    *(v44 + 496) = self->_doesNotResetListeningTime;
    *(v44 + 125) |= 0x4000u;
  }

  if (self->_merchant)
  {
    [v70 setMerchant:?];
  }

  if ([(APPBAdData *)self nativeMetadatasCount])
  {
    [v70 clearNativeMetadatas];
    v46 = [(APPBAdData *)self nativeMetadatasCount];
    if (v46)
    {
      v47 = v46;
      for (nn = 0; nn != v47; ++nn)
      {
        v49 = [(APPBAdData *)self nativeMetadataAtIndex:nn];
        [v70 addNativeMetadata:v49];
      }
    }
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    *(v70 + 52) = self->_desiredPosition;
    *(v70 + 125) |= 0x400u;
  }

  if ([(APPBAdData *)self actionsCount])
  {
    [v70 clearActions];
    v50 = [(APPBAdData *)self actionsCount];
    if (v50)
    {
      v51 = v50;
      for (i1 = 0; i1 != v51; ++i1)
      {
        v53 = [(APPBAdData *)self actionsAtIndex:i1];
        [v70 addActions:v53];
      }
    }
  }

  if ([(APPBAdData *)self iTunesMetadatasCount])
  {
    [v70 clearITunesMetadatas];
    v54 = [(APPBAdData *)self iTunesMetadatasCount];
    if (v54)
    {
      v55 = v54;
      for (i2 = 0; i2 != v55; ++i2)
      {
        v57 = [(APPBAdData *)self iTunesMetadataAtIndex:i2];
        [v70 addITunesMetadata:v57];
      }
    }
  }

  if (self->_transparencyDetails)
  {
    [v70 setTransparencyDetails:?];
  }

  v58 = v70;
  if (self->_nativeMediaCreativeMetadata)
  {
    [v70 setNativeMediaCreativeMetadata:?];
    v58 = v70;
  }

  if (self->_adTagContentString)
  {
    [v70 setAdTagContentString:?];
    v58 = v70;
  }

  v59 = self->_has;
  if ((*&v59 & 0x1000) != 0)
  {
    v58[84] = self->_maximumPretapRequestCount;
    v58[125] |= 0x1000u;
    v59 = self->_has;
  }

  if ((*&v59 & 0x40) != 0)
  {
    v58[30] = self->_adPrivacyMarkPosition;
    v58[125] |= 0x40u;
  }

  if (self->_adDataResponseIdentifier)
  {
    [v70 setAdDataResponseIdentifier:?];
    v58 = v70;
  }

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v58[116] = self->_unfilledReasonCode;
    v58[125] |= 0x2000u;
  }

  if (self->_unfilledReasonInfo)
  {
    [v70 setUnfilledReasonInfo:?];
  }

  if (self->_adOriginalRequesterId)
  {
    [v70 setAdOriginalRequesterId:?];
  }

  if (self->_expressionToEvaluate)
  {
    [v70 setExpressionToEvaluate:?];
  }

  if ([(APPBAdData *)self journeyStartRelayValuesCount])
  {
    [v70 clearJourneyStartRelayValues];
    v60 = [(APPBAdData *)self journeyStartRelayValuesCount];
    if (v60)
    {
      v61 = v60;
      for (i3 = 0; i3 != v61; ++i3)
      {
        v63 = [(APPBAdData *)self journeyStartRelayValuesAtIndex:i3];
        [v70 addJourneyStartRelayValues:v63];
      }
    }
  }

  if ([(APPBAdData *)self adLayoutDatasCount])
  {
    [v70 clearAdLayoutDatas];
    v64 = [(APPBAdData *)self adLayoutDatasCount];
    if (v64)
    {
      v65 = v64;
      for (i4 = 0; i4 != v65; ++i4)
      {
        v67 = [(APPBAdData *)self adLayoutDataAtIndex:i4];
        [v70 addAdLayoutData:v67];
      }
    }
  }

  if (self->_adType)
  {
    [v70 setAdType:?];
  }

  v68 = v70;
  if (self->_adFormatType)
  {
    [v70 setAdFormatType:?];
    v68 = v70;
  }

  if (self->_adFrequencyCapData)
  {
    [v70 setAdFrequencyCapData:?];
    v68 = v70;
  }

  if (self->_policyData)
  {
    [v70 setPolicyData:?];
    v68 = v70;
  }

  if (self->_targetingDimensions)
  {
    [v70 setTargetingDimensions:?];
    v68 = v70;
  }

  v69 = self->_has;
  if ((*&v69 & 0x20) != 0)
  {
    v68[6] = *&self->_startDate;
    *(v68 + 125) |= 0x20u;
    v69 = self->_has;
  }

  if ((*&v69 & 0x80) != 0)
  {
    *(v68 + 31) = self->_adPrivacyMarkerType;
    *(v68 + 125) |= 0x80u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bannerURL copyWithZone:a3];
  v7 = v5[21];
  v5[21] = v6;

  v8 = [(NSString *)self->_bannerWebArchiveURL copyWithZone:a3];
  v9 = v5[22];
  v5[22] = v8;

  v10 = [(NSString *)self->_uniqueIdentifier copyWithZone:a3];
  v11 = v5[60];
  v5[60] = v10;

  v12 = [(NSData *)self->_impressionIdentifierData copyWithZone:a3];
  v13 = v5[36];
  v5[36] = v12;

  v14 = [(NSString *)self->_humanReadableName copyWithZone:a3];
  v15 = v5[31];
  v5[31] = v14;

  *(v5 + 70) = self->_impressionCount;
  if (*&self->_has)
  {
    v5[1] = *&self->_expirationDate;
    *(v5 + 125) |= 1u;
  }

  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v16 = self->_trackingURLs;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v216 objects:v233 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v217;
    do
    {
      v20 = 0;
      do
      {
        if (*v217 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v216 + 1) + 8 * v20) copyWithZone:a3];
        [v5 addTrackingURL:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v216 objects:v233 count:16];
    }

    while (v18);
  }

  v22 = [(NSString *)self->_trackingURLSubstitutionParameter copyWithZone:a3];
  v23 = v5[55];
  v5[55] = v22;

  if (*(&self->_has + 2))
  {
    *(v5 + 498) = self->_unbranded;
    *(v5 + 125) |= 0x10000u;
  }

  v24 = [(NSString *)self->_accessibilityDescription copyWithZone:a3];
  v25 = v5[8];
  v5[8] = v24;

  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v26 = self->_confirmedClickPixelURLs;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v212 objects:v232 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v213;
    do
    {
      v30 = 0;
      do
      {
        if (*v213 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v212 + 1) + 8 * v30) copyWithZone:a3];
        [v5 addConfirmedClickPixelURLs:v31];

        v30 = v30 + 1;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v212 objects:v232 count:16];
    }

    while (v28);
  }

  v32 = [(NSString *)self->_bannerQueryString copyWithZone:a3];
  v33 = v5[20];
  v5[20] = v32;

  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v34 = self->_videoAssets;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v208 objects:v231 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v209;
    do
    {
      v38 = 0;
      do
      {
        if (*v209 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v208 + 1) + 8 * v38) copyWithZone:a3];
        [v5 addVideoAsset:v39];

        v38 = v38 + 1;
      }

      while (v36 != v38);
      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v208 objects:v231 count:16];
    }

    while (v36);
  }

  v40 = [(APPBMediaFiles *)self->_mediaFiles copyWithZone:a3];
  v41 = v5[43];
  v5[43] = v40;

  v42 = [(NSString *)self->_audioURL copyWithZone:a3];
  v43 = v5[18];
  v5[18] = v42;

  v44 = [(NSString *)self->_slateImageURL copyWithZone:a3];
  v45 = v5[50];
  v5[50] = v44;

  v46 = [(NSString *)self->_aTVTunerImageURL copyWithZone:a3];
  v47 = v5[7];
  v5[7] = v46;

  has = self->_has;
  if ((*&has & 0x8000) != 0)
  {
    *(v5 + 497) = self->_downloadWebArchivesBeforeShowingBanner;
    *(v5 + 125) |= 0x8000u;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_28:
      if ((*&has & 0x200) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_28;
  }

  *(v5 + 38) = LODWORD(self->_bannerImpressionThreshold);
  *(v5 + 125) |= 0x100u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_29:
    *(v5 + 39) = LODWORD(self->_bannerNewContentCandidacyThreshold);
    *(v5 + 125) |= 0x200u;
  }

LABEL_30:
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v49 = self->_screenSaverImageURLs;
  v50 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v204 objects:v230 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v205;
    do
    {
      v53 = 0;
      do
      {
        if (*v205 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = [*(*(&v204 + 1) + 8 * v53) copyWithZone:a3];
        [v5 addScreenSaverImageURL:v54];

        v53 = v53 + 1;
      }

      while (v51 != v53);
      v51 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v204 objects:v230 count:16];
    }

    while (v51);
  }

  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v55 = self->_excludeTags;
  v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v200 objects:v229 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v201;
    do
    {
      v59 = 0;
      do
      {
        if (*v201 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = [*(*(&v200 + 1) + 8 * v59) copyWithZone:a3];
        [v5 addExcludeTag:v60];

        v59 = v59 + 1;
      }

      while (v57 != v59);
      v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v200 objects:v229 count:16];
    }

    while (v57);
  }

  v61 = [(NSString *)self->_iAdJSVersion copyWithZone:a3];
  v62 = v5[33];
  v5[33] = v61;

  v63 = [(NSString *)self->_iAdJSURL copyWithZone:a3];
  v64 = v5[32];
  v5[32] = v63;

  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v65 = self->_rewardTokens;
  v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v196 objects:v228 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v197;
    do
    {
      v69 = 0;
      do
      {
        if (*v197 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = [*(*(&v196 + 1) + 8 * v69) copyWithZone:a3];
        [v5 addRewardTokens:v70];

        v69 = v69 + 1;
      }

      while (v67 != v69);
      v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v196 objects:v228 count:16];
    }

    while (v67);
  }

  if ((*&self->_has & 8) != 0)
  {
    v5[4] = *&self->_rewardTokensExpiration;
    *(v5 + 125) |= 8u;
  }

  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v71 = self->_matchTagClauses;
  v72 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v192 objects:v227 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v193;
    do
    {
      v75 = 0;
      do
      {
        if (*v193 != v74)
        {
          objc_enumerationMutation(v71);
        }

        v76 = [*(*(&v192 + 1) + 8 * v75) copyWithZone:a3];
        [v5 addMatchTagClause:v76];

        v75 = v75 + 1;
      }

      while (v73 != v75);
      v73 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v192 objects:v227 count:16];
    }

    while (v73);
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v5[5] = *&self->_skipThreshold;
    *(v5 + 125) |= 0x10u;
  }

  v77 = [(NSString *)self->_logoImageURL copyWithZone:a3];
  v78 = v5[40];
  v5[40] = v77;

  v79 = [(NSString *)self->_headlineForLCD copyWithZone:a3];
  v80 = v5[30];
  v5[30] = v79;

  v81 = [(NSString *)self->_descriptionForLCD copyWithZone:a3];
  v82 = v5[25];
  v5[25] = v81;

  if ((*&self->_has & 4) != 0)
  {
    v5[3] = self->_priority;
    *(v5 + 125) |= 4u;
  }

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v83 = self->_geofences;
  v84 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v188 objects:v226 count:16];
  if (v84)
  {
    v85 = v84;
    v86 = *v189;
    do
    {
      v87 = 0;
      do
      {
        if (*v189 != v86)
        {
          objc_enumerationMutation(v83);
        }

        v88 = [*(*(&v188 + 1) + 8 * v87) copyWithZone:a3];
        [v5 addGeofences:v88];

        v87 = v87 + 1;
      }

      while (v85 != v87);
      v85 = [(NSMutableArray *)v83 countByEnumeratingWithState:&v188 objects:v226 count:16];
    }

    while (v85);
  }

  v89 = [(NSString *)self->_targetAppBundleID copyWithZone:a3];
  v90 = v5[52];
  v5[52] = v89;

  v91 = [(NSString *)self->_targetAppURLScheme copyWithZone:a3];
  v92 = v5[53];
  v5[53] = v91;

  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v93 = self->_creativeSizes;
  v94 = [(NSMutableArray *)v93 countByEnumeratingWithState:&v184 objects:v225 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v185;
    do
    {
      v97 = 0;
      do
      {
        if (*v185 != v96)
        {
          objc_enumerationMutation(v93);
        }

        v98 = [*(*(&v184 + 1) + 8 * v97) copyWithZone:a3];
        [v5 addCreativeSizes:v98];

        v97 = v97 + 1;
      }

      while (v95 != v97);
      v95 = [(NSMutableArray *)v93 countByEnumeratingWithState:&v184 objects:v225 count:16];
    }

    while (v95);
  }

  if ((*(&self->_has + 1) & 8) != 0)
  {
    *(v5 + 78) = self->_letterboxCreativeColor;
    *(v5 + 125) |= 0x800u;
  }

  v99 = [(APPBInstallAttribution *)self->_installAttribution copyWithZone:a3];
  v100 = v5[37];
  v5[37] = v99;

  v101 = [(APPBAdSpecification *)self->_specification copyWithZone:a3];
  v102 = v5[51];
  v5[51] = v101;

  v103 = self->_has;
  if ((*&v103 & 2) != 0)
  {
    v5[2] = *&self->_minimumIntervalBetweenPresentations;
    *(v5 + 125) |= 2u;
    v103 = self->_has;
  }

  if ((*&v103 & 0x4000) != 0)
  {
    *(v5 + 496) = self->_doesNotResetListeningTime;
    *(v5 + 125) |= 0x4000u;
  }

  v104 = [(APPBMerchant *)self->_merchant copyWithZone:a3];
  v105 = v5[44];
  v5[44] = v104;

  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v106 = self->_nativeMetadatas;
  v107 = [(NSMutableArray *)v106 countByEnumeratingWithState:&v180 objects:v224 count:16];
  if (v107)
  {
    v108 = v107;
    v109 = *v181;
    do
    {
      v110 = 0;
      do
      {
        if (*v181 != v109)
        {
          objc_enumerationMutation(v106);
        }

        v111 = [*(*(&v180 + 1) + 8 * v110) copyWithZone:a3];
        [v5 addNativeMetadata:v111];

        v110 = v110 + 1;
      }

      while (v108 != v110);
      v108 = [(NSMutableArray *)v106 countByEnumeratingWithState:&v180 objects:v224 count:16];
    }

    while (v108);
  }

  if ((*(&self->_has + 1) & 4) != 0)
  {
    *(v5 + 52) = self->_desiredPosition;
    *(v5 + 125) |= 0x400u;
  }

  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v112 = self->_actions;
  v113 = [(NSMutableArray *)v112 countByEnumeratingWithState:&v176 objects:v223 count:16];
  if (v113)
  {
    v114 = v113;
    v115 = *v177;
    do
    {
      v116 = 0;
      do
      {
        if (*v177 != v115)
        {
          objc_enumerationMutation(v112);
        }

        v117 = [*(*(&v176 + 1) + 8 * v116) copyWithZone:a3];
        [v5 addActions:v117];

        v116 = v116 + 1;
      }

      while (v114 != v116);
      v114 = [(NSMutableArray *)v112 countByEnumeratingWithState:&v176 objects:v223 count:16];
    }

    while (v114);
  }

  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v118 = self->_iTunesMetadatas;
  v119 = [(NSMutableArray *)v118 countByEnumeratingWithState:&v172 objects:v222 count:16];
  if (v119)
  {
    v120 = v119;
    v121 = *v173;
    do
    {
      v122 = 0;
      do
      {
        if (*v173 != v121)
        {
          objc_enumerationMutation(v118);
        }

        v123 = [*(*(&v172 + 1) + 8 * v122) copyWithZone:a3];
        [v5 addITunesMetadata:v123];

        v122 = v122 + 1;
      }

      while (v120 != v122);
      v120 = [(NSMutableArray *)v118 countByEnumeratingWithState:&v172 objects:v222 count:16];
    }

    while (v120);
  }

  v124 = [(APPBTransparencyDetails *)self->_transparencyDetails copyWithZone:a3];
  v125 = v5[57];
  v5[57] = v124;

  v126 = [(APPBNativeMediaCreativeMetadata *)self->_nativeMediaCreativeMetadata copyWithZone:a3];
  v127 = v5[45];
  v5[45] = v126;

  v128 = [(NSString *)self->_adTagContentString copyWithZone:a3];
  v129 = v5[16];
  v5[16] = v128;

  v130 = self->_has;
  if ((*&v130 & 0x1000) != 0)
  {
    *(v5 + 84) = self->_maximumPretapRequestCount;
    *(v5 + 125) |= 0x1000u;
    v130 = self->_has;
  }

  if ((*&v130 & 0x40) != 0)
  {
    *(v5 + 30) = self->_adPrivacyMarkPosition;
    *(v5 + 125) |= 0x40u;
  }

  v131 = [(NSString *)self->_adDataResponseIdentifier copyWithZone:a3];
  v132 = v5[10];
  v5[10] = v131;

  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    *(v5 + 116) = self->_unfilledReasonCode;
    *(v5 + 125) |= 0x2000u;
  }

  v133 = [(NSString *)self->_unfilledReasonInfo copyWithZone:a3];
  v134 = v5[59];
  v5[59] = v133;

  v135 = [(NSString *)self->_adOriginalRequesterId copyWithZone:a3];
  v136 = v5[14];
  v5[14] = v135;

  v137 = [(NSString *)self->_expressionToEvaluate copyWithZone:a3];
  v138 = v5[28];
  v5[28] = v137;

  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v139 = self->_journeyStartRelayValues;
  v140 = [(NSMutableArray *)v139 countByEnumeratingWithState:&v168 objects:v221 count:16];
  if (v140)
  {
    v141 = v140;
    v142 = *v169;
    do
    {
      v143 = 0;
      do
      {
        if (*v169 != v142)
        {
          objc_enumerationMutation(v139);
        }

        v144 = [*(*(&v168 + 1) + 8 * v143) copyWithZone:a3];
        [v5 addJourneyStartRelayValues:v144];

        v143 = v143 + 1;
      }

      while (v141 != v143);
      v141 = [(NSMutableArray *)v139 countByEnumeratingWithState:&v168 objects:v221 count:16];
    }

    while (v141);
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v145 = self->_adLayoutDatas;
  v146 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v164 objects:v220 count:16];
  if (v146)
  {
    v147 = v146;
    v148 = *v165;
    do
    {
      v149 = 0;
      do
      {
        if (*v165 != v148)
        {
          objc_enumerationMutation(v145);
        }

        v150 = [*(*(&v164 + 1) + 8 * v149) copyWithZone:{a3, v164}];
        [v5 addAdLayoutData:v150];

        v149 = v149 + 1;
      }

      while (v147 != v149);
      v147 = [(NSMutableArray *)v145 countByEnumeratingWithState:&v164 objects:v220 count:16];
    }

    while (v147);
  }

  v151 = [(NSString *)self->_adType copyWithZone:a3];
  v152 = v5[17];
  v5[17] = v151;

  v153 = [(NSString *)self->_adFormatType copyWithZone:a3];
  v154 = v5[11];
  v5[11] = v153;

  v155 = [(APPBAdFrequencyCapData *)self->_adFrequencyCapData copyWithZone:a3];
  v156 = v5[12];
  v5[12] = v155;

  v157 = [(APPBPolicyData *)self->_policyData copyWithZone:a3];
  v158 = v5[47];
  v5[47] = v157;

  v159 = [(APPBTargetingDimensions *)self->_targetingDimensions copyWithZone:a3];
  v160 = v5[54];
  v5[54] = v159;

  v161 = self->_has;
  if ((*&v161 & 0x20) != 0)
  {
    v5[6] = *&self->_startDate;
    *(v5 + 125) |= 0x20u;
    v161 = self->_has;
  }

  if ((*&v161 & 0x80) != 0)
  {
    *(v5 + 31) = self->_adPrivacyMarkerType;
    *(v5 + 125) |= 0x80u;
  }

  v162 = v5;

  return v162;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  bannerURL = self->_bannerURL;
  if (bannerURL | *(v4 + 21))
  {
    if (![(NSString *)bannerURL isEqual:?])
    {
      goto LABEL_46;
    }
  }

  bannerWebArchiveURL = self->_bannerWebArchiveURL;
  if (bannerWebArchiveURL | *(v4 + 22))
  {
    if (![(NSString *)bannerWebArchiveURL isEqual:?])
    {
      goto LABEL_46;
    }
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(v4 + 60))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_46;
    }
  }

  impressionIdentifierData = self->_impressionIdentifierData;
  if (impressionIdentifierData | *(v4 + 36))
  {
    if (![(NSData *)impressionIdentifierData isEqual:?])
    {
      goto LABEL_46;
    }
  }

  humanReadableName = self->_humanReadableName;
  if (humanReadableName | *(v4 + 31))
  {
    if (![(NSString *)humanReadableName isEqual:?])
    {
      goto LABEL_46;
    }
  }

  if (self->_impressionCount != *(v4 + 70))
  {
    goto LABEL_46;
  }

  v10 = *(v4 + 125);
  if (*&self->_has)
  {
    if ((v10 & 1) == 0 || self->_expirationDate != *(v4 + 1))
    {
      goto LABEL_46;
    }
  }

  else if (v10)
  {
    goto LABEL_46;
  }

  trackingURLs = self->_trackingURLs;
  if (trackingURLs | *(v4 + 56) && ![(NSMutableArray *)trackingURLs isEqual:?])
  {
    goto LABEL_46;
  }

  trackingURLSubstitutionParameter = self->_trackingURLSubstitutionParameter;
  if (trackingURLSubstitutionParameter | *(v4 + 55))
  {
    if (![(NSString *)trackingURLSubstitutionParameter isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v13 = *(v4 + 125);
  if (*(&self->_has + 2))
  {
    if ((v13 & 0x10000) == 0)
    {
      goto LABEL_46;
    }

    if (self->_unbranded)
    {
      if ((*(v4 + 498) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (*(v4 + 498))
    {
      goto LABEL_46;
    }
  }

  else if ((v13 & 0x10000) != 0)
  {
    goto LABEL_46;
  }

  accessibilityDescription = self->_accessibilityDescription;
  if (accessibilityDescription | *(v4 + 8) && ![(NSString *)accessibilityDescription isEqual:?])
  {
    goto LABEL_46;
  }

  confirmedClickPixelURLs = self->_confirmedClickPixelURLs;
  if (confirmedClickPixelURLs | *(v4 + 23))
  {
    if (![(NSMutableArray *)confirmedClickPixelURLs isEqual:?])
    {
      goto LABEL_46;
    }
  }

  bannerQueryString = self->_bannerQueryString;
  if (bannerQueryString | *(v4 + 20))
  {
    if (![(NSString *)bannerQueryString isEqual:?])
    {
      goto LABEL_46;
    }
  }

  videoAssets = self->_videoAssets;
  if (videoAssets | *(v4 + 61))
  {
    if (![(NSMutableArray *)videoAssets isEqual:?])
    {
      goto LABEL_46;
    }
  }

  mediaFiles = self->_mediaFiles;
  if (mediaFiles | *(v4 + 43))
  {
    if (![(APPBMediaFiles *)mediaFiles isEqual:?])
    {
      goto LABEL_46;
    }
  }

  audioURL = self->_audioURL;
  if (audioURL | *(v4 + 18))
  {
    if (![(NSString *)audioURL isEqual:?])
    {
      goto LABEL_46;
    }
  }

  slateImageURL = self->_slateImageURL;
  if (slateImageURL | *(v4 + 50))
  {
    if (![(NSString *)slateImageURL isEqual:?])
    {
      goto LABEL_46;
    }
  }

  aTVTunerImageURL = self->_aTVTunerImageURL;
  if (aTVTunerImageURL | *(v4 + 7))
  {
    if (![(NSString *)aTVTunerImageURL isEqual:?])
    {
      goto LABEL_46;
    }
  }

  has = self->_has;
  v23 = *(v4 + 125);
  if ((*&has & 0x8000) != 0)
  {
    if ((v23 & 0x8000) == 0)
    {
      goto LABEL_46;
    }

    if (self->_downloadWebArchivesBeforeShowingBanner)
    {
      if ((*(v4 + 497) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (*(v4 + 497))
    {
      goto LABEL_46;
    }
  }

  else if ((v23 & 0x8000) != 0)
  {
    goto LABEL_46;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v23 & 0x100) == 0 || self->_bannerImpressionThreshold != *(v4 + 38))
    {
      goto LABEL_46;
    }
  }

  else if ((v23 & 0x100) != 0)
  {
    goto LABEL_46;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v23 & 0x200) == 0 || self->_bannerNewContentCandidacyThreshold != *(v4 + 39))
    {
      goto LABEL_46;
    }
  }

  else if ((v23 & 0x200) != 0)
  {
    goto LABEL_46;
  }

  screenSaverImageURLs = self->_screenSaverImageURLs;
  if (screenSaverImageURLs | *(v4 + 49) && ![(NSMutableArray *)screenSaverImageURLs isEqual:?])
  {
    goto LABEL_46;
  }

  excludeTags = self->_excludeTags;
  if (excludeTags | *(v4 + 27))
  {
    if (![(NSMutableArray *)excludeTags isEqual:?])
    {
      goto LABEL_46;
    }
  }

  iAdJSVersion = self->_iAdJSVersion;
  if (iAdJSVersion | *(v4 + 33))
  {
    if (![(NSString *)iAdJSVersion isEqual:?])
    {
      goto LABEL_46;
    }
  }

  iAdJSURL = self->_iAdJSURL;
  if (iAdJSURL | *(v4 + 32))
  {
    if (![(NSString *)iAdJSURL isEqual:?])
    {
      goto LABEL_46;
    }
  }

  rewardTokens = self->_rewardTokens;
  if (rewardTokens | *(v4 + 48))
  {
    if (![(NSMutableArray *)rewardTokens isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v31 = self->_has;
  v32 = *(v4 + 125);
  if ((*&v31 & 8) != 0)
  {
    if ((v32 & 8) == 0 || self->_rewardTokensExpiration != *(v4 + 4))
    {
      goto LABEL_46;
    }
  }

  else if ((v32 & 8) != 0)
  {
    goto LABEL_46;
  }

  matchTagClauses = self->_matchTagClauses;
  if (matchTagClauses | *(v4 + 41))
  {
    if (![(NSMutableArray *)matchTagClauses isEqual:?])
    {
      goto LABEL_46;
    }

    v31 = self->_has;
  }

  v34 = *(v4 + 125);
  if ((*&v31 & 0x10) != 0)
  {
    if ((v34 & 0x10) == 0 || self->_skipThreshold != *(v4 + 5))
    {
      goto LABEL_46;
    }
  }

  else if ((v34 & 0x10) != 0)
  {
    goto LABEL_46;
  }

  logoImageURL = self->_logoImageURL;
  if (logoImageURL | *(v4 + 40) && ![(NSString *)logoImageURL isEqual:?])
  {
    goto LABEL_46;
  }

  headlineForLCD = self->_headlineForLCD;
  if (headlineForLCD | *(v4 + 30))
  {
    if (![(NSString *)headlineForLCD isEqual:?])
    {
      goto LABEL_46;
    }
  }

  descriptionForLCD = self->_descriptionForLCD;
  if (descriptionForLCD | *(v4 + 25))
  {
    if (![(NSString *)descriptionForLCD isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v38 = *(v4 + 125);
  if ((*&self->_has & 4) != 0)
  {
    if ((v38 & 4) == 0 || self->_priority != *(v4 + 3))
    {
      goto LABEL_46;
    }
  }

  else if ((v38 & 4) != 0)
  {
    goto LABEL_46;
  }

  geofences = self->_geofences;
  if (geofences | *(v4 + 29) && ![(NSMutableArray *)geofences isEqual:?])
  {
    goto LABEL_46;
  }

  targetAppBundleID = self->_targetAppBundleID;
  if (targetAppBundleID | *(v4 + 52))
  {
    if (![(NSString *)targetAppBundleID isEqual:?])
    {
      goto LABEL_46;
    }
  }

  targetAppURLScheme = self->_targetAppURLScheme;
  if (targetAppURLScheme | *(v4 + 53))
  {
    if (![(NSString *)targetAppURLScheme isEqual:?])
    {
      goto LABEL_46;
    }
  }

  creativeSizes = self->_creativeSizes;
  if (creativeSizes | *(v4 + 24))
  {
    if (![(NSMutableArray *)creativeSizes isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v43 = *(v4 + 125);
  if ((*(&self->_has + 1) & 8) != 0)
  {
    if ((v43 & 0x800) == 0 || self->_letterboxCreativeColor != *(v4 + 78))
    {
      goto LABEL_46;
    }
  }

  else if ((v43 & 0x800) != 0)
  {
    goto LABEL_46;
  }

  installAttribution = self->_installAttribution;
  if (installAttribution | *(v4 + 37) && ![(APPBInstallAttribution *)installAttribution isEqual:?])
  {
    goto LABEL_46;
  }

  specification = self->_specification;
  if (specification | *(v4 + 51))
  {
    if (![(APPBAdSpecification *)specification isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v46 = self->_has;
  v47 = *(v4 + 125);
  if ((*&v46 & 2) != 0)
  {
    if ((v47 & 2) == 0 || self->_minimumIntervalBetweenPresentations != *(v4 + 2))
    {
      goto LABEL_46;
    }
  }

  else if ((v47 & 2) != 0)
  {
    goto LABEL_46;
  }

  if ((*&v46 & 0x4000) != 0)
  {
    if ((v47 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

    if (self->_doesNotResetListeningTime)
    {
      if ((*(v4 + 496) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (*(v4 + 496))
    {
      goto LABEL_46;
    }
  }

  else if ((v47 & 0x4000) != 0)
  {
    goto LABEL_46;
  }

  merchant = self->_merchant;
  if (merchant | *(v4 + 44) && ![(APPBMerchant *)merchant isEqual:?])
  {
    goto LABEL_46;
  }

  nativeMetadatas = self->_nativeMetadatas;
  if (nativeMetadatas | *(v4 + 46))
  {
    if (![(NSMutableArray *)nativeMetadatas isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v50 = *(v4 + 125);
  if ((*(&self->_has + 1) & 4) != 0)
  {
    if ((v50 & 0x400) == 0 || self->_desiredPosition != *(v4 + 52))
    {
      goto LABEL_46;
    }
  }

  else if ((v50 & 0x400) != 0)
  {
    goto LABEL_46;
  }

  actions = self->_actions;
  if (actions | *(v4 + 9) && ![(NSMutableArray *)actions isEqual:?])
  {
    goto LABEL_46;
  }

  iTunesMetadatas = self->_iTunesMetadatas;
  if (iTunesMetadatas | *(v4 + 34))
  {
    if (![(NSMutableArray *)iTunesMetadatas isEqual:?])
    {
      goto LABEL_46;
    }
  }

  transparencyDetails = self->_transparencyDetails;
  if (transparencyDetails | *(v4 + 57))
  {
    if (![(APPBTransparencyDetails *)transparencyDetails isEqual:?])
    {
      goto LABEL_46;
    }
  }

  nativeMediaCreativeMetadata = self->_nativeMediaCreativeMetadata;
  if (nativeMediaCreativeMetadata | *(v4 + 45))
  {
    if (![(APPBNativeMediaCreativeMetadata *)nativeMediaCreativeMetadata isEqual:?])
    {
      goto LABEL_46;
    }
  }

  adTagContentString = self->_adTagContentString;
  if (adTagContentString | *(v4 + 16))
  {
    if (![(NSString *)adTagContentString isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v56 = self->_has;
  v57 = *(v4 + 125);
  if ((*&v56 & 0x1000) != 0)
  {
    if ((v57 & 0x1000) == 0 || self->_maximumPretapRequestCount != *(v4 + 84))
    {
      goto LABEL_46;
    }
  }

  else if ((v57 & 0x1000) != 0)
  {
    goto LABEL_46;
  }

  if ((*&v56 & 0x40) != 0)
  {
    if ((v57 & 0x40) == 0 || self->_adPrivacyMarkPosition != *(v4 + 30))
    {
      goto LABEL_46;
    }
  }

  else if ((v57 & 0x40) != 0)
  {
    goto LABEL_46;
  }

  adDataResponseIdentifier = self->_adDataResponseIdentifier;
  if (adDataResponseIdentifier | *(v4 + 10))
  {
    if (![(NSString *)adDataResponseIdentifier isEqual:?])
    {
      goto LABEL_46;
    }

    v56 = self->_has;
  }

  v59 = *(v4 + 125);
  if ((*&v56 & 0x2000) != 0)
  {
    if ((v59 & 0x2000) == 0 || self->_unfilledReasonCode != *(v4 + 116))
    {
      goto LABEL_46;
    }
  }

  else if ((v59 & 0x2000) != 0)
  {
    goto LABEL_46;
  }

  unfilledReasonInfo = self->_unfilledReasonInfo;
  if (unfilledReasonInfo | *(v4 + 59) && ![(NSString *)unfilledReasonInfo isEqual:?])
  {
    goto LABEL_46;
  }

  adOriginalRequesterId = self->_adOriginalRequesterId;
  if (adOriginalRequesterId | *(v4 + 14))
  {
    if (![(NSString *)adOriginalRequesterId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  expressionToEvaluate = self->_expressionToEvaluate;
  if (expressionToEvaluate | *(v4 + 28))
  {
    if (![(NSString *)expressionToEvaluate isEqual:?])
    {
      goto LABEL_46;
    }
  }

  journeyStartRelayValues = self->_journeyStartRelayValues;
  if (journeyStartRelayValues | *(v4 + 38))
  {
    if (![(NSMutableArray *)journeyStartRelayValues isEqual:?])
    {
      goto LABEL_46;
    }
  }

  adLayoutDatas = self->_adLayoutDatas;
  if (adLayoutDatas | *(v4 + 13))
  {
    if (![(NSMutableArray *)adLayoutDatas isEqual:?])
    {
      goto LABEL_46;
    }
  }

  adType = self->_adType;
  if (adType | *(v4 + 17))
  {
    if (![(NSString *)adType isEqual:?])
    {
      goto LABEL_46;
    }
  }

  adFormatType = self->_adFormatType;
  if (adFormatType | *(v4 + 11))
  {
    if (![(NSString *)adFormatType isEqual:?])
    {
      goto LABEL_46;
    }
  }

  adFrequencyCapData = self->_adFrequencyCapData;
  if (adFrequencyCapData | *(v4 + 12))
  {
    if (![(APPBAdFrequencyCapData *)adFrequencyCapData isEqual:?])
    {
      goto LABEL_46;
    }
  }

  policyData = self->_policyData;
  if (policyData | *(v4 + 47))
  {
    if (![(APPBPolicyData *)policyData isEqual:?])
    {
      goto LABEL_46;
    }
  }

  targetingDimensions = self->_targetingDimensions;
  if (targetingDimensions | *(v4 + 54))
  {
    if (![(APPBTargetingDimensions *)targetingDimensions isEqual:?])
    {
      goto LABEL_46;
    }
  }

  v70 = self->_has;
  v71 = *(v4 + 125);
  if ((*&v70 & 0x20) != 0)
  {
    if ((v71 & 0x20) == 0 || self->_startDate != *(v4 + 6))
    {
      goto LABEL_46;
    }
  }

  else if ((v71 & 0x20) != 0)
  {
    goto LABEL_46;
  }

  if ((*&v70 & 0x80) == 0)
  {
    v24 = (*(v4 + 125) & 0x80) == 0;
    goto LABEL_47;
  }

  if ((v71 & 0x80) != 0 && self->_adPrivacyMarkerType == *(v4 + 31))
  {
    v24 = 1;
    goto LABEL_47;
  }

LABEL_46:
  v24 = 0;
LABEL_47:

  return v24;
}

- (unint64_t)hash
{
  v112 = [(NSString *)self->_bannerURL hash];
  v111 = [(NSString *)self->_bannerWebArchiveURL hash];
  v110 = [(NSString *)self->_uniqueIdentifier hash];
  v109 = [(NSData *)self->_impressionIdentifierData hash];
  v108 = [(NSString *)self->_humanReadableName hash];
  if (*&self->_has)
  {
    expirationDate = self->_expirationDate;
    if (expirationDate < 0.0)
    {
      expirationDate = -expirationDate;
    }

    *v3.i64 = floor(expirationDate + 0.5);
    v7 = (expirationDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  impressionCount = self->_impressionCount;
  v107 = v5;
  v105 = [(NSMutableArray *)self->_trackingURLs hash];
  v104 = [(NSString *)self->_trackingURLSubstitutionParameter hash];
  if (*(&self->_has + 2))
  {
    v103 = 2654435761 * self->_unbranded;
  }

  else
  {
    v103 = 0;
  }

  v102 = [(NSString *)self->_accessibilityDescription hash];
  v101 = [(NSMutableArray *)self->_confirmedClickPixelURLs hash];
  v100 = [(NSString *)self->_bannerQueryString hash];
  v99 = [(NSMutableArray *)self->_videoAssets hash];
  v98 = [(APPBMediaFiles *)self->_mediaFiles hash];
  v97 = [(NSString *)self->_audioURL hash];
  v96 = [(NSString *)self->_slateImageURL hash];
  v95 = [(NSString *)self->_aTVTunerImageURL hash];
  has = self->_has;
  if ((*&has & 0x8000) != 0)
  {
    v94 = 2654435761 * self->_downloadWebArchivesBeforeShowingBanner;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  v94 = 0;
  if ((*&has & 0x100) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  bannerImpressionThreshold = self->_bannerImpressionThreshold;
  if (bannerImpressionThreshold < 0.0)
  {
    bannerImpressionThreshold = -bannerImpressionThreshold;
  }

  *v9.i32 = floorf(bannerImpressionThreshold + 0.5);
  v13 = (bannerImpressionThreshold - *v9.i32) * 1.8447e19;
  *v10.i32 = *v9.i32 - (truncf(*v9.i32 * 5.421e-20) * 1.8447e19);
  v14.i64[0] = 0x8000000080000000;
  v14.i64[1] = 0x8000000080000000;
  v9 = vbslq_s8(v14, v10, v9);
  v15 = 2654435761u * *v9.i32;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v15 += v13;
    }
  }

  else
  {
    v15 -= fabsf(v13);
  }

LABEL_20:
  v93 = v15;
  if ((*&has & 0x200) != 0)
  {
    bannerNewContentCandidacyThreshold = self->_bannerNewContentCandidacyThreshold;
    if (bannerNewContentCandidacyThreshold < 0.0)
    {
      bannerNewContentCandidacyThreshold = -bannerNewContentCandidacyThreshold;
    }

    *v9.i32 = floorf(bannerNewContentCandidacyThreshold + 0.5);
    v18 = (bannerNewContentCandidacyThreshold - *v9.i32) * 1.8447e19;
    *v10.i32 = *v9.i32 - (truncf(*v9.i32 * 5.421e-20) * 1.8447e19);
    v19.i64[0] = 0x8000000080000000;
    v19.i64[1] = 0x8000000080000000;
    v16 = 2654435761u * *vbslq_s8(v19, v10, v9).i32;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabsf(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  v92 = v16;
  v91 = [(NSMutableArray *)self->_screenSaverImageURLs hash];
  v90 = [(NSMutableArray *)self->_excludeTags hash];
  v89 = [(NSString *)self->_iAdJSVersion hash];
  v88 = [(NSString *)self->_iAdJSURL hash];
  v87 = [(NSMutableArray *)self->_rewardTokens hash];
  if ((*&self->_has & 8) != 0)
  {
    rewardTokensExpiration = self->_rewardTokensExpiration;
    if (rewardTokensExpiration < 0.0)
    {
      rewardTokensExpiration = -rewardTokensExpiration;
    }

    *v20.i64 = floor(rewardTokensExpiration + 0.5);
    v24 = (rewardTokensExpiration - *v20.i64) * 1.84467441e19;
    *v21.i64 = *v20.i64 - trunc(*v20.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v22 = 2654435761u * *vbslq_s8(vnegq_f64(v25), v21, v20).i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v22 += v24;
      }
    }

    else
    {
      v22 -= fabs(v24);
    }
  }

  else
  {
    v22 = 0;
  }

  v86 = v22;
  v85 = [(NSMutableArray *)self->_matchTagClauses hash];
  if ((*&self->_has & 0x10) != 0)
  {
    skipThreshold = self->_skipThreshold;
    if (skipThreshold < 0.0)
    {
      skipThreshold = -skipThreshold;
    }

    *v26.i64 = floor(skipThreshold + 0.5);
    v30 = (skipThreshold - *v26.i64) * 1.84467441e19;
    *v27.i64 = *v26.i64 - trunc(*v26.i64 * 5.42101086e-20) * 1.84467441e19;
    v31.f64[0] = NAN;
    v31.f64[1] = NAN;
    v28 = 2654435761u * *vbslq_s8(vnegq_f64(v31), v27, v26).i64;
    if (v30 >= 0.0)
    {
      if (v30 > 0.0)
      {
        v28 += v30;
      }
    }

    else
    {
      v28 -= fabs(v30);
    }
  }

  else
  {
    v28 = 0;
  }

  v84 = v28;
  v83 = [(NSString *)self->_logoImageURL hash];
  v82 = [(NSString *)self->_headlineForLCD hash];
  v81 = [(NSString *)self->_descriptionForLCD hash];
  if ((*&self->_has & 4) != 0)
  {
    v80 = 2654435761u * self->_priority;
  }

  else
  {
    v80 = 0;
  }

  v79 = [(NSMutableArray *)self->_geofences hash];
  v78 = [(NSString *)self->_targetAppBundleID hash];
  v77 = [(NSString *)self->_targetAppURLScheme hash];
  v76 = [(NSMutableArray *)self->_creativeSizes hash];
  if ((*(&self->_has + 1) & 8) != 0)
  {
    v75 = 2654435761 * self->_letterboxCreativeColor;
  }

  else
  {
    v75 = 0;
  }

  v74 = [(APPBInstallAttribution *)self->_installAttribution hash];
  v73 = [(APPBAdSpecification *)self->_specification hash];
  v34 = self->_has;
  if ((*&v34 & 2) != 0)
  {
    minimumIntervalBetweenPresentations = self->_minimumIntervalBetweenPresentations;
    if (minimumIntervalBetweenPresentations < 0.0)
    {
      minimumIntervalBetweenPresentations = -minimumIntervalBetweenPresentations;
    }

    *v32.i64 = floor(minimumIntervalBetweenPresentations + 0.5);
    v37 = (minimumIntervalBetweenPresentations - *v32.i64) * 1.84467441e19;
    *v33.i64 = *v32.i64 - trunc(*v32.i64 * 5.42101086e-20) * 1.84467441e19;
    v38.f64[0] = NAN;
    v38.f64[1] = NAN;
    v35 = 2654435761u * *vbslq_s8(vnegq_f64(v38), v33, v32).i64;
    if (v37 >= 0.0)
    {
      if (v37 > 0.0)
      {
        v35 += v37;
      }
    }

    else
    {
      v35 -= fabs(v37);
    }
  }

  else
  {
    v35 = 0;
  }

  v72 = v35;
  if ((*&v34 & 0x4000) != 0)
  {
    v71 = 2654435761 * self->_doesNotResetListeningTime;
  }

  else
  {
    v71 = 0;
  }

  v70 = [(APPBMerchant *)self->_merchant hash];
  v69 = [(NSMutableArray *)self->_nativeMetadatas hash];
  if ((*(&self->_has + 1) & 4) != 0)
  {
    v68 = 2654435761 * self->_desiredPosition;
  }

  else
  {
    v68 = 0;
  }

  v67 = [(NSMutableArray *)self->_actions hash];
  v66 = [(NSMutableArray *)self->_iTunesMetadatas hash];
  v65 = [(APPBTransparencyDetails *)self->_transparencyDetails hash];
  v64 = [(APPBNativeMediaCreativeMetadata *)self->_nativeMediaCreativeMetadata hash];
  v63 = [(NSString *)self->_adTagContentString hash];
  v39 = self->_has;
  if ((*&v39 & 0x1000) != 0)
  {
    v62 = 2654435761 * self->_maximumPretapRequestCount;
    if ((*&v39 & 0x40) != 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v62 = 0;
    if ((*&v39 & 0x40) != 0)
    {
LABEL_68:
      v61 = 2654435761 * self->_adPrivacyMarkPosition;
      goto LABEL_71;
    }
  }

  v61 = 0;
LABEL_71:
  v60 = [(NSString *)self->_adDataResponseIdentifier hash];
  if ((*(&self->_has + 1) & 0x20) != 0)
  {
    v59 = 2654435761 * self->_unfilledReasonCode;
  }

  else
  {
    v59 = 0;
  }

  v58 = [(NSString *)self->_unfilledReasonInfo hash];
  v57 = [(NSString *)self->_adOriginalRequesterId hash];
  v40 = [(NSString *)self->_expressionToEvaluate hash];
  v41 = [(NSMutableArray *)self->_journeyStartRelayValues hash];
  v42 = [(NSMutableArray *)self->_adLayoutDatas hash];
  v43 = [(NSString *)self->_adType hash];
  v44 = [(NSString *)self->_adFormatType hash];
  v45 = [(APPBAdFrequencyCapData *)self->_adFrequencyCapData hash];
  v46 = [(APPBPolicyData *)self->_policyData hash];
  v47 = [(APPBTargetingDimensions *)self->_targetingDimensions hash];
  v50 = self->_has;
  if ((*&v50 & 0x20) != 0)
  {
    startDate = self->_startDate;
    if (startDate < 0.0)
    {
      startDate = -startDate;
    }

    *v48.i64 = floor(startDate + 0.5);
    v53 = (startDate - *v48.i64) * 1.84467441e19;
    *v49.i64 = *v48.i64 - trunc(*v48.i64 * 5.42101086e-20) * 1.84467441e19;
    v54.f64[0] = NAN;
    v54.f64[1] = NAN;
    v51 = 2654435761u * *vbslq_s8(vnegq_f64(v54), v49, v48).i64;
    if (v53 >= 0.0)
    {
      if (v53 > 0.0)
      {
        v51 += v53;
      }
    }

    else
    {
      v51 -= fabs(v53);
    }
  }

  else
  {
    v51 = 0;
  }

  if ((*&v50 & 0x80) != 0)
  {
    v55 = 2654435761 * self->_adPrivacyMarkerType;
  }

  else
  {
    v55 = 0;
  }

  return v111 ^ v112 ^ v110 ^ v109 ^ v108 ^ v107 ^ (2654435761 * impressionCount) ^ v105 ^ v104 ^ v103 ^ v102 ^ v101 ^ v100 ^ v99 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v73 ^ v72 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v40 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v46 ^ v47 ^ v51 ^ v55;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 21))
  {
    [(APPBAdData *)self setBannerURL:?];
  }

  if (*(v4 + 22))
  {
    [(APPBAdData *)self setBannerWebArchiveURL:?];
  }

  if (*(v4 + 60))
  {
    [(APPBAdData *)self setUniqueIdentifier:?];
  }

  if (*(v4 + 36))
  {
    [(APPBAdData *)self setImpressionIdentifierData:?];
  }

  if (*(v4 + 31))
  {
    [(APPBAdData *)self setHumanReadableName:?];
  }

  self->_impressionCount = *(v4 + 70);
  if (*(v4 + 500))
  {
    self->_expirationDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v5 = *(v4 + 56);
  v6 = [v5 countByEnumeratingWithState:&v149 objects:v166 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v150;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v150 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(APPBAdData *)self addTrackingURL:*(*(&v149 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v149 objects:v166 count:16];
    }

    while (v7);
  }

  if (*(v4 + 55))
  {
    [(APPBAdData *)self setTrackingURLSubstitutionParameter:?];
  }

  if (*(v4 + 502))
  {
    self->_unbranded = *(v4 + 498);
    *&self->_has |= 0x10000u;
  }

  if (*(v4 + 8))
  {
    [(APPBAdData *)self setAccessibilityDescription:?];
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v10 = *(v4 + 23);
  v11 = [v10 countByEnumeratingWithState:&v145 objects:v165 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v146;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v146 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(APPBAdData *)self addConfirmedClickPixelURLs:*(*(&v145 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v145 objects:v165 count:16];
    }

    while (v12);
  }

  if (*(v4 + 20))
  {
    [(APPBAdData *)self setBannerQueryString:?];
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v15 = *(v4 + 61);
  v16 = [v15 countByEnumeratingWithState:&v141 objects:v164 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v142;
    do
    {
      for (k = 0; k != v17; k = k + 1)
      {
        if (*v142 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(APPBAdData *)self addVideoAsset:*(*(&v141 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v141 objects:v164 count:16];
    }

    while (v17);
  }

  mediaFiles = self->_mediaFiles;
  v21 = *(v4 + 43);
  if (mediaFiles)
  {
    if (v21)
    {
      [(APPBMediaFiles *)mediaFiles mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(APPBAdData *)self setMediaFiles:?];
  }

  if (*(v4 + 18))
  {
    [(APPBAdData *)self setAudioURL:?];
  }

  if (*(v4 + 50))
  {
    [(APPBAdData *)self setSlateImageURL:?];
  }

  if (*(v4 + 7))
  {
    [(APPBAdData *)self setATVTunerImageURL:?];
  }

  v22 = *(v4 + 125);
  if ((v22 & 0x8000) != 0)
  {
    self->_downloadWebArchivesBeforeShowingBanner = *(v4 + 497);
    *&self->_has |= 0x8000u;
    v22 = *(v4 + 125);
    if ((v22 & 0x100) == 0)
    {
LABEL_55:
      if ((v22 & 0x200) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  else if ((v22 & 0x100) == 0)
  {
    goto LABEL_55;
  }

  self->_bannerImpressionThreshold = *(v4 + 38);
  *&self->_has |= 0x100u;
  if ((*(v4 + 125) & 0x200) != 0)
  {
LABEL_56:
    self->_bannerNewContentCandidacyThreshold = *(v4 + 39);
    *&self->_has |= 0x200u;
  }

LABEL_57:
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v23 = *(v4 + 49);
  v24 = [v23 countByEnumeratingWithState:&v137 objects:v163 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v138;
    do
    {
      for (m = 0; m != v25; m = m + 1)
      {
        if (*v138 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(APPBAdData *)self addScreenSaverImageURL:*(*(&v137 + 1) + 8 * m)];
      }

      v25 = [v23 countByEnumeratingWithState:&v137 objects:v163 count:16];
    }

    while (v25);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v28 = *(v4 + 27);
  v29 = [v28 countByEnumeratingWithState:&v133 objects:v162 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v134;
    do
    {
      for (n = 0; n != v30; n = n + 1)
      {
        if (*v134 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [(APPBAdData *)self addExcludeTag:*(*(&v133 + 1) + 8 * n)];
      }

      v30 = [v28 countByEnumeratingWithState:&v133 objects:v162 count:16];
    }

    while (v30);
  }

  if (*(v4 + 33))
  {
    [(APPBAdData *)self setIAdJSVersion:?];
  }

  if (*(v4 + 32))
  {
    [(APPBAdData *)self setIAdJSURL:?];
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v33 = *(v4 + 48);
  v34 = [v33 countByEnumeratingWithState:&v129 objects:v161 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v130;
    do
    {
      for (ii = 0; ii != v35; ii = ii + 1)
      {
        if (*v130 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [(APPBAdData *)self addRewardTokens:*(*(&v129 + 1) + 8 * ii)];
      }

      v35 = [v33 countByEnumeratingWithState:&v129 objects:v161 count:16];
    }

    while (v35);
  }

  if ((*(v4 + 500) & 8) != 0)
  {
    self->_rewardTokensExpiration = *(v4 + 4);
    *&self->_has |= 8u;
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v38 = *(v4 + 41);
  v39 = [v38 countByEnumeratingWithState:&v125 objects:v160 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v126;
    do
    {
      for (jj = 0; jj != v40; jj = jj + 1)
      {
        if (*v126 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [(APPBAdData *)self addMatchTagClause:*(*(&v125 + 1) + 8 * jj)];
      }

      v40 = [v38 countByEnumeratingWithState:&v125 objects:v160 count:16];
    }

    while (v40);
  }

  if ((*(v4 + 500) & 0x10) != 0)
  {
    self->_skipThreshold = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 40))
  {
    [(APPBAdData *)self setLogoImageURL:?];
  }

  if (*(v4 + 30))
  {
    [(APPBAdData *)self setHeadlineForLCD:?];
  }

  if (*(v4 + 25))
  {
    [(APPBAdData *)self setDescriptionForLCD:?];
  }

  if ((*(v4 + 500) & 4) != 0)
  {
    self->_priority = *(v4 + 3);
    *&self->_has |= 4u;
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v43 = *(v4 + 29);
  v44 = [v43 countByEnumeratingWithState:&v121 objects:v159 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v122;
    do
    {
      for (kk = 0; kk != v45; kk = kk + 1)
      {
        if (*v122 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [(APPBAdData *)self addGeofences:*(*(&v121 + 1) + 8 * kk)];
      }

      v45 = [v43 countByEnumeratingWithState:&v121 objects:v159 count:16];
    }

    while (v45);
  }

  if (*(v4 + 52))
  {
    [(APPBAdData *)self setTargetAppBundleID:?];
  }

  if (*(v4 + 53))
  {
    [(APPBAdData *)self setTargetAppURLScheme:?];
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v48 = *(v4 + 24);
  v49 = [v48 countByEnumeratingWithState:&v117 objects:v158 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v118;
    do
    {
      for (mm = 0; mm != v50; mm = mm + 1)
      {
        if (*v118 != v51)
        {
          objc_enumerationMutation(v48);
        }

        [(APPBAdData *)self addCreativeSizes:*(*(&v117 + 1) + 8 * mm)];
      }

      v50 = [v48 countByEnumeratingWithState:&v117 objects:v158 count:16];
    }

    while (v50);
  }

  if ((*(v4 + 501) & 8) != 0)
  {
    self->_letterboxCreativeColor = *(v4 + 78);
    *&self->_has |= 0x800u;
  }

  installAttribution = self->_installAttribution;
  v54 = *(v4 + 37);
  if (installAttribution)
  {
    if (v54)
    {
      [(APPBInstallAttribution *)installAttribution mergeFrom:?];
    }
  }

  else if (v54)
  {
    [(APPBAdData *)self setInstallAttribution:?];
  }

  specification = self->_specification;
  v56 = *(v4 + 51);
  if (specification)
  {
    if (v56)
    {
      [(APPBAdSpecification *)specification mergeFrom:?];
    }
  }

  else if (v56)
  {
    [(APPBAdData *)self setSpecification:?];
  }

  v57 = *(v4 + 125);
  if ((v57 & 2) != 0)
  {
    self->_minimumIntervalBetweenPresentations = *(v4 + 2);
    *&self->_has |= 2u;
    v57 = *(v4 + 125);
  }

  if ((v57 & 0x4000) != 0)
  {
    self->_doesNotResetListeningTime = *(v4 + 496);
    *&self->_has |= 0x4000u;
  }

  merchant = self->_merchant;
  v59 = *(v4 + 44);
  if (merchant)
  {
    if (v59)
    {
      [(APPBMerchant *)merchant mergeFrom:?];
    }
  }

  else if (v59)
  {
    [(APPBAdData *)self setMerchant:?];
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v60 = *(v4 + 46);
  v61 = [v60 countByEnumeratingWithState:&v113 objects:v157 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v114;
    do
    {
      for (nn = 0; nn != v62; nn = nn + 1)
      {
        if (*v114 != v63)
        {
          objc_enumerationMutation(v60);
        }

        [(APPBAdData *)self addNativeMetadata:*(*(&v113 + 1) + 8 * nn)];
      }

      v62 = [v60 countByEnumeratingWithState:&v113 objects:v157 count:16];
    }

    while (v62);
  }

  if ((*(v4 + 501) & 4) != 0)
  {
    self->_desiredPosition = *(v4 + 52);
    *&self->_has |= 0x400u;
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v65 = *(v4 + 9);
  v66 = [v65 countByEnumeratingWithState:&v109 objects:v156 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v110;
    do
    {
      for (i1 = 0; i1 != v67; i1 = i1 + 1)
      {
        if (*v110 != v68)
        {
          objc_enumerationMutation(v65);
        }

        [(APPBAdData *)self addActions:*(*(&v109 + 1) + 8 * i1)];
      }

      v67 = [v65 countByEnumeratingWithState:&v109 objects:v156 count:16];
    }

    while (v67);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v70 = *(v4 + 34);
  v71 = [v70 countByEnumeratingWithState:&v105 objects:v155 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v106;
    do
    {
      for (i2 = 0; i2 != v72; i2 = i2 + 1)
      {
        if (*v106 != v73)
        {
          objc_enumerationMutation(v70);
        }

        [(APPBAdData *)self addITunesMetadata:*(*(&v105 + 1) + 8 * i2)];
      }

      v72 = [v70 countByEnumeratingWithState:&v105 objects:v155 count:16];
    }

    while (v72);
  }

  transparencyDetails = self->_transparencyDetails;
  v76 = *(v4 + 57);
  if (transparencyDetails)
  {
    if (v76)
    {
      [(APPBTransparencyDetails *)transparencyDetails mergeFrom:?];
    }
  }

  else if (v76)
  {
    [(APPBAdData *)self setTransparencyDetails:?];
  }

  nativeMediaCreativeMetadata = self->_nativeMediaCreativeMetadata;
  v78 = *(v4 + 45);
  if (nativeMediaCreativeMetadata)
  {
    if (v78)
    {
      [(APPBNativeMediaCreativeMetadata *)nativeMediaCreativeMetadata mergeFrom:?];
    }
  }

  else if (v78)
  {
    [(APPBAdData *)self setNativeMediaCreativeMetadata:?];
  }

  if (*(v4 + 16))
  {
    [(APPBAdData *)self setAdTagContentString:?];
  }

  v79 = *(v4 + 125);
  if ((v79 & 0x1000) != 0)
  {
    self->_maximumPretapRequestCount = *(v4 + 84);
    *&self->_has |= 0x1000u;
    v79 = *(v4 + 125);
  }

  if ((v79 & 0x40) != 0)
  {
    self->_adPrivacyMarkPosition = *(v4 + 30);
    *&self->_has |= 0x40u;
  }

  if (*(v4 + 10))
  {
    [(APPBAdData *)self setAdDataResponseIdentifier:?];
  }

  if ((*(v4 + 501) & 0x20) != 0)
  {
    self->_unfilledReasonCode = *(v4 + 116);
    *&self->_has |= 0x2000u;
  }

  if (*(v4 + 59))
  {
    [(APPBAdData *)self setUnfilledReasonInfo:?];
  }

  if (*(v4 + 14))
  {
    [(APPBAdData *)self setAdOriginalRequesterId:?];
  }

  if (*(v4 + 28))
  {
    [(APPBAdData *)self setExpressionToEvaluate:?];
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v80 = *(v4 + 38);
  v81 = [v80 countByEnumeratingWithState:&v101 objects:v154 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v102;
    do
    {
      for (i3 = 0; i3 != v82; i3 = i3 + 1)
      {
        if (*v102 != v83)
        {
          objc_enumerationMutation(v80);
        }

        [(APPBAdData *)self addJourneyStartRelayValues:*(*(&v101 + 1) + 8 * i3)];
      }

      v82 = [v80 countByEnumeratingWithState:&v101 objects:v154 count:16];
    }

    while (v82);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v85 = *(v4 + 13);
  v86 = [v85 countByEnumeratingWithState:&v97 objects:v153 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v98;
    do
    {
      for (i4 = 0; i4 != v87; i4 = i4 + 1)
      {
        if (*v98 != v88)
        {
          objc_enumerationMutation(v85);
        }

        [(APPBAdData *)self addAdLayoutData:*(*(&v97 + 1) + 8 * i4), v97];
      }

      v87 = [v85 countByEnumeratingWithState:&v97 objects:v153 count:16];
    }

    while (v87);
  }

  if (*(v4 + 17))
  {
    [(APPBAdData *)self setAdType:?];
  }

  if (*(v4 + 11))
  {
    [(APPBAdData *)self setAdFormatType:?];
  }

  adFrequencyCapData = self->_adFrequencyCapData;
  v91 = *(v4 + 12);
  if (adFrequencyCapData)
  {
    if (v91)
    {
      [(APPBAdFrequencyCapData *)adFrequencyCapData mergeFrom:?];
    }
  }

  else if (v91)
  {
    [(APPBAdData *)self setAdFrequencyCapData:?];
  }

  policyData = self->_policyData;
  v93 = *(v4 + 47);
  if (policyData)
  {
    if (v93)
    {
      [(APPBPolicyData *)policyData mergeFrom:?];
    }
  }

  else if (v93)
  {
    [(APPBAdData *)self setPolicyData:?];
  }

  targetingDimensions = self->_targetingDimensions;
  v95 = *(v4 + 54);
  if (targetingDimensions)
  {
    if (v95)
    {
      [(APPBTargetingDimensions *)targetingDimensions mergeFrom:?];
    }
  }

  else if (v95)
  {
    [(APPBAdData *)self setTargetingDimensions:?];
  }

  v96 = *(v4 + 125);
  if ((v96 & 0x20) != 0)
  {
    self->_startDate = *(v4 + 6);
    *&self->_has |= 0x20u;
    v96 = *(v4 + 125);
  }

  if ((v96 & 0x80) != 0)
  {
    self->_adPrivacyMarkerType = *(v4 + 31);
    *&self->_has |= 0x80u;
  }
}

@end