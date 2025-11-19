@interface WCDProtoMessageResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDictionaryMessage:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation WCDProtoMessageResponse

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasDictionaryMessage:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = WCDProtoMessageResponse;
  v3 = [(WCDProtoMessageResponse *)&v7 description];
  v4 = [(WCDProtoMessageResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

  clientData = self->_clientData;
  if (clientData)
  {
    [v3 setObject:clientData forKey:@"clientData"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v7 forKey:@"errorCode"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_dictionaryMessage];
    [v3 setObject:v8 forKey:@"dictionaryMessage"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  if (self->_clientData)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if (has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    dictionaryMessage = self->_dictionaryMessage;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[5] = self->_version;
    *(v4 + 28) |= 2u;
  }

  if (self->_clientData)
  {
    v6 = v4;
    [v4 setClientData:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    v4[4] = self->_errorCode;
    *(v4 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 24) = self->_dictionaryMessage;
    *(v4 + 28) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[5] = self->_version;
    *(v5 + 28) |= 2u;
  }

  v7 = [(NSData *)self->_clientData copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  has = self->_has;
  if (has)
  {
    *(v6 + 4) = self->_errorCode;
    *(v6 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 24) = self->_dictionaryMessage;
    *(v6 + 28) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(v4 + 28);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_version != *(v4 + 5))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_17;
  }

  clientData = self->_clientData;
  if (clientData | *(v4 + 1))
  {
    if (![(NSData *)clientData isEqual:?])
    {
      goto LABEL_17;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_errorCode != *(v4 + 4))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_17;
  }

  v8 = (*(v4 + 28) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) != 0)
    {
      if (self->_dictionaryMessage)
      {
        if ((*(v4 + 24) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (*(v4 + 24))
      {
        goto LABEL_17;
      }

      v8 = 1;
      goto LABEL_18;
    }

LABEL_17:
    v8 = 0;
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

  v4 = [(NSData *)self->_clientData hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_errorCode;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_dictionaryMessage;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 28) & 2) != 0)
  {
    self->_version = *(v4 + 5);
    *&self->_has |= 2u;
  }

  if (*(v4 + 1))
  {
    v6 = v4;
    [(WCDProtoMessageResponse *)self setClientData:?];
    v4 = v6;
  }

  v5 = *(v4 + 28);
  if (v5)
  {
    self->_errorCode = *(v4 + 4);
    *&self->_has |= 1u;
    v5 = *(v4 + 28);
  }

  if ((v5 & 4) != 0)
  {
    self->_dictionaryMessage = *(v4 + 24);
    *&self->_has |= 4u;
  }
}

@end