@interface APPBAttributionRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)downloadTypeAsString:(int)string;
- (id)runStateAsString:(int)string;
- (int)StringAsDownloadType:(id)type;
- (int)StringAsRunState:(id)state;
- (int)downloadType;
- (int)runState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAttributedByiTunes:(BOOL)tunes;
- (void)setHasDownloadType:(BOOL)type;
- (void)setHasIAdConversionTimestamp:(BOOL)timestamp;
- (void)setHasIAdImpressionTimestamp:(BOOL)timestamp;
- (void)setHasPurchaseTimestamp:(BOOL)timestamp;
- (void)setHasRunState:(BOOL)state;
- (void)setHasSearchAdClickTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation APPBAttributionRequest

+ (id)options
{
  if (qword_1004E6A90 != -1)
  {
    sub_100393FA4();
  }

  v3 = qword_1004E6A88;

  return v3;
}

- (void)setHasPurchaseTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIAdConversionTimestamp:(BOOL)timestamp
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

- (void)setHasIAdImpressionTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAttributedByiTunes:(BOOL)tunes
{
  if (tunes)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (int)runState
{
  if ((*&self->_has & 0x40) != 0)
  {
    return self->_runState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRunState:(BOOL)state
{
  if (state)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)runStateAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_10047D2B0[string];
  }

  return v4;
}

- (int)StringAsRunState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Simulator"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"DevelopmentDevice"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"ConsumerDevice"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSearchAdClickTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)downloadType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_downloadType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasDownloadType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)downloadTypeAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_10047D2C8[string];
  }

  return v4;
}

