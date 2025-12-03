@interface NPTOAssetCollection
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)localIdentifier;
- (int)assetIndexAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPTOAssetCollection

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = NPTOAssetCollection;
  [(NPTOAssetCollection *)&v3 dealloc];
}

- (int)assetIndexAtIndex:(unint64_t)index
{
  p_assetIndexs = &self->_assetIndexs;
  count = self->_assetIndexs.count;
  if (count <= index)
  {
    v6 = [NSString stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_assetIndexs->list[index];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPTOAssetCollection;
  v3 = [(NPTOAssetCollection *)&v7 description];
  dictionaryRepresentation = [(NPTOAssetCollection *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuidData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_assetIndexs.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      toCopy = v6;
      ++v5;
    }

    while (v5 < self->_assetIndexs.count);
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_deprecatedSubtitle)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_deprecatedKeyAssetUUIDData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_uuidData)
  {
    [toCopy setUuidData:?];
  }

  if ([(NPTOAssetCollection *)self assetIndexsCount])
  {
    [toCopy clearAssetIndexs];
    assetIndexsCount = [(NPTOAssetCollection *)self assetIndexsCount];
    if (assetIndexsCount)
    {
      v5 = assetIndexsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addAssetIndex:{-[NPTOAssetCollection assetIndexAtIndex:](self, "assetIndexAtIndex:", i)}];
      }
    }
  }

  if (self->_title)
  {
    [toCopy setTitle:?];
  }

  v7 = toCopy;
  if (self->_deprecatedSubtitle)
  {
    [toCopy setDeprecatedSubtitle:?];
    v7 = toCopy;
  }

  if (self->_deprecatedKeyAssetUUIDData)
  {
    [toCopy setDeprecatedKeyAssetUUIDData:?];
    v7 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_uuidData copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  PBRepeatedInt32Copy();
  v8 = [(NSString *)self->_title copyWithZone:zone];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(NSString *)self->_deprecatedSubtitle copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSData *)self->_deprecatedKeyAssetUUIDData copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((uuidData = self->_uuidData, !(uuidData | equalCopy[7])) || -[NSData isEqual:](uuidData, "isEqual:")) && PBRepeatedInt32IsEqual() && ((title = self->_title, !(title | equalCopy[6])) || -[NSString isEqual:](title, "isEqual:")) && ((deprecatedSubtitle = self->_deprecatedSubtitle, !(deprecatedSubtitle | equalCopy[5])) || -[NSString isEqual:](deprecatedSubtitle, "isEqual:")))
  {
    deprecatedKeyAssetUUIDData = self->_deprecatedKeyAssetUUIDData;
    if (deprecatedKeyAssetUUIDData | equalCopy[4])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (fromCopy[7])
  {
    [(NPTOAssetCollection *)self setUuidData:?];
    fromCopy = v9;
  }

  assetIndexsCount = [fromCopy assetIndexsCount];
  if (assetIndexsCount)
  {
    v6 = assetIndexsCount;
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
  uuidData = [(NPTOAssetCollection *)self uuidData];
  npto_uuid = [uuidData npto_uuid];
  uUIDString = [npto_uuid UUIDString];
  v5 = [PHAssetCollection localIdentifierWithUUID:uUIDString];

  return v5;
}

@end