@interface MOBookmarkMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
+ (void)setPropertiesOfBookmarkMO:(id)o withBookmark:(id)bookmark;
@end

@implementation MOBookmarkMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOBookmarkMO alloc] initWithContext:contextCopy];

  [MOBookmarkMO setPropertiesOfBookmarkMO:v7 withBookmark:objectCopy];

  return v7;
}

+ (void)setPropertiesOfBookmarkMO:(id)o withBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  oCopy = o;
  bookmarkIdentifier = [bookmarkCopy bookmarkIdentifier];
  [oCopy setBookmarkIdentifier:bookmarkIdentifier];

  creationDate = [bookmarkCopy creationDate];
  [oCopy setCreationDate:creationDate];

  deviceIdentifier = [bookmarkCopy deviceIdentifier];
  [oCopy setDeviceIdentifier:deviceIdentifier];

  data = [bookmarkCopy data];

  [oCopy setData:data];
}

@end