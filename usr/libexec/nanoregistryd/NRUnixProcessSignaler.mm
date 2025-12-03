@interface NRUnixProcessSignaler
+ (BOOL)signalProcessNamed:(id)named withSignal:(int)signal;
+ (int)_findProcessNamed:(id)named;
+ (int)findProcessNamed:(id)named;
@end

@implementation NRUnixProcessSignaler

+ (int)_findProcessNamed:(id)named
{
  namedCopy = named;
  for (i = 0; ; i = 0)
  {
    *size = 0;
    v5 = sysctl(dword_1001263F8, 3u, 0, size, 0, 0);
    if (v5 == -1)
    {
      v5 = *__error();
    }

    if (v5)
    {
      break;
    }

    i = malloc_type_malloc(*size, 0x82379833uLL);
    if (!i)
    {
      v5 = 12;
      break;
    }

    v5 = sysctl(dword_1001263F8, 3u, i, size, 0, 0);
    if (v5 == -1)
    {
      v5 = *__error();
    }

    if (v5 != 12)
    {
      if (v5)
      {
        v6 = 1;
        goto LABEL_14;
      }

      break;
    }

    free(i);
  }

  v6 = v5 != 0;
LABEL_14:
  if (v6 && i != 0)
  {
    free(i);
    i = 0;
  }

  if (v6)
  {
    if (v5 || !i)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (!v5 && i)
  {
    if (*size >= 0x288uLL)
    {
      v8 = *size / 0x288uLL;
      v9 = i + 243;
      while (1)
      {
        v10 = *(v9 - 203);
        if (!strcmp(v9, [namedCopy UTF8String]))
        {
          break;
        }

        v9 += 648;
        if (!--v8)
        {
          goto LABEL_29;
        }
      }

      free(i);
      if (v10 != -1)
      {
        v17 = nr_daemon_log();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

        if (!v18)
        {
          goto LABEL_39;
        }

        v13 = nr_daemon_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *size = 138412546;
          *&size[4] = namedCopy;
          v20 = 2048;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NRUnixProcessSignaler: Found process %@ PID %ld", size, 0x16u);
        }

        goto LABEL_37;
      }

LABEL_30:
      v11 = nr_daemon_log();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v13 = nr_daemon_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *size = 138412290;
          *&size[4] = namedCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NRUnixProcessSignaler: Did not find process %@", size, 0xCu);
        }

        goto LABEL_36;
      }

LABEL_38:
      v10 = -1;
      goto LABEL_39;
    }

LABEL_29:
    free(i);
    goto LABEL_30;
  }

LABEL_33:
  v14 = nr_daemon_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

  if (!v15)
  {
    goto LABEL_38;
  }

  v13 = nr_daemon_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1001005B0(v5, v13);
  }

LABEL_36:
  v10 = -1;
LABEL_37:

LABEL_39:
  return v10;
}

+ (int)findProcessNamed:(id)named
{
  v5 = 0;
  do
  {
    result = [self _findProcessNamed:named];
    if (v5 > 3)
    {
      break;
    }

    ++v5;
  }

  while (result == -1);
  return result;
}

+ (BOOL)signalProcessNamed:(id)named withSignal:(int)signal
{
  namedCopy = named;
  v7 = [self findProcessNamed:namedCopy];
  if (v7 == -1)
  {
    v10 = nr_daemon_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = nr_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1001006E0(namedCopy, v12);
      }

      goto LABEL_10;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v8 = v7;
  if (kill(v7, signal) == -1)
  {
    v13 = nr_daemon_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

    if (v14)
    {
      v12 = nr_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100100628(v8, namedCopy, v12);
      }

LABEL_10:

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v9 = 1;
LABEL_12:

  return v9;
}

@end