@interface WCDProtoMessageRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDictionaryMessage:(BOOL)message;
- (void)setHasExpectsResponse:(BOOL)response;
- (void)setHasIsInUse:(BOOL)use;
- (void)writeTo:(id)to;
@end

@implementation WCDProtoMessageRequest

- (void)setHasExpectsResponse:(BOOL)response
{
  if (response)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDictionaryMessage:(BOOL)message
{
  if (message)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsInUse:(BOOL)use
{
  if (use)
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
  v7.super_class = WCDProtoMessageRequest;
  v3 = [(WCDProtoMessageRequest *)&v7 description];
  dictionaryRepresentation = [(WCDProtoMessageRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  clientData = self->_clientData;
  if (clientData)
  {
    [v3 setObject:clientData forKey:@"clientData"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v10 = [NSNumber numberWithBool:self->_expectsResponse];
    [v3 setObject:v10 forKey:@"expectsResponse"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  v11 = [NSNumber numberWithBool:self->_dictionaryMessage];
  [v3 setObject:v11 forKey:@"dictionaryMessage"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    v7 = [NSNumber numberWithBool:self->_isInUse];
    [v3 setObject:v7 forKey:@"isInUse"];
  }

LABEL_9:
  coreLocationData = self->_coreLocationData;
  if (coreLocationData)
  {
    [v3 setObject:coreLocationData forKey:@"coreLocationData"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
  }

  if (self->_clientData)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    expectsResponse = self->_expectsResponse;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  dictionaryMessage = self->_dictionaryMessage;
  PBDataWriterWriteBOOLField();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    isInUse = self->_isInUse;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

LABEL_9:
  if (self->_coreLocationData)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_version;
    *(toCopy + 32) |= 1u;
  }

  v6 = toCopy;
  if (self->_clientData)
  {
    [toCopy setClientData:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 29) = self->_expectsResponse;
    *(toCopy + 32) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 28) = self->_dictionaryMessage;
  *(toCopy + 32) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    *(toCopy + 30) = self->_isInUse;
    *(toCopy + 32) |= 8u;
  }

LABEL_9:
  if (self->_coreLocationData)
  {
    [v6 setCoreLocationData:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[6] = self->_version;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSData *)self->_clientData copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 28) = self->_dictionaryMessage;
    *(v6 + 32) |= 2u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v6 + 29) = self->_expectsResponse;
  *(v6 + 32) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v6 + 30) = self->_isInUse;
    *(v6 + 32) |= 8u;
  }

LABEL_7:
  v10 = [(NSData *)self->_coreLocationData copyWithZone:zone];
  v11 = v6[2];
  v6[2] = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if (has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_36;
  }

  clientData = self->_clientData;
  if (clientData | *(equalCopy + 1))
  {
    if (![(NSData *)clientData isEqual:?])
    {
      goto LABEL_36;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 32);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0)
    {
      goto LABEL_36;
    }

    v11 = *(equalCopy + 29);
    if (self->_expectsResponse)
    {
      if ((*(equalCopy + 29) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(equalCopy + 29))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0)
    {
      goto LABEL_36;
    }

    v12 = *(equalCopy + 28);
    if (self->_dictionaryMessage)
    {
      if ((*(equalCopy + 28) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(equalCopy + 28))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_36;
  }

  if ((has & 8) == 0)
  {
    if ((*(equalCopy + 32) & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_36:
    v10 = 0;
    goto LABEL_37;
  }

  if ((*(equalCopy + 32) & 8) == 0)
  {
    goto LABEL_36;
  }

  v13 = *(equalCopy + 30);
  if (self->_isInUse)
  {
    if ((*(equalCopy + 30) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 30))
  {
    goto LABEL_36;
  }

LABEL_16:
  coreLocationData = self->_coreLocationData;
  if (coreLocationData | *(equalCopy + 2))
  {
    v10 = [(NSData *)coreLocationData isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_37:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_clientData hash];
  if ((*&self->_has & 4) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSData *)self->_coreLocationData hash];
  }

  v5 = 2654435761 * self->_expectsResponse;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_dictionaryMessage;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761 * self->_isInUse;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(NSData *)self->_coreLocationData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 32))
  {
    self->_version = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(WCDProtoMessageRequest *)self setClientData:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 32);
  if ((v5 & 4) != 0)
  {
    self->_expectsResponse = *(fromCopy + 29);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 32);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(fromCopy + 32) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_dictionaryMessage = *(fromCopy + 28);
  *&self->_has |= 2u;
  if ((*(fromCopy + 32) & 8) != 0)
  {
LABEL_8:
    self->_isInUse = *(fromCopy + 30);
    *&self->_has |= 8u;
  }

LABEL_9:
  if (*(fromCopy + 2))
  {
    [(WCDProtoMessageRequest *)self setCoreLocationData:?];
    fromCopy = v6;
  }
}

@end