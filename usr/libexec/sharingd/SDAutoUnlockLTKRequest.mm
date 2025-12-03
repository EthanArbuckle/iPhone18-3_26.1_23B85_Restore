@interface SDAutoUnlockLTKRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCheckViewState:(BOOL)state;
- (void)setHasNeedsLTK:(BOOL)k;
- (void)setHasRemoteNeedsLTK:(BOOL)k;
- (void)writeTo:(id)to;
@end

@implementation SDAutoUnlockLTKRequest

- (void)setHasCheckViewState:(BOOL)state
{
  if (state)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasNeedsLTK:(BOOL)k
{
  if (k)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRemoteNeedsLTK:(BOOL)k
{
  if (k)
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
  v7.super_class = SDAutoUnlockLTKRequest;
  v3 = [(SDAutoUnlockLTKRequest *)&v7 description];
  dictionaryRepresentation = [(SDAutoUnlockLTKRequest *)self dictionaryRepresentation];
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

  localID = self->_localID;
  if (localID)
  {
    [v3 setObject:localID forKey:@"localID"];
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
    v8 = [NSNumber numberWithBool:self->_checkViewState];
    [v3 setObject:v8 forKey:@"checkViewState"];
  }

  remoteDeviceID = self->_remoteDeviceID;
  if (remoteDeviceID)
  {
    [v3 setObject:remoteDeviceID forKey:@"remoteDeviceID"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v11 = [NSNumber numberWithBool:self->_needsLTK];
    [v3 setObject:v11 forKey:@"needsLTK"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v12 = [NSNumber numberWithBool:self->_remoteNeedsLTK];
    [v3 setObject:v12 forKey:@"remoteNeedsLTK"];
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

  if (self->_localID)
  {
    PBDataWriterWriteStringField();
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
    checkViewState = self->_checkViewState;
    PBDataWriterWriteBOOLField();
  }

  if (self->_remoteDeviceID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    needsLTK = self->_needsLTK;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    remoteNeedsLTK = self->_remoteNeedsLTK;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[10] = self->_version;
    *(toCopy + 48) |= 1u;
  }

  v6 = toCopy;
  if (self->_localID)
  {
    [toCopy setLocalID:?];
    toCopy = v6;
  }

  if (self->_ltk)
  {
    [v6 setLtk:?];
    toCopy = v6;
  }

  if (self->_ltkID)
  {
    [v6 setLtkID:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 44) = self->_checkViewState;
    *(toCopy + 48) |= 2u;
  }

  if (self->_remoteDeviceID)
  {
    [v6 setRemoteDeviceID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 45) = self->_needsLTK;
    *(toCopy + 48) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(toCopy + 46) = self->_remoteNeedsLTK;
    *(toCopy + 48) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[10] = self->_version;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_localID copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSData *)self->_ltk copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(NSData *)self->_ltkID copyWithZone:zone];
  v12 = v6[3];
  v6[3] = v11;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 44) = self->_checkViewState;
    *(v6 + 48) |= 2u;
  }

  v13 = [(NSString *)self->_remoteDeviceID copyWithZone:zone];
  v14 = v6[4];
  v6[4] = v13;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 45) = self->_needsLTK;
    *(v6 + 48) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v6 + 46) = self->_remoteNeedsLTK;
    *(v6 + 48) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_version != *(equalCopy + 10))
    {
      goto LABEL_38;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_38;
  }

  localID = self->_localID;
  if (localID | *(equalCopy + 1) && ![(NSString *)localID isEqual:?])
  {
    goto LABEL_38;
  }

  ltk = self->_ltk;
  if (ltk | *(equalCopy + 2))
  {
    if (![(NSData *)ltk isEqual:?])
    {
      goto LABEL_38;
    }
  }

  ltkID = self->_ltkID;
  if (ltkID | *(equalCopy + 3))
  {
    if (![(NSData *)ltkID isEqual:?])
    {
      goto LABEL_38;
    }
  }

  has = self->_has;
  v10 = *(equalCopy + 48);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0)
    {
      goto LABEL_38;
    }

    v13 = *(equalCopy + 44);
    if (self->_checkViewState)
    {
      if ((*(equalCopy + 44) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (*(equalCopy + 44))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_38;
  }

  remoteDeviceID = self->_remoteDeviceID;
  if (remoteDeviceID | *(equalCopy + 4))
  {
    if (![(NSString *)remoteDeviceID isEqual:?])
    {
      goto LABEL_38;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0)
    {
      goto LABEL_38;
    }

    v14 = *(equalCopy + 45);
    if (self->_needsLTK)
    {
      if ((*(equalCopy + 45) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (*(equalCopy + 45))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_38;
  }

  v12 = (*(equalCopy + 48) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) != 0)
    {
      if (self->_remoteNeedsLTK)
      {
        if (*(equalCopy + 46))
        {
          goto LABEL_40;
        }
      }

      else if (!*(equalCopy + 46))
      {
LABEL_40:
        v12 = 1;
        goto LABEL_39;
      }
    }

LABEL_38:
    v12 = 0;
  }

LABEL_39:

  return v12;
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

  v4 = [(NSString *)self->_localID hash];
  v5 = [(NSData *)self->_ltk hash];
  v6 = [(NSData *)self->_ltkID hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_checkViewState;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_remoteDeviceID hash];
  if ((*&self->_has & 4) != 0)
  {
    v9 = 2654435761 * self->_needsLTK;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v9 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v10 = 2654435761 * self->_remoteNeedsLTK;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 48))
  {
    self->_version = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(SDAutoUnlockLTKRequest *)self setLocalID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(SDAutoUnlockLTKRequest *)self setLtk:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(SDAutoUnlockLTKRequest *)self setLtkID:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 48) & 2) != 0)
  {
    self->_checkViewState = *(fromCopy + 44);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 4))
  {
    [(SDAutoUnlockLTKRequest *)self setRemoteDeviceID:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 48);
  if ((v5 & 4) != 0)
  {
    self->_needsLTK = *(fromCopy + 45);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 48);
  }

  if ((v5 & 8) != 0)
  {
    self->_remoteNeedsLTK = *(fromCopy + 46);
    *&self->_has |= 8u;
  }
}

@end