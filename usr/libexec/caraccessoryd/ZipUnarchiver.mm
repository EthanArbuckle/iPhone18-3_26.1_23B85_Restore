@interface ZipUnarchiver
+ (BOOL)unarchive:(id)unarchive toLocation:(id)location;
@end

@implementation ZipUnarchiver

+ (BOOL)unarchive:(id)unarchive toLocation:(id)location
{
  locationCopy = location;
  unarchiveCopy = unarchive;
  BOMCopierNew();
  v7 = +[NSMutableArray array];
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  v10 = @"extractPKZip";
  v11 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [unarchiveCopy fileSystemRepresentation];

  [locationCopy fileSystemRepresentation];
  LODWORD(locationCopy) = BOMCopierCopyWithOptions();
  BOMCopierFree();

  return locationCopy == 0;
}

@end