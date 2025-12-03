@interface NEKPBSetReminderComplete
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NEKPBSetReminderComplete

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBSetReminderComplete;
  v3 = [(NEKPBSetReminderComplete *)&v7 description];
  dictionaryRepresentation = [(NEKPBSetReminderComplete *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    isComplete = self->_isComplete;
    PBDataWriterWriteBOOLField();
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[32] = self->_isComplete;
    toCopy[36] |= 1u;
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
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_isComplete;
    *(v5 + 36) |= 1u;
  }

  v7 = [(NSString *)self->_calendarName copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_reminderTitle copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(NSString *)self->_externalIdentifier copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 36);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 36) & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
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

  if ((*(equalCopy + 32) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  calendarName = self->_calendarName;
  if (calendarName | *(equalCopy + 1) && ![(NSString *)calendarName isEqual:?])
  {
    goto LABEL_11;
  }

  reminderTitle = self->_reminderTitle;
  if (reminderTitle | *(equalCopy + 3))
  {
    if (![(NSString *)reminderTitle isEqual:?])
    {
      goto LABEL_11;
    }
  }

  externalIdentifier = self->_externalIdentifier;
  if (externalIdentifier | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[36])
  {
    self->_isComplete = fromCopy[32];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NEKPBSetReminderComplete *)self setCalendarName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(NEKPBSetReminderComplete *)self setReminderTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NEKPBSetReminderComplete *)self setExternalIdentifier:?];
    fromCopy = v5;
  }
}

@end