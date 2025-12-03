@interface APPBAdSpaceStatusEventRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusCodeAsString:(int)string;
- (int)StringAsStatusCode:(id)code;
- (int)statusCode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAdReused:(BOOL)reused;
- (void)setHasFirstMessage:(BOOL)message;
- (void)setHasScreenfuls:(BOOL)screenfuls;
- (void)setHasSlotPosition:(BOOL)position;
- (void)setHasStatusCode:(BOOL)code;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation APPBAdSpaceStatusEventRequest

+ (id)options
{
  if (qword_1004E6BB0 != -1)
  {
    sub_100394190();
  }

  v3 = qword_1004E6BA8;

  return v3;
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasScreenfuls:(BOOL)screenfuls
{
  if (screenfuls)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasFirstMessage:(BOOL)message
{
  if (message)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (int)statusCode
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_statusCode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStatusCode:(BOOL)code
{
  if (code)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)statusCodeAsString:(int)string
{
  if (string > 359)
  {
    switch(string)
    {
      case 3000:
        v4 = @"ADStatusCodeNoError";

        break;
      case 3001:
        v4 = @"ADStatusCodeAdNotAvailable";

        break;
      case 3002:
        v4 = @"ADStatusCodeSpacedTooCloseToAnAd";

        break;
      case 3003:
        v4 = @"ADStatusCodePlacedInFirstScreenful";

        break;
      case 3004:
        v4 = @"ADStatusCodeAdLoadedTooLate";

        break;
      case 3005:
        v4 = @"ADStatusCodeAdUnloadedExceedingContainer";

        break;
      case 3006:
        v4 = @"ADStatusCodeAdUnloadedMedusaResizing";

        break;
      case 3007:
        v4 = @"ADStatusCodeAdGlobalCategoryBlacklisted";

        break;
      case 3008:
        v4 = @"ADStatusCodeAdGlobalKeywordBlacklisted";

        break;
      case 3009:
        v4 = @"ADStatusCodeAdCampaignCategoryBlacklisted";

        break;
      case 3010:
        v4 = @"ADStatusCodeAdCampaignKeywordBlacklisted";

        break;
      case 3011:
        v4 = @"ADStatusCodeAdMetadataError";

        break;
      case 3012:
        v4 = @"ADStatusCodeAdArticleLoadError";

        break;
      case 3013:
        v4 = @"ADStatusCodeAdVideoLoadError";

        break;
      default:
        if (string == 360)
        {
          v4 = @"ADStatusCodeNoAdDueToSubscriptionStatus";
        }

        else if (string == 370)
        {
          v4 = @"ADStatusCodeNoAdDueToPolicyRequirement";
        }

        else
        {
LABEL_66:
          v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
LABEL_67:
        }

        break;
    }
  }

  else
  {
    v4 = @"ADStatusCodeUnknown";
    switch(string)
    {
      case 0:
        goto LABEL_67;
      case 1:
        v4 = @"ADStatusCodeServerFailure";

        break;
      case 2:
        v4 = @"ADStatusCodeLoadingThrottled";

        break;
      case 3:
        v4 = @"ADStatusCodeInventoryUnavailable";

        break;
      case 4:
        v4 = @"ADStatusCodeConfigurationError";

        break;
      case 5:
        v4 = @"ADStatusCodeBannerVisibleWithoutContent";

        break;
      case 6:
        v4 = @"ADStatusCodeApplicationInactive";

        break;
      case 7:
        v4 = @"ADStatusCodeAdUnloaded";

        break;
      case 8:
        v4 = @"ADStatusCodeAssetLoadFailure";

        break;
      case 9:
        v4 = @"ADStatusCodeAdResponseValidateFailure";

        break;
      case 10:
        v4 = @"ADStatusCodeAdAssetLoadPending";

        break;
      case 11:
        v4 = @"ADStatusCodeWaitingForResponse";

        break;
      case 12:
        v4 = @"ADStatusCodeNoAdDueToGlobalExclusion";

        break;
      case 13:
        v4 = @"ADStatusCodeNoAdDueToPolicyExclusion";

        break;
      case 14:
        v4 = @"ADStatusCodeBatchLimitExceeded";

        break;
      case 15:
        v4 = @"ADStatusCodeAdsDisabledInIssue";

        break;
      default:
        goto LABEL_66;
    }
  }

  return v4;
}

- (int)StringAsStatusCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"ADStatusCodeUnknown"])
  {
    v4 = 0;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeServerFailure"])
  {
    v4 = 1;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeLoadingThrottled"])
  {
    v4 = 2;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeInventoryUnavailable"])
  {
    v4 = 3;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeConfigurationError"])
  {
    v4 = 4;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeBannerVisibleWithoutContent"])
  {
    v4 = 5;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeApplicationInactive"])
  {
    v4 = 6;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdUnloaded"])
  {
    v4 = 7;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAssetLoadFailure"])
  {
    v4 = 8;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdResponseValidateFailure"])
  {
    v4 = 9;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdAssetLoadPending"])
  {
    v4 = 10;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeWaitingForResponse"])
  {
    v4 = 11;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeNoAdDueToGlobalExclusion"])
  {
    v4 = 12;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeNoAdDueToPolicyExclusion"])
  {
    v4 = 13;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeBatchLimitExceeded"])
  {
    v4 = 14;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdsDisabledInIssue"])
  {
    v4 = 15;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeNoAdDueToSubscriptionStatus"])
  {
    v4 = 360;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeNoAdDueToPolicyRequirement"])
  {
    v4 = 370;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeNoError"])
  {
    v4 = 3000;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdNotAvailable"])
  {
    v4 = 3001;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeSpacedTooCloseToAnAd"])
  {
    v4 = 3002;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodePlacedInFirstScreenful"])
  {
    v4 = 3003;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdLoadedTooLate"])
  {
    v4 = 3004;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdUnloadedExceedingContainer"])
  {
    v4 = 3005;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdUnloadedMedusaResizing"])
  {
    v4 = 3006;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdGlobalCategoryBlacklisted"])
  {
    v4 = 3007;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdGlobalKeywordBlacklisted"])
  {
    v4 = 3008;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdCampaignCategoryBlacklisted"])
  {
    v4 = 3009;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdCampaignKeywordBlacklisted"])
  {
    v4 = 3010;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdMetadataError"])
  {
    v4 = 3011;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdArticleLoadError"])
  {
    v4 = 3012;
  }

  else if ([codeCopy isEqualToString:@"ADStatusCodeAdVideoLoadError"])
  {
    v4 = 3013;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasAdReused:(BOOL)reused
{
  if (reused)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSlotPosition:(BOOL)position
{
  if (position)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdSpaceStatusEventRequest;
  v3 = [(APPBAdSpaceStatusEventRequest *)&v7 description];
  dictionaryRepresentation = [(APPBAdSpaceStatusEventRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  adServerResponseIdentifier = self->_adServerResponseIdentifier;
  if (adServerResponseIdentifier)
  {
    [v3 setObject:adServerResponseIdentifier forKey:@"adServerResponseIdentifier"];
  }

  adOriginIdentifier = self->_adOriginIdentifier;
  if (adOriginIdentifier)
  {
    [v4 setObject:adOriginIdentifier forKey:@"adOriginIdentifier"];
  }

  anonymousDemandiAdID = self->_anonymousDemandiAdID;
  if (anonymousDemandiAdID)
  {
    [v4 setObject:anonymousDemandiAdID forKey:@"anonymousDemandiAdID"];
  }

  contentiAdID = self->_contentiAdID;
  if (contentiAdID)
  {
    [v4 setObject:contentiAdID forKey:@"contentiAdID"];
  }

  iAdID = self->_iAdID;
  if (iAdID)
  {
    [v4 setObject:iAdID forKey:@"iAdID"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [NSNumber numberWithDouble:self->_timestamp];
    [v4 setObject:v11 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = [NSNumber numberWithDouble:self->_responseTime];
  [v4 setObject:v12 forKey:@"responseTime"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = [NSNumber numberWithInt:self->_screenfuls];
  [v4 setObject:v13 forKey:@"screenfuls"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = [NSNumber numberWithBool:self->_firstMessage];
  [v4 setObject:v14 forKey:@"firstMessage"];

  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_59;
  }

LABEL_21:
  statusCode = self->_statusCode;
  if (statusCode > 359)
  {
    v17 = statusCode - 3000;
    statusCode = (statusCode - 3000);
    switch(v17)
    {
      case 0:
        statusCode = @"ADStatusCodeNoError";
        break;
      case 1:
        statusCode = @"ADStatusCodeAdNotAvailable";
        break;
      case 2:
        statusCode = @"ADStatusCodeSpacedTooCloseToAnAd";
        break;
      case 3:
        statusCode = @"ADStatusCodePlacedInFirstScreenful";
        break;
      case 4:
        statusCode = @"ADStatusCodeAdLoadedTooLate";
        break;
      case 5:
        statusCode = @"ADStatusCodeAdUnloadedExceedingContainer";
        break;
      case 6:
        statusCode = @"ADStatusCodeAdUnloadedMedusaResizing";
        break;
      case 7:
        statusCode = @"ADStatusCodeAdGlobalCategoryBlacklisted";
        break;
      case 8:
        statusCode = @"ADStatusCodeAdGlobalKeywordBlacklisted";
        break;
      case 9:
        statusCode = @"ADStatusCodeAdCampaignCategoryBlacklisted";
        break;
      case 10:
        statusCode = @"ADStatusCodeAdCampaignKeywordBlacklisted";
        break;
      case 11:
        statusCode = @"ADStatusCodeAdMetadataError";
        break;
      case 12:
        statusCode = @"ADStatusCodeAdArticleLoadError";
        break;
      case 13:
        statusCode = @"ADStatusCodeAdVideoLoadError";
        break;
      default:
        if (statusCode == 360)
        {
          statusCode = @"ADStatusCodeNoAdDueToSubscriptionStatus";
        }

        else if (statusCode == 370)
        {
          statusCode = @"ADStatusCodeNoAdDueToPolicyRequirement";
        }

        else
        {
LABEL_46:
          statusCode = [NSString stringWithFormat:@"(unknown: %i)", statusCode];
        }

        break;
    }
  }

  else
  {
    statusCode = @"ADStatusCodeUnknown";
    switch(statusCode)
    {
      case 0:
        break;
      case 1:
        statusCode = @"ADStatusCodeServerFailure";
        break;
      case 2:
        statusCode = @"ADStatusCodeLoadingThrottled";
        break;
      case 3:
        statusCode = @"ADStatusCodeInventoryUnavailable";
        break;
      case 4:
        statusCode = @"ADStatusCodeConfigurationError";
        break;
      case 5:
        statusCode = @"ADStatusCodeBannerVisibleWithoutContent";
        break;
      case 6:
        statusCode = @"ADStatusCodeApplicationInactive";
        break;
      case 7:
        statusCode = @"ADStatusCodeAdUnloaded";
        break;
      case 8:
        statusCode = @"ADStatusCodeAssetLoadFailure";
        break;
      case 9:
        statusCode = @"ADStatusCodeAdResponseValidateFailure";
        break;
      case 10:
        statusCode = @"ADStatusCodeAdAssetLoadPending";
        break;
      case 11:
        statusCode = @"ADStatusCodeWaitingForResponse";
        break;
      case 12:
        statusCode = @"ADStatusCodeNoAdDueToGlobalExclusion";
        break;
      case 13:
        statusCode = @"ADStatusCodeNoAdDueToPolicyExclusion";
        break;
      case 14:
        statusCode = @"ADStatusCodeBatchLimitExceeded";
        break;
      case 15:
        statusCode = @"ADStatusCodeAdsDisabledInIssue";
        break;
      default:
        goto LABEL_46;
    }
  }

  [v4 setObject:statusCode forKey:@"statusCode"];

LABEL_59:
  osVersionAndBuild = self->_osVersionAndBuild;
  if (osVersionAndBuild)
  {
    [v4 setObject:osVersionAndBuild forKey:@"osVersionAndBuild"];
  }

  dPID = self->_dPID;
  if (dPID)
  {
    [v4 setObject:dPID forKey:@"DPID"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v4 setObject:bundleID forKey:@"bundleID"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v21 = [NSNumber numberWithBool:self->_adReused];
    [v4 setObject:v21 forKey:@"adReused"];
  }

  contextJSON = self->_contextJSON;
  if (contextJSON)
  {
    [v4 setObject:contextJSON forKey:@"contextJSON"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v23 = [NSNumber numberWithInt:self->_slotPosition];
    [v4 setObject:v23 forKey:@"slotPosition"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_adServerResponseIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_adOriginIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_anonymousDemandiAdID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_contentiAdID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  PBDataWriterWriteDoubleField();
  toCopy = v6;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteInt32Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_35:
  PBDataWriterWriteBOOLField();
  toCopy = v6;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_16:
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

LABEL_17:
  if (self->_osVersionAndBuild)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_dPID)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_contextJSON)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_adServerResponseIdentifier)
  {
    [toCopy setAdServerResponseIdentifier:?];
    toCopy = v6;
  }

  if (self->_adOriginIdentifier)
  {
    [v6 setAdOriginIdentifier:?];
    toCopy = v6;
  }

  if (self->_anonymousDemandiAdID)
  {
    [v6 setAnonymousDemandiAdID:?];
    toCopy = v6;
  }

  if (self->_contentiAdID)
  {
    [v6 setContentiAdID:?];
    toCopy = v6;
  }

  if (self->_iAdID)
  {
    [v6 setIAdID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_timestamp;
    *(toCopy + 112) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 1) = *&self->_responseTime;
  *(toCopy + 112) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 24) = self->_screenfuls;
  *(toCopy + 112) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_35:
  *(toCopy + 109) = self->_firstMessage;
  *(toCopy + 112) |= 0x40u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_16:
    *(toCopy + 26) = self->_statusCode;
    *(toCopy + 112) |= 0x10u;
  }

LABEL_17:
  if (self->_osVersionAndBuild)
  {
    [v6 setOsVersionAndBuild:?];
    toCopy = v6;
  }

  if (self->_dPID)
  {
    [v6 setDPID:?];
    toCopy = v6;
  }

  if (self->_bundleID)
  {
    [v6 setBundleID:?];
    toCopy = v6;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(toCopy + 108) = self->_adReused;
    *(toCopy + 112) |= 0x20u;
  }

  if (self->_contextJSON)
  {
    [v6 setContextJSON:?];
    toCopy = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 25) = self->_slotPosition;
    *(toCopy + 112) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_adServerResponseIdentifier copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_adOriginIdentifier copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_anonymousDemandiAdID copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSData *)self->_contentiAdID copyWithZone:zone];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSData *)self->_iAdID copyWithZone:zone];
  v15 = v5[10];
  v5[10] = v14;

  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[2] = *&self->_timestamp;
    *(v5 + 112) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v5[1] = *&self->_responseTime;
  *(v5 + 112) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 24) = self->_screenfuls;
  *(v5 + 112) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  *(v5 + 109) = self->_firstMessage;
  *(v5 + 112) |= 0x40u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(v5 + 26) = self->_statusCode;
    *(v5 + 112) |= 0x10u;
  }

LABEL_7:
  v17 = [(NSString *)self->_osVersionAndBuild copyWithZone:zone];
  v18 = v5[11];
  v5[11] = v17;

  v19 = [(NSData *)self->_dPID copyWithZone:zone];
  v20 = v5[9];
  v5[9] = v19;

  v21 = [(NSString *)self->_bundleID copyWithZone:zone];
  v22 = v5[6];
  v5[6] = v21;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 108) = self->_adReused;
    *(v5 + 112) |= 0x20u;
  }

  v23 = [(NSString *)self->_contextJSON copyWithZone:zone];
  v24 = v5[8];
  v5[8] = v23;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 25) = self->_slotPosition;
    *(v5 + 112) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  adServerResponseIdentifier = self->_adServerResponseIdentifier;
  if (adServerResponseIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)adServerResponseIdentifier isEqual:?])
    {
      goto LABEL_52;
    }
  }

  adOriginIdentifier = self->_adOriginIdentifier;
  if (adOriginIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)adOriginIdentifier isEqual:?])
    {
      goto LABEL_52;
    }
  }

  anonymousDemandiAdID = self->_anonymousDemandiAdID;
  if (anonymousDemandiAdID | *(equalCopy + 5))
  {
    if (![(NSData *)anonymousDemandiAdID isEqual:?])
    {
      goto LABEL_52;
    }
  }

  contentiAdID = self->_contentiAdID;
  if (contentiAdID | *(equalCopy + 7))
  {
    if (![(NSData *)contentiAdID isEqual:?])
    {
      goto LABEL_52;
    }
  }

  iAdID = self->_iAdID;
  if (iAdID | *(equalCopy + 10))
  {
    if (![(NSData *)iAdID isEqual:?])
    {
      goto LABEL_52;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 112) & 2) == 0 || self->_timestamp != *(equalCopy + 2))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 112) & 2) != 0)
  {
    goto LABEL_52;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 112) & 1) == 0 || self->_responseTime != *(equalCopy + 1))
    {
      goto LABEL_52;
    }
  }

  else if (*(equalCopy + 112))
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 112) & 4) == 0 || self->_screenfuls != *(equalCopy + 24))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 112) & 4) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 112) & 0x40) == 0)
    {
      goto LABEL_52;
    }

    if (self->_firstMessage)
    {
      if ((*(equalCopy + 109) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(equalCopy + 109))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 112) & 0x40) != 0)
  {
    goto LABEL_52;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 112) & 0x10) == 0 || self->_statusCode != *(equalCopy + 26))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 112) & 0x10) != 0)
  {
    goto LABEL_52;
  }

  osVersionAndBuild = self->_osVersionAndBuild;
  if (osVersionAndBuild | *(equalCopy + 11) && ![(NSString *)osVersionAndBuild isEqual:?])
  {
    goto LABEL_52;
  }

  dPID = self->_dPID;
  if (dPID | *(equalCopy + 9))
  {
    if (![(NSData *)dPID isEqual:?])
    {
      goto LABEL_52;
    }
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 6))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_52;
    }
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 112) & 0x20) == 0)
    {
      goto LABEL_52;
    }

    if (self->_adReused)
    {
      if ((*(equalCopy + 108) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else if (*(equalCopy + 108))
    {
      goto LABEL_52;
    }
  }

  else if ((*(equalCopy + 112) & 0x20) != 0)
  {
    goto LABEL_52;
  }

  contextJSON = self->_contextJSON;
  if (!(contextJSON | *(equalCopy + 8)))
  {
    goto LABEL_49;
  }

  if (![(NSString *)contextJSON isEqual:?])
  {
LABEL_52:
    v15 = 0;
    goto LABEL_53;
  }

  has = self->_has;
LABEL_49:
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 112) & 8) != 0 && self->_slotPosition == *(equalCopy + 25))
    {
      v15 = 1;
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v15 = (*(equalCopy + 112) & 8) == 0;
LABEL_53:

  return v15;
}

