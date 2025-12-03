@interface _NMRMediaRemoteSetIconMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOriginIdentifier:(BOOL)identifier;
- (void)writeTo:(id)to;
@end

@implementation _NMRMediaRemoteSetIconMessage

- (void)setHasOriginIdentifier:(BOOL)identifier
{
  if (identifier)
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
  dictionaryRepresentation = [(_NMRMediaRemoteSetIconMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_iconData)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_originalDigest)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    originIdentifier = self->_originIdentifier;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_iconData)
  {
    [toCopy setIconData:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_timestamp;
    *(toCopy + 48) |= 1u;
  }

  if (self->_originalDigest)
  {
    [v5 setOriginalDigest:?];
    toCopy = v5;
  }

  if (self->_bundleID)
  {
    [v5 setBundleID:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 8) = self->_originIdentifier;
    *(toCopy + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_iconData copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  if (*&self->_has)
  {
    v5[1] = *&self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v8 = [(NSData *)self->_originalDigest copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSString *)self->_bundleID copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 8) = self->_originIdentifier;
    *(v5 + 48) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  iconData = self->_iconData;
  if (iconData | *(equalCopy + 3))
  {
    if (![(NSData *)iconData isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v6 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  originalDigest = self->_originalDigest;
  if (originalDigest | *(equalCopy + 5) && ![(NSData *)originalDigest isEqual:?])
  {
    goto LABEL_17;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 2))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = (*(equalCopy + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_originIdentifier != *(equalCopy + 8))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(_NMRMediaRemoteSetIconMessage *)self setIconData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 48))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(_NMRMediaRemoteSetIconMessage *)self setOriginalDigest:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(_NMRMediaRemoteSetIconMessage *)self setBundleID:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 48) & 2) != 0)
  {
    self->_originIdentifier = *(fromCopy + 8);
    *&self->_has |= 2u;
  }
}

@end