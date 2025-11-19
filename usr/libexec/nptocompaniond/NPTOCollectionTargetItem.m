@interface NPTOCollectionTargetItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)subtypeAsString:(int)a3;
- (id)typeAsString:(int)a3;
- (int)StringAsSubtype:(id)a3;
- (int)StringAsType:(id)a3;
- (int)assetIndexAtIndex:(unint64_t)a3;
- (int)keyAssetIndexAtIndex:(unint64_t)a3;
- (int)subtype;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasSubtype:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPTOCollectionTargetItem

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = NPTOCollectionTargetItem;
  [(NPTOCollectionTargetItem *)&v3 dealloc];
}

- (int)assetIndexAtIndex:(unint64_t)a3
{
  p_assetIndexs = &self->_assetIndexs;
  count = self->_assetIndexs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_assetIndexs->list[a3];
}

- (int)keyAssetIndexAtIndex:(unint64_t)a3
{
  p_keyAssetIndexs = &self->_keyAssetIndexs;
  count = self->_keyAssetIndexs.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_keyAssetIndexs->list[a3];
}

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (void)setHasType:(BOOL)a3
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

- (id)typeAsString:(int)a3
{
  if (a3 >= 4)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_10008B698[a3];
  }

  return v4;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Album"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SmartAlbum"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Moment"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)subtype
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_subtype;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSubtype:(BOOL)a3
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

- (id)subtypeAsString:(int)a3
{
  if (a3 <= 99)
  {
    if (a3)
    {
      if (a3 != 2)
      {
LABEL_22:
        v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];

        return v4;
      }

      v4 = @"AlbumRegular";
    }

    else
    {
      v4 = @"AlbumAny";
    }
  }

  else
  {
    switch(a3)
    {
      case 100:
        v4 = @"AlbumMyPhotoStream";

        break;
      case 101:
        v4 = @"AlbumCloudShared";

        break;
      case 203:
        v4 = @"SmartAlbumFavorites";

        return v4;
      default:
        goto LABEL_22;
    }
  }

  return v4;
}

