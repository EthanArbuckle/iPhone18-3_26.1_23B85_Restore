@interface TRANSITPbTransitMacTile
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMacs:(id)macs;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasExpirationAgeSecs:(BOOL)secs;
- (void)setHasTileX:(BOOL)x;
- (void)setHasTileY:(BOOL)y;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation TRANSITPbTransitMacTile

- (void)dealloc
{
  [(TRANSITPbTransitMacTile *)self setMacs:0];
  v3.receiver = self;
  v3.super_class = TRANSITPbTransitMacTile;
  [(TRANSITPbTransitMacTile *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
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

- (void)setHasExpirationAgeSecs:(BOOL)secs
{
  if (secs)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addMacs:(id)macs
{
  macs = self->_macs;
  if (!macs)
  {
    macs = objc_alloc_init(NSMutableArray);
    self->_macs = macs;
  }

  [(NSMutableArray *)macs addObject:macs];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = TRANSITPbTransitMacTile;
  return [NSString stringWithFormat:@"%@ %@", [(TRANSITPbTransitMacTile *)&v3 description], [(TRANSITPbTransitMacTile *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_version), @"version"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_tileX), @"tileX"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_tileY), @"tileY"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_20:
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_generationTimeSecs), @"generationTimeSecs"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_expirationAgeSecs), @"expirationAgeSecs"}];
  }

LABEL_7:
  if ([(NSMutableArray *)self->_macs count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_macs, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    macs = self->_macs;
    v7 = [(NSMutableArray *)macs countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(macs);
          }

          [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)macs countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"macs"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_18:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  macs = self->_macs;
  v6 = [(NSMutableArray *)macs countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(macs);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)macs countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(to + 10) = self->_version;
    *(to + 44) |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 8) = self->_tileX;
  *(to + 44) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_15:
    *(to + 1) = *&self->_generationTimeSecs;
    *(to + 44) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  *(to + 9) = self->_tileY;
  *(to + 44) |= 8u;
  has = self->_has;
  if (has)
  {
    goto LABEL_15;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    *(to + 4) = self->_expirationAgeSecs;
    *(to + 44) |= 2u;
  }

LABEL_7:
  if ([(TRANSITPbTransitMacTile *)self macsCount])
  {
    [to clearMacs];
    macsCount = [(TRANSITPbTransitMacTile *)self macsCount];
    if (macsCount)
    {
      v7 = macsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addMacs:{-[TRANSITPbTransitMacTile macsAtIndex:](self, "macsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 10) = self->_version;
    *(v5 + 44) |= 0x10u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_tileX;
  *(v5 + 44) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 9) = self->_tileY;
  *(v5 + 44) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_18:
  *(v5 + 1) = *&self->_generationTimeSecs;
  *(v5 + 44) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(v5 + 4) = self->_expirationAgeSecs;
    *(v5 + 44) |= 2u;
  }

LABEL_7:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  macs = self->_macs;
  v9 = [(NSMutableArray *)macs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(macs);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:zone];
        [v6 addMacs:v13];
      }

      v10 = [(NSMutableArray *)macs countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 44) & 0x10) == 0 || self->_version != *(equal + 10))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 44) & 0x10) != 0)
    {
LABEL_29:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 44) & 4) == 0 || self->_tileX != *(equal + 8))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 44) & 4) != 0)
    {
      goto LABEL_29;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 44) & 8) == 0 || self->_tileY != *(equal + 9))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 44) & 8) != 0)
    {
      goto LABEL_29;
    }

    if (*&self->_has)
    {
      if ((*(equal + 44) & 1) == 0 || self->_generationTimeSecs != *(equal + 1))
      {
        goto LABEL_29;
      }
    }

    else if (*(equal + 44))
    {
      goto LABEL_29;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 44) & 2) == 0 || self->_expirationAgeSecs != *(equal + 4))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 44) & 2) != 0)
    {
      goto LABEL_29;
    }

    macs = self->_macs;
    if (macs | *(equal + 3))
    {

      LOBYTE(v5) = [(NSMutableArray *)macs isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v8 = 2654435761 * self->_version;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v9 = 2654435761 * self->_tileX;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v10 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_12:
      v14 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = 2654435761 * self->_tileY;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  generationTimeSecs = self->_generationTimeSecs;
  if (generationTimeSecs < 0.0)
  {
    generationTimeSecs = -generationTimeSecs;
  }

  *v6.i64 = floor(generationTimeSecs + 0.5);
  v12 = (generationTimeSecs - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v7, v6).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_13:
  if ((*&self->_has & 2) != 0)
  {
    v15 = 2654435761 * self->_expirationAgeSecs;
  }

  else
  {
    v15 = 0;
  }

  return v9 ^ v8 ^ v10 ^ v14 ^ v15 ^ [(NSMutableArray *)self->_macs hash:v3];
}

- (void)mergeFrom:(id)from
{
  v4 = *(from + 44);
  if ((v4 & 0x10) != 0)
  {
    self->_version = *(from + 10);
    *&self->_has |= 0x10u;
    v4 = *(from + 44);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(from + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_tileX = *(from + 8);
  *&self->_has |= 4u;
  v4 = *(from + 44);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_tileY = *(from + 9);
  *&self->_has |= 8u;
  v4 = *(from + 44);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_18:
  self->_generationTimeSecs = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 44) & 2) != 0)
  {
LABEL_6:
    self->_expirationAgeSecs = *(from + 4);
    *&self->_has |= 2u;
  }

LABEL_7:
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(from + 3);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(TRANSITPbTransitMacTile *)self addMacs:*(*(&v10 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end