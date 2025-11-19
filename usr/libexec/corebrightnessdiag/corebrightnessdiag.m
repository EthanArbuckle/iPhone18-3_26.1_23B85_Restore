os_log_t sub_100000910()
{
  v0 = os_log_create("com.apple.CoreBrightness", "default");
  qword_100008050 = v0;
  if (!v0)
  {
    v0 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000E94();
    }

    qword_100008050 = &_os_log_default;
  }

  return v0;
}

void sub_100000984(int a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_queue_create("parseArgQueue", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000A44;
  block[3] = &unk_100004140;
  v11 = a1;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_async(v6, block);
}

intptr_t sub_100000A44(uint64_t a1)
{
  if (*(a1 + 48) >= 2)
  {
    v2 = *(*(a1 + 40) + 8);
    if (*v2 != 45 || *(v2 + 1) != 104 || *(v2 + 2))
    {
      if (strcmp(v2, "--help"))
      {
        v3 = 1;
        while (1)
        {
          v4 = *(*(a1 + 40) + 8 * v3);
          if (!strcmp(v4, "nightshift"))
          {
            break;
          }

          if (!strcmp(v4, "sunschedule"))
          {
            goto LABEL_15;
          }

          if (!strcmp(v4, "nightshift-internal"))
          {
            puts("Night Shift Status");
            v7 = [*(a1 + 32) copyPropertyForKey:@"CBBlueReductionStatus"];
            v8 = [v7 description];
            printf("%s \n", [v8 UTF8String]);

LABEL_15:
            puts("Night Shift Sunset/Sunrise");
            v5 = *(a1 + 32);
            v6 = @"BlueLightSunSchedule";
LABEL_16:
            v9 = [v5 copyPropertyForKey:v6];
            v10 = [v9 description];
            printf("%s \n", [v10 UTF8String]);

            goto LABEL_17;
          }

          if (!strcmp(v4, "status-info"))
          {
            v11 = [*(a1 + 32) copyPropertyForKey:@"StatusInfo"];
            v12 = [NSURL fileURLWithPath:@"/dev/stdout"];
            v13 = [v11 writeToURL:v12 atomically:0];

            if ((v13 & 1) == 0)
            {
              puts("Unable to dump a property list.");
              v14 = [v11 description];
              puts([v14 UTF8String]);
              goto LABEL_24;
            }

LABEL_25:

            goto LABEL_17;
          }

          if (!strcmp(v4, "status-info-internal"))
          {
            v11 = [*(a1 + 32) copyPropertyForKey:@"StatusInfo"];
            v17 = 0;
            v14 = [NSPropertyListSerialization dataWithPropertyList:v11 format:100 options:0 error:&v17];
            if (!v14)
            {
              NSLog(@"CoreBrightnessDiag: Error serializing to plist: %@", v17);
            }

            v15 = [[NSString alloc] initWithData:v14 encoding:4];
            puts([v15 UTF8String]);

LABEL_24:
            goto LABEL_25;
          }

          printf("Unrecognized identifier %s\n", v4);
LABEL_17:
          if (++v3 >= *(a1 + 48))
          {
            return dispatch_semaphore_signal(qword_100008068);
          }
        }

        puts("Night Shift Status");
        v5 = *(a1 + 32);
        v6 = @"CBBlueReductionStatus";
        goto LABEL_16;
      }
    }
  }

  puts("corebrightnessdiag [nightshift] [sunschedule] [nightshift-internal] [status-info] [status-info-internal]");
  return dispatch_semaphore_signal(qword_100008068);
}

uint64_t start(int a1, uint64_t a2)
{
  signal(2, sub_100000D4C);
  v4 = dispatch_semaphore_create(0);
  v5 = qword_100008068;
  qword_100008068 = v4;

  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(BrightnessSystemClient);
  sub_100000984(a1, a2, v7);
  dispatch_semaphore_wait(qword_100008068, 0xFFFFFFFFFFFFFFFFLL);
  do
  {
    v8 = +[NSRunLoop currentRunLoop];
    v9 = [NSDate alloc];
    v10 = [v9 initWithTimeIntervalSinceNow:*&qword_100008060];
    v11 = [v8 runMode:NSDefaultRunLoopMode beforeDate:v10];
  }

  while (v11 && (byte_100008058 & 1) != 0);

  objc_autoreleasePoolPop(v6);
  return 0;
}