- (int)StringAsDownloadType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"AttributionNoDownload"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"AttributionDownload"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"AttributionRedownload"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAttributionRequest;
  v3 = [(APPBAttributionRequest *)&v7 description];
  dictionaryRepresentation = [(APPBAttributionRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  iAdID = self->_iAdID;
  if (iAdID)
  {
    [v3 setObject:iAdID forKey:@"iAdID"];
  }

  tiltID = self->_tiltID;
  if (tiltID)
  {
    [v4 setObject:tiltID forKey:@"tiltID"];
  }

  anonymousDemandiAdID = self->_anonymousDemandiAdID;
  if (anonymousDemandiAdID)
  {
    [v4 setObject:anonymousDemandiAdID forKey:@"anonymousDemandiAdID"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v4 setObject:bundleID forKey:@"bundleID"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v10 = [NSNumber numberWithDouble:self->_purchaseTimestamp];
    [v4 setObject:v10 forKey:@"purchaseTimestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  v11 = [NSNumber numberWithDouble:self->_iAdConversionTimestamp];
  [v4 setObject:v11 forKey:@"iAdConversionTimestamp"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = [NSNumber numberWithDouble:self->_iAdImpressionTimestamp];
  [v4 setObject:v12 forKey:@"iAdImpressionTimestamp"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = [NSNumber numberWithBool:self->_attributedByiTunes];
  [v4 setObject:v13 forKey:@"attributedByiTunes"];

  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  runState = self->_runState;
  if (runState >= 3)
  {
    v15 = [NSString stringWithFormat:@"(unknown: %i)", self->_runState];
  }

  else
  {
    v15 = off_10047D2B0[runState];
  }

  [v4 setObject:v15 forKey:@"runState"];

LABEL_23:
  toroID = self->_toroID;
  if (toroID)
  {
    [v4 setObject:toroID forKey:@"toroID"];
  }

  dPID = self->_dPID;
  if (dPID)
  {
    [v4 setObject:dPID forKey:@"DPID"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v18 = [NSNumber numberWithDouble:self->_searchAdClickTimestamp];
    [v4 setObject:v18 forKey:@"searchAdClickTimestamp"];
  }

  adMetadata = self->_adMetadata;
  if (adMetadata)
  {
    [v4 setObject:adMetadata forKey:@"adMetadata"];
  }

  v20 = self->_has;
  if (v20)
  {
    v21 = [NSNumber numberWithDouble:self->_downloadClickTimestamp];
    [v4 setObject:v21 forKey:@"downloadClickTimestamp"];

    v20 = self->_has;
  }

  if ((v20 & 0x20) != 0)
  {
    downloadType = self->_downloadType;
    if (downloadType >= 3)
    {
      v23 = [NSString stringWithFormat:@"(unknown: %i)", self->_downloadType];
    }

    else
    {
      v23 = off_10047D2C8[downloadType];
    }

    [v4 setObject:v23 forKey:@"downloadType"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_tiltID)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_anonymousDemandiAdID)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v7;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteDoubleField();
  toCopy = v7;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteDoubleField();
  toCopy = v7;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_33:
  PBDataWriterWriteBOOLField();
  toCopy = v7;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_14:
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

LABEL_15:
  if (self->_toroID)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_dPID)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_adMetadata)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v7;
    v6 = self->_has;
  }

  if ((v6 & 0x20) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_iAdID)
  {
    [toCopy setIAdID:?];
    toCopy = v7;
  }

  if (self->_tiltID)
  {
    [v7 setTiltID:?];
    toCopy = v7;
  }

  if (self->_anonymousDemandiAdID)
  {
    [v7 setAnonymousDemandiAdID:?];
    toCopy = v7;
  }

  if (self->_bundleID)
  {
    [v7 setBundleID:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 4) = *&self->_purchaseTimestamp;
    *(toCopy + 124) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  *(toCopy + 2) = *&self->_iAdConversionTimestamp;
  *(toCopy + 124) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(toCopy + 3) = *&self->_iAdImpressionTimestamp;
  *(toCopy + 124) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_33:
  *(toCopy + 120) = self->_attributedByiTunes;
  *(toCopy + 124) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_14:
    *(toCopy + 24) = self->_runState;
    *(toCopy + 124) |= 0x40u;
  }

LABEL_15:
  if (self->_toroID)
  {
    [v7 setToroID:?];
    toCopy = v7;
  }

  if (self->_dPID)
  {
    [v7 setDPID:?];
    toCopy = v7;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(toCopy + 5) = *&self->_searchAdClickTimestamp;
    *(toCopy + 124) |= 0x10u;
  }

  if (self->_adMetadata)
  {
    [v7 setAdMetadata:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    *(toCopy + 1) = *&self->_downloadClickTimestamp;
    *(toCopy + 124) |= 1u;
    v6 = self->_has;
  }

  if ((v6 & 0x20) != 0)
  {
    *(toCopy + 20) = self->_downloadType;
    *(toCopy + 124) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_iAdID copyWithZone:zone];
  v7 = v5[11];
  v5[11] = v6;

  v8 = [(NSData *)self->_tiltID copyWithZone:zone];
  v9 = v5[13];
  v5[13] = v8;

  v10 = [(NSData *)self->_anonymousDemandiAdID copyWithZone:zone];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(NSString *)self->_bundleID copyWithZone:zone];
  v13 = v5[8];
  v5[8] = v12;

  has = self->_has;
  if ((has & 8) != 0)
  {
    v5[4] = *&self->_purchaseTimestamp;
    *(v5 + 124) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v5[2] = *&self->_iAdConversionTimestamp;
  *(v5 + 124) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5[3] = *&self->_iAdImpressionTimestamp;
  *(v5 + 124) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  *(v5 + 120) = self->_attributedByiTunes;
  *(v5 + 124) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_6:
    *(v5 + 24) = self->_runState;
    *(v5 + 124) |= 0x40u;
  }

LABEL_7:
  v15 = [(NSData *)self->_toroID copyWithZone:zone];
  v16 = v5[14];
  v5[14] = v15;

  v17 = [(NSData *)self->_dPID copyWithZone:zone];
  v18 = v5[9];
  v5[9] = v17;

  if ((*&self->_has & 0x10) != 0)
  {
    v5[5] = *&self->_searchAdClickTimestamp;
    *(v5 + 124) |= 0x10u;
  }

  v19 = [(NSString *)self->_adMetadata copyWithZone:zone];
  v20 = v5[6];
  v5[6] = v19;

  v21 = self->_has;
  if (v21)
  {
    v5[1] = *&self->_downloadClickTimestamp;
    *(v5 + 124) |= 1u;
    v21 = self->_has;
  }

  if ((v21 & 0x20) != 0)
  {
    *(v5 + 20) = self->_downloadType;
    *(v5 + 124) |= 0x20u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  iAdID = self->_iAdID;
  if (iAdID | *(equalCopy + 11))
  {
    if (![(NSData *)iAdID isEqual:?])
    {
      goto LABEL_60;
    }
  }

  tiltID = self->_tiltID;
  if (tiltID | *(equalCopy + 13))
  {
    if (![(NSData *)tiltID isEqual:?])
    {
      goto LABEL_60;
    }
  }

  anonymousDemandiAdID = self->_anonymousDemandiAdID;
  if (anonymousDemandiAdID | *(equalCopy + 7))
  {
    if (![(NSData *)anonymousDemandiAdID isEqual:?])
    {
      goto LABEL_60;
    }
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 8))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_60;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 124) & 8) == 0 || self->_purchaseTimestamp != *(equalCopy + 4))
    {
      goto LABEL_60;
    }
  }

  else if ((*(equalCopy + 124) & 8) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 124) & 2) == 0 || self->_iAdConversionTimestamp != *(equalCopy + 2))
    {
      goto LABEL_60;
    }
  }

  else if ((*(equalCopy + 124) & 2) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 124) & 4) == 0 || self->_iAdImpressionTimestamp != *(equalCopy + 3))
    {
      goto LABEL_60;
    }
  }

  else if ((*(equalCopy + 124) & 4) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(equalCopy + 124) & 0x80) == 0)
    {
      goto LABEL_60;
    }

    if (self->_attributedByiTunes)
    {
      if ((*(equalCopy + 120) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (*(equalCopy + 120))
    {
      goto LABEL_60;
    }
  }

  else if ((*(equalCopy + 124) & 0x80) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 124) & 0x40) == 0 || self->_runState != *(equalCopy + 24))
    {
      goto LABEL_60;
    }
  }

  else if ((*(equalCopy + 124) & 0x40) != 0)
  {
    goto LABEL_60;
  }

  toroID = self->_toroID;
  if (toroID | *(equalCopy + 14) && ![(NSData *)toroID isEqual:?])
  {
    goto LABEL_60;
  }

  dPID = self->_dPID;
  if (dPID | *(equalCopy + 9))
  {
    if (![(NSData *)dPID isEqual:?])
    {
      goto LABEL_60;
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 124) & 0x10) == 0 || self->_searchAdClickTimestamp != *(equalCopy + 5))
    {
      goto LABEL_60;
    }
  }

  else if ((*(equalCopy + 124) & 0x10) != 0)
  {
    goto LABEL_60;
  }

  adMetadata = self->_adMetadata;
  if (adMetadata | *(equalCopy + 6))
  {
    if ([(NSString *)adMetadata isEqual:?])
    {
      has = self->_has;
      goto LABEL_50;
    }

LABEL_60:
    v13 = 0;
    goto LABEL_61;
  }

