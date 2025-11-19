uint64_t sub_100000F80(uint64_t a1)
{
  result = qword_100014C50;
  if (!qword_100014C50)
  {
    v3 = [&off_100011EC8 objectForKeyedSubscript:a1];

    if (v3)
    {
      result = 73400320;
    }

    else
    {
      result = 10485760;
    }

    qword_100014C50 = result;
  }

  return result;
}

id sub_100001040(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = +[NSMutableDictionary dictionary];
  v11 = [NSNumber numberWithUnsignedInt:a1];
  [v10 setObject:v11 forKeyedSubscript:@"Status"];

  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = &stru_1000108B0;
  }

  [v10 setObject:v12 forKeyedSubscript:@"Error"];

  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = &stru_1000108B0;
  }

  [v10 setObject:v13 forKeyedSubscript:@"Output"];

  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:@"Data"];
  }

  return v10;
}

id sub_100001238(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v1 code];
  v4 = [v1 localizedDescription];

  v5 = [NSString stringWithFormat:@"NSError domain:%@, error code: %d. Description: %@", v2, v3, v4];
  v6 = [v5 UTF8String];

  return v6;
}

id sub_1000012E4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v8 = 0;
    v2 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v1 error:&v8];

    v3 = v8;
    NSLog(@"Unarchive Error : %@", v3);
    if (v3)
    {
      NSLog(@"Error : %@", v3);
    }

    [v2 setDecodingFailurePolicy:0];
    v9[0] = objc_opt_class();
    v9[1] = objc_opt_class();
    v9[2] = objc_opt_class();
    v9[3] = objc_opt_class();
    v9[4] = objc_opt_class();
    v4 = [NSArray arrayWithObjects:v9 count:5];
    v5 = [NSSet setWithArray:v4];
    v6 = [v2 decodeObjectOfClasses:v5 forKey:@"HSArchiverKey"];

    [v2 finishDecoding];
    NSLog(@"recvDict : %@", v6);
    NSLog(@"err : %@", v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1000014A8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v2 encodeObject:v1 forKey:@"HSArchiverKey"];

    v3 = [v2 encodedData];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_100001538(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  if (v2)
  {
    v3 = v2;
    v7 = 0;
    v4 = [NSMutableString stringWithCapacity:2 * v2];
    for (i = 0; i != v3; ++i)
    {
      [v1 getBytes:&v7 range:{i, 1}];
      [v4 appendFormat:@"%02x", v7];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1000015FC(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = 0;
  }

  else
  {
    v2 = +[NSMutableString string];
    if ([v1 length])
    {
      v3 = 0;
      do
      {
        v4 = [v1 substringWithRange:{v3, 2}];
        v6 = 0;
        sscanf([v4 UTF8String], "%lx", &v6);
        [v2 appendFormat:@"%c", v6];

        v3 += 2;
      }

      while (v3 < [v1 length]);
    }
  }

  return v2;
}

id sub_1000016FC(void *a1)
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"0x" withString:&stru_1000108B0];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"0X" withString:&stru_1000108B0];

  v3 = [v2 stringByReplacingOccurrencesOfString:@" " withString:&stru_1000108B0];

  v4 = [v3 length];
  if (v4)
  {
    v10 = @"Text does not have 2-digit hex chars for every byte";
    goto LABEL_10;
  }

  v5 = objc_opt_new();
  if (v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = [v3 substringWithRange:{v6, 2}];
      v8 = [NSScanner scannerWithString:v7];
      v13 = 0;
      if (([v8 scanHexInt:&v13] & 1) == 0)
      {
        break;
      }

      v12 = v13;
      [v5 appendBytes:&v12 length:1];

      v6 += 2;
      if (v4 <= v6)
      {
        goto LABEL_6;
      }
    }

    v10 = @"Text has illegal hexadecimal characters";
LABEL_10:
    v11 = [NSException exceptionWithName:@"IllegalInput" reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

LABEL_6:

  return v5;
}

