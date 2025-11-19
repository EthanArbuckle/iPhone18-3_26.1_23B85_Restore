@interface _NMRMediaRemoteSetIconMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOriginIdentifier:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _NMRMediaRemoteSetIconMessage

- (void)setHasOriginIdentifier:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = _NMRMediaRemoteSetIconMessage;
  v3 = [(_NMRMediaRemoteSetIconMessage *)&v7 description];
  v4 = [(_NMRMediaRemoteSetIconMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  iconData = self->_iconData;
  if (iconData)
  {
    [v3 setObject:iconData forKey:@"iconData"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithDouble:self->_timestamp];
    [v4 setObject:v6 forKey:@"timestamp"];
  }

  originalDigest = self->_originalDigest;
  if (originalDigest)
  {
    [v4 setObject:originalDigest forKey:@"originalDigest"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v4 setObject:bundleID forKey:@"bundleID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [NSNumber numberWithInt:self->_originIdentifier];
    [v4 setObject:v9 forKey:@"originIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_iconData)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_originalDigest)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    originIdentifier = self->_originIdentifier;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_iconData)
  {
    [v4 setIconData:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_timestamp;
    *(v4 + 48) |= 1u;
  }

  if (self->_originalDigest)
  {
    [v5 setOriginalDigest:?];
    v4 = v5;
  }

  if (self->_bundleID)
  {
    [v5 setBundleID:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 8) = self->_originIdentifier;
    *(v4 + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_iconData copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  if (*&self->_has)
  {
    v5[1] = *&self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v8 = [(NSData *)self->_originalDigest copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSString *)self->_bundleID copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 8) = self->_originIdentifier;
    *(v5 + 48) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  iconData = self->_iconData;
  if (iconData | *(v4 + 3))
  {
    if (![(NSData *)iconData isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v6 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  originalDigest = self->_originalDigest;
  if (originalDigest | *(v4 + 5) && ![(NSData *)originalDigest isEqual:?])
  {
    goto LABEL_17;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 2))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = (*(v4 + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_originIdentifier != *(v4 + 8))
    {
      goto LABEL_17;
    }

    v9 = 1;
  }

LABEL_18:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_iconData hash];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v4.i64 = floor(timestamp + 0.5);
    v8 = (timestamp - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = [(NSData *)self->_originalDigest hash];
  v11 = [(NSString *)self->_bundleID hash];
  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_originIdentifier;
  }

  else
  {
    v12 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(_NMRMediaRemoteSetIconMessage *)self setIconData:?];
    v4 = v5;
  }

  if (*(v4 + 48))
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(_NMRMediaRemoteSetIconMessage *)self setOriginalDigest:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(_NMRMediaRemoteSetIconMessage *)self setBundleID:?];
    v4 = v5;
  }

  if ((*(v4 + 48) & 2) != 0)
  {
    self->_originIdentifier = *(v4 + 8);
    *&self->_has |= 2u;
  }
}

@end