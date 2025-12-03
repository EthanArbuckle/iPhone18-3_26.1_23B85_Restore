@interface APPBAggregateScalarMetric
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBAggregateScalarMetric

+ (id)options
{
  if (qword_1004E6C30 != -1)
  {
    sub_1003942B4();
  }

  v3 = qword_1004E6C28;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAggregateScalarMetric;
  v3 = [(APPBAggregateScalarMetric *)&v7 description];
  dictionaryRepresentation = [(APPBAggregateScalarMetric *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  metric = self->_metric;
  if (metric)
  {
    [v3 setObject:metric forKey:@"metric"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v4 setObject:bundleID forKey:@"bundleID"];
  }

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithInt:self->_count];
    [v4 setObject:v7 forKey:@"count"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_metric)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_metric)
  {
    [toCopy setMetric:?];
    toCopy = v5;
  }

  if (self->_bundleID)
  {
    [v5 setBundleID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_count;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_metric copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_bundleID copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_count;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  metric = self->_metric;
  if (metric | *(equalCopy + 3))
  {
    if (![(NSString *)metric isEqual:?])
    {
      goto LABEL_10;
    }
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 1))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_count == *(equalCopy + 4))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_metric hash];
  v4 = [(NSString *)self->_bundleID hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_count;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(APPBAggregateScalarMetric *)self setMetric:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(APPBAggregateScalarMetric *)self setBundleID:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_count = fromCopy[4];
    *&self->_has |= 1u;
  }
}

@end