LABEL_50:
  if (has)
  {
    if ((*(equalCopy + 124) & 1) == 0 || self->_downloadClickTimestamp != *(equalCopy + 1))
    {
      goto LABEL_60;
    }
  }

  else if (*(equalCopy + 124))
  {
    goto LABEL_60;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 124) & 0x20) == 0 || self->_downloadType != *(equalCopy + 20))
    {
      goto LABEL_60;
    }

    v13 = 1;
  }

  else
  {
    v13 = (*(equalCopy + 124) & 0x20) == 0;
  }

LABEL_61:

  return v13;
}

- (unint64_t)hash
{
  v39 = [(NSData *)self->_iAdID hash];
  v38 = [(NSData *)self->_tiltID hash];
  v37 = [(NSData *)self->_anonymousDemandiAdID hash];
  v36 = [(NSString *)self->_bundleID hash];
  if ((*&self->_has & 8) != 0)
  {
    purchaseTimestamp = self->_purchaseTimestamp;
    if (purchaseTimestamp < 0.0)
    {
      purchaseTimestamp = -purchaseTimestamp;
    }

    *v3.i64 = floor(purchaseTimestamp + 0.5);
    v7 = (purchaseTimestamp - *v3.i64) * 1.84467441e19;
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

  if ((*&self->_has & 2) != 0)
  {
    iAdConversionTimestamp = self->_iAdConversionTimestamp;
    if (iAdConversionTimestamp < 0.0)
    {
      iAdConversionTimestamp = -iAdConversionTimestamp;
    }

    *v3.i64 = floor(iAdConversionTimestamp + 0.5);
    v11 = (iAdConversionTimestamp - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v12), v4, v3);
    v9 = 2654435761u * *v3.i64;
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

  if ((*&self->_has & 4) != 0)
  {
    iAdImpressionTimestamp = self->_iAdImpressionTimestamp;
    if (iAdImpressionTimestamp < 0.0)
    {
      iAdImpressionTimestamp = -iAdImpressionTimestamp;
    }

    *v3.i64 = floor(iAdImpressionTimestamp + 0.5);
    v15 = (iAdImpressionTimestamp - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v4, v3).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v35 = 2654435761 * self->_attributedByiTunes;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v35 = 0;
    if ((*&self->_has & 0x40) == 0)
    {
LABEL_27:
      v17 = 0;
      goto LABEL_30;
    }
  }

  v17 = 2654435761 * self->_runState;
LABEL_30:
  v18 = [(NSData *)self->_toroID hash];
  v19 = [(NSData *)self->_dPID hash];
  if ((*&self->_has & 0x10) != 0)
  {
    searchAdClickTimestamp = self->_searchAdClickTimestamp;
    if (searchAdClickTimestamp < 0.0)
    {
      searchAdClickTimestamp = -searchAdClickTimestamp;
    }

    *v20.i64 = floor(searchAdClickTimestamp + 0.5);
    v24 = (searchAdClickTimestamp - *v20.i64) * 1.84467441e19;
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

  v26 = [(NSString *)self->_adMetadata hash];
  if (*&self->_has)
  {
    downloadClickTimestamp = self->_downloadClickTimestamp;
    if (downloadClickTimestamp < 0.0)
    {
      downloadClickTimestamp = -downloadClickTimestamp;
    }

    *v27.i64 = floor(downloadClickTimestamp + 0.5);
    v31 = (downloadClickTimestamp - *v27.i64) * 1.84467441e19;
    *v28.i64 = *v27.i64 - trunc(*v27.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v29 = 2654435761u * *vbslq_s8(vnegq_f64(v32), v28, v27).i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabs(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v33 = 2654435761 * self->_downloadType;
  }

  else
  {
    v33 = 0;
  }

  return v38 ^ v39 ^ v37 ^ v36 ^ v5 ^ v9 ^ v13 ^ v35 ^ v17 ^ v18 ^ v19 ^ v22 ^ v26 ^ v29 ^ v33;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 11))
  {
    [(APPBAttributionRequest *)self setIAdID:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 13))
  {
    [(APPBAttributionRequest *)self setTiltID:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 7))
  {
    [(APPBAttributionRequest *)self setAnonymousDemandiAdID:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 8))
  {
    [(APPBAttributionRequest *)self setBundleID:?];
    fromCopy = v7;
  }

  v5 = *(fromCopy + 124);
  if ((v5 & 8) != 0)
  {
    self->_purchaseTimestamp = *(fromCopy + 4);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 124);
    if ((v5 & 2) == 0)
    {
LABEL_11:
      if ((v5 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_32;
    }
  }

  else if ((*(fromCopy + 124) & 2) == 0)
  {
    goto LABEL_11;
  }

  self->_iAdConversionTimestamp = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 124);
  if ((v5 & 4) == 0)
  {
LABEL_12:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_iAdImpressionTimestamp = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 124);
  if ((v5 & 0x80) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_33:
  self->_attributedByiTunes = *(fromCopy + 120);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 124) & 0x40) != 0)
  {
LABEL_14:
    self->_runState = *(fromCopy + 24);
    *&self->_has |= 0x40u;
  }

LABEL_15:
  if (*(fromCopy + 14))
  {
    [(APPBAttributionRequest *)self setToroID:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 9))
  {
    [(APPBAttributionRequest *)self setDPID:?];
    fromCopy = v7;
  }

  if ((*(fromCopy + 124) & 0x10) != 0)
  {
    self->_searchAdClickTimestamp = *(fromCopy + 5);
    *&self->_has |= 0x10u;
  }

  if (*(fromCopy + 6))
  {
    [(APPBAttributionRequest *)self setAdMetadata:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 124);
  if (v6)
  {
    self->_downloadClickTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 124);
  }

  if ((v6 & 0x20) != 0)
  {
    self->_downloadType = *(fromCopy + 20);
    *&self->_has |= 0x20u;
  }
}

@end