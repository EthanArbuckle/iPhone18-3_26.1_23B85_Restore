@interface NRPBSystemVersionResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NRPBSystemVersionResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBSystemVersionResponse;
  v3 = [(NRPBSystemVersionResponse *)&v7 description];
  dictionaryRepresentation = [(NRPBSystemVersionResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v8 = [NSNumber numberWithInt:self->_pairingCompatibilityVersion];
    [v3 setObject:v8 forKey:@"pairingCompatibilityVersion"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = [NSNumber numberWithInt:self->_maxPairingCompatibilityVersion];
  [v3 setObject:v9 forKey:@"maxPairingCompatibilityVersion"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = [NSNumber numberWithInt:self->_minPairingCompatibilityVersion];
  [v3 setObject:v10 forKey:@"minPairingCompatibilityVersion"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  v11 = [NSNumber numberWithInt:self->_minQuickSwitchCompatibilityVersion];
  [v3 setObject:v11 forKey:@"minQuickSwitchCompatibilityVersion"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithBool:self->_isOverrideActive];
    [v3 setObject:v5 forKey:@"isOverrideActive"];
  }

LABEL_7:
  osVersion = self->_osVersion;
  if (osVersion)
  {
    [v3 setObject:osVersion forKey:@"osVersion"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v11 = toCopy;
  if ((has & 8) != 0)
  {
    pairingCompatibilityVersion = self->_pairingCompatibilityVersion;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  maxPairingCompatibilityVersion = self->_maxPairingCompatibilityVersion;
  PBDataWriterWriteInt32Field();
  toCopy = v11;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  minPairingCompatibilityVersion = self->_minPairingCompatibilityVersion;
  PBDataWriterWriteInt32Field();
  toCopy = v11;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  minQuickSwitchCompatibilityVersion = self->_minQuickSwitchCompatibilityVersion;
  PBDataWriterWriteInt32Field();
  toCopy = v11;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    isOverrideActive = self->_isOverrideActive;
    PBDataWriterWriteBOOLField();
    toCopy = v11;
  }

LABEL_7:
  if (self->_osVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 8) = self->_pairingCompatibilityVersion;
    *(v5 + 40) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  *(v5 + 2) = self->_maxPairingCompatibilityVersion;
  *(v5 + 40) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v5 + 4) = self->_minQuickSwitchCompatibilityVersion;
    *(v5 + 40) |= 4u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v5 + 3) = self->_minPairingCompatibilityVersion;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 0x10) != 0)
  {
LABEL_6:
    *(v5 + 36) = self->_isOverrideActive;
    *(v5 + 40) |= 0x10u;
  }

LABEL_7:
  v8 = [(NSString *)self->_osVersion copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = *(equalCopy + 40);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_pairingCompatibilityVersion != *(equalCopy + 8))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
    goto LABEL_27;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_maxPairingCompatibilityVersion != *(equalCopy + 2))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_minPairingCompatibilityVersion != *(equalCopy + 3))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_minQuickSwitchCompatibilityVersion != *(equalCopy + 4))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 0x10) == 0)
  {
    if ((*(equalCopy + 40) & 0x10) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v7 = 0;
    goto LABEL_28;
  }

  if ((*(equalCopy + 40) & 0x10) == 0)
  {
    goto LABEL_27;
  }

  v9 = *(equalCopy + 36);
  if (self->_isOverrideActive)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_27;
  }

LABEL_24:
  osVersion = self->_osVersion;
  if (osVersion | *(equalCopy + 3))
  {
    v7 = [(NSString *)osVersion isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_28:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761 * self->_pairingCompatibilityVersion;
    if (*&self->_has)
    {
LABEL_3:
      v7 = 2654435761 * self->_maxPairingCompatibilityVersion;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v8 = 2654435761 * self->_minPairingCompatibilityVersion;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v9 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v10 = 0;
    return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ [(NSString *)self->_osVersion hash:v3];
  }

LABEL_9:
  v8 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v9 = 2654435761 * self->_minQuickSwitchCompatibilityVersion;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v10 = 2654435761 * self->_isOverrideActive;
  return v7 ^ v6 ^ v8 ^ v9 ^ v10 ^ [(NSString *)self->_osVersion hash:v3];
}

@end