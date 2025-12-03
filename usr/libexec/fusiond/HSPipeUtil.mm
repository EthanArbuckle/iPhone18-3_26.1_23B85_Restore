@interface HSPipeUtil
+ (int)HSPipeUtilExecCommand:(id)command options:(id)options response:(id *)response error:(id *)error;
+ (int)HSPipeUtilExecCommandWithData:(id)data options:(id)options data:(id)a5 response:(id *)response error:(id *)error;
@end

@implementation HSPipeUtil

+ (int)HSPipeUtilExecCommandWithData:(id)data options:(id)options data:(id)a5 response:(id *)response error:(id *)error
{
  dataCopy = data;
  optionsCopy = options;
  v59 = a5;
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  lastPathComponent = [v11 lastPathComponent];
  v53 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Enter %s at line %d\n", "+[HSPipeUtil HSPipeUtilExecCommandWithData:options:data:response:error:]", 289);
  sub_100006E34(2, @"[%@:%d] %@\n", v13, v14, v15, v16, v17, v18, lastPathComponent);

  v61 = optionsCopy;
  v19 = [optionsCopy count];
  v20 = v19;
  v56 = v19 << 32;
  v21 = malloc_type_malloc(((v19 << 32) + 0x200000000) >> 29, 0x50040EE9192B6uLL);
  v60 = dataCopy;
  *v21 = [dataCopy UTF8String];
  v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  lastPathComponent2 = [v22 lastPathComponent];
  v54 = [NSString stringWithFormat:@"argv[0] = %s\n", *v21, 289, v53];
  sub_100006E34(2, @"[%@:%d] %@\n", v24, v25, v26, v27, v28, v29, lastPathComponent2);

  if (v20 >= 1)
  {
    v30 = 1;
    do
    {
      v31 = [v61 objectAtIndex:v30 - 1];
      v21[v30] = [v31 UTF8String];

      v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
      lastPathComponent3 = [v32 lastPathComponent];
      v54 = [NSString stringWithFormat:@"argv[%d] = %s\n", v30, v21[v30], v54];
      sub_100006E34(2, @"[%@:%d] %@\n", v34, v35, v36, v37, v38, v39, lastPathComponent3);

      ++v30;
    }

    while (v20 + 1 != v30);
  }

  *(v21 + ((&_mh_execute_header + v56) >> 29)) = 0;
  v40 = sub_100001888(v21, [v59 bytes], objc_msgSend(v59, "length"), response, error);
  v41 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  lastPathComponent4 = [v41 lastPathComponent];
  v43 = v40 == 0;
  v44 = 7;
  if (v40)
  {
    v45 = 7;
  }

  else
  {
    v45 = 0;
  }

  if (v43)
  {
    v44 = 0;
  }

  v55 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Exit %s at line %d, success = %d\n", "+[HSPipeUtil HSPipeUtilExecCommandWithData:options:data:response:error:]", 307, v44);
  sub_100006E34(2, @"[%@:%d] %@\n", v46, v47, v48, v49, v50, v51, lastPathComponent4);

  free(v21);
  return v45;
}

+ (int)HSPipeUtilExecCommand:(id)command options:(id)options response:(id *)response error:(id *)error
{
  commandCopy = command;
  optionsCopy = options;
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  lastPathComponent = [v10 lastPathComponent];
  v38 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Enter %s at line %d\n", "+[HSPipeUtil HSPipeUtilExecCommand:options:response:error:]", 319);
  sub_100006E34(2, @"[%@:%d] %@\n", v12, v13, v14, v15, v16, v17, lastPathComponent);

  v18 = [optionsCopy count];
  v19 = v18;
  v20 = v18 << 32;
  v21 = malloc_type_malloc(((v18 << 32) + 0x200000000) >> 29, 0x50040EE9192B6uLL);
  *v21 = [commandCopy UTF8String];
  if (v19 >= 1)
  {
    v22 = 0;
    v23 = (v19 + 1) - 1;
    do
    {
      v24 = [optionsCopy objectAtIndex:v22];
      v21[v22 + 1] = [v24 UTF8String];

      ++v22;
    }

    while (v23 != v22);
  }

  *(v21 + ((&_mh_execute_header + v20) >> 29)) = 0;
  v25 = sub_10000238C(v21, response, error);
  v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  lastPathComponent2 = [v26 lastPathComponent];
  v28 = v25 == 0;
  v29 = 7;
  if (v25)
  {
    v30 = 7;
  }

  else
  {
    v30 = 0;
  }

  if (v28)
  {
    v29 = 0;
  }

  v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Exit %s at line %d, success = %d\n", "+[HSPipeUtil HSPipeUtilExecCommand:options:response:error:]", 335, v29);
  sub_100006E34(2, @"[%@:%d] %@\n", v31, v32, v33, v34, v35, v36, lastPathComponent2);

  free(v21);
  return v30;
}

@end