@interface SDUnlockSessionConfirmation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)setHasSupportsACK:(BOOL)a3;
- (void)setHasSuppressNotification:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SDUnlockSessionConfirmation

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

- (void)setHasSuccess:(BOOL)a3
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

- (void)setHasSupportsACK:(BOOL)a3
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

- (void)setHasSuppressNotification:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SDUnlockSessionConfirmation;
  v3 = [(SDUnlockSessionConfirmation *)&v7 description];
  v4 = [(SDUnlockSessionConfirmation *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v7 forKey:@"version"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithUnsignedInt:self->_sessionID];
  [v3 setObject:v8 forKey:@"sessionID"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [NSNumber numberWithBool:self->_success];
  [v3 setObject:v9 forKey:@"success"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [NSNumber numberWithBool:self->_supportsACK];
  [v3 setObject:v10 forKey:@"supportsACK"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithBool:self->_suppressNotification];
    [v3 setObject:v5 forKey:@"suppressNotification"];
  }

LABEL_7:

  return v3;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  sessionID = self->_sessionID;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  success = self->_success;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  supportsACK = self->_supportsACK;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    suppressNotification = self->_suppressNotification;
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[3] = self->_version;
    *(v4 + 20) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = self->_sessionID;
  *(v4 + 20) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v4 + 16) = self->_success;
  *(v4 + 20) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  *(v4 + 17) = self->_supportsACK;
  *(v4 + 20) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(v4 + 18) = self->_suppressNotification;
    *(v4 + 20) |= 0x10u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 3) = self->_version;
    *(result + 20) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_sessionID;
  *(result + 20) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 16) = self->_success;
  *(result + 20) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 17) = self->_supportsACK;
  *(result + 20) |= 8u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 18) = self->_suppressNotification;
  *(result + 20) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_version != *(v4 + 3))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
    goto LABEL_34;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_sessionID != *(v4 + 2))
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 20) & 4) == 0)
    {
      goto LABEL_34;
    }

    v6 = *(v4 + 16);
    if (self->_success)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 20) & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 20) & 8) == 0)
    {
      goto LABEL_34;
    }

    v7 = *(v4 + 17);
    if (self->_supportsACK)
    {
      if ((*(v4 + 17) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if (*(v4 + 17))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 20) & 8) != 0)
  {
    goto LABEL_34;
  }

  v5 = (*(v4 + 20) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 20) & 0x10) != 0)
    {
      if (self->_suppressNotification)
      {
        if (*(v4 + 18))
        {
          goto LABEL_36;
        }
      }

      else if (!*(v4 + 18))
      {
LABEL_36:
        v5 = 1;
        goto LABEL_35;
      }
    }

LABEL_34:
    v5 = 0;
  }

LABEL_35:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_version;
    if (*&self->_has)
    {
LABEL_3:
      v3 = 2654435761 * self->_sessionID;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_success;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_supportsACK;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_suppressNotification;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if ((v5 & 2) != 0)
  {
    self->_version = *(v4 + 3);
    *&self->_has |= 2u;
    v5 = *(v4 + 20);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_sessionID = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 20);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_success = *(v4 + 16);
  *&self->_has |= 4u;
  v5 = *(v4 + 20);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_supportsACK = *(v4 + 17);
  *&self->_has |= 8u;
  if ((*(v4 + 20) & 0x10) != 0)
  {
LABEL_6:
    self->_suppressNotification = *(v4 + 18);
    *&self->_has |= 0x10u;
  }

LABEL_7:
}

@end