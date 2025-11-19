@interface NEKPBCalendarAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCanBePublished:(BOOL)a3;
- (void)setHasCanBeShared:(BOOL)a3;
- (void)setHasDisplayOrder:(BOOL)a3;
- (void)setHasHasBeenAlerted:(BOOL)a3;
- (void)setHasIsDefaultCalendarForStore:(BOOL)a3;
- (void)setHasIsFamilyCalendar:(BOOL)a3;
- (void)setHasIsHidden:(BOOL)a3;
- (void)setHasIsHolidayCalendar:(BOOL)a3;
- (void)setHasIsIgnoringEventAlerts:(BOOL)a3;
- (void)setHasIsIgnoringSharedCalendarNotifications:(BOOL)a3;
- (void)setHasIsImmutable:(BOOL)a3;
- (void)setHasIsInbox:(BOOL)a3;
- (void)setHasIsNotificationsCollection:(BOOL)a3;
- (void)setHasIsPublished:(BOOL)a3;
- (void)setHasIsReadonly:(BOOL)a3;
- (void)setHasIsSchedulingProhibited:(BOOL)a3;
- (void)setHasIsSharingInvitation:(BOOL)a3;
- (void)setHasIsSubscribed:(BOOL)a3;
- (void)setHasSharingInvitationResponse:(BOOL)a3;
- (void)setHasSharingStatus:(BOOL)a3;
- (void)setHasSupportedEntityTypes:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NEKPBCalendarAttributes

