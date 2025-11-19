@interface HSSepUtil
+ (id)sharedSingleton;
- (HSSepUtil)init;
- (int)processSepUtilCommand:(id)a3 response:(id *)a4;
@end

@implementation HSSepUtil

+ (id)sharedSingleton
{
  if (qword_100014C58 != -1)
  {
    sub_10000919C();
  }

  v3 = qword_100014C60;

  return v3;
}

- (HSSepUtil)init
{
  v3.receiver = self;
  v3.super_class = HSSepUtil;
  return [(HSSepUtil *)&v3 init];
}

- (int)processSepUtilCommand:(id)a3 response:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [v5 objectForKey:@"CommandData"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 length])
    {
      v8 = [NSArray arrayWithObjects:@"--restore+art", @"-", 0];
      v7 = v7;
      v23 = 0;
      v9 = [HSPipeUtil HSPipeUtilExecCommandWithData:@"/usr/libexec/seputil" options:v8 data:v7 response:a4 error:&v23];
      a4 = v23;
      if (v9)
      {
        v10 = 8;
      }

      else
      {
        v10 = 0;
      }

      v11 = v7;
    }

    else
    {
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/HSSepUtil/HSSepUtil.m"];
      v13 = [v12 lastPathComponent];
      v14 = [NSString stringWithFormat:@"Invalid SEP firmware.\n"];
      v10 = 4;
      sub_100006E34(4, @"[%@:%d] %@\n", v15, v16, v17, v18, v19, v20, v13);

      v21 = [NSNumber numberWithInt:4];
      *a4 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v21, @"Status", @"Invalid SEP firmware.", @"Error", &stru_1000108B0, @"Output", 0, @"Data", 0];

      a4 = 0;
      v11 = 0;
      v8 = 0;
    }
  }

  else
  {
    sub_1000091B0();
    v7 = 0;
    v11 = 0;
    v8 = 0;
    v10 = 8;
  }

  return v10;
}

@end