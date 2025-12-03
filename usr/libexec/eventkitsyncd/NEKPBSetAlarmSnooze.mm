@interface NEKPBSetAlarmSnooze
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NEKPBSetAlarmSnooze

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBSetAlarmSnooze;
  v3 = [(NEKPBSetAlarmSnooze *)&v7 description];
  dictionaryRepresentation = [(NEKPBSetAlarmSnooze *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithDouble:self->_snoozeAmount];
    [v3 setObject:v4 forKey:@"snoozeAmount"];
  }

  calendarName = self->_calendarName;
  if (calendarName)
  {
    [v3 setObject:calendarName forKey:@"calendarName"];
  }

  reminderTitle = self->_reminderTitle;
  if (reminderTitle)
  {
    [v3 setObject:reminderTitle forKey:@"reminderTitle"];
  }

  externalIdentifier = self->_externalIdentifier;
  if (externalIdentifier)
  {
    [v3 setObject:externalIdentifier forKey:@"externalIdentifier"];
  }

  alarmIdentifier = self->_alarmIdentifier;
  if (alarmIdentifier)
  {
    [v3 setObject:alarmIdentifier forKey:@"alarmIdentifier"];
  }

  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier)
  {
    [v3 setObject:itemIdentifier forKey:@"itemIdentifier"];
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier)
  {
    [v3 setObject:storeIdentifier forKey:@"storeIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    snoozeAmount = self->_snoozeAmount;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_calendarName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_reminderTitle)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_externalIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_alarmIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_storeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_snoozeAmount;
    *(toCopy + 64) |= 1u;
  }

  v5 = toCopy;
  if (self->_calendarName)
  {
    [toCopy setCalendarName:?];
    toCopy = v5;
  }

  if (self->_reminderTitle)
  {
    [v5 setReminderTitle:?];
    toCopy = v5;
  }

  if (self->_externalIdentifier)
  {
    [v5 setExternalIdentifier:?];
    toCopy = v5;
  }

  if (self->_alarmIdentifier)
  {
    [v5 setAlarmIdentifier:?];
    toCopy = v5;
  }

  if (self->_itemIdentifier)
  {
    [v5 setItemIdentifier:?];
    toCopy = v5;
  }

  if (self->_storeIdentifier)
  {
    [v5 setStoreIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = *&self->_snoozeAmount;
    *(v5 + 64) |= 1u;
  }

  v7 = [(NSString *)self->_calendarName copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_reminderTitle copyWithZone:zone];
  v10 = v6[6];
  v6[6] = v9;

  v11 = [(NSString *)self->_externalIdentifier copyWithZone:zone];
  v12 = v6[4];
  v6[4] = v11;

  v13 = [(NSString *)self->_alarmIdentifier copyWithZone:zone];
  v14 = v6[2];
  v6[2] = v13;

  v15 = [(NSString *)self->_itemIdentifier copyWithZone:zone];
  v16 = v6[5];
  v6[5] = v15;

  v17 = [(NSString *)self->_storeIdentifier copyWithZone:zone];
  v18 = v6[7];
  v6[7] = v17;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_snoozeAmount != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  calendarName = self->_calendarName;
  if (calendarName | *(equalCopy + 3) && ![(NSString *)calendarName isEqual:?])
  {
    goto LABEL_19;
  }

  reminderTitle = self->_reminderTitle;
  if (reminderTitle | *(equalCopy + 6))
  {
    if (![(NSString *)reminderTitle isEqual:?])
    {
      goto LABEL_19;
    }
  }

  externalIdentifier = self->_externalIdentifier;
  if (externalIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)externalIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  alarmIdentifier = self->_alarmIdentifier;
  if (alarmIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)alarmIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)itemIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier | *(equalCopy + 7))
  {
    v12 = [(NSString *)storeIdentifier isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    snoozeAmount = self->_snoozeAmount;
    if (snoozeAmount < 0.0)
    {
      snoozeAmount = -snoozeAmount;
    }

    *v2.i64 = floor(snoozeAmount + 0.5);
    v7 = (snoozeAmount - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_calendarName hash]^ v5;
  v10 = [(NSString *)self->_reminderTitle hash];
  v11 = v9 ^ v10 ^ [(NSString *)self->_externalIdentifier hash];
  v12 = [(NSString *)self->_alarmIdentifier hash];
  v13 = v12 ^ [(NSString *)self->_itemIdentifier hash];
  return v11 ^ v13 ^ [(NSString *)self->_storeIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[8])
  {
    self->_snoozeAmount = fromCopy[1];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(NEKPBSetAlarmSnooze *)self setCalendarName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(NEKPBSetAlarmSnooze *)self setReminderTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(NEKPBSetAlarmSnooze *)self setExternalIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NEKPBSetAlarmSnooze *)self setAlarmIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(NEKPBSetAlarmSnooze *)self setItemIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 7))
  {
    [(NEKPBSetAlarmSnooze *)self setStoreIdentifier:?];
    fromCopy = v5;
  }
}

@end