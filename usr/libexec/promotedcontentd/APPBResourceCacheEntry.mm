@interface APPBResourceCacheEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBResourceCacheEntry

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBResourceCacheEntry;
  v3 = [(APPBResourceCacheEntry *)&v7 description];
  dictionaryRepresentation = [(APPBResourceCacheEntry *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uRL = self->_uRL;
  if (uRL)
  {
    [v3 setObject:uRL forKey:@"URL"];
  }

  adIdentifier = self->_adIdentifier;
  if (adIdentifier)
  {
    [v4 setObject:adIdentifier forKey:@"adIdentifier"];
  }

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithDouble:self->_expirationDate];
    [v4 setObject:v7 forKey:@"expirationDate"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uRL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_adIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uRL)
  {
    [toCopy setURL:?];
    toCopy = v5;
  }

  if (self->_adIdentifier)
  {
    [v5 setAdIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_expirationDate;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uRL copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_adIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  if (*&self->_has)
  {
    v5[1] = *&self->_expirationDate;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  uRL = self->_uRL;
  if (uRL | *(equalCopy + 3))
  {
    if (![(NSString *)uRL isEqual:?])
    {
      goto LABEL_10;
    }
  }

  adIdentifier = self->_adIdentifier;
  if (adIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)adIdentifier isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_expirationDate == *(equalCopy + 1))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uRL hash];
  v4 = [(NSString *)self->_adIdentifier hash];
  if (*&self->_has)
  {
    expirationDate = self->_expirationDate;
    if (expirationDate < 0.0)
    {
      expirationDate = -expirationDate;
    }

    *v5.i64 = floor(expirationDate + 0.5);
    v9 = (expirationDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(APPBResourceCacheEntry *)self setURL:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(APPBResourceCacheEntry *)self setAdIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    self->_expirationDate = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end