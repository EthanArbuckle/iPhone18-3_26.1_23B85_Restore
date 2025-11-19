@interface NEKPBICSWrapperMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEntityType:(BOOL)a3;
- (void)setHasInvitationChangedPropertyFlagAttendeeComment:(BOOL)a3;
- (void)setHasInvitationChangedPropertyFlagAttendeeStatus:(BOOL)a3;
- (void)setHasInvitationChangedPropertyFlagDate:(BOOL)a3;
- (void)setHasInvitationChangedPropertyFlagLocation:(BOOL)a3;
- (void)setHasInvitationChangedPropertyFlagTime:(BOOL)a3;
- (void)setHasInvitationChangedPropertyFlagTitle:(BOOL)a3;
- (void)setHasInvitationStatus:(BOOL)a3;
- (void)setHasLocationPredictionState:(BOOL)a3;
- (void)setHasProperInvitationStatus:(BOOL)a3;
- (void)setHasStartDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBICSWrapperMetadata

- (void)setHasInvitationStatus:(BOOL)a3
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

- (void)setHasEntityType:(BOOL)a3
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

- (void)setHasInvitationChangedPropertyFlagDate:(BOOL)a3
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

- (void)setHasInvitationChangedPropertyFlagTime:(BOOL)a3
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

- (void)setHasInvitationChangedPropertyFlagTitle:(BOOL)a3
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

- (void)setHasInvitationChangedPropertyFlagLocation:(BOOL)a3
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

- (void)setHasInvitationChangedPropertyFlagAttendeeComment:(BOOL)a3
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

- (void)setHasInvitationChangedPropertyFlagAttendeeStatus:(BOOL)a3
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

- (void)setHasLocationPredictionState:(BOOL)a3
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

- (void)setHasProperInvitationStatus:(BOOL)a3
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

