@interface NEKPBItemOccurrence
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NEKPBItemOccurrence

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBItemOccurrence;
  v3 = [(NEKPBItemOccurrence *)&v7 description];
  dictionaryRepresentation = [(NEKPBItemOccurrence *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  summary = self->_summary;
  if (summary)
  {
    [v4 setObject:summary forKey:@"summary"];
  }

  calendar = self->_calendar;
  if (calendar)
  {
    [v4 setObject:calendar forKey:@"calendar"];
  }

  if (*&self->_has)
  {
    v8 = [NSNumber numberWithDouble:self->_date];
    [v4 setObject:v8 forKey:@"date"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_summary)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_calendar)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v5;
  }

  if (self->_summary)
  {
    [v5 setSummary:?];
    toCopy = v5;
  }

  if (self->_calendar)
  {
    [v5 setCalendar:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_date;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_summary copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_calendar copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  if (*&self->_has)
  {
    v5[1] = *&self->_date;
    *(v5 + 40) |= 1u;
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

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 4))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_12;
    }
  }

  summary = self->_summary;
  if (summary | *(equalCopy + 3))
  {
    if (![(NSString *)summary isEqual:?])
    {
      goto LABEL_12;
    }
  }

  calendar = self->_calendar;
  if (calendar | *(equalCopy + 2))
  {
    if (![(NSString *)calendar isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_date == *(equalCopy + 1))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuid hash];
  v4 = [(NSString *)self->_summary hash];
  v5 = [(NSString *)self->_calendar hash];
  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v6.i64 = floor(date + 0.5);
    v10 = (date - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
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

  return v4 ^ v3 ^ v5 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(NEKPBItemOccurrence *)self setUuid:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(NEKPBItemOccurrence *)self setSummary:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NEKPBItemOccurrence *)self setCalendar:?];
    fromCopy = v5;
  }

  if (fromCopy[5])
  {
    self->_date = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end