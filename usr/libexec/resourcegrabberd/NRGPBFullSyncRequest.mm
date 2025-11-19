@interface NRGPBFullSyncRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)iconVariantsAtIndex:(unint64_t)a3;
- (void)addBundleIDs:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NRGPBFullSyncRequest

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = NRGPBFullSyncRequest;
  [(NRGPBFullSyncRequest *)&v3 dealloc];
}

- (int)iconVariantsAtIndex:(unint64_t)a3
{
  p_iconVariants = &self->_iconVariants;
  count = self->_iconVariants.count;
  if (count <= a3)
  {
    v6 = [NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v7 = [NSException exceptionWithName:NSRangeException reason:v6 userInfo:0];
    [v7 raise];
  }

  return p_iconVariants->list[a3];
}

- (void)addBundleIDs:(id)a3
{
  v4 = a3;
  bundleIDs = self->_bundleIDs;
  v8 = v4;
  if (!bundleIDs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_bundleIDs;
    self->_bundleIDs = v6;

    v4 = v8;
    bundleIDs = self->_bundleIDs;
  }

  [(NSMutableArray *)bundleIDs addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRGPBFullSyncRequest;
  v3 = [(NRGPBFullSyncRequest *)&v7 description];
  v4 = [(NRGPBFullSyncRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = PBRepeatedInt32NSArray();
  [v3 setObject:v4 forKey:@"iconVariants"];

  bundleIDs = self->_bundleIDs;
  if (bundleIDs)
  {
    [v3 setObject:bundleIDs forKey:@"bundleIDs"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_iconVariants.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_iconVariants.list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_iconVariants.count);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_bundleIDs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)copyTo:(id)a3
{
  v11 = a3;
  if ([(NRGPBFullSyncRequest *)self iconVariantsCount])
  {
    [v11 clearIconVariants];
    v4 = [(NRGPBFullSyncRequest *)self iconVariantsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v11 addIconVariants:{-[NRGPBFullSyncRequest iconVariantsAtIndex:](self, "iconVariantsAtIndex:", i)}];
      }
    }
  }

  if ([(NRGPBFullSyncRequest *)self bundleIDsCount])
  {
    [v11 clearBundleIDs];
    v7 = [(NRGPBFullSyncRequest *)self bundleIDsCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        v10 = [(NRGPBFullSyncRequest *)self bundleIDsAtIndex:j];
        [v11 addBundleIDs:v10];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedInt32Copy();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_bundleIDs;
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
        [v5 addBundleIDs:v11];

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
  if ([v4 isMemberOfClass:objc_opt_class()] && PBRepeatedInt32IsEqual())
  {
    bundleIDs = self->_bundleIDs;
    if (bundleIDs | v4[4])
    {
      v6 = [(NSMutableArray *)bundleIDs isEqual:?];
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
  v4 = a3;
  v5 = [v4 iconVariantsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[NRGPBFullSyncRequest addIconVariants:](self, "addIconVariants:", [v4 iconVariantsAtIndex:i]);
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v4[4];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NRGPBFullSyncRequest *)self addBundleIDs:*(*(&v13 + 1) + 8 * v12), v13];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

@end