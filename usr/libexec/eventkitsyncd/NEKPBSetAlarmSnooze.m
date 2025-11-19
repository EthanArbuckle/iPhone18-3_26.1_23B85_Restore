@interface NEKPBSetAlarmSnooze
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBSetAlarmSnooze

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBSetAlarmSnooze;
  v3 = [(NEKPBSetAlarmSnooze *)&v7 description];
  v4 = [(NEKPBSetAlarmSnooze *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    snoozeAmount = self->_snoozeAmount;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_calendarName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_reminderTitle)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_externalIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_alarmIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_storeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_snoozeAmount;
    *(v4 + 64) |= 1u;
  }

  v5 = v4;
  if (self->_calendarName)
  {
    [v4 setCalendarName:?];
    v4 = v5;
  }

  if (self->_reminderTitle)
  {
    [v5 setReminderTitle:?];
    v4 = v5;
  }

  if (self->_externalIdentifier)
  {
    [v5 setExternalIdentifier:?];
    v4 = v5;
  }

  if (self->_alarmIdentifier)
  {
    [v5 setAlarmIdentifier:?];
    v4 = v5;
  }

  if (self->_itemIdentifier)
  {
    [v5 setItemIdentifier:?];
    v4 = v5;
  }

  if (self->_storeIdentifier)
  {
    [v5 setStoreIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = *&self->_snoozeAmount;
    *(v5 + 64) |= 1u;
  }

  v7 = [(NSString *)self->_calendarName copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_reminderTitle copyWithZone:a3];
  v10 = v6[6];
  v6[6] = v9;

  v11 = [(NSString *)self->_externalIdentifier copyWithZone:a3];
  v12 = v6[4];
  v6[4] = v11;

  v13 = [(NSString *)self->_alarmIdentifier copyWithZone:a3];
  v14 = v6[2];
  v6[2] = v13;

  v15 = [(NSString *)self->_itemIdentifier copyWithZone:a3];
  v16 = v6[5];
  v6[5] = v15;

  v17 = [(NSString *)self->_storeIdentifier copyWithZone:a3];
  v18 = v6[7];
  v6[7] = v17;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_snoozeAmount != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  calendarName = self->_calendarName;
  if (calendarName | *(v4 + 3) && ![(NSString *)calendarName isEqual:?])
  {
    goto LABEL_19;
  }

  reminderTitle = self->_reminderTitle;
  if (reminderTitle | *(v4 + 6))
  {
    if (![(NSString *)reminderTitle isEqual:?])
    {
      goto LABEL_19;
    }
  }

  externalIdentifier = self->_externalIdentifier;
  if (externalIdentifier | *(v4 + 4))
  {
    if (![(NSString *)externalIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  alarmIdentifier = self->_alarmIdentifier;
  if (alarmIdentifier | *(v4 + 2))
  {
    if (![(NSString *)alarmIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier | *(v4 + 5))
  {
    if (![(NSString *)itemIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  storeIdentifier = self->_storeIdentifier;
  if (storeIdentifier | *(v4 + 7))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[8])
  {
    self->_snoozeAmount = v4[1];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 3))
  {
    [(NEKPBSetAlarmSnooze *)self setCalendarName:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(NEKPBSetAlarmSnooze *)self setReminderTitle:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(NEKPBSetAlarmSnooze *)self setExternalIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NEKPBSetAlarmSnooze *)self setAlarmIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(NEKPBSetAlarmSnooze *)self setItemIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 7))
  {
    [(NEKPBSetAlarmSnooze *)self setStoreIdentifier:?];
    v4 = v5;
  }
}

@end