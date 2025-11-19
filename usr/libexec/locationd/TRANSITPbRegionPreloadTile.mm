@interface TRANSITPbRegionPreloadTile
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)secKey;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsAllowOverCellular:(BOOL)a3;
- (void)setHasTileType:(BOOL)a3;
- (void)setHasTileX:(BOOL)a3;
- (void)setHasTileY:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation TRANSITPbRegionPreloadTile

- (void)setHasTileType:(BOOL)a3
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

- (void)setHasTileX:(BOOL)a3
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

- (void)setHasTileY:(BOOL)a3
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

- (void)setHasIsAllowOverCellular:(BOOL)a3
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

- (unint64_t)secKey
{
  if (*&self->_has)
  {
    return self->_secKey;
  }

  else
  {
    return -1;
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = TRANSITPbRegionPreloadTile;
  return [NSString stringWithFormat:@"%@ %@", [(TRANSITPbRegionPreloadTile *)&v3 description], [(TRANSITPbRegionPreloadTile *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_tileType), @"tileType"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_tileX), @"tileX"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_isAllowOverCellular), @"isAllowOverCellular"}];
    if ((*&self->_has & 1) == 0)
    {
      return v3;
    }

    goto LABEL_6;
  }

LABEL_10:
  [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_tileY), @"tileY"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (has)
  {
LABEL_6:
    [v3 setObject:+[NSNumber numberWithUnsignedLongLong:](NSNumber forKey:{"numberWithUnsignedLongLong:", self->_secKey), @"secKey"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_11:

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 4) = self->_tileType;
    *(a3 + 32) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 5) = self->_tileX;
  *(a3 + 32) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a3 + 6) = self->_tileY;
  *(a3 + 32) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      return;
    }

LABEL_11:
    *(a3 + 1) = self->_secKey;
    *(a3 + 32) |= 1u;
    return;
  }

LABEL_10:
  *(a3 + 28) = self->_isAllowOverCellular;
  *(a3 + 32) |= 0x10u;
  if (*&self->_has)
  {
    goto LABEL_11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 4) = self->_tileType;
    *(result + 32) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_tileX;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 6) = self->_tileY;
  *(result + 32) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 28) = self->_isAllowOverCellular;
  *(result + 32) |= 0x10u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 1) = self->_secKey;
  *(result + 32) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 32) & 2) == 0 || self->_tileType != *(a3 + 4))
      {
        goto LABEL_26;
      }
    }

    else if ((*(a3 + 32) & 2) != 0)
    {
LABEL_26:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 32) & 4) == 0 || self->_tileX != *(a3 + 5))
      {
        goto LABEL_26;
      }
    }

    else if ((*(a3 + 32) & 4) != 0)
    {
      goto LABEL_26;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 32) & 8) == 0 || self->_tileY != *(a3 + 6))
      {
        goto LABEL_26;
      }
    }

    else if ((*(a3 + 32) & 8) != 0)
    {
      goto LABEL_26;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 32) & 0x10) == 0 || self->_isAllowOverCellular != *(a3 + 28))
      {
        goto LABEL_26;
      }
    }

    else if ((*(a3 + 32) & 0x10) != 0)
    {
      goto LABEL_26;
    }

    LOBYTE(v5) = (*(a3 + 32) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_secKey != *(a3 + 1))
      {
        goto LABEL_26;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_tileType;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_tileX;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_tileY;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_isAllowOverCellular;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761u * self->_secKey;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 32);
  if ((v3 & 2) != 0)
  {
    self->_tileType = *(a3 + 4);
    *&self->_has |= 2u;
    v3 = *(a3 + 32);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a3 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_tileX = *(a3 + 5);
  *&self->_has |= 4u;
  v3 = *(a3 + 32);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  self->_tileY = *(a3 + 6);
  *&self->_has |= 8u;
  v3 = *(a3 + 32);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_11:
    self->_secKey = *(a3 + 1);
    *&self->_has |= 1u;
    return;
  }

LABEL_10:
  self->_isAllowOverCellular = *(a3 + 28);
  *&self->_has |= 0x10u;
  if (*(a3 + 32))
  {
    goto LABEL_11;
  }
}

@end