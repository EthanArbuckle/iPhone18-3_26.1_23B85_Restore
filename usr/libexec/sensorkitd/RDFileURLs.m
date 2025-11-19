@interface RDFileURLs
+ (void)initialize;
- (RDFileURLs)init;
- (void)dealloc;
@end

@implementation RDFileURLs

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100071A38 = os_log_create("com.apple.SensorKit", "RDFileURLs");
  }
}

- (RDFileURLs)init
{
  objc_opt_self();
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([(NSArray *)v3 count])
  {
    v4 = [NSURL fileURLWithPath:[(NSArray *)v3 firstObject] isDirectory:1];
    if (self)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v4 = 0;
  if (!self)
  {
    return 0;
  }

LABEL_3:
  v8.receiver = self;
  v8.super_class = RDFileURLs;
  result = [(RDFileURLs *)&v8 init];
  if (result)
  {
    v6 = result;
    v7 = v4;
    result = v6;
    v6->_rootDir = v7;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RDFileURLs;
  [(RDFileURLs *)&v3 dealloc];
}

@end