- (unint64_t)hash
{
  v27 = [(NSString *)self->_adServerResponseIdentifier hash];
  v26 = [(NSString *)self->_adOriginIdentifier hash];
  v25 = [(NSData *)self->_anonymousDemandiAdID hash];
  v24 = [(NSData *)self->_contentiAdID hash];
  v23 = [(NSData *)self->_iAdID hash];
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v3.i64 = floor(timestamp + 0.5);
    v7 = (timestamp - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v8), v4, v3);
    v5 = 2654435761u * *v3.i64;
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

  if (*&self->_has)
  {
    responseTime = self->_responseTime;
    if (responseTime < 0.0)
    {
      responseTime = -responseTime;
    }

    *v3.i64 = floor(responseTime + 0.5);
    v11 = (responseTime - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v4, v3).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&self->_has & 4) == 0)
  {
    v22 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v21 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v22 = 2654435761 * self->_screenfuls;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v21 = 2654435761 * self->_firstMessage;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_20:
    v13 = 2654435761 * self->_statusCode;
    goto LABEL_24;
  }

LABEL_23:
  v13 = 0;
LABEL_24:
  v14 = [(NSString *)self->_osVersionAndBuild hash];
  v15 = [(NSData *)self->_dPID hash];
  v16 = [(NSString *)self->_bundleID hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v17 = 2654435761 * self->_adReused;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(NSString *)self->_contextJSON hash];
  if ((*&self->_has & 8) != 0)
  {
    v19 = 2654435761 * self->_slotPosition;
  }

  else
  {
    v19 = 0;
  }

  return v26 ^ v27 ^ v25 ^ v24 ^ v23 ^ v5 ^ v9 ^ v22 ^ v21 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(APPBAdSpaceStatusEventRequest *)self setAdServerResponseIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(APPBAdSpaceStatusEventRequest *)self setAdOriginIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(APPBAdSpaceStatusEventRequest *)self setAnonymousDemandiAdID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 7))
  {
    [(APPBAdSpaceStatusEventRequest *)self setContentiAdID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 10))
  {
    [(APPBAdSpaceStatusEventRequest *)self setIAdID:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 112);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 112);
    if ((v5 & 1) == 0)
    {
LABEL_13:
      if ((v5 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_34;
    }
  }

  else if ((*(fromCopy + 112) & 1) == 0)
  {
    goto LABEL_13;
  }

  self->_responseTime = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 112);
  if ((v5 & 4) == 0)
  {
LABEL_14:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_screenfuls = *(fromCopy + 24);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 112);
  if ((v5 & 0x40) == 0)
  {
LABEL_15:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_35:
  self->_firstMessage = *(fromCopy + 109);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 112) & 0x10) != 0)
  {
LABEL_16:
    self->_statusCode = *(fromCopy + 26);
    *&self->_has |= 0x10u;
  }

LABEL_17:
  if (*(fromCopy + 11))
  {
    [(APPBAdSpaceStatusEventRequest *)self setOsVersionAndBuild:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 9))
  {
    [(APPBAdSpaceStatusEventRequest *)self setDPID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 6))
  {
    [(APPBAdSpaceStatusEventRequest *)self setBundleID:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 112) & 0x20) != 0)
  {
    self->_adReused = *(fromCopy + 108);
    *&self->_has |= 0x20u;
  }

  if (*(fromCopy + 8))
  {
    [(APPBAdSpaceStatusEventRequest *)self setContextJSON:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 112) & 8) != 0)
  {
    self->_slotPosition = *(fromCopy + 25);
    *&self->_has |= 8u;
  }
}

@end