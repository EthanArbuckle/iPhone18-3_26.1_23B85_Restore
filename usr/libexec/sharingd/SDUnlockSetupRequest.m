@interface SDUnlockSetupRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRemoteNeedsLTK:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDUnlockSetupRequest

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

- (void)setHasRemoteNeedsLTK:(BOOL)a3
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
  v7.super_class = SDUnlockSetupRequest;
  v3 = [(SDUnlockSetupRequest *)&v7 description];
  v4 = [(SDUnlockSetupRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_sessionID];
    [v3 setObject:v6 forKey:@"sessionID"];
  }

  longTermKey = self->_longTermKey;
  if (longTermKey)
  {
    [v3 setObject:longTermKey forKey:@"longTermKey"];
  }

  ltkHash = self->_ltkHash;
  if (ltkHash)
  {
    [v3 setObject:ltkHash forKey:@"ltkHash"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v9 = [NSNumber numberWithBool:self->_remoteNeedsLTK];
    [v3 setObject:v9 forKey:@"remoteNeedsLTK"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    sessionID = self->_sessionID;
    PBDataWriterWriteUint32Field();
  }

  if (self->_longTermKey)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_ltkHash)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 4) != 0)
  {
    remoteNeedsLTK = self->_remoteNeedsLTK;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[7] = self->_version;
    *(v4 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[6] = self->_sessionID;
    *(v4 + 36) |= 1u;
  }

  v6 = v4;
  if (self->_longTermKey)
  {
    [v4 setLongTermKey:?];
    v4 = v6;
  }

  if (self->_ltkHash)
  {
    [v6 setLtkHash:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 32) = self->_remoteNeedsLTK;
    *(v4 + 36) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[7] = self->_version;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[6] = self->_sessionID;
    *(v5 + 36) |= 1u;
  }

  v8 = [(NSData *)self->_longTermKey copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  v10 = [(NSData *)self->_ltkHash copyWithZone:a3];
  v11 = v6[2];
  v6[2] = v10;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 32) = self->_remoteNeedsLTK;
    *(v6 + 36) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(v4 + 36);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_version != *(v4 + 7))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_sessionID != *(v4 + 6))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_18;
  }

  longTermKey = self->_longTermKey;
  if (longTermKey | *(v4 + 1) && ![(NSData *)longTermKey isEqual:?])
  {
    goto LABEL_18;
  }

  ltkHash = self->_ltkHash;
  if (ltkHash | *(v4 + 2))
  {
    if (![(NSData *)ltkHash isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v8 = (*(v4 + 36) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0)
    {
LABEL_18:
      v8 = 0;
      goto LABEL_19;
    }

    if (self->_remoteNeedsLTK)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_18;
    }

    v8 = 1;
  }

LABEL_19:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_version;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761 * self->_sessionID;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSData *)self->_longTermKey hash];
  v6 = [(NSData *)self->_ltkHash hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_remoteNeedsLTK;
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
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    self->_version = *(v4 + 7);
    *&self->_has |= 2u;
    v5 = *(v4 + 36);
  }

  if (v5)
  {
    self->_sessionID = *(v4 + 6);
    *&self->_has |= 1u;
  }

  v6 = v4;
  if (*(v4 + 1))
  {
    [(SDUnlockSetupRequest *)self setLongTermKey:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(SDUnlockSetupRequest *)self setLtkHash:?];
    v4 = v6;
  }

  if ((*(v4 + 36) & 4) != 0)
  {
    self->_remoteNeedsLTK = *(v4 + 32);
    *&self->_has |= 4u;
  }
}

@end