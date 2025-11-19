uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[NSProcessInfo processInfo];
  v2 = [v1 arguments];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v4)
  {
LABEL_9:

    sub_100000E3C();
  }

  v5 = v4;
  v6 = *v12;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v12 != v6)
    {
      objc_enumerationMutation(v3);
    }

    if ([*(*(&v11 + 1) + 8 * v7) containsString:{@"LAUNCHED_BY_LAUNCHD", v11}])
    {
      break;
    }

    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }
  }

  if (!getuid())
  {
    sub_100000F48();
  }

  v8 = objc_opt_new();
  [v8 start];

  objc_autoreleasePoolPop(v0);
  v9 = +[NSRunLoop mainRunLoop];
  [v9 run];

  return 0;
}

void sub_100000E3C()
{
  v0 = sub_100000FE8(&qword_100008480);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "routined was not launchd by launchd.", v7, 2u);
  }

  v1 = [NSString stringWithFormat:@"routined was not launchd by launchd.\n"];
  v2 = [v1 UTF8String];
  fputs(v2, __stderrp);

  v3 = [NSString stringWithFormat:@"PERMISSION DENIED....and....\n"];
  v4 = [v3 UTF8String];
  fputs(v4, __stderrp);

  while (1)
  {
    v5 = [NSString stringWithFormat:@"YOU DIDN'T SAY THE MAGIC WORD!\n"];
    v6 = [v5 UTF8String];
    fputs(v6, __stderrp);

    usleep(0x7A120u);
  }
}

void sub_100000F48()
{
  v0 = sub_100000FE8(&qword_100008480);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "routined is not worthy of running as root.", v3, 2u);
  }

  v1 = [NSString stringWithFormat:@"routined is not worthy of running as root.\n"];
  v2 = [v1 UTF8String];
  fputs(v2, __stderrp);

  exit(0);
}

id sub_100000FE8(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, sub_100001048);
  }

  v2 = predicate[2];

  return v2;
}

os_log_t sub_100001048(uint64_t a1)
{
  result = os_log_create("com.apple.CoreRoutine", *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

void sub_100001594(id a1)
{
  qword_100008498 = objc_opt_new();

  _objc_release_x1();
}

uint64_t sub_100001778(uint64_t result, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v3 = result;
    v4 = [a2 copy];
    v5 = *(v3 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    return _objc_release_x1();
  }

  return result;
}

uint64_t sub_1000017C8(uint64_t result, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v3 = result;
    v4 = [a2 copy];
    v5 = *(v3 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;

    return _objc_release_x1();
  }

  return result;
}