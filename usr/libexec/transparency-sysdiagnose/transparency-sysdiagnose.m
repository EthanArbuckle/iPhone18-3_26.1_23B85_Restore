uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_semaphore_create(0);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100000F8C;
  v24 = sub_100000F9C;
  v25 = +[NSMutableDictionary dictionary];
  v2 = objc_alloc_init(TransparencyDaemon);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100000FA4;
  v17[3] = &unk_100004208;
  v19 = &v20;
  v3 = v1;
  v18 = v3;
  [v2 transparencySysDiagnose:v17];
  v4 = dispatch_time(0, 2500000000);
  if (dispatch_semaphore_wait(v3, v4))
  {
    fwrite("tool timed out waiting for transparencyd, using fallback\n", 0x39uLL, 1uLL, __stderrp);
    v26 = 0;
    v5 = [TransparencyFileSupport transparencyFilesPath:&v26];
    v6 = [v5 URLByAppendingPathComponent:@"transparency_start.log" isDirectory:0];

    v7 = [v6 relativePath];
    v8 = [NSString stringWithContentsOfFile:v7 encoding:4 error:0];

    if (v8)
    {
      fprintf(__stdoutp, "%s\n", [v8 UTF8String]);
      v9 = 0;
    }

    else
    {
      fwrite("Cant make JSON\n", 0xFuLL, 1uLL, __stderrp);
      v9 = 74;
    }

    goto LABEL_16;
  }

  v10 = v21[5];
  v16 = 0;
  v11 = v10;
  if ([NSJSONSerialization isValidJSONObject:v11])
  {
    v12 = [NSJSONSerialization dataWithJSONObject:v11 options:3 error:&v16];
    if (v12)
    {
      v13 = [[NSString alloc] initWithData:v12 encoding:4];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v12 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-26275 description:@"auditor report is not valid JSON"];
    NSLog(@"Bad report: %@", v11);
    if (!v12)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v14 = v12;
    v13 = 0;
    v16 = v12;
  }

LABEL_12:
  v8 = v16;
  if (v13)
  {
    fprintf(__stdoutp, "%s\n", [v13 UTF8String]);
    v9 = 0;
  }

  else
  {
    fwrite("Cant make JSON\n", 0xFuLL, 1uLL, __stderrp);
    v9 = 74;
  }

LABEL_16:
  _Block_object_dispose(&v20, 8);

  objc_autoreleasePoolPop(v0);
  return v9;
}

void sub_100000F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100000F8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100000FA4(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 40) + 8) + 40) addEntriesFromDictionary:a2];
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

void sub_1000012B4(id a1)
{
  qword_1000084F0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1000012F8(id a1)
{
  qword_1000084F0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_10000153C(id a1)
{
  qword_1000084F0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}