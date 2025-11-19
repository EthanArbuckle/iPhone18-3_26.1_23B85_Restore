@interface TRANSITPbRegionPreloadManifest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMarkets:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasExpirationAgeSecs:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation TRANSITPbRegionPreloadManifest

- (void)dealloc
{
  [(TRANSITPbRegionPreloadManifest *)self setMarkets:0];
  v3.receiver = self;
  v3.super_class = TRANSITPbRegionPreloadManifest;
  [(TRANSITPbRegionPreloadManifest *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasExpirationAgeSecs:(BOOL)a3
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

- (void)addMarkets:(id)a3
{
  markets = self->_markets;
  if (!markets)
  {
    markets = objc_alloc_init(NSMutableArray);
    self->_markets = markets;
  }

  [(NSMutableArray *)markets addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = TRANSITPbRegionPreloadManifest;
  return [NSString stringWithFormat:@"%@ %@", [(TRANSITPbRegionPreloadManifest *)&v3 description], [(TRANSITPbRegionPreloadManifest *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_version), @"version"}];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_generationTimeSecs), @"generationTimeSecs"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    [v3 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_expirationAgeSecs), @"expirationAgeSecs"}];
  }

LABEL_5:
  if ([(NSMutableArray *)self->_markets count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_markets, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    markets = self->_markets;
    v7 = [(NSMutableArray *)markets countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(markets);
          }

          [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)markets countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"markets"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  markets = self->_markets;
  v6 = [(NSMutableArray *)markets countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(markets);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)markets countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    *(a3 + 1) = *&self->_generationTimeSecs;
    *(a3 + 36) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(a3 + 8) = self->_version;
  *(a3 + 36) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(a3 + 4) = self->_expirationAgeSecs;
    *(a3 + 36) |= 2u;
  }

LABEL_5:
  if ([(TRANSITPbRegionPreloadManifest *)self marketsCount])
  {
    [a3 clearMarkets];
    v6 = [(TRANSITPbRegionPreloadManifest *)self marketsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addMarkets:{-[TRANSITPbRegionPreloadManifest marketsAtIndex:](self, "marketsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 8) = self->_version;
    *(v5 + 36) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 1) = *&self->_generationTimeSecs;
  *(v5 + 36) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 4) = self->_expirationAgeSecs;
    *(v5 + 36) |= 2u;
  }

LABEL_5:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  markets = self->_markets;
  v9 = [(NSMutableArray *)markets countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(markets);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) copyWithZone:a3];
        [v6 addMarkets:v13];
      }

      v10 = [(NSMutableArray *)markets countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 36) & 4) == 0 || self->_version != *(a3 + 8))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 36) & 4) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 36) & 1) == 0 || self->_generationTimeSecs != *(a3 + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 36))
    {
      goto LABEL_19;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 36) & 2) == 0 || self->_expirationAgeSecs != *(a3 + 4))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 36) & 2) != 0)
    {
      goto LABEL_19;
    }

    markets = self->_markets;
    if (markets | *(a3 + 3))
    {

      LOBYTE(v5) = [(NSMutableArray *)markets isEqual:?];
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
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_version;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  generationTimeSecs = self->_generationTimeSecs;
  if (generationTimeSecs < 0.0)
  {
    generationTimeSecs = -generationTimeSecs;
  }

  *v6.i64 = floor(generationTimeSecs + 0.5);
  v10 = (generationTimeSecs - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    v13 = 2654435761 * self->_expirationAgeSecs;
  }

  else
  {
    v13 = 0;
  }

  return v12 ^ v8 ^ v13 ^ [(NSMutableArray *)self->_markets hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = *(a3 + 36);
  if ((v4 & 4) != 0)
  {
    self->_version = *(a3 + 8);
    *&self->_has |= 4u;
    v4 = *(a3 + 36);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a3 + 36) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_generationTimeSecs = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 36) & 2) != 0)
  {
LABEL_4:
    self->_expirationAgeSecs = *(a3 + 4);
    *&self->_has |= 2u;
  }

LABEL_5:
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(a3 + 3);
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

        [(TRANSITPbRegionPreloadManifest *)self addMarkets:*(*(&v10 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end