@interface NRPBDeviceWillUnpairRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NRPBDeviceWillUnpairRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBDeviceWillUnpairRequest;
  v3 = [(NRPBDeviceWillUnpairRequest *)&v7 description];
  v4 = [(NRPBDeviceWillUnpairRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  advertisedName = self->_advertisedName;
  if (advertisedName)
  {
    [v3 setObject:advertisedName forKey:@"advertisedName"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [NSNumber numberWithBool:self->_shouldObliterate];
    [v4 setObject:v7 forKey:@"shouldObliterate"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [NSNumber numberWithInt:self->_pairingFailureCode];
    [v4 setObject:v8 forKey:@"pairingFailureCode"];
  }

  abortReason = self->_abortReason;
  if (abortReason)
  {
    [v4 setObject:abortReason forKey:@"abortReason"];
  }

  v10 = self->_has;
  if ((v10 & 2) != 0)
  {
    v11 = [NSNumber numberWithBool:self->_shouldBrick];
    [v4 setObject:v11 forKey:@"shouldBrick"];

    v10 = self->_has;
  }

  if ((v10 & 8) != 0)
  {
    v12 = [NSNumber numberWithBool:self->_shouldPreserveESim];
    [v4 setObject:v12 forKey:@"shouldPreserveESim"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  advertisedName = self->_advertisedName;
  v12 = v4;
  PBDataWriterWriteStringField();
  has = self->_has;
  if ((has & 4) != 0)
  {
    shouldObliterate = self->_shouldObliterate;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    pairingFailureCode = self->_pairingFailureCode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_abortReason)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((v9 & 2) != 0)
  {
    shouldBrick = self->_shouldBrick;
    PBDataWriterWriteBOOLField();
    v9 = self->_has;
  }

  if ((v9 & 8) != 0)
  {
    shouldPreserveESim = self->_shouldPreserveESim;
    PBDataWriterWriteBOOLField();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_advertisedName copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 29) = self->_shouldObliterate;
    *(v5 + 32) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 6) = self->_pairingFailureCode;
    *(v5 + 32) |= 1u;
  }

  v9 = [(NSString *)self->_abortReason copyWithZone:a3];
  v10 = v5[1];
  v5[1] = v9;

  v11 = self->_has;
  if ((v11 & 2) != 0)
  {
    *(v5 + 28) = self->_shouldBrick;
    *(v5 + 32) |= 2u;
    v11 = self->_has;
  }

  if ((v11 & 8) != 0)
  {
    *(v5 + 30) = self->_shouldPreserveESim;
    *(v5 + 32) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  advertisedName = self->_advertisedName;
  if (advertisedName | *(v4 + 2))
  {
    if (![(NSString *)advertisedName isEqual:?])
    {
      goto LABEL_28;
    }
  }

  has = self->_has;
  v7 = *(v4 + 32);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0)
    {
      goto LABEL_28;
    }

    v8 = *(v4 + 29);
    if (self->_shouldObliterate)
    {
      if ((*(v4 + 29) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (*(v4 + 29))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_28;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_pairingFailureCode != *(v4 + 6))
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_28;
  }

  abortReason = self->_abortReason;
  if (abortReason | *(v4 + 1))
  {
    if (![(NSString *)abortReason isEqual:?])
    {
      goto LABEL_28;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0)
    {
      goto LABEL_28;
    }

    v12 = *(v4 + 28);
    if (self->_shouldBrick)
    {
      if ((*(v4 + 28) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (*(v4 + 28))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_28;
  }

  v10 = (*(v4 + 32) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 32) & 8) != 0)
    {
      if (self->_shouldPreserveESim)
      {
        if (*(v4 + 30))
        {
          goto LABEL_36;
        }
      }

      else if (!*(v4 + 30))
      {
LABEL_36:
        v10 = 1;
        goto LABEL_29;
      }
    }

LABEL_28:
    v10 = 0;
  }

LABEL_29:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_advertisedName hash];
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_shouldObliterate;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v5 = 2654435761 * self->_pairingFailureCode;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_abortReason hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_shouldBrick;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v8 = 2654435761 * self->_shouldPreserveESim;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

@end