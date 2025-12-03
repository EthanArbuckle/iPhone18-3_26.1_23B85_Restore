@interface SCProcessUtility
+ (id)listAllRunningProcesses:(id)processes;
+ (id)listOfProcessesMatchingSameParentPid:(int)pid withProcessList:(id)list;
+ (int)avcdProcessId;
+ (int)csdProcessId;
+ (int)parentProcessIdForProcessId:(int)id;
@end

@implementation SCProcessUtility

+ (int)parentProcessIdForProcessId:(int)id
{
  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = "+[SCProcessUtility parentProcessIdForProcessId:]";
    WORD6(buf[0]) = 1024;
    *(buf + 14) = 118;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d ", buf, 0x12u);
  }

  memset(buf, 0, 512);
  v8 = 648;
  *v17 = 0xE00000001;
  v18 = 1;
  idCopy = id;
  v4 = sysctl(v17, 4u, buf, &v8, 0, 0);
  if (v8)
  {
    v5 = v4 < 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v21;
  }

  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 136446978;
    v10 = "+[SCProcessUtility parentProcessIdForProcessId:]";
    v11 = 1024;
    v12 = 127;
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    idCopy2 = id;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d parentPid=%d for processId=%d", v9, 0x1Eu);
  }

  return v6;
}

+ (id)listOfProcessesMatchingSameParentPid:(int)pid withProcessList:(id)list
{
  listCopy = list;
  if (!listCopy)
  {
    listCopy = [SCProcessUtility listAllRunningProcesses:0];
  }

  v6 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = listCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (+[SCProcessUtility parentProcessIdForProcessId:](SCProcessUtility, "parentProcessIdForProcessId:", [v12 intValue]) == pid)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)listAllRunningProcesses:(id)processes
{
  processesCopy = processes;
  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "+[SCProcessUtility listAllRunningProcesses:]";
    v21 = 1024;
    v22 = 145;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d ", buf, 0x12u);
  }

  if (!dword_1000B6A50)
  {
    *buf = 4;
    *v29 = 0x800000001;
    if (sysctl(v29, 2u, &dword_1000B6A50, buf, 0, 0) == -1)
    {
      dword_1000B6A50 = 4096;
    }
  }

  v4 = +[NSMutableArray array];
  v28 = 0;
  *v27 = 0xE00000001;
  size = 0;
  if (sysctl(v27, 3u, 0, &size, 0, 0) < 0)
  {
    goto LABEL_25;
  }

  v5 = malloc_type_malloc(size, 0x921EE4E5uLL);
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  if (sysctl(v27, 3u, v5, &size, 0, 0) < 0)
  {
    free(v6);
    goto LABEL_25;
  }

  v17 = v6;
  if ((size / 0x288uLL) < 1)
  {
    goto LABEL_21;
  }

  v7 = (size / 0x288uLL) & 0x7FFFFFFF;
  v8 = v17 + 10;
  v18 = v4;
  while (1)
  {
    v9 = *v8;
    if (v9)
    {
      break;
    }

LABEL_20:
    v8 += 162;
    if (!--v7)
    {
      goto LABEL_21;
    }
  }

  *buf = dword_1000B6A50;
  v10 = malloc_type_malloc(size, 0x100004077774924uLL);
  *v25 = 0x3100000001;
  v26 = v9;
  if (sysctl(v25, 3u, v10, buf, 0, 0))
  {
LABEL_19:
    free(v10);
    goto LABEL_20;
  }

  if (!processesCopy)
  {
    stringByDeletingPathExtension = [NSNumber numberWithInt:v9];
    [v4 addObject:stringByDeletingPathExtension];
    goto LABEL_18;
  }

  v11 = [NSString stringWithCString:v10 + 4 encoding:4];
  [v11 lastPathComponent];
  v13 = v12 = processesCopy;
  stringByDeletingPathExtension = [v13 stringByDeletingPathExtension];

  processesCopy = v12;
  if (![stringByDeletingPathExtension isEqualToString:v12])
  {
    v4 = v18;
LABEL_18:

    goto LABEL_19;
  }

  v16 = [NSNumber numberWithInt:v9];
  v4 = v18;
  [v18 addObject:v16];

  free(v10);
LABEL_21:
  free(v17);
  if (!dword_1000B6840 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "+[SCProcessUtility listAllRunningProcesses:]";
    v21 = 1024;
    v22 = 191;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d process list obtained process=%@", buf, 0x1Cu);
  }

LABEL_25:

  return v4;
}

+ (int)avcdProcessId
{
  v2 = [SCProcessUtility listAllRunningProcesses:@"avconferenced"];
  if ([v2 count])
  {
    firstObject = [v2 firstObject];
    unsignedIntValue = [firstObject unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

+ (int)csdProcessId
{
  v2 = [SCProcessUtility listAllRunningProcesses:@"callservicesd"];
  if ([v2 count])
  {
    firstObject = [v2 firstObject];
    unsignedIntValue = [firstObject unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

@end