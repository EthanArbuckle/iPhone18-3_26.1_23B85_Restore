@interface APPBConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsTest:(BOOL)test;
- (void)setHasRequestType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation APPBConfiguration

- (void)setHasRequestType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsTest:(BOOL)test
{
  if (test)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBConfiguration;
  v3 = [(APPBConfiguration *)&v7 description];
  dictionaryRepresentation = [(APPBConfiguration *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithInt:self->_requestType];
    [v4 setObject:v7 forKey:@"requestType"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_isTest];
    [v4 setObject:v8 forKey:@"isTest"];
  }

  baseUrl = self->_baseUrl;
  if (baseUrl)
  {
    [v4 setObject:baseUrl forKey:@"baseUrl"];
  }

  if (*&self->_has)
  {
    v10 = [NSNumber numberWithDouble:self->_expirationDate];
    [v4 setObject:v10 forKey:@"expirationDate"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_baseUrl)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 8) = self->_requestType;
    *(toCopy + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 36) = self->_isTest;
    *(toCopy + 40) |= 4u;
  }

  if (self->_baseUrl)
  {
    [v6 setBaseUrl:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_expirationDate;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 8) = self->_requestType;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 36) = self->_isTest;
    *(v5 + 40) |= 4u;
  }

  v9 = [(NSString *)self->_baseUrl copyWithZone:zone];
  v10 = v5[2];
  v5[2] = v9;

  if (*&self->_has)
  {
    v5[1] = *&self->_expirationDate;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 3))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_requestType != *(equalCopy + 8))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0)
    {
      goto LABEL_19;
    }

    if (self->_isTest)
    {
      if ((*(equalCopy + 36) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(equalCopy + 36))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_19;
  }

  baseUrl = self->_baseUrl;
  if (!(baseUrl | *(equalCopy + 2)))
  {
    goto LABEL_14;
  }

  if (![(NSString *)baseUrl isEqual:?])
  {
LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  has = self->_has;
LABEL_14:
  v8 = (*(equalCopy + 40) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_expirationDate != *(equalCopy + 1))
    {
      goto LABEL_19;
    }

    v8 = 1;
  }

LABEL_20:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_requestType;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_isTest;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_baseUrl hash];
  if (*&self->_has)
  {
    expirationDate = self->_expirationDate;
    if (expirationDate < 0.0)
    {
      expirationDate = -expirationDate;
    }

    *v7.i64 = floor(expirationDate + 0.5);
    v11 = (expirationDate - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v8, v7).i64;
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

  return v4 ^ v3 ^ v5 ^ v6 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(APPBConfiguration *)self setBundleId:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 40);
  if ((v5 & 2) != 0)
  {
    self->_requestType = *(fromCopy + 8);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 40);
  }

  if ((v5 & 4) != 0)
  {
    self->_isTest = *(fromCopy + 36);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 2))
  {
    [(APPBConfiguration *)self setBaseUrl:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 40))
  {
    self->_expirationDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end