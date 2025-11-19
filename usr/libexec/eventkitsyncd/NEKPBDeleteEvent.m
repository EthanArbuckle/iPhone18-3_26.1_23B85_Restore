@interface NEKPBDeleteEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSpan:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBDeleteEvent

- (void)setHasSpan:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBDeleteEvent;
  v3 = [(NEKPBDeleteEvent *)&v7 description];
  v4 = [(NEKPBDeleteEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  eventIdentifier = self->_eventIdentifier;
  if (eventIdentifier)
  {
    [v3 setObject:eventIdentifier forKey:@"eventIdentifier"];
  }

  eventTitle = self->_eventTitle;
  if (eventTitle)
  {
    [v4 setObject:eventTitle forKey:@"eventTitle"];
  }

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithDouble:self->_eventStart];
    [v4 setObject:v7 forKey:@"eventStart"];
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier)
  {
    [v4 setObject:calendarIdentifier forKey:@"calendarIdentifier"];
  }

  calendarTitle = self->_calendarTitle;
  if (calendarTitle)
  {
    [v4 setObject:calendarTitle forKey:@"calendarTitle"];
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier)
  {
    [v4 setObject:storeIdentifier forKey:@"storeIdentifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = [NSNumber numberWithUnsignedInt:self->_span];
    [v4 setObject:v11 forKey:@"span"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_eventIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_eventTitle)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    eventStart = self->_eventStart;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_calendarIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_calendarTitle)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_storeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    span = self->_span;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_eventIdentifier)
  {
    [v4 setEventIdentifier:?];
    v4 = v5;
  }

  if (self->_eventTitle)
  {
    [v5 setEventTitle:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_eventStart;
    *(v4 + 64) |= 1u;
  }

  if (self->_calendarIdentifier)
  {
    [v5 setCalendarIdentifier:?];
    v4 = v5;
  }

  if (self->_calendarTitle)
  {
    [v5 setCalendarTitle:?];
    v4 = v5;
  }

  if (self->_storeIdentifier)
  {
    [v5 setStoreIdentifier:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 12) = self->_span;
    *(v4 + 64) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_eventIdentifier copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_eventTitle copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  if (*&self->_has)
  {
    v5[1] = *&self->_eventStart;
    *(v5 + 64) |= 1u;
  }

  v10 = [(NSString *)self->_calendarIdentifier copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_calendarTitle copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_storeIdentifier copyWithZone:a3];
  v15 = v5[7];
  v5[7] = v14;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 12) = self->_span;
    *(v5 + 64) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  eventIdentifier = self->_eventIdentifier;
  if (eventIdentifier | *(v4 + 4))
  {
    if (![(NSString *)eventIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  eventTitle = self->_eventTitle;
  if (eventTitle | *(v4 + 5))
  {
    if (![(NSString *)eventTitle isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v7 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_eventStart != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier | *(v4 + 2) && ![(NSString *)calendarIdentifier isEqual:?])
  {
    goto LABEL_21;
  }

  calendarTitle = self->_calendarTitle;
  if (calendarTitle | *(v4 + 3))
  {
    if (![(NSString *)calendarTitle isEqual:?])
    {
      goto LABEL_21;
    }
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier | *(v4 + 7))
  {
    if (![(NSString *)storeIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v11 = (*(v4 + 64) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_span != *(v4 + 12))
    {
      goto LABEL_21;
    }

    v11 = 1;
  }

LABEL_22:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_eventIdentifier hash];
  v4 = [(NSString *)self->_eventTitle hash];
  if (*&self->_has)
  {
    eventStart = self->_eventStart;
    if (eventStart < 0.0)
    {
      eventStart = -eventStart;
    }

    *v5.i64 = floor(eventStart + 0.5);
    v9 = (eventStart - *v5.i64) * 1.84467441e19;
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

  v11 = [(NSString *)self->_calendarIdentifier hash];
  v12 = [(NSString *)self->_calendarTitle hash];
  v13 = [(NSString *)self->_storeIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v14 = 2654435761 * self->_span;
  }

  else
  {
    v14 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(NEKPBDeleteEvent *)self setEventIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(NEKPBDeleteEvent *)self setEventTitle:?];
    v4 = v5;
  }

  if (*(v4 + 64))
  {
    self->_eventStart = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(NEKPBDeleteEvent *)self setCalendarIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(NEKPBDeleteEvent *)self setCalendarTitle:?];
    v4 = v5;
  }

  if (*(v4 + 7))
  {
    [(NEKPBDeleteEvent *)self setStoreIdentifier:?];
    v4 = v5;
  }

  if ((*(v4 + 64) & 2) != 0)
  {
    self->_span = *(v4 + 12);
    *&self->_has |= 2u;
  }
}

@end