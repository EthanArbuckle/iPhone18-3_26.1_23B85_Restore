@interface GKContactsChangedAddOrUpdateCommand
- (BOOL)isValidContact:(id)a3 meContactID:(id)a4;
- (GKContactsChangedAddOrUpdateCommand)initWithContact:(id)a3 meContactID:(id)a4;
- (id)executeWithContext:(id)a3;
@end

@implementation GKContactsChangedAddOrUpdateCommand

- (GKContactsChangedAddOrUpdateCommand)initWithContact:(id)a3 meContactID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GKContactsChangedAddOrUpdateCommand;
  v9 = [(GKContactsChangedAddOrUpdateCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, a3);
    objc_storeStrong(&v10->_meContactID, a4);
  }

  return v10;
}

- (BOOL)isValidContact:(id)a3 meContactID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 contactType])
  {
    v9 = [v6 identifier];
    if ([v9 isEqualToString:v7])
    {
      v8 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v10 = [v6 givenName];
    v11 = [v10 length];
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v4 = [v6 familyName];
      if ([v4 length])
      {
        v12 = 0;
      }

      else
      {
        v16 = [v6 nickname];
        if (![v16 length])
        {

          v8 = 0;
          goto LABEL_13;
        }

        v17 = v16;
        v12 = 1;
      }
    }

    v13 = [v6 emailAddresses];
    if ([v13 count])
    {

      v8 = 1;
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v15 = [v6 phoneNumbers];
      v8 = [v15 count] != 0;

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

- (id)executeWithContext:(id)a3
{
  v4 = a3;
  v5 = [(GKContactsChangedAddOrUpdateCommand *)self contact];
  v6 = [(GKContactsChangedAddOrUpdateCommand *)self meContactID];
  v7 = [(GKContactsChangedAddOrUpdateCommand *)self isValidContact:v5 meContactID:v6];

  if (v7)
  {
    v8 = [(GKContactsChangedAddOrUpdateCommand *)self contact];
    v9 = [GKCDContactInfo _gkUpdateWithContact:v8 withContext:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end