uint64_t sub_100001888(const char **a1, char *a2, int64_t a3, void *a4, id *a5)
{
  *__fd = 0;
  if (!a4)
  {
    sub_100009064();
    v9 = 0;
    v19 = 0xFFFFFFFFLL;
    v82 = a5;
LABEL_28:
    v83 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
    v84 = [v83 lastPathComponent];
    v112 = [NSString stringWithFormat:@"Error executing command with data, result = %d\n", v19];
    sub_100006E34(2, @"[%@:%d] %@\n", v85, v86, v87, v88, v89, v90, v84);

    v91 = [NSString stringWithFormat:@"Error executing command with data, result = %d\n", v19, 195, v112];
    v92 = [NSDictionary dictionaryWithObjectsAndKeys:v91, NSLocalizedDescriptionKey, 0];
    if (v82)
    {
      v93 = [[NSError alloc] initWithDomain:@"HSErrorDomain" code:7 userInfo:v92];
      *v82 = v93;
      v94 = [v93 localizedDescription];
      [v9 setObject:v94 forKey:@"Error"];

      v95 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
      v96 = [v95 lastPathComponent];
      v97 = [*v82 localizedDescription];
      v113 = [NSString stringWithFormat:@"%@", v97];
      sub_100006E34(2, @"[%@:%d] %@\n", v98, v99, v100, v101, v102, v103, v96);
    }

    goto LABEL_31;
  }

  v8 = [NSNumber numberWithInt:7];
  v9 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v8, @"Status", &stru_1000108B0, @"Error", &stru_1000108B0, @"Output", 0, @"Data", 0];

  v10 = signal(13, 1);
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  v12 = [v11 lastPathComponent];
  v106 = [NSString stringWithFormat:@"entering hs_execute_command_with_input_data: %s (%p - %zu)\n", *a1, a2, a3];
  sub_100006E34(2, @"[%@:%d] %@\n", v13, v14, v15, v16, v17, v18, v12);

  v19 = 0xFFFFFFFFLL;
  __fd[0] = -1;
  v20 = sub_100002028(a1, &__fd[1], 0, __fd);
  if (v20 != -1 && __fd[0] != -1)
  {
    v21 = v20;
    if (a3 >= 1)
    {
      while (1)
      {
        v22 = write(__fd[0], a2, a3);
        if (v22 == -1)
        {
          break;
        }

        a2 += v22;
        v23 = a3 <= v22;
        a3 -= v22;
        if (v23)
        {
          goto LABEL_10;
        }
      }

      v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
      v25 = [v24 lastPathComponent];
      v26 = *a1;
      v27 = __error();
      v107 = [NSString stringWithFormat:@"write failed for %s: %s\n", v26, strerror(*v27), v106];
      sub_100006E34(2, @"[%@:%d] %@\n", v28, v29, v30, v31, v32, v33, v25);
    }

LABEL_10:
    close(__fd[0]);
    v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
    v35 = [v34 lastPathComponent];
    v108 = [NSString stringWithFormat:@"Start Reading output from shell command\n"];
    sub_100006E34(2, @"[%@:%d] %@\n", v36, v37, v38, v39, v40, v41, v35);

    v42 = objc_alloc_init(NSMutableString);
    v43 = read(v21, v118, 0x3FFuLL);
    if (v43 >= 1)
    {
      do
      {
        v118[v43] = 0;
        v44 = [[NSString alloc] initWithUTF8String:v118];
        [v42 appendString:v44];

        v43 = read(v21, v118, 0x3FFuLL);
      }

      while (v43 > 0);
    }

    v45 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
    v46 = [v45 lastPathComponent];
    v109 = [NSString stringWithFormat:@"waiting for child to exit\n"];
    sub_100006E34(2, @"[%@:%d] %@\n", v47, v48, v49, v50, v51, v52, v46);

    v116 = 0;
    v53 = waitpid(__fd[1], &v116, 0);
    v54 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
    v55 = [v54 lastPathComponent];
    if (v53 == -1)
    {
      v70 = *a1;
      v71 = __error();
      v69 = [NSString stringWithFormat:@"waitpid failed for %s: %s\n", v70, strerror(*v71), v109];
    }

    else
    {
      v110 = [NSString stringWithFormat:@"child exited\n"];
      sub_100006E34(2, @"[%@:%d] %@\n", v56, v57, v58, v59, v60, v61, v55);

      v62 = v116 & 0x7F;
      v54 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
      v55 = [v54 lastPathComponent];
      if (!v62)
      {
        v111 = [NSString stringWithFormat:@"exit status: %d\n", BYTE1(v116), 165, v110];
        sub_100006E34(2, @"[%@:%d] %@\n", v72, v73, v74, v75, v76, v77, v55);

        v78 = BYTE1(v116);
        close(v21);
        v19 = v78;
        if (v78)
        {
          v79 = 7;
        }

        else
        {
          v79 = 0;
        }

        v80 = &lockdown_copy_checkin_info_ptr;
        goto LABEL_24;
      }

      if (v62 == 127)
      {
        [NSString stringWithFormat:@"%s was stopped by signal %d\n", *a1, (v116 >> 8), v110];
      }

      else
      {
        [NSString stringWithFormat:@"%s was terminated by signal %d\n", *a1, v116 & 0x7F, v110];
      }
      v69 = ;
    }

    sub_100006E34(2, @"[%@:%d] %@\n", v63, v64, v65, v66, v67, v68, v55);
    v80 = &lockdown_copy_checkin_info_ptr;

    close(v21);
    v79 = 7;
    v19 = 0xFFFFFFFFLL;
LABEL_24:
    v81 = [v80[146] numberWithInt:v79];
    [v9 setObject:v81 forKey:@"Status"];

    [v9 setObject:v42 forKey:@"Output"];
  }

  if (v10 != -1)
  {
    signal(13, v10);
  }

  v82 = a5;
  if (v19)
  {
    goto LABEL_28;
  }

LABEL_31:
  if (a4)
  {
    v104 = v9;
    *a4 = v9;
  }

  return v19;
}

