@interface ANCBulletinAlert
- (BOOL)hasExtraContent;
- (BOOL)hasNegativeAction;
- (BOOL)isSilent;
- (BOOL)performNegativeAction;
- (id)appIdentifier;
- (id)date;
- (id)message;
- (id)negativeActionLabel;
- (id)subtitle;
- (id)title;
- (id)updateDNDEventDetails:(id)a3;
@end

@implementation ANCBulletinAlert

- (BOOL)isSilent
{
  v2 = self;
  v3 = [(ANCBulletinAlert *)self bulletin];
  v4 = [v3 isLoading];
  LOBYTE(v2) = [(ANCAlert *)v2 silent];

  return v4 | v2;
}

- (id)appIdentifier
{
  v2 = [(ANCBulletinAlert *)self bulletin];
  v3 = [v2 sectionID];

  return v3;
}

- (id)title
{
  v3 = [(ANCBulletinAlert *)self bulletin];
  v4 = [v3 title];

  v5 = [(ANCBulletinAlert *)self bulletin];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 title];
    v8 = [v7 substringWithValidUnicode];

LABEL_5:
    goto LABEL_6;
  }

  v9 = [v5 sectionID];

  if (v9)
  {
    v10 = [(ANCBulletinAlert *)self bulletin];
    v11 = [v10 sectionID];
    v6 = [LSApplicationProxy applicationProxyForIdentifier:v11];

    v8 = [v6 localizedName];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)subtitle
{
  v2 = [(ANCBulletinAlert *)self bulletin];
  v3 = [v2 subtitle];
  v4 = [v3 substringWithValidUnicode];

  return v4;
}

- (id)message
{
  v2 = [(ANCBulletinAlert *)self bulletin];
  v3 = [v2 message];
  v4 = [v3 substringWithValidUnicode];

  return v4;
}

- (id)date
{
  v2 = [(ANCBulletinAlert *)self bulletin];
  v3 = [v2 date];

  return v3;
}

- (BOOL)hasNegativeAction
{
  v2 = [(ANCBulletinAlert *)self bulletin];
  v3 = [v2 clearable];

  return v3;
}

- (id)negativeActionLabel
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"CLEAR" value:@"Clear" table:0];

  return v3;
}

- (BOOL)performNegativeAction
{
  observer = self->_observer;
  v4 = [(ANCBulletinAlert *)self bulletin];
  v5 = [NSSet setWithObject:v4];
  v6 = [(ANCBulletinAlert *)self bulletin];
  v7 = [v6 sectionID];
  [(BBObserver *)observer clearBulletins:v5 inSection:v7];

  return 1;
}

- (BOOL)hasExtraContent
{
  v2 = [(ANCBulletinAlert *)self bulletin];
  v3 = [v2 primaryAttachmentType] != 0;

  return v3;
}

- (id)updateDNDEventDetails:(id)a3
{
  v4 = a3;
  v5 = [(ANCBulletinAlert *)self bulletin];
  v6 = [v5 sectionID];
  [v4 setBundleIdentifier:v6];

  v7 = [(ANCBulletinAlert *)self bulletin];
  v8 = [v7 threadID];
  v9 = [v8 length];

  v10 = [(ANCBulletinAlert *)self bulletin];
  if (v9)
  {
    v11 = [v10 threadID];
    [v4 setThreadIdentifier:v11];
  }

  else
  {
    v11 = [v10 sectionID];
    v12 = [NSString stringWithFormat:@"req-%@", v11];
    [v4 setThreadIdentifier:v12];
  }

  v13 = [(ANCBulletinAlert *)self bulletin];
  v14 = [v13 filterCriteria];
  [v4 setFilterCriteria:v14];

  v15 = [(ANCBulletinAlert *)self bulletin];
  v16 = [v15 publisherMatchID];
  [v4 setIdentifier:v16];

  v17 = [(ANCBulletinAlert *)self bulletin];
  v18 = [v17 communicationContext];

  if (v18)
  {
    v19 = [v18 sender];
    v20 = objc_alloc_init(DNDMutableContactHandle);
    v21 = [v19 handleType];
    if (v21 == 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2 * (v21 == 2);
    }

    [v20 setType:v22];
    v23 = [v19 handle];
    [v20 setValue:v23];

    [v4 setSender:v20];
  }

  v24 = [(ANCBulletinAlert *)self bulletin];
  if ([v24 ignoresQuietMode])
  {

LABEL_12:
    v27 = 2;
LABEL_13:
    [v4 setUrgency:v27];
    goto LABEL_14;
  }

  v25 = [(ANCBulletinAlert *)self bulletin];
  v26 = [v25 interruptionLevel];

  if (v26 == 3)
  {
    goto LABEL_12;
  }

  v31 = [(ANCBulletinAlert *)self bulletin];
  v32 = [v31 interruptionLevel];

  if (v32 == 2)
  {
    v27 = 1;
    goto LABEL_13;
  }

LABEL_14:
  v28 = [(ANCBulletinAlert *)self bulletin];
  v29 = [v28 contentType];

  if ([v29 isEqualToString:BBBulletinContentTypeMessagingDirect])
  {
    v30 = 3;
  }

  else if ([v29 isEqualToString:BBBulletinContentTypeMessagingGroup])
  {
    v30 = 4;
  }

  else if ([v29 isEqualToString:BBBulletinContentTypeVoicemail] & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", BBBulletinContentTypeMissedCall) & 1) != 0 || (objc_msgSend(v29, "isEqualToString:", BBBulletinContentTypeCallOther))
  {
    v30 = 2;
  }

  else
  {
    v30 = [v29 isEqualToString:BBBulletinContentTypeIncomingCall];
  }

  [v4 setType:v30];

  return v4;
}

@end