- (void)setHasIsReadonly:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasIsHidden:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasIsImmutable:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasIsInbox:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasIsNotificationsCollection:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasIsSharingInvitation:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasIsSubscribed:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasIsHolidayCalendar:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasIsFamilyCalendar:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasIsIgnoringEventAlerts:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasIsIgnoringSharedCalendarNotifications:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasIsSchedulingProhibited:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasIsDefaultCalendarForStore:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasDisplayOrder:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasSharingStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasSharingInvitationResponse:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasCanBePublished:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasCanBeShared:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasIsPublished:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasSupportedEntityTypes:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasHasBeenAlerted:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NEKPBCalendarAttributes;
  v3 = [(NEKPBCalendarAttributes *)&v7 description];
  v4 = [(NEKPBCalendarAttributes *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  uUID = self->_uUID;
  if (uUID)
  {
    [v3 setObject:uUID forKey:@"UUID"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    v44 = [NSNumber numberWithBool:self->_isReadonly];
    [v4 setObject:v44 forKey:@"isReadonly"];

    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_7:
      if ((*&has & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_86;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_7;
  }

  v45 = [NSNumber numberWithBool:self->_isHidden];
  [v4 setObject:v45 forKey:@"isHidden"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_87;
  }

LABEL_86:
  v46 = [NSNumber numberWithBool:self->_isImmutable];
  [v4 setObject:v46 forKey:@"isImmutable"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_88;
  }

LABEL_87:
  v47 = [NSNumber numberWithBool:self->_isInbox];
  [v4 setObject:v47 forKey:@"isInbox"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_89;
  }

LABEL_88:
  v48 = [NSNumber numberWithBool:self->_isNotificationsCollection];
  [v4 setObject:v48 forKey:@"isNotificationsCollection"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_11:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_90;
  }

LABEL_89:
  v49 = [NSNumber numberWithBool:self->_isSharingInvitation];
  [v4 setObject:v49 forKey:@"isSharingInvitation"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_91;
  }

LABEL_90:
  v50 = [NSNumber numberWithBool:self->_isSubscribed];
  [v4 setObject:v50 forKey:@"isSubscribed"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_92;
  }

LABEL_91:
  v51 = [NSNumber numberWithBool:self->_isHolidayCalendar];
  [v4 setObject:v51 forKey:@"isHolidayCalendar"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_93;
  }

LABEL_92:
  v52 = [NSNumber numberWithBool:self->_isFamilyCalendar];
  [v4 setObject:v52 forKey:@"isFamilyCalendar"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_94;
  }

LABEL_93:
  v53 = [NSNumber numberWithBool:self->_isIgnoringEventAlerts];
  [v4 setObject:v53 forKey:@"isIgnoringEventAlerts"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_95;
  }

LABEL_94:
  v54 = [NSNumber numberWithBool:self->_isIgnoringSharedCalendarNotifications];
  [v4 setObject:v54 forKey:@"isIgnoringSharedCalendarNotifications"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_95:
  v55 = [NSNumber numberWithBool:self->_isSchedulingProhibited];
  [v4 setObject:v55 forKey:@"isSchedulingProhibited"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_18:
    v8 = [NSNumber numberWithBool:self->_isDefaultCalendarForStore];
    [v4 setObject:v8 forKey:@"isDefaultCalendarForStore"];
  }

LABEL_19:
  type = self->_type;
  if (type)
  {
    [v4 setObject:type forKey:@"type"];
  }

  digest = self->_digest;
  if (digest)
  {
    [v4 setObject:digest forKey:@"digest"];
  }

  symbolicColorName = self->_symbolicColorName;
  if (symbolicColorName)
  {
    [v4 setObject:symbolicColorName forKey:@"symbolicColorName"];
  }

  colorString = self->_colorString;
  if (colorString)
  {
    [v4 setObject:colorString forKey:@"colorString"];
  }

  v13 = self->_has;
  if ((*&v13 & 0x10) != 0)
  {
    v14 = [NSNumber numberWithInt:self->_displayOrder];
    [v4 setObject:v14 forKey:@"displayOrder"];

    v13 = self->_has;
  }

  if ((*&v13 & 4) != 0)
  {
    v15 = [NSNumber numberWithUnsignedLongLong:self->_sharingStatus];
    [v4 setObject:v15 forKey:@"sharingStatus"];
  }

  sharedOwnerName = self->_sharedOwnerName;
  if (sharedOwnerName)
  {
    [v4 setObject:sharedOwnerName forKey:@"sharedOwnerName"];
  }

  sharedOwnerAddress = self->_sharedOwnerAddress;
  if (sharedOwnerAddress)
  {
    [v4 setObject:sharedOwnerAddress forKey:@"sharedOwnerAddress"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v18 = [NSNumber numberWithUnsignedLongLong:self->_sharingInvitationResponse];
    [v4 setObject:v18 forKey:@"sharingInvitationResponse"];
  }

  publishedURLString = self->_publishedURLString;
  if (publishedURLString)
  {
    [v4 setObject:publishedURLString forKey:@"publishedURLString"];
  }

  v20 = self->_has;
  if ((*&v20 & 0x20) != 0)
  {
    v56 = [NSNumber numberWithBool:self->_canBePublished];
    [v4 setObject:v56 forKey:@"canBePublished"];

    v20 = self->_has;
    if ((*&v20 & 0x40) == 0)
    {
LABEL_41:
      if ((*&v20 & 0x20000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((*&v20 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  v57 = [NSNumber numberWithBool:self->_canBeShared];
  [v4 setObject:v57 forKey:@"canBeShared"];

  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_42:
    v21 = [NSNumber numberWithBool:self->_isPublished];
    [v4 setObject:v21 forKey:@"isPublished"];
  }

LABEL_43:
  externalID = self->_externalID;
  if (externalID)
  {
    [v4 setObject:externalID forKey:@"externalID"];
  }

  externalIdentificationTag = self->_externalIdentificationTag;
  if (externalIdentificationTag)
  {
    [v4 setObject:externalIdentificationTag forKey:@"externalIdentificationTag"];
  }

  syncToken = self->_syncToken;
  if (syncToken)
  {
    [v4 setObject:syncToken forKey:@"syncToken"];
  }

  externalModificationTag = self->_externalModificationTag;
  if (externalModificationTag)
  {
    [v4 setObject:externalModificationTag forKey:@"externalModificationTag"];
  }

  externalRepresentation = self->_externalRepresentation;
  if (externalRepresentation)
  {
    [v4 setObject:externalRepresentation forKey:@"externalRepresentation"];
  }

  v27 = self->_has;
  if ((*&v27 & 8) != 0)
  {
    v58 = [NSNumber numberWithUnsignedLongLong:self->_supportedEntityTypes];
    [v4 setObject:v58 forKey:@"supportedEntityTypes"];

    v27 = self->_has;
    if ((*&v27 & 1) == 0)
    {
LABEL_55:
      if ((*&v27 & 0x80) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  else if ((*&v27 & 1) == 0)
  {
    goto LABEL_55;
  }

  v59 = [NSNumber numberWithUnsignedLongLong:self->_invitationStatus];
  [v4 setObject:v59 forKey:@"invitationStatus"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_56:
    v28 = [NSNumber numberWithBool:self->_hasBeenAlerted];
    [v4 setObject:v28 forKey:@"hasBeenAlerted"];
  }

LABEL_57:
  notes = self->_notes;
  if (notes)
  {
    [v4 setObject:notes forKey:@"notes"];
  }

  subCalAccountID = self->_subCalAccountID;
  if (subCalAccountID)
  {
    [v4 setObject:subCalAccountID forKey:@"subCalAccountID"];
  }

  pushKey = self->_pushKey;
  if (pushKey)
  {
    [v4 setObject:pushKey forKey:@"pushKey"];
  }

  selfIdentityDisplayName = self->_selfIdentityDisplayName;
  if (selfIdentityDisplayName)
  {
    [v4 setObject:selfIdentityDisplayName forKey:@"selfIdentityDisplayName"];
  }

  selfIdentityEmail = self->_selfIdentityEmail;
  if (selfIdentityEmail)
  {
    [v4 setObject:selfIdentityEmail forKey:@"selfIdentityEmail"];
  }

  selfIdentityAddressString = self->_selfIdentityAddressString;
  if (selfIdentityAddressString)
  {
    [v4 setObject:selfIdentityAddressString forKey:@"selfIdentityAddressString"];
  }

  selfIdentityFirstName = self->_selfIdentityFirstName;
  if (selfIdentityFirstName)
  {
    [v4 setObject:selfIdentityFirstName forKey:@"selfIdentityFirstName"];
  }

  selfIdentityLastName = self->_selfIdentityLastName;
  if (selfIdentityLastName)
  {
    [v4 setObject:selfIdentityLastName forKey:@"selfIdentityLastName"];
  }

  ownerIdentityDisplayName = self->_ownerIdentityDisplayName;
  if (ownerIdentityDisplayName)
  {
    [v4 setObject:ownerIdentityDisplayName forKey:@"ownerIdentityDisplayName"];
  }

  ownerIdentityEmail = self->_ownerIdentityEmail;
  if (ownerIdentityEmail)
  {
    [v4 setObject:ownerIdentityEmail forKey:@"ownerIdentityEmail"];
  }

  ownerIdentityAddressString = self->_ownerIdentityAddressString;
  if (ownerIdentityAddressString)
  {
    [v4 setObject:ownerIdentityAddressString forKey:@"ownerIdentityAddressString"];
  }

  ownerIdentityFirstName = self->_ownerIdentityFirstName;
  if (ownerIdentityFirstName)
  {
    [v4 setObject:ownerIdentityFirstName forKey:@"ownerIdentityFirstName"];
  }

  ownerIdentityLastName = self->_ownerIdentityLastName;
  if (ownerIdentityLastName)
  {
    [v4 setObject:ownerIdentityLastName forKey:@"ownerIdentityLastName"];
  }

  v42 = v4;

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v31 = v4;
  if (self->_uUID)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    isReadonly = self->_isReadonly;
    PBDataWriterWriteBOOLField();
    v4 = v31;
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_7:
      if ((*&has & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_88;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_7;
  }

  isHidden = self->_isHidden;
  PBDataWriterWriteBOOLField();
  v4 = v31;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_89;
  }

LABEL_88:
  isImmutable = self->_isImmutable;
  PBDataWriterWriteBOOLField();
  v4 = v31;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_90;
  }

LABEL_89:
  isInbox = self->_isInbox;
  PBDataWriterWriteBOOLField();
  v4 = v31;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_91;
  }

LABEL_90:
  isNotificationsCollection = self->_isNotificationsCollection;
  PBDataWriterWriteBOOLField();
  v4 = v31;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_11:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_92;
  }

LABEL_91:
  isSharingInvitation = self->_isSharingInvitation;
  PBDataWriterWriteBOOLField();
  v4 = v31;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_93;
  }

LABEL_92:
  isSubscribed = self->_isSubscribed;
  PBDataWriterWriteBOOLField();
  v4 = v31;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_94;
  }

LABEL_93:
  isHolidayCalendar = self->_isHolidayCalendar;
  PBDataWriterWriteBOOLField();
  v4 = v31;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_95;
  }

LABEL_94:
  isFamilyCalendar = self->_isFamilyCalendar;
  PBDataWriterWriteBOOLField();
  v4 = v31;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_96;
  }

LABEL_95:
  isIgnoringEventAlerts = self->_isIgnoringEventAlerts;
  PBDataWriterWriteBOOLField();
  v4 = v31;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_97;
  }

LABEL_96:
  isIgnoringSharedCalendarNotifications = self->_isIgnoringSharedCalendarNotifications;
  PBDataWriterWriteBOOLField();
  v4 = v31;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_97:
  isSchedulingProhibited = self->_isSchedulingProhibited;
  PBDataWriterWriteBOOLField();
  v4 = v31;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_18:
    isDefaultCalendarForStore = self->_isDefaultCalendarForStore;
    PBDataWriterWriteBOOLField();
    v4 = v31;
  }

LABEL_19:
  if (self->_type)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_digest)
  {
    PBDataWriterWriteDataField();
    v4 = v31;
  }

  if (self->_symbolicColorName)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_colorString)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  v7 = self->_has;
  if ((*&v7 & 0x10) != 0)
  {
    displayOrder = self->_displayOrder;
    PBDataWriterWriteInt32Field();
    v4 = v31;
    v7 = self->_has;
  }

  if ((*&v7 & 4) != 0)
  {
    sharingStatus = self->_sharingStatus;
    PBDataWriterWriteUint64Field();
    v4 = v31;
  }

  if (self->_sharedOwnerName)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_sharedOwnerAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if ((*&self->_has & 2) != 0)
  {
    sharingInvitationResponse = self->_sharingInvitationResponse;
    PBDataWriterWriteUint64Field();
    v4 = v31;
  }

  if (self->_publishedURLString)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  v11 = self->_has;
  if ((*&v11 & 0x20) != 0)
  {
    canBePublished = self->_canBePublished;
    PBDataWriterWriteBOOLField();
    v4 = v31;
    v11 = self->_has;
    if ((*&v11 & 0x40) == 0)
    {
LABEL_41:
      if ((*&v11 & 0x20000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((*&v11 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  canBeShared = self->_canBeShared;
  PBDataWriterWriteBOOLField();
  v4 = v31;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_42:
    isPublished = self->_isPublished;
    PBDataWriterWriteBOOLField();
    v4 = v31;
  }

LABEL_43:
  if (self->_externalID)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_externalIdentificationTag)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_syncToken)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_externalModificationTag)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_externalRepresentation)
  {
    PBDataWriterWriteDataField();
    v4 = v31;
  }

  v13 = self->_has;
  if ((*&v13 & 8) != 0)
  {
    supportedEntityTypes = self->_supportedEntityTypes;
    PBDataWriterWriteUint64Field();
    v4 = v31;
    v13 = self->_has;
    if ((*&v13 & 1) == 0)
    {
LABEL_55:
      if ((*&v13 & 0x80) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  else if ((*&v13 & 1) == 0)
  {
    goto LABEL_55;
  }

  invitationStatus = self->_invitationStatus;
  PBDataWriterWriteUint64Field();
  v4 = v31;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_56:
    hasBeenAlerted = self->_hasBeenAlerted;
    PBDataWriterWriteBOOLField();
    v4 = v31;
  }

LABEL_57:
  if (self->_notes)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_subCalAccountID)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_pushKey)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_selfIdentityDisplayName)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_selfIdentityEmail)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_selfIdentityAddressString)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_selfIdentityFirstName)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_selfIdentityLastName)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_ownerIdentityDisplayName)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_ownerIdentityEmail)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_ownerIdentityAddressString)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_ownerIdentityFirstName)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }

  if (self->_ownerIdentityLastName)
  {
    PBDataWriterWriteStringField();
    v4 = v31;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_uUID)
  {
    [v4 setUUID:?];
    v4 = v9;
  }

  if (self->_title)
  {
    [v9 setTitle:?];
    v4 = v9;
  }

  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    *(v4 + 277) = self->_isReadonly;
    *(v4 + 71) |= 0x40000u;
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_7:
      if ((*&has & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_88;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 269) = self->_isHidden;
  *(v4 + 71) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v4 + 273) = self->_isImmutable;
  *(v4 + 71) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v4 + 274) = self->_isInbox;
  *(v4 + 71) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v4 + 275) = self->_isNotificationsCollection;
  *(v4 + 71) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_11:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v4 + 279) = self->_isSharingInvitation;
  *(v4 + 71) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v4 + 280) = self->_isSubscribed;
  *(v4 + 71) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v4 + 270) = self->_isHolidayCalendar;
  *(v4 + 71) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v4 + 268) = self->_isFamilyCalendar;
  *(v4 + 71) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v4 + 271) = self->_isIgnoringEventAlerts;
  *(v4 + 71) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(v4 + 272) = self->_isIgnoringSharedCalendarNotifications;
  *(v4 + 71) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_97:
  *(v4 + 278) = self->_isSchedulingProhibited;
  *(v4 + 71) |= 0x80000u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_18:
    *(v4 + 267) = self->_isDefaultCalendarForStore;
    *(v4 + 71) |= 0x100u;
  }

