@interface GKCDContactInfo
+ (id)_gkObjectsMatchingHandles:(id)handles withContext:(id)context;
+ (id)_gkUpdateWithContact:(id)contact withContext:(id)context;
+ (void)_gkDeleteObjectsWithContactIdentifier:(id)identifier withContext:(id)context;
- (void)_gkUpdateEntryWithHandle:(id)handle fromContact:(id)contact;
@end

@implementation GKCDContactInfo

- (void)_gkUpdateEntryWithHandle:(id)handle fromContact:(id)contact
{
  contactCopy = contact;
  [(GKCDContactInfo *)self setHandle:handle];
  identifier = [contactCopy identifier];
  [(GKCDContactInfo *)self setContactID:identifier];

  givenName = [contactCopy givenName];
  [(GKCDContactInfo *)self setGivenName:givenName];

  familyName = [contactCopy familyName];
  [(GKCDContactInfo *)self setFamilyName:familyName];

  nickname = [contactCopy nickname];
  [(GKCDContactInfo *)self setNickname:nickname];

  nameSuffix = [contactCopy nameSuffix];
  [(GKCDContactInfo *)self setNameSuffix:nameSuffix];

  namePrefix = [contactCopy namePrefix];

  [(GKCDContactInfo *)self setNamePrefix:namePrefix];
}

+ (id)_gkUpdateWithContact:(id)contact withContext:(id)context
{
  contactCopy = contact;
  contextCopy = context;
  identifier = [contactCopy identifier];
  [self _gkDeleteObjectsWithContactIdentifier:identifier withContext:contextCopy];

  [contactCopy _gkAllHandles];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [GKCDContactInfo alloc];
        entity = [self entity];
        v16 = [(GKCDContactInfo *)v14 initWithEntity:entity insertIntoManagedObjectContext:contextCopy];

        [(GKCDContactInfo *)v16 _gkUpdateEntryWithHandle:v13 fromContact:contactCopy];
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  return obj;
}

+ (void)_gkDeleteObjectsWithContactIdentifier:(id)identifier withContext:(id)context
{
  contextCopy = context;
  identifier = [NSPredicate predicateWithFormat:@"contactID == %@", identifier];
  v6 = [GKCDContactInfo _gkObjectsMatchingPredicate:identifier withContext:contextCopy];
  [contextCopy _gkDeleteObjects:v6];
}

+ (id)_gkObjectsMatchingHandles:(id)handles withContext:(id)context
{
  contextCopy = context;
  handles = [NSPredicate predicateWithFormat:@"handle IN %@", handles];
  v8 = [self _gkObjectsMatchingPredicate:handles withContext:contextCopy];

  return v8;
}

@end