@interface SDAutoUnlockAuthPromptResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNeedsImageData:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAutoUnlockAuthPromptResponse

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

- (void)setHasNeedsImageData:(BOOL)a3
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
  v7.super_class = SDAutoUnlockAuthPromptResponse;
  v3 = [(SDAutoUnlockAuthPromptResponse *)&v7 description];
  v4 = [(SDAutoUnlockAuthPromptResponse *)self dictionaryRepresentation];
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

  keyData = self->_keyData;
  if (keyData)
  {
    [v3 setObject:keyData forKey:@"keyData"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [NSNumber numberWithBool:self->_needsImageData];
    [v3 setObject:v7 forKey:@"needsImageData"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v8 forKey:@"errorCode"];
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

  if (self->_keyData)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    needsImageData = self->_needsImageData;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[6] = self->_version;
    *(v4 + 32) |= 2u;
  }

  if (self->_keyData)
  {
    v6 = v4;
    [v4 setKeyData:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 28) = self->_needsImageData;
    *(v4 + 32) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    v4[2] = self->_errorCode;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[6] = self->_version;
    *(v5 + 32) |= 2u;
  }

  v7 = [(NSData *)self->_keyData copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 28) = self->_needsImageData;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_17;
  }

  keyData = self->_keyData;
  if (keyData | *(v4 + 2))
  {
    if (![(NSData *)keyData isEqual:?])
    {
      goto LABEL_17;
    }

    has = self->_has;
  }

  if ((has & 4) == 0)
  {
    if ((*(v4 + 32) & 4) == 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  if ((*(v4 + 32) & 4) == 0)
  {
    goto LABEL_17;
  }

  v10 = *(v4 + 28);
  if (self->_needsImageData)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_17;
  }

LABEL_12:
  v8 = (*(v4 + 32) & 1) == 0;
  if (has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_errorCode != *(v4 + 2))
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

  v4 = [(NSData *)self->_keyData hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_needsImageData;
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 32) & 2) != 0)
  {
    self->_version = *(v4 + 6);
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    v6 = v4;
    [(SDAutoUnlockAuthPromptResponse *)self setKeyData:?];
    v4 = v6;
  }

  v5 = *(v4 + 32);
  if ((v5 & 4) != 0)
  {
    self->_needsImageData = *(v4 + 28);
    *&self->_has |= 4u;
    v5 = *(v4 + 32);
  }

  if (v5)
  {
    self->_errorCode = *(v4 + 2);
    *&self->_has |= 1u;
  }
}

@end