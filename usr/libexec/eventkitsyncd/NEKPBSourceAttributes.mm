@interface NEKPBSourceAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAllowsCalendarAddDeleteModify:(BOOL)a3;
- (void)setHasAllowsEvents:(BOOL)a3;
- (void)setHasAllowsTasks:(BOOL)a3;
- (void)setHasIsBirthdayStore:(BOOL)a3;
- (void)setHasIsEnabled:(BOOL)a3;
- (void)setHasIsFacebook:(BOOL)a3;
- (void)setHasIsLocalStore:(BOOL)a3;
- (void)setHasOnlyCreatorCanModify:(BOOL)a3;
- (void)setHasSnoozeAlarmRequiresDetach:(BOOL)a3;
- (void)setHasSupportsAlarmAcknowledgedDate:(BOOL)a3;
- (void)setHasSupportsSharedCalendars:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasUsesSelfAttendee:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBSourceAttributes

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasIsEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasIsFacebook:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasUsesSelfAttendee:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasSupportsSharedCalendars:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasAllowsTasks:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasAllowsEvents:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasAllowsCalendarAddDeleteModify:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasOnlyCreatorCanModify:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasSnoozeAlarmRequiresDetach:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasSupportsAlarmAcknowledgedDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasIsLocalStore:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsBirthdayStore:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBSourceAttributes;
  v3 = [(NEKPBSourceAttributes *)&v7 description];
  v4 = [(NEKPBSourceAttributes *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  has = self->_has;
  if (has)
  {
    v17 = [NSNumber numberWithUnsignedInt:self->_defaultAlarmOffset];
    [v4 setObject:v17 forKey:@"defaultAlarmOffset"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_36;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  v18 = [NSNumber numberWithUnsignedInt:self->_type];
  [v4 setObject:v18 forKey:@"type"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = [NSNumber numberWithBool:self->_isEnabled];
  [v4 setObject:v19 forKey:@"isEnabled"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_37:
  v20 = [NSNumber numberWithBool:self->_isFacebook];
  [v4 setObject:v20 forKey:@"isFacebook"];

  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_8:
    v7 = [NSNumber numberWithBool:self->_usesSelfAttendee];
    [v4 setObject:v7 forKey:@"usesSelfAttendee"];
  }

LABEL_9:
  constraintsDescriptionPath = self->_constraintsDescriptionPath;
  if (constraintsDescriptionPath)
  {
    [v4 setObject:constraintsDescriptionPath forKey:@"constraintsDescriptionPath"];
  }

  externalID = self->_externalID;
  if (externalID)
  {
    [v4 setObject:externalID forKey:@"externalID"];
  }

  externalModificationTag = self->_externalModificationTag;
  if (externalModificationTag)
  {
    [v4 setObject:externalModificationTag forKey:@"externalModificationTag"];
  }

  creatorBundleID = self->_creatorBundleID;
  if (creatorBundleID)
  {
    [v4 setObject:creatorBundleID forKey:@"creatorBundleID"];
  }

  creatorCodeSigningIdentity = self->_creatorCodeSigningIdentity;
  if (creatorCodeSigningIdentity)
  {
    [v4 setObject:creatorCodeSigningIdentity forKey:@"creatorCodeSigningIdentity"];
  }

  accountPersistentID = self->_accountPersistentID;
  if (accountPersistentID)
  {
    [v4 setObject:accountPersistentID forKey:@"accountPersistentID"];
  }

  v14 = self->_has;
  if ((v14 & 0x1000) != 0)
  {
    v21 = [NSNumber numberWithBool:self->_supportsSharedCalendars];
    [v4 setObject:v21 forKey:@"supportsSharedCalendars"];

    v14 = self->_has;
    if ((v14 & 0x10) == 0)
    {
LABEL_23:
      if ((v14 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_41;
    }
  }

  else if ((v14 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  v22 = [NSNumber numberWithBool:self->_allowsTasks];
  [v4 setObject:v22 forKey:@"allowsTasks"];

  v14 = self->_has;
  if ((v14 & 8) == 0)
  {
LABEL_24:
    if ((v14 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_42;
  }

LABEL_41:
  v23 = [NSNumber numberWithBool:self->_allowsEvents];
  [v4 setObject:v23 forKey:@"allowsEvents"];

  v14 = self->_has;
  if ((v14 & 4) == 0)
  {
LABEL_25:
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

LABEL_42:
  v24 = [NSNumber numberWithBool:self->_allowsCalendarAddDeleteModify];
  [v4 setObject:v24 forKey:@"allowsCalendarAddDeleteModify"];

  v14 = self->_has;
  if ((v14 & 0x200) == 0)
  {
LABEL_26:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

LABEL_43:
  v25 = [NSNumber numberWithBool:self->_onlyCreatorCanModify];
  [v4 setObject:v25 forKey:@"onlyCreatorCanModify"];

  v14 = self->_has;
  if ((v14 & 0x400) == 0)
  {
LABEL_27:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_45;
  }

LABEL_44:
  v26 = [NSNumber numberWithBool:self->_snoozeAlarmRequiresDetach];
  [v4 setObject:v26 forKey:@"snoozeAlarmRequiresDetach"];

  v14 = self->_has;
  if ((v14 & 0x800) == 0)
  {
LABEL_28:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

LABEL_45:
  v27 = [NSNumber numberWithBool:self->_supportsAlarmAcknowledgedDate];
  [v4 setObject:v27 forKey:@"supportsAlarmAcknowledgedDate"];

  v14 = self->_has;
  if ((v14 & 0x100) == 0)
  {
LABEL_29:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_46:
  v28 = [NSNumber numberWithBool:self->_isLocalStore];
  [v4 setObject:v28 forKey:@"isLocalStore"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_30:
    v15 = [NSNumber numberWithBool:self->_isBirthdayStore];
    [v4 setObject:v15 forKey:@"isBirthdayStore"];
  }

LABEL_31:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v21 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v21;
  }

  has = self->_has;
  if (has)
  {
    defaultAlarmOffset = self->_defaultAlarmOffset;
    PBDataWriterWriteUint32Field();
    v4 = v21;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_36;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
  v4 = v21;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  isEnabled = self->_isEnabled;
  PBDataWriterWriteBOOLField();
  v4 = v21;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_37:
  isFacebook = self->_isFacebook;
  PBDataWriterWriteBOOLField();
  v4 = v21;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_8:
    usesSelfAttendee = self->_usesSelfAttendee;
    PBDataWriterWriteBOOLField();
    v4 = v21;
  }

LABEL_9:
  if (self->_constraintsDescriptionPath)
  {
    PBDataWriterWriteStringField();
    v4 = v21;
  }

  if (self->_externalID)
  {
    PBDataWriterWriteStringField();
    v4 = v21;
  }

  if (self->_externalModificationTag)
  {
    PBDataWriterWriteStringField();
    v4 = v21;
  }

  if (self->_creatorBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v21;
  }

  if (self->_creatorCodeSigningIdentity)
  {
    PBDataWriterWriteStringField();
    v4 = v21;
  }

  if (self->_accountPersistentID)
  {
    PBDataWriterWriteStringField();
    v4 = v21;
  }

  v7 = self->_has;
  if ((v7 & 0x1000) != 0)
  {
    supportsSharedCalendars = self->_supportsSharedCalendars;
    PBDataWriterWriteBOOLField();
    v4 = v21;
    v7 = self->_has;
    if ((v7 & 0x10) == 0)
    {
LABEL_23:
      if ((v7 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_41;
    }
  }

  else if ((v7 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  allowsTasks = self->_allowsTasks;
  PBDataWriterWriteBOOLField();
  v4 = v21;
  v7 = self->_has;
  if ((v7 & 8) == 0)
  {
LABEL_24:
    if ((v7 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_42;
  }

LABEL_41:
  allowsEvents = self->_allowsEvents;
  PBDataWriterWriteBOOLField();
  v4 = v21;
  v7 = self->_has;
  if ((v7 & 4) == 0)
  {
LABEL_25:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

LABEL_42:
  allowsCalendarAddDeleteModify = self->_allowsCalendarAddDeleteModify;
  PBDataWriterWriteBOOLField();
  v4 = v21;
  v7 = self->_has;
  if ((v7 & 0x200) == 0)
  {
LABEL_26:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

LABEL_43:
  onlyCreatorCanModify = self->_onlyCreatorCanModify;
  PBDataWriterWriteBOOLField();
  v4 = v21;
  v7 = self->_has;
  if ((v7 & 0x400) == 0)
  {
LABEL_27:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_45;
  }

LABEL_44:
  snoozeAlarmRequiresDetach = self->_snoozeAlarmRequiresDetach;
  PBDataWriterWriteBOOLField();
  v4 = v21;
  v7 = self->_has;
  if ((v7 & 0x800) == 0)
  {
LABEL_28:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

LABEL_45:
  supportsAlarmAcknowledgedDate = self->_supportsAlarmAcknowledgedDate;
  PBDataWriterWriteBOOLField();
  v4 = v21;
  v7 = self->_has;
  if ((v7 & 0x100) == 0)
  {
LABEL_29:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_46:
  isLocalStore = self->_isLocalStore;
  PBDataWriterWriteBOOLField();
  v4 = v21;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_30:
    isBirthdayStore = self->_isBirthdayStore;
    PBDataWriterWriteBOOLField();
    v4 = v21;
  }

LABEL_31:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v7;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 10) = self->_defaultAlarmOffset;
    *(v4 + 44) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_36;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 18) = self->_type;
  *(v4 + 44) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v4 + 80) = self->_isEnabled;
  *(v4 + 44) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_37:
  *(v4 + 81) = self->_isFacebook;
  *(v4 + 44) |= 0x80u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_8:
    *(v4 + 87) = self->_usesSelfAttendee;
    *(v4 + 44) |= 0x2000u;
  }

LABEL_9:
  if (self->_constraintsDescriptionPath)
  {
    [v7 setConstraintsDescriptionPath:?];
    v4 = v7;
  }

  if (self->_externalID)
  {
    [v7 setExternalID:?];
    v4 = v7;
  }

  if (self->_externalModificationTag)
  {
    [v7 setExternalModificationTag:?];
    v4 = v7;
  }

  if (self->_creatorBundleID)
  {
    [v7 setCreatorBundleID:?];
    v4 = v7;
  }

  if (self->_creatorCodeSigningIdentity)
  {
    [v7 setCreatorCodeSigningIdentity:?];
    v4 = v7;
  }

  if (self->_accountPersistentID)
  {
    [v7 setAccountPersistentID:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x1000) != 0)
  {
    *(v4 + 86) = self->_supportsSharedCalendars;
    *(v4 + 44) |= 0x1000u;
    v6 = self->_has;
    if ((v6 & 0x10) == 0)
    {
LABEL_23:
      if ((v6 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_41;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  *(v4 + 78) = self->_allowsTasks;
  *(v4 + 44) |= 0x10u;
  v6 = self->_has;
  if ((v6 & 8) == 0)
  {
LABEL_24:
    if ((v6 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v4 + 77) = self->_allowsEvents;
  *(v4 + 44) |= 8u;
  v6 = self->_has;
  if ((v6 & 4) == 0)
  {
LABEL_25:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 76) = self->_allowsCalendarAddDeleteModify;
  *(v4 + 44) |= 4u;
  v6 = self->_has;
  if ((v6 & 0x200) == 0)
  {
LABEL_26:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 83) = self->_onlyCreatorCanModify;
  *(v4 + 44) |= 0x200u;
  v6 = self->_has;
  if ((v6 & 0x400) == 0)
  {
LABEL_27:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 84) = self->_snoozeAlarmRequiresDetach;
  *(v4 + 44) |= 0x400u;
  v6 = self->_has;
  if ((v6 & 0x800) == 0)
  {
LABEL_28:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 85) = self->_supportsAlarmAcknowledgedDate;
  *(v4 + 44) |= 0x800u;
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_29:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_46:
  *(v4 + 82) = self->_isLocalStore;
  *(v4 + 44) |= 0x100u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_30:
    *(v4 + 79) = self->_isBirthdayStore;
    *(v4 + 44) |= 0x20u;
  }

LABEL_31:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[8];
  v5[8] = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 10) = self->_defaultAlarmOffset;
    *(v5 + 44) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 18) = self->_type;
  *(v5 + 44) |= 2u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 80) = self->_isEnabled;
  *(v5 + 44) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_21:
  *(v5 + 81) = self->_isFacebook;
  *(v5 + 44) |= 0x80u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_6:
    *(v5 + 87) = self->_usesSelfAttendee;
    *(v5 + 44) |= 0x2000u;
  }

LABEL_7:
  v9 = [(NSString *)self->_constraintsDescriptionPath copyWithZone:a3];
  v10 = v5[2];
  v5[2] = v9;

  v11 = [(NSString *)self->_externalID copyWithZone:a3];
  v12 = v5[6];
  v5[6] = v11;

  v13 = [(NSString *)self->_externalModificationTag copyWithZone:a3];
  v14 = v5[7];
  v5[7] = v13;

  v15 = [(NSString *)self->_creatorBundleID copyWithZone:a3];
  v16 = v5[3];
  v5[3] = v15;

  v17 = [(NSString *)self->_creatorCodeSigningIdentity copyWithZone:a3];
  v18 = v5[4];
  v5[4] = v17;

  v19 = [(NSString *)self->_accountPersistentID copyWithZone:a3];
  v20 = v5[1];
  v5[1] = v19;

  v21 = self->_has;
  if ((v21 & 0x1000) != 0)
  {
    *(v5 + 86) = self->_supportsSharedCalendars;
    *(v5 + 44) |= 0x1000u;
    v21 = self->_has;
    if ((v21 & 0x10) == 0)
    {
LABEL_9:
      if ((v21 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if ((v21 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  *(v5 + 78) = self->_allowsTasks;
  *(v5 + 44) |= 0x10u;
  v21 = self->_has;
  if ((v21 & 8) == 0)
  {
LABEL_10:
    if ((v21 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 77) = self->_allowsEvents;
  *(v5 + 44) |= 8u;
  v21 = self->_has;
  if ((v21 & 4) == 0)
  {
LABEL_11:
    if ((v21 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 76) = self->_allowsCalendarAddDeleteModify;
  *(v5 + 44) |= 4u;
  v21 = self->_has;
  if ((v21 & 0x200) == 0)
  {
LABEL_12:
    if ((v21 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 83) = self->_onlyCreatorCanModify;
  *(v5 + 44) |= 0x200u;
  v21 = self->_has;
  if ((v21 & 0x400) == 0)
  {
LABEL_13:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 84) = self->_snoozeAlarmRequiresDetach;
  *(v5 + 44) |= 0x400u;
  v21 = self->_has;
  if ((v21 & 0x800) == 0)
  {
LABEL_14:
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    *(v5 + 82) = self->_isLocalStore;
    *(v5 + 44) |= 0x100u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v5;
    }

    goto LABEL_16;
  }

LABEL_29:
  *(v5 + 85) = self->_supportsAlarmAcknowledgedDate;
  *(v5 + 44) |= 0x800u;
  v21 = self->_has;
  if ((v21 & 0x100) != 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v21 & 0x20) != 0)
  {
LABEL_16:
    *(v5 + 79) = self->_isBirthdayStore;
    *(v5 + 44) |= 0x20u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_121;
  }

  name = self->_name;
  if (name | *(v4 + 8))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_121;
    }
  }

  has = self->_has;
  v7 = *(v4 + 44);
  if (has)
  {
    if ((v7 & 1) == 0 || self->_defaultAlarmOffset != *(v4 + 10))
    {
      goto LABEL_121;
    }
  }

  else if (v7)
  {
    goto LABEL_121;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_type != *(v4 + 18))
    {
      goto LABEL_121;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_121;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_121;
    }

    v17 = *(v4 + 80);
    if (self->_isEnabled)
    {
      if ((*(v4 + 80) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 80))
    {
      goto LABEL_121;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_121;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_121;
    }

    v18 = *(v4 + 81);
    if (self->_isFacebook)
    {
      if ((*(v4 + 81) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 81))
    {
      goto LABEL_121;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_121;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 44) & 0x2000) == 0)
    {
      goto LABEL_121;
    }

    v19 = *(v4 + 87);
    if (self->_usesSelfAttendee)
    {
      if ((*(v4 + 87) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 87))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 44) & 0x2000) != 0)
  {
    goto LABEL_121;
  }

  constraintsDescriptionPath = self->_constraintsDescriptionPath;
  if (constraintsDescriptionPath | *(v4 + 2) && ![(NSString *)constraintsDescriptionPath isEqual:?])
  {
    goto LABEL_121;
  }

  externalID = self->_externalID;
  if (externalID | *(v4 + 6))
  {
    if (![(NSString *)externalID isEqual:?])
    {
      goto LABEL_121;
    }
  }

  externalModificationTag = self->_externalModificationTag;
  if (externalModificationTag | *(v4 + 7))
  {
    if (![(NSString *)externalModificationTag isEqual:?])
    {
      goto LABEL_121;
    }
  }

  creatorBundleID = self->_creatorBundleID;
  if (creatorBundleID | *(v4 + 3))
  {
    if (![(NSString *)creatorBundleID isEqual:?])
    {
      goto LABEL_121;
    }
  }

  creatorCodeSigningIdentity = self->_creatorCodeSigningIdentity;
  if (creatorCodeSigningIdentity | *(v4 + 4))
  {
    if (![(NSString *)creatorCodeSigningIdentity isEqual:?])
    {
      goto LABEL_121;
    }
  }

  accountPersistentID = self->_accountPersistentID;
  if (accountPersistentID | *(v4 + 1))
  {
    if (![(NSString *)accountPersistentID isEqual:?])
    {
      goto LABEL_121;
    }
  }

  v14 = self->_has;
  v15 = *(v4 + 44);
  if ((v14 & 0x1000) != 0)
  {
    if ((*(v4 + 44) & 0x1000) == 0)
    {
      goto LABEL_121;
    }

    v20 = *(v4 + 86);
    if (self->_supportsSharedCalendars)
    {
      if ((*(v4 + 86) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 86))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 44) & 0x1000) != 0)
  {
    goto LABEL_121;
  }

  if ((v14 & 0x10) != 0)
  {
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_121;
    }

    v21 = *(v4 + 78);
    if (self->_allowsTasks)
    {
      if ((*(v4 + 78) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 78))
    {
      goto LABEL_121;
    }
  }

  else if ((v15 & 0x10) != 0)
  {
    goto LABEL_121;
  }

  if ((v14 & 8) != 0)
  {
    if ((v15 & 8) == 0)
    {
      goto LABEL_121;
    }

    v22 = *(v4 + 77);
    if (self->_allowsEvents)
    {
      if ((*(v4 + 77) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 77))
    {
      goto LABEL_121;
    }
  }

  else if ((v15 & 8) != 0)
  {
    goto LABEL_121;
  }

  if ((v14 & 4) != 0)
  {
    if ((v15 & 4) == 0)
    {
      goto LABEL_121;
    }

    v23 = *(v4 + 76);
    if (self->_allowsCalendarAddDeleteModify)
    {
      if ((*(v4 + 76) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 76))
    {
      goto LABEL_121;
    }
  }

  else if ((v15 & 4) != 0)
  {
    goto LABEL_121;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 44) & 0x200) == 0)
    {
      goto LABEL_121;
    }

    v24 = *(v4 + 83);
    if (self->_onlyCreatorCanModify)
    {
      if ((*(v4 + 83) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 83))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 44) & 0x200) != 0)
  {
    goto LABEL_121;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 44) & 0x400) == 0)
    {
      goto LABEL_121;
    }

    v25 = *(v4 + 84);
    if (self->_snoozeAlarmRequiresDetach)
    {
      if ((*(v4 + 84) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 84))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 44) & 0x400) != 0)
  {
    goto LABEL_121;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 44) & 0x800) == 0)
    {
      goto LABEL_121;
    }

    v26 = *(v4 + 85);
    if (self->_supportsAlarmAcknowledgedDate)
    {
      if ((*(v4 + 85) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 85))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 44) & 0x800) != 0)
  {
    goto LABEL_121;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 44) & 0x100) == 0)
    {
      goto LABEL_121;
    }

    v27 = *(v4 + 82);
    if (self->_isLocalStore)
    {
      if ((*(v4 + 82) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 82))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 44) & 0x100) != 0)
  {
    goto LABEL_121;
  }

  if ((v14 & 0x20) != 0)
  {
    if ((v15 & 0x20) != 0)
    {
      if (self->_isBirthdayStore)
      {
        if (*(v4 + 79))
        {
          goto LABEL_123;
        }
      }

      else if (!*(v4 + 79))
      {
LABEL_123:
        v16 = 1;
        goto LABEL_122;
      }
    }

LABEL_121:
    v16 = 0;
    goto LABEL_122;
  }

  v16 = (v15 & 0x20) == 0;
LABEL_122:

  return v16;
}

- (unint64_t)hash
{
  v27 = [(NSString *)self->_name hash];
  has = self->_has;
  if (has)
  {
    v26 = 2654435761 * self->_defaultAlarmOffset;
    if ((has & 2) != 0)
    {
LABEL_3:
      v25 = 2654435761 * self->_type;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v26 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v25 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_4:
    v23 = 2654435761 * self->_isEnabled;
    if ((has & 0x80) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v4 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v23 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = 2654435761 * self->_isFacebook;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_6:
    v5 = 2654435761 * self->_usesSelfAttendee;
    goto LABEL_12;
  }

LABEL_11:
  v5 = 0;
LABEL_12:
  v6 = [(NSString *)self->_constraintsDescriptionPath hash];
  v7 = [(NSString *)self->_externalID hash];
  v8 = [(NSString *)self->_externalModificationTag hash];
  v9 = [(NSString *)self->_creatorBundleID hash];
  v10 = [(NSString *)self->_creatorCodeSigningIdentity hash];
  v11 = [(NSString *)self->_accountPersistentID hash];
  v12 = self->_has;
  if ((v12 & 0x1000) != 0)
  {
    v13 = 2654435761 * self->_supportsSharedCalendars;
    if ((v12 & 0x10) != 0)
    {
LABEL_14:
      v14 = 2654435761 * self->_allowsTasks;
      if ((v12 & 8) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v13 = 0;
    if ((v12 & 0x10) != 0)
    {
      goto LABEL_14;
    }
  }

  v14 = 0;
  if ((v12 & 8) != 0)
  {
LABEL_15:
    v15 = 2654435761 * self->_allowsEvents;
    if ((v12 & 4) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = 0;
  if ((v12 & 4) != 0)
  {
LABEL_16:
    v16 = 2654435761 * self->_allowsCalendarAddDeleteModify;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_17:
    v17 = 2654435761 * self->_onlyCreatorCanModify;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_18:
    v18 = 2654435761 * self->_snoozeAlarmRequiresDetach;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  v18 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_19:
    v19 = 2654435761 * self->_supportsAlarmAcknowledgedDate;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_20;
    }

LABEL_29:
    v20 = 0;
    if ((v12 & 0x20) != 0)
    {
      goto LABEL_21;
    }

LABEL_30:
    v21 = 0;
    return v26 ^ v27 ^ v25 ^ v24 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
  }

LABEL_28:
  v19 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  v20 = 2654435761 * self->_isLocalStore;
  if ((v12 & 0x20) == 0)
  {
    goto LABEL_30;
  }

LABEL_21:
  v21 = 2654435761 * self->_isBirthdayStore;
  return v26 ^ v27 ^ v25 ^ v24 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 8))
  {
    [(NEKPBSourceAttributes *)self setName:?];
    v4 = v7;
  }

  v5 = *(v4 + 44);
  if (v5)
  {
    self->_defaultAlarmOffset = *(v4 + 10);
    *&self->_has |= 1u;
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_type = *(v4 + 18);
  *&self->_has |= 2u;
  v5 = *(v4 + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_isEnabled = *(v4 + 80);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_37:
  self->_isFacebook = *(v4 + 81);
  *&self->_has |= 0x80u;
  if ((*(v4 + 44) & 0x2000) != 0)
  {
LABEL_8:
    self->_usesSelfAttendee = *(v4 + 87);
    *&self->_has |= 0x2000u;
  }

LABEL_9:
  if (*(v4 + 2))
  {
    [(NEKPBSourceAttributes *)self setConstraintsDescriptionPath:?];
    v4 = v7;
  }

  if (*(v4 + 6))
  {
    [(NEKPBSourceAttributes *)self setExternalID:?];
    v4 = v7;
  }

  if (*(v4 + 7))
  {
    [(NEKPBSourceAttributes *)self setExternalModificationTag:?];
    v4 = v7;
  }

  if (*(v4 + 3))
  {
    [(NEKPBSourceAttributes *)self setCreatorBundleID:?];
    v4 = v7;
  }

  if (*(v4 + 4))
  {
    [(NEKPBSourceAttributes *)self setCreatorCodeSigningIdentity:?];
    v4 = v7;
  }

  if (*(v4 + 1))
  {
    [(NEKPBSourceAttributes *)self setAccountPersistentID:?];
    v4 = v7;
  }

  v6 = *(v4 + 44);
  if ((v6 & 0x1000) != 0)
  {
    self->_supportsSharedCalendars = *(v4 + 86);
    *&self->_has |= 0x1000u;
    v6 = *(v4 + 44);
    if ((v6 & 0x10) == 0)
    {
LABEL_23:
      if ((v6 & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_41;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  self->_allowsTasks = *(v4 + 78);
  *&self->_has |= 0x10u;
  v6 = *(v4 + 44);
  if ((v6 & 8) == 0)
  {
LABEL_24:
    if ((v6 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_allowsEvents = *(v4 + 77);
  *&self->_has |= 8u;
  v6 = *(v4 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_25:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_allowsCalendarAddDeleteModify = *(v4 + 76);
  *&self->_has |= 4u;
  v6 = *(v4 + 44);
  if ((v6 & 0x200) == 0)
  {
LABEL_26:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_onlyCreatorCanModify = *(v4 + 83);
  *&self->_has |= 0x200u;
  v6 = *(v4 + 44);
  if ((v6 & 0x400) == 0)
  {
LABEL_27:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_snoozeAlarmRequiresDetach = *(v4 + 84);
  *&self->_has |= 0x400u;
  v6 = *(v4 + 44);
  if ((v6 & 0x800) == 0)
  {
LABEL_28:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_supportsAlarmAcknowledgedDate = *(v4 + 85);
  *&self->_has |= 0x800u;
  v6 = *(v4 + 44);
  if ((v6 & 0x100) == 0)
  {
LABEL_29:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_46:
  self->_isLocalStore = *(v4 + 82);
  *&self->_has |= 0x100u;
  if ((*(v4 + 44) & 0x20) != 0)
  {
LABEL_30:
    self->_isBirthdayStore = *(v4 + 79);
    *&self->_has |= 0x20u;
  }

LABEL_31:
}

@end