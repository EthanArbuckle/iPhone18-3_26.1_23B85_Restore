@interface NSFileManager
+ (id)systemCacheDirectoryPath;
+ (id)userCacheDirectoryPath;
+ (id)userLibraryPath;
@end

@implementation NSFileManager

+ (id)systemCacheDirectoryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 8uLL, 1);
  if ([v2 count])
  {
    firstObject = [v2 firstObject];
    v4 = [firstObject stringByAppendingPathComponent:@"com.apple.momentsd"];

    v5 = +[NSFileManager defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if ((v6 & 1) != 0 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), v12 = 0, v8 = [v7 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v12], v9 = v12, v7, v10 = 0, v8) && !v9)
    {
      v10 = v4;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)userCacheDirectoryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v2 count])
  {
    firstObject = [v2 firstObject];
    v4 = [firstObject stringByAppendingPathComponent:@"com.apple.momentsd"];

    v5 = +[NSFileManager defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if ((v6 & 1) != 0 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), v12 = 0, v8 = [v7 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v12], v9 = v12, v7, v10 = 0, v8) && !v9)
    {
      v10 = v4;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)userLibraryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v2 count])
  {
    firstObject = [v2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end