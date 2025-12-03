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
- (id)updateDNDEventDetails:(id)details;
@end

@implementation ANCBulletinAlert

- (BOOL)isSilent
{
  selfCopy = self;
  bulletin = [(ANCBulletinAlert *)self bulletin];
  isLoading = [bulletin isLoading];
  LOBYTE(selfCopy) = [(ANCAlert *)selfCopy silent];

  return isLoading | selfCopy;
}

- (id)appIdentifier
{
  bulletin = [(ANCBulletinAlert *)self bulletin];
  sectionID = [bulletin sectionID];

  return sectionID;
}

- (id)title
{
  bulletin = [(ANCBulletinAlert *)self bulletin];
  title = [bulletin title];

  bulletin2 = [(ANCBulletinAlert *)self bulletin];
  v6 = bulletin2;
  if (title)
  {
    title2 = [bulletin2 title];
    substringWithValidUnicode = [title2 substringWithValidUnicode];

LABEL_5:
    goto LABEL_6;
  }

  sectionID = [bulletin2 sectionID];

  if (sectionID)
  {
    bulletin3 = [(ANCBulletinAlert *)self bulletin];
    sectionID2 = [bulletin3 sectionID];
    v6 = [LSApplicationProxy applicationProxyForIdentifier:sectionID2];

    substringWithValidUnicode = [v6 localizedName];
    goto LABEL_5;
  }

  substringWithValidUnicode = 0;
LABEL_6:

  return substringWithValidUnicode;
}

- (id)subtitle
{
  bulletin = [(ANCBulletinAlert *)self bulletin];
  subtitle = [bulletin subtitle];
  substringWithValidUnicode = [subtitle substringWithValidUnicode];

  return substringWithValidUnicode;
}

- (id)message
{
  bulletin = [(ANCBulletinAlert *)self bulletin];
  message = [bulletin message];
  substringWithValidUnicode = [message substringWithValidUnicode];

  return substringWithValidUnicode;
}

- (id)date
{
  bulletin = [(ANCBulletinAlert *)self bulletin];
  date = [bulletin date];

  return date;
}

- (BOOL)hasNegativeAction
{
  bulletin = [(ANCBulletinAlert *)self bulletin];
  clearable = [bulletin clearable];

  return clearable;
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
  bulletin = [(ANCBulletinAlert *)self bulletin];
  v5 = [NSSet setWithObject:bulletin];
  bulletin2 = [(ANCBulletinAlert *)self bulletin];
  sectionID = [bulletin2 sectionID];
  [(BBObserver *)observer clearBulletins:v5 inSection:sectionID];

  return 1;
}

- (BOOL)hasExtraContent
{
  bulletin = [(ANCBulletinAlert *)self bulletin];
  v3 = [bulletin primaryAttachmentType] != 0;

  return v3;
}

- (id)updateDNDEventDetails:(id)details
{
  detailsCopy = details;
  bulletin = [(ANCBulletinAlert *)self bulletin];
  sectionID = [bulletin sectionID];
  [detailsCopy setBundleIdentifier:sectionID];

  bulletin2 = [(ANCBulletinAlert *)self bulletin];
  threadID = [bulletin2 threadID];
  v9 = [threadID length];

  bulletin3 = [(ANCBulletinAlert *)self bulletin];
  if (v9)
  {
    threadID2 = [bulletin3 threadID];
    [detailsCopy setThreadIdentifier:threadID2];
  }

  else
  {
    threadID2 = [bulletin3 sectionID];
    v12 = [NSString stringWithFormat:@"req-%@", threadID2];
    [detailsCopy setThreadIdentifier:v12];
  }

  bulletin4 = [(ANCBulletinAlert *)self bulletin];
  filterCriteria = [bulletin4 filterCriteria];
  [detailsCopy setFilterCriteria:filterCriteria];

  bulletin5 = [(ANCBulletinAlert *)self bulletin];
  publisherMatchID = [bulletin5 publisherMatchID];
  [detailsCopy setIdentifier:publisherMatchID];

  bulletin6 = [(ANCBulletinAlert *)self bulletin];
  communicationContext = [bulletin6 communicationContext];

  if (communicationContext)
  {
    sender = [communicationContext sender];
    v20 = objc_alloc_init(DNDMutableContactHandle);
    handleType = [sender handleType];
    if (handleType == 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2 * (handleType == 2);
    }

    [v20 setType:v22];
    handle = [sender handle];
    [v20 setValue:handle];

    [detailsCopy setSender:v20];
  }

  bulletin7 = [(ANCBulletinAlert *)self bulletin];
  if ([bulletin7 ignoresQuietMode])
  {

LABEL_12:
    v27 = 2;
LABEL_13:
    [detailsCopy setUrgency:v27];
    goto LABEL_14;
  }

  bulletin8 = [(ANCBulletinAlert *)self bulletin];
  interruptionLevel = [bulletin8 interruptionLevel];

  if (interruptionLevel == 3)
  {
    goto LABEL_12;
  }

  bulletin9 = [(ANCBulletinAlert *)self bulletin];
  interruptionLevel2 = [bulletin9 interruptionLevel];

  if (interruptionLevel2 == 2)
  {
    v27 = 1;
    goto LABEL_13;
  }

LABEL_14:
  bulletin10 = [(ANCBulletinAlert *)self bulletin];
  contentType = [bulletin10 contentType];

  if ([contentType isEqualToString:BBBulletinContentTypeMessagingDirect])
  {
    v30 = 3;
  }

  else if ([contentType isEqualToString:BBBulletinContentTypeMessagingGroup])
  {
    v30 = 4;
  }

  else if ([contentType isEqualToString:BBBulletinContentTypeVoicemail] & 1) != 0 || (objc_msgSend(contentType, "isEqualToString:", BBBulletinContentTypeMissedCall) & 1) != 0 || (objc_msgSend(contentType, "isEqualToString:", BBBulletinContentTypeCallOther))
  {
    v30 = 2;
  }

  else
  {
    v30 = [contentType isEqualToString:BBBulletinContentTypeIncomingCall];
  }

  [detailsCopy setType:v30];

  return detailsCopy;
}

@end