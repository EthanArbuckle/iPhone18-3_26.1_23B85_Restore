@interface NPTOAssetCollection
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)localIdentifier;
- (int)assetIndexAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPTOAssetCollection

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = NPTOAssetCollection;
  [(NPTOAssetCollection *)&v3 dealloc];
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPTOAssetCollection;
  v3 = [(NPTOAssetCollection *)&v7 description];
  v4 = [(NPTOAssetCollection *)self dictionaryRepresentation];
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

  v6 = PBRepeatedInt32NSArray();
  [v4 setObject:v6 forKey:@"assetIndex"];

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  deprecatedSubtitle = self->_deprecatedSubtitle;
  if (deprecatedSubtitle)
  {
    [v4 setObject:deprecatedSubtitle forKey:@"deprecated_subtitle"];
  }

  deprecatedKeyAssetUUIDData = self->_deprecatedKeyAssetUUIDData;
  if (deprecatedKeyAssetUUIDData)
  {
    [v4 setObject:deprecatedKeyAssetUUIDData forKey:@"deprecated_keyAssetUUIDData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uuidData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_assetIndexs.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      v4 = v6;
      ++v5;
    }

    while (v5 < self->_assetIndexs.count);
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_deprecatedSubtitle)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_deprecatedKeyAssetUUIDData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_uuidData)
  {
    [v8 setUuidData:?];
  }

  if ([(NPTOAssetCollection *)self assetIndexsCount])
  {
    [v8 clearAssetIndexs];
    v4 = [(NPTOAssetCollection *)self assetIndexsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v8 addAssetIndex:{-[NPTOAssetCollection assetIndexAtIndex:](self, "assetIndexAtIndex:", i)}];
      }
    }
  }

  if (self->_title)
  {
    [v8 setTitle:?];
  }

  v7 = v8;
  if (self->_deprecatedSubtitle)
  {
    [v8 setDeprecatedSubtitle:?];
    v7 = v8;
  }

  if (self->_deprecatedKeyAssetUUIDData)
  {
    [v8 setDeprecatedKeyAssetUUIDData:?];
    v7 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_uuidData copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  PBRepeatedInt32Copy();
  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(NSString *)self->_deprecatedSubtitle copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSData *)self->_deprecatedKeyAssetUUIDData copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((uuidData = self->_uuidData, !(uuidData | v4[7])) || -[NSData isEqual:](uuidData, "isEqual:")) && PBRepeatedInt32IsEqual() && ((title = self->_title, !(title | v4[6])) || -[NSString isEqual:](title, "isEqual:")) && ((deprecatedSubtitle = self->_deprecatedSubtitle, !(deprecatedSubtitle | v4[5])) || -[NSString isEqual:](deprecatedSubtitle, "isEqual:")))
  {
    deprecatedKeyAssetUUIDData = self->_deprecatedKeyAssetUUIDData;
    if (deprecatedKeyAssetUUIDData | v4[4])
    {
      v9 = [(NSData *)deprecatedKeyAssetUUIDData isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_uuidData hash];
  v4 = PBRepeatedInt32Hash() ^ v3;
  v5 = [(NSString *)self->_title hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_deprecatedSubtitle hash];
  return v6 ^ [(NSData *)self->_deprecatedKeyAssetUUIDData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4[7])
  {
    [(NPTOAssetCollection *)self setUuidData:?];
    v4 = v9;
  }

  v5 = [v4 assetIndexsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[NPTOAssetCollection addAssetIndex:](self, "addAssetIndex:", [v9 assetIndexAtIndex:i]);
    }
  }

  v8 = v9;
  if (v9[6])
  {
    [(NPTOAssetCollection *)self setTitle:?];
    v8 = v9;
  }

  if (v8[5])
  {
    [(NPTOAssetCollection *)self setDeprecatedSubtitle:?];
    v8 = v9;
  }

  if (v8[4])
  {
    [(NPTOAssetCollection *)self setDeprecatedKeyAssetUUIDData:?];
    v8 = v9;
  }
}

- (id)localIdentifier
{
  v2 = [(NPTOAssetCollection *)self uuidData];
  v3 = [v2 npto_uuid];
  v4 = [v3 UUIDString];
  v5 = [PHAssetCollection localIdentifierWithUUID:v4];

  return v5;
}

@end