@interface HSSepUtil
+ (id)sharedSingleton;
- (HSSepUtil)init;
- (int)processSepUtilCommand:(id)command response:(id *)response;
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

- (int)processSepUtilCommand:(id)command response:(id *)response
{
  commandCopy = command;
  v6 = commandCopy;
  if (response)
  {
    v7 = [commandCopy objectForKey:@"CommandData"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 length])
    {
      v8 = [NSArray arrayWithObjects:@"--restore+art", @"-", 0];
      v7 = v7;
      v23 = 0;
      v9 = [HSPipeUtil HSPipeUtilExecCommandWithData:@"/usr/libexec/seputil" options:v8 data:v7 response:response error:&v23];
      response = v23;
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
      lastPathComponent = [v12 lastPathComponent];
      v14 = [NSString stringWithFormat:@"Invalid SEP firmware.\n"];
      v10 = 4;
      sub_100006E34(4, @"[%@:%d] %@\n", v15, v16, v17, v18, v19, v20, lastPathComponent);

      v21 = [NSNumber numberWithInt:4];
      *response = [NSMutableDictionary dictionaryWithObjectsAndKeys:v21, @"Status", @"Invalid SEP firmware.", @"Error", &stru_1000108B0, @"Output", 0, @"Data", 0];

      response = 0;
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