uint64_t sub_100002028(const char **a1, pid_t *a2, int a3, _DWORD *a4)
{
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  v9 = [v8 lastPathComponent];
  v48 = [NSString stringWithFormat:@"executing %s\n", *a1];
  sub_100006E34(2, @"[%@:%d] %@\n", v10, v11, v12, v13, v14, v15, v9);

  if (pipe(v54) != -1)
  {
    if (a4 && pipe(v53) == -1)
    {
      v37 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
      v38 = [v37 lastPathComponent];
      v39 = *a1;
      v40 = __error();
      v51 = [NSString stringWithFormat:@"pipe failed while preparing to execute %s: %s\n", v39, strerror(*v40), v48];
      sub_100006E34(2, @"[%@:%d] %@\n", v41, v42, v43, v44, v45, v46, v38);

      v26 = 0xFFFFFFFFLL;
      goto LABEL_18;
    }

    v52 = 0;
    posix_spawn_file_actions_init(&v52);
    posix_spawn_file_actions_adddup2(&v52, v54[1], 1);
    if (a3)
    {
      posix_spawn_file_actions_adddup2(&v52, v54[1], 2);
    }

    posix_spawn_file_actions_addclose(&v52, v54[0]);
    if (a4)
    {
      posix_spawn_file_actions_adddup2(&v52, v53[0], 0);
      posix_spawn_file_actions_addclose(&v52, v53[1]);
    }

    v16 = posix_spawn(a2, *a1, &v52, 0, a1, 0);
    if (v16)
    {
      v17 = v16;
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
      v19 = [v18 lastPathComponent];
      v49 = [NSString stringWithFormat:@"posix_spawn %s failed: %s\n", *a1, strerror(v17), v48];
      sub_100006E34(2, @"[%@:%d] %@\n", v20, v21, v22, v23, v24, v25, v19);

      close(v54[0]);
      if (a4)
      {
        close(v53[1]);
        v26 = 0xFFFFFFFFLL;
LABEL_14:
        posix_spawn_file_actions_destroy(&v52);
        close(v53[0]);
LABEL_18:
        close(v54[1]);
        return v26;
      }

      v26 = 0xFFFFFFFFLL;
    }

    else
    {
      v26 = v54[0];
      if (a4)
      {
        *a4 = v53[1];
        goto LABEL_14;
      }
    }

    posix_spawn_file_actions_destroy(&v52);
    goto LABEL_18;
  }

  v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  v28 = [v27 lastPathComponent];
  v29 = *a1;
  v30 = __error();
  v50 = [NSString stringWithFormat:@"pipe failed while preparing to execute %s: %s\n", v29, strerror(*v30), v48];
  sub_100006E34(2, @"[%@:%d] %@\n", v31, v32, v33, v34, v35, v36, v28);

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000238C(const char **a1, void *a2, id *a3)
{
  if (!a2)
  {
    sub_100009100();
    v8 = 0;
    goto LABEL_21;
  }

  v6 = &lockdown_copy_checkin_info_ptr;
  v7 = [NSNumber numberWithInt:7];
  v8 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v7, @"Status", &stru_1000108B0, @"Error", &stru_1000108B0, @"Output", 0, @"Data", 0];

  v64 = 0;
  v9 = sub_100002028(a1, &v64, 1, 0);
  if (v9 == -1)
  {
LABEL_21:
    v34 = 0xFFFFFFFFLL;
LABEL_22:
    v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
    v40 = [v39 lastPathComponent];
    v61 = [NSString stringWithFormat:@"Error executing command, result = %d\n", v34];
    sub_100006E34(2, @"[%@:%d] %@\n", v41, v42, v43, v44, v45, v46, v40);

    v47 = [NSString stringWithFormat:@"Error executing command, result = %d\n", v34, 266, v61];
    v48 = [NSDictionary dictionaryWithObjectsAndKeys:v47, NSLocalizedDescriptionKey, 0];
    if (a3)
    {
      v49 = [[NSError alloc] initWithDomain:@"HSErrorDomain" code:7 userInfo:v48];
      *a3 = v49;
      v50 = [v49 localizedDescription];
      [v8 setObject:v50 forKey:@"Error"];

      v51 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
      v52 = [v51 lastPathComponent];
      v53 = [*a3 localizedDescription];
      v62 = [NSString stringWithFormat:@"%@", v53];
      sub_100006E34(2, @"[%@:%d] %@\n", v54, v55, v56, v57, v58, v59, v52);
    }

    if (a2)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v10 = v9;
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  v12 = [v11 lastPathComponent];
  v60 = [NSString stringWithFormat:@"Start Reading output from shell command\n"];
  sub_100006E34(2, @"[%@:%d] %@\n", v13, v14, v15, v16, v17, v18, v12);

  v19 = objc_alloc_init(NSMutableString);
  v20 = read(v10, v65, 0x3FFuLL);
  if (v20 >= 1)
  {
    do
    {
      v65[v20] = 0;
      v21 = [[NSString alloc] initWithUTF8String:v65];
      [v19 appendString:v21];

      v20 = read(v10, v65, 0x3FFuLL);
    }

    while (v20 > 0);
  }

  v63 = 0;
  if (waitpid(v64, &v63, 0) == -1)
  {
    v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
    v24 = [v23 lastPathComponent];
    v32 = *a1;
    v33 = __error();
    v6 = &lockdown_copy_checkin_info_ptr;
    v31 = [NSString stringWithFormat:@"waitpid failed for %s: %s\n", v32, strerror(*v33), v60];
LABEL_15:
    sub_100006E34(2, @"[%@:%d] %@\n", v25, v26, v27, v28, v29, v30, v24);

    close(v10);
    v35 = 7;
    v34 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  v22 = BYTE1(v63);
  if ((v63 & 0x7F) != 0)
  {
    if ((v63 & 0x7F) == 0x7F)
    {
      v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
      v24 = [v23 lastPathComponent];
      [NSString stringWithFormat:@"%s was stopped by signal %d\n", *a1, (v63 >> 8), v60];
    }

    else
    {
      v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
      v24 = [v23 lastPathComponent];
      [NSString stringWithFormat:@"%s was terminated by signal %d\n", *a1, v63 & 0x7F, v60];
    }
    v31 = ;
    goto LABEL_15;
  }

  close(v10);
  v34 = v22;
  if (v22)
  {
    v35 = 7;
  }

  else
  {
    v35 = 0;
  }

LABEL_16:
  v36 = [v6[146] numberWithInt:v35];
  [v8 setObject:v36 forKey:@"Status"];

  [v8 setObject:v19 forKey:@"Output"];
  if (v34)
  {
    goto LABEL_22;
  }

  if (a2)
  {
LABEL_18:
    v37 = v8;
    *a2 = v8;
  }

LABEL_19:

  return v34;
}

void sub_1000038E8(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];

  v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSHostConnection.m"];
  v3 = [v18 lastPathComponent];
  if (v2)
  {
    v16 = [NSString stringWithFormat:@"Invoke handler to process new connection."];
    sub_100006E34(2, @"[%@:%d] %@\n", v4, v5, v6, v7, v8, v9, v3);

    v18 = [*(a1 + 32) handler];
    (*(v18 + 2))(v18, *(a1 + 40));
  }

  else
  {
    v17 = [NSString stringWithFormat:@"No handler for remote connection."];
    sub_100006E34(2, @"[%@:%d] %@\n", v10, v11, v12, v13, v14, v15, v3);
  }
}

void sub_100003C38(id a1)
{
  qword_100014C60 = objc_alloc_init(HSSepUtil);

  _objc_release_x1();
}

id sub_100003ED8()
{
  v0 = [NSArray arrayWithObjects:@"-x", @"boot-args", 0];
  v11 = 0;
  v12 = 0;
  [HSPipeUtil HSPipeUtilExecCommand:@"/usr/sbin/nvram" options:v0 response:&v12 error:&v11];
  v1 = v12;
  v2 = v11;
  v3 = [v1 objectForKeyedSubscript:@"Output"];
  NSLog(@"Output: %@", v3);

  v4 = [v1 objectForKeyedSubscript:@"Output"];
  v5 = [v4 dataUsingEncoding:4];

  v9 = 0;
  v10 = 0;
  v6 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:&v10 error:&v9];
  NSLog(@"plist is %@", v6);
  v7 = [v6 objectForKey:@"boot-args"];

  return v7;
}

