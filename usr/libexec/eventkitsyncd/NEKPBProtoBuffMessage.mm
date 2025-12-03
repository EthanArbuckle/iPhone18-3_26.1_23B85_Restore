@interface NEKPBProtoBuffMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NEKPBProtoBuffMessage

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBProtoBuffMessage;
  v3 = [(NEKPBProtoBuffMessage *)&v7 description];
  dictionaryRepresentation = [(NEKPBProtoBuffMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_packetNumber];
    [v3 setObject:v4 forKey:@"packetNumber"];
  }

  storeWrapper = self->_storeWrapper;
  if (storeWrapper)
  {
    dictionaryRepresentation = [(NEKPBSourceWrapper *)storeWrapper dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"storeWrapper"];
  }

  calendarWrapper = self->_calendarWrapper;
  if (calendarWrapper)
  {
    dictionaryRepresentation2 = [(NEKPBCalendarWrapper *)calendarWrapper dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"calendarWrapper"];
  }

  iCSWrapper = self->_iCSWrapper;
  if (iCSWrapper)
  {
    dictionaryRepresentation3 = [(NEKPBICSWrapper *)iCSWrapper dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"ICSWrapper"];
  }

  deletionWrapper = self->_deletionWrapper;
  if (deletionWrapper)
  {
    dictionaryRepresentation4 = [(NEKPBDeletionWrapper *)deletionWrapper dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"deletionWrapper"];
  }

  validationWrapper = self->_validationWrapper;
  if (validationWrapper)
  {
    dictionaryRepresentation5 = [(NEKPBValidationWrapper *)validationWrapper dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation5 forKey:@"validationWrapper"];
  }

  setReminderComplete = self->_setReminderComplete;
  if (setReminderComplete)
  {
    dictionaryRepresentation6 = [(NEKPBSetReminderComplete *)setReminderComplete dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation6 forKey:@"setReminderComplete"];
  }

  setParticipantStatus = self->_setParticipantStatus;
  if (setParticipantStatus)
  {
    dictionaryRepresentation7 = [(NEKPBSetParticipantStatus *)setParticipantStatus dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation7 forKey:@"setParticipantStatus"];
  }

  setAlarmSnooze = self->_setAlarmSnooze;
  if (setAlarmSnooze)
  {
    dictionaryRepresentation8 = [(NEKPBSetAlarmSnooze *)setAlarmSnooze dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation8 forKey:@"setAlarmSnooze"];
  }

  deleteEvent = self->_deleteEvent;
  if (deleteEvent)
  {
    dictionaryRepresentation9 = [(NEKPBDeleteEvent *)deleteEvent dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation9 forKey:@"deleteEvent"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_storeWrapper)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_calendarWrapper)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_iCSWrapper)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_deletionWrapper)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_validationWrapper)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_setReminderComplete)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_setParticipantStatus)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_setAlarmSnooze)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_deleteEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    packetNumber = self->_packetNumber;
    PBDataWriterWriteFixed32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_storeWrapper)
  {
    [toCopy setStoreWrapper:?];
    toCopy = v5;
  }

  if (self->_calendarWrapper)
  {
    [v5 setCalendarWrapper:?];
    toCopy = v5;
  }

  if (self->_iCSWrapper)
  {
    [v5 setICSWrapper:?];
    toCopy = v5;
  }

  if (self->_deletionWrapper)
  {
    [v5 setDeletionWrapper:?];
    toCopy = v5;
  }

  if (self->_validationWrapper)
  {
    [v5 setValidationWrapper:?];
    toCopy = v5;
  }

  if (self->_setReminderComplete)
  {
    [v5 setSetReminderComplete:?];
    toCopy = v5;
  }

  if (self->_setParticipantStatus)
  {
    [v5 setSetParticipantStatus:?];
    toCopy = v5;
  }

  if (self->_setAlarmSnooze)
  {
    [v5 setSetAlarmSnooze:?];
    toCopy = v5;
  }

  if (self->_deleteEvent)
  {
    [v5 setDeleteEvent:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 10) = self->_packetNumber;
    *(toCopy + 88) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NEKPBSourceWrapper *)self->_storeWrapper copyWithZone:zone];
  v7 = v5[9];
  v5[9] = v6;

  v8 = [(NEKPBCalendarWrapper *)self->_calendarWrapper copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NEKPBICSWrapper *)self->_iCSWrapper copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NEKPBDeletionWrapper *)self->_deletionWrapper copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NEKPBValidationWrapper *)self->_validationWrapper copyWithZone:zone];
  v15 = v5[10];
  v5[10] = v14;

  v16 = [(NEKPBSetReminderComplete *)self->_setReminderComplete copyWithZone:zone];
  v17 = v5[8];
  v5[8] = v16;

  v18 = [(NEKPBSetParticipantStatus *)self->_setParticipantStatus copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(NEKPBSetAlarmSnooze *)self->_setAlarmSnooze copyWithZone:zone];
  v21 = v5[6];
  v5[6] = v20;

  v22 = [(NEKPBDeleteEvent *)self->_deleteEvent copyWithZone:zone];
  v23 = v5[2];
  v5[2] = v22;

  if (*&self->_has)
  {
    *(v5 + 10) = self->_packetNumber;
    *(v5 + 88) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  storeWrapper = self->_storeWrapper;
  if (storeWrapper | *(equalCopy + 9))
  {
    if (![(NEKPBSourceWrapper *)storeWrapper isEqual:?])
    {
      goto LABEL_24;
    }
  }

  calendarWrapper = self->_calendarWrapper;
  if (calendarWrapper | *(equalCopy + 1))
  {
    if (![(NEKPBCalendarWrapper *)calendarWrapper isEqual:?])
    {
      goto LABEL_24;
    }
  }

  iCSWrapper = self->_iCSWrapper;
  if (iCSWrapper | *(equalCopy + 4))
  {
    if (![(NEKPBICSWrapper *)iCSWrapper isEqual:?])
    {
      goto LABEL_24;
    }
  }

  deletionWrapper = self->_deletionWrapper;
  if (deletionWrapper | *(equalCopy + 3))
  {
    if (![(NEKPBDeletionWrapper *)deletionWrapper isEqual:?])
    {
      goto LABEL_24;
    }
  }

  validationWrapper = self->_validationWrapper;
  if (validationWrapper | *(equalCopy + 10))
  {
    if (![(NEKPBValidationWrapper *)validationWrapper isEqual:?])
    {
      goto LABEL_24;
    }
  }

  setReminderComplete = self->_setReminderComplete;
  if (setReminderComplete | *(equalCopy + 8))
  {
    if (![(NEKPBSetReminderComplete *)setReminderComplete isEqual:?])
    {
      goto LABEL_24;
    }
  }

  setParticipantStatus = self->_setParticipantStatus;
  if (setParticipantStatus | *(equalCopy + 7))
  {
    if (![(NEKPBSetParticipantStatus *)setParticipantStatus isEqual:?])
    {
      goto LABEL_24;
    }
  }

  setAlarmSnooze = self->_setAlarmSnooze;
  if (setAlarmSnooze | *(equalCopy + 6))
  {
    if (![(NEKPBSetAlarmSnooze *)setAlarmSnooze isEqual:?])
    {
      goto LABEL_24;
    }
  }

  deleteEvent = self->_deleteEvent;
  if (deleteEvent | *(equalCopy + 2))
  {
    if (![(NEKPBDeleteEvent *)deleteEvent isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v14 = (*(equalCopy + 88) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) != 0 && self->_packetNumber == *(equalCopy + 10))
    {
      v14 = 1;
      goto LABEL_25;
    }

LABEL_24:
    v14 = 0;
  }

LABEL_25:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NEKPBSourceWrapper *)self->_storeWrapper hash];
  v4 = [(NEKPBCalendarWrapper *)self->_calendarWrapper hash];
  v5 = [(NEKPBICSWrapper *)self->_iCSWrapper hash];
  v6 = [(NEKPBDeletionWrapper *)self->_deletionWrapper hash];
  v7 = [(NEKPBValidationWrapper *)self->_validationWrapper hash];
  v8 = [(NEKPBSetReminderComplete *)self->_setReminderComplete hash];
  v9 = [(NEKPBSetParticipantStatus *)self->_setParticipantStatus hash];
  v10 = [(NEKPBSetAlarmSnooze *)self->_setAlarmSnooze hash];
  v11 = [(NEKPBDeleteEvent *)self->_deleteEvent hash];
  if (*&self->_has)
  {
    v12 = 2654435761 * self->_packetNumber;
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  storeWrapper = self->_storeWrapper;
  v6 = *(fromCopy + 9);
  v23 = fromCopy;
  if (storeWrapper)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NEKPBSourceWrapper *)storeWrapper mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NEKPBProtoBuffMessage *)self setStoreWrapper:?];
  }

  fromCopy = v23;
