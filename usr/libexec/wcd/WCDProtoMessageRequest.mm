@interface WCDProtoMessageRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDictionaryMessage:(BOOL)a3;
- (void)setHasExpectsResponse:(BOOL)a3;
- (void)setHasIsInUse:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WCDProtoMessageRequest

- (void)setHasExpectsResponse:(BOOL)a3
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

- (void)setHasDictionaryMessage:(BOOL)a3
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

- (void)setHasIsInUse:(BOOL)a3
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
  v7.super_class = WCDProtoMessageRequest;
  v3 = [(WCDProtoMessageRequest *)&v7 description];
  v4 = [(WCDProtoMessageRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v10;
  }

  if (self->_clientData)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    expectsResponse = self->_expectsResponse;
    PBDataWriterWriteBOOLField();
    v4 = v10;
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
  v4 = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    isInUse = self->_isInUse;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

LABEL_9:
  if (self->_coreLocationData)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_version;
    *(v4 + 32) |= 1u;
  }

  v6 = v4;
  if (self->_clientData)
  {
    [v4 setClientData:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 29) = self->_expectsResponse;
    *(v4 + 32) |= 4u;
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

  *(v4 + 28) = self->_dictionaryMessage;
  *(v4 + 32) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    *(v4 + 30) = self->_isInUse;
    *(v4 + 32) |= 8u;
  }

LABEL_9:
  if (self->_coreLocationData)
  {
    [v6 setCoreLocationData:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[6] = self->_version;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSData *)self->_clientData copyWithZone:a3];
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
  v10 = [(NSData *)self->_coreLocationData copyWithZone:a3];
  v11 = v6[2];
  v6[2] = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if (has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_36;
  }

  clientData = self->_clientData;
  if (clientData | *(v4 + 1))
  {
    if (![(NSData *)clientData isEqual:?])
    {
      goto LABEL_36;
    }

    has = self->_has;
  }

  v8 = *(v4 + 32);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0)
    {
      goto LABEL_36;
    }

    v11 = *(v4 + 29);
    if (self->_expectsResponse)
    {
      if ((*(v4 + 29) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(v4 + 29))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0)
    {
      goto LABEL_36;
    }

    v12 = *(v4 + 28);
    if (self->_dictionaryMessage)
    {
      if ((*(v4 + 28) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if (*(v4 + 28))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_36;
  }

  if ((has & 8) == 0)
  {
    if ((*(v4 + 32) & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_36:
    v10 = 0;
    goto LABEL_37;
  }

  if ((*(v4 + 32) & 8) == 0)
  {
    goto LABEL_36;
  }

  v13 = *(v4 + 30);
  if (self->_isInUse)
  {
    if ((*(v4 + 30) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 30))
  {
    goto LABEL_36;
  }

LABEL_16:
  coreLocationData = self->_coreLocationData;
  if (coreLocationData | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 32))
  {
    self->_version = *(v4 + 6);
    *&self->_has |= 1u;
  }

  v6 = v4;
  if (*(v4 + 1))
  {
    [(WCDProtoMessageRequest *)self setClientData:?];
    v4 = v6;
  }

  v5 = *(v4 + 32);
  if ((v5 & 4) != 0)
  {
    self->_expectsResponse = *(v4 + 29);
    *&self->_has |= 4u;
    v5 = *(v4 + 32);
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

  else if ((*(v4 + 32) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_dictionaryMessage = *(v4 + 28);
  *&self->_has |= 2u;
  if ((*(v4 + 32) & 8) != 0)
  {
LABEL_8:
    self->_isInUse = *(v4 + 30);
    *&self->_has |= 8u;
  }

LABEL_9:
  if (*(v4 + 2))
  {
    [(WCDProtoMessageRequest *)self setCoreLocationData:?];
    v4 = v6;
  }
}

@end