- (int)StringAsSubtype:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AlbumAny"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AlbumRegular"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"AlbumMyPhotoStream"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"AlbumCloudShared"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"SmartAlbumFavorites"])
  {
    v4 = 203;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPTOCollectionTargetItem;
  v3 = [(NPTOCollectionTargetItem *)&v7 description];
  v4 = [(NPTOCollectionTargetItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uuidData = self->_uuidData;
  if (uuidData)
  {
    [v3 setObject:uuidData forKey:@"uuidData"];
  }

  if (*&self->_has)
  {
    v6 = [NSNumber numberWithInt:self->_collectionTarget];
    [v4 setObject:v6 forKey:@"collectionTarget"];
  }

  v7 = PBRepeatedInt32NSArray();
  [v4 setObject:v7 forKey:@"assetIndex"];

  v8 = PBRepeatedInt32NSArray();
  [v4 setObject:v8 forKey:@"keyAssetIndex"];

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v4 setObject:subtitle forKey:@"subtitle"];
  }

  collectionMetadata = self->_collectionMetadata;
  if (collectionMetadata)
  {
    [v4 setObject:collectionMetadata forKey:@"collectionMetadata"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    type = self->_type;
    if (type >= 4)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v14 = off_10008B698[type];
    }

    [v4 setObject:v14 forKey:@"type"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    subtype = self->_subtype;
    if (subtype <= 99)
    {
      if (!subtype)
      {
        v16 = @"AlbumAny";
        goto LABEL_29;
      }

      if (subtype == 2)
      {
        v16 = @"AlbumRegular";
        goto LABEL_29;
      }
    }

    else
    {
      switch(subtype)
      {
        case 100:
          v16 = @"AlbumMyPhotoStream";
          goto LABEL_29;
        case 101:
          v16 = @"AlbumCloudShared";
          goto LABEL_29;
        case 203:
          v16 = @"SmartAlbumFavorites";
LABEL_29:
          [v4 setObject:v16 forKey:@"subtype"];

          goto LABEL_30;
      }
    }

    v16 = [NSString stringWithFormat:@"(unknown: %i)", self->_subtype];
    goto LABEL_29;
  }

LABEL_30:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_uuidData)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_assetIndexs.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      v4 = v8;
      ++v5;
    }

    while (v5 < self->_assetIndexs.count);
  }

  if (self->_keyAssetIndexs.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      v4 = v8;
      ++v6;
    }

    while (v6 < self->_keyAssetIndexs.count);
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_collectionMetadata)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (self->_uuidData)
  {
    [v4 setUuidData:?];
    v4 = v13;
  }

  if (*&self->_has)
  {
    *(v4 + 16) = self->_collectionTarget;
    *(v4 + 112) |= 1u;
  }

  if ([(NPTOCollectionTargetItem *)self assetIndexsCount])
  {
    [v13 clearAssetIndexs];
    v5 = [(NPTOCollectionTargetItem *)self assetIndexsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v13 addAssetIndex:{-[NPTOCollectionTargetItem assetIndexAtIndex:](self, "assetIndexAtIndex:", i)}];
      }
    }
  }

  if ([(NPTOCollectionTargetItem *)self keyAssetIndexsCount])
  {
    [v13 clearKeyAssetIndexs];
    v8 = [(NPTOCollectionTargetItem *)self keyAssetIndexsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [v13 addKeyAssetIndex:{-[NPTOCollectionTargetItem keyAssetIndexAtIndex:](self, "keyAssetIndexAtIndex:", j)}];
      }
    }
  }

  if (self->_title)
  {
    [v13 setTitle:?];
  }

  v11 = v13;
  if (self->_subtitle)
  {
    [v13 setSubtitle:?];
    v11 = v13;
  }

  if (self->_collectionMetadata)
  {
    [v13 setCollectionMetadata:?];
    v11 = v13;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v11[24] = self->_type;
    *(v11 + 112) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11[20] = self->_subtype;
    *(v11 + 112) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_uuidData copyWithZone:a3];
  v7 = v5[13];
  v5[13] = v6;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_collectionTarget;
    *(v5 + 112) |= 1u;
  }

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = v5[11];
  v5[11] = v8;

  v10 = [(NSString *)self->_subtitle copyWithZone:a3];
  v11 = v5[9];
  v5[9] = v10;

  v12 = [(NSData *)self->_collectionMetadata copyWithZone:a3];
  v13 = v5[7];
  v5[7] = v12;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_type;
    *(v5 + 112) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_subtype;
    *(v5 + 112) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  uuidData = self->_uuidData;
  if (uuidData | *(v4 + 13))
  {
    if (![(NSData *)uuidData isEqual:?])
    {
      goto LABEL_26;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 112) & 1) == 0 || self->_collectionTarget != *(v4 + 16))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 112))
  {
LABEL_26:
    v9 = 0;
    goto LABEL_27;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_26;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_26;
  }

  title = self->_title;
  if (title | *(v4 + 11))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_26;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(v4 + 9))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_26;
    }
  }

  collectionMetadata = self->_collectionMetadata;
  if (collectionMetadata | *(v4 + 7))
  {
    if (![(NSData *)collectionMetadata isEqual:?])
    {
      goto LABEL_26;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 112) & 4) == 0 || self->_type != *(v4 + 24))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 112) & 4) != 0)
  {
    goto LABEL_26;
  }

  v9 = (*(v4 + 112) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 112) & 2) == 0 || self->_subtype != *(v4 + 20))
    {
      goto LABEL_26;
    }

    v9 = 1;
  }

LABEL_27:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_uuidData hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_collectionTarget;
  }

  else
  {
    v4 = 0;
  }

  v5 = PBRepeatedInt32Hash();
  v6 = PBRepeatedInt32Hash();
  v7 = [(NSString *)self->_title hash];
  v8 = [(NSString *)self->_subtitle hash];
  v9 = [(NSData *)self->_collectionMetadata hash];
  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_type;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

  v10 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v11 = 2654435761 * self->_subtype;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (*(v4 + 13))
  {
    [(NPTOCollectionTargetItem *)self setUuidData:?];
    v4 = v13;
  }

  if (*(v4 + 112))
  {
    self->_collectionTarget = *(v4 + 16);
    *&self->_has |= 1u;
  }

  v5 = [v4 assetIndexsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[NPTOCollectionTargetItem addAssetIndex:](self, "addAssetIndex:", [v13 assetIndexAtIndex:i]);
    }
  }

  v8 = [v13 keyAssetIndexsCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[NPTOCollectionTargetItem addKeyAssetIndex:](self, "addKeyAssetIndex:", [v13 keyAssetIndexAtIndex:j]);
    }
  }

  v11 = v13;
  if (v13[11])
  {
    [(NPTOCollectionTargetItem *)self setTitle:?];
    v11 = v13;
  }

  if (v11[9])
  {
    [(NPTOCollectionTargetItem *)self setSubtitle:?];
    v11 = v13;
  }

  if (v11[7])
  {
    [(NPTOCollectionTargetItem *)self setCollectionMetadata:?];
    v11 = v13;
  }

  v12 = *(v11 + 112);
  if ((v12 & 4) != 0)
  {
    self->_type = *(v11 + 24);
    *&self->_has |= 4u;
    v12 = *(v11 + 112);
  }

  if ((v12 & 2) != 0)
  {
    self->_subtype = *(v11 + 20);
    *&self->_has |= 2u;
  }
}

@end