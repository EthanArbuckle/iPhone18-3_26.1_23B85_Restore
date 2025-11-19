@interface SDAuthenticationPairingCreateRecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRequestArmingUI:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAuthenticationPairingCreateRecord

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

- (void)setHasRequestArmingUI:(BOOL)a3
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
  v7.super_class = SDAuthenticationPairingCreateRecord;
  v3 = [(SDAuthenticationPairingCreateRecord *)&v7 description];
  v4 = [(SDAuthenticationPairingCreateRecord *)self dictionaryRepresentation];
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

- (void)writeTo:(id)a3
{
  v7 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[8] = self->_version;
    *(v4 + 40) |= 2u;
  }

  v5 = v4;
  if (self->_sessionID)
  {
    [v4 setSessionID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[2] = self->_errorCode;
    *(v4 + 40) |= 1u;
  }

  if (self->_token)
  {
    [v5 setToken:?];
    v4 = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 36) = self->_requestArmingUI;
    *(v4 + 40) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[8] = self->_version;
    *(v5 + 40) |= 2u;
  }

  v7 = [(NSString *)self->_sessionID copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  if (*&self->_has)
  {
    *(v6 + 2) = self->_errorCode;
    *(v6 + 40) |= 1u;
  }

  v9 = [(NSData *)self->_token copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 36) = self->_requestArmingUI;
    *(v6 + 40) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_version != *(v4 + 8))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_20;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 2))
  {
    if (![(NSString *)sessionID isEqual:?])
    {
      goto LABEL_20;
    }

    has = self->_has;
  }

  v8 = *(v4 + 40);
  if (has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_errorCode != *(v4 + 2))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_20;
  }

  token = self->_token;
  if (token | *(v4 + 3))
  {
    if (![(NSData *)token isEqual:?])
    {
      goto LABEL_20;
    }

    has = self->_has;
  }

  v10 = (*(v4 + 40) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) != 0)
    {
      if (self->_requestArmingUI)
      {
        if ((*(v4 + 36) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if (*(v4 + 36))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 40) & 2) != 0)
  {
    self->_version = *(v4 + 8);
    *&self->_has |= 2u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(SDAuthenticationPairingCreateRecord *)self setSessionID:?];
    v4 = v5;
  }

  if (*(v4 + 40))
  {
    self->_errorCode = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(SDAuthenticationPairingCreateRecord *)self setToken:?];
    v4 = v5;
  }

  if ((*(v4 + 40) & 4) != 0)
  {
    self->_requestArmingUI = *(v4 + 36);
    *&self->_has |= 4u;
  }
}

@end