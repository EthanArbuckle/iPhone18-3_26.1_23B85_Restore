@interface SDUnlockStashKeyExchangeResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSessionID:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDUnlockStashKeyExchangeResponse

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasSessionID:(BOOL)a3
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
  v7.super_class = SDUnlockStashKeyExchangeResponse;
  v3 = [(SDUnlockStashKeyExchangeResponse *)&v7 description];
  v4 = [(SDUnlockStashKeyExchangeResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_sessionID];
    [v3 setObject:v6 forKey:@"sessionID"];
  }

  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  if (*&self->_has)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v8 forKey:@"errorCode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    sessionID = self->_sessionID;
    PBDataWriterWriteUint32Field();
  }

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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[7] = self->_version;
    *(v4 + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[6] = self->_sessionID;
    *(v4 + 32) |= 2u;
  }

  if (self->_key)
  {
    v6 = v4;
    [v4 setKey:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    v4[2] = self->_errorCode;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5[7] = self->_version;
    *(v5 + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[6] = self->_sessionID;
    *(v5 + 32) |= 2u;
  }

  v8 = [(NSData *)self->_key copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  if (*&self->_has)
  {
    *(v6 + 2) = self->_errorCode;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_version != *(v4 + 7))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_sessionID != *(v4 + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_19;
  }

  key = self->_key;
  if (key | *(v4 + 2))
  {
    if (![(NSData *)key isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 32) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_errorCode != *(v4 + 2))
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
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_version;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_sessionID;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSData *)self->_key hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_errorCode;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 4) != 0)
  {
    self->_version = *(v4 + 7);
    *&self->_has |= 4u;
    v5 = *(v4 + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_sessionID = *(v4 + 6);
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    v6 = v4;
    [(SDUnlockStashKeyExchangeResponse *)self setKey:?];
    v4 = v6;
  }

  if (*(v4 + 32))
  {
    self->_errorCode = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end