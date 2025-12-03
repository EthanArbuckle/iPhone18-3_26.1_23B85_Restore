@interface SDUnlockSessionAuthToken
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSessionID:(BOOL)d;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation SDUnlockSessionAuthToken

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

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDUnlockSessionAuthToken;
  v3 = [(SDUnlockSessionAuthToken *)&v7 description];
  dictionaryRepresentation = [(SDUnlockSessionAuthToken *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[6] = self->_version;
    *(toCopy + 28) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[5] = self->_sessionID;
    *(toCopy + 28) |= 2u;
  }

  if (self->_authToken)
  {
    v6 = toCopy;
    [toCopy setAuthToken:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    toCopy[4] = self->_errorCode;
    *(toCopy + 28) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSData *)self->_authToken copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  if (*&self->_has)
  {
    *(v6 + 4) = self->_errorCode;
    *(v6 + 28) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = *(equalCopy + 28);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_sessionID != *(equalCopy + 5))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_19;
  }

  authToken = self->_authToken;
  if (authToken | *(equalCopy + 1))
  {
    if (![(NSData *)authToken isEqual:?])
    {
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 28) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_errorCode != *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if ((v5 & 4) != 0)
  {
    self->_version = *(fromCopy + 6);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 28);
  }

  if ((v5 & 2) != 0)
  {
    self->_sessionID = *(fromCopy + 5);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(SDUnlockSessionAuthToken *)self setAuthToken:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 28))
  {
    self->_errorCode = *(fromCopy + 4);
    *&self->_has |= 1u;
  }
}

@end