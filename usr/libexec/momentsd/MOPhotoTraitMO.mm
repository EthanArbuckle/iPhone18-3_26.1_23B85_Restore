@interface MOPhotoTraitMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
- (id)clonedObjectWithContext:(id)context;
@end

@implementation MOPhotoTraitMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOPhotoTraitMO alloc] initWithContext:contextCopy];

  identifier = [objectCopy identifier];
  [(MOPhotoTraitMO *)v7 setIdentifier:identifier];

  name = [objectCopy name];
  [(MOPhotoTraitMO *)v7 setName:name];

  labelType = [objectCopy labelType];
  [(MOPhotoTraitMO *)v7 setLabelType:labelType];

  holidayIdentifier = [objectCopy holidayIdentifier];
  [(MOPhotoTraitMO *)v7 setHolidayIdentifier:holidayIdentifier];

  meaningIdentifier = [objectCopy meaningIdentifier];
  [(MOPhotoTraitMO *)v7 setMeaningIdentifier:meaningIdentifier];

  relevantAssetUUIDs = [objectCopy relevantAssetUUIDs];
  [(MOPhotoTraitMO *)v7 setRelevantAssetUUIDs:relevantAssetUUIDs];

  associatedPersonLocalIdentifiers = [objectCopy associatedPersonLocalIdentifiers];

  [(MOPhotoTraitMO *)v7 setAssociatedPersonLocalIdentifiers:associatedPersonLocalIdentifiers];

  return v7;
}

- (id)clonedObjectWithContext:(id)context
{
  contextCopy = context;
  v5 = [[MOPhotoTrait alloc] initWithPhotoTraitMO:self];
  v6 = [MOPhotoTraitMO managedObjectWithObject:v5 inManagedObjectContext:contextCopy];

  return v6;
}

@end