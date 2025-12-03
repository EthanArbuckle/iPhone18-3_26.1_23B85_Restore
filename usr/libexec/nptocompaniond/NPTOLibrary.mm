@interface NPTOLibrary
- (BOOL)isEqual:(id)equal;
- (id)_npto_assetCollections;
- (id)_npto_assetIndices;
- (id)_npto_assetUUIDsInAssetCollection:(id)collection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)npto_assetCollectionsContainingAssetUUID:(id)d;
- (id)npto_changesFromLibrary:(id)library excludingAssets:(id)assets;
- (int64_t)_npto_addAsset:(id)asset;
- (int64_t)npto_indexOfAsset:(id)asset;
- (void)addAsset:(id)asset;
- (void)addAssetCollection:(id)collection;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)npto_addAssetCollection:(id)collection assets:(id)assets keyAssets:(id)keyAssets;
- (void)npto_addAssetCollections:(id)collections;
- (void)npto_addAssets:(id)assets;
- (void)writeTo:(id)to;
@end

@implementation NPTOLibrary

- (void)addAsset:(id)asset
{
  assetCopy = asset;
  assets = self->_assets;
  v8 = assetCopy;
  if (!assets)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_assets;
    self->_assets = v6;

    assetCopy = v8;
    assets = self->_assets;
  }

  [(NSMutableArray *)assets addObject:assetCopy];
}

