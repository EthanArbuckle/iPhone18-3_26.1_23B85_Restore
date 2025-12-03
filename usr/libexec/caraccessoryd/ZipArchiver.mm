@interface ZipArchiver
+ (BOOL)archive:(id)archive toLocation:(id)location;
@end

@implementation ZipArchiver

+ (BOOL)archive:(id)archive toLocation:(id)location
{
  locationCopy = location;
  archiveCopy = archive;
  BOMCopierNew();
  v7 = +[NSMutableArray array];
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  v10 = @"createPKZip";
  v11 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [archiveCopy fileSystemRepresentation];

  [locationCopy fileSystemRepresentation];
  LODWORD(locationCopy) = BOMCopierCopyWithOptions();
  BOMCopierFree();

  return locationCopy == 0;
}

@end