- (void)setHasStartDate:(BOOL)a3
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
  v7.super_class = NEKPBICSWrapperMetadata;
  v3 = [(NEKPBICSWrapperMetadata *)&v7 description];
  v4 = [(NEKPBICSWrapperMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  selfAttendeeEmail = self->_selfAttendeeEmail;
  if (selfAttendeeEmail)
  {
    [v3 setObject:selfAttendeeEmail forKey:@"selfAttendeeEmail"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v15 = [NSNumber numberWithUnsignedLongLong:self->_invitationStatus];
    [v4 setObject:v15 forKey:@"invitationStatus"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  v16 = [NSNumber numberWithUnsignedLongLong:self->_entityType];
  [v4 setObject:v16 forKey:@"entityType"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v17 = [NSNumber numberWithBool:self->_invitationChangedPropertyFlagDate];
  [v4 setObject:v17 forKey:@"invitationChangedPropertyFlagDate"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v18 = [NSNumber numberWithBool:self->_invitationChangedPropertyFlagTime];
  [v4 setObject:v18 forKey:@"invitationChangedPropertyFlagTime"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v19 = [NSNumber numberWithBool:self->_invitationChangedPropertyFlagTitle];
  [v4 setObject:v19 forKey:@"invitationChangedPropertyFlagTitle"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v20 = [NSNumber numberWithBool:self->_invitationChangedPropertyFlagLocation];
  [v4 setObject:v20 forKey:@"invitationChangedPropertyFlagLocation"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_34:
  v21 = [NSNumber numberWithBool:self->_invitationChangedPropertyFlagAttendeeComment];
  [v4 setObject:v21 forKey:@"invitationChangedPropertyFlagAttendeeComment"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    v7 = [NSNumber numberWithBool:self->_invitationChangedPropertyFlagAttendeeStatus];
    [v4 setObject:v7 forKey:@"invitationChangedPropertyFlagAttendeeStatus"];
  }

LABEL_12:
  selfAttendeeUUID = self->_selfAttendeeUUID;
  if (selfAttendeeUUID)
  {
    [v4 setObject:selfAttendeeUUID forKey:@"selfAttendeeUUID"];
  }

  selfOrganizerEmail = self->_selfOrganizerEmail;
  if (selfOrganizerEmail)
  {
    [v4 setObject:selfOrganizerEmail forKey:@"selfOrganizerEmail"];
  }

  selfOrganizerUUID = self->_selfOrganizerUUID;
  if (selfOrganizerUUID)
  {
    [v4 setObject:selfOrganizerUUID forKey:@"selfOrganizerUUID"];
  }

  externalID = self->_externalID;
  if (externalID)
  {
    [v4 setObject:externalID forKey:@"externalID"];
  }

  v12 = self->_has;
  if (v12)
  {
    v22 = [NSNumber numberWithUnsignedLongLong:self->_attendeeStatus];
    [v4 setObject:v22 forKey:@"attendeeStatus"];

    v12 = self->_has;
    if ((v12 & 8) == 0)
    {
LABEL_22:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_38;
    }
  }

  else if ((v12 & 8) == 0)
  {
    goto LABEL_22;
  }

  v23 = [NSNumber numberWithUnsignedLongLong:self->_locationPredictionState];
  [v4 setObject:v23 forKey:@"locationPredictionState"];

  v12 = self->_has;
  if ((v12 & 0x10) == 0)
  {
LABEL_23:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_38:
  v24 = [NSNumber numberWithUnsignedLongLong:self->_properInvitationStatus];
  [v4 setObject:v24 forKey:@"properInvitationStatus"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_24:
    v13 = [NSNumber numberWithDouble:self->_startDate];
    [v4 setObject:v13 forKey:@"startDate"];
  }

LABEL_25:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v19 = v4;
  if (self->_selfAttendeeEmail)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    invitationStatus = self->_invitationStatus;
    PBDataWriterWriteUint64Field();
    v4 = v19;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  entityType = self->_entityType;
  PBDataWriterWriteUint64Field();
  v4 = v19;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  invitationChangedPropertyFlagDate = self->_invitationChangedPropertyFlagDate;
  PBDataWriterWriteBOOLField();
  v4 = v19;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  invitationChangedPropertyFlagTime = self->_invitationChangedPropertyFlagTime;
  PBDataWriterWriteBOOLField();
  v4 = v19;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  invitationChangedPropertyFlagTitle = self->_invitationChangedPropertyFlagTitle;
  PBDataWriterWriteBOOLField();
  v4 = v19;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  invitationChangedPropertyFlagLocation = self->_invitationChangedPropertyFlagLocation;
  PBDataWriterWriteBOOLField();
  v4 = v19;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_34:
  invitationChangedPropertyFlagAttendeeComment = self->_invitationChangedPropertyFlagAttendeeComment;
  PBDataWriterWriteBOOLField();
  v4 = v19;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    invitationChangedPropertyFlagAttendeeStatus = self->_invitationChangedPropertyFlagAttendeeStatus;
    PBDataWriterWriteBOOLField();
    v4 = v19;
  }

LABEL_12:
  if (self->_selfAttendeeUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_selfOrganizerEmail)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_selfOrganizerUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_externalID)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  v7 = self->_has;
  if (v7)
  {
    attendeeStatus = self->_attendeeStatus;
    PBDataWriterWriteUint64Field();
    v4 = v19;
    v7 = self->_has;
    if ((v7 & 8) == 0)
    {
LABEL_22:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_38;
    }
  }

  else if ((v7 & 8) == 0)
  {
    goto LABEL_22;
  }

  locationPredictionState = self->_locationPredictionState;
  PBDataWriterWriteUint64Field();
  v4 = v19;
  v7 = self->_has;
  if ((v7 & 0x10) == 0)
  {
LABEL_23:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_38:
  properInvitationStatus = self->_properInvitationStatus;
  PBDataWriterWriteUint64Field();
  v4 = v19;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_24:
    startDate = self->_startDate;
    PBDataWriterWriteDoubleField();
    v4 = v19;
  }

LABEL_25:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_selfAttendeeEmail)
  {
    [v4 setSelfAttendeeEmail:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 3) = self->_invitationStatus;
    *(v4 + 52) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 2) = self->_entityType;
  *(v4 + 52) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 98) = self->_invitationChangedPropertyFlagDate;
  *(v4 + 52) |= 0x100u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v4 + 100) = self->_invitationChangedPropertyFlagTime;
  *(v4 + 52) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 101) = self->_invitationChangedPropertyFlagTitle;
  *(v4 + 52) |= 0x800u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v4 + 99) = self->_invitationChangedPropertyFlagLocation;
  *(v4 + 52) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_34:
  *(v4 + 96) = self->_invitationChangedPropertyFlagAttendeeComment;
  *(v4 + 52) |= 0x40u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    *(v4 + 97) = self->_invitationChangedPropertyFlagAttendeeStatus;
    *(v4 + 52) |= 0x80u;
  }

LABEL_12:
  if (self->_selfAttendeeUUID)
  {
    [v7 setSelfAttendeeUUID:?];
    v4 = v7;
  }

  if (self->_selfOrganizerEmail)
  {
    [v7 setSelfOrganizerEmail:?];
    v4 = v7;
  }

  if (self->_selfOrganizerUUID)
  {
    [v7 setSelfOrganizerUUID:?];
    v4 = v7;
  }

  if (self->_externalID)
  {
    [v7 setExternalID:?];
    v4 = v7;
  }

  v6 = self->_has;
  if (v6)
  {
    *(v4 + 1) = self->_attendeeStatus;
    *(v4 + 52) |= 1u;
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_22:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_38;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_22;
  }

  *(v4 + 4) = self->_locationPredictionState;
  *(v4 + 52) |= 8u;
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_23:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_38:
  *(v4 + 5) = self->_properInvitationStatus;
  *(v4 + 52) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_24:
    *(v4 + 6) = *&self->_startDate;
    *(v4 + 52) |= 0x20u;
  }

LABEL_25:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_selfAttendeeEmail copyWithZone:a3];
  v7 = v5[8];
  v5[8] = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    v5[3] = self->_invitationStatus;
    *(v5 + 52) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v5[2] = self->_entityType;
  *(v5 + 52) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 98) = self->_invitationChangedPropertyFlagDate;
  *(v5 + 52) |= 0x100u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 100) = self->_invitationChangedPropertyFlagTime;
  *(v5 + 52) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 101) = self->_invitationChangedPropertyFlagTitle;
  *(v5 + 52) |= 0x800u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 99) = self->_invitationChangedPropertyFlagLocation;
  *(v5 + 52) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_22:
  *(v5 + 96) = self->_invitationChangedPropertyFlagAttendeeComment;
  *(v5 + 52) |= 0x40u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_9:
    *(v5 + 97) = self->_invitationChangedPropertyFlagAttendeeStatus;
    *(v5 + 52) |= 0x80u;
  }

