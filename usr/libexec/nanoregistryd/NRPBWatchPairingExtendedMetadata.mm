@interface NRPBWatchPairingExtendedMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NRPBWatchPairingExtendedMetadata

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBWatchPairingExtendedMetadata;
  v3 = [(NRPBWatchPairingExtendedMetadata *)&v7 description];
  v4 = [(NRPBWatchPairingExtendedMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  productType = self->_productType;
  if (productType)
  {
    [v3 setObject:productType forKey:@"productType"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [NSNumber numberWithInt:self->_chipID];
    [v4 setObject:v9 forKey:@"chipID"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  v10 = [NSNumber numberWithBool:self->_postFailsafeObliteration];
  [v4 setObject:v10 forKey:@"postFailsafeObliteration"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = [NSNumber numberWithLongLong:self->_pairingVersion];
  [v4 setObject:v11 forKey:@"pairingVersion"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = [NSNumber numberWithBool:self->_supportsTokyoBayAquaLine];
  [v4 setObject:v12 forKey:@"supportsTokyoBayAquaLine"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  v13 = [NSNumber numberWithBool:self->_isCellularEnabled];
  [v4 setObject:v13 forKey:@"isCellularEnabled"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    v7 = [NSNumber numberWithUnsignedInt:self->_encodedSystemVersion];
    [v4 setObject:v7 forKey:@"encodedSystemVersion"];
  }

LABEL_10:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_productType)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    chipID = self->_chipID;
    PBDataWriterWriteInt32Field();
    v4 = v12;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  postFailsafeObliteration = self->_postFailsafeObliteration;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  pairingVersion = self->_pairingVersion;
  PBDataWriterWriteInt64Field();
  v4 = v12;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  supportsTokyoBayAquaLine = self->_supportsTokyoBayAquaLine;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  isCellularEnabled = self->_isCellularEnabled;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    encodedSystemVersion = self->_encodedSystemVersion;
    PBDataWriterWriteUint32Field();
    v4 = v12;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_productType copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 4) = self->_chipID;
    *(v5 + 36) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 33) = self->_postFailsafeObliteration;
  *(v5 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v5[1] = self->_pairingVersion;
  *(v5 + 36) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    *(v5 + 32) = self->_isCellularEnabled;
    *(v5 + 36) |= 8u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_7;
  }

LABEL_12:
  *(v5 + 34) = self->_supportsTokyoBayAquaLine;
  *(v5 + 36) |= 0x20u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 4) != 0)
  {
LABEL_7:
    *(v5 + 5) = self->_encodedSystemVersion;
    *(v5 + 36) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  productType = self->_productType;
  if (productType | *(v4 + 3))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_41;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_chipID != *(v4 + 4))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0)
    {
      goto LABEL_41;
    }

    v6 = *(v4 + 33);
    if (self->_postFailsafeObliteration)
    {
      if ((*(v4 + 33) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (*(v4 + 33))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
    goto LABEL_41;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_pairingVersion != *(v4 + 1))
    {
      goto LABEL_41;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 36) & 0x20) == 0)
    {
      goto LABEL_41;
    }

    v8 = *(v4 + 34);
    if (self->_supportsTokyoBayAquaLine)
    {
      if ((*(v4 + 34) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (*(v4 + 34))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 36) & 0x20) != 0)
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(v4 + 36) & 8) == 0)
    {
      goto LABEL_24;
    }

LABEL_41:
    v7 = 0;
    goto LABEL_42;
  }

  if ((*(v4 + 36) & 8) == 0)
  {
    goto LABEL_41;
  }

  v9 = *(v4 + 32);
  if (self->_isCellularEnabled)
  {
    if ((*(v4 + 32) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_41;
  }

LABEL_24:
  v7 = (*(v4 + 36) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_encodedSystemVersion != *(v4 + 5))
    {
      goto LABEL_41;
    }

    v7 = 1;
  }

LABEL_42:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_productType hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_chipID;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_postFailsafeObliteration;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if (*&self->_has)
  {
LABEL_4:
    v6 = 2654435761 * self->_pairingVersion;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_supportsTokyoBayAquaLine;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_11:
  v7 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = 2654435761 * self->_isCellularEnabled;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = 2654435761 * self->_encodedSystemVersion;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

@end