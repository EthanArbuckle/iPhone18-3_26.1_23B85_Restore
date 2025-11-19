@interface APPBTargetingDimensions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addExclusionCriteria:(id)a3;
- (void)addInclusionCriteria:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBTargetingDimensions

- (void)addInclusionCriteria:(id)a3
{
  v4 = a3;
  inclusionCriterias = self->_inclusionCriterias;
  v8 = v4;
  if (!inclusionCriterias)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_inclusionCriterias;
    self->_inclusionCriterias = v6;

    v4 = v8;
    inclusionCriterias = self->_inclusionCriterias;
  }

  [(NSMutableArray *)inclusionCriterias addObject:v4];
}

- (void)addExclusionCriteria:(id)a3
{
  v4 = a3;
  exclusionCriterias = self->_exclusionCriterias;
  v8 = v4;
  if (!exclusionCriterias)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_exclusionCriterias;
    self->_exclusionCriterias = v6;

    v4 = v8;
    exclusionCriterias = self->_exclusionCriterias;
  }

  [(NSMutableArray *)exclusionCriterias addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBTargetingDimensions;
  v3 = [(APPBTargetingDimensions *)&v7 description];
  v4 = [(APPBTargetingDimensions *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ([(NSMutableArray *)self->_inclusionCriterias count])
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_inclusionCriterias, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_inclusionCriterias;
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

    [v3 setObject:v4 forKey:@"inclusionCriteria"];
  }

  if ([(NSMutableArray *)self->_exclusionCriterias count])
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_exclusionCriterias, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_exclusionCriterias;
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

    [v3 setObject:v11 forKey:@"exclusionCriteria"];
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
  v5 = self->_inclusionCriterias;
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
  v10 = self->_exclusionCriterias;
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
  if ([(APPBTargetingDimensions *)self inclusionCriteriasCount])
  {
    [v12 clearInclusionCriterias];
    v4 = [(APPBTargetingDimensions *)self inclusionCriteriasCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(APPBTargetingDimensions *)self inclusionCriteriaAtIndex:i];
        [v12 addInclusionCriteria:v7];
      }
    }
  }

  if ([(APPBTargetingDimensions *)self exclusionCriteriasCount])
  {
    [v12 clearExclusionCriterias];
    v8 = [(APPBTargetingDimensions *)self exclusionCriteriasCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(APPBTargetingDimensions *)self exclusionCriteriaAtIndex:j];
        [v12 addExclusionCriteria:v11];
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
  v6 = self->_inclusionCriterias;
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
        [v5 addInclusionCriteria:v11];

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
  v12 = self->_exclusionCriterias;
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
        [v5 addExclusionCriteria:v17];

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
  if ([v4 isMemberOfClass:objc_opt_class()] && ((inclusionCriterias = self->_inclusionCriterias, !(inclusionCriterias | v4[2])) || -[NSMutableArray isEqual:](inclusionCriterias, "isEqual:")))
  {
    exclusionCriterias = self->_exclusionCriterias;
    if (exclusionCriterias | v4[1])
    {
      v7 = [(NSMutableArray *)exclusionCriterias isEqual:?];
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

        [(APPBTargetingDimensions *)self addInclusionCriteria:*(*(&v19 + 1) + 8 * v9)];
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

        [(APPBTargetingDimensions *)self addExclusionCriteria:*(*(&v15 + 1) + 8 * v14), v15];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end