LABEL_10:
  v9 = [(NSString *)self->_selfAttendeeUUID copyWithZone:a3];
  v10 = v5[9];
  v5[9] = v9;

  v11 = [(NSString *)self->_selfOrganizerEmail copyWithZone:a3];
  v12 = v5[10];
  v5[10] = v11;

  v13 = [(NSString *)self->_selfOrganizerUUID copyWithZone:a3];
  v14 = v5[11];
  v5[11] = v13;

  v15 = [(NSString *)self->_externalID copyWithZone:a3];
  v16 = v5[7];
  v5[7] = v15;

  v17 = self->_has;
  if (v17)
  {
    v5[1] = self->_attendeeStatus;
    *(v5 + 52) |= 1u;
    v17 = self->_has;
    if ((v17 & 8) == 0)
    {
LABEL_12:
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_13;
      }

LABEL_26:
      v5[5] = self->_properInvitationStatus;
      *(v5 + 52) |= 0x10u;
      if ((*&self->_has & 0x20) == 0)
      {
        return v5;
      }

      goto LABEL_14;
    }
  }

  else if ((v17 & 8) == 0)
  {
    goto LABEL_12;
  }

  v5[4] = self->_locationPredictionState;
  *(v5 + 52) |= 8u;
  v17 = self->_has;
  if ((v17 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v17 & 0x20) != 0)
  {
LABEL_14:
    v5[6] = *&self->_startDate;
    *(v5 + 52) |= 0x20u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_90;
  }

  selfAttendeeEmail = self->_selfAttendeeEmail;
  if (selfAttendeeEmail | *(v4 + 8))
  {
    if (![(NSString *)selfAttendeeEmail isEqual:?])
    {
      goto LABEL_90;
    }
  }

  has = self->_has;
  v7 = *(v4 + 52);
  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_invitationStatus != *(v4 + 3))
    {
      goto LABEL_90;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_90;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_entityType != *(v4 + 2))
    {
      goto LABEL_90;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_90;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 52) & 0x100) == 0)
    {
      goto LABEL_90;
    }

    v14 = *(v4 + 98);
    if (self->_invitationChangedPropertyFlagDate)
    {
      if ((*(v4 + 98) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (*(v4 + 98))
    {
      goto LABEL_90;
    }
  }

  else if ((*(v4 + 52) & 0x100) != 0)
  {
    goto LABEL_90;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 52) & 0x400) == 0)
    {
      goto LABEL_90;
    }

    v15 = *(v4 + 100);
    if (self->_invitationChangedPropertyFlagTime)
    {
      if ((*(v4 + 100) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (*(v4 + 100))
    {
      goto LABEL_90;
    }
  }

  else if ((*(v4 + 52) & 0x400) != 0)
  {
    goto LABEL_90;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 52) & 0x800) == 0)
    {
      goto LABEL_90;
    }

    v16 = *(v4 + 101);
    if (self->_invitationChangedPropertyFlagTitle)
    {
      if ((*(v4 + 101) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (*(v4 + 101))
    {
      goto LABEL_90;
    }
  }

  else if ((*(v4 + 52) & 0x800) != 0)
  {
    goto LABEL_90;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 52) & 0x200) == 0)
    {
      goto LABEL_90;
    }

    v17 = *(v4 + 99);
    if (self->_invitationChangedPropertyFlagLocation)
    {
      if ((*(v4 + 99) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (*(v4 + 99))
    {
      goto LABEL_90;
    }
  }

  else if ((*(v4 + 52) & 0x200) != 0)
  {
    goto LABEL_90;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_90;
    }

    v18 = *(v4 + 96);
    if (self->_invitationChangedPropertyFlagAttendeeComment)
    {
      if ((*(v4 + 96) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (*(v4 + 96))
    {
      goto LABEL_90;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_90;
  }

  if ((has & 0x80) == 0)
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_26;
    }

LABEL_90:
    v20 = 0;
    goto LABEL_91;
  }

  if ((v7 & 0x80) == 0)
  {
    goto LABEL_90;
  }

  v19 = *(v4 + 97);
  if (self->_invitationChangedPropertyFlagAttendeeStatus)
  {
    if ((*(v4 + 97) & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  else if (*(v4 + 97))
  {
    goto LABEL_90;
  }

LABEL_26:
  selfAttendeeUUID = self->_selfAttendeeUUID;
  if (selfAttendeeUUID | *(v4 + 9) && ![(NSString *)selfAttendeeUUID isEqual:?])
  {
    goto LABEL_90;
  }

  selfOrganizerEmail = self->_selfOrganizerEmail;
  if (selfOrganizerEmail | *(v4 + 10))
  {
    if (![(NSString *)selfOrganizerEmail isEqual:?])
    {
      goto LABEL_90;
    }
  }

  selfOrganizerUUID = self->_selfOrganizerUUID;
  if (selfOrganizerUUID | *(v4 + 11))
  {
    if (![(NSString *)selfOrganizerUUID isEqual:?])
    {
      goto LABEL_90;
    }
  }

  externalID = self->_externalID;
  if (externalID | *(v4 + 7))
  {
    if (![(NSString *)externalID isEqual:?])
    {
      goto LABEL_90;
    }
  }

  v12 = self->_has;
  v13 = *(v4 + 52);
  if (v12)
  {
    if ((v13 & 1) == 0 || self->_attendeeStatus != *(v4 + 1))
    {
      goto LABEL_90;
    }
  }

  else if (v13)
  {
    goto LABEL_90;
  }

  if ((v12 & 8) != 0)
  {
    if ((v13 & 8) == 0 || self->_locationPredictionState != *(v4 + 4))
    {
      goto LABEL_90;
    }
  }

  else if ((v13 & 8) != 0)
  {
    goto LABEL_90;
  }

  if ((v12 & 0x10) != 0)
  {
    if ((v13 & 0x10) == 0 || self->_properInvitationStatus != *(v4 + 5))
    {
      goto LABEL_90;
    }
  }

  else if ((v13 & 0x10) != 0)
  {
    goto LABEL_90;
  }

  if ((v12 & 0x20) != 0)
  {
    if ((v13 & 0x20) == 0 || self->_startDate != *(v4 + 6))
    {
      goto LABEL_90;
    }

    v20 = 1;
  }

  else
  {
    v20 = (v13 & 0x20) == 0;
  }

LABEL_91:

  return v20;
}

- (unint64_t)hash
{
  v27 = [(NSString *)self->_selfAttendeeEmail hash];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v26 = 2654435761u * self->_invitationStatus;
    if ((has & 2) != 0)
    {
LABEL_3:
      v25 = 2654435761u * self->_entityType;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v24 = 2654435761 * self->_invitationChangedPropertyFlagDate;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v24 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_5:
    v23 = 2654435761 * self->_invitationChangedPropertyFlagTime;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v23 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_6:
    v4 = 2654435761 * self->_invitationChangedPropertyFlagTitle;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_7:
    v5 = 2654435761 * self->_invitationChangedPropertyFlagLocation;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v6 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v5 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v6 = 2654435761 * self->_invitationChangedPropertyFlagAttendeeComment;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v7 = 2654435761 * self->_invitationChangedPropertyFlagAttendeeStatus;
    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
LABEL_18:
  v8 = [(NSString *)self->_selfAttendeeUUID hash];
  v9 = [(NSString *)self->_selfOrganizerEmail hash];
  v10 = [(NSString *)self->_selfOrganizerUUID hash];
  v11 = [(NSString *)self->_externalID hash];
  v14 = self->_has;
  if (v14)
  {
    v15 = 2654435761u * self->_attendeeStatus;
    if ((v14 & 8) != 0)
    {
LABEL_20:
      v16 = 2654435761u * self->_locationPredictionState;
      if ((v14 & 0x10) != 0)
      {
        goto LABEL_21;
      }

LABEL_28:
      v17 = 0;
      if ((v14 & 0x20) != 0)
      {
        goto LABEL_22;
      }

LABEL_29:
      v21 = 0;
      return v26 ^ v27 ^ v25 ^ v24 ^ v23 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v15 ^ v16 ^ v17 ^ v21;
    }
  }

  else
  {
    v15 = 0;
    if ((v14 & 8) != 0)
    {
      goto LABEL_20;
    }
  }

  v16 = 0;
  if ((v14 & 0x10) == 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  v17 = 2654435761u * self->_properInvitationStatus;
  if ((v14 & 0x20) == 0)
  {
    goto LABEL_29;
  }

LABEL_22:
  startDate = self->_startDate;
  if (startDate < 0.0)
  {
    startDate = -startDate;
  }

  *v12.i64 = floor(startDate + 0.5);
  v19 = (startDate - *v12.i64) * 1.84467441e19;
  *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v21 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v13, v12).i64;
  if (v19 >= 0.0)
  {
    if (v19 > 0.0)
    {
      v21 += v19;
    }
  }

  else
  {
    v21 -= fabs(v19);
  }

  return v26 ^ v27 ^ v25 ^ v24 ^ v23 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v15 ^ v16 ^ v17 ^ v21;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 8))
  {
    [(NEKPBICSWrapperMetadata *)self setSelfAttendeeEmail:?];
    v4 = v7;
  }

  v5 = *(v4 + 52);
  if ((v5 & 4) != 0)
  {
    self->_invitationStatus = *(v4 + 3);
    *&self->_has |= 4u;
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_entityType = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 52);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_invitationChangedPropertyFlagDate = *(v4 + 98);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 52);
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_invitationChangedPropertyFlagTime = *(v4 + 100);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 52);
  if ((v5 & 0x800) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_invitationChangedPropertyFlagTitle = *(v4 + 101);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 52);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_invitationChangedPropertyFlagLocation = *(v4 + 99);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_34:
  self->_invitationChangedPropertyFlagAttendeeComment = *(v4 + 96);
  *&self->_has |= 0x40u;
  if ((*(v4 + 52) & 0x80) != 0)
  {
LABEL_11:
    self->_invitationChangedPropertyFlagAttendeeStatus = *(v4 + 97);
    *&self->_has |= 0x80u;
  }

LABEL_12:
  if (*(v4 + 9))
  {
    [(NEKPBICSWrapperMetadata *)self setSelfAttendeeUUID:?];
    v4 = v7;
  }

  if (*(v4 + 10))
  {
    [(NEKPBICSWrapperMetadata *)self setSelfOrganizerEmail:?];
    v4 = v7;
  }

  if (*(v4 + 11))
  {
    [(NEKPBICSWrapperMetadata *)self setSelfOrganizerUUID:?];
    v4 = v7;
  }

  if (*(v4 + 7))
  {
    [(NEKPBICSWrapperMetadata *)self setExternalID:?];
    v4 = v7;
  }

  v6 = *(v4 + 52);
  if (v6)
  {
    self->_attendeeStatus = *(v4 + 1);
    *&self->_has |= 1u;
    v6 = *(v4 + 52);
    if ((v6 & 8) == 0)
    {
LABEL_22:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_38;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_22;
  }

  self->_locationPredictionState = *(v4 + 4);
  *&self->_has |= 8u;
  v6 = *(v4 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_23:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_38:
  self->_properInvitationStatus = *(v4 + 5);
  *&self->_has |= 0x10u;
  if ((*(v4 + 52) & 0x20) != 0)
  {
LABEL_24:
    self->_startDate = *(v4 + 6);
    *&self->_has |= 0x20u;
  }

LABEL_25:
}

@end