LABEL_7:
  calendarWrapper = self->_calendarWrapper;
  v8 = *(fromCopy + 1);
  if (calendarWrapper)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NEKPBCalendarWrapper *)calendarWrapper mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(NEKPBProtoBuffMessage *)self setCalendarWrapper:?];
  }

  fromCopy = v23;
LABEL_13:
  iCSWrapper = self->_iCSWrapper;
  v10 = *(fromCopy + 4);
  if (iCSWrapper)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(NEKPBICSWrapper *)iCSWrapper mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(NEKPBProtoBuffMessage *)self setICSWrapper:?];
  }

  fromCopy = v23;
LABEL_19:
  deletionWrapper = self->_deletionWrapper;
  v12 = *(fromCopy + 3);
  if (deletionWrapper)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(NEKPBDeletionWrapper *)deletionWrapper mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    [(NEKPBProtoBuffMessage *)self setDeletionWrapper:?];
  }

  fromCopy = v23;
LABEL_25:
  validationWrapper = self->_validationWrapper;
  v14 = *(fromCopy + 10);
  if (validationWrapper)
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    [(NEKPBValidationWrapper *)validationWrapper mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    [(NEKPBProtoBuffMessage *)self setValidationWrapper:?];
  }

  fromCopy = v23;
LABEL_31:
  setReminderComplete = self->_setReminderComplete;
  v16 = *(fromCopy + 8);
  if (setReminderComplete)
  {
    if (!v16)
    {
      goto LABEL_37;
    }

    [(NEKPBSetReminderComplete *)setReminderComplete mergeFrom:?];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_37;
    }

    [(NEKPBProtoBuffMessage *)self setSetReminderComplete:?];
  }

  fromCopy = v23;
