@interface GKContactsChangedAddOrUpdateCommand
- (BOOL)isValidContact:(id)contact meContactID:(id)d;
- (GKContactsChangedAddOrUpdateCommand)initWithContact:(id)contact meContactID:(id)d;
- (id)executeWithContext:(id)context;
@end

@implementation GKContactsChangedAddOrUpdateCommand

- (GKContactsChangedAddOrUpdateCommand)initWithContact:(id)contact meContactID:(id)d
{
  contactCopy = contact;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = GKContactsChangedAddOrUpdateCommand;
  v9 = [(GKContactsChangedAddOrUpdateCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, contact);
    objc_storeStrong(&v10->_meContactID, d);
  }

  return v10;
}

- (BOOL)isValidContact:(id)contact meContactID:(id)d
{
  contactCopy = contact;
  dCopy = d;
  if (![contactCopy contactType])
  {
    identifier = [contactCopy identifier];
    if ([identifier isEqualToString:dCopy])
    {
      v8 = 0;
LABEL_15:

      goto LABEL_16;
    }

    givenName = [contactCopy givenName];
    v11 = [givenName length];
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      familyName = [contactCopy familyName];
      if ([familyName length])
      {
        v12 = 0;
      }

      else
      {
        nickname = [contactCopy nickname];
        if (![nickname length])
        {

          v8 = 0;
          goto LABEL_13;
        }

        v17 = nickname;
        v12 = 1;
      }
    }

    emailAddresses = [contactCopy emailAddresses];
    if ([emailAddresses count])
    {

      v8 = 1;
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
      phoneNumbers = [contactCopy phoneNumbers];
      v8 = [phoneNumbers count] != 0;

      if ((v12 & 1) == 0)
      {
LABEL_12:
        if (v11)
        {
LABEL_14:

          goto LABEL_15;
        }

LABEL_13:

        goto LABEL_14;
      }
    }

    goto LABEL_12;
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (id)executeWithContext:(id)context
{
  contextCopy = context;
  contact = [(GKContactsChangedAddOrUpdateCommand *)self contact];
  meContactID = [(GKContactsChangedAddOrUpdateCommand *)self meContactID];
  v7 = [(GKContactsChangedAddOrUpdateCommand *)self isValidContact:contact meContactID:meContactID];

  if (v7)
  {
    contact2 = [(GKContactsChangedAddOrUpdateCommand *)self contact];
    v9 = [GKCDContactInfo _gkUpdateWithContact:contact2 withContext:contextCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end