@interface SECC2MPGenericEventMetricValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDoubleValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SECC2MPGenericEventMetricValue

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 4))
  {
    [(SECC2MPGenericEventMetricValue *)self setStringValue:?];
    v4 = v8;
  }

  v5 = *(v4 + 40);
  if ((v5 & 2) != 0)
  {
    self->_doubleValue = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 40);
  }

  if (v5)
  {
    self->_dateValue = *(v4 + 1);
    *&self->_has |= 1u;
  }

  errorValue = self->_errorValue;
  v7 = *(v4 + 3);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(v4 + 4))
  {
    if (![(NSString *)stringValue isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(v4 + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_doubleValue != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_dateValue != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_16;
  }

  errorValue = self->_errorValue;
  if (errorValue | *(v4 + 3))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_stringValue copyWithZone:a3];
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

  v9 = [(SECC2MPError *)self->_errorValue copyWithZone:a3];
  v10 = v5[3];
  v5[3] = v9;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_stringValue)
  {
    [v4 setStringValue:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_doubleValue;
    *(v4 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_dateValue;
    *(v4 + 40) |= 1u;
  }

  if (self->_errorValue)
  {
    [v6 setErrorValue:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    dateValue = self->_dateValue;
    PBDataWriterWriteUint64Field();
    v4 = v8;
  }

  if (self->_errorValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
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
    v10 = [(SECC2MPError *)errorValue dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"error_value"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SECC2MPGenericEventMetricValue;
  v3 = [(SECC2MPGenericEventMetricValue *)&v7 description];
  v4 = [(SECC2MPGenericEventMetricValue *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasDoubleValue:(BOOL)a3
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

@end