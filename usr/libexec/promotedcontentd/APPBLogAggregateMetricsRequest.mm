@interface APPBLogAggregateMetricsRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDistributionMetrics:(id)metrics;
- (void)addScalarMetrics:(id)metrics;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBLogAggregateMetricsRequest

+ (id)options
{
  if (qword_1004E6B30 != -1)
  {
    sub_1003940F0();
  }

  v3 = qword_1004E6B28;

  return v3;
}

- (void)addDistributionMetrics:(id)metrics
{
  metricsCopy = metrics;
  distributionMetrics = self->_distributionMetrics;
  v8 = metricsCopy;
  if (!distributionMetrics)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_distributionMetrics;
    self->_distributionMetrics = v6;

    metricsCopy = v8;
    distributionMetrics = self->_distributionMetrics;
  }

  [(NSMutableArray *)distributionMetrics addObject:metricsCopy];
}

- (void)addScalarMetrics:(id)metrics
{
  metricsCopy = metrics;
  scalarMetrics = self->_scalarMetrics;
  v8 = metricsCopy;
  if (!scalarMetrics)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_scalarMetrics;
    self->_scalarMetrics = v6;

    metricsCopy = v8;
    scalarMetrics = self->_scalarMetrics;
  }

  [(NSMutableArray *)scalarMetrics addObject:metricsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBLogAggregateMetricsRequest;
  v3 = [(APPBLogAggregateMetricsRequest *)&v7 description];
  dictionaryRepresentation = [(APPBLogAggregateMetricsRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [v3 setObject:deviceModel forKey:@"deviceModel"];
  }

  operatingSystemDescription = self->_operatingSystemDescription;
  if (operatingSystemDescription)
  {
    [v4 setObject:operatingSystemDescription forKey:@"operatingSystemDescription"];
  }

  if ([(NSMutableArray *)self->_distributionMetrics count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_distributionMetrics, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = self->_distributionMetrics;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"distributionMetrics"];
  }

  if ([(NSMutableArray *)self->_scalarMetrics count])
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_scalarMetrics, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = self->_scalarMetrics;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v22 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation2];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"scalarMetrics"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_operatingSystemDescription)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_distributionMetrics;
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
  v10 = self->_scalarMetrics;
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
  if (self->_deviceModel)
  {
    [toCopy setDeviceModel:?];
  }

  if (self->_operatingSystemDescription)
  {
    [toCopy setOperatingSystemDescription:?];
  }

  if ([(APPBLogAggregateMetricsRequest *)self distributionMetricsCount])
  {
    [toCopy clearDistributionMetrics];
    distributionMetricsCount = [(APPBLogAggregateMetricsRequest *)self distributionMetricsCount];
    if (distributionMetricsCount)
    {
      v5 = distributionMetricsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(APPBLogAggregateMetricsRequest *)self distributionMetricsAtIndex:i];
        [toCopy addDistributionMetrics:v7];
      }
    }
  }

  if ([(APPBLogAggregateMetricsRequest *)self scalarMetricsCount])
  {
    [toCopy clearScalarMetrics];
    scalarMetricsCount = [(APPBLogAggregateMetricsRequest *)self scalarMetricsCount];
    if (scalarMetricsCount)
    {
      v9 = scalarMetricsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(APPBLogAggregateMetricsRequest *)self scalarMetricsAtIndex:j];
        [toCopy addScalarMetrics:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_deviceModel copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_operatingSystemDescription copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = self->_distributionMetrics;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v27 + 1) + 8 * v14) copyWithZone:zone];
        [v5 addDistributionMetrics:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v12);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = self->_scalarMetrics;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v23 + 1) + 8 * v20) copyWithZone:{zone, v23}];
        [v5 addScalarMetrics:v21];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((deviceModel = self->_deviceModel, !(deviceModel | equalCopy[1])) || -[NSString isEqual:](deviceModel, "isEqual:")) && ((operatingSystemDescription = self->_operatingSystemDescription, !(operatingSystemDescription | equalCopy[3])) || -[NSString isEqual:](operatingSystemDescription, "isEqual:")) && ((distributionMetrics = self->_distributionMetrics, !(distributionMetrics | equalCopy[2])) || -[NSMutableArray isEqual:](distributionMetrics, "isEqual:")))
  {
    scalarMetrics = self->_scalarMetrics;
    if (scalarMetrics | equalCopy[4])
    {
      v9 = [(NSMutableArray *)scalarMetrics isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_deviceModel hash];
  v4 = [(NSString *)self->_operatingSystemDescription hash]^ v3;
  v5 = [(NSMutableArray *)self->_distributionMetrics hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_scalarMetrics hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(APPBLogAggregateMetricsRequest *)self setDeviceModel:?];
  }

  if (*(fromCopy + 3))
  {
    [(APPBLogAggregateMetricsRequest *)self setOperatingSystemDescription:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(APPBLogAggregateMetricsRequest *)self addDistributionMetrics:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 4);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(APPBLogAggregateMetricsRequest *)self addScalarMetrics:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end