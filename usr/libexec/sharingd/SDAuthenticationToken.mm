@interface SDAuthenticationToken
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation SDAuthenticationToken

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

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDAuthenticationToken;
  v3 = [(SDAuthenticationToken *)&v7 description];
  dictionaryRepresentation = [(SDAuthenticationToken *)self dictionaryRepresentation];
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

  aksToken = self->_aksToken;
  if (aksToken)
  {
    [v3 setObject:aksToken forKey:@"aksToken"];
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
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_aksToken)
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
  if ((*&self->_has & 2) != 0)
  {
    toCopy[8] = self->_version;
    *(toCopy + 36) |= 2u;
  }

  v5 = toCopy;
  if (self->_sessionID)
  {
    [toCopy setSessionID:?];
    toCopy = v5;
  }

  if (self->_aksToken)
  {
    [v5 setAksToken:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[4] = self->_errorCode;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[8] = self->_version;
    *(v5 + 36) |= 2u;
  }

  v7 = [(NSString *)self->_sessionID copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSData *)self->_aksToken copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  if (*&self->_has)
  {
    *(v6 + 4) = self->_errorCode;
    *(v6 + 36) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 36);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_version != *(equalCopy + 8))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 3) && ![(NSString *)sessionID isEqual:?])
  {
    goto LABEL_15;
  }

  aksToken = self->_aksToken;
  if (aksToken | *(equalCopy + 1))
  {
    if (![(NSData *)aksToken isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_errorCode != *(equalCopy + 4))
    {
      goto LABEL_15;
    }

    v8 = 1;
  }

LABEL_16:

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
  v5 = [(NSData *)self->_aksToken hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_errorCode;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[9] & 2) != 0)
  {
    self->_version = fromCopy[8];
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(SDAuthenticationToken *)self setSessionID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(SDAuthenticationToken *)self setAksToken:?];
    fromCopy = v5;
  }

  if (fromCopy[9])
  {
    self->_errorCode = fromCopy[4];
    *&self->_has |= 1u;
  }
}

@end