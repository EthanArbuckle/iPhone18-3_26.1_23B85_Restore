@interface _NMRMediaRemoteGetIconMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOriginIdentifier:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasWidth:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _NMRMediaRemoteGetIconMessage

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasWidth:(BOOL)a3
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

- (void)setHasOriginIdentifier:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = _NMRMediaRemoteGetIconMessage;
  v3 = [(_NMRMediaRemoteGetIconMessage *)&v7 description];
  v4 = [(_NMRMediaRemoteGetIconMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [NSNumber numberWithDouble:self->_timestamp];
    [v3 setObject:v9 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v10 = [NSNumber numberWithDouble:self->_width];
  [v3 setObject:v10 forKey:@"width"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [NSNumber numberWithDouble:self->_height];
    [v3 setObject:v5 forKey:@"height"];
  }

LABEL_5:
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v7 = [NSNumber numberWithInt:self->_originIdentifier];
    [v3 setObject:v7 forKey:@"originIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  width = self->_width;
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
LABEL_4:
    height = self->_height;
    PBDataWriterWriteDoubleField();
  }

LABEL_5:
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    originIdentifier = self->_originIdentifier;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = *&self->_timestamp;
    *(v4 + 44) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[3] = *&self->_width;
  *(v4 + 44) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    v4[1] = *&self->_height;
    *(v4 + 44) |= 1u;
  }

LABEL_5:
  if (self->_bundleID)
  {
    v6 = v4;
    [v4 setBundleID:?];
    v4 = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 10) = self->_originIdentifier;
    *(v4 + 44) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[2] = *&self->_timestamp;
    *(v5 + 44) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v5[3] = *&self->_width;
  *(v5 + 44) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    v5[1] = *&self->_height;
    *(v5 + 44) |= 1u;
  }

LABEL_5:
  v8 = [(NSString *)self->_bundleID copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 10) = self->_originIdentifier;
    *(v6 + 44) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = *(v4 + 44);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_width != *(v4 + 3))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_height != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_24;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 4))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
LABEL_24:
      v8 = 0;
      goto LABEL_25;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 44) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0 || self->_originIdentifier != *(v4 + 10))
    {
      goto LABEL_24;
    }

    v8 = 1;
  }

LABEL_25:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v2.i64 = floor(timestamp + 0.5);
    v7 = (timestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
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

  if ((*&self->_has & 4) != 0)
  {
    width = self->_width;
    if (width < 0.0)
    {
      width = -width;
    }

    *v2.i64 = floor(width + 0.5);
    v11 = (width - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
    v9 = 2654435761u * *v2.i64;
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

  if (*&self->_has)
  {
    height = self->_height;
    if (height < 0.0)
    {
      height = -height;
    }

    *v2.i64 = floor(height + 0.5);
    v15 = (height - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v3, v2).i64;
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

  v17 = [(NSString *)self->_bundleID hash];
  if ((*&self->_has & 8) != 0)
  {
    v18 = 2654435761 * self->_originIdentifier;
  }

  else
  {
    v18 = 0;
  }

  return v9 ^ v5 ^ v13 ^ v18 ^ v17;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 44);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_width = *(v4 + 3);
  *&self->_has |= 4u;
  if (*(v4 + 44))
  {
LABEL_4:
    self->_height = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(v4 + 4))
  {
    v6 = v4;
    [(_NMRMediaRemoteGetIconMessage *)self setBundleID:?];
    v4 = v6;
  }

  if ((*(v4 + 44) & 8) != 0)
  {
    self->_originIdentifier = *(v4 + 10);
    *&self->_has |= 8u;
  }
}

@end