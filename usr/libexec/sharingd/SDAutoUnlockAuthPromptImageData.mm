@interface SDAutoUnlockAuthPromptImageData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFinalMessage:(BOOL)message;
- (void)writeTo:(id)to;
@end

@implementation SDAutoUnlockAuthPromptImageData

- (void)setHasFinalMessage:(BOOL)message
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDAutoUnlockAuthPromptImageData;
  v3 = [(SDAutoUnlockAuthPromptImageData *)&v7 description];
  dictionaryRepresentation = [(SDAutoUnlockAuthPromptImageData *)self dictionaryRepresentation];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_imageData)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    finalMessage = self->_finalMessage;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_version;
    *(toCopy + 24) |= 1u;
  }

  if (self->_imageData)
  {
    v5 = toCopy;
    [toCopy setImageData:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 20) = self->_finalMessage;
    *(toCopy + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[4] = self->_version;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSData *)self->_imageData copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_finalMessage;
    *(v6 + 24) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(equalCopy + 24);
  if (has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_version != *(equalCopy + 4))
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_12;
  }

  imageData = self->_imageData;
  if (imageData | *(equalCopy + 1))
  {
    if (![(NSData *)imageData isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 24) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) != 0)
    {
      if (self->_finalMessage)
      {
        if ((*(equalCopy + 20) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(equalCopy + 20))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 24))
  {
    self->_version = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(SDAutoUnlockAuthPromptImageData *)self setImageData:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 24) & 2) != 0)
  {
    self->_finalMessage = *(fromCopy + 20);
    *&self->_has |= 2u;
  }
}

@end