@interface SDAuthenticationPairingResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRequestArmingUI:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAuthenticationPairingResponse

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

- (void)setHasType:(BOOL)a3
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
  v7.super_class = SDAuthenticationPairingResponse;
  v3 = [(SDAuthenticationPairingResponse *)&v7 description];
  v4 = [(SDAuthenticationPairingResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_type];
    [v3 setObject:v6 forKey:@"type"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  longTermKey = self->_longTermKey;
  if (longTermKey)
  {
    [v3 setObject:longTermKey forKey:@"longTermKey"];
  }

  token = self->_token;
  if (token)
  {
    [v3 setObject:token forKey:@"token"];
  }

  v10 = self->_has;
  if (v10)
  {
    v11 = [NSNumber numberWithUnsignedInt:self->_errorCode];
    [v3 setObject:v11 forKey:@"errorCode"];

    v10 = self->_has;
  }

  if ((v10 & 8) != 0)
  {
    v12 = [NSNumber numberWithBool:self->_requestArmingUI];
    [v3 setObject:v12 forKey:@"requestArmingUI"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_longTermKey)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_token)
  {
    PBDataWriterWriteDataField();
  }

  v7 = self->_has;
  if (v7)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
  }

  if ((v7 & 8) != 0)
  {
    requestArmingUI = self->_requestArmingUI;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[11] = self->_version;
    *(v4 + 52) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[10] = self->_type;
    *(v4 + 52) |= 2u;
  }

  v7 = v4;
  if (self->_sessionID)
  {
    [v4 setSessionID:?];
    v4 = v7;
  }

  if (self->_longTermKey)
  {
    [v7 setLongTermKey:?];
    v4 = v7;
  }

  if (self->_token)
  {
    [v7 setToken:?];
    v4 = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    v4[2] = self->_errorCode;
    *(v4 + 52) |= 1u;
    v6 = self->_has;
  }

  if ((v6 & 8) != 0)
  {
    *(v4 + 48) = self->_requestArmingUI;
    *(v4 + 52) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5[11] = self->_version;
    *(v5 + 52) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[10] = self->_type;
    *(v5 + 52) |= 2u;
  }

  v8 = [(NSString *)self->_sessionID copyWithZone:a3];
  v9 = v6[3];
  v6[3] = v8;

  v10 = [(NSData *)self->_longTermKey copyWithZone:a3];
  v11 = v6[2];
  v6[2] = v10;

  v12 = [(NSData *)self->_token copyWithZone:a3];
  v13 = v6[4];
  v6[4] = v12;

  v14 = self->_has;
  if (v14)
  {
    *(v6 + 2) = self->_errorCode;
    *(v6 + 52) |= 1u;
    v14 = self->_has;
  }

  if ((v14 & 8) != 0)
  {
    *(v6 + 48) = self->_requestArmingUI;
    *(v6 + 52) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = *(v4 + 52);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_version != *(v4 + 11))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_type != *(v4 + 10))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_25;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 3) && ![(NSString *)sessionID isEqual:?])
  {
    goto LABEL_25;
  }

  longTermKey = self->_longTermKey;
  if (longTermKey | *(v4 + 2))
  {
    if (![(NSData *)longTermKey isEqual:?])
    {
      goto LABEL_25;
    }
  }

  token = self->_token;
  if (token | *(v4 + 4))
  {
    if (![(NSData *)token isEqual:?])
    {
      goto LABEL_25;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_errorCode != *(v4 + 2))
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_25;
  }

  v9 = (*(v4 + 52) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 52) & 8) == 0)
    {
LABEL_25:
      v9 = 0;
      goto LABEL_26;
    }

    if (self->_requestArmingUI)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_25;
    }

    v9 = 1;
  }

LABEL_26:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_version;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_type;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_sessionID hash];
  v6 = [(NSData *)self->_longTermKey hash];
  v7 = [(NSData *)self->_token hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_errorCode;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = 2654435761 * self->_requestArmingUI;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 52);
  if ((v5 & 4) != 0)
  {
    self->_version = *(v4 + 11);
    *&self->_has |= 4u;
    v5 = *(v4 + 52);
  }

  if ((v5 & 2) != 0)
  {
    self->_type = *(v4 + 10);
    *&self->_has |= 2u;
  }

  v7 = v4;
  if (*(v4 + 3))
  {
    [(SDAuthenticationPairingResponse *)self setSessionID:?];
    v4 = v7;
  }

  if (*(v4 + 2))
  {
    [(SDAuthenticationPairingResponse *)self setLongTermKey:?];
    v4 = v7;
  }

  if (*(v4 + 4))
  {
    [(SDAuthenticationPairingResponse *)self setToken:?];
    v4 = v7;
  }

  v6 = *(v4 + 52);
  if (v6)
  {
    self->_errorCode = *(v4 + 2);
    *&self->_has |= 1u;
    v6 = *(v4 + 52);
  }

  if ((v6 & 8) != 0)
  {
    self->_requestArmingUI = *(v4 + 48);
    *&self->_has |= 8u;
  }
}

@end