- (void)addAssetCollection:(id)collection
{
  collectionCopy = collection;
  assetCollections = self->_assetCollections;
  v8 = collectionCopy;
  if (!assetCollections)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_assetCollections;
    self->_assetCollections = v6;

    collectionCopy = v8;
    assetCollections = self->_assetCollections;
  }

  [(NSMutableArray *)assetCollections addObject:collectionCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPTOLibrary;
  v3 = [(NPTOLibrary *)&v7 description];
  dictionaryRepresentation = [(NPTOLibrary *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_assets count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_assets, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_assets;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"asset"];
  }

  if ([(NSMutableArray *)self->_assetCollections count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_assetCollections, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_assetCollections;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"assetCollection"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_assets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_assetCollections;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPTOLibrary *)self assetsCount])
  {
    [toCopy clearAssets];
    assetsCount = [(NPTOLibrary *)self assetsCount];
    if (assetsCount)
    {
      v5 = assetsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPTOLibrary *)self assetAtIndex:i];
        [toCopy addAsset:v7];
      }
    }
  }

  if ([(NPTOLibrary *)self assetCollectionsCount])
  {
    [toCopy clearAssetCollections];
    assetCollectionsCount = [(NPTOLibrary *)self assetCollectionsCount];
    if (assetCollectionsCount)
    {
      v9 = assetCollectionsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPTOLibrary *)self assetCollectionAtIndex:j];
        [toCopy addAssetCollection:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_assets;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v23 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addAsset:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_assetCollections;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{zone, v19}];
        [v5 addAssetCollection:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((assets = self->_assets, !(assets | equalCopy[2])) || -[NSMutableArray isEqual:](assets, "isEqual:")))
  {
    assetCollections = self->_assetCollections;
    if (assetCollections | equalCopy[1])
    {
      v7 = [(NSMutableArray *)assetCollections isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = fromCopy[2];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPTOLibrary *)self addAsset:*(*(&v19 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = fromCopy[1];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NPTOLibrary *)self addAssetCollection:*(*(&v15 + 1) + 8 * v14), v15];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)npto_addAssets:(id)assets
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  assetsCopy = assets;
  v5 = [assetsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [(NPTOLibrary *)self _npto_addAsset:v9, v11];
        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [assetsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)npto_addAssetCollections:(id)collections
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  collectionsCopy = collections;
  v5 = [collectionsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(collectionsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [PHAsset fetchAssetsInAssetCollection:v9 options:0, v13];
        v12 = [PHAsset fetchKeyAssetsInAssetCollection:v9 options:0];
        [(NPTOLibrary *)self npto_addAssetCollection:v9 assets:v11 keyAssets:v12];

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [collectionsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)npto_addAssetCollection:(id)collection assets:(id)assets keyAssets:(id)keyAssets
{
  collectionCopy = collection;
  assetsCopy = assets;
  keyAssetsCopy = keyAssets;
  _npto_assetCollections = [(NPTOLibrary *)self _npto_assetCollections];
  npto_uuid = [collectionCopy npto_uuid];
  v35 = _npto_assetCollections;
  v13 = [_npto_assetCollections objectForKey:npto_uuid];

  if (!v13)
  {
    v13 = objc_alloc_init(NPTOAssetCollection);
    npto_uuid2 = [collectionCopy npto_uuid];
    npto_data = [npto_uuid2 npto_data];
    [(NPTOAssetCollection *)v13 setUuidData:npto_data];

    localizedTitle = [collectionCopy localizedTitle];
    [(NPTOAssetCollection *)v13 setTitle:localizedTitle];

    localizedSubtitle = [collectionCopy localizedSubtitle];
    [(NPTOAssetCollection *)v13 setDeprecatedSubtitle:localizedSubtitle];

    if ([keyAssetsCopy count])
    {
      firstObject = [keyAssetsCopy firstObject];
      npto_uuid3 = [firstObject npto_uuid];
      npto_data2 = [npto_uuid3 npto_data];
      [(NPTOAssetCollection *)v13 setDeprecatedKeyAssetUUIDData:npto_data2];
    }

    [(NPTOLibrary *)self addAssetCollection:v13];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = assetsCopy;
  v22 = [v21 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v41;
    do
    {
      v25 = 0;
      do
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v40 + 1) + 8 * v25);
        v27 = objc_autoreleasePoolPush();
        [(NPTOAssetCollection *)v13 addAssetIndex:[(NPTOLibrary *)self _npto_addAsset:v26]];
        objc_autoreleasePoolPop(v27);
        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v23);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = keyAssetsCopy;
  v29 = [v28 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v37;
    do
    {
      v32 = 0;
      do
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v36 + 1) + 8 * v32);
        v34 = objc_autoreleasePoolPush();
        [(NPTOAssetCollection *)v13 addAssetIndex:[(NPTOLibrary *)self _npto_addAsset:v33]];
        objc_autoreleasePoolPop(v34);
        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v30);
  }
}

- (int64_t)npto_indexOfAsset:(id)asset
{
  assetCopy = asset;
  _npto_assetIndices = [(NPTOLibrary *)self _npto_assetIndices];
  localIdentifier = [assetCopy localIdentifier];

  v7 = [_npto_assetIndices objectForKey:localIdentifier];

  if (v7)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (id)npto_changesFromLibrary:(id)library excludingAssets:(id)assets
{
  assetsCopy = assets;
  libraryCopy = library;
  v8 = [[NPTOLibraryChanges alloc] _initWithMasterLibrary:self clientLibrary:libraryCopy excludedAssets:assetsCopy];

  return v8;
}

- (id)npto_assetCollectionsContainingAssetUUID:(id)d
{
  dCopy = d;
  assetCollections = [(NPTOLibrary *)self assetCollections];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [assetCollections count]);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  assetCollections2 = [(NPTOLibrary *)self assetCollections];
  v8 = [assetCollections2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(assetCollections2);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NPTOLibrary *)self _npto_assetUUIDsInAssetCollection:v12];
        v14 = [v13 containsObject:dCopy];

        if (v14)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [assetCollections2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v6 copy];

  return v15;
}

- (int64_t)_npto_addAsset:(id)asset
{
  assetCopy = asset;
  _npto_assetIndices = [(NPTOLibrary *)self _npto_assetIndices];
  localIdentifier = [assetCopy localIdentifier];
  v7 = [_npto_assetIndices objectForKey:localIdentifier];

  if (!v7)
  {
    v8 = objc_alloc_init(NPTOAsset);
    npto_uuid = [assetCopy npto_uuid];
    npto_data = [npto_uuid npto_data];
    [(NPTOAsset *)v8 setUuidData:npto_data];

    modificationDate = [assetCopy modificationDate];
    if (modificationDate)
    {
      [(NPTOAsset *)v8 setDateAsDate:modificationDate];
    }

    else
    {
      creationDate = [assetCopy creationDate];
      [(NPTOAsset *)v8 setDateAsDate:creationDate];
    }

    [(NPTOLibrary *)self addAsset:v8];
    v7 = [NSNumber numberWithUnsignedInteger:[(NPTOLibrary *)self assetsCount]- 1];
    localIdentifier2 = [assetCopy localIdentifier];
    [_npto_assetIndices setObject:v7 forKey:localIdentifier2];
  }

  integerValue = [v7 integerValue];

  return integerValue;
}

- (id)_npto_assetIndices
{
  v3 = objc_getAssociatedObject(self, "_npto_assetIndices");
  if (!v3)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    objc_setAssociatedObject(self, "_npto_assetIndices", v3, 1);
  }

  return v3;
}

- (id)_npto_assetCollections
{
  v3 = objc_getAssociatedObject(self, "_npto_assetCollections");
  if (!v3)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    objc_setAssociatedObject(self, "_npto_assetCollections", v3, 1);
  }

  return v3;
}

- (id)_npto_assetUUIDsInAssetCollection:(id)collection
{
  collectionCopy = collection;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [collectionCopy assetIndexsCount]);
  if ([collectionCopy assetIndexsCount])
  {
    v6 = 0;
    do
    {
      v7 = -[NPTOLibrary assetAtIndex:](self, "assetAtIndex:", [collectionCopy assetIndexAtIndex:v6]);
      uuidData = [v7 uuidData];
      npto_uuid = [uuidData npto_uuid];
      [v5 addObject:npto_uuid];

      ++v6;
    }

    while (v6 < [collectionCopy assetIndexsCount]);
  }

  v10 = [v5 copy];

  return v10;
}

@end