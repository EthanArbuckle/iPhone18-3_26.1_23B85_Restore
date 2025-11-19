@interface KTContactsStore
- (BOOL)haveContact:(id)a3 error:(id *)a4;
- (KTContactsStore)initWithContactStore:(id)a3;
- (void)fetchAndStoreContactsSyncTokenWithConfigStore:(id)a3;
@end

@implementation KTContactsStore

- (KTContactsStore)initWithContactStore:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = KTContactsStore;
  v5 = [(KTContactsStore *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(KTContactsStore *)v5 setContactStore:v4];
  }

  return v6;
}

- (void)fetchAndStoreContactsSyncTokenWithConfigStore:(id)a3
{
  v8 = a3;
  v4 = [(KTContactsStore *)self contactStore];
  v5 = [v4 currentHistoryToken];

  if (v5)
  {
    v6 = [(KTContactsStore *)self contactStore];
    v7 = [v6 currentHistoryToken];
    [v8 setSettingsData:@"lastContactSyncData" data:v7];
  }
}

- (BOOL)haveContact:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 hasPrefix:@"mailto:"])
  {
    v6 = [v5 substringFromIndex:7];
    v7 = [CNContact predicateForContactsMatchingEmailAddress:v6];
  }

  else
  {
    if (![v5 hasPrefix:@"tel:"])
    {
      v13 = 0;
      goto LABEL_7;
    }

    v6 = [v5 substringFromIndex:4];
    v8 = [[CNPhoneNumber alloc] initWithStringValue:v6];
    v7 = [CNContact predicateForContactsMatchingPhoneNumber:v8];
  }

  v9 = [CNContactFetchRequest alloc];
  v20[0] = CNContactEmailAddressesKey;
  v20[1] = CNContactPhoneNumbersKey;
  v10 = [NSArray arrayWithObjects:v20 count:2];
  v11 = [v9 initWithKeysToFetch:v10];

  [v11 setUnifyResults:1];
  [v11 setPredicate:v7];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = [(KTContactsStore *)self contactStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100047E0C;
  v15[3] = &unk_10031A408;
  v15[4] = &v16;
  [v12 enumerateContactsWithFetchRequest:v11 error:0 usingBlock:v15];

  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

LABEL_7:
  return v13 & 1;
}

@end