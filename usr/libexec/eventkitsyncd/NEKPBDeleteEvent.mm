@interface NEKPBDeleteEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSpan:(BOOL)span;
- (void)writeTo:(id)to;
@end

@implementation NEKPBDeleteEvent

- (void)setHasSpan:(BOOL)span
{
  if (span)
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
  dictionaryRepresentation = [(NEKPBDeleteEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_eventIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_eventTitle)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    eventStart = self->_eventStart;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_calendarIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_calendarTitle)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_storeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    span = self->_span;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_eventIdentifier)
  {
    [toCopy setEventIdentifier:?];
    toCopy = v5;
  }

  if (self->_eventTitle)
  {
    [v5 setEventTitle:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_eventStart;
    *(toCopy + 64) |= 1u;
  }

  if (self->_calendarIdentifier)
  {
    [v5 setCalendarIdentifier:?];
    toCopy = v5;
  }

  if (self->_calendarTitle)
  {
    [v5 setCalendarTitle:?];
    toCopy = v5;
  }

  if (self->_storeIdentifier)
  {
    [v5 setStoreIdentifier:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 12) = self->_span;
    *(toCopy + 64) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_eventIdentifier copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_eventTitle copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  if (*&self->_has)
  {
    v5[1] = *&self->_eventStart;
    *(v5 + 64) |= 1u;
  }

  v10 = [(NSString *)self->_calendarIdentifier copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_calendarTitle copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_storeIdentifier copyWithZone:zone];
  v15 = v5[7];
  v5[7] = v14;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 12) = self->_span;
    *(v5 + 64) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  eventIdentifier = self->_eventIdentifier;
  if (eventIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)eventIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  eventTitle = self->_eventTitle;
  if (eventTitle | *(equalCopy + 5))
  {
    if (![(NSString *)eventTitle isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v7 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_eventStart != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  calendarIdentifier = self->_calendarIdentifier;
  if (calendarIdentifier | *(equalCopy + 2) && ![(NSString *)calendarIdentifier isEqual:?])
  {
    goto LABEL_21;
  }

  calendarTitle = self->_calendarTitle;
  if (calendarTitle | *(equalCopy + 3))
  {
    if (![(NSString *)calendarTitle isEqual:?])
    {
      goto LABEL_21;
    }
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier | *(equalCopy + 7))
  {
    if (![(NSString *)storeIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v11 = (*(equalCopy + 64) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_span != *(equalCopy + 12))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(NEKPBDeleteEvent *)self setEventIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(NEKPBDeleteEvent *)self setEventTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 64))
  {
    self->_eventStart = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(NEKPBDeleteEvent *)self setCalendarIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(NEKPBDeleteEvent *)self setCalendarTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 7))
  {
    [(NEKPBDeleteEvent *)self setStoreIdentifier:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 64) & 2) != 0)
  {
    self->_span = *(fromCopy + 12);
    *&self->_has |= 2u;
  }
}

@end