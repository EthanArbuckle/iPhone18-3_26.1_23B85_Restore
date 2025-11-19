@interface APPBAttributionRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)downloadTypeAsString:(int)a3;
- (id)runStateAsString:(int)a3;
- (int)StringAsDownloadType:(id)a3;
- (int)StringAsRunState:(id)a3;
- (int)downloadType;
- (int)runState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAttributedByiTunes:(BOOL)a3;
- (void)setHasDownloadType:(BOOL)a3;
- (void)setHasIAdConversionTimestamp:(BOOL)a3;
- (void)setHasIAdImpressionTimestamp:(BOOL)a3;
- (void)setHasPurchaseTimestamp:(BOOL)a3;
- (void)setHasRunState:(BOOL)a3;
- (void)setHasSearchAdClickTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasPurchaseTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIAdConversionTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIAdImpressionTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAttributedByiTunes:(BOOL)a3
{
  if (a3)
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

- (void)setHasRunState:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)runStateAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_10047D2B0[a3];
  }

  return v4;
}

- (int)StringAsRunState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Simulator"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DevelopmentDevice"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ConsumerDevice"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSearchAdClickTimestamp:(BOOL)a3
{
  if (a3)
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

- (void)setHasDownloadType:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)downloadTypeAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_10047D2C8[a3];
  }

  return v4;
}

- (int)StringAsDownloadType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AttributionNoDownload"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AttributionDownload"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AttributionRedownload"])
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
  v4 = [(APPBAttributionRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_tiltID)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_anonymousDemandiAdID)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
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
  v4 = v7;
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
  v4 = v7;
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
  v4 = v7;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_14:
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

LABEL_15:
  if (self->_toroID)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_dPID)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_adMetadata)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
    v6 = self->_has;
  }

  if ((v6 & 0x20) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_iAdID)
  {
    [v4 setIAdID:?];
    v4 = v7;
  }

  if (self->_tiltID)
  {
    [v7 setTiltID:?];
    v4 = v7;
  }

  if (self->_anonymousDemandiAdID)
  {
    [v7 setAnonymousDemandiAdID:?];
    v4 = v7;
  }

  if (self->_bundleID)
  {
    [v7 setBundleID:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 4) = *&self->_purchaseTimestamp;
    *(v4 + 124) |= 8u;
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

  *(v4 + 2) = *&self->_iAdConversionTimestamp;
  *(v4 + 124) |= 2u;
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
  *(v4 + 3) = *&self->_iAdImpressionTimestamp;
  *(v4 + 124) |= 4u;
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
  *(v4 + 120) = self->_attributedByiTunes;
  *(v4 + 124) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_14:
    *(v4 + 24) = self->_runState;
    *(v4 + 124) |= 0x40u;
  }

