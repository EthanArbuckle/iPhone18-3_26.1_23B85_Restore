@interface APPBTagSet
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addTags:(id)tags;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBTagSet

+ (id)options
{
  if (qword_1004E6CD0 != -1)
  {
    sub_1003945F0();
  }

  v3 = qword_1004E6CC8;

  return v3;
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBTagSet;
  v3 = [(APPBTagSet *)&v7 description];
  dictionaryRepresentation = [(APPBTagSet *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  tags = self->_tags;
  if (tags)
  {
    [v3 setObject:tags forKey:@"tags"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_tags;
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

        PBDataWriterWriteStringField();
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
  if ([(APPBTagSet *)self tagsCount])
  {
    [toCopy clearTags];
    tagsCount = [(APPBTagSet *)self tagsCount];
    if (tagsCount)
    {
      v5 = tagsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(APPBTagSet *)self tagsAtIndex:i];
        [toCopy addTags:v7];
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
  v6 = self->_tags;
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
        [v5 addTags:v11];

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
    tags = self->_tags;
    if (tags | equalCopy[1])
    {
      v6 = [(NSMutableArray *)tags isEqual:?];
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

        [(APPBTagSet *)self addTags:*(*(&v9 + 1) + 8 * v8), v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end