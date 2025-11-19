@interface CNContact
+ (id)_gkContactFromCacheObject:(id)a3;
- (id)_gkAllHandles;
@end

@implementation CNContact

- (id)_gkAllHandles
{
  v3 = objc_alloc_init(NSMutableSet);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [(CNContact *)self phoneNumbers];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v25 + 1) + 8 * i) value];
        v10 = [v9 stringValue];
        v11 = IDSCopyIDForPhoneNumber();

        if ([v11 length])
        {
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [(CNContact *)self emailAddresses];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v21 + 1) + 8 * j) value];
        v18 = IDSCopyBestGuessIDForID();

        if ([v18 length])
        {
          [v3 addObject:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  v19 = [v3 copy];

  return v19;
}

+ (id)_gkContactFromCacheObject:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CNMutableContact);
  v5 = [v3 givenName];
  [v4 setGivenName:v5];

  v6 = [v3 familyName];
  [v4 setFamilyName:v6];

  v7 = [v3 namePrefix];
  [v4 setNamePrefix:v7];

  v8 = [v3 nameSuffix];
  [v4 setNameSuffix:v8];

  v9 = [v3 nickname];
  [v4 setNickname:v9];

  v10 = [v3 handle];

  v11 = [IDSURI URIWithPrefixedURI:v10];

  v12 = [v11 unprefixedURI];
  v13 = [v11 IDSIDType];
  if (v13 == 1)
  {
    v15 = [[CNLabeledValue alloc] initWithLabel:0 value:v12];
    v22 = v15;
    v16 = [NSArray arrayWithObjects:&v22 count:1];
    [v4 setEmailAddresses:v16];
    goto LABEL_5;
  }

  v14 = v13;
  if (!v13)
  {
    v15 = [[CNPhoneNumber alloc] initWithStringValue:v12];
    v16 = [[CNLabeledValue alloc] initWithLabel:0 value:v15];
    v23 = v16;
    v17 = [NSArray arrayWithObjects:&v23 count:1];
    [v4 setPhoneNumbers:v17];

LABEL_5:
    goto LABEL_10;
  }

  if (!os_log_GKGeneral)
  {
    v18 = GKOSLoggers();
  }

  v19 = os_log_GKError;
  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    sub_100295248(v14, v19);
  }

LABEL_10:
  v20 = [v4 copy];

  return v20;
}

@end