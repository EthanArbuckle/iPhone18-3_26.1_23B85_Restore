@interface GKCDContactInfo
+ (id)_gkObjectsMatchingHandles:(id)a3 withContext:(id)a4;
+ (id)_gkUpdateWithContact:(id)a3 withContext:(id)a4;
+ (void)_gkDeleteObjectsWithContactIdentifier:(id)a3 withContext:(id)a4;
- (void)_gkUpdateEntryWithHandle:(id)a3 fromContact:(id)a4;
@end

@implementation GKCDContactInfo

- (void)_gkUpdateEntryWithHandle:(id)a3 fromContact:(id)a4
{
  v6 = a4;
  [(GKCDContactInfo *)self setHandle:a3];
  v7 = [v6 identifier];
  [(GKCDContactInfo *)self setContactID:v7];

  v8 = [v6 givenName];
  [(GKCDContactInfo *)self setGivenName:v8];

  v9 = [v6 familyName];
  [(GKCDContactInfo *)self setFamilyName:v9];

  v10 = [v6 nickname];
  [(GKCDContactInfo *)self setNickname:v10];

  v11 = [v6 nameSuffix];
  [(GKCDContactInfo *)self setNameSuffix:v11];

  v12 = [v6 namePrefix];

  [(GKCDContactInfo *)self setNamePrefix:v12];
}

+ (id)_gkUpdateWithContact:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  [a1 _gkDeleteObjectsWithContactIdentifier:v8 withContext:v7];

  [v6 _gkAllHandles];
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
        v15 = [a1 entity];
        v16 = [(GKCDContactInfo *)v14 initWithEntity:v15 insertIntoManagedObjectContext:v7];

        [(GKCDContactInfo *)v16 _gkUpdateEntryWithHandle:v13 fromContact:v6];
      }

      v10 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  return obj;
}

+ (void)_gkDeleteObjectsWithContactIdentifier:(id)a3 withContext:(id)a4
{
  v5 = a4;
  v7 = [NSPredicate predicateWithFormat:@"contactID == %@", a3];
  v6 = [GKCDContactInfo _gkObjectsMatchingPredicate:v7 withContext:v5];
  [v5 _gkDeleteObjects:v6];
}

+ (id)_gkObjectsMatchingHandles:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = [NSPredicate predicateWithFormat:@"handle IN %@", a3];
  v8 = [a1 _gkObjectsMatchingPredicate:v7 withContext:v6];

  return v8;
}

@end