@interface APPBAggregateDistributionMetric
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCount:(BOOL)count;
- (void)setHasStandardDeviation:(BOOL)deviation;
- (void)writeTo:(id)to;
@end

@implementation APPBAggregateDistributionMetric

+ (id)options
{
  if (qword_1004E6B00 != -1)
  {
    sub_1003940B4();
  }

  v3 = qword_1004E6AF8;

  return v3;
}

- (void)setHasCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasStandardDeviation:(BOOL)deviation
{
  if (deviation)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAggregateDistributionMetric;
  v3 = [(APPBAggregateDistributionMetric *)&v7 description];
  dictionaryRepresentation = [(APPBAggregateDistributionMetric *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v5 = v3;
  metric = self->_metric;
  if (metric)
  {
    [v3 setObject:metric forKey:@"metric"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v5 setObject:bundleID forKey:@"bundleID"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [NSNumber numberWithInt:self->_count];
    [v5 setObject:v11 forKey:@"count"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  *&v4 = self->_average;
  v12 = [NSNumber numberWithFloat:v4];
  [v5 setObject:v12 forKey:@"average"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *&v4 = self->_standardDeviation;
    v9 = [NSNumber numberWithFloat:v4];
    [v5 setObject:v9 forKey:@"standardDeviation"];
  }

LABEL_9:

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_metric)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteFloatField();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }

LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_metric)
  {
    [toCopy setMetric:?];
    toCopy = v6;
  }

  if (self->_bundleID)
  {
    [v6 setBundleID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 6) = self->_count;
    *(toCopy + 44) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 2) = LODWORD(self->_average);
  *(toCopy + 44) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(toCopy + 10) = LODWORD(self->_standardDeviation);
    *(toCopy + 44) |= 4u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_metric copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_bundleID copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 2) = LODWORD(self->_average);
    *(v5 + 44) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 6) = self->_count;
  *(v5 + 44) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 10) = LODWORD(self->_standardDeviation);
    *(v5 + 44) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  metric = self->_metric;
  if (metric | *(equalCopy + 4))
  {
    if (![(NSString *)metric isEqual:?])
    {
      goto LABEL_20;
    }
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 2))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_count != *(equalCopy + 6))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_average != *(equalCopy + 2))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_20;
  }

  v7 = (*(equalCopy + 44) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_standardDeviation != *(equalCopy + 10))
    {
      goto LABEL_20;
    }

    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_metric hash];
  v4 = [(NSString *)self->_bundleID hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_count;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  average = self->_average;
  if (average < 0.0)
  {
    average = -average;
  }

  *v5.i32 = floorf(average + 0.5);
  v9 = (average - *v5.i32) * 1.8447e19;
  *v6.i32 = *v5.i32 - (truncf(*v5.i32 * 5.421e-20) * 1.8447e19);
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  v5 = vbslq_s8(v10, v6, v5);
  v11 = 2654435761u * *v5.i32;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabsf(v9);
  }

LABEL_9:
  if ((*&self->_has & 4) != 0)
  {
    standardDeviation = self->_standardDeviation;
    if (standardDeviation < 0.0)
    {
      standardDeviation = -standardDeviation;
    }

    *v5.i32 = floorf(standardDeviation + 0.5);
    v14 = (standardDeviation - *v5.i32) * 1.8447e19;
    *v6.i32 = *v5.i32 - (truncf(*v5.i32 * 5.421e-20) * 1.8447e19);
    v15.i64[0] = 0x8000000080000000;
    v15.i64[1] = 0x8000000080000000;
    v12 = 2654435761u * *vbslq_s8(v15, v6, v5).i32;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabsf(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(APPBAggregateDistributionMetric *)self setMetric:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(APPBAggregateDistributionMetric *)self setBundleID:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 44);
  if ((v5 & 2) != 0)
  {
    self->_count = *(fromCopy + 6);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 44);
    if ((v5 & 1) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(fromCopy + 44) & 1) == 0)
  {
    goto LABEL_7;
  }

  self->_average = *(fromCopy + 2);
  *&self->_has |= 1u;
  if ((*(fromCopy + 44) & 4) != 0)
  {
LABEL_8:
    self->_standardDeviation = *(fromCopy + 10);
    *&self->_has |= 4u;
  }

LABEL_9:
}

@end