@interface ZipUnarchiver
+ (BOOL)unarchive:(id)a3 toLocation:(id)a4;
@end

@implementation ZipUnarchiver

+ (BOOL)unarchive:(id)a3 toLocation:(id)a4
{
  v5 = a4;
  v6 = a3;
  BOMCopierNew();
  v7 = +[NSMutableArray array];
  BOMCopierSetUserData();
  BOMCopierSetCopyFileFinishedHandler();
  v10 = @"extractPKZip";
  v11 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v6 fileSystemRepresentation];

  [v5 fileSystemRepresentation];
  LODWORD(v5) = BOMCopierCopyWithOptions();
  BOMCopierFree();

  return v5 == 0;
}

@end