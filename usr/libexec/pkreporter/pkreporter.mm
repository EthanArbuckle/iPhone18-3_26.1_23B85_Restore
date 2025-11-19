uint64_t start(int a1, char **a2)
{
  v10 = 0;
  while (1)
  {
    v4 = getopt_long(a1, a2, "dv", &off_100004138, &v10);
    v5 = &dword_100008088;
    if (v4 == 100)
    {
      goto LABEL_2;
    }

    if (v4 != 118)
    {
      break;
    }

    v5 = &dword_10000808C;
LABEL_2:
    ++*v5;
  }

  if (v4 != -1)
  {
    fwrite("Usage: \tpkreporter [-d|--debug] [-v|--verbose]\n", 0x2FuLL, 1uLL, __stderrp);
    exit(2);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = +[PKHost defaultHost];
  [v7 discoverPlugInsForAttributes:&__NSDictionary0__struct flags:512 found:&stru_100004198];

  objc_autoreleasePoolPop(v6);
  v8 = +[NSRunLoop currentRunLoop];
  [v8 run];

  return 0;
}

void sub_100000B4C(id a1, NSSet *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v13 = v5;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14 = [(NSError *)v13 localizedDescription];
      *buf = 138543362;
      *v77 = v14;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Discovery of plugins fails: %{public}@", buf, 0xCu);
    }

    exit(1);
  }

  v6 = +[NSMutableDictionary dictionary];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v7 = v4;
  v8 = [(NSSet *)v7 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v8)
  {
    v15 = *v70;
    v16 = PKProtocolAttribute;
    do
    {
      v17 = 0;
      if (v8 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v8;
      }

      do
      {
        if (*v70 != v15)
        {
          objc_enumerationMutation(v7);
        }

        v19 = *(*(&v69 + 1) + 8 * v17);
        v20 = [v19 attributes];
        v21 = [v20 objectForKeyedSubscript:v16];

        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = @"*Unknown*";
        }

        v23 = [v6 objectForKeyedSubscript:v22];
        if (!v23)
        {
          v23 = +[NSMutableSet set];
          [v6 setObject:v23 forKeyedSubscript:v22];
        }

        [v23 addObject:v19];

        ++v17;
      }

      while (v18 != v17);
      v8 = [(NSSet *)v7 countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v8);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
  v10 = 0;
  if (!v9)
  {
LABEL_4:

    v11 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      if (v10)
      {
        v12 = 1 << (flsl(v10) - 1);
      }

      else
      {
        v12 = 0;
      }

      *buf = 134218240;
      *v77 = v10;
      *&v77[8] = 2048;
      *&v77[10] = v12;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Total number of plugins: %ld (%ld)", buf, 0x16u);
    }

    if (v10)
    {
      flsl(v10);
    }

    ADClientSetValueForScalarKey();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v53 = geteuid();
      v54 = [obj count];
      *buf = 67109632;
      *v77 = v53;
      *&v77[4] = 2048;
      *&v77[6] = v54;
      *&v77[14] = 2048;
      *&v77[16] = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "(UID %d) Found %lu plugin types, %ld plugins", buf, 0x1Cu);
    }

    exit(0);
  }

  v55 = *v66;
LABEL_25:
  v24 = 0;
  if (v9 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v9;
  }

  v56 = v25;
  while (1)
  {
    if (*v66 != v55)
    {
      objc_enumerationMutation(obj);
    }

    v59 = v24;
    v26 = *(*(&v65 + 1) + 8 * v24);
    v27 = [obj objectForKeyedSubscript:{v26, v55}];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v77 = v26;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v60 = v10;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v61 objects:v73 count:16];
    v58 = v26;
    v30 = 0;
    v31 = 0;
    if (v29)
    {
      v32 = *v62;
      do
      {
        v33 = 0;
        if (v29 <= 1)
        {
          v34 = 1;
        }

        else
        {
          v34 = v29;
        }

        do
        {
          if (*v62 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v35 = *(*(&v61 + 1) + 8 * v33);
          if ([v35 userElection] == 1)
          {
            ++v31;
            v36 = [v35 identifier];
            v37 = [v36 hasPrefix:@"com.apple."];

            v30 += v37 ^ 1;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            v38 = [v35 identifier];
            v39 = [v35 userElection];
            *buf = 138412546;
            *v77 = v38;
            *&v77[8] = 2048;
            *&v77[10] = v39;
            _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "\t%@ - election: %ld", buf, 0x16u);
          }

          ++v33;
        }

        while (v34 != v33);
        v29 = [v28 countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v29);
    }

    v40 = [v28 count];
    v41 = [v28 count];
    v42 = v58;
    v43 = &_os_log_default;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_48;
    }

    if (v40)
    {
      v47 = 1 << (flsl(v40) - 1);
      if (v31)
      {
LABEL_58:
        v48 = 1 << (flsl(v31) - 1);
        if (!v30)
        {
          goto LABEL_62;
        }

        goto LABEL_59;
      }
    }

    else
    {
      v47 = 0;
      if (v31)
      {
        goto LABEL_58;
      }
    }

    v48 = 0;
    if (!v30)
    {
LABEL_62:
      v49 = 0;
      goto LABEL_63;
    }

LABEL_59:
    v49 = 1 << (flsl(v30) - 1);
LABEL_63:
    v50 = v41 - v31;
    if (v41 == v31)
    {
      v51 = 0;
    }

    else
    {
      v52 = flsl(v50);
      v50 = v41 - v31;
      v51 = 1 << (v52 - 1);
    }

    *buf = 138414338;
    *v77 = v42;
    *&v77[8] = 2048;
    *&v77[10] = v40;
    *&v77[18] = 2048;
    *&v77[20] = v47;
    v78 = 2048;
    v79 = v31;
    v80 = 2048;
    v81 = v48;
    v82 = 2048;
    v83 = v30;
    v84 = 2048;
    v85 = v49;
    v86 = 2048;
    v87 = v50;
    v88 = 2048;
    v89 = v51;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "plugin type: %@: %ld (%ld) plugins; %ld (%ld) enabled; %ld (%ld) enabled 3rd party; %ld (%ld) disabled", buf, 0x5Cu);
LABEL_48:

    if (v40)
    {
      flsl(v40);
    }

    if (v31)
    {
      flsl(v31);
    }

    v44 = v42;
    if (qword_100008090 != -1)
    {
      dispatch_once(&qword_100008090, &stru_1000041D8);
    }

    v45 = [qword_100008098 objectForKeyedSubscript:v44];
    v46 = v45;
    if (v45)
    {
      [v45 stringByAppendingString:@".extensionsinstalled"];
      ADClientSetValueForScalarKey();
      [v46 stringByAppendingString:@".enabled"];
      ADClientSetValueForScalarKey();
    }

    v10 = &v60[[v28 count]];
    v24 = v59 + 1;
    if (v59 + 1 == v56)
    {
      v9 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (!v9)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }
}

void sub_100001314(id a1)
{
  v1 = qword_100008098;
  qword_100008098 = &off_100004520;
}