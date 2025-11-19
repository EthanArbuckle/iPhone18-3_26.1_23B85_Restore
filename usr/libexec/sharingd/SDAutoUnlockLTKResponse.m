@interface SDAutoUnlockLTKResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCurrentlySyncing:(BOOL)a3;
- (void)setHasNeedsUnlock:(BOOL)a3;
- (void)setHasViewState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDAutoUnlockLTKResponse

- (void)setHasViewState:(BOOL)a3
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

- (void)setHasNeedsUnlock:(BOOL)a3
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

- (void)setHasCurrentlySyncing:(BOOL)a3
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
  v7.super_class = SDAutoUnlockLTKResponse;
  v3 = [(SDAutoUnlockLTKResponse *)&v7 description];
  v4 = [(SDAutoUnlockLTKResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

  ltkData = self->_ltkData;
  if (ltkData)
  {
    [v3 setObject:ltkData forKey:@"ltkData"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v9 = [NSNumber numberWithBool:self->_viewState];
    [v3 setObject:v9 forKey:@"viewState"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v10 = [NSNumber numberWithBool:self->_needsUnlock];
  [v3 setObject:v10 forKey:@"needsUnlock"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v7 = [NSNumber numberWithBool:self->_currentlySyncing];
    [v3 setObject:v7 forKey:@"currentlySyncing"];
  }

LABEL_9:

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  if (self->_ltkData)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    viewState = self->_viewState;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  needsUnlock = self->_needsUnlock;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    currentlySyncing = self->_currentlySyncing;
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_version;
    *(v4 + 24) |= 1u;
  }

  if (self->_ltkData)
  {
    v6 = v4;
    [v4 setLtkData:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 22) = self->_viewState;
    *(v4 + 24) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 21) = self->_needsUnlock;
  *(v4 + 24) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    *(v4 + 20) = self->_currentlySyncing;
    *(v4 + 24) |= 2u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[4] = self->_version;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSData *)self->_ltkData copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 21) = self->_needsUnlock;
    *(v6 + 24) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 22) = self->_viewState;
  *(v6 + 24) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    *(v6 + 20) = self->_currentlySyncing;
    *(v6 + 24) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if (has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_version != *(v4 + 4))
    {
      goto LABEL_32;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_32;
  }

  ltkData = self->_ltkData;
  if (ltkData | *(v4 + 1))
  {
    if (![(NSData *)ltkData isEqual:?])
    {
      goto LABEL_32;
    }

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 24) & 8) == 0)
    {
      goto LABEL_32;
    }

    v9 = *(v4 + 22);
    if (self->_viewState)
    {
      if ((*(v4 + 22) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (*(v4 + 22))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 24) & 8) != 0)
  {
    goto LABEL_32;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0)
    {
      goto LABEL_32;
    }

    v10 = *(v4 + 21);
    if (self->_needsUnlock)
    {
      if ((*(v4 + 21) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (*(v4 + 21))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
    goto LABEL_32;
  }

  v8 = (*(v4 + 24) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) != 0)
    {
      if (self->_currentlySyncing)
      {
        if (*(v4 + 20))
        {
          goto LABEL_34;
        }
      }

      else if (!*(v4 + 20))
      {
LABEL_34:
        v8 = 1;
        goto LABEL_33;
      }
    }

LABEL_32:
    v8 = 0;
  }

LABEL_33:

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

  v4 = [(NSData *)self->_ltkData hash];
  if ((*&self->_has & 8) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_viewState;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_needsUnlock;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761 * self->_currentlySyncing;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 24))
  {
    self->_version = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v6 = v4;
    [(SDAutoUnlockLTKResponse *)self setLtkData:?];
    v4 = v6;
  }

  v5 = *(v4 + 24);
  if ((v5 & 8) != 0)
  {
    self->_viewState = *(v4 + 22);
    *&self->_has |= 8u;
    v5 = *(v4 + 24);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v4 + 24) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_needsUnlock = *(v4 + 21);
  *&self->_has |= 4u;
  if ((*(v4 + 24) & 2) != 0)
  {
LABEL_8:
    self->_currentlySyncing = *(v4 + 20);
    *&self->_has |= 2u;
  }

LABEL_9:
}

@end