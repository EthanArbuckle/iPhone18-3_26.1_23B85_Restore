@interface SDAuthenticationPairingCreateRecord
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRequestArmingUI:(BOOL)i;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation SDAuthenticationPairingCreateRecord

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

- (void)setHasRequestArmingUI:(BOOL)i
{
  if (i)
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
  v7.super_class = SDAuthenticationPairingCreateRecord;
  v3 = [(SDAuthenticationPairingCreateRecord *)&v7 description];
  dictionaryRepresentation = [(SDAuthenticationPairingCreateRecord *)self dictionaryRepresentation];
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

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v6 forKey:@"errorCode"];
  }

  token = self->_token;
  if (token)
  {
    [v3 setObject:token forKey:@"token"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_requestArmingUI];
    [v3 setObject:v8 forKey:@"requestArmingUI"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
  }

  if (self->_token)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 4) != 0)
  {
    requestArmingUI = self->_requestArmingUI;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[8] = self->_version;
    *(toCopy + 40) |= 2u;
  }

  v5 = toCopy;
  if (self->_sessionID)
  {
    [toCopy setSessionID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[2] = self->_errorCode;
    *(toCopy + 40) |= 1u;
  }

  if (self->_token)
  {
    [v5 setToken:?];
    toCopy = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 36) = self->_requestArmingUI;
    *(toCopy + 40) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[8] = self->_version;
    *(v5 + 40) |= 2u;
  }

  v7 = [(NSString *)self->_sessionID copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  if (*&self->_has)
  {
    *(v6 + 2) = self->_errorCode;
    *(v6 + 40) |= 1u;
  }

  v9 = [(NSData *)self->_token copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 36) = self->_requestArmingUI;
    *(v6 + 40) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  has = self->_has;
  v6 = *(equalCopy + 40);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_version != *(equalCopy + 8))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_20;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 2))
  {
    if (![(NSString *)sessionID isEqual:?])
    {
      goto LABEL_20;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 40);
  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_errorCode != *(equalCopy + 2))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_20;
  }

  token = self->_token;
  if (token | *(equalCopy + 3))
  {
    if (![(NSData *)token isEqual:?])
    {
      goto LABEL_20;
    }

    has = self->_has;
  }

  v10 = (*(equalCopy + 40) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) != 0)
    {
      if (self->_requestArmingUI)
      {
        if ((*(equalCopy + 36) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (*(equalCopy + 36))
      {
        goto LABEL_20;
      }

      v10 = 1;
      goto LABEL_21;
    }

LABEL_20:
    v10 = 0;
  }

LABEL_21:

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

  v4 = [(NSString *)self->_sessionID hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_errorCode;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSData *)self->_token hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_requestArmingUI;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 40) & 2) != 0)
  {
    self->_version = *(fromCopy + 8);
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(SDAuthenticationPairingCreateRecord *)self setSessionID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 40))
  {
    self->_errorCode = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(SDAuthenticationPairingCreateRecord *)self setToken:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 40) & 4) != 0)
  {
    self->_requestArmingUI = *(fromCopy + 36);
    *&self->_has |= 4u;
  }
}

@end