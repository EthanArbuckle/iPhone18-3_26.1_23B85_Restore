@interface KTContactsStore
- (BOOL)haveContact:(id)contact error:(id *)error;
- (KTContactsStore)initWithContactStore:(id)store;
- (void)fetchAndStoreContactsSyncTokenWithConfigStore:(id)store;
@end

@implementation KTContactsStore

- (KTContactsStore)initWithContactStore:(id)store
{
  storeCopy = store;
  v8.receiver = self;
  v8.super_class = KTContactsStore;
  v5 = [(KTContactsStore *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(KTContactsStore *)v5 setContactStore:storeCopy];
  }

  return v6;
}

- (void)fetchAndStoreContactsSyncTokenWithConfigStore:(id)store
{
  storeCopy = store;
  contactStore = [(KTContactsStore *)self contactStore];
  currentHistoryToken = [contactStore currentHistoryToken];

  if (currentHistoryToken)
  {
    contactStore2 = [(KTContactsStore *)self contactStore];
    currentHistoryToken2 = [contactStore2 currentHistoryToken];
    [storeCopy setSettingsData:@"lastContactSyncData" data:currentHistoryToken2];
  }
}

- (BOOL)haveContact:(id)contact error:(id *)error
{
  contactCopy = contact;
  if ([contactCopy hasPrefix:@"mailto:"])
  {
    v6 = [contactCopy substringFromIndex:7];
    v7 = [CNContact predicateForContactsMatchingEmailAddress:v6];
  }

  else
  {
    if (![contactCopy hasPrefix:@"tel:"])
    {
      v13 = 0;
      goto LABEL_7;
    }

    v6 = [contactCopy substringFromIndex:4];
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
  contactStore = [(KTContactsStore *)self contactStore];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100047E0C;
  v15[3] = &unk_10031A408;
  v15[4] = &v16;
  [contactStore enumerateContactsWithFetchRequest:v11 error:0 usingBlock:v15];

  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

LABEL_7:
  return v13 & 1;
}

@end