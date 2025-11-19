@interface TRANSITPbTransitTile
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)marketId;
- (unint64_t)securityKey;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasExpirationAgeSecs:(BOOL)a3;
- (void)setHasMarketId:(BOOL)a3;
- (void)setHasSecurityKey:(BOOL)a3;
- (void)setHasTileX:(BOOL)a3;
- (void)setHasTileY:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation TRANSITPbTransitTile

- (void)dealloc
{
  [(TRANSITPbTransitTile *)self setDEPRECATEDFingerprints:0];
  [(TRANSITPbTransitTile *)self setFingerprints:0];
  v3.receiver = self;
  v3.super_class = TRANSITPbTransitTile;
  [(TRANSITPbTransitTile *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasTileX:(BOOL)a3
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

- (void)setHasTileY:(BOOL)a3
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

- (unint64_t)securityKey
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_securityKey;
  }

  else
  {
    return -1;
  }
}

- (void)setHasSecurityKey:(BOOL)a3
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

- (void)setHasExpirationAgeSecs:(BOOL)a3
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

- (unint64_t)marketId
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_marketId;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMarketId:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = TRANSITPbTransitTile;
  return [NSString stringWithFormat:@"%@ %@", [(TRANSITPbTransitTile *)&v3 description], [(TRANSITPbTransitTile *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_version), @"version"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_tileX), @"tileX"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_tileY), @"tileY"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", self->_securityKey), @"securityKey"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_19:
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_generationTimeSecs), @"generationTimeSecs"}];
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_expirationAgeSecs), @"expirationAgeSecs"}];
  }

LABEL_8:
  dEPRECATEDFingerprints = self->_dEPRECATEDFingerprints;
  if (dEPRECATEDFingerprints)
  {
    [v3 setObject:-[TRANSITPbLocationFingerprintsV1 dictionaryRepresentation](dEPRECATEDFingerprints forKey:{"dictionaryRepresentation"), @"DEPRECATED_fingerprints"}];
  }

  fingerprints = self->_fingerprints;
  if (fingerprints)
  {
    [v3 setObject:-[TRANSITPbLocationFingerprints dictionaryRepresentation](fingerprints forKey:{"dictionaryRepresentation"), @"fingerprints"}];
  }

  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", self->_marketId), @"marketId"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
  if (self->_dEPRECATEDFingerprints)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_fingerprints)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(a3 + 16) = self->_version;
    *(a3 + 68) |= 0x40u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 14) = self->_tileX;
  *(a3 + 68) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 15) = self->_tileY;
  *(a3 + 68) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 3) = self->_securityKey;
  *(a3 + 68) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  *(a3 + 1) = *&self->_generationTimeSecs;
  *(a3 + 68) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(a3 + 10) = self->_expirationAgeSecs;
    *(a3 + 68) |= 8u;
  }

LABEL_8:
  if (self->_dEPRECATEDFingerprints)
  {
    [a3 setDEPRECATEDFingerprints:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 2) = self->_marketId;
    *(a3 + 68) |= 2u;
  }

  if (self->_fingerprints)
  {

    [a3 setFingerprints:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v5 + 16) = self->_version;
    *(v5 + 68) |= 0x40u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 14) = self->_tileX;
  *(v5 + 68) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 15) = self->_tileY;
  *(v5 + 68) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5[3] = self->_securityKey;
  *(v5 + 68) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v5[1] = *&self->_generationTimeSecs;
  *(v5 + 68) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(v5 + 10) = self->_expirationAgeSecs;
    *(v5 + 68) |= 8u;
  }

