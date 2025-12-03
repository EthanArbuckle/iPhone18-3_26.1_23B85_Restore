@interface SDUnlockStateResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPasscodeEnabled:(BOOL)enabled;
- (void)setHasUnlockEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation SDUnlockStateResponse

- (void)setHasUnlockEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasPasscodeEnabled:(BOOL)enabled
{
  if (enabled)
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
  v7.super_class = SDUnlockStateResponse;
  v3 = [(SDUnlockStateResponse *)&v7 description];
  dictionaryRepresentation = [(SDUnlockStateResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v7 forKey:@"version"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithBool:self->_unlockEnabled];
  [v3 setObject:v8 forKey:@"unlockEnabled"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [NSNumber numberWithBool:self->_passcodeEnabled];
    [v3 setObject:v5 forKey:@"passcodeEnabled"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  unlockEnabled = self->_unlockEnabled;
  PBDataWriterWriteBOOLField();
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    passcodeEnabled = self->_passcodeEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_version;
    *(toCopy + 16) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 13) = self->_unlockEnabled;
  *(toCopy + 16) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(toCopy + 12) = self->_passcodeEnabled;
    *(toCopy + 16) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_version;
    *(result + 16) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 13) = self->_unlockEnabled;
  *(result + 16) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 12) = self->_passcodeEnabled;
  *(result + 16) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) == 0 || self->_version != *(equalCopy + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 16))
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 16) & 4) == 0)
    {
      goto LABEL_15;
    }

    v7 = *(equalCopy + 13);
    if (self->_unlockEnabled)
    {
      if ((*(equalCopy + 13) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (*(equalCopy + 13))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 16) & 4) != 0)
  {
    goto LABEL_15;
  }

  v5 = (*(equalCopy + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) != 0)
    {
      if (self->_passcodeEnabled)
      {
        if (*(equalCopy + 12))
        {
          goto LABEL_23;
        }
      }

      else if (!*(equalCopy + 12))
      {
LABEL_23:
        v5 = 1;
        goto LABEL_16;
      }
    }

LABEL_15:
    v5 = 0;
  }

LABEL_16:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_version;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_unlockEnabled;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_passcodeEnabled;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if (v5)
  {
    self->_version = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 16);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 16) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_unlockEnabled = *(fromCopy + 13);
  *&self->_has |= 4u;
  if ((*(fromCopy + 16) & 2) != 0)
  {
LABEL_4:
    self->_passcodeEnabled = *(fromCopy + 12);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end