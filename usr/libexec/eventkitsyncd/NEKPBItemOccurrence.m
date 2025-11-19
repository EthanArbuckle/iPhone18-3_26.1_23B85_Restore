@interface NEKPBItemOccurrence
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBItemOccurrence

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBItemOccurrence;
  v3 = [(NEKPBItemOccurrence *)&v7 description];
  v4 = [(NEKPBItemOccurrence *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_summary)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_calendar)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v5;
  }

  if (self->_summary)
  {
    [v5 setSummary:?];
    v4 = v5;
  }

  if (self->_calendar)
  {
    [v5 setCalendar:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_date;
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_summary copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_calendar copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  if (*&self->_has)
  {
    v5[1] = *&self->_date;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 4))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_12;
    }
  }

  summary = self->_summary;
  if (summary | *(v4 + 3))
  {
    if (![(NSString *)summary isEqual:?])
    {
      goto LABEL_12;
    }
  }

  calendar = self->_calendar;
  if (calendar | *(v4 + 2))
  {
    if (![(NSString *)calendar isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_date == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(NEKPBItemOccurrence *)self setUuid:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(NEKPBItemOccurrence *)self setSummary:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NEKPBItemOccurrence *)self setCalendar:?];
    v4 = v5;
  }

  if (v4[5])
  {
    self->_date = v4[1];
    *&self->_has |= 1u;
  }
}

@end