LABEL_8:

  v6[4] = [(TRANSITPbLocationFingerprintsV1 *)self->_dEPRECATEDFingerprints copyWithZone:a3];
  if ((*&self->_has & 2) != 0)
  {
    v6[2] = self->_marketId;
    *(v6 + 68) |= 2u;
  }

  v6[6] = [(TRANSITPbLocationFingerprints *)self->_fingerprints copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    if ((has & 0x40) != 0)
    {
      if ((*(a3 + 68) & 0x40) == 0 || self->_version != *(a3 + 16))
      {
        goto LABEL_42;
      }
    }

    else if ((*(a3 + 68) & 0x40) != 0)
    {
LABEL_42:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 68) & 0x10) == 0 || self->_tileX != *(a3 + 14))
      {
        goto LABEL_42;
      }
    }

    else if ((*(a3 + 68) & 0x10) != 0)
    {
      goto LABEL_42;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 68) & 0x20) == 0 || self->_tileY != *(a3 + 15))
      {
        goto LABEL_42;
      }
    }

    else if ((*(a3 + 68) & 0x20) != 0)
    {
      goto LABEL_42;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 68) & 4) == 0 || self->_securityKey != *(a3 + 3))
      {
        goto LABEL_42;
      }
    }

    else if ((*(a3 + 68) & 4) != 0)
    {
      goto LABEL_42;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 68) & 1) == 0 || self->_generationTimeSecs != *(a3 + 1))
      {
        goto LABEL_42;
      }
    }

    else if (*(a3 + 68))
    {
      goto LABEL_42;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 68) & 8) == 0 || self->_expirationAgeSecs != *(a3 + 10))
      {
        goto LABEL_42;
      }
    }

    else if ((*(a3 + 68) & 8) != 0)
    {
      goto LABEL_42;
    }

    dEPRECATEDFingerprints = self->_dEPRECATEDFingerprints;
    if (dEPRECATEDFingerprints | *(a3 + 4))
    {
      v5 = [(TRANSITPbLocationFingerprintsV1 *)dEPRECATEDFingerprints isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(a3 + 68) & 2) == 0 || self->_marketId != *(a3 + 2))
      {
        goto LABEL_42;
      }
    }

    else if ((*(a3 + 68) & 2) != 0)
    {
      goto LABEL_42;
    }

    fingerprints = self->_fingerprints;
    if (fingerprints | *(a3 + 6))
    {

      LOBYTE(v5) = [(TRANSITPbLocationFingerprints *)fingerprints isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x40) != 0)
  {
    v5 = 2654435761 * self->_version;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_tileX;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_tileY;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v8 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_12:
  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v8 = 2654435761u * self->_securityKey;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  generationTimeSecs = self->_generationTimeSecs;
  if (generationTimeSecs < 0.0)
  {
    generationTimeSecs = -generationTimeSecs;
  }

  *v2.i64 = floor(generationTimeSecs + 0.5);
  v10 = (generationTimeSecs - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v3, v2).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_15:
  if ((*&self->_has & 8) != 0)
  {
    v13 = 2654435761 * self->_expirationAgeSecs;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(TRANSITPbLocationFingerprintsV1 *)self->_dEPRECATEDFingerprints hash];
  if ((*&self->_has & 2) != 0)
  {
    v15 = 2654435761u * self->_marketId;
  }

  else
  {
    v15 = 0;
  }

  return v6 ^ v5 ^ v7 ^ v8 ^ v12 ^ v13 ^ v15 ^ v14 ^ [(TRANSITPbLocationFingerprints *)self->_fingerprints hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 68);
  if ((v5 & 0x40) != 0)
  {
    self->_version = *(a3 + 16);
    *&self->_has |= 0x40u;
    v5 = *(a3 + 68);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a3 + 68) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_tileX = *(a3 + 14);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_tileY = *(a3 + 15);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_securityKey = *(a3 + 3);
  *&self->_has |= 4u;
  v5 = *(a3 + 68);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_generationTimeSecs = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 68) & 8) != 0)
  {
LABEL_7:
    self->_expirationAgeSecs = *(a3 + 10);
    *&self->_has |= 8u;
  }

LABEL_8:
  dEPRECATEDFingerprints = self->_dEPRECATEDFingerprints;
  v7 = *(a3 + 4);
  if (dEPRECATEDFingerprints)
  {
    if (v7)
    {
      [(TRANSITPbLocationFingerprintsV1 *)dEPRECATEDFingerprints mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(TRANSITPbTransitTile *)self setDEPRECATEDFingerprints:?];
  }

  if ((*(a3 + 68) & 2) != 0)
  {
    self->_marketId = *(a3 + 2);
    *&self->_has |= 2u;
  }

  fingerprints = self->_fingerprints;
  v9 = *(a3 + 6);
  if (fingerprints)
  {
    if (v9)
    {

      [(TRANSITPbLocationFingerprints *)fingerprints mergeFrom:?];
    }
  }

  else if (v9)
  {

    [(TRANSITPbTransitTile *)self setFingerprints:?];
  }
}

@end