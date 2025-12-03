@interface APPBAttributionResponse
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addVersionedAttributionDetails:(id)details;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBAttributionResponse

+ (id)options
{
  if (qword_1004E6A58 != -1)
  {
    sub_100393F68();
  }

  v3 = qword_1004E6A50;

  return v3;
}

- (void)addVersionedAttributionDetails:(id)details
{
  detailsCopy = details;
  versionedAttributionDetails = self->_versionedAttributionDetails;
  v8 = detailsCopy;
  if (!versionedAttributionDetails)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_versionedAttributionDetails;
    self->_versionedAttributionDetails = v6;

    detailsCopy = v8;
    versionedAttributionDetails = self->_versionedAttributionDetails;
  }

  [(NSMutableArray *)versionedAttributionDetails addObject:detailsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAttributionResponse;
  v3 = [(APPBAttributionResponse *)&v7 description];
  dictionaryRepresentation = [(APPBAttributionResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_versionedAttributionDetails count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_versionedAttributionDetails, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_versionedAttributionDetails;
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

          dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"versionedAttributionDetails"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_versionedAttributionDetails;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(APPBAttributionResponse *)self versionedAttributionDetailsCount])
  {
    [toCopy clearVersionedAttributionDetails];
    versionedAttributionDetailsCount = [(APPBAttributionResponse *)self versionedAttributionDetailsCount];
    if (versionedAttributionDetailsCount)
    {
      v5 = versionedAttributionDetailsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(APPBAttributionResponse *)self versionedAttributionDetailsAtIndex:i];
        [toCopy addVersionedAttributionDetails:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_versionedAttributionDetails;
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

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [v5 addVersionedAttributionDetails:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    versionedAttributionDetails = self->_versionedAttributionDetails;
    if (versionedAttributionDetails | equalCopy[1])
    {
      v6 = [(NSMutableArray *)versionedAttributionDetails isEqual:?];
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

- (void)mergeFrom:(id)from
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(from + 1);
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

        [(APPBAttributionResponse *)self addVersionedAttributionDetails:*(*(&v9 + 1) + 8 * v8), v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end