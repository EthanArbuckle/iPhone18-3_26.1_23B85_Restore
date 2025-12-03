@interface APPBTargetingCriteria
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addCriteriaValues:(id)values;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBTargetingCriteria

- (void)addCriteriaValues:(id)values
{
  valuesCopy = values;
  criteriaValues = self->_criteriaValues;
  v8 = valuesCopy;
  if (!criteriaValues)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_criteriaValues;
    self->_criteriaValues = v6;

    valuesCopy = v8;
    criteriaValues = self->_criteriaValues;
  }

  [(NSMutableArray *)criteriaValues addObject:valuesCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBTargetingCriteria;
  v3 = [(APPBTargetingCriteria *)&v7 description];
  dictionaryRepresentation = [(APPBTargetingCriteria *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  criteriaIdentifier = self->_criteriaIdentifier;
  if (criteriaIdentifier)
  {
    [v3 setObject:criteriaIdentifier forKey:@"criteriaIdentifier"];
  }

  criteriaValues = self->_criteriaValues;
  if (criteriaValues)
  {
    [v4 setObject:criteriaValues forKey:@"criteriaValues"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_criteriaIdentifier)
  {
    sub_1003942C8();
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_criteriaValues;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setCriteriaIdentifier:self->_criteriaIdentifier];
  if ([(APPBTargetingCriteria *)self criteriaValuesCount])
  {
    [toCopy clearCriteriaValues];
    criteriaValuesCount = [(APPBTargetingCriteria *)self criteriaValuesCount];
    if (criteriaValuesCount)
    {
      v5 = criteriaValuesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(APPBTargetingCriteria *)self criteriaValuesAtIndex:i];
        [toCopy addCriteriaValues:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_criteriaIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_criteriaValues;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addCriteriaValues:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((criteriaIdentifier = self->_criteriaIdentifier, !(criteriaIdentifier | equalCopy[1])) || -[NSString isEqual:](criteriaIdentifier, "isEqual:")))
  {
    criteriaValues = self->_criteriaValues;
    if (criteriaValues | equalCopy[2])
    {
      v7 = [(NSMutableArray *)criteriaValues isEqual:?];
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
  if (*(fromCopy + 1))
  {
    [(APPBTargetingCriteria *)self setCriteriaIdentifier:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(APPBTargetingCriteria *)self addCriteriaValues:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end