@interface SDUnlockReset
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

@implementation SDUnlockReset

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
  v7.super_class = SDUnlockReset;
  v3 = [(SDUnlockReset *)&v7 description];
  v4 = [(SDUnlockReset *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v8 forKey:@"version"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  v9 = [NSNumber numberWithUnsignedInt:self->_sessionID];
  [v3 setObject:v9 forKey:@"sessionID"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [NSNumber numberWithUnsignedInt:self->_resetReason];
    [v3 setObject:v5 forKey:@"resetReason"];
  }

LABEL_5:
  errorString = self->_errorString;
  if (errorString)
  {
    [v3 setObject:errorString forKey:@"errorString"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    resetReason = self->_resetReason;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

LABEL_5:
  if (self->_errorString)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[6] = self->_version;
    *(v4 + 28) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  v4[5] = self->_sessionID;
  *(v4 + 28) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    v4[4] = self->_resetReason;
    *(v4 + 28) |= 1u;
  }

LABEL_5:
  if (self->_errorString)
  {
    v6 = v4;
    [v4 setErrorString:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 5) = self->_sessionID;
    *(v5 + 28) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 6) = self->_version;
  *(v5 + 28) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 4) = self->_resetReason;
    *(v5 + 28) |= 1u;
  }

LABEL_5:
  v8 = [(NSString *)self->_errorString copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 28);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_sessionID != *(v4 + 5))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_resetReason != *(v4 + 4))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_19;
  }

  errorString = self->_errorString;
  if (errorString | *(v4 + 1))
  {
    v7 = [(NSString *)errorString isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSString *)self->_errorString hash:v3];
  }

  v6 = 2654435761 * self->_version;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_sessionID;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_resetReason;
  return v7 ^ v6 ^ v8 ^ [(NSString *)self->_errorString hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if ((v5 & 4) != 0)
  {
    self->_version = *(v4 + 6);
    *&self->_has |= 4u;
    v5 = *(v4 + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_sessionID = *(v4 + 5);
  *&self->_has |= 2u;
  if (*(v4 + 28))
  {
LABEL_4:
    self->_resetReason = *(v4 + 4);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(v4 + 1))
  {
    v6 = v4;
    [(SDUnlockReset *)self setErrorString:?];
    v4 = v6;
  }
}

@end