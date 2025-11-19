@interface NPTOCollectionTargetList
- (BOOL)isEqual:(id)a3;
- (id)collectionTargetMapWithLibrary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addCollectionTargetItem:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPTOCollectionTargetList

- (id)collectionTargetMapWithLibrary:(id)a3
{
  v4 = a3;
  v46 = objc_alloc_init(NSMutableDictionary);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(NPTOCollectionTargetList *)self collectionTargetItems];
  v44 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v44)
  {
    v43 = *v48;
    v42 = NPTOLibraryAssetCollectionAssetUUIDsKey;
    v41 = NPTOLibraryAssetCollectionKeyAssetUUIDsKey;
    v40 = NPTOLibraryAssetCollectionTitleKey;
    v39 = NPTOLibraryAssetCollectionSubtitleKey;
    v38 = NPTOLibraryAssetCollectionMetadataKey;
    v5 = &PHImageErrorKey_ptr;
    v45 = NPTOLibraryAssetCollectionSubtypeKey;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v48 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v47 + 1) + 8 * i);
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = objc_alloc_init(v5[69]);
        if ([v7 assetIndexsCount])
        {
          v10 = 0;
          do
          {
            v11 = [v4 assetAtIndex:{objc_msgSend(v7, "assetIndexAtIndex:", v10)}];
            v12 = [v11 uuidData];
            v13 = [v12 npto_uuid];
            [v9 addObject:v13];

            ++v10;
          }

          while (v10 < [v7 assetIndexsCount]);
        }

        if ([v9 count])
        {
          v14 = [v9 copy];
          [v8 setObject:v14 forKeyedSubscript:v42];
        }

        v15 = objc_alloc_init(v5[69]);
        if ([v7 keyAssetIndexsCount])
        {
          v16 = 0;
          do
          {
            v17 = [v4 assetAtIndex:{objc_msgSend(v7, "keyAssetIndexAtIndex:", v16)}];
            v18 = [v17 uuidData];
            v19 = [v18 npto_uuid];
            [v15 addObject:v19];

            ++v16;
          }

          while (v16 < [v7 keyAssetIndexsCount]);
        }

        if ([v15 count])
        {
          v20 = [v15 copy];
          [v8 setObject:v20 forKeyedSubscript:v41];
        }

        v21 = [v7 title];

        if (v21)
        {
          v22 = [v7 title];
          [v8 setObject:v22 forKeyedSubscript:v40];
        }

        v23 = [v7 subtitle];

        if (v23)
        {
          v24 = [v7 subtitle];
          [v8 setObject:v24 forKeyedSubscript:v39];
        }

        v25 = [v7 collectionMetadata];

        if (v25)
        {
          v26 = [v7 collectionMetadata];
          [v8 setObject:v26 forKeyedSubscript:v38];
        }

        if ([v7 type])
        {
          v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 type]);
          [v8 setObject:v27 forKeyedSubscript:v45];
        }

        if ([v7 subtype])
        {
          v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 subtype]);
          [v8 setObject:v28 forKeyedSubscript:v45];
        }

        v29 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 collectionTarget]);
        v30 = [v46 objectForKeyedSubscript:v29];

        if (!v30)
        {
          v30 = objc_alloc_init(NSMutableDictionary);
          v31 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 collectionTarget]);
          [v46 setObject:v30 forKeyedSubscript:v31];
        }

        v32 = [v8 copy];
        v33 = [v7 uuidData];
        v34 = [v33 npto_uuid];
        [v30 setObject:v32 forKeyedSubscript:v34];

        v5 = &PHImageErrorKey_ptr;
      }

      v44 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v44);
  }

  v35 = [v46 copy];

  return v35;
}

- (void)addCollectionTargetItem:(id)a3
{
  v4 = a3;
  collectionTargetItems = self->_collectionTargetItems;
  v8 = v4;
  if (!collectionTargetItems)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_collectionTargetItems;
    self->_collectionTargetItems = v6;

    v4 = v8;
    collectionTargetItems = self->_collectionTargetItems;
  }

  [(NSMutableArray *)collectionTargetItems addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPTOCollectionTargetList;
  v3 = [(NPTOCollectionTargetList *)&v7 description];
  v4 = [(NPTOCollectionTargetList *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_collectionTargetItems count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_collectionTargetItems, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_collectionTargetItems;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"collectionTargetItem"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_collectionTargetItems;
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
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if ([(NPTOCollectionTargetList *)self collectionTargetItemsCount])
  {
    [v8 clearCollectionTargetItems];
    v4 = [(NPTOCollectionTargetList *)self collectionTargetItemsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPTOCollectionTargetList *)self collectionTargetItemAtIndex:i];
        [v8 addCollectionTargetItem:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_collectionTargetItems;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{a3, v13}];
        [v5 addCollectionTargetItem:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    collectionTargetItems = self->_collectionTargetItems;
    if (collectionTargetItems | v4[1])
    {
      v6 = [(NSMutableArray *)collectionTargetItems isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a3 + 1);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NPTOCollectionTargetList *)self addCollectionTargetItem:*(*(&v9 + 1) + 8 * v8), v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end