@interface SDAuthenticationPairingDisable
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

@implementation SDAuthenticationPairingDisable

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
  v7.super_class = SDAuthenticationPairingDisable;
  v3 = [(SDAuthenticationPairingDisable *)&v7 description];
  dictionaryRepresentation = [(SDAuthenticationPairingDisable *)self dictionaryRepresentation];
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

  pairingID = self->_pairingID;
  if (pairingID)
  {
    [v3 setObject:pairingID forKey:@"pairingID"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_type];
    [v3 setObject:v6 forKey:@"type"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_pairingID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[7] = self->_version;
    *(toCopy + 32) |= 2u;
  }

  v5 = toCopy;
  if (self->_pairingID)
  {
    [toCopy setPairingID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[6] = self->_type;
    *(toCopy + 32) |= 1u;
  }

  if (self->_sessionID)
  {
    [v5 setSessionID:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[7] = self->_version;
    *(v5 + 32) |= 2u;
  }

  v7 = [(NSString *)self->_pairingID copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  if (*&self->_has)
  {
    *(v6 + 6) = self->_type;
    *(v6 + 32) |= 1u;
  }

  v9 = [(NSString *)self->_sessionID copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

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
    if ((*(equalCopy + 32) & 2) == 0 || self->_version != *(equalCopy + 7))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_17;
  }

  pairingID = self->_pairingID;
  if (pairingID | *(equalCopy + 1))
  {
    if (![(NSString *)pairingID isEqual:?])
    {
LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 32);
  if (has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_type != *(equalCopy + 6))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_17;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 2))
  {
    v10 = [(NSString *)sessionID isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_18:

  return v10;
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

  v4 = [(NSString *)self->_pairingID hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_type;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_sessionID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[8] & 2) != 0)
  {
    self->_version = fromCopy[7];
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(SDAuthenticationPairingDisable *)self setPairingID:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_type = fromCopy[6];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(SDAuthenticationPairingDisable *)self setSessionID:?];
    fromCopy = v5;
  }
}

@end