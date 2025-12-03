@interface SDUnlockSessionKeyExchangeRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSessionID:(BOOL)d;
- (void)setHasUsingRecord:(BOOL)record;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation SDUnlockSessionKeyExchangeRequest

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSessionID:(BOOL)d
{
  if (d)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasUsingRecord:(BOOL)record
{
  if (record)
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
  v7.super_class = SDUnlockSessionKeyExchangeRequest;
  v3 = [(SDUnlockSessionKeyExchangeRequest *)&v7 description];
  dictionaryRepresentation = [(SDUnlockSessionKeyExchangeRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v9 forKey:@"version"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [NSNumber numberWithUnsignedInt:self->_sessionID];
  [v3 setObject:v10 forKey:@"sessionID"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v5 = [NSNumber numberWithBool:self->_usingRecord];
    [v3 setObject:v5 forKey:@"usingRecord"];
  }

LABEL_5:
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v7 forKey:@"errorCode"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  sessionID = self->_sessionID;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    usingRecord = self->_usingRecord;
    PBDataWriterWriteBOOLField();
  }

LABEL_5:
  if (self->_key)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[7] = self->_version;
    *(toCopy + 36) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[6] = self->_sessionID;
  *(toCopy + 36) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(toCopy + 32) = self->_usingRecord;
    *(toCopy + 36) |= 8u;
  }

LABEL_5:
  if (self->_key)
  {
    v6 = toCopy;
    [toCopy setKey:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    toCopy[2] = self->_errorCode;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5[7] = self->_version;
    *(v5 + 36) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v5[6] = self->_sessionID;
  *(v5 + 36) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(v5 + 32) = self->_usingRecord;
    *(v5 + 36) |= 8u;
  }

LABEL_5:
  v8 = [(NSData *)self->_key copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  if (*&self->_has)
  {
    *(v6 + 2) = self->_errorCode;
    *(v6 + 36) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_version != *(equalCopy + 7))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_sessionID != *(equalCopy + 6))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) == 0)
    {
      goto LABEL_22;
    }

    v10 = *(equalCopy + 32);
    if (self->_usingRecord)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 36) & 8) != 0)
  {
    goto LABEL_22;
  }

  key = self->_key;
  if (!(key | *(equalCopy + 2)))
  {
    goto LABEL_17;
  }

  if (![(NSData *)key isEqual:?])
  {
LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  has = self->_has;
LABEL_17:
  v8 = (*(equalCopy + 36) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_errorCode != *(equalCopy + 2))
    {
      goto LABEL_22;
    }

    v8 = 1;
  }

LABEL_23:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761 * self->_version;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_sessionID;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_usingRecord;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSData *)self->_key hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_errorCode;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v7 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if ((v5 & 4) != 0)
  {
    self->_version = *(fromCopy + 7);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 36);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_sessionID = *(fromCopy + 6);
  *&self->_has |= 2u;
  if ((*(fromCopy + 36) & 8) != 0)
  {
LABEL_4:
    self->_usingRecord = *(fromCopy + 32);
    *&self->_has |= 8u;
  }

LABEL_5:
  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(SDUnlockSessionKeyExchangeRequest *)self setKey:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 36))
  {
    self->_errorCode = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end