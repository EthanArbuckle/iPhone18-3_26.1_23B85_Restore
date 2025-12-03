@interface APPBAdBatchRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCachedAds:(id)ads;
- (void)addRequesters:(id)requesters;
- (void)addResourceCacheEntries:(id)entries;
- (void)addTags:(id)tags;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBAdBatchRequest

+ (id)options
{
  if (qword_1004E6CF0 != -1)
  {
    sub_100394618();
  }

  v3 = qword_1004E6CE8;

  return v3;
}

- (void)addResourceCacheEntries:(id)entries
{
  entriesCopy = entries;
  resourceCacheEntries = self->_resourceCacheEntries;
  v8 = entriesCopy;
  if (!resourceCacheEntries)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_resourceCacheEntries;
    self->_resourceCacheEntries = v6;

    entriesCopy = v8;
    resourceCacheEntries = self->_resourceCacheEntries;
  }

  [(NSMutableArray *)resourceCacheEntries addObject:entriesCopy];
}

- (void)addCachedAds:(id)ads
{
  adsCopy = ads;
  cachedAds = self->_cachedAds;
  v8 = adsCopy;
  if (!cachedAds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_cachedAds;
    self->_cachedAds = v6;

    adsCopy = v8;
    cachedAds = self->_cachedAds;
  }

  [(NSMutableArray *)cachedAds addObject:adsCopy];
}

- (void)addTags:(id)tags
{
  tagsCopy = tags;
  tags = self->_tags;
  v8 = tagsCopy;
  if (!tags)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_tags;
    self->_tags = v6;

    tagsCopy = v8;
    tags = self->_tags;
  }

  [(NSMutableArray *)tags addObject:tagsCopy];
}

