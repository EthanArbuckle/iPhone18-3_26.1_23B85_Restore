@interface MOBookmarkMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
+ (void)setPropertiesOfBookmarkMO:(id)a3 withBookmark:(id)a4;
@end

@implementation MOBookmarkMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOBookmarkMO alloc] initWithContext:v5];

  [MOBookmarkMO setPropertiesOfBookmarkMO:v7 withBookmark:v6];

  return v7;
}

+ (void)setPropertiesOfBookmarkMO:(id)a3 withBookmark:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 bookmarkIdentifier];
  [v6 setBookmarkIdentifier:v7];

  v8 = [v5 creationDate];
  [v6 setCreationDate:v8];

  v9 = [v5 deviceIdentifier];
  [v6 setDeviceIdentifier:v9];

  v10 = [v5 data];

  [v6 setData:v10];
}

@end