uint64_t sub_10000403C()
{
  v0 = sub_100003ED8();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 containsString:@"rd=md0"];
    v3 = v2 == 0;
    if (v2)
    {
      v4 = @"Ramdisk";
    }

    else
    {
      v4 = @"NonUI";
    }

    if (v3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    NSLog(&v4->isa);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000041E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004204(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
  v5 = [v4 lastPathComponent];
  v6 = [NSString stringWithFormat:@"Got xpc remote connection: 0x%lx.", v3];
  sub_100006E34(2, @"[%@:%d] %@\n", v7, v8, v9, v10, v11, v12, v5);

  v31 = *(a1 + 32);
  objc_copyWeak(&v33, (a1 + 40));
  v32 = v3;
  xpc_remote_connection_set_event_handler();
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
  v14 = [v13 lastPathComponent];
  v15 = [NSString stringWithFormat:@"Done with set_event_handler for remote connection."];
  sub_100006E34(2, @"[%@:%d] %@\n", v16, v17, v18, v19, v20, v21, v14);

  xpc_remote_connection_activate();
  v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
  v23 = [v22 lastPathComponent];
  v30 = [NSString stringWithFormat:@"remote coonnection activated."];
  sub_100006E34(2, @"[%@:%d] %@\n", v24, v25, v26, v27, v28, v29, v23);

  objc_destroyWeak(&v33);
}

void sub_100004418(id *a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
  v5 = [v4 lastPathComponent];
  v14 = [NSString stringWithFormat:@"Got an event on xpc remote connection."];
  sub_100006E34(2, @"[%@:%d] %@\n", v6, v7, v8, v9, v10, v11, v5);

  v12 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004564;
  block[3] = &unk_1000105F0;
  objc_copyWeak(&v18, a1 + 6);
  v16 = v3;
  v17 = a1[5];
  v13 = v3;
  dispatch_async(v12, block);

  objc_destroyWeak(&v18);
}

void sub_100004564(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained handleEvent:*(a1 + 32) from:*(a1 + 40)];
}

BOOL sub_100005128()
{
  if (!&_lockdown_copy_checkin_info)
  {
    v0 = getLogHandle();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "lockdown service not found on this system", v2, 2u);
    }
  }

  return &_lockdown_copy_checkin_info != 0;
}

id sub_1000051B4()
{
  v0 = [NSMutableData dataWithLength:0];
  while (1)
  {
    v1 = lockdown_recv();
    if (v1)
    {
      break;
    }

    sleep(1u);
  }

  if (v1 == 4)
  {
    v2 = getLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Start receiving from the lockdown connection. Buffer size = %lu\n", buf, 0xCu);
    }

    v6 = getLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 134217984;
      v9 = [v0 length];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Done receiving from the lockdown connection. Total received size = %lu\n", v8, 0xCu);
    }

    v5 = sub_1000012E4(v0);
  }

  else
  {
    v4 = getLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to receive the size of the message.\n", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

id sub_100005444(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (!v2)
  {
    v4 = getLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "response pointer is NULL\n", buf, 2u);
    }

    goto LABEL_20;
  }

  v4 = sub_1000014A8(v2);
  v5 = [v4 length];
  v16 = v5;
  if (v5 > 0xA00000)
  {
    v6 = getLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v18) = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Size of message is too long: %u.\n", buf, 8u);
    }

LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  v7 = [v4 bytes];
  v8 = lockdown_send();
  v9 = getLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 != 4)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to send the size of the message.\n", buf, 2u);
    }

    goto LABEL_20;
  }

  if (v10)
  {
    *buf = 134217984;
    v18 = v16;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Start sending to the lockdown connection. Buffer size = %lu\n", buf, 0xCu);
  }

  for (; v16; v16 -= v11)
  {
    v11 = lockdown_send();
    if (!v11)
    {
      break;
    }

    v7 += v11;
  }

  v12 = getLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v4 length];
    *buf = 134217984;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Done sending to the lockdown connection. Total sent size = %lu\n", buf, 0xCu);
  }

  v14 = [v4 length];
LABEL_21:

  return v14;
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  sub_100006D08("com.apple.fusiond");
  v1 = dispatch_get_global_queue(0, 0);
  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v1);

  dispatch_source_set_event_handler(v2, &stru_100010680);
  dispatch_resume(v2);
  if (sub_100005128())
  {
    mach_service = xpc_connection_create_mach_service("com.apple.fusiond", 0, 1uLL);
    if (!mach_service)
    {
      v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/fusiond.m"];
      v5 = [v4 lastPathComponent];
      v20 = [NSString stringWithFormat:@"Could not create listener for %s", "com.apple.fusiond"];
      sub_100006E34(4, @"[%@:%d] %@\n", v6, v7, v8, v9, v10, v11, v5);

      exit(1);
    }

    v17 = mach_service;
    v18 = getLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Handle connection\n", buf, 2u);
    }

    xpc_connection_set_event_handler(v17, &stru_1000106C0);
    xpc_connection_resume(v17);
  }

  else
  {
    v12 = dispatch_queue_create("com.apple.fusiond.message", 0);
    v13 = qword_100014C68;
    qword_100014C68 = v12;

    v14 = dispatch_queue_create("com.apple.fusion.remote.xpc_listener", 0);
    remote_service_listener = xpc_remote_connection_create_remote_service_listener();
    xpc_remote_connection_set_event_handler();
    xpc_remote_connection_activate();
    v16 = getLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "com.apple.fusiond is alive on RemoteXPC", buf, 2u);
    }
  }

  v19 = getLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "com.apple.fusiond";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s started\n", buf, 0xCu);
  }

  dispatch_main();
}

void sub_10000596C(id a1)
{
  v1 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/fusiond.m"];
  v2 = [v1 lastPathComponent];
  v9 = [NSString stringWithFormat:@"Got SIGTERM, exiting now.\n"];
  sub_100006E34(4, @"[%@:%d] %@\n", v3, v4, v5, v6, v7, v8, v2);

  exit(0);
}

void sub_1000059F4(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = getLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got a connection %p", buf, 0xCu);
  }

  type = xpc_get_type(v2);
  if (type == &_xpc_type_connection)
  {
    xpc_connection_set_event_handler(v2, &stru_1000106E0);
    xpc_connection_resume(v2);
  }

  else
  {
    v5 = type;
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/fusiond.m"];
    v7 = [v6 lastPathComponent];
    v14 = [NSString stringWithFormat:@"Failed to get a connection: %p\n", v5];
    sub_100006E34(4, @"[%@:%d] %@\n", v8, v9, v10, v11, v12, v13, v7);
  }
}

