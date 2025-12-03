@interface NRPBPropertiesChanged
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NRPBPropertiesChanged

- (id)description
{
  v7.receiver = self;
  v7.super_class = NRPBPropertiesChanged;
  v3 = [(NRPBPropertiesChanged *)&v7 description];
  dictionaryRepresentation = [(NRPBPropertiesChanged *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithBool:self->_thisIsAllOfThem];
  [v3 setObject:v4 forKey:@"thisIsAllOfThem"];

  if ([(NSMutableArray *)self->_properties count])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_properties, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_properties;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"properties"];
  }

  if (*&self->_has)
  {
    v12 = [NSNumber numberWithDouble:self->_bornOn];
    [v3 setObject:v12 forKey:@"bornOn"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  thisIsAllOfThem = self->_thisIsAllOfThem;
  PBDataWriterWriteBOOLField();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_properties;
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

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    bornOn = self->_bornOn;
    PBDataWriterWriteDoubleField();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[24] = self->_thisIsAllOfThem;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_properties;
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
        sub_1000FFDC0(v5, v11);

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    *(v5 + 1) = *&self->_bornOn;
    v5[28] |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = *(equalCopy + 24);
  if (self->_thisIsAllOfThem)
  {
    if ((*(equalCopy + 24) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  properties = self->_properties;
  if (properties | *(equalCopy + 2) && ![(NSMutableArray *)properties isEqual:?])
  {
    goto LABEL_12;
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_bornOn != *(equalCopy + 1))
    {
      goto LABEL_12;
    }

    v7 = 1;
  }

LABEL_13:

  return v7;
}

- (unint64_t)hash
{
  thisIsAllOfThem = self->_thisIsAllOfThem;
  v4 = [(NSMutableArray *)self->_properties hash];
  if (*&self->_has)
  {
    bornOn = self->_bornOn;
    if (bornOn < 0.0)
    {
      bornOn = -bornOn;
    }

    *v5.i64 = floor(bornOn + 0.5);
    v9 = (bornOn - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v7 ^ (2654435761 * thisIsAllOfThem);
}

@end