@interface SECC2MPGenericEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)addMetric:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTimestampStart:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SECC2MPGenericEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[11] & 4) != 0)
  {
    self->_type = v4[10];
    *&self->_has |= 4u;
  }

  if (*(v4 + 4))
  {
    [(SECC2MPGenericEvent *)self setName:?];
  }

  v6 = *(v5 + 44);
  if ((v6 & 2) != 0)
  {
    self->_timestampStart = *(v5 + 2);
    *&self->_has |= 2u;
    v6 = *(v5 + 44);
  }

  if (v6)
  {
    self->_timestampEnd = *(v5 + 1);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(v5 + 3);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SECC2MPGenericEvent *)self addMetric:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_name hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761u * self->_timestampStart;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(NSMutableArray *)self->_metrics hash];
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761u * self->_timestampEnd;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSMutableArray *)self->_metrics hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = *(v4 + 44);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_type != *(v4 + 10))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_22;
  }

  name = self->_name;
  if (name | *(v4 + 4))
  {
    if (![(NSString *)name isEqual:?])
    {
LABEL_22:
      v9 = 0;
      goto LABEL_23;
    }

    has = self->_has;
    v6 = *(v4 + 44);
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_timestampStart != *(v4 + 2))
    {
      goto LABEL_22;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_22;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestampEnd != *(v4 + 1))
    {
      goto LABEL_22;
    }
  }

  else if (v6)
  {
    goto LABEL_22;
  }

  metrics = self->_metrics;
  if (metrics | *(v4 + 3))
  {
    v9 = [(NSMutableArray *)metrics isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_23:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[10] = self->_type;
    *(v5 + 44) |= 4u;
  }

  v7 = [(NSString *)self->_name copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  has = self->_has;
  if ((has & 2) != 0)
  {
    v6[2] = self->_timestampStart;
    *(v6 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v6[1] = self->_timestampEnd;
    *(v6 + 44) |= 1u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_metrics;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{a3, v17}];
        [v6 addMetric:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[10] = self->_type;
    *(v4 + 44) |= 4u;
  }

  v10 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_timestampStart;
    *(v4 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_timestampEnd;
    *(v4 + 44) |= 1u;
  }

  if ([(SECC2MPGenericEvent *)self metricsCount])
  {
    [v10 clearMetrics];
    v6 = [(SECC2MPGenericEvent *)self metricsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SECC2MPGenericEvent *)self metricAtIndex:i];
        [v10 addMetric:v9];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    timestampStart = self->_timestampStart;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if (has)
  {
    timestampEnd = self->_timestampEnd;
    PBDataWriterWriteUint64Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_metrics;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 4) != 0)
  {
    type = self->_type;
    if (type > 200)
    {
      if (type == 201)
      {
        v5 = @"cloudkit_client";
        goto LABEL_12;
      }

      if (type == 301)
      {
        v5 = @"server";
        goto LABEL_12;
      }
    }

    else
    {
      if (!type)
      {
        v5 = @"none";
        goto LABEL_12;
      }

      if (type == 101)
      {
        v5 = @"cloudkit";
LABEL_12:
        [v3 setObject:v5 forKey:@"type"];

        goto LABEL_13;
      }
    }

    v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    goto LABEL_12;
  }

LABEL_13:
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_timestampStart];
    [v3 setObject:v8 forKey:@"timestamp_start"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [NSNumber numberWithUnsignedLongLong:self->_timestampEnd];
    [v3 setObject:v9 forKey:@"timestamp_end"];
  }

  if ([(NSMutableArray *)self->_metrics count])
  {
    v10 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_metrics, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = self->_metrics;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"metric"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SECC2MPGenericEvent;
  v3 = [(SECC2MPGenericEvent *)&v7 description];
  v4 = [(SECC2MPGenericEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)addMetric:(id)a3
{
  v4 = a3;
  metrics = self->_metrics;
  v8 = v4;
  if (!metrics)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_metrics;
    self->_metrics = v6;

    v4 = v8;
    metrics = self->_metrics;
  }

  [(NSMutableArray *)metrics addObject:v4];
}

- (void)setHasTimestampStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"none"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"cloudkit"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"cloudkit_client"])
  {
    v4 = 201;
  }

  else if ([v3 isEqualToString:@"server"])
  {
    v4 = 301;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

@end