void sub_100005B60(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = getLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got an xpc message\n", buf, 2u);
  }

  if (v2 == &_xpc_error_connection_invalid)
  {
    v22 = getLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Got an invalid connection\n", buf, 2u);
    }
  }

  else
  {
    if (lockdown_copy_checkin_info())
    {
      v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/fusiond.m"];
      v5 = [v4 lastPathComponent];
      v23 = [NSString stringWithFormat:@"Failed to get lockdown checkin info\n"];
      sub_100006E34(4, @"[%@:%d] %@\n", v6, v7, v8, v9, v10, v11, v5);
    }

    values = 0;
    keys = kLockdownCheckinConnectionInfoKey;
    v12 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v13 = secure_lockdown_checkin();
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/fusiond.m"];
    v15 = [v14 lastPathComponent];
    v24 = [NSString stringWithFormat:@"Could not checkin with lockdown: %d\n", v13];
    sub_100006E34(4, @"[%@:%d] %@\n", v16, v17, v18, v19, v20, v21, v15);

    if (v12)
    {
      CFRelease(v12);
    }
  }
}

void sub_100005F24(uint64_t a1)
{
  v2 = getLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "hcs cancel handler is called", v4, 2u);
  }

  v3 = *(a1 + 32);
  lockdown_disconnect();
  xpc_transaction_end();
}

void sub_100005FA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = objc_autoreleasePoolPush();
  v5 = sub_1000051B4();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"SerializedObject"];
    v8 = getLogHandle();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      v25 = v3;
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Start processing the message received.\n", buf, 2u);
      }

      v24 = v2;

      v10 = objc_alloc_init(HSMessageProcessor);
      v11 = +[HSMessage supportedClasses];
      v12 = [NSKeyedUnarchiver unarchiveDataToObject:v7 allowedClasses:v11];
      objc_opt_class();
      v13 = v4;
      if (objc_opt_isKindOfClass())
      {
        v14 = v12;
      }

      else
      {
        v19 = getLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100009420();
        }

        v14 = 0;
      }

      *v26 = 0;
      [(HSMessageProcessor *)v10 processMessagev1:v14 response:v26];
      v20 = *v26;
      v21 = getLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Response: %@\n", buf, 0xCu);
      }

      v22 = v20;
      v16 = [NSKeyedArchiver archiveObjectToDict:v22];

      v4 = v13;
      v2 = v24;
      v3 = v25;
    }

    else
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Start processing the message received.\n", buf, 2u);
      }

      v10 = objc_alloc_init(HSMessageProcessor);
      *buf = 0;
      v15 = [(HSMessageProcessor *)v10 processMessage:v6 response:buf];
      v16 = *buf;
      if (v15)
      {
        v17 = getLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100009494();
        }
      }

      v18 = getLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Response:\n", v26, 2u);
      }

      if (v16)
      {
        [v16 enumerateKeysAndObjectsUsingBlock:&stru_100010768];
      }

      else
      {
        v23 = [NSNumber numberWithInt:6];
        v16 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v23, @"Status", @"Failed to get a response from the device.", @"Error", 0, @"Data", 0];
      }
    }

    if (!sub_100005444(v2, v16))
    {
      sub_1000094D4();
    }
  }

  else
  {
    sub_100009568();
  }

  objc_autoreleasePoolPop(v4);
  dispatch_source_cancel(*(a1 + 32));
}

void sub_100006394(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  if (([v5 isEqualToString:@"Data"] & 1) == 0)
  {
    v7 = getLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "key = %@, value = %@", &v8, 0x16u);
    }
  }
}

void sub_10000647C(id a1, OS_xpc_object *a2)
{
  v3 = a2;
  v2 = v3;
  xpc_remote_connection_set_event_handler();
  xpc_remote_connection_activate();
}

void sub_100006510(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    v5 = *(a1 + 32);
    xpc_remote_connection_cancel();
  }

  else
  {
    v4 = qword_100014C68;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000065E8;
    v6[3] = &unk_100010588;
    v7 = *(a1 + 32);
    v8 = v3;
    dispatch_sync(v4, v6);
  }
}

void sub_1000065E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  v4 = getLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "void _handle_remote_xpc_message(__strong xpc_remote_connection_t, __strong xpc_object_t)";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Inside %s", buf, 0xCu);
  }

  reply = xpc_dictionary_create_reply(v3);
  if (!reply)
  {
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/fusiond.m"];
    v9 = [v8 lastPathComponent];
    v34 = [NSString stringWithFormat:@"RemoteXPC no reply context"];
    sub_100006E34(4, @"[%@:%d] %@\n", v10, v11, v12, v13, v14, v15, v9);

    xpc_remote_connection_cancel();
    goto LABEL_39;
  }

  if (!xpc_dictionary_get_string(v3, "RemotePing"))
  {
    length = 0;
    data = xpc_dictionary_get_data(v3, "SerializedObject", &length);
    if (!data)
    {
      v19 = getLogHandle();
      if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &v19->super, OS_LOG_TYPE_DEFAULT, "Message Data is NULL.", buf, 2u);
      }

      goto LABEL_38;
    }

    v17 = [NSData dataWithBytes:data length:length];
    if (v17)
    {
      v18 = getLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Start processing the message received with request data.\n", buf, 2u);
      }

      v19 = objc_alloc_init(HSMessageProcessor);
      v20 = +[HSMessage supportedClasses];
      v21 = [NSKeyedUnarchiver unarchiveDataToObject:v17 allowedClasses:v20];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v28 = getLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100009420();
        }

        v22 = 0;
      }

      v35 = 0;
      [(HSMessageProcessor *)v19 processMessagev1:v22 response:&v35];
      v29 = v35;
      v30 = getLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v29;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Response: %@\n", buf, 0xCu);
      }

      v31 = v29;
      v25 = [NSKeyedArchiver archiveObjectToDict:v31];
    }

    else
    {
      if (!v3)
      {
        v25 = 0;
        v19 = 0;
        goto LABEL_35;
      }

      v23 = getLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Start processing the message received without request data.\n", buf, 2u);
      }

      v19 = objc_alloc_init(HSMessageProcessor);
      v35 = 0;
      v24 = [(HSMessageProcessor *)v19 processMessage:v3 response:&v35];
      v25 = v35;
      if (v24)
      {
        v26 = getLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100009494();
        }
      }

      v27 = getLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Response:\n", buf, 2u);
      }

      if (v25)
      {
        [v25 enumerateKeysAndObjectsUsingBlock:&stru_1000107D0];
LABEL_35:
        v32 = getLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = v25;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Start Replying for response... %@", buf, 0xCu);
        }

        v33 = sub_1000014A8(v25);
        xpc_dictionary_set_data(reply, "SerializedObject", [v33 bytes], objc_msgSend(v33, "length"));
        xpc_dictionary_send_reply();

