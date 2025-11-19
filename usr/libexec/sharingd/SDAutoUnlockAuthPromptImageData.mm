@interface SDAutoUnlockAuthPromptImageData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFinalMessage:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAutoUnlockAuthPromptImageData

- (void)setHasFinalMessage:(BOOL)a3
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
  v7.super_class = SDAutoUnlockAuthPromptImageData;
  v3 = [(SDAutoUnlockAuthPromptImageData *)&v7 description];
  v4 = [(SDAutoUnlockAuthPromptImageData *)self dictionaryRepresentation];
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

  imageData = self->_imageData;
  if (imageData)
  {
    [v3 setObject:imageData forKey:@"imageData"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [NSNumber numberWithBool:self->_finalMessage];
    [v3 setObject:v6 forKey:@"finalMessage"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_imageData)
  {
    PBDataWriterWriteDataField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    finalMessage = self->_finalMessage;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_version;
    *(v4 + 24) |= 1u;
  }

  if (self->_imageData)
  {
    v5 = v4;
    [v4 setImageData:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 20) = self->_finalMessage;
    *(v4 + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[4] = self->_version;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSData *)self->_imageData copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_finalMessage;
    *(v6 + 24) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if (has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_version != *(v4 + 4))
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_12;
  }

  imageData = self->_imageData;
  if (imageData | *(v4 + 1))
  {
    if (![(NSData *)imageData isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 24) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) != 0)
    {
      if (self->_finalMessage)
      {
        if ((*(v4 + 20) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(v4 + 20))
      {
        goto LABEL_12;
      }

      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
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

  v4 = [(NSData *)self->_imageData hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_finalMessage;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 24))
  {
    self->_version = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(SDAutoUnlockAuthPromptImageData *)self setImageData:?];
    v4 = v5;
  }

  if ((*(v4 + 24) & 2) != 0)
  {
    self->_finalMessage = *(v4 + 20);
    *&self->_has |= 2u;
  }
}

@end