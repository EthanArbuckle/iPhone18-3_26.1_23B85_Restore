@interface SDUnlockSetupCreateRecord
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSessionID:(BOOL)d;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation SDUnlockSetupCreateRecord

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSessionID:(BOOL)d
{
  if (d)
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
  v7.super_class = SDUnlockSetupCreateRecord;
  v3 = [(SDUnlockSetupCreateRecord *)&v7 description];
  dictionaryRepresentation = [(SDUnlockSetupCreateRecord *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v9 forKey:@"version"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = [NSNumber numberWithUnsignedInt:self->_sessionID];
  [v3 setObject:v10 forKey:@"sessionID"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v5 forKey:@"errorCode"];
  }

LABEL_5:
  token = self->_token;
  if (token)
  {
    [v3 setObject:token forKey:@"token"];
  }

  pairedDeviceID = self->_pairedDeviceID;
  if (pairedDeviceID)
  {
    [v3 setObject:pairedDeviceID forKey:@"pairedDeviceID"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  sessionID = self->_sessionID;
  PBDataWriterWriteUint32Field();
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_4:
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

LABEL_5:
  if (self->_token)
  {
    PBDataWriterWriteDataField();
    toCopy = v9;
  }

  if (self->_pairedDeviceID)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[10] = self->_version;
    *(toCopy + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[6] = self->_sessionID;
  *(toCopy + 44) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    toCopy[2] = self->_errorCode;
    *(toCopy + 44) |= 1u;
  }

LABEL_5:
  v6 = toCopy;
  if (self->_token)
  {
    [toCopy setToken:?];
    toCopy = v6;
  }

  if (self->_pairedDeviceID)
  {
    [v6 setPairedDeviceID:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 6) = self->_sessionID;
    *(v5 + 44) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 10) = self->_version;
  *(v5 + 44) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 2) = self->_errorCode;
    *(v5 + 44) |= 1u;
  }

LABEL_5:
  v8 = [(NSData *)self->_token copyWithZone:zone];
  v9 = v6[4];
  v6[4] = v8;

  v10 = [(NSString *)self->_pairedDeviceID copyWithZone:zone];
  v11 = v6[2];
  v6[2] = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(equalCopy + 44);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_version != *(equalCopy + 10))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_sessionID != *(equalCopy + 6))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_errorCode != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_21;
  }

  token = self->_token;
  if (token | *(equalCopy + 4) && ![(NSData *)token isEqual:?])
  {
    goto LABEL_21;
  }

  pairedDeviceID = self->_pairedDeviceID;
  if (pairedDeviceID | *(equalCopy + 2))
  {
    v8 = [(NSString *)pairedDeviceID isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_22:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_version;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_sessionID;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_errorCode;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(NSData *)self->_token hash];
  return v6 ^ [(NSString *)self->_pairedDeviceID hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if ((v5 & 4) != 0)
  {
    self->_version = *(fromCopy + 10);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_sessionID = *(fromCopy + 6);
  *&self->_has |= 2u;
  if (*(fromCopy + 44))
  {
LABEL_4:
    self->_errorCode = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

LABEL_5:
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(SDUnlockSetupCreateRecord *)self setToken:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(SDUnlockSetupCreateRecord *)self setPairedDeviceID:?];
    fromCopy = v6;
  }
}

@end