LABEL_38:
        goto LABEL_39;
      }

      v20 = [NSNumber numberWithInt:6];
      v25 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v20, @"Status", @"Failed to get a response from the device.", @"Error", 0, @"Data", 0];
    }

    goto LABEL_35;
  }

  v6 = xpc_remote_connection_copy_remote_address_string();
  v7 = getLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Start Replying ...", buf, 2u);
  }

  xpc_dictionary_set_string(reply, "RemotePing", v6);
  xpc_dictionary_send_reply();
LABEL_39:
}

void sub_100006C14(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  if (([v5 isEqualToString:@"Data"] & 1) == 0)
  {
    v7 = getLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "key = %@, value = %@", &v8, 0x16u);
    }
  }
}

void sub_100006D08(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006D90;
  block[3] = &unk_100010700;
  block[4] = a1;
  if (qword_100014C70 != -1)
  {
    dispatch_once(&qword_100014C70, block);
  }
}

void sub_100006D90(uint64_t a1)
{
  byte_100014C80 = 1;
  if (*(a1 + 32))
  {
    v2 = [NSString stringWithUTF8String:?];
    v3 = qword_100014C78;
    qword_100014C78 = v2;

    v4 = *(a1 + 32);
  }

  else
  {
    v4 = "com.apple.fusiond";
  }

  v5 = os_log_create(v4, "device");
  v6 = qword_100014C88;
  qword_100014C88 = v5;

  if (!qword_100014C88 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100009604();
  }
}

