@interface SECC2MPGenericEventMetricValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDoubleValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation SECC2MPGenericEventMetricValue

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(SECC2MPGenericEventMetricValue *)self setStringValue:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 40);
  if ((v5 & 2) != 0)
  {
    self->_doubleValue = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 40);
  }

  if (v5)
  {
    self->_dateValue = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  errorValue = self->_errorValue;
  v7 = *(fromCopy + 3);
  if (errorValue)
  {
    if (v7)
    {
      [(SECC2MPError *)errorValue mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SECC2MPGenericEventMetricValue *)self setErrorValue:?];
  }

  _objc_release_x1();
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_stringValue hash];
  if ((*&self->_has & 2) != 0)
  {
    doubleValue = self->_doubleValue;
    if (doubleValue < 0.0)
    {
      doubleValue = -doubleValue;
    }

    *v4.i64 = floor(doubleValue + 0.5);
    v8 = (doubleValue - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
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
    v10 = 2654435761u * self->_dateValue;
  }

  else
  {
    v10 = 0;
  }

  return v6 ^ v3 ^ v10 ^ [(SECC2MPError *)self->_errorValue hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(equalCopy + 4))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(equalCopy + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_doubleValue != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_dateValue != *(equalCopy + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_16;
  }

  errorValue = self->_errorValue;
  if (errorValue | *(equalCopy + 3))
  {
    v8 = [(SECC2MPError *)errorValue isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_stringValue copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[2] = *&self->_doubleValue;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[1] = self->_dateValue;
    *(v5 + 40) |= 1u;
  }

  v9 = [(SECC2MPError *)self->_errorValue copyWithZone:zone];
  v10 = v5[3];
  v5[3] = v9;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_stringValue)
  {
    [toCopy setStringValue:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_doubleValue;
    *(toCopy + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_dateValue;
    *(toCopy + 40) |= 1u;
  }

  if (self->_errorValue)
  {
    [v6 setErrorValue:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    dateValue = self->_dateValue;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
  }

  if (self->_errorValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v3 setObject:stringValue forKey:@"string_value"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [NSNumber numberWithDouble:self->_doubleValue];
    [v4 setObject:v7 forKey:@"double_value"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_dateValue];
    [v4 setObject:v8 forKey:@"date_value"];
  }

  errorValue = self->_errorValue;
  if (errorValue)
  {
    dictionaryRepresentation = [(SECC2MPError *)errorValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"error_value"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SECC2MPGenericEventMetricValue;
  v3 = [(SECC2MPGenericEventMetricValue *)&v7 description];
  dictionaryRepresentation = [(SECC2MPGenericEventMetricValue *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)setHasDoubleValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end