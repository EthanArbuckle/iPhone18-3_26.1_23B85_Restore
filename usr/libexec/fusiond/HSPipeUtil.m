@interface HSPipeUtil
+ (int)HSPipeUtilExecCommand:(id)a3 options:(id)a4 response:(id *)a5 error:(id *)a6;
+ (int)HSPipeUtilExecCommandWithData:(id)a3 options:(id)a4 data:(id)a5 response:(id *)a6 error:(id *)a7;
@end

@implementation HSPipeUtil

+ (int)HSPipeUtilExecCommandWithData:(id)a3 options:(id)a4 data:(id)a5 response:(id *)a6 error:(id *)a7
{
  v9 = a3;
  v10 = a4;
  v59 = a5;
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  v12 = [v11 lastPathComponent];
  v53 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Enter %s at line %d\n", "+[HSPipeUtil HSPipeUtilExecCommandWithData:options:data:response:error:]", 289);
  sub_100006E34(2, @"[%@:%d] %@\n", v13, v14, v15, v16, v17, v18, v12);

  v61 = v10;
  v19 = [v10 count];
  v20 = v19;
  v56 = v19 << 32;
  v21 = malloc_type_malloc(((v19 << 32) + 0x200000000) >> 29, 0x50040EE9192B6uLL);
  v60 = v9;
  *v21 = [v9 UTF8String];
  v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  v23 = [v22 lastPathComponent];
  v54 = [NSString stringWithFormat:@"argv[0] = %s\n", *v21, 289, v53];
  sub_100006E34(2, @"[%@:%d] %@\n", v24, v25, v26, v27, v28, v29, v23);

  if (v20 >= 1)
  {
    v30 = 1;
    do
    {
      v31 = [v61 objectAtIndex:v30 - 1];
      v21[v30] = [v31 UTF8String];

      v32 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
      v33 = [v32 lastPathComponent];
      v54 = [NSString stringWithFormat:@"argv[%d] = %s\n", v30, v21[v30], v54];
      sub_100006E34(2, @"[%@:%d] %@\n", v34, v35, v36, v37, v38, v39, v33);

      ++v30;
    }

    while (v20 + 1 != v30);
  }

  *(v21 + ((&_mh_execute_header + v56) >> 29)) = 0;
  v40 = sub_100001888(v21, [v59 bytes], objc_msgSend(v59, "length"), a6, a7);
  v41 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  v42 = [v41 lastPathComponent];
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
  sub_100006E34(2, @"[%@:%d] %@\n", v46, v47, v48, v49, v50, v51, v42);

  free(v21);
  return v45;
}

+ (int)HSPipeUtilExecCommand:(id)a3 options:(id)a4 response:(id *)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  v11 = [v10 lastPathComponent];
  v38 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Enter %s at line %d\n", "+[HSPipeUtil HSPipeUtilExecCommand:options:response:error:]", 319);
  sub_100006E34(2, @"[%@:%d] %@\n", v12, v13, v14, v15, v16, v17, v11);

  v18 = [v9 count];
  v19 = v18;
  v20 = v18 << 32;
  v21 = malloc_type_malloc(((v18 << 32) + 0x200000000) >> 29, 0x50040EE9192B6uLL);
  *v21 = [v8 UTF8String];
  if (v19 >= 1)
  {
    v22 = 0;
    v23 = (v19 + 1) - 1;
    do
    {
      v24 = [v9 objectAtIndex:v22];
      v21[v22 + 1] = [v24 UTF8String];

      ++v22;
    }

    while (v23 != v22);
  }

  *(v21 + ((&_mh_execute_header + v20) >> 29)) = 0;
  v25 = sub_10000238C(v21, a5, a6);
  v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  v27 = [v26 lastPathComponent];
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
  sub_100006E34(2, @"[%@:%d] %@\n", v31, v32, v33, v34, v35, v36, v27);

  free(v21);
  return v30;
}

@end