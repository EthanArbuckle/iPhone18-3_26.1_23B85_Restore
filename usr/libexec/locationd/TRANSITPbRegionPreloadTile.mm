@interface TRANSITPbRegionPreloadTile
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)secKey;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsAllowOverCellular:(BOOL)cellular;
- (void)setHasTileType:(BOOL)type;
- (void)setHasTileX:(BOOL)x;
- (void)setHasTileY:(BOOL)y;
- (void)writeTo:(id)to;
@end

@implementation TRANSITPbRegionPreloadTile

- (void)setHasTileType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTileX:(BOOL)x
{
  if (x)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTileY:(BOOL)y
{
  if (y)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsAllowOverCellular:(BOOL)cellular
{
  if (cellular)
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

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 4) = self->_tileType;
    *(to + 32) |= 2u;
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

  *(to + 5) = self->_tileX;
  *(to + 32) |= 4u;
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
  *(to + 6) = self->_tileY;
  *(to + 32) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      return;
    }

LABEL_11:
    *(to + 1) = self->_secKey;
    *(to + 32) |= 1u;
    return;
  }

LABEL_10:
  *(to + 28) = self->_isAllowOverCellular;
  *(to + 32) |= 0x10u;
  if (*&self->_has)
  {
    goto LABEL_11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 32) & 2) == 0 || self->_tileType != *(equal + 4))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 32) & 2) != 0)
    {
LABEL_26:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 32) & 4) == 0 || self->_tileX != *(equal + 5))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 32) & 4) != 0)
    {
      goto LABEL_26;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 32) & 8) == 0 || self->_tileY != *(equal + 6))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 32) & 8) != 0)
    {
      goto LABEL_26;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 32) & 0x10) == 0 || self->_isAllowOverCellular != *(equal + 28))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 32) & 0x10) != 0)
    {
      goto LABEL_26;
    }

    LOBYTE(v5) = (*(equal + 32) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_secKey != *(equal + 1))
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

- (void)mergeFrom:(id)from
{
  v3 = *(from + 32);
  if ((v3 & 2) != 0)
  {
    self->_tileType = *(from + 4);
    *&self->_has |= 2u;
    v3 = *(from + 32);
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

  else if ((*(from + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_tileX = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 32);
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
  self->_tileY = *(from + 6);
  *&self->_has |= 8u;
  v3 = *(from + 32);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 1) == 0)
    {
      return;
    }

LABEL_11:
    self->_secKey = *(from + 1);
    *&self->_has |= 1u;
    return;
  }

LABEL_10:
  self->_isAllowOverCellular = *(from + 28);
  *&self->_has |= 0x10u;
  if (*(from + 32))
  {
    goto LABEL_11;
  }
}

@end