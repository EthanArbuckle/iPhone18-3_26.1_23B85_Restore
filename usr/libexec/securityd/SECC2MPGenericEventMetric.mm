@interface SECC2MPGenericEventMetric
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SECC2MPGenericEventMetric

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[1])
  {
    [(SECC2MPGenericEventMetric *)self setKey:?];
    fromCopy = v7;
  }

  value = self->_value;
  v6 = fromCopy[2];
  if (value)
  {
    if (v6)
    {
      [(SECC2MPGenericEventMetricValue *)value mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SECC2MPGenericEventMetric *)self setValue:?];
  }

  _objc_release_x1();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((key = self->_key, !(key | equalCopy[1])) || -[NSString isEqual:](key, "isEqual:")))
  {
    value = self->_value;
    if (value | equalCopy[2])
    {
      v7 = [(SECC2MPGenericEventMetricValue *)value isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(SECC2MPGenericEventMetricValue *)self->_value copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(SECC2MPGenericEventMetricValue *)value dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"value"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SECC2MPGenericEventMetric;
  v3 = [(SECC2MPGenericEventMetric *)&v7 description];
  dictionaryRepresentation = [(SECC2MPGenericEventMetric *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end