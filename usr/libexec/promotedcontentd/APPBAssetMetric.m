@interface APPBAssetMetric
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBAssetMetric

+ (id)options
{
  if (qword_1004E69F8 != -1)
  {
    sub_100393ED8();
  }

  v3 = qword_1004E69F0;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAssetMetric;
  v3 = [(APPBAssetMetric *)&v7 description];
  v4 = [(APPBAssetMetric *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [v3 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  uRL = self->_uRL;
  if (uRL)
  {
    [v4 setObject:uRL forKey:@"URL"];
  }

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithDouble:self->_time];
    [v4 setObject:v7 forKey:@"time"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_uRL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uniqueIdentifier)
  {
    [v4 setUniqueIdentifier:?];
    v4 = v5;
  }

  if (self->_uRL)
  {
    [v5 setURL:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_time;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueIdentifier copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_uRL copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  if (*&self->_has)
  {
    v5[1] = *&self->_time;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(v4 + 3))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_10;
    }
  }

  uRL = self->_uRL;
  if (uRL | *(v4 + 2))
  {
    if (![(NSString *)uRL isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_time == *(v4 + 1))
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
  v3 = [(NSString *)self->_uniqueIdentifier hash];
  v4 = [(NSString *)self->_uRL hash];
  if (*&self->_has)
  {
    time = self->_time;
    if (time < 0.0)
    {
      time = -time;
    }

    *v5.i64 = floor(time + 0.5);
    v9 = (time - *v5.i64) * 1.84467441e19;
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

  return v4 ^ v3 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(APPBAssetMetric *)self setUniqueIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(APPBAssetMetric *)self setURL:?];
    v4 = v5;
  }

  if (v4[4])
  {
    self->_time = v4[1];
    *&self->_has |= 1u;
  }
}

@end