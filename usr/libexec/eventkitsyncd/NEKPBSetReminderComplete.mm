@interface NEKPBSetReminderComplete
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBSetReminderComplete

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBSetReminderComplete;
  v3 = [(NEKPBSetReminderComplete *)&v7 description];
  v4 = [(NEKPBSetReminderComplete *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithBool:self->_isComplete];
    [v3 setObject:v4 forKey:@"isComplete"];
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

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    isComplete = self->_isComplete;
    PBDataWriterWriteBOOLField();
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
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[32] = self->_isComplete;
    v4[36] |= 1u;
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
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_isComplete;
    *(v5 + 36) |= 1u;
  }

  v7 = [(NSString *)self->_calendarName copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_reminderTitle copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(NSString *)self->_externalIdentifier copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 36);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(v4 + 36) & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (!self->_isComplete)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if ((*(v4 + 32) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  calendarName = self->_calendarName;
  if (calendarName | *(v4 + 1) && ![(NSString *)calendarName isEqual:?])
  {
    goto LABEL_11;
  }

  reminderTitle = self->_reminderTitle;
  if (reminderTitle | *(v4 + 3))
  {
    if (![(NSString *)reminderTitle isEqual:?])
    {
      goto LABEL_11;
    }
  }

  externalIdentifier = self->_externalIdentifier;
  if (externalIdentifier | *(v4 + 2))
  {
    v9 = [(NSString *)externalIdentifier isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_12:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isComplete;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_calendarName hash]^ v3;
  v5 = [(NSString *)self->_reminderTitle hash];
  return v4 ^ v5 ^ [(NSString *)self->_externalIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[36])
  {
    self->_isComplete = v4[32];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(NEKPBSetReminderComplete *)self setCalendarName:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(NEKPBSetReminderComplete *)self setReminderTitle:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NEKPBSetReminderComplete *)self setExternalIdentifier:?];
    v4 = v5;
  }
}

@end