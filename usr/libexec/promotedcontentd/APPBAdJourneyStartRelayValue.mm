@interface APPBAdJourneyStartRelayValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)valueAsString:(int)a3;
- (int)StringAsValue:(id)a3;
- (int)value;
- (unint64_t)hash;
- (void)clearOneofValuesForValue;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasValue:(BOOL)a3;
- (void)setHasValueBool:(BOOL)a3;
- (void)setHasValueInt:(BOOL)a3;
- (void)setValueBool:(BOOL)a3;
- (void)setValueDouble:(double)a3;
- (void)setValueInt:(int64_t)a3;
- (void)setValueString:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation APPBAdJourneyStartRelayValue

- (void)setValueBool:(BOOL)a3
{
  [(APPBAdJourneyStartRelayValue *)self clearOneofValuesForValue];
  *&self->_has |= 4u;
  self->_value = 1;
  *&self->_has |= 8u;
  self->_valueBool = a3;
}

- (void)setHasValueBool:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setValueInt:(int64_t)a3
{
  [(APPBAdJourneyStartRelayValue *)self clearOneofValuesForValue];
  *&self->_has |= 4u;
  self->_value = 2;
  *&self->_has |= 2u;
  self->_valueInt = a3;
}

- (void)setHasValueInt:(BOOL)a3
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

- (void)setValueDouble:(double)a3
{
  [(APPBAdJourneyStartRelayValue *)self clearOneofValuesForValue];
  *&self->_has |= 4u;
  self->_value = 3;
  *&self->_has |= 1u;
  self->_valueDouble = a3;
}

- (void)setValueString:(id)a3
{
  v4 = a3;
  [(APPBAdJourneyStartRelayValue *)self clearOneofValuesForValue];
  *&self->_has |= 4u;
  self->_value = 4;
  valueString = self->_valueString;
  self->_valueString = v4;
}

- (int)value
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_value;
  }

  else
  {
    return 0;
  }
}

- (void)setHasValue:(BOOL)a3
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

- (id)valueAsString:(int)a3
{
  if (a3 >= 5)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = *(&off_10047CC68 + a3);
  }

  return v4;
}

- (int)StringAsValue:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"value_BOOL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"value_int"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"value_double"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"value_string"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForValue
{
  *&self->_has &= ~4u;
  self->_value = 0;
  *&self->_has &= ~8u;
  self->_valueBool = 0;
  *&self->_has &= ~2u;
  self->_valueInt = 0;
  *&self->_has &= ~1u;
  self->_valueDouble = 0.0;
  self->_valueString = 0;
  _objc_release_x1();
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAdJourneyStartRelayValue;
  v3 = [(APPBAdJourneyStartRelayValue *)&v7 description];
  v4 = [(APPBAdJourneyStartRelayValue *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
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

  has = self->_has;
  if ((has & 8) != 0)
  {
    v11 = [NSNumber numberWithBool:self->_valueBool];
    [v4 setObject:v11 forKey:@"value_BOOL"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v12 = [NSNumber numberWithLongLong:self->_valueInt];
  [v4 setObject:v12 forKey:@"value_int"];

  if (*&self->_has)
  {
LABEL_6:
    v7 = [NSNumber numberWithDouble:self->_valueDouble];
    [v4 setObject:v7 forKey:@"value_double"];
  }

LABEL_7:
  valueString = self->_valueString;
  if (valueString)
  {
    [v4 setObject:valueString forKey:@"value_string"];
  }

  if ((*&self->_has & 4) != 0)
  {
    value = self->_value;
    if (value >= 5)
    {
      v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_value];
    }

    else
    {
      v10 = *(&off_10047CC68 + value);
    }

    [v4 setObject:v10 forKey:@"value"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteInt64Field();
  v4 = v6;
  if (*&self->_has)
  {
LABEL_6:
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

LABEL_7:
  if (self->_valueString)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[8] = self->_value;
    *(v4 + 52) |= 4u;
  }

  v6 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 48) = self->_valueBool;
    *(v4 + 52) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 2) = self->_valueInt;
  *(v4 + 52) |= 2u;
  if (*&self->_has)
  {
LABEL_8:
    *(v4 + 1) = *&self->_valueDouble;
    *(v4 + 52) |= 1u;
  }

LABEL_9:
  if (self->_valueString)
  {
    [v6 setValueString:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[8] = self->_value;
    *(v5 + 52) |= 4u;
  }

  v7 = [(NSString *)self->_key copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v6[2] = self->_valueInt;
    *(v6 + 52) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v6 + 48) = self->_valueBool;
  *(v6 + 52) |= 8u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (has)
  {
LABEL_6:
    v6[1] = *&self->_valueDouble;
    *(v6 + 52) |= 1u;
  }

LABEL_7:
  v10 = [(NSString *)self->_valueString copyWithZone:a3];
  v11 = v6[5];
  v6[5] = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_value != *(v4 + 8))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_30;
  }

  key = self->_key;
  if (key | *(v4 + 3))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_30;
    }

    has = self->_has;
  }

  if ((has & 8) == 0)
  {
    if ((*(v4 + 52) & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    v8 = 0;
    goto LABEL_31;
  }

  if ((*(v4 + 52) & 8) == 0)
  {
    goto LABEL_30;
  }

  if (self->_valueBool)
  {
    if ((*(v4 + 48) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_30;
  }

LABEL_12:
  if ((has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_valueInt != *(v4 + 2))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_30;
  }

  if (has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_valueDouble != *(v4 + 1))
    {
      goto LABEL_30;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_30;
  }

  valueString = self->_valueString;
  if (valueString | *(v4 + 5))
  {
    v8 = [(NSString *)valueString isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_31:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_value;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_key hash];
  if ((*&self->_has & 8) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_13:
    v12 = 0;
    return v4 ^ v3 ^ v7 ^ v8 ^ v12 ^ [(NSString *)self->_valueString hash];
  }

  v7 = 2654435761 * self->_valueBool;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = 2654435761 * self->_valueInt;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  valueDouble = self->_valueDouble;
  if (valueDouble < 0.0)
  {
    valueDouble = -valueDouble;
  }

  *v5.i64 = floor(valueDouble + 0.5);
  v10 = (valueDouble - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

  return v4 ^ v3 ^ v7 ^ v8 ^ v12 ^ [(NSString *)self->_valueString hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((*(v4 + 52) & 4) != 0)
  {
    self->_value = *(v4 + 8);
    *&self->_has |= 4u;
  }

  v6 = v4;
  if (*(v4 + 3))
  {
    [(APPBAdJourneyStartRelayValue *)self setKey:?];
    v4 = v6;
  }

  v5 = *(v4 + 52);
  if ((v5 & 8) != 0)
  {
    self->_valueBool = *(v4 + 48);
    *&self->_has |= 8u;
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v4 + 52) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_valueInt = *(v4 + 2);
  *&self->_has |= 2u;
  if (*(v4 + 52))
  {
LABEL_8:
    self->_valueDouble = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_9:
  if (*(v4 + 5))
  {
    [(APPBAdJourneyStartRelayValue *)self setValueString:?];
    v4 = v6;
  }
}

@end