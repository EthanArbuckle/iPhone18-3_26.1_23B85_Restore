@interface CNContact
+ (id)_gkContactFromCacheObject:(id)object;
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
  phoneNumbers = [(CNContact *)self phoneNumbers];
  v5 = [phoneNumbers countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(phoneNumbers);
        }

        value = [*(*(&v25 + 1) + 8 * i) value];
        stringValue = [value stringValue];
        v11 = IDSCopyIDForPhoneNumber();

        if ([v11 length])
        {
          [v3 addObject:v11];
        }
      }

      v6 = [phoneNumbers countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  emailAddresses = [(CNContact *)self emailAddresses];
  v13 = [emailAddresses countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(emailAddresses);
        }

        value2 = [*(*(&v21 + 1) + 8 * j) value];
        v18 = IDSCopyBestGuessIDForID();

        if ([v18 length])
        {
          [v3 addObject:v18];
        }
      }

      v14 = [emailAddresses countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  v19 = [v3 copy];

  return v19;
}

+ (id)_gkContactFromCacheObject:(id)object
{
  objectCopy = object;
  v4 = objc_alloc_init(CNMutableContact);
  givenName = [objectCopy givenName];
  [v4 setGivenName:givenName];

  familyName = [objectCopy familyName];
  [v4 setFamilyName:familyName];

  namePrefix = [objectCopy namePrefix];
  [v4 setNamePrefix:namePrefix];

  nameSuffix = [objectCopy nameSuffix];
  [v4 setNameSuffix:nameSuffix];

  nickname = [objectCopy nickname];
  [v4 setNickname:nickname];

  handle = [objectCopy handle];

  v11 = [IDSURI URIWithPrefixedURI:handle];

  unprefixedURI = [v11 unprefixedURI];
  iDSIDType = [v11 IDSIDType];
  if (iDSIDType == 1)
  {
    v15 = [[CNLabeledValue alloc] initWithLabel:0 value:unprefixedURI];
    v22 = v15;
    v16 = [NSArray arrayWithObjects:&v22 count:1];
    [v4 setEmailAddresses:v16];
    goto LABEL_5;
  }

  v14 = iDSIDType;
  if (!iDSIDType)
  {
    v15 = [[CNPhoneNumber alloc] initWithStringValue:unprefixedURI];
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