- (void)addRequesters:(id)requesters
{
  requestersCopy = requesters;
  requesters = self->_requesters;
  v8 = requestersCopy;
  if (!requesters)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_requesters;
    self->_requesters = v6;

    requestersCopy = v8;
    requesters = self->_requesters;
  }

  [(NSMutableArray *)requesters addObject:requestersCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdBatchRequest;
  v3 = [(APPBAdBatchRequest *)&v7 description];
  dictionaryRepresentation = [(APPBAdBatchRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  requestProperties = self->_requestProperties;
  if (requestProperties)
  {
    dictionaryRepresentation = [(APPBRequestProperties *)requestProperties dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"requestProperties"];
  }

  specification = self->_specification;
  if (specification)
  {
    dictionaryRepresentation2 = [(APPBAdSpecification *)specification dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"specification"];
  }

  if ([(NSMutableArray *)self->_resourceCacheEntries count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_resourceCacheEntries, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = self->_resourceCacheEntries;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation3 = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation3];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"resourceCacheEntries"];
  }

  if ([(NSMutableArray *)self->_cachedAds count])
  {
    v15 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_cachedAds, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = self->_cachedAds;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation4 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation4];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKey:@"cachedAds"];
  }

  tags = self->_tags;
  if (tags)
  {
    [v3 setObject:tags forKey:@"tags"];
  }

  if ([(NSMutableArray *)self->_requesters count])
  {
    v23 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_requesters, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = self->_requesters;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      do
      {
        for (k = 0; k != v26; k = k + 1)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v24);
          }

          dictionaryRepresentation5 = [*(*(&v31 + 1) + 8 * k) dictionaryRepresentation];
          [v23 addObject:dictionaryRepresentation5];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKey:@"requesters"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_requestProperties)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_specification)
  {
    PBDataWriterWriteSubmessage();
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_resourceCacheEntries;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v7);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = self->_cachedAds;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = self->_tags;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      v19 = 0;
      do
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteStringField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v17);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = self->_requesters;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v22);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_requestProperties)
  {
    [toCopy setRequestProperties:?];
  }

  if (self->_specification)
  {
    [toCopy setSpecification:?];
  }

  if ([(APPBAdBatchRequest *)self resourceCacheEntriesCount])
  {
    [toCopy clearResourceCacheEntries];
    resourceCacheEntriesCount = [(APPBAdBatchRequest *)self resourceCacheEntriesCount];
    if (resourceCacheEntriesCount)
    {
      v5 = resourceCacheEntriesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(APPBAdBatchRequest *)self resourceCacheEntriesAtIndex:i];
        [toCopy addResourceCacheEntries:v7];
      }
    }
  }

  if ([(APPBAdBatchRequest *)self cachedAdsCount])
  {
    [toCopy clearCachedAds];
    cachedAdsCount = [(APPBAdBatchRequest *)self cachedAdsCount];
    if (cachedAdsCount)
    {
      v9 = cachedAdsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(APPBAdBatchRequest *)self cachedAdsAtIndex:j];
        [toCopy addCachedAds:v11];
      }
    }
  }

  if ([(APPBAdBatchRequest *)self tagsCount])
  {
    [toCopy clearTags];
    tagsCount = [(APPBAdBatchRequest *)self tagsCount];
    if (tagsCount)
    {
      v13 = tagsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(APPBAdBatchRequest *)self tagsAtIndex:k];
        [toCopy addTags:v15];
      }
    }
  }

  if ([(APPBAdBatchRequest *)self requestersCount])
  {
    [toCopy clearRequesters];
    requestersCount = [(APPBAdBatchRequest *)self requestersCount];
    if (requestersCount)
    {
      v17 = requestersCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(APPBAdBatchRequest *)self requestersAtIndex:m];
        [toCopy addRequesters:v19];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(APPBRequestProperties *)self->_requestProperties copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(APPBAdSpecification *)self->_specification copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = self->_resourceCacheEntries;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      v14 = 0;
      do
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v47 + 1) + 8 * v14) copyWithZone:zone];
        [v5 addResourceCacheEntries:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v12);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = self->_cachedAds;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      v20 = 0;
      do
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v43 + 1) + 8 * v20) copyWithZone:zone];
        [v5 addCachedAds:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v18);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = self->_tags;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    do
    {
      v26 = 0;
      do
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v39 + 1) + 8 * v26) copyWithZone:zone];
        [v5 addTags:v27];

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v24);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = self->_requesters;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      v32 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v35 + 1) + 8 * v32) copyWithZone:{zone, v35}];
        [v5 addRequesters:v33];

        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v30);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestProperties = self->_requestProperties, !(requestProperties | equalCopy[2])) || -[APPBRequestProperties isEqual:](requestProperties, "isEqual:")) && ((specification = self->_specification, !(specification | equalCopy[5])) || -[APPBAdSpecification isEqual:](specification, "isEqual:")) && ((resourceCacheEntries = self->_resourceCacheEntries, !(resourceCacheEntries | equalCopy[4])) || -[NSMutableArray isEqual:](resourceCacheEntries, "isEqual:")) && ((cachedAds = self->_cachedAds, !(cachedAds | equalCopy[1])) || -[NSMutableArray isEqual:](cachedAds, "isEqual:")) && ((tags = self->_tags, !(tags | equalCopy[6])) || -[NSMutableArray isEqual:](tags, "isEqual:")))
  {
    requesters = self->_requesters;
    if (requesters | equalCopy[3])
    {
      v11 = [(NSMutableArray *)requesters isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(APPBRequestProperties *)self->_requestProperties hash];
  v4 = [(APPBAdSpecification *)self->_specification hash]^ v3;
  v5 = [(NSMutableArray *)self->_resourceCacheEntries hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_cachedAds hash];
  v7 = [(NSMutableArray *)self->_tags hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_requesters hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  requestProperties = self->_requestProperties;
  v6 = *(fromCopy + 2);
  if (requestProperties)
  {
    if (v6)
    {
      [(APPBRequestProperties *)requestProperties mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(APPBAdBatchRequest *)self setRequestProperties:?];
  }

  specification = self->_specification;
  v8 = *(fromCopy + 5);
  if (specification)
  {
    if (v8)
    {
      [(APPBAdSpecification *)specification mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(APPBAdBatchRequest *)self setSpecification:?];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = *(fromCopy + 4);
  v10 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(APPBAdBatchRequest *)self addResourceCacheEntries:*(*(&v41 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v11);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = *(fromCopy + 1);
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(APPBAdBatchRequest *)self addCachedAds:*(*(&v37 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v16);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = *(fromCopy + 6);
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      for (k = 0; k != v21; k = k + 1)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(APPBAdBatchRequest *)self addTags:*(*(&v33 + 1) + 8 * k)];
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v21);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v24 = *(fromCopy + 3);
  v25 = [v24 countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v30;
    do
    {
      for (m = 0; m != v26; m = m + 1)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(APPBAdBatchRequest *)self addRequesters:*(*(&v29 + 1) + 8 * m), v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v26);
  }
}

@end