LABEL_37:
  setParticipantStatus = self->_setParticipantStatus;
  v18 = *(fromCopy + 7);
  if (setParticipantStatus)
  {
    if (!v18)
    {
      goto LABEL_43;
    }

    [(NEKPBSetParticipantStatus *)setParticipantStatus mergeFrom:?];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_43;
    }

    [(NEKPBProtoBuffMessage *)self setSetParticipantStatus:?];
  }

  fromCopy = v23;
LABEL_43:
  setAlarmSnooze = self->_setAlarmSnooze;
  v20 = *(fromCopy + 6);
  if (setAlarmSnooze)
  {
    if (!v20)
    {
      goto LABEL_49;
    }

    [(NEKPBSetAlarmSnooze *)setAlarmSnooze mergeFrom:?];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_49;
    }

    [(NEKPBProtoBuffMessage *)self setSetAlarmSnooze:?];
  }

  fromCopy = v23;
LABEL_49:
  deleteEvent = self->_deleteEvent;
  v22 = *(fromCopy + 2);
  if (deleteEvent)
  {
    if (!v22)
    {
      goto LABEL_55;
    }

    [(NEKPBDeleteEvent *)deleteEvent mergeFrom:?];
  }

  else
  {
    if (!v22)
    {
      goto LABEL_55;
    }

    [(NEKPBProtoBuffMessage *)self setDeleteEvent:?];
  }

  fromCopy = v23;
LABEL_55:
  if (*(fromCopy + 88))
  {
    self->_packetNumber = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  _objc_release_x1();
}

@end