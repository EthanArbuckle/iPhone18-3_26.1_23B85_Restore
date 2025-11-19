@interface SDUnlockSessionKeyExchangeRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSessionID:(BOOL)a3;
- (void)setHasUsingRecord:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDUnlockSessionKeyExchangeRequest

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

- (void)setHasUsingRecord:(BOOL)a3
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
  v7.super_class = SDUnlockSessionKeyExchangeRequest;
  v3 = [(SDUnlockSessionKeyExchangeRequest *)&v7 description];
  v4 = [(SDUnlockSessionKeyExchangeRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[7] = self->_version;
    *(v4 + 36) |= 4u;
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

  v4[6] = self->_sessionID;
  *(v4 + 36) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(v4 + 32) = self->_usingRecord;
    *(v4 + 36) |= 8u;
  }

LABEL_5:
  if (self->_key)
  {
    v6 = v4;
    [v4 setKey:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    v4[2] = self->_errorCode;
    *(v4 + 36) |= 1u;
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
  v8 = [(NSData *)self->_key copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  if (*&self->_has)
  {
    *(v6 + 2) = self->_errorCode;
    *(v6 + 36) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_version != *(v4 + 7))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_sessionID != *(v4 + 6))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0)
    {
      goto LABEL_22;
    }

    v10 = *(v4 + 32);
    if (self->_usingRecord)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 36) & 8) != 0)
  {
    goto LABEL_22;
  }

  key = self->_key;
  if (!(key | *(v4 + 2)))
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
  v8 = (*(v4 + 36) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_errorCode != *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 4) != 0)
  {
    self->_version = *(v4 + 7);
    *&self->_has |= 4u;
    v5 = *(v4 + 36);
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

  else if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_sessionID = *(v4 + 6);
  *&self->_has |= 2u;
  if ((*(v4 + 36) & 8) != 0)
  {
LABEL_4:
    self->_usingRecord = *(v4 + 32);
    *&self->_has |= 8u;
  }

LABEL_5:
  if (*(v4 + 2))
  {
    v6 = v4;
    [(SDUnlockSessionKeyExchangeRequest *)self setKey:?];
    v4 = v6;
  }

  if (*(v4 + 36))
  {
    self->_errorCode = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end