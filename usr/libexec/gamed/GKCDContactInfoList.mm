@interface GKCDContactInfoList
+ (id)_gkPrimaryListWithContext:(id)context;
@end

@implementation GKCDContactInfoList

+ (id)_gkPrimaryListWithContext:(id)context
{
  contextCopy = context;
  v5 = [GKCDContactInfoList _gkObjectsMatchingPredicate:0 withContext:contextCopy];
  firstObject = [v5 firstObject];

  if (!firstObject)
  {
    v7 = [GKCDContactInfoList alloc];
    entity = [self entity];
    firstObject = [(GKCDContactInfoList *)v7 initWithEntity:entity insertIntoManagedObjectContext:contextCopy];

    [(GKCDContactInfoList *)firstObject setVersion:&off_100382808];
  }

  return firstObject;
}

@end