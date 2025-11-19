@interface TRANSITPbRegionPreloadMarket
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTiles:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasNorthWestLongitude:(BOOL)a3;
- (void)setHasSouthEastLatitude:(BOOL)a3;
- (void)setHasSouthEastLongitude:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation TRANSITPbRegionPreloadMarket

- (void)dealloc
{
  [(TRANSITPbRegionPreloadMarket *)self setTiles:0];
  v3.receiver = self;
  v3.super_class = TRANSITPbRegionPreloadMarket;
  [(TRANSITPbRegionPreloadMarket *)&v3 dealloc];
}

- (void)setHasNorthWestLongitude:(BOOL)a3
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

- (void)setHasSouthEastLatitude:(BOOL)a3
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

- (void)setHasSouthEastLongitude:(BOOL)a3
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

- (void)addTiles:(id)a3
{
  tiles = self->_tiles;
  if (!tiles)
  {
    tiles = objc_alloc_init(NSMutableArray);
    self->_tiles = tiles;
  }

  [(NSMutableArray *)tiles addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = TRANSITPbRegionPreloadMarket;
  return [NSString stringWithFormat:@"%@ %@", [(TRANSITPbRegionPreloadMarket *)&v3 description], [(TRANSITPbRegionPreloadMarket *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_northWestLatitude), @"northWestLatitude"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_northWestLongitude), @"northWestLongitude"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_18:
  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_southEastLatitude), @"southEastLatitude"}];
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_southEastLongitude), @"southEastLongitude"}];
  }

LABEL_6:
  if ([(NSMutableArray *)self->_tiles count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_tiles, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    tiles = self->_tiles;
    v7 = [(NSMutableArray *)tiles countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(tiles);
          }

          [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)tiles countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"tiles"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteDoubleField();
  }

LABEL_6:
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  tiles = self->_tiles;
  v6 = [(NSMutableArray *)tiles countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(tiles);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)tiles countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = *&self->_northWestLatitude;
    *(a3 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      *(a3 + 3) = *&self->_southEastLatitude;
      *(a3 + 48) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 2) = *&self->_northWestLongitude;
  *(a3 + 48) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(a3 + 4) = *&self->_southEastLongitude;
    *(a3 + 48) |= 8u;
  }

LABEL_6:
  if ([(TRANSITPbRegionPreloadMarket *)self tilesCount])
  {
    [a3 clearTiles];
    v6 = [(TRANSITPbRegionPreloadMarket *)self tilesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addTiles:{-[TRANSITPbRegionPreloadMarket tilesAtIndex:](self, "tilesAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 1) = *&self->_northWestLatitude;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 2) = *&self->_northWestLongitude;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  *(v5 + 3) = *&self->_southEastLatitude;
  *(v5 + 48) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    *(v5 + 4) = *&self->_southEastLongitude;
    *(v5 + 48) |= 8u;
  }

LABEL_6:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  tiles = self->_tiles;
  v9 = [(NSMutableArray *)tiles countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(tiles);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:a3];
        [v6 addTiles:v13];
      }

      v10 = [(NSMutableArray *)tiles countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 48) & 1) == 0 || self->_northWestLatitude != *(a3 + 1))
      {
        goto LABEL_24;
      }
    }

    else if (*(a3 + 48))
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 48) & 2) == 0 || self->_northWestLongitude != *(a3 + 2))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 48) & 2) != 0)
    {
      goto LABEL_24;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 48) & 4) == 0 || self->_southEastLatitude != *(a3 + 3))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 48) & 4) != 0)
    {
      goto LABEL_24;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 48) & 8) == 0 || self->_southEastLongitude != *(a3 + 4))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 48) & 8) != 0)
    {
      goto LABEL_24;
    }

    tiles = self->_tiles;
    if (tiles | *(a3 + 5))
    {

      LOBYTE(v5) = [(NSMutableArray *)tiles isEqual:?];
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
  if (*&self->_has)
  {
    northWestLatitude = self->_northWestLatitude;
    if (northWestLatitude < 0.0)
    {
      northWestLatitude = -northWestLatitude;
    }

    *v6.i64 = floor(northWestLatitude + 0.5);
    v10 = (northWestLatitude - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v11), v7, v6);
    v8 = 2654435761u * *v6.i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    northWestLongitude = self->_northWestLongitude;
    if (northWestLongitude < 0.0)
    {
      northWestLongitude = -northWestLongitude;
    }

    *v6.i64 = floor(northWestLongitude + 0.5);
    v14 = (northWestLongitude - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v15), v7, v6);
    v12 = 2654435761u * *v6.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    southEastLatitude = self->_southEastLatitude;
    if (southEastLatitude < 0.0)
    {
      southEastLatitude = -southEastLatitude;
    }

    *v6.i64 = floor(southEastLatitude + 0.5);
    v18 = (southEastLatitude - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v19), v7, v6);
    v16 = 2654435761u * *v6.i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    southEastLongitude = self->_southEastLongitude;
    if (southEastLongitude < 0.0)
    {
      southEastLongitude = -southEastLongitude;
    }

    *v6.i64 = floor(southEastLongitude + 0.5);
    v22 = (southEastLongitude - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v20 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v7, v6).i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 ^ v8 ^ v16 ^ v20 ^ [(NSMutableArray *)self->_tiles hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = *(a3 + 48);
  if (v4)
  {
    self->_northWestLatitude = *(a3 + 1);
    *&self->_has |= 1u;
    v4 = *(a3 + 48);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a3 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_northWestLongitude = *(a3 + 2);
  *&self->_has |= 2u;
  v4 = *(a3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  self->_southEastLatitude = *(a3 + 3);
  *&self->_has |= 4u;
  if ((*(a3 + 48) & 8) != 0)
  {
LABEL_5:
    self->_southEastLongitude = *(a3 + 4);
    *&self->_has |= 8u;
  }

LABEL_6:
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(a3 + 5);
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

        [(TRANSITPbRegionPreloadMarket *)self addTiles:*(*(&v10 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end