LABEL_19:
  if (self->_type)
  {
    [v9 setType:?];
    v4 = v9;
  }

  if (self->_digest)
  {
    [v9 setDigest:?];
    v4 = v9;
  }

  if (self->_symbolicColorName)
  {
    [v9 setSymbolicColorName:?];
    v4 = v9;
  }

  if (self->_colorString)
  {
    [v9 setColorString:?];
    v4 = v9;
  }

  v6 = self->_has;
  if ((*&v6 & 0x10) != 0)
  {
    *(v4 + 14) = self->_displayOrder;
    *(v4 + 71) |= 0x10u;
    v6 = self->_has;
  }

  if ((*&v6 & 4) != 0)
  {
    *(v4 + 3) = self->_sharingStatus;
    *(v4 + 71) |= 4u;
  }

  if (self->_sharedOwnerName)
  {
    [v9 setSharedOwnerName:?];
    v4 = v9;
  }

  if (self->_sharedOwnerAddress)
  {
    [v9 setSharedOwnerAddress:?];
    v4 = v9;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = self->_sharingInvitationResponse;
    *(v4 + 71) |= 2u;
  }

  if (self->_publishedURLString)
  {
    [v9 setPublishedURLString:?];
    v4 = v9;
  }

  v7 = self->_has;
  if ((*&v7 & 0x20) != 0)
  {
    *(v4 + 264) = self->_canBePublished;
    *(v4 + 71) |= 0x20u;
    v7 = self->_has;
    if ((*&v7 & 0x40) == 0)
    {
LABEL_41:
      if ((*&v7 & 0x20000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((*&v7 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  *(v4 + 265) = self->_canBeShared;
  *(v4 + 71) |= 0x40u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_42:
    *(v4 + 276) = self->_isPublished;
    *(v4 + 71) |= 0x20000u;
  }

LABEL_43:
  if (self->_externalID)
  {
    [v9 setExternalID:?];
    v4 = v9;
  }

  if (self->_externalIdentificationTag)
  {
    [v9 setExternalIdentificationTag:?];
    v4 = v9;
  }

  if (self->_syncToken)
  {
    [v9 setSyncToken:?];
    v4 = v9;
  }

  if (self->_externalModificationTag)
  {
    [v9 setExternalModificationTag:?];
    v4 = v9;
  }

  if (self->_externalRepresentation)
  {
    [v9 setExternalRepresentation:?];
    v4 = v9;
  }

  v8 = self->_has;
  if ((*&v8 & 8) != 0)
  {
    *(v4 + 4) = self->_supportedEntityTypes;
    *(v4 + 71) |= 8u;
    v8 = self->_has;
    if ((*&v8 & 1) == 0)
    {
LABEL_55:
      if ((*&v8 & 0x80) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  else if ((*&v8 & 1) == 0)
  {
    goto LABEL_55;
  }

  *(v4 + 1) = self->_invitationStatus;
  *(v4 + 71) |= 1u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_56:
    *(v4 + 266) = self->_hasBeenAlerted;
    *(v4 + 71) |= 0x80u;
  }

LABEL_57:
  if (self->_notes)
  {
    [v9 setNotes:?];
    v4 = v9;
  }

  if (self->_subCalAccountID)
  {
    [v9 setSubCalAccountID:?];
    v4 = v9;
  }

  if (self->_pushKey)
  {
    [v9 setPushKey:?];
    v4 = v9;
  }

  if (self->_selfIdentityDisplayName)
  {
    [v9 setSelfIdentityDisplayName:?];
    v4 = v9;
  }

  if (self->_selfIdentityEmail)
  {
    [v9 setSelfIdentityEmail:?];
    v4 = v9;
  }

  if (self->_selfIdentityAddressString)
  {
    [v9 setSelfIdentityAddressString:?];
    v4 = v9;
  }

  if (self->_selfIdentityFirstName)
  {
    [v9 setSelfIdentityFirstName:?];
    v4 = v9;
  }

  if (self->_selfIdentityLastName)
  {
    [v9 setSelfIdentityLastName:?];
    v4 = v9;
  }

  if (self->_ownerIdentityDisplayName)
  {
    [v9 setOwnerIdentityDisplayName:?];
    v4 = v9;
  }

  if (self->_ownerIdentityEmail)
  {
    [v9 setOwnerIdentityEmail:?];
    v4 = v9;
  }

  if (self->_ownerIdentityAddressString)
  {
    [v9 setOwnerIdentityAddressString:?];
    v4 = v9;
  }

  if (self->_ownerIdentityFirstName)
  {
    [v9 setOwnerIdentityFirstName:?];
    v4 = v9;
  }

  if (self->_ownerIdentityLastName)
  {
    [v9 setOwnerIdentityLastName:?];
    v4 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uUID copyWithZone:a3];
  v7 = v5[32];
  v5[32] = v6;

  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = v5[30];
  v5[30] = v8;

  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    *(v5 + 277) = self->_isReadonly;
    *(v5 + 71) |= 0x40000u;
    has = self->_has;
    if ((*&has & 0x400) == 0)
    {
LABEL_3:
      if ((*&has & 0x4000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 269) = self->_isHidden;
  *(v5 + 71) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_4:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 273) = self->_isImmutable;
  *(v5 + 71) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 274) = self->_isInbox;
  *(v5 + 71) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v5 + 275) = self->_isNotificationsCollection;
  *(v5 + 71) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_7:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 279) = self->_isSharingInvitation;
  *(v5 + 71) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 280) = self->_isSubscribed;
  *(v5 + 71) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 270) = self->_isHolidayCalendar;
  *(v5 + 71) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 268) = self->_isFamilyCalendar;
  *(v5 + 71) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 271) = self->_isIgnoringEventAlerts;
  *(v5 + 71) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 272) = self->_isIgnoringSharedCalendarNotifications;
  *(v5 + 71) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_41:
  *(v5 + 278) = self->_isSchedulingProhibited;
  *(v5 + 71) |= 0x80000u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_14:
    *(v5 + 267) = self->_isDefaultCalendarForStore;
    *(v5 + 71) |= 0x100u;
  }

