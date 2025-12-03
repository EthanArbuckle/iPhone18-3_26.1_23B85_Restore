@interface SDAutoUnlockLTKInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSignout:(BOOL)signout;
- (void)writeTo:(id)to;
@end

@implementation SDAutoUnlockLTKInfo

- (void)setHasSignout:(BOOL)signout
{
  if (signout)
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
  v7.super_class = SDAutoUnlockLTKInfo;
  v3 = [(SDAutoUnlockLTKInfo *)&v7 description];
  dictionaryRepresentation = [(SDAutoUnlockLTKInfo *)self dictionaryRepresentation];
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

  ltk = self->_ltk;
  if (ltk)
  {
    [v3 setObject:ltk forKey:@"ltk"];
  }

  ltkID = self->_ltkID;
  if (ltkID)
  {
    [v3 setObject:ltkID forKey:@"ltkID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [NSNumber numberWithBool:self->_signout];
    [v3 setObject:v7 forKey:@"signout"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  if (self->_ltk)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_ltkID)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    signout = self->_signout;
    PBDataWriterWriteBOOLField();
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

  v5 = toCopy;
  if (self->_ltk)
  {
    [toCopy setLtk:?];
    toCopy = v5;
  }

  if (self->_ltkID)
  {
    [v5 setLtkID:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 28) = self->_signout;
    *(toCopy + 32) |= 2u;
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

  v7 = [(NSData *)self->_ltk copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSData *)self->_ltkID copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 28) = self->_signout;
    *(v6 + 32) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_13;
  }

  ltk = self->_ltk;
  if (ltk | *(equalCopy + 1) && ![(NSData *)ltk isEqual:?])
  {
    goto LABEL_13;
  }

  ltkID = self->_ltkID;
  if (ltkID | *(equalCopy + 2))
  {
    if (![(NSData *)ltkID isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v8 = (*(equalCopy + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0)
    {
LABEL_13:
      v8 = 0;
      goto LABEL_14;
    }

    if (self->_signout)
    {
      if ((*(equalCopy + 28) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(equalCopy + 28))
    {
      goto LABEL_13;
    }

    v8 = 1;
  }

LABEL_14:

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

  v4 = [(NSData *)self->_ltk hash];
  v5 = [(NSData *)self->_ltkID hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_signout;
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
  if (*(fromCopy + 32))
  {
    self->_version = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(SDAutoUnlockLTKInfo *)self setLtk:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(SDAutoUnlockLTKInfo *)self setLtkID:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 32) & 2) != 0)
  {
    self->_signout = *(fromCopy + 28);
    *&self->_has |= 2u;
  }
}

@end