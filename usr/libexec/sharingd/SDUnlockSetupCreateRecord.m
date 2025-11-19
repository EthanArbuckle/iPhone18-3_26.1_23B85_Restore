@interface SDUnlockSetupCreateRecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSessionID:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDUnlockSetupCreateRecord

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasSessionID:(BOOL)a3
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
  v7.super_class = SDUnlockSetupCreateRecord;
  v3 = [(SDUnlockSetupCreateRecord *)&v7 description];
  v4 = [(SDUnlockSetupCreateRecord *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v9;
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
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

LABEL_5:
  if (self->_token)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  if (self->_pairedDeviceID)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[10] = self->_version;
    *(v4 + 44) |= 4u;
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

  v4[6] = self->_sessionID;
  *(v4 + 44) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    v4[2] = self->_errorCode;
    *(v4 + 44) |= 1u;
  }

LABEL_5:
  v6 = v4;
  if (self->_token)
  {
    [v4 setToken:?];
    v4 = v6;
  }

  if (self->_pairedDeviceID)
  {
    [v6 setPairedDeviceID:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(NSData *)self->_token copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  v10 = [(NSString *)self->_pairedDeviceID copyWithZone:a3];
  v11 = v6[2];
  v6[2] = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(v4 + 44);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_version != *(v4 + 10))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
LABEL_21:
    v8 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_sessionID != *(v4 + 6))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_errorCode != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_21;
  }

  token = self->_token;
  if (token | *(v4 + 4) && ![(NSData *)token isEqual:?])
  {
    goto LABEL_21;
  }

  pairedDeviceID = self->_pairedDeviceID;
  if (pairedDeviceID | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 44);
  if ((v5 & 4) != 0)
  {
    self->_version = *(v4 + 10);
    *&self->_has |= 4u;
    v5 = *(v4 + 44);
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

  else if ((*(v4 + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_sessionID = *(v4 + 6);
  *&self->_has |= 2u;
  if (*(v4 + 44))
  {
LABEL_4:
    self->_errorCode = *(v4 + 2);
    *&self->_has |= 1u;
  }

LABEL_5:
  v6 = v4;
  if (*(v4 + 4))
  {
    [(SDUnlockSetupCreateRecord *)self setToken:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(SDUnlockSetupCreateRecord *)self setPairedDeviceID:?];
    v4 = v6;
  }
}

@end