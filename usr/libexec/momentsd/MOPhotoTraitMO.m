@interface MOPhotoTraitMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
- (id)clonedObjectWithContext:(id)a3;
@end

@implementation MOPhotoTraitMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOPhotoTraitMO alloc] initWithContext:v5];

  v8 = [v6 identifier];
  [(MOPhotoTraitMO *)v7 setIdentifier:v8];

  v9 = [v6 name];
  [(MOPhotoTraitMO *)v7 setName:v9];

  v10 = [v6 labelType];
  [(MOPhotoTraitMO *)v7 setLabelType:v10];

  v11 = [v6 holidayIdentifier];
  [(MOPhotoTraitMO *)v7 setHolidayIdentifier:v11];

  v12 = [v6 meaningIdentifier];
  [(MOPhotoTraitMO *)v7 setMeaningIdentifier:v12];

  v13 = [v6 relevantAssetUUIDs];
  [(MOPhotoTraitMO *)v7 setRelevantAssetUUIDs:v13];

  v14 = [v6 associatedPersonLocalIdentifiers];

  [(MOPhotoTraitMO *)v7 setAssociatedPersonLocalIdentifiers:v14];

  return v7;
}

- (id)clonedObjectWithContext:(id)a3
{
  v4 = a3;
  v5 = [[MOPhotoTrait alloc] initWithPhotoTraitMO:self];
  v6 = [MOPhotoTraitMO managedObjectWithObject:v5 inManagedObjectContext:v4];

  return v6;
}

@end