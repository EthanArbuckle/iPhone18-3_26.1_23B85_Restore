@interface APPBSegmentUpdateResponse
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSegmentRefreshIntervalInSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation APPBSegmentUpdateResponse

+ (id)options
{
  if (qword_1004E6C20 != -1)
  {
    sub_1003942A0();
  }

  v3 = qword_1004E6C18;

  return v3;
}

- (void)setHasSegmentRefreshIntervalInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBSegmentUpdateResponse;
  v3 = [(APPBSegmentUpdateResponse *)&v7 description];
  dictionaryRepresentation = [(APPBSegmentUpdateResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  idDebug = self->_idDebug;
  if (idDebug)
  {
    [v3 setObject:idDebug forKey:@"idDebug"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithDouble:self->_segmentRefreshIntervalInSeconds];
    [v4 setObject:v7 forKey:@"segmentRefreshIntervalInSeconds"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [NSNumber numberWithDouble:self->_maxSegmentUpdateIntervalInSeconds];
    [v4 setObject:v8 forKey:@"maxSegmentUpdateIntervalInSeconds"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_idDebug)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_idDebug)
  {
    v6 = toCopy;
    [toCopy setIdDebug:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_segmentRefreshIntervalInSeconds;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_maxSegmentUpdateIntervalInSeconds;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_idDebug copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[2] = *&self->_segmentRefreshIntervalInSeconds;
    *(v5 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[1] = *&self->_maxSegmentUpdateIntervalInSeconds;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  idDebug = self->_idDebug;
  if (idDebug | *(equalCopy + 3))
  {
    if (![(NSString *)idDebug isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_segmentRefreshIntervalInSeconds != *(equalCopy + 2))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_maxSegmentUpdateIntervalInSeconds != *(equalCopy + 1))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_idDebug hash];
  if ((*&self->_has & 2) != 0)
  {
    segmentRefreshIntervalInSeconds = self->_segmentRefreshIntervalInSeconds;
    if (segmentRefreshIntervalInSeconds < 0.0)
    {
      segmentRefreshIntervalInSeconds = -segmentRefreshIntervalInSeconds;
    }

    *v4.i64 = floor(segmentRefreshIntervalInSeconds + 0.5);
    v8 = (segmentRefreshIntervalInSeconds - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*&self->_has)
  {
    maxSegmentUpdateIntervalInSeconds = self->_maxSegmentUpdateIntervalInSeconds;
    if (maxSegmentUpdateIntervalInSeconds < 0.0)
    {
      maxSegmentUpdateIntervalInSeconds = -maxSegmentUpdateIntervalInSeconds;
    }

    *v4.i64 = floor(maxSegmentUpdateIntervalInSeconds + 0.5);
    v12 = (maxSegmentUpdateIntervalInSeconds - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v3 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(APPBSegmentUpdateResponse *)self setIdDebug:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 32);
  if ((v5 & 2) != 0)
  {
    self->_segmentRefreshIntervalInSeconds = fromCopy[2];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 32);
  }

  if (v5)
  {
    self->_maxSegmentUpdateIntervalInSeconds = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end