LABEL_15:
  if (self->_toroID)
  {
    [v7 setToroID:?];
    v4 = v7;
  }

  if (self->_dPID)
  {
    [v7 setDPID:?];
    v4 = v7;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v4 + 5) = *&self->_searchAdClickTimestamp;
    *(v4 + 124) |= 0x10u;
  }

  if (self->_adMetadata)
  {
    [v7 setAdMetadata:?];
    v4 = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    *(v4 + 1) = *&self->_downloadClickTimestamp;
    *(v4 + 124) |= 1u;
    v6 = self->_has;
  }

  if ((v6 & 0x20) != 0)
  {
    *(v4 + 20) = self->_downloadType;
    *(v4 + 124) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_iAdID copyWithZone:a3];
  v7 = v5[11];
  v5[11] = v6;

  v8 = [(NSData *)self->_tiltID copyWithZone:a3];
  v9 = v5[13];
  v5[13] = v8;

  v10 = [(NSData *)self->_anonymousDemandiAdID copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(NSString *)self->_bundleID copyWithZone:a3];
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
  v15 = [(NSData *)self->_toroID copyWithZone:a3];
  v16 = v5[14];
  v5[14] = v15;

  v17 = [(NSData *)self->_dPID copyWithZone:a3];
  v18 = v5[9];
  v5[9] = v17;

  if ((*&self->_has & 0x10) != 0)
  {
    v5[5] = *&self->_searchAdClickTimestamp;
    *(v5 + 124) |= 0x10u;
  }

  v19 = [(NSString *)self->_adMetadata copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  iAdID = self->_iAdID;
  if (iAdID | *(v4 + 11))
  {
    if (![(NSData *)iAdID isEqual:?])
    {
      goto LABEL_60;
    }
  }

  tiltID = self->_tiltID;
  if (tiltID | *(v4 + 13))
  {
    if (![(NSData *)tiltID isEqual:?])
    {
      goto LABEL_60;
    }
  }

  anonymousDemandiAdID = self->_anonymousDemandiAdID;
  if (anonymousDemandiAdID | *(v4 + 7))
  {
    if (![(NSData *)anonymousDemandiAdID isEqual:?])
    {
      goto LABEL_60;
    }
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 8))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_60;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 124) & 8) == 0 || self->_purchaseTimestamp != *(v4 + 4))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 124) & 8) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 124) & 2) == 0 || self->_iAdConversionTimestamp != *(v4 + 2))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 124) & 2) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 124) & 4) == 0 || self->_iAdImpressionTimestamp != *(v4 + 3))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 124) & 4) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(v4 + 124) & 0x80) == 0)
    {
      goto LABEL_60;
    }

    if (self->_attributedByiTunes)
    {
      if ((*(v4 + 120) & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (*(v4 + 120))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 124) & 0x80) != 0)
  {
    goto LABEL_60;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 124) & 0x40) == 0 || self->_runState != *(v4 + 24))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 124) & 0x40) != 0)
  {
    goto LABEL_60;
  }

  toroID = self->_toroID;
  if (toroID | *(v4 + 14) && ![(NSData *)toroID isEqual:?])
  {
    goto LABEL_60;
  }

  dPID = self->_dPID;
  if (dPID | *(v4 + 9))
  {
    if (![(NSData *)dPID isEqual:?])
    {
      goto LABEL_60;
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 124) & 0x10) == 0 || self->_searchAdClickTimestamp != *(v4 + 5))
    {
      goto LABEL_60;
    }
  }

  else if ((*(v4 + 124) & 0x10) != 0)
  {
    goto LABEL_60;
  }

  adMetadata = self->_adMetadata;
  if (adMetadata | *(v4 + 6))
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
    if ((*(v4 + 124) & 1) == 0 || self->_downloadClickTimestamp != *(v4 + 1))
    {
      goto LABEL_60;
    }
  }

  else if (*(v4 + 124))
  {
    goto LABEL_60;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 124) & 0x20) == 0 || self->_downloadType != *(v4 + 20))
    {
      goto LABEL_60;
    }

    v13 = 1;
  }

  else
  {
    v13 = (*(v4 + 124) & 0x20) == 0;
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 11))
  {
    [(APPBAttributionRequest *)self setIAdID:?];
    v4 = v7;
  }

  if (*(v4 + 13))
  {
    [(APPBAttributionRequest *)self setTiltID:?];
    v4 = v7;
  }

  if (*(v4 + 7))
  {
    [(APPBAttributionRequest *)self setAnonymousDemandiAdID:?];
    v4 = v7;
  }

  if (*(v4 + 8))
  {
    [(APPBAttributionRequest *)self setBundleID:?];
    v4 = v7;
  }

  v5 = *(v4 + 124);
  if ((v5 & 8) != 0)
  {
    self->_purchaseTimestamp = *(v4 + 4);
    *&self->_has |= 8u;
    v5 = *(v4 + 124);
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

  else if ((*(v4 + 124) & 2) == 0)
  {
    goto LABEL_11;
  }

  self->_iAdConversionTimestamp = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 124);
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
  self->_iAdImpressionTimestamp = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 124);
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
  self->_attributedByiTunes = *(v4 + 120);
  *&self->_has |= 0x80u;
  if ((*(v4 + 124) & 0x40) != 0)
  {
LABEL_14:
    self->_runState = *(v4 + 24);
    *&self->_has |= 0x40u;
  }

LABEL_15:
  if (*(v4 + 14))
  {
    [(APPBAttributionRequest *)self setToroID:?];
    v4 = v7;
  }

  if (*(v4 + 9))
  {
    [(APPBAttributionRequest *)self setDPID:?];
    v4 = v7;
  }

  if ((*(v4 + 124) & 0x10) != 0)
  {
    self->_searchAdClickTimestamp = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 6))
  {
    [(APPBAttributionRequest *)self setAdMetadata:?];
    v4 = v7;
  }

  v6 = *(v4 + 124);
  if (v6)
  {
    self->_downloadClickTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 124);
  }

  if ((v6 & 0x20) != 0)
  {
    self->_downloadType = *(v4 + 20);
    *&self->_has |= 0x20u;
  }
}

@end