void sub_100006E34(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = [[NSMutableString alloc] initWithFormat:v10 arguments:&a9];

  v12 = objc_alloc_init(NSDateFormatter);
  [v12 setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
  v13 = +[NSDate date];
  v14 = [v12 stringFromDate:v13];
  v15 = [NSString stringWithFormat:@"%@-%@", v14, v11];

  if (a1 > 2)
  {
    if (a1 == 4)
    {
      v24 = qword_100014C88;
      if (os_log_type_enabled(qword_100014C88, OS_LOG_TYPE_ERROR))
      {
        sub_10000964C(v15, v24);
      }
    }

    else if (a1 == 3)
    {
      v21 = qword_100014C88;
      if (os_log_type_enabled(qword_100014C88, OS_LOG_TYPE_DEBUG))
      {
        sub_1000096F0(v15, v21);
      }
    }
  }

  else
  {
    if (a1 == 1)
    {
      v22 = qword_100014C88;
      if (!os_log_type_enabled(qword_100014C88, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v23 = v15;
      v18 = v22;
      *buf = 136315138;
      v29 = [v15 UTF8String];
      v19 = v18;
      v20 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_12;
    }

    if (a1 == 2)
    {
      v16 = qword_100014C88;
      if (os_log_type_enabled(qword_100014C88, OS_LOG_TYPE_INFO))
      {
        v17 = v15;
        v18 = v16;
        *buf = 136315138;
        v29 = [v15 UTF8String];
        v19 = v18;
        v20 = OS_LOG_TYPE_INFO;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v19, v20, "%s", buf, 0xCu);
      }
    }
  }

LABEL_15:
  if (qword_100014C78)
  {
    v25 = [NSString stringWithFormat:@"/private/var/log/%@.log", qword_100014C78];
    v26 = fopen([v25 UTF8String], "a+");
    if (v26)
    {
      v27 = v26;
      fwrite([v15 UTF8String], objc_msgSend(v15, "length"), 1uLL, v26);
      fflush(v27);
      fclose(v27);
    }
  }
}

id sub_100007118(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100007184(uint64_t a1)
{
  v21 = 0;
  v1 = [NSString stringWithContentsOfFile:a1 encoding:1 error:&v21];
  v2 = v21;
  v3 = [v1 componentsSeparatedByString:@"\n"];
  v4 = [[NSData alloc] initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v20 = 0;
  v5 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v20];
  v6 = v20;

  v7 = [v5 objectForKey:@"ProductBuildVersion"];
  if ([v3 count])
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v13 = v6;
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v17 = [v3 objectAtIndexedSubscript:0];
  v9 = 1;
  v10 = [v17 dataUsingEncoding:1];
  v19 = v6;
  [NSJSONSerialization JSONObjectWithData:v10 options:1 error:&v19];
  v18 = v4;
  v12 = v11 = v1;
  v13 = v19;

  v14 = [v12 objectForKey:@"os_version"];
  v15 = [v14 containsString:v7];

  v1 = v11;
  v4 = v18;

  if ((v15 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

uint64_t sub_100007360(void *a1)
{
  v2 = &lockdown_copy_checkin_info_ptr;
  v3 = objc_alloc_init(NSMutableDictionary);
  v138 = 0;
  v121 = objc_alloc_init(NSMutableArray);
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v119 = [&off_100011F98 countByEnumeratingWithState:&v134 objects:v140 count:16];
  v120 = v3;
  v4 = 0;
  if (!v119)
  {
    v122 = 0;
    v124 = 0;
    goto LABEL_42;
  }

  v122 = 0;
  v124 = 0;
  v118 = *v135;
  v116 = a1;
  do
  {
    for (i = 0; i != v119; i = i + 1)
    {
      if (*v135 != v118)
      {
        objc_enumerationMutation(&off_100011F98);
      }

      v6 = *(*(&v134 + 1) + 8 * i);
      v7 = +[NSFileManager defaultManager];
      v126 = v6;
      LODWORD(v6) = [v7 fileExistsAtPath:v6 isDirectory:&v138];

      if (!v6)
      {
        v79 = i;
        v80 = @"Log directory not found";
LABEL_36:
        v81 = v2[168];
        v82 = [NSNumber numberWithInt:43];
        v83 = [v81 dictionaryWithObjectsAndKeys:{v82, @"Status", v80, @"Error", 0}];

        v84 = v83;
        *a1 = v83;
        v78 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSLog.m"];
        v11 = [v78 lastPathComponent];
        v114 = [NSString stringWithFormat:@" Response dict populated: %@", v83];
        sub_100006E34(2, @"[%@:%d] %@\n", v85, v86, v87, v88, v89, v90, v11);

        v120 = v83;
        i = v79;
        goto LABEL_38;
      }

      if (v138 != 1)
      {
        v79 = i;
        v80 = @"Log directory expected. but found file";
        goto LABEL_36;
      }

      v8 = +[NSFileManager defaultManager];
      v133 = v124;
      v9 = [v8 contentsOfDirectoryAtPath:v126 error:&v133];
      v10 = v133;

      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v129 objects:v139 count:16];
      if (v12)
      {
        v13 = v12;
        obj = v11;
        v117 = i;
        v125 = *v130;
        while (1)
        {
          v14 = 0;
          do
          {
            if (*v130 != v125)
            {
              objc_enumerationMutation(obj);
            }

            v15 = [v126 stringByAppendingPathComponent:*(*(&v129 + 1) + 8 * v14)];
            v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSLog.m"];
            v17 = [v16 lastPathComponent];
            v108 = [NSString stringWithFormat:@"File Name: %@", v15];
            sub_100006E34(2, @"[%@:%d] %@\n", v18, v19, v20, v21, v22, v23, v17);

            if (([v15 hasSuffix:@".ips"] & 1) == 0 && !objc_msgSend(v15, "hasSuffix:", @".log"))
            {
              v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSLog.m"];
              v33 = [v24 lastPathComponent];
              v110 = [NSString stringWithFormat:@"Suffix Mismatch . Skipping file : %@", v15, 152, v108];
              sub_100006E34(2, @"[%@:%d] %@\n", v51, v52, v53, v54, v55, v56, v33);

              goto LABEL_29;
            }

            v24 = objc_alloc_init(v2[168]);
            v25 = +[NSFileManager defaultManager];
            v128 = v10;
            v26 = [v25 attributesOfItemAtPath:v15 error:&v128];
            v27 = v128;

            if (!v26)
            {
              v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSLog.m"];
              v44 = [v33 lastPathComponent];
              v109 = [NSString stringWithFormat:@"Failed to retrieve attributes for %@: (%@)", v15, v27, v108];
              sub_100006E34(2, @"[%@:%d] %@\n", v45, v46, v47, v48, v49, v50, v44);

LABEL_25:
              v4 = v26;
              goto LABEL_28;
            }

            v28 = [v26 objectForKeyedSubscript:NSFileSize];
            v29 = sub_100007118(v28);

            if (!v29)
            {
              v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSLog.m"];
              v57 = [v33 lastPathComponent];
              v111 = [NSString stringWithFormat:@"Failed to retrieve size of %@.", v15, 152, v108];
              sub_100006E34(2, @"[%@:%d] %@\n", v58, v59, v60, v61, v62, v63, v57);

              goto LABEL_25;
            }

            v30 = [v15 hasPrefix:@"panic"];
            v31 = @"NO";
            if (!v30)
            {
              goto LABEL_20;
            }

            v32 = sub_100007184(v15);
            v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSLog.m"];
            v34 = [v33 lastPathComponent];
            if (v32)
            {
              v108 = [NSString stringWithFormat:@"Panic Version and System Version matches. Sending to HOST"];
              sub_100006E34(2, @"[%@:%d] %@\n", v35, v36, v37, v38, v39, v40, v34);

              v31 = @"YES";
              v2 = &lockdown_copy_checkin_info_ptr;
LABEL_20:
              [v24 setObject:v31 forKey:@"isPanic"];
              v41 = [NSData alloc];
              v127 = v122;
              v33 = [v41 initWithContentsOfFile:v15 options:0 error:&v127];
              v42 = v127;

              if (v33)
              {
                [v24 setObject:v15 forKey:@"LogFileName"];
                v43 = [v26 objectForKeyedSubscript:NSFileSize];
                [v24 setObject:v43 forKey:@"LogFileSize"];

                [v24 setObject:v33 forKey:@"LogFileData"];
                [v121 addObject:v24];
              }

              else
              {
                v33 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSLog.m"];
                v64 = [v33 lastPathComponent];
                v112 = [NSString stringWithFormat:@"Failed to load %@: %@", v15, v42, v108];
                sub_100006E34(2, @"[%@:%d] %@\n", v65, v66, v67, v68, v69, v70, v64);

                v2 = &lockdown_copy_checkin_info_ptr;
              }

              v4 = v26;
              v122 = v42;
LABEL_28:
              v10 = v27;
              goto LABEL_29;
            }

            v113 = [NSString stringWithFormat:@"Panic Version and System Version does not match. Skipping"];
            sub_100006E34(2, @"[%@:%d] %@\n", v71, v72, v73, v74, v75, v76, v34);

            v4 = v26;
            v10 = v27;
            v2 = &lockdown_copy_checkin_info_ptr;
LABEL_29:

            v14 = v14 + 1;
          }

          while (v13 != v14);
          v77 = [obj countByEnumeratingWithState:&v129 objects:v139 count:16];
          v13 = v77;
          if (!v77)
          {
            v11 = obj;
            v78 = obj;
            v124 = v10;
            a1 = v116;
            i = v117;
            goto LABEL_38;
          }
        }
      }

      v78 = v11;
      v124 = v10;
      a1 = v116;
LABEL_38:
    }

    v119 = [&off_100011F98 countByEnumeratingWithState:&v134 objects:v140 count:16];
  }

  while (v119);
LABEL_42:
  v91 = [v121 count];
  v92 = v2[168];
  if (v91)
  {
    v93 = 0;
  }

  else
  {
    v93 = 45;
  }

  if (v91)
  {
    v94 = v121;
  }

  else
  {
    v94 = 0;
  }

  if (v91)
  {
    v95 = 0;
  }

  else
  {
    v95 = 45;
  }

  v96 = [NSNumber numberWithInt:v93];
  v97 = [v92 dictionaryWithObjectsAndKeys:{v96, @"Status", &stru_1000108B0, @"Error", v94, @"Data", 0}];

  v98 = v97;
  *a1 = v97;
  v99 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSLog.m"];
  v100 = [v99 lastPathComponent];
  v115 = [NSString stringWithFormat:@" Returning Status: %d", v95];
  sub_100006E34(2, @"[%@:%d] %@\n", v101, v102, v103, v104, v105, v106, v100);

  return v93;
}

void sub_100007EB0(id a1)
{
  if (reboot3())
  {
    v1 = -1;
  }

  else
  {
    v1 = 0;
  }

  exit(v1);
}

void sub_1000086EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008710(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
  v5 = [v4 lastPathComponent];
  v12 = [NSString stringWithFormat:@"Got xpc remote connection: 0x%lx.", v3];
  sub_100006E34(2, @"[%@:%d] %@\n", v6, v7, v8, v9, v10, v11, v5);

  v13 = *(a1 + 32);
  objc_copyWeak(&v15, (a1 + 40));
  v14 = v3;
  xpc_remote_connection_set_event_handler();
  xpc_remote_connection_activate();

  objc_destroyWeak(&v15);
}

void sub_10000885C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
  v5 = [v4 lastPathComponent];
  v14 = [NSString stringWithFormat:@"Got an event on xpc remote connection."];
  sub_100006E34(2, @"[%@:%d] %@\n", v6, v7, v8, v9, v10, v11, v5);

  v12 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000089A8;
  block[3] = &unk_1000105F0;
  objc_copyWeak(&v18, a1 + 6);
  v16 = v3;
  v17 = a1[5];
  v13 = v3;
  dispatch_async(v12, block);

  objc_destroyWeak(&v18);
}

void sub_1000089A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained handleEvent:*(a1 + 32) from:*(a1 + 40)];
}

void sub_100009064()
{
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  v0 = [v8 lastPathComponent];
  v7 = [NSString stringWithFormat:@"Input response dictionary pointer is NULL."];
  sub_100006E34(4, @"[%@:%d] %@\n", v1, v2, v3, v4, v5, v6, v0);
}

void sub_100009100()
{
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/Common/HSPipeUtil.m"];
  v0 = [v8 lastPathComponent];
  v7 = [NSString stringWithFormat:@"Input response dictionary pointer is NULL."];
  sub_100006E34(4, @"[%@:%d] %@\n", v1, v2, v3, v4, v5, v6, v0);
}

void sub_1000091B0()
{
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/HSSepUtil/HSSepUtil.m"];
  v0 = [v8 lastPathComponent];
  v7 = [NSString stringWithFormat:@"Input response dictionary pointer is NULL."];
  sub_100006E34(4, @"[%@:%d] %@\n", v1, v2, v3, v4, v5, v6, v0);
}

uint64_t sub_10000924C(char a1)
{
  v2 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
  v3 = [v2 lastPathComponent];
  v11 = [NSString stringWithFormat:@"Process message failed."];
  sub_100006E34(4, @"[%@:%d] %@\n", v4, v5, v6, v7, v8, v9, v3);

  return a1 & 1;
}

void sub_1000092E8()
{
  v0 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
  v1 = [v0 lastPathComponent];
  v8 = [NSString stringWithFormat:@"Cannot find command from in-coming message."];
  sub_100006E34(4, @"[%@:%d] %@\n", v2, v3, v4, v5, v6, v7, v1);
}

void sub_10000937C(uint64_t a1, uint64_t a2)
{
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSMessaging.m"];
  v5 = [v4 lastPathComponent];
  v12 = [NSString stringWithFormat:a1, a2];
  sub_100006E34(2, @"[%@:%d] %@\n", v6, v7, v8, v9, v10, v11, v5);
}

void sub_1000094D4()
{
  v0 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/fusiond.m"];
  v1 = [v0 lastPathComponent];
  v8 = [NSString stringWithFormat:@"Failed to send message to the host"];
  sub_100006E34(4, @"[%@:%d] %@\n", v2, v3, v4, v5, v6, v7, v1);
}

void sub_100009568()
{
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/fusiond.m"];
  v0 = [v8 lastPathComponent];
  v7 = [NSString stringWithFormat:@"Didn't get an error from lockdown but the message is NULL"];
  sub_100006E34(4, @"[%@:%d] %@\n", v1, v2, v3, v4, v5, v6, v0);
}

void sub_10000964C(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = 136315138;
  v7 = [a1 UTF8String];
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s", &v6, 0xCu);
}

void sub_1000096F0(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = 136315138;
  v7 = [a1 UTF8String];
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s", &v6, 0xCu);
}

void sub_100009794()
{
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/HSMessageProcessor.m"];
  v0 = [v8 lastPathComponent];
  v7 = [NSString stringWithFormat:@"Input response dictionary pointer is NULL."];
  sub_100006E34(4, @"[%@:%d] %@\n", v1, v2, v3, v4, v5, v6, v0);
}

void sub_100009830(uint64_t a1, void *a2)
{
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
  v5 = [v4 lastPathComponent];
  v12 = [NSString stringWithFormat:@"File does not exist: %@.", a1];
  sub_100006E34(2, @"[%@:%d] %@\n", v6, v7, v8, v9, v10, v11, v5);

  xpc_dictionary_set_string(a2, "error", "File does not exist");
}

void sub_1000098FC(void *a1, void *a2)
{
  v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
  v4 = [v3 lastPathComponent];
  v11 = [NSString stringWithFormat:@"File to retrieve is too big. Limit is 10M."];
  sub_100006E34(2, @"[%@:%d] %@\n", v5, v6, v7, v8, v9, v10, v4);

  xpc_dictionary_set_string(a1, "error", "File to retrieve is too big. Limit is 10M.");
}

void sub_1000099C4(void *a1)
{
  v2 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ComponentCheck/Daemon/CCCommunication/HSFileTransfer.m"];
  v3 = [v2 lastPathComponent];
  v10 = [NSString stringWithFormat:@"Only files under /private/var/mobile/Media/FactoryLogs can be copied."];
  sub_100006E34(2, @"[%@:%d] %@\n", v4, v5, v6, v7, v8, v9, v3);

  xpc_dictionary_set_string(a1, "error", "Only files under /private/var/mobile/Media/FactoryLogs can be copied.");
}