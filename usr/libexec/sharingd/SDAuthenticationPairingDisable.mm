@interface SDAuthenticationPairingDisable
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAuthenticationPairingDisable

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

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDAuthenticationPairingDisable;
  v3 = [(SDAuthenticationPairingDisable *)&v7 description];
  v4 = [(SDAuthenticationPairingDisable *)self dictionaryRepresentation];
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

  pairingID = self->_pairingID;
  if (pairingID)
  {
    [v3 setObject:pairingID forKey:@"pairingID"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_type];
    [v3 setObject:v6 forKey:@"type"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*&self->_has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_pairingID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[7] = self->_version;
    *(v4 + 32) |= 2u;
  }

  v5 = v4;
  if (self->_pairingID)
  {
    [v4 setPairingID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[6] = self->_type;
    *(v4 + 32) |= 1u;
  }

  if (self->_sessionID)
  {
    [v5 setSessionID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[7] = self->_version;
    *(v5 + 32) |= 2u;
  }

  v7 = [(NSString *)self->_pairingID copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  if (*&self->_has)
  {
    *(v6 + 6) = self->_type;
    *(v6 + 32) |= 1u;
  }

  v9 = [(NSString *)self->_sessionID copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

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
    if ((*(v4 + 32) & 2) == 0 || self->_version != *(v4 + 7))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_17;
  }

  pairingID = self->_pairingID;
  if (pairingID | *(v4 + 1))
  {
    if (![(NSString *)pairingID isEqual:?])
    {
LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }

    has = self->_has;
  }

  v8 = *(v4 + 32);
  if (has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_type != *(v4 + 6))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_17;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 2))
  {
    v10 = [(NSString *)sessionID isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_18:

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

  v4 = [(NSString *)self->_pairingID hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_type;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_sessionID hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[8] & 2) != 0)
  {
    self->_version = v4[7];
    *&self->_has |= 2u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(SDAuthenticationPairingDisable *)self setPairingID:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_type = v4[6];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(SDAuthenticationPairingDisable *)self setSessionID:?];
    v4 = v5;
  }
}

@end