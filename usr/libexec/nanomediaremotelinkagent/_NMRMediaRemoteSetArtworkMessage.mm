@interface _NMRMediaRemoteSetArtworkMessage
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

@implementation _NMRMediaRemoteSetArtworkMessage

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
  v7.super_class = _NMRMediaRemoteSetArtworkMessage;
  v3 = [(_NMRMediaRemoteSetArtworkMessage *)&v7 description];
  dictionaryRepresentation = [(_NMRMediaRemoteSetArtworkMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  jpegData = self->_jpegData;
  if (jpegData)
  {
    [v3 setObject:jpegData forKey:@"jpegData"];
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

  if ((*&self->_has & 2) != 0)
  {
    v8 = [NSNumber numberWithInt:self->_originIdentifier];
    [v4 setObject:v8 forKey:@"originIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_jpegData)
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
  if (self->_jpegData)
  {
    [toCopy setJpegData:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_timestamp;
    *(toCopy + 40) |= 1u;
  }

  if (self->_originalDigest)
  {
    [v5 setOriginalDigest:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 6) = self->_originIdentifier;
    *(toCopy + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_jpegData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    v5[1] = *&self->_timestamp;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSData *)self->_originalDigest copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 6) = self->_originIdentifier;
    *(v5 + 40) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  jpegData = self->_jpegData;
  if (jpegData | *(equalCopy + 2))
  {
    if (![(NSData *)jpegData isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 40);
  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_16;
  }

  originalDigest = self->_originalDigest;
  if (originalDigest | *(equalCopy + 4))
  {
    if (![(NSData *)originalDigest isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    has = self->_has;
  }

  v9 = (*(equalCopy + 40) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_originIdentifier != *(equalCopy + 6))
    {
      goto LABEL_16;
    }

    v9 = 1;
  }

LABEL_17:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_jpegData hash];
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
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_originIdentifier;
  }

  else
  {
    v11 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(_NMRMediaRemoteSetArtworkMessage *)self setJpegData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 40))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(_NMRMediaRemoteSetArtworkMessage *)self setOriginalDigest:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 40) & 2) != 0)
  {
    self->_originIdentifier = *(fromCopy + 6);
    *&self->_has |= 2u;
  }
}

@end