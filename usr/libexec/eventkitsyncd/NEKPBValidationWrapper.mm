@interface NEKPBValidationWrapper
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMasterCount:(BOOL)count;
- (void)setHasOccurrenceCount:(BOOL)count;
- (void)setHasShowAlert:(BOOL)alert;
- (void)setHasStartDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation NEKPBValidationWrapper

- (void)setHasStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMasterCount:(BOOL)count
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

- (void)setHasOccurrenceCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasShowAlert:(BOOL)alert
{
  if (alert)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBValidationWrapper;
  v3 = [(NEKPBValidationWrapper *)&v7 description];
  dictionaryRepresentation = [(NEKPBValidationWrapper *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v7 = [NSNumber numberWithDouble:self->_startDate];
    [v3 setObject:v7 forKey:@"startDate"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithDouble:self->_endDate];
  [v3 setObject:v8 forKey:@"endDate"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [NSNumber numberWithUnsignedLongLong:self->_masterCount];
  [v3 setObject:v9 forKey:@"masterCount"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [NSNumber numberWithUnsignedLongLong:self->_occurrenceCount];
  [v3 setObject:v10 forKey:@"occurrenceCount"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v5 = [NSNumber numberWithBool:self->_showAlert];
    [v3 setObject:v5 forKey:@"showAlert"];
  }

LABEL_7:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    startDate = self->_startDate;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  endDate = self->_endDate;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  masterCount = self->_masterCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  occurrenceCount = self->_occurrenceCount;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    showAlert = self->_showAlert;
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[4] = *&self->_startDate;
    *(toCopy + 44) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[1] = *&self->_endDate;
  *(toCopy + 44) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  toCopy[2] = self->_masterCount;
  *(toCopy + 44) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  toCopy[3] = self->_occurrenceCount;
  *(toCopy + 44) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(toCopy + 40) = self->_showAlert;
    *(toCopy + 44) |= 0x10u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 4) = *&self->_startDate;
    *(result + 44) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = *&self->_endDate;
  *(result + 44) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 2) = self->_masterCount;
  *(result + 44) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 3) = self->_occurrenceCount;
  *(result + 44) |= 4u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 40) = self->_showAlert;
  *(result + 44) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 44) & 8) == 0 || self->_startDate != *(equalCopy + 4))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 44) & 8) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_endDate != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_masterCount != *(equalCopy + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_occurrenceCount != *(equalCopy + 3))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_24;
  }

  v5 = (*(equalCopy + 44) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 44) & 0x10) == 0)
    {
LABEL_24:
      v5 = 0;
      goto LABEL_25;
    }

    if (self->_showAlert)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_24;
    }

    v5 = 1;
  }

LABEL_25:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    startDate = self->_startDate;
    if (startDate < 0.0)
    {
      startDate = -startDate;
    }

    *v2.i64 = floor(startDate + 0.5);
    v6 = (startDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if (*&self->_has)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v2.i64 = floor(endDate + 0.5);
    v10 = (endDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v3, v2).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 2) == 0)
  {
    v12 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v13 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    v14 = 0;
    return v8 ^ v4 ^ v12 ^ v13 ^ v14;
  }

  v12 = 2654435761u * self->_masterCount;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v13 = 2654435761u * self->_occurrenceCount;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  v14 = 2654435761 * self->_showAlert;
  return v8 ^ v4 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if ((v5 & 8) != 0)
  {
    self->_startDate = *(fromCopy + 4);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 44);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_endDate = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 44);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_masterCount = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 44);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_occurrenceCount = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((*(fromCopy + 44) & 0x10) != 0)
  {
LABEL_6:
    self->_showAlert = *(fromCopy + 40);
    *&self->_has |= 0x10u;
  }

LABEL_7:
}

@end