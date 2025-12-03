@interface SDAuthenticationConfirmation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSuccess:(BOOL)success;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation SDAuthenticationConfirmation

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSuccess:(BOOL)success
{
  if (success)
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
  v7.super_class = SDAuthenticationConfirmation;
  v3 = [(SDAuthenticationConfirmation *)&v7 description];
  dictionaryRepresentation = [(SDAuthenticationConfirmation *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [NSNumber numberWithBool:self->_success];
    [v3 setObject:v7 forKey:@"success"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v8 forKey:@"errorCode"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[6] = self->_version;
    *(toCopy + 32) |= 2u;
  }

  if (self->_sessionID)
  {
    v6 = toCopy;
    [toCopy setSessionID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 28) = self->_success;
    *(toCopy + 32) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[2] = self->_errorCode;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[6] = self->_version;
    *(v5 + 32) |= 2u;
  }

  v7 = [(NSString *)self->_sessionID copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 28) = self->_success;
    *(v6 + 32) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 2) = self->_errorCode;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_17;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 2))
  {
    if (![(NSString *)sessionID isEqual:?])
    {
      goto LABEL_17;
    }

    has = self->_has;
  }

  if ((has & 4) == 0)
  {
    if ((*(equalCopy + 32) & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  if ((*(equalCopy + 32) & 4) == 0)
  {
    goto LABEL_17;
  }

  v10 = *(equalCopy + 28);
  if (self->_success)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_17;
  }

LABEL_12:
  v8 = (*(equalCopy + 32) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_errorCode != *(equalCopy + 2))
    {
      goto LABEL_17;
    }

    v8 = 1;
  }

LABEL_18:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_sessionID hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_success;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_errorCode;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 32) & 2) != 0)
  {
    self->_version = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(SDAuthenticationConfirmation *)self setSessionID:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 32);
  if ((v5 & 4) != 0)
  {
    self->_success = *(fromCopy + 28);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 32);
  }

  if (v5)
  {
    self->_errorCode = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end