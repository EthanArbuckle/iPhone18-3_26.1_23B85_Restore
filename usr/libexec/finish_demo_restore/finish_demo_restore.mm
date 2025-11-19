void sub_100000CB4(id a1)
{
  qword_10000C730 = objc_alloc_init(MSDLogModel);

  _objc_release_x1();
}

void sub_100001408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001420(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001438(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v14 = [*(a1 + 32) stringByAppendingFormat:@"/%@", a2];
  v6 = [*(a1 + 40) description];
  NSLog(@"Checking existing log file (full path) %@ against %@", v14, v6);

  v7 = [*(a1 + 48) attributesOfItemAtPath:v14 error:0];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(*(*(a1 + 56) + 8) + 40) fileCreationDate];
  v11 = [v10 compare:*(a1 + 40)];

  if (v11 == -1)
  {
    v12 = [*(*(*(a1 + 56) + 8) + 40) fileCreationDate];
    v13 = [v12 description];
    NSLog(@"Removing %@ whose creation date is %@.", v14, v13);

    [*(a1 + 48) removeItemAtPath:v14 error:0];
  }

  *a4 = 0;
}

void sub_100001740(id a1)
{
  qword_10000C740 = objc_alloc_init(MSDDemoVolumeManager);

  _objc_release_x1();
}

id sub_100001ED4(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  return v3;
}

uint64_t start()
{
  if (sub_100001ED4(@"/private/var/demo_bundle"))
  {
    v0 = off_100008270;
LABEL_5:
    v1 = [(__objc2_class *)*v0 sharedInstance];
    [v1 finishInstallContent];

    return 0;
  }

  if (sub_100001ED4(@"/private/var/demo_backup"))
  {
    v0 = &off_100008278;
    goto LABEL_5;
  }

  return 0;
}

void sub_100001FE0(id a1)
{
  qword_10000C750 = objc_alloc_init(FDRContentInstaller);

  _objc_release_x1();
}

void sub_1000024E0(id a1)
{
  qword_10000C760 = objc_alloc_init(MSDContentInstaller);

  _objc_release_x1();
}

uint64_t sub_100002AC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002ADC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingPathComponent:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = +[MSDLogModel sharedInstance];
  [v9 logMessage:1 prefix:@"[INF]" message:{@"%s - intermediatePath:  %@", "-[MSDContentInstaller createIntermdediateDirectoriesInPathAndRestoreAttributes:]_block_invoke", *(*(*(a1 + 40) + 8) + 40)}];

  if ([*(a1 + 32) fileExistsAtPath:*(*(*(a1 + 40) + 8) + 40)])
  {
    return;
  }

  v10 = [@"/private/var/demo_backup/backup" stringByAppendingPathComponent:*(*(*(a1 + 40) + 8) + 40)];
  v11 = *(a1 + 32);
  v24 = 0;
  v12 = [v11 attributesOfItemAtPath:v10 error:&v24];
  v13 = v24;
  if (!v12)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v20 = +[MSDLogModel sharedInstance];
    v22 = [v13 localizedDescription];
    [v20 logMessage:1 prefix:@"[INF]" message:{@"%s - Failed to read attributes of folder:  %@ - Error:  %@", "-[MSDContentInstaller createIntermdediateDirectoriesInPathAndRestoreAttributes:]_block_invoke", v10, v22}];

    goto LABEL_8;
  }

  v14 = [v12 fileType];
  v15 = [v14 isEqualToString:NSFileTypeDirectory];

  if (!v15)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    v20 = +[MSDLogModel sharedInstance];
    [v20 logMessage:1 prefix:@"[INF]" message:{@"%s - Intermediate path:  %@ must be folder.", "-[MSDContentInstaller createIntermdediateDirectoriesInPathAndRestoreAttributes:]_block_invoke", *(*(*(a1 + 40) + 8) + 40)}];
    goto LABEL_8;
  }

  v16 = +[MSDLogModel sharedInstance];
  [v16 logMessage:1 prefix:@"[INF]" message:{@"%s - Creating directory:  %@", "-[MSDContentInstaller createIntermdediateDirectoriesInPathAndRestoreAttributes:]_block_invoke", *(*(*(a1 + 40) + 8) + 40)}];

  v17 = *(a1 + 32);
  v18 = *(*(*(a1 + 40) + 8) + 40);
  v23 = v13;
  LOBYTE(v16) = [v17 createDirectoryAtPath:v18 withIntermediateDirectories:0 attributes:v12 error:&v23];
  v19 = v23;

  *(*(*(a1 + 48) + 8) + 24) = v16;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v20 = +[MSDLogModel sharedInstance];
    v21 = [v19 localizedDescription];
    [v20 logMessage:1 prefix:@"[INF]" message:{@"%s - Failed to create directory:  %@ - Error:  %@", "-[MSDContentInstaller createIntermdediateDirectoriesInPathAndRestoreAttributes:]_block_invoke", v21}];

    v13 = v19;
LABEL_8:

    v19 = v13;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

id sub_10000330C()
{

  return [v0 logMessage:1 prefix:? message:?];
}

void sub_1000039F8(uint64_t a1)
{
  v2 = +[MSDLogModel sharedInstance];
  [v2 logMessage:1 prefix:@"[INF]" message:{@"Failed to scan IO Registry with error - %d", a1}];
}

id sub_100003A54(void *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = +[MSDLogModel sharedInstance];
  *a3 = v8;
  v9 = [a1 localizedDescription];
  *a4 = v9;
  return [v8 logMessage:1 prefix:@"[INF]" message:{@"Could not move %@ to %@ with error - %@", a2, @"/private/var/demo_backup/backup", v9}];
}

id sub_10000464C(uint64_t a1, void *a2)
{
  v4 = +[MSDLogModel sharedInstance];
  *a2 = v4;
  return [v4 logMessage:1 prefix:@"[INF]" message:{@"Coud not extract extended file attributes from %@. File is expected to have extended attributes.", a1}];
}

void sub_1000046A8(uint64_t a1)
{
  v2 = +[MSDLogModel sharedInstance];
  [v2 logMessage:1 prefix:@"[INF]" message:{@"Cannot remove xattr for %@", a1}];
}

void sub_100004710(uint64_t a1)
{
  v2 = +[MSDLogModel sharedInstance];
  [v2 logMessage:1 prefix:@"[INF]" message:{@"Cannot calculate original path for %@", a1}];
}