LABEL_15:
  v11 = [(NSString *)self->_type copyWithZone:a3];
  v12 = v5[31];
  v5[31] = v11;

  v13 = [(NSData *)self->_digest copyWithZone:a3];
  v14 = v5[6];
  v5[6] = v13;

  v15 = [(NSString *)self->_symbolicColorName copyWithZone:a3];
  v16 = v5[28];
  v5[28] = v15;

  v17 = [(NSString *)self->_colorString copyWithZone:a3];
  v18 = v5[5];
  v5[5] = v17;

  v19 = self->_has;
  if ((*&v19 & 0x10) != 0)
  {
    *(v5 + 14) = self->_displayOrder;
    *(v5 + 71) |= 0x10u;
    v19 = self->_has;
  }

  if ((*&v19 & 4) != 0)
  {
    v5[3] = self->_sharingStatus;
    *(v5 + 71) |= 4u;
  }

  v20 = [(NSString *)self->_sharedOwnerName copyWithZone:a3];
  v21 = v5[26];
  v5[26] = v20;

  v22 = [(NSString *)self->_sharedOwnerAddress copyWithZone:a3];
  v23 = v5[25];
  v5[25] = v22;

  if ((*&self->_has & 2) != 0)
  {
    v5[2] = self->_sharingInvitationResponse;
    *(v5 + 71) |= 2u;
  }

  v24 = [(NSString *)self->_publishedURLString copyWithZone:a3];
  v25 = v5[18];
  v5[18] = v24;

  v26 = self->_has;
  if ((*&v26 & 0x20) != 0)
  {
    *(v5 + 264) = self->_canBePublished;
    *(v5 + 71) |= 0x20u;
    v26 = self->_has;
    if ((*&v26 & 0x40) == 0)
    {
LABEL_23:
      if ((*&v26 & 0x20000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&v26 & 0x40) == 0)
  {
    goto LABEL_23;
  }

  *(v5 + 265) = self->_canBeShared;
  *(v5 + 71) |= 0x40u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_24:
    *(v5 + 276) = self->_isPublished;
    *(v5 + 71) |= 0x20000u;
  }

LABEL_25:
  v27 = [(NSString *)self->_externalID copyWithZone:a3];
  v28 = v5[8];
  v5[8] = v27;

  v29 = [(NSString *)self->_externalIdentificationTag copyWithZone:a3];
  v30 = v5[9];
  v5[9] = v29;

  v31 = [(NSString *)self->_syncToken copyWithZone:a3];
  v32 = v5[29];
  v5[29] = v31;

  v33 = [(NSString *)self->_externalModificationTag copyWithZone:a3];
  v34 = v5[10];
  v5[10] = v33;

  v35 = [(NSData *)self->_externalRepresentation copyWithZone:a3];
  v36 = v5[11];
  v5[11] = v35;

  v37 = self->_has;
  if ((*&v37 & 8) == 0)
  {
    if ((*&v37 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_47:
    v5[1] = self->_invitationStatus;
    *(v5 + 71) |= 1u;
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v5[4] = self->_supportedEntityTypes;
  *(v5 + 71) |= 8u;
  v37 = self->_has;
  if (*&v37)
  {
    goto LABEL_47;
  }

LABEL_27:
  if ((*&v37 & 0x80) != 0)
  {
LABEL_28:
    *(v5 + 266) = self->_hasBeenAlerted;
    *(v5 + 71) |= 0x80u;
  }

LABEL_29:
  v38 = [(NSString *)self->_notes copyWithZone:a3];
  v39 = v5[12];
  v5[12] = v38;

  v40 = [(NSString *)self->_subCalAccountID copyWithZone:a3];
  v41 = v5[27];
  v5[27] = v40;

  v42 = [(NSString *)self->_pushKey copyWithZone:a3];
  v43 = v5[19];
  v5[19] = v42;

  v44 = [(NSString *)self->_selfIdentityDisplayName copyWithZone:a3];
  v45 = v5[21];
  v5[21] = v44;

  v46 = [(NSString *)self->_selfIdentityEmail copyWithZone:a3];
  v47 = v5[22];
  v5[22] = v46;

  v48 = [(NSString *)self->_selfIdentityAddressString copyWithZone:a3];
  v49 = v5[20];
  v5[20] = v48;

  v50 = [(NSString *)self->_selfIdentityFirstName copyWithZone:a3];
  v51 = v5[23];
  v5[23] = v50;

  v52 = [(NSString *)self->_selfIdentityLastName copyWithZone:a3];
  v53 = v5[24];
  v5[24] = v52;

  v54 = [(NSString *)self->_ownerIdentityDisplayName copyWithZone:a3];
  v55 = v5[14];
  v5[14] = v54;

  v56 = [(NSString *)self->_ownerIdentityEmail copyWithZone:a3];
  v57 = v5[15];
  v5[15] = v56;

  v58 = [(NSString *)self->_ownerIdentityAddressString copyWithZone:a3];
  v59 = v5[13];
  v5[13] = v58;

  v60 = [(NSString *)self->_ownerIdentityFirstName copyWithZone:a3];
  v61 = v5[16];
  v5[16] = v60;

  v62 = [(NSString *)self->_ownerIdentityLastName copyWithZone:a3];
  v63 = v5[17];
  v5[17] = v62;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_213;
  }

  uUID = self->_uUID;
  if (uUID | *(v4 + 32))
  {
    if (![(NSString *)uUID isEqual:?])
    {
      goto LABEL_213;
    }
  }

  title = self->_title;
  if (title | *(v4 + 30))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_213;
    }
  }

  has = self->_has;
  v8 = *(v4 + 71);
  if ((*&has & 0x40000) != 0)
  {
    if ((v8 & 0x40000) == 0)
    {
      goto LABEL_213;
    }

    v15 = *(v4 + 277);
    if (self->_isReadonly)
    {
      if ((*(v4 + 277) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 277))
    {
      goto LABEL_213;
    }
  }

  else if ((v8 & 0x40000) != 0)
  {
    goto LABEL_213;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_213;
    }

    v16 = *(v4 + 269);
    if (self->_isHidden)
    {
      if ((*(v4 + 269) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 269))
    {
      goto LABEL_213;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_213;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_213;
    }

    v17 = *(v4 + 273);
    if (self->_isImmutable)
    {
      if ((*(v4 + 273) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 273))
    {
      goto LABEL_213;
    }
  }

  else if ((v8 & 0x4000) != 0)
  {
    goto LABEL_213;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_213;
    }

    v18 = *(v4 + 274);
    if (self->_isInbox)
    {
      if ((*(v4 + 274) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 274))
    {
      goto LABEL_213;
    }
  }

  else if ((v8 & 0x8000) != 0)
  {
    goto LABEL_213;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_213;
    }

    v19 = *(v4 + 275);
    if (self->_isNotificationsCollection)
    {
      if ((*(v4 + 275) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 275))
    {
      goto LABEL_213;
    }
  }

  else if ((v8 & 0x10000) != 0)
  {
    goto LABEL_213;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_213;
    }

    v20 = *(v4 + 279);
    if (self->_isSharingInvitation)
    {
      if ((*(v4 + 279) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 279))
    {
      goto LABEL_213;
    }
  }

  else if ((v8 & 0x100000) != 0)
  {
    goto LABEL_213;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_213;
    }

    v21 = *(v4 + 280);
    if (self->_isSubscribed)
    {
      if ((*(v4 + 280) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 280))
    {
      goto LABEL_213;
    }
  }

  else if ((v8 & 0x200000) != 0)
  {
    goto LABEL_213;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_213;
    }

    v22 = *(v4 + 270);
    if (self->_isHolidayCalendar)
    {
      if ((*(v4 + 270) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 270))
    {
      goto LABEL_213;
    }
  }

  else if ((v8 & 0x800) != 0)
  {
    goto LABEL_213;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_213;
    }

    v23 = *(v4 + 268);
    if (self->_isFamilyCalendar)
    {
      if ((*(v4 + 268) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 268))
    {
      goto LABEL_213;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_213;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_213;
    }

    v24 = *(v4 + 271);
    if (self->_isIgnoringEventAlerts)
    {
      if ((*(v4 + 271) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 271))
    {
      goto LABEL_213;
    }
  }

  else if ((v8 & 0x1000) != 0)
  {
    goto LABEL_213;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_213;
    }

    v25 = *(v4 + 272);
    if (self->_isIgnoringSharedCalendarNotifications)
    {
      if ((*(v4 + 272) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 272))
    {
      goto LABEL_213;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_213;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_213;
    }

    v26 = *(v4 + 278);
    if (self->_isSchedulingProhibited)
    {
      if ((*(v4 + 278) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 278))
    {
      goto LABEL_213;
    }
  }

  else if ((v8 & 0x80000) != 0)
  {
    goto LABEL_213;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_213;
    }

    v27 = *(v4 + 267);
    if (self->_isDefaultCalendarForStore)
    {
      if ((*(v4 + 267) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 267))
    {
      goto LABEL_213;
    }
  }

  else if ((v8 & 0x100) != 0)
  {
    goto LABEL_213;
  }

  type = self->_type;
  if (type | *(v4 + 31) && ![(NSString *)type isEqual:?])
  {
    goto LABEL_213;
  }

  digest = self->_digest;
  if (digest | *(v4 + 6))
  {
    if (![(NSData *)digest isEqual:?])
    {
      goto LABEL_213;
    }
  }

  symbolicColorName = self->_symbolicColorName;
  if (symbolicColorName | *(v4 + 28))
  {
    if (![(NSString *)symbolicColorName isEqual:?])
    {
      goto LABEL_213;
    }
  }

  colorString = self->_colorString;
  if (colorString | *(v4 + 5))
  {
    if (![(NSString *)colorString isEqual:?])
    {
      goto LABEL_213;
    }
  }

  v13 = self->_has;
  v14 = *(v4 + 71);
  if ((*&v13 & 0x10) != 0)
  {
    if ((v14 & 0x10) == 0 || self->_displayOrder != *(v4 + 14))
    {
      goto LABEL_213;
    }
  }

  else if ((v14 & 0x10) != 0)
  {
    goto LABEL_213;
  }

  if ((*&v13 & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_sharingStatus != *(v4 + 3))
    {
      goto LABEL_213;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_213;
  }

  sharedOwnerName = self->_sharedOwnerName;
  if (sharedOwnerName | *(v4 + 26) && ![(NSString *)sharedOwnerName isEqual:?])
  {
    goto LABEL_213;
  }

  sharedOwnerAddress = self->_sharedOwnerAddress;
  if (sharedOwnerAddress | *(v4 + 25))
  {
    if (![(NSString *)sharedOwnerAddress isEqual:?])
    {
      goto LABEL_213;
    }
  }

  v30 = self->_has;
  v31 = *(v4 + 71);
  if ((*&v30 & 2) != 0)
  {
    if ((v31 & 2) == 0 || self->_sharingInvitationResponse != *(v4 + 2))
    {
      goto LABEL_213;
    }
  }

  else if ((v31 & 2) != 0)
  {
    goto LABEL_213;
  }

  publishedURLString = self->_publishedURLString;
  if (publishedURLString | *(v4 + 18))
  {
    if (![(NSString *)publishedURLString isEqual:?])
    {
      goto LABEL_213;
    }

    v30 = self->_has;
  }

  v33 = *(v4 + 71);
  if ((*&v30 & 0x20) != 0)
  {
    if ((v33 & 0x20) == 0)
    {
      goto LABEL_213;
    }

    v34 = *(v4 + 264);
    if (self->_canBePublished)
    {
      if ((*(v4 + 264) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 264))
    {
      goto LABEL_213;
    }
  }

  else if ((v33 & 0x20) != 0)
  {
    goto LABEL_213;
  }

  if ((*&v30 & 0x40) != 0)
  {
    if ((v33 & 0x40) == 0)
    {
      goto LABEL_213;
    }

    v35 = *(v4 + 265);
    if (self->_canBeShared)
    {
      if ((*(v4 + 265) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 265))
    {
      goto LABEL_213;
    }
  }

  else if ((v33 & 0x40) != 0)
  {
    goto LABEL_213;
  }

  if ((*&v30 & 0x20000) != 0)
  {
    if ((v33 & 0x20000) == 0)
    {
      goto LABEL_213;
    }

    v36 = *(v4 + 276);
    if (self->_isPublished)
    {
      if ((*(v4 + 276) & 1) == 0)
      {
        goto LABEL_213;
      }
    }

    else if (*(v4 + 276))
    {
      goto LABEL_213;
    }
  }

  else if ((v33 & 0x20000) != 0)
  {
    goto LABEL_213;
  }

  externalID = self->_externalID;
  if (externalID | *(v4 + 8) && ![(NSString *)externalID isEqual:?])
  {
    goto LABEL_213;
  }

  externalIdentificationTag = self->_externalIdentificationTag;
  if (externalIdentificationTag | *(v4 + 9))
  {
    if (![(NSString *)externalIdentificationTag isEqual:?])
    {
      goto LABEL_213;
    }
  }

  syncToken = self->_syncToken;
  if (syncToken | *(v4 + 29))
  {
    if (![(NSString *)syncToken isEqual:?])
    {
      goto LABEL_213;
    }
  }

  externalModificationTag = self->_externalModificationTag;
  if (externalModificationTag | *(v4 + 10))
  {
    if (![(NSString *)externalModificationTag isEqual:?])
    {
      goto LABEL_213;
    }
  }

  externalRepresentation = self->_externalRepresentation;
  if (externalRepresentation | *(v4 + 11))
  {
    if (![(NSData *)externalRepresentation isEqual:?])
    {
      goto LABEL_213;
    }
  }

  v42 = self->_has;
  v43 = *(v4 + 71);
  if ((*&v42 & 8) != 0)
  {
    if ((v43 & 8) == 0 || self->_supportedEntityTypes != *(v4 + 4))
    {
      goto LABEL_213;
    }
  }

  else if ((v43 & 8) != 0)
  {
    goto LABEL_213;
  }

  if (*&v42)
  {
    if ((v43 & 1) == 0 || self->_invitationStatus != *(v4 + 1))
    {
      goto LABEL_213;
    }
  }

  else if (v43)
  {
    goto LABEL_213;
  }

  if ((*&v42 & 0x80) == 0)
  {
    if ((v43 & 0x80) == 0)
    {
      goto LABEL_186;
    }

LABEL_213:
    v57 = 0;
    goto LABEL_214;
  }

  if ((v43 & 0x80) == 0)
  {
    goto LABEL_213;
  }

  v59 = *(v4 + 266);
  if (self->_hasBeenAlerted)
  {
    if ((*(v4 + 266) & 1) == 0)
    {
      goto LABEL_213;
    }
  }

  else if (*(v4 + 266))
  {
    goto LABEL_213;
  }

LABEL_186:
  notes = self->_notes;
  if (notes | *(v4 + 12) && ![(NSString *)notes isEqual:?])
  {
    goto LABEL_213;
  }

  subCalAccountID = self->_subCalAccountID;
  if (subCalAccountID | *(v4 + 27))
  {
    if (![(NSString *)subCalAccountID isEqual:?])
    {
      goto LABEL_213;
    }
  }

  pushKey = self->_pushKey;
  if (pushKey | *(v4 + 19))
  {
    if (![(NSString *)pushKey isEqual:?])
    {
      goto LABEL_213;
    }
  }

  selfIdentityDisplayName = self->_selfIdentityDisplayName;
  if (selfIdentityDisplayName | *(v4 + 21))
  {
    if (![(NSString *)selfIdentityDisplayName isEqual:?])
    {
      goto LABEL_213;
    }
  }

  selfIdentityEmail = self->_selfIdentityEmail;
  if (selfIdentityEmail | *(v4 + 22))
  {
    if (![(NSString *)selfIdentityEmail isEqual:?])
    {
      goto LABEL_213;
    }
  }

  selfIdentityAddressString = self->_selfIdentityAddressString;
  if (selfIdentityAddressString | *(v4 + 20))
  {
    if (![(NSString *)selfIdentityAddressString isEqual:?])
    {
      goto LABEL_213;
    }
  }

  selfIdentityFirstName = self->_selfIdentityFirstName;
  if (selfIdentityFirstName | *(v4 + 23))
  {
    if (![(NSString *)selfIdentityFirstName isEqual:?])
    {
      goto LABEL_213;
    }
  }

  selfIdentityLastName = self->_selfIdentityLastName;
  if (selfIdentityLastName | *(v4 + 24))
  {
    if (![(NSString *)selfIdentityLastName isEqual:?])
    {
      goto LABEL_213;
    }
  }

  ownerIdentityDisplayName = self->_ownerIdentityDisplayName;
  if (ownerIdentityDisplayName | *(v4 + 14))
  {
    if (![(NSString *)ownerIdentityDisplayName isEqual:?])
    {
      goto LABEL_213;
    }
  }

  ownerIdentityEmail = self->_ownerIdentityEmail;
  if (ownerIdentityEmail | *(v4 + 15))
  {
    if (![(NSString *)ownerIdentityEmail isEqual:?])
    {
      goto LABEL_213;
    }
  }

  ownerIdentityAddressString = self->_ownerIdentityAddressString;
  if (ownerIdentityAddressString | *(v4 + 13))
  {
    if (![(NSString *)ownerIdentityAddressString isEqual:?])
    {
      goto LABEL_213;
    }
  }

  ownerIdentityFirstName = self->_ownerIdentityFirstName;
  if (ownerIdentityFirstName | *(v4 + 16))
  {
    if (![(NSString *)ownerIdentityFirstName isEqual:?])
    {
      goto LABEL_213;
    }
  }

  ownerIdentityLastName = self->_ownerIdentityLastName;
  if (ownerIdentityLastName | *(v4 + 17))
  {
    v57 = [(NSString *)ownerIdentityLastName isEqual:?];
  }

  else
  {
    v57 = 1;
  }

LABEL_214:

  return v57;
}

- (unint64_t)hash
{
  v57 = [(NSString *)self->_uUID hash];
  v56 = [(NSString *)self->_title hash];
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    v55 = 2654435761 * self->_isReadonly;
    if ((*&has & 0x400) != 0)
    {
LABEL_3:
      v54 = 2654435761 * self->_isHidden;
      if ((*&has & 0x4000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v55 = 0;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v54 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_4:
    v53 = 2654435761 * self->_isImmutable;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v53 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_5:
    v52 = 2654435761 * self->_isInbox;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v52 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_6:
    v51 = 2654435761 * self->_isNotificationsCollection;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v51 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_7:
    v50 = 2654435761 * self->_isSharingInvitation;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v50 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_8:
    v49 = 2654435761 * self->_isSubscribed;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v49 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_9:
    v48 = 2654435761 * self->_isHolidayCalendar;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v48 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_10:
    v47 = 2654435761 * self->_isFamilyCalendar;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v47 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_11:
    v46 = 2654435761 * self->_isIgnoringEventAlerts;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v46 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_12:
    v45 = 2654435761 * self->_isIgnoringSharedCalendarNotifications;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v44 = 0;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_25:
  v45 = 0;
  if ((*&has & 0x80000) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v44 = 2654435761 * self->_isSchedulingProhibited;
  if ((*&has & 0x100) != 0)
  {
LABEL_14:
    v43 = 2654435761 * self->_isDefaultCalendarForStore;
    goto LABEL_28;
  }

LABEL_27:
  v43 = 0;
LABEL_28:
  v42 = [(NSString *)self->_type hash];
  v41 = [(NSData *)self->_digest hash];
  v40 = [(NSString *)self->_symbolicColorName hash];
  v39 = [(NSString *)self->_colorString hash];
  v4 = self->_has;
  if ((*&v4 & 0x10) != 0)
  {
    v38 = 2654435761 * self->_displayOrder;
    if ((*&v4 & 4) != 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v38 = 0;
    if ((*&v4 & 4) != 0)
    {
LABEL_30:
      v37 = 2654435761u * self->_sharingStatus;
      goto LABEL_33;
    }
  }

  v37 = 0;
LABEL_33:
  v36 = [(NSString *)self->_sharedOwnerName hash];
  v35 = [(NSString *)self->_sharedOwnerAddress hash];
  if ((*&self->_has & 2) != 0)
  {
    v34 = 2654435761u * self->_sharingInvitationResponse;
  }

  else
  {
    v34 = 0;
  }

  v32 = [(NSString *)self->_publishedURLString hash];
  v5 = self->_has;
  if ((*&v5 & 0x20) == 0)
  {
    v6 = 0;
    if ((*&v5 & 0x40) != 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    v7 = 0;
    if ((*&v5 & 0x20000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_42;
  }

  v6 = 2654435761 * self->_canBePublished;
  if ((*&v5 & 0x40) == 0)
  {
    goto LABEL_41;
  }

LABEL_38:
  v7 = 2654435761 * self->_canBeShared;
  if ((*&v5 & 0x20000) != 0)
  {
LABEL_39:
    v8 = 2654435761 * self->_isPublished;
    goto LABEL_43;
  }

LABEL_42:
  v8 = 0;
LABEL_43:
  v9 = [(NSString *)self->_externalID hash];
  v10 = [(NSString *)self->_externalIdentificationTag hash];
  v11 = [(NSString *)self->_syncToken hash];
  v12 = [(NSString *)self->_externalModificationTag hash];
  v13 = [(NSData *)self->_externalRepresentation hash];
  v14 = self->_has;
  if ((*&v14 & 8) == 0)
  {
    v15 = 0;
    if (*&v14)
    {
      goto LABEL_45;
    }

LABEL_48:
    v16 = 0;
    if ((*&v14 & 0x80) != 0)
    {
      goto LABEL_46;
    }

LABEL_49:
    v17 = 0;
    goto LABEL_50;
  }

  v15 = 2654435761u * self->_supportedEntityTypes;
  if ((*&v14 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_45:
  v16 = 2654435761u * self->_invitationStatus;
  if ((*&v14 & 0x80) == 0)
  {
    goto LABEL_49;
  }

LABEL_46:
  v17 = 2654435761 * self->_hasBeenAlerted;
LABEL_50:
  v18 = v56 ^ v57 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  v19 = v15 ^ v16 ^ v17 ^ [(NSString *)self->_notes hash];
  v20 = v19 ^ [(NSString *)self->_subCalAccountID hash];
  v21 = v20 ^ [(NSString *)self->_pushKey hash];
  v22 = v21 ^ [(NSString *)self->_selfIdentityDisplayName hash];
  v23 = v22 ^ [(NSString *)self->_selfIdentityEmail hash];
  v24 = v18 ^ v23 ^ [(NSString *)self->_selfIdentityAddressString hash];
  v25 = [(NSString *)self->_selfIdentityFirstName hash];
  v26 = v25 ^ [(NSString *)self->_selfIdentityLastName hash];
  v27 = v26 ^ [(NSString *)self->_ownerIdentityDisplayName hash];
  v28 = v27 ^ [(NSString *)self->_ownerIdentityEmail hash];
  v29 = v28 ^ [(NSString *)self->_ownerIdentityAddressString hash];
  v30 = v29 ^ [(NSString *)self->_ownerIdentityFirstName hash];
  return v24 ^ v30 ^ [(NSString *)self->_ownerIdentityLastName hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*(v4 + 32))
  {
    [(NEKPBCalendarAttributes *)self setUUID:?];
    v4 = v9;
  }

  if (*(v4 + 30))
  {
    [(NEKPBCalendarAttributes *)self setTitle:?];
    v4 = v9;
  }

  v5 = *(v4 + 71);
  if ((v5 & 0x40000) != 0)
  {
    self->_isReadonly = *(v4 + 277);
    *&self->_has |= 0x40000u;
    v5 = *(v4 + 71);
    if ((v5 & 0x400) == 0)
    {
LABEL_7:
      if ((v5 & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_88;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_7;
  }

  self->_isHidden = *(v4 + 269);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 71);
  if ((v5 & 0x4000) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_isImmutable = *(v4 + 273);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 71);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_isInbox = *(v4 + 274);
  *&self->_has |= 0x8000u;
  v5 = *(v4 + 71);
  if ((v5 & 0x10000) == 0)
  {
LABEL_10:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_isNotificationsCollection = *(v4 + 275);
  *&self->_has |= 0x10000u;
  v5 = *(v4 + 71);
  if ((v5 & 0x100000) == 0)
  {
LABEL_11:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_isSharingInvitation = *(v4 + 279);
  *&self->_has |= 0x100000u;
  v5 = *(v4 + 71);
  if ((v5 & 0x200000) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_isSubscribed = *(v4 + 280);
  *&self->_has |= 0x200000u;
  v5 = *(v4 + 71);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_isHolidayCalendar = *(v4 + 270);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 71);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_isFamilyCalendar = *(v4 + 268);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 71);
  if ((v5 & 0x1000) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_isIgnoringEventAlerts = *(v4 + 271);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 71);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_isIgnoringSharedCalendarNotifications = *(v4 + 272);
  *&self->_has |= 0x2000u;
  v5 = *(v4 + 71);
  if ((v5 & 0x80000) == 0)
  {
LABEL_17:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_97:
  self->_isSchedulingProhibited = *(v4 + 278);
  *&self->_has |= 0x80000u;
  if ((*(v4 + 71) & 0x100) != 0)
  {
LABEL_18:
    self->_isDefaultCalendarForStore = *(v4 + 267);
    *&self->_has |= 0x100u;
  }

LABEL_19:
  if (*(v4 + 31))
  {
    [(NEKPBCalendarAttributes *)self setType:?];
    v4 = v9;
  }

  if (*(v4 + 6))
  {
    [(NEKPBCalendarAttributes *)self setDigest:?];
    v4 = v9;
  }

  if (*(v4 + 28))
  {
    [(NEKPBCalendarAttributes *)self setSymbolicColorName:?];
    v4 = v9;
  }

  if (*(v4 + 5))
  {
    [(NEKPBCalendarAttributes *)self setColorString:?];
    v4 = v9;
  }

  v6 = *(v4 + 71);
  if ((v6 & 0x10) != 0)
  {
    self->_displayOrder = *(v4 + 14);
    *&self->_has |= 0x10u;
    v6 = *(v4 + 71);
  }

  if ((v6 & 4) != 0)
  {
    self->_sharingStatus = *(v4 + 3);
    *&self->_has |= 4u;
  }

  if (*(v4 + 26))
  {
    [(NEKPBCalendarAttributes *)self setSharedOwnerName:?];
    v4 = v9;
  }

  if (*(v4 + 25))
  {
    [(NEKPBCalendarAttributes *)self setSharedOwnerAddress:?];
    v4 = v9;
  }

  if ((*(v4 + 284) & 2) != 0)
  {
    self->_sharingInvitationResponse = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 18))
  {
    [(NEKPBCalendarAttributes *)self setPublishedURLString:?];
    v4 = v9;
  }

  v7 = *(v4 + 71);
  if ((v7 & 0x20) != 0)
  {
    self->_canBePublished = *(v4 + 264);
    *&self->_has |= 0x20u;
    v7 = *(v4 + 71);
    if ((v7 & 0x40) == 0)
    {
LABEL_41:
      if ((v7 & 0x20000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((v7 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  self->_canBeShared = *(v4 + 265);
  *&self->_has |= 0x40u;
  if ((*(v4 + 71) & 0x20000) != 0)
  {
LABEL_42:
    self->_isPublished = *(v4 + 276);
    *&self->_has |= 0x20000u;
  }

LABEL_43:
  if (*(v4 + 8))
  {
    [(NEKPBCalendarAttributes *)self setExternalID:?];
    v4 = v9;
  }

  if (*(v4 + 9))
  {
    [(NEKPBCalendarAttributes *)self setExternalIdentificationTag:?];
    v4 = v9;
  }

  if (*(v4 + 29))
  {
    [(NEKPBCalendarAttributes *)self setSyncToken:?];
    v4 = v9;
  }

  if (*(v4 + 10))
  {
    [(NEKPBCalendarAttributes *)self setExternalModificationTag:?];
    v4 = v9;
  }

  if (*(v4 + 11))
  {
    [(NEKPBCalendarAttributes *)self setExternalRepresentation:?];
    v4 = v9;
  }

  v8 = *(v4 + 71);
  if ((v8 & 8) != 0)
  {
    self->_supportedEntityTypes = *(v4 + 4);
    *&self->_has |= 8u;
    v8 = *(v4 + 71);
    if ((v8 & 1) == 0)
    {
LABEL_55:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  else if ((v8 & 1) == 0)
  {
    goto LABEL_55;
  }

  self->_invitationStatus = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 71) & 0x80) != 0)
  {
LABEL_56:
    self->_hasBeenAlerted = *(v4 + 266);
    *&self->_has |= 0x80u;
  }

LABEL_57:
  if (*(v4 + 12))
  {
    [(NEKPBCalendarAttributes *)self setNotes:?];
    v4 = v9;
  }

  if (*(v4 + 27))
  {
    [(NEKPBCalendarAttributes *)self setSubCalAccountID:?];
    v4 = v9;
  }

  if (*(v4 + 19))
  {
    [(NEKPBCalendarAttributes *)self setPushKey:?];
    v4 = v9;
  }

  if (*(v4 + 21))
  {
    [(NEKPBCalendarAttributes *)self setSelfIdentityDisplayName:?];
    v4 = v9;
  }

  if (*(v4 + 22))
  {
    [(NEKPBCalendarAttributes *)self setSelfIdentityEmail:?];
    v4 = v9;
  }

  if (*(v4 + 20))
  {
    [(NEKPBCalendarAttributes *)self setSelfIdentityAddressString:?];
    v4 = v9;
  }

  if (*(v4 + 23))
  {
    [(NEKPBCalendarAttributes *)self setSelfIdentityFirstName:?];
    v4 = v9;
  }

  if (*(v4 + 24))
  {
    [(NEKPBCalendarAttributes *)self setSelfIdentityLastName:?];
    v4 = v9;
  }

  if (*(v4 + 14))
  {
    [(NEKPBCalendarAttributes *)self setOwnerIdentityDisplayName:?];
    v4 = v9;
  }

  if (*(v4 + 15))
  {
    [(NEKPBCalendarAttributes *)self setOwnerIdentityEmail:?];
    v4 = v9;
  }

  if (*(v4 + 13))
  {
    [(NEKPBCalendarAttributes *)self setOwnerIdentityAddressString:?];
    v4 = v9;
  }

  if (*(v4 + 16))
  {
    [(NEKPBCalendarAttributes *)self setOwnerIdentityFirstName:?];
    v4 = v9;
  }

  if (*(v4 + 17))
  {
    [(NEKPBCalendarAttributes *)self setOwnerIdentityLastName:?];
    v4 = v9;
  }
}

@end