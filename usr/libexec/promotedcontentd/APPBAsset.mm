@interface APPBAsset
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)locationAsString:(int)a3;
- (int)StringAsLocation:(id)a3;
- (int)location;
- (unint64_t)hash;
- (void)addAssetInfo:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLocation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBAsset

- (int)location
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_location;
  }

  else
  {
    return 7500;
  }
}

- (void)setHasLocation:(BOOL)a3
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

- (id)locationAsString:(int)a3
{
  if ((a3 - 7500) >= 3)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047D030 + (a3 - 7500));
  }

  return v4;
}

- (int)StringAsLocation:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Left"])
  {
    v4 = 7500;
  }

  else if ([v3 isEqualToString:@"Center"])
  {
    v4 = 7501;
  }

  else if ([v3 isEqualToString:@"Right"])
  {
    v4 = 7502;
  }

  else
  {
    v4 = 7500;
  }

  return v4;
}

- (void)addAssetInfo:(id)a3
{
  v4 = a3;
  assetInfos = self->_assetInfos;
  v8 = v4;
  if (!assetInfos)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_assetInfos;
    self->_assetInfos = v6;

    v4 = v8;
    assetInfos = self->_assetInfos;
  }

  [(NSMutableArray *)assetInfos addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAsset;
  v3 = [(APPBAsset *)&v7 description];
  v4 = [(APPBAsset *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = self->_location - 7500;
    if (v6 >= 3)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_location];
    }

    else
    {
      v7 = *(&off_10047D030 + v6);
    }

    [v4 setObject:v7 forKey:@"location"];
  }

  if ([(NSMutableArray *)self->_assetInfos count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_assetInfos, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = self->_assetInfos;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"assetInfo"];
  }

  if (*&self->_has)
  {
    v15 = [NSNumber numberWithUnsignedLongLong:self->_adamId];
    [v4 setObject:v15 forKey:@"adamId"];
  }

  treatment = self->_treatment;
  if (treatment)
  {
    [v4 setObject:treatment forKey:@"treatment"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_assetInfos;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_treatment)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 6) = self->_location;
    *(v4 + 48) |= 2u;
  }

  if ([(APPBAsset *)self assetInfosCount])
  {
    [v10 clearAssetInfos];
    v5 = [(APPBAsset *)self assetInfosCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(APPBAsset *)self assetInfoAtIndex:i];
        [v10 addAssetInfo:v8];
      }
    }
  }

  v9 = v10;
  if (*&self->_has)
  {
    *(v10 + 1) = self->_adamId;
    *(v10 + 48) |= 1u;
  }

  if (self->_treatment)
  {
    [v10 setTreatment:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 6) = self->_location;
    *(v5 + 48) |= 2u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_assetInfos;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) copyWithZone:{a3, v17}];
        [v5 addAssetInfo:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    v5[1] = self->_adamId;
    *(v5 + 48) |= 1u;
  }

  v14 = [(NSString *)self->_treatment copyWithZone:a3, v17];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  name = self->_name;
  if (name | *(v4 + 4))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_19;
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_location != *(v4 + 6))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_19;
  }

  assetInfos = self->_assetInfos;
  if (assetInfos | *(v4 + 2))
  {
    if (![(NSMutableArray *)assetInfos isEqual:?])
    {
LABEL_19:
      v9 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  if (has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_adamId != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_19;
  }

  treatment = self->_treatment;
  if (treatment | *(v4 + 5))
  {
    v9 = [(NSString *)treatment isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_20:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_location;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSMutableArray *)self->_assetInfos hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_adamId;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_treatment hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 4))
  {
    [(APPBAsset *)self setName:?];
  }

  if ((*(v4 + 48) & 2) != 0)
  {
    self->_location = *(v4 + 6);
    *&self->_has |= 2u;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(v4 + 2);
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

        [(APPBAsset *)self addAssetInfo:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(v4 + 48))
  {
    self->_adamId = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(APPBAsset *)self setTreatment:?];
  }
}

@end