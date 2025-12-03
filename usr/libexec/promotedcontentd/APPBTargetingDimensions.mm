@interface APPBTargetingDimensions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addExclusionCriteria:(id)criteria;
- (void)addInclusionCriteria:(id)criteria;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBTargetingDimensions

- (void)addInclusionCriteria:(id)criteria
{
  criteriaCopy = criteria;
  inclusionCriterias = self->_inclusionCriterias;
  v8 = criteriaCopy;
  if (!inclusionCriterias)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_inclusionCriterias;
    self->_inclusionCriterias = v6;

    criteriaCopy = v8;
    inclusionCriterias = self->_inclusionCriterias;
  }

  [(NSMutableArray *)inclusionCriterias addObject:criteriaCopy];
}

- (void)addExclusionCriteria:(id)criteria
{
  criteriaCopy = criteria;
  exclusionCriterias = self->_exclusionCriterias;
  v8 = criteriaCopy;
  if (!exclusionCriterias)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_exclusionCriterias;
    self->_exclusionCriterias = v6;

    criteriaCopy = v8;
    exclusionCriterias = self->_exclusionCriterias;
  }

  [(NSMutableArray *)exclusionCriterias addObject:criteriaCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBTargetingDimensions;
  v3 = [(APPBTargetingDimensions *)&v7 description];
  dictionaryRepresentation = [(APPBTargetingDimensions *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
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

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"exclusionCriteria"];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(APPBTargetingDimensions *)self inclusionCriteriasCount])
  {
    [toCopy clearInclusionCriterias];
    inclusionCriteriasCount = [(APPBTargetingDimensions *)self inclusionCriteriasCount];
    if (inclusionCriteriasCount)
    {
      v5 = inclusionCriteriasCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(APPBTargetingDimensions *)self inclusionCriteriaAtIndex:i];
        [toCopy addInclusionCriteria:v7];
      }
    }
  }

  if ([(APPBTargetingDimensions *)self exclusionCriteriasCount])
  {
    [toCopy clearExclusionCriterias];
    exclusionCriteriasCount = [(APPBTargetingDimensions *)self exclusionCriteriasCount];
    if (exclusionCriteriasCount)
    {
      v9 = exclusionCriteriasCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(APPBTargetingDimensions *)self exclusionCriteriaAtIndex:j];
        [toCopy addExclusionCriteria:v11];
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

        v11 = [*(*(&v23 + 1) + 8 * v10) copyWithZone:zone];
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

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{zone, v19}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((inclusionCriterias = self->_inclusionCriterias, !(inclusionCriterias | equalCopy[2])) || -[NSMutableArray isEqual:](inclusionCriterias, "isEqual:")))
  {
    exclusionCriterias = self->_exclusionCriterias;
    if (exclusionCriterias | equalCopy[1])
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