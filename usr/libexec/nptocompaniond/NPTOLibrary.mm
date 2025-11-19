@interface NPTOLibrary
- (BOOL)isEqual:(id)a3;
- (id)_npto_assetCollections;
- (id)_npto_assetIndices;
- (id)_npto_assetUUIDsInAssetCollection:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)npto_assetCollectionsContainingAssetUUID:(id)a3;
- (id)npto_changesFromLibrary:(id)a3 excludingAssets:(id)a4;
- (int64_t)_npto_addAsset:(id)a3;
- (int64_t)npto_indexOfAsset:(id)a3;
- (void)addAsset:(id)a3;
- (void)addAssetCollection:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)npto_addAssetCollection:(id)a3 assets:(id)a4 keyAssets:(id)a5;
- (void)npto_addAssetCollections:(id)a3;
- (void)npto_addAssets:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPTOLibrary

- (void)addAsset:(id)a3
{
  v4 = a3;
  assets = self->_assets;
  v8 = v4;
  if (!assets)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_assets;
    self->_assets = v6;

    v4 = v8;
    assets = self->_assets;
  }

  [(NSMutableArray *)assets addObject:v4];
}

- (void)addAssetCollection:(id)a3
{
  v4 = a3;
  assetCollections = self->_assetCollections;
  v8 = v4;
  if (!assetCollections)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_assetCollections;
    self->_assetCollections = v6;

    v4 = v8;
    assetCollections = self->_assetCollections;
  }

  [(NSMutableArray *)assetCollections addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPTOLibrary;
  v3 = [(NPTOLibrary *)&v7 description];
  v4 = [(NPTOLibrary *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

          v10 = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
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

          v17 = [*(*(&v19 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"assetCollection"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v12 = a3;
  if ([(NPTOLibrary *)self assetsCount])
  {
    [v12 clearAssets];
    v4 = [(NPTOLibrary *)self assetsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPTOLibrary *)self assetAtIndex:i];
        [v12 addAsset:v7];
      }
    }
  }

  if ([(NPTOLibrary *)self assetCollectionsCount])
  {
    [v12 clearAssetCollections];
    v8 = [(NPTOLibrary *)self assetCollectionsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPTOLibrary *)self assetCollectionAtIndex:j];
        [v12 addAssetCollection:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v11 = [*(*(&v23 + 1) + 8 * v10) copyWithZone:a3];
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

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{a3, v19}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((assets = self->_assets, !(assets | v4[2])) || -[NSMutableArray isEqual:](assets, "isEqual:")))
  {
    assetCollections = self->_assetCollections;
    if (assetCollections | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4[2];
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
  v10 = v4[1];
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

- (void)npto_addAssets:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [(NPTOLibrary *)self _npto_addAsset:v9, v11];
        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)npto_addAssetCollections:(id)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)npto_addAssetCollection:(id)a3 assets:(id)a4 keyAssets:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NPTOLibrary *)self _npto_assetCollections];
  v12 = [v8 npto_uuid];
  v35 = v11;
  v13 = [v11 objectForKey:v12];

  if (!v13)
  {
    v13 = objc_alloc_init(NPTOAssetCollection);
    v14 = [v8 npto_uuid];
    v15 = [v14 npto_data];
    [(NPTOAssetCollection *)v13 setUuidData:v15];

    v16 = [v8 localizedTitle];
    [(NPTOAssetCollection *)v13 setTitle:v16];

    v17 = [v8 localizedSubtitle];
    [(NPTOAssetCollection *)v13 setDeprecatedSubtitle:v17];

    if ([v10 count])
    {
      v18 = [v10 firstObject];
      v19 = [v18 npto_uuid];
      v20 = [v19 npto_data];
      [(NPTOAssetCollection *)v13 setDeprecatedKeyAssetUUIDData:v20];
    }

    [(NPTOLibrary *)self addAssetCollection:v13];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = v9;
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
  v28 = v10;
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

- (int64_t)npto_indexOfAsset:(id)a3
{
  v4 = a3;
  v5 = [(NPTOLibrary *)self _npto_assetIndices];
  v6 = [v4 localIdentifier];

  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (id)npto_changesFromLibrary:(id)a3 excludingAssets:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NPTOLibraryChanges alloc] _initWithMasterLibrary:self clientLibrary:v7 excludedAssets:v6];

  return v8;
}

- (id)npto_assetCollectionsContainingAssetUUID:(id)a3
{
  v4 = a3;
  v5 = [(NPTOLibrary *)self assetCollections];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(NPTOLibrary *)self assetCollections];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NPTOLibrary *)self _npto_assetUUIDsInAssetCollection:v12];
        v14 = [v13 containsObject:v4];

        if (v14)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v6 copy];

  return v15;
}

- (int64_t)_npto_addAsset:(id)a3
{
  v4 = a3;
  v5 = [(NPTOLibrary *)self _npto_assetIndices];
  v6 = [v4 localIdentifier];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v8 = objc_alloc_init(NPTOAsset);
    v9 = [v4 npto_uuid];
    v10 = [v9 npto_data];
    [(NPTOAsset *)v8 setUuidData:v10];

    v11 = [v4 modificationDate];
    if (v11)
    {
      [(NPTOAsset *)v8 setDateAsDate:v11];
    }

    else
    {
      v12 = [v4 creationDate];
      [(NPTOAsset *)v8 setDateAsDate:v12];
    }

    [(NPTOLibrary *)self addAsset:v8];
    v7 = [NSNumber numberWithUnsignedInteger:[(NPTOLibrary *)self assetsCount]- 1];
    v13 = [v4 localIdentifier];
    [v5 setObject:v7 forKey:v13];
  }

  v14 = [v7 integerValue];

  return v14;
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

- (id)_npto_assetUUIDsInAssetCollection:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 assetIndexsCount]);
  if ([v4 assetIndexsCount])
  {
    v6 = 0;
    do
    {
      v7 = -[NPTOLibrary assetAtIndex:](self, "assetAtIndex:", [v4 assetIndexAtIndex:v6]);
      v8 = [v7 uuidData];
      v9 = [v8 npto_uuid];
      [v5 addObject:v9];

      ++v6;
    }

    while (v6 < [v4 assetIndexsCount]);
  }

  v10 = [v5 copy];

  return v10;
}

@end