@interface SDUnlockSessionAuthToken
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

@implementation SDUnlockSessionAuthToken

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
  v7.super_class = SDUnlockSessionAuthToken;
  v3 = [(SDUnlockSessionAuthToken *)&v7 description];
  v4 = [(SDUnlockSessionAuthToken *)self dictionaryRepresentation];
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

  authToken = self->_authToken;
  if (authToken)
  {
    [v3 setObject:authToken forKey:@"authToken"];
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

  if (self->_authToken)
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
    v4[6] = self->_version;
    *(v4 + 28) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[5] = self->_sessionID;
    *(v4 + 28) |= 2u;
  }

  if (self->_authToken)
  {
    v6 = v4;
    [v4 setAuthToken:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    v4[4] = self->_errorCode;
    *(v4 + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5[6] = self->_version;
    *(v5 + 28) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[5] = self->_sessionID;
    *(v5 + 28) |= 2u;
  }

  v8 = [(NSData *)self->_authToken copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  if (*&self->_has)
  {
    *(v6 + 4) = self->_errorCode;
    *(v6 + 28) |= 1u;
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
  v6 = *(v4 + 28);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
    goto LABEL_19;
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

  authToken = self->_authToken;
  if (authToken | *(v4 + 1))
  {
    if (![(NSData *)authToken isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 28) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_errorCode != *(v4 + 4))
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
  v5 = [(NSData *)self->_authToken hash];
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
  v5 = *(v4 + 28);
  if ((v5 & 4) != 0)
  {
    self->_version = *(v4 + 6);
    *&self->_has |= 4u;
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    self->_sessionID = *(v4 + 5);
    *&self->_has |= 2u;
  }

  if (*(v4 + 1))
  {
    v6 = v4;
    [(SDUnlockSessionAuthToken *)self setAuthToken:?];
    v4 = v6;
  }

  if (*(v4 + 28))
  {
    self->_errorCode = *(v4 + 4);
    *&self->_has |= 1u;
  }
}

@end