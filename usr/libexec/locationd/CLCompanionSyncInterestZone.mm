@interface CLCompanionSyncInterestZone
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)authMask;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAuthMask:(BOOL)mask;
- (void)setHasClearClient:(BOOL)client;
- (void)setHasCorrectiveCompensationMask:(BOOL)mask;
- (void)setHasLongitude:(BOOL)longitude;
- (void)setHasPhenolicLocation:(BOOL)location;
- (void)setHasProvenance:(BOOL)provenance;
- (void)setHasRadius:(BOOL)radius;
- (void)setHasServiceMaskOperator:(BOOL)operator;
- (void)setHasZoneType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation CLCompanionSyncInterestZone

- (void)dealloc
{
  [(CLCompanionSyncInterestZone *)self setZoneIdentifier:0];
  v3.receiver = self;
  v3.super_class = CLCompanionSyncInterestZone;
  [(CLCompanionSyncInterestZone *)&v3 dealloc];
}

- (unsigned)authMask
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_authMask;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAuthMask:(BOOL)mask
{
  if (mask)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasCorrectiveCompensationMask:(BOOL)mask
{
  if (mask)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasZoneType:(BOOL)type
{
  if (type)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasLongitude:(BOOL)longitude
{
  if (longitude)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasRadius:(BOOL)radius
{
  if (radius)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPhenolicLocation:(BOOL)location
{
  if (location)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasServiceMaskOperator:(BOOL)operator
{
  if (operator)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasProvenance:(BOOL)provenance
{
  if (provenance)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasClearClient:(BOOL)client
{
  if (client)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CLCompanionSyncInterestZone;
  return [NSString stringWithFormat:@"%@ %@", [(CLCompanionSyncInterestZone *)&v3 description], [(CLCompanionSyncInterestZone *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    [v3 setObject:zoneIdentifier forKey:@"zoneIdentifier"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_authMask), @"authMask"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_5:
      if ((has & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_correctiveCompensationMask), @"correctiveCompensationMask"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_zoneType), @"zoneType"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_latitude), @"latitude"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_longitude), @"longitude"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_radius), @"radius"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_phenolicLocation), @"phenolicLocation"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_provenance), @"provenance"}];
    if ((*&self->_has & 0x200) == 0)
    {
      return v4;
    }

    goto LABEL_13;
  }

LABEL_22:
  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_serviceMaskOperator), @"serviceMaskOperator"}];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((has & 0x200) != 0)
  {
LABEL_13:
    [v4 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_clearClient), @"clearClient"}];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (!self->_zoneIdentifier)
  {
    sub_1018F5594();
  }

  PBDataWriterWriteStringField();
  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_4:
      if ((has & 0x100) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_4;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x200) == 0)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_20:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  if ((has & 0x200) == 0)
  {
    return;
  }

LABEL_22:

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  [to setZoneIdentifier:self->_zoneIdentifier];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(to + 8) = self->_authMask;
    *(to + 36) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(to + 9) = self->_correctiveCompensationMask;
  *(to + 36) |= 0x10u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 16) = self->_zoneType;
  *(to + 36) |= 0x100u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 1) = *&self->_latitude;
  *(to + 36) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 2) = *&self->_longitude;
  *(to + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 3) = *&self->_radius;
  *(to + 36) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 10) = self->_phenolicLocation;
  *(to + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 12) = self->_serviceMaskOperator;
  *(to + 36) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(to + 11) = self->_provenance;
  *(to + 36) |= 0x40u;
  if ((*&self->_has & 0x200) == 0)
  {
    return;
  }

LABEL_11:
  *(to + 68) = self->_clearClient;
  *(to + 36) |= 0x200u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  v5[7] = [(NSString *)self->_zoneIdentifier copyWithZone:zone];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 8) = self->_authMask;
    *(v5 + 36) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 9) = self->_correctiveCompensationMask;
  *(v5 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 16) = self->_zoneType;
  *(v5 + 36) |= 0x100u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5[1] = *&self->_latitude;
  *(v5 + 36) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5[2] = *&self->_longitude;
  *(v5 + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5[3] = *&self->_radius;
  *(v5 + 36) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 10) = self->_phenolicLocation;
  *(v5 + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    *(v5 + 11) = self->_provenance;
    *(v5 + 36) |= 0x40u;
    if ((*&self->_has & 0x200) == 0)
    {
      return v5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + 12) = self->_serviceMaskOperator;
  *(v5 + 36) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((has & 0x200) != 0)
  {
LABEL_11:
    *(v5 + 68) = self->_clearClient;
    *(v5 + 36) |= 0x200u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    zoneIdentifier = self->_zoneIdentifier;
    if (!(zoneIdentifier | *(equal + 7)) || (v5 = [(NSString *)zoneIdentifier isEqual:?]) != 0)
    {
      has = self->_has;
      v8 = *(equal + 36);
      if ((has & 8) != 0)
      {
        if ((v8 & 8) == 0 || self->_authMask != *(equal + 8))
        {
          goto LABEL_51;
        }
      }

      else if ((v8 & 8) != 0)
      {
        goto LABEL_51;
      }

      if ((has & 0x10) != 0)
      {
        if ((v8 & 0x10) == 0 || self->_correctiveCompensationMask != *(equal + 9))
        {
          goto LABEL_51;
        }
      }

      else if ((v8 & 0x10) != 0)
      {
        goto LABEL_51;
      }

      if ((*&self->_has & 0x100) != 0)
      {
        if ((*(equal + 36) & 0x100) == 0 || self->_zoneType != *(equal + 16))
        {
          goto LABEL_51;
        }
      }

      else if ((*(equal + 36) & 0x100) != 0)
      {
        goto LABEL_51;
      }

      if (has)
      {
        if ((v8 & 1) == 0 || self->_latitude != *(equal + 1))
        {
          goto LABEL_51;
        }
      }

      else if (v8)
      {
        goto LABEL_51;
      }

      if ((has & 2) != 0)
      {
        if ((v8 & 2) == 0 || self->_longitude != *(equal + 2))
        {
          goto LABEL_51;
        }
      }

      else if ((v8 & 2) != 0)
      {
        goto LABEL_51;
      }

      if ((has & 4) != 0)
      {
        if ((v8 & 4) == 0 || self->_radius != *(equal + 3))
        {
          goto LABEL_51;
        }
      }

      else if ((v8 & 4) != 0)
      {
        goto LABEL_51;
      }

      if ((has & 0x20) != 0)
      {
        if ((v8 & 0x20) == 0 || self->_phenolicLocation != *(equal + 10))
        {
          goto LABEL_51;
        }
      }

      else if ((v8 & 0x20) != 0)
      {
        goto LABEL_51;
      }

      if ((has & 0x80) != 0)
      {
        if ((v8 & 0x80) == 0 || self->_serviceMaskOperator != *(equal + 12))
        {
          goto LABEL_51;
        }
      }

      else if ((v8 & 0x80) != 0)
      {
        goto LABEL_51;
      }

      if ((has & 0x40) != 0)
      {
        if ((v8 & 0x40) == 0 || self->_provenance != *(equal + 11))
        {
          goto LABEL_51;
        }
      }

      else if ((v8 & 0x40) != 0)
      {
        goto LABEL_51;
      }

      LOBYTE(v5) = (v8 & 0x200) == 0;
      if ((*&self->_has & 0x200) != 0)
      {
        if ((*(equal + 36) & 0x200) == 0)
        {
LABEL_51:
          LOBYTE(v5) = 0;
          return v5;
        }

        if (self->_clearClient)
        {
          if ((*(equal + 68) & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        else if (*(equal + 68))
        {
          goto LABEL_51;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_zoneIdentifier hash];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v7 = 2654435761 * self->_authMask;
    if ((has & 0x10) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_correctiveCompensationMask;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v9 = 0;
      if (has)
      {
        goto LABEL_5;
      }

LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v9 = 2654435761 * self->_zoneType;
  if ((has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  latitude = self->_latitude;
  if (latitude < 0.0)
  {
    latitude = -latitude;
  }

  *v4.i64 = floor(latitude + 0.5);
  v11 = (latitude - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v12), v5, v4);
  v13 = 2654435761u * *v4.i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_13:
  if ((has & 2) != 0)
  {
    longitude = self->_longitude;
    if (longitude < 0.0)
    {
      longitude = -longitude;
    }

    *v4.i64 = floor(longitude + 0.5);
    v16 = (longitude - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v17), v5, v4);
    v14 = 2654435761u * *v4.i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((has & 4) != 0)
  {
    radius = self->_radius;
    if (radius < 0.0)
    {
      radius = -radius;
    }

    *v4.i64 = floor(radius + 0.5);
    v20 = (radius - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v5, v4).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((has & 0x20) != 0)
  {
    v22 = 2654435761 * self->_phenolicLocation;
    if ((has & 0x80) != 0)
    {
LABEL_33:
      v23 = 2654435761 * self->_serviceMaskOperator;
      if ((has & 0x40) != 0)
      {
        goto LABEL_34;
      }

LABEL_38:
      v24 = 0;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_35;
      }

LABEL_39:
      v25 = 0;
      return v7 ^ v3 ^ v8 ^ v9 ^ v13 ^ v14 ^ v18 ^ v22 ^ v23 ^ v24 ^ v25;
    }
  }

  else
  {
    v22 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_33;
    }
  }

  v23 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  v24 = 2654435761 * self->_provenance;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  v25 = 2654435761 * self->_clearClient;
  return v7 ^ v3 ^ v8 ^ v9 ^ v13 ^ v14 ^ v18 ^ v22 ^ v23 ^ v24 ^ v25;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 7))
  {
    [(CLCompanionSyncInterestZone *)self setZoneIdentifier:?];
  }

  v5 = *(from + 36);
  if ((v5 & 8) != 0)
  {
    self->_authMask = *(from + 8);
    *&self->_has |= 8u;
    v5 = *(from + 36);
    if ((v5 & 0x10) == 0)
    {
LABEL_5:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_5;
  }

  self->_correctiveCompensationMask = *(from + 9);
  *&self->_has |= 0x10u;
  v5 = *(from + 36);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_zoneType = *(from + 16);
  *&self->_has |= 0x100u;
  v5 = *(from + 36);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_latitude = *(from + 1);
  *&self->_has |= 1u;
  v5 = *(from + 36);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_longitude = *(from + 2);
  *&self->_has |= 2u;
  v5 = *(from + 36);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_radius = *(from + 3);
  *&self->_has |= 4u;
  v5 = *(from + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_phenolicLocation = *(from + 10);
  *&self->_has |= 0x20u;
  v5 = *(from + 36);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_serviceMaskOperator = *(from + 12);
  *&self->_has |= 0x80u;
  v5 = *(from + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_23:
  self->_provenance = *(from + 11);
  *&self->_has |= 0x40u;
  if ((*(from + 36) & 0x200) == 0)
  {
    return;
  }

LABEL_13:
  self->_clearClient = *(from + 68);
  *&self->_has |= 0x200u;
}

@end