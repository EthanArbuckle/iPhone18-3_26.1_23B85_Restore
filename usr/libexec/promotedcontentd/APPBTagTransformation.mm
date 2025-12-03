@interface APPBTagTransformation
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addRequiredTags:(id)tags;
- (void)addResultTags:(id)tags;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBTagTransformation

+ (id)options
{
  if (qword_1004E6B40 != -1)
  {
    sub_100394104();
  }

  v3 = qword_1004E6B38;

  return v3;
}

- (void)addRequiredTags:(id)tags
{
  tagsCopy = tags;
  requiredTags = self->_requiredTags;
  v8 = tagsCopy;
  if (!requiredTags)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_requiredTags;
    self->_requiredTags = v6;

    tagsCopy = v8;
    requiredTags = self->_requiredTags;
  }

  [(NSMutableArray *)requiredTags addObject:tagsCopy];
}

- (void)addResultTags:(id)tags
{
  tagsCopy = tags;
  resultTags = self->_resultTags;
  v8 = tagsCopy;
  if (!resultTags)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_resultTags;
    self->_resultTags = v6;

    tagsCopy = v8;
    resultTags = self->_resultTags;
  }

  [(NSMutableArray *)resultTags addObject:tagsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBTagTransformation;
  v3 = [(APPBTagTransformation *)&v7 description];
  dictionaryRepresentation = [(APPBTagTransformation *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  requiredTags = self->_requiredTags;
  if (requiredTags)
  {
    [v3 setObject:requiredTags forKey:@"requiredTags"];
  }

  resultTags = self->_resultTags;
  if (resultTags)
  {
    [v4 setObject:resultTags forKey:@"resultTags"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_requiredTags;
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

        PBDataWriterWriteStringField();
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
  v10 = self->_resultTags;
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

        PBDataWriterWriteStringField();
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
  if ([(APPBTagTransformation *)self requiredTagsCount])
  {
    [toCopy clearRequiredTags];
    requiredTagsCount = [(APPBTagTransformation *)self requiredTagsCount];
    if (requiredTagsCount)
    {
      v5 = requiredTagsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(APPBTagTransformation *)self requiredTagsAtIndex:i];
        [toCopy addRequiredTags:v7];
      }
    }
  }

  if ([(APPBTagTransformation *)self resultTagsCount])
  {
    [toCopy clearResultTags];
    resultTagsCount = [(APPBTagTransformation *)self resultTagsCount];
    if (resultTagsCount)
    {
      v9 = resultTagsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(APPBTagTransformation *)self resultTagsAtIndex:j];
        [toCopy addResultTags:v11];
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
  v6 = self->_requiredTags;
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
        [v5 addRequiredTags:v11];

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
  v12 = self->_resultTags;
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
        [v5 addResultTags:v17];

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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requiredTags = self->_requiredTags, !(requiredTags | equalCopy[1])) || -[NSMutableArray isEqual:](requiredTags, "isEqual:")))
  {
    resultTags = self->_resultTags;
    if (resultTags | equalCopy[2])
    {
      v7 = [(NSMutableArray *)resultTags isEqual:?];
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
  v5 = fromCopy[1];
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

        [(APPBTagTransformation *)self addRequiredTags:*(*(&v19 + 1) + 8 * v9)];
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
  v10 = fromCopy[2];
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

        [(APPBTagTransformation *)self addResultTags:*(*(&v15 + 1) + 8 * v14), v15];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end