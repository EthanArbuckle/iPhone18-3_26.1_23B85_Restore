BOOL sub_100080508()
{
  if (qword_100127E28 != -1)
  {
    sub_1000BD9D4();
  }

  if (!qword_100127570)
  {
    return 0;
  }

  v14 = 0;
  v13 = 4;
  if (sysctl(dword_100127E18, qword_100127570, &v14, &v13, 0, 0))
  {
    sub_1000BD9E8(&v14);
  }

  if (byte_100127EC8 == 1)
  {
    v0 = *__error();
    v1 = sub_10003E080();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      sub_1000BDC3C(&v14);
    }

    *__error() = v0;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v3 = *__error();
    v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Memory pressure %d", v14);
    if (v4)
    {
      v5 = v4;
      CStringPtr = CFStringGetCStringPtr(v4, 0x8000100u);
      if (CStringPtr)
      {
        v7 = CStringPtr;
        v8 = 0;
      }

      else
      {
        v7 = malloc_type_calloc(0x400uLL, 1uLL, 0x9F735A8BuLL);
        CFStringGetCString(v5, v7, 1024, 0x8000100u);
        v8 = v7;
      }

      if (qword_100127ED0)
      {
        v11 = qword_100127ED0;
      }

      else
      {
        v11 = __stderrp;
      }

      fprintf(v11, "%s\n", v7);
      if (v8)
      {
        free(v8);
      }

      CFRelease(v5);
    }

    else
    {
      v9 = sub_10003E080();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1000BDCB0(&v14);
      }

      if (qword_100127ED0)
      {
        v10 = qword_100127ED0;
      }

      else
      {
        v10 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v10);
    }

    *__error() = v3;
  }

  return v14 > 3;
}

void sub_100080750(id a1)
{
  if (sysctlnametomib("kern.memorystatus_vm_pressure_level", dword_100127E18, &qword_100127570))
  {
    sub_1000BDD24();
  }
}

void sub_10008078C()
{
  if (geteuid())
  {
    sub_1000BDF38();
  }

  if (qword_100127E30 != -1)
  {
    sub_1000BE14C();
  }
}

void sub_1000807C4(id a1)
{
  memset(&v22, 0, sizeof(v22));
  v1 = stat("/private/var/db/spindump", &v22);
  if (v1)
  {
    v9 = *__error();
    if (byte_100127EC8 == 1)
    {
      v10 = *__error();
      v11 = sub_10003E080();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1000BE160();
      }

      *__error() = v10;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v13 = *__error();
      v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Creating spindump directory /private/var/db/spindump after stat said %d", v9);
      if (v14)
      {
        v15 = v14;
        CStringPtr = CFStringGetCStringPtr(v14, 0x8000100u);
        if (CStringPtr)
        {
          v17 = CStringPtr;
          v18 = 0;
        }

        else
        {
          v17 = malloc_type_calloc(0x400uLL, 1uLL, 0xE3AA1872uLL);
          CFStringGetCString(v15, v17, 1024, 0x8000100u);
          v18 = v17;
        }

        if (qword_100127ED0)
        {
          v21 = qword_100127ED0;
        }

        else
        {
          v21 = __stderrp;
        }

        fprintf(v21, "%s\n", v17);
        if (v18)
        {
          free(v18);
        }

        CFRelease(v15);
      }

      else
      {
        v19 = sub_10003E080();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          sub_1000BE1D0();
        }

        if (qword_100127ED0)
        {
          v20 = qword_100127ED0;
        }

        else
        {
          v20 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v20);
      }

      *__error() = v13;
    }

    if (mkdir("/private/var/db/spindump", 0x1EDu))
    {
      sub_1000BE240(v9);
    }
  }

  else if ((v22.st_mode & 0xF000) != 0x4000)
  {
    sub_1000BE4EC(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

_DWORD *sub_100080A90(void *a1, int *a2)
{
  v3 = *(*a1 + 4 * *a2);

  return sub_10003E020(v3);
}

void sub_100080AB0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_fault_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x12u);
}

uint64_t sub_100080AE4(const __CFString *a1, char *a2)
{

  return CFStringGetCString(a1, a2, 1024, 0x8000100u);
}

uint64_t sub_100080B60@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}

void *sub_100080B70()
{

  return malloc_type_calloc(0x400uLL, 1uLL, 0xE3AA1872uLL);
}

void sub_100080B90(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_fault_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x16u);
}

void sub_100080BB0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_fault_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x12u);
}

CFStringRef sub_100080BDC(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return CFStringCreateWithFormat(v3, 0, a3);
}

double sub_100081A04(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 machAbsTimeSeconds];
  if (v5 != 0.0)
  {
    [v4 machAbsTimeSeconds];
    if (v6 != 0.0)
    {
      [v4 machAbsTimeSeconds];
      v8 = v7;
      [v3 machAbsTimeSeconds];
LABEL_10:
      v13 = v8 - v9;
      goto LABEL_11;
    }
  }

  [v3 machContTimeSeconds];
  if (v10 != 0.0)
  {
    [v4 machContTimeSeconds];
    if (v11 != 0.0)
    {
      [v4 machContTimeSeconds];
      v8 = v12;
      [v3 machContTimeSeconds];
      goto LABEL_10;
    }
  }

  [v3 wallTime];
  v13 = 0.0;
  if (v14 != 0.0)
  {
    [v4 wallTime];
    if (v15 != 0.0)
    {
      [v4 wallTime];
      v8 = v16;
      [v3 wallTime];
      goto LABEL_10;
    }
  }

LABEL_11:

  return v13;
}

void sub_100083F04(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_100127E48;
  qword_100127E48 = v1;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.spindump.create_sampled_process", v5);
  v4 = qword_100127E50;
  qword_100127E50 = v3;
}

uint64_t sub_100083F84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100083F9C(uint64_t a1)
{
  v2 = [qword_100127E48 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (!v5)
  {
    if (*(a1 + 60) != 1)
    {
      return;
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      *v9 = 0;
    }

    if (![qword_100127E48 count])
    {
LABEL_62:
      v44 = [[SPSampledProcess alloc] initWithPid:*(a1 + 56) isWSBased:*(a1 + 62)];
      v45 = *(*(a1 + 40) + 8);
      v46 = *(v45 + 40);
      *(v45 + 40) = v44;

      [qword_100127E48 setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
      *(*(*(*(a1 + 40) + 8) + 40) + 299) = 1;
      return;
    }

    if (*(a1 + 61) != 1)
    {
      goto LABEL_5;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = [qword_100127E48 allValues];
    v11 = [v10 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (!v11)
    {
      goto LABEL_61;
    }

    v12 = v11;
    v13 = *v48;
LABEL_15:
    v14 = 0;
    while (1)
    {
      if (*v48 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v47 + 1) + 8 * v14);
      if (([v15 targetProcessId] & 0x80000000) != 0)
      {
        if (byte_100127EC8)
        {
          v32 = *__error();
          v33 = sub_10003E080();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(a1 + 56);
            *buf = 67109120;
            LODWORD(v52) = v34;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "overridden by [%d]", buf, 8u);
          }

          *__error() = v32;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 2)
        {
          goto LABEL_56;
        }

        v22 = *__error();
        v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"overridden by [%d]", *(a1 + 56));
        if (v24)
        {
          goto LABEL_41;
        }

        v25 = sub_10003E080();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          v42 = *(a1 + 56);
          *buf = 67109120;
          LODWORD(v52) = v42;
          v29 = v25;
          v30 = "Unable to format: overridden by [%d]";
          v31 = 8;
          goto LABEL_59;
        }
      }

      else
      {
        if (byte_100127EC8)
        {
          v16 = *__error();
          v17 = sub_10003E080();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = sub_10003E020([v15 targetProcessId]);
            v19 = [v15 targetProcessId];
            v20 = *(a1 + 56);
            *buf = 136446722;
            v52 = v18;
            v53 = 1024;
            v54 = v19;
            v55 = 1024;
            v56 = v20;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: overridden by [%d]", buf, 0x18u);
          }

          *__error() = v16;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 2)
        {
          goto LABEL_56;
        }

        v22 = *__error();
        v23 = sub_10003E020([v15 targetProcessId]);
        v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: overridden by [%d]", v23, [v15 targetProcessId], *(a1 + 56));
        if (v24)
        {
LABEL_41:
          v36 = v24;
          CStringPtr = CFStringGetCStringPtr(v24, 0x8000100u);
          if (CStringPtr)
          {
            v38 = CStringPtr;
            v39 = 0;
          }

          else
          {
            v38 = malloc_type_calloc(0x400uLL, 1uLL, 0x624BA0D9uLL);
            CFStringGetCString(v36, v38, 1024, 0x8000100u);
            v39 = v38;
          }

          if (qword_100127ED0)
          {
            v40 = qword_100127ED0;
          }

          else
          {
            v40 = __stderrp;
          }

          fprintf(v40, "%s\n", v38);
          if (v39)
          {
            free(v39);
          }

          CFRelease(v36);
          goto LABEL_55;
        }

        v25 = sub_10003E080();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          v26 = sub_10003E020([v15 targetProcessId]);
          v27 = [v15 targetProcessId];
          v28 = *(a1 + 56);
          *buf = 136315650;
          v52 = v26;
          v53 = 1024;
          v54 = v27;
          v55 = 1024;
          v56 = v28;
          v29 = v25;
          v30 = "Unable to format: %s [%d]: overridden by [%d]";
          v31 = 24;
LABEL_59:
          _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, v30, buf, v31);
        }
      }

      if (qword_100127ED0)
      {
        v41 = qword_100127ED0;
      }

      else
      {
        v41 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v41);
LABEL_55:
      *__error() = v22;
LABEL_56:
      [v15 stopSamplingWithReason:9];
      if (v12 == ++v14)
      {
        v43 = [v10 countByEnumeratingWithState:&v47 objects:v57 count:16];
        v12 = v43;
        if (!v43)
        {
LABEL_61:

          [qword_100127E48 removeAllObjects];
          goto LABEL_62;
        }

        goto LABEL_15;
      }
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *v6 = 1;
    v5 = *(*(*(a1 + 40) + 8) + 40);
  }

  if (*(a1 + 62) != [v5 isWSBased])
  {
LABEL_5:
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void sub_100084638(uint64_t a1)
{
  v2 = [[NSNumber alloc] initWithInt:*(a1 + 40)];
  v3 = *(a1 + 32);
  v5 = v2;
  v4 = [qword_100127E48 objectForKey:?];

  if (v3 == v4)
  {
    [qword_100127E48 removeObjectForKey:v5];
  }

  if (![qword_100127E48 count])
  {
    +[SPSampledProcess stopMemoryPressureTimer];
  }
}

id sub_100084ADC(uint64_t a1)
{
  v1 = (a1 + 32);
  if ((*(*(a1 + 32) + 72) & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v2 = *__error();
      v3 = sub_10003E080();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = sub_10003E020(*(*v1 + 18));
        v5 = *(*v1 + 18);
        *buf = 136446466;
        v23 = v4;
        v24 = 1024;
        v25 = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}s [%d]: exited - HID", buf, 0x12u);
      }

      *__error() = v2;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 1)
    {
      goto LABEL_40;
    }

    v7 = *__error();
    v8 = sub_10003E020(*(*v1 + 18));
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: exited - HID", v8, *(*v1 + 18));
    if (!v9)
    {
      v10 = sub_10003E080();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_1000BF548();
      }

LABEL_35:

      if (qword_100127ED0)
      {
        v19 = qword_100127ED0;
      }

      else
      {
        v19 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v19);
LABEL_39:
      *__error() = v7;
      goto LABEL_40;
    }

    goto LABEL_24;
  }

  if (byte_100127EC8)
  {
    v11 = *__error();
    v12 = sub_10003E080();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "exited - HID", buf, 2u);
    }

    *__error() = v11;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v7 = *__error();
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"exited - HID");
    if (!v9)
    {
      v10 = sub_10003E080();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_1000BF514();
      }

      goto LABEL_35;
    }

LABEL_24:
    v14 = v9;
    CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
    if (CStringPtr)
    {
      v16 = CStringPtr;
      v17 = 0;
    }

    else
    {
      v16 = malloc_type_calloc(0x400uLL, 1uLL, 0xB01773A3uLL);
      CFStringGetCString(v14, v16, 1024, 0x8000100u);
      v17 = v16;
    }

    if (qword_100127ED0)
    {
      v18 = qword_100127ED0;
    }

    else
    {
      v18 = __stderrp;
    }

    fprintf(v18, "%s\n", v16);
    if (v17)
    {
      free(v17);
    }

    CFRelease(v14);
    goto LABEL_39;
  }

LABEL_40:
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100084F20;
  v21[3] = &unk_100115B50;
  v21[4] = *v1;
  sub_100084E6C(v21);
  return [*v1 deleteHIDExitSource];
}

void sub_100084E6C(void *a1)
{
  v1 = a1;
  if (qword_100127E70 != -1)
  {
    sub_1000BF5C8();
  }

  v2 = qword_100127E60;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090F90;
  block[3] = &unk_100115D28;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

void sub_100084F20(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  v6 = [NSNumber numberWithInt:*(v5 + 72)];
  v7 = [v3 objectForKeyedSubscript:v6];

  v8 = *(*v4 + 72);
  if (v7)
  {
    v9 = v7 == *v4;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (v8 < 0)
    {
      if (byte_100127EC8)
      {
        v35 = *__error();
        v36 = sub_10003E080();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          sub_1000BF744();
        }

        *__error() = v35;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_86;
      }

      v23 = *__error();
      v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Process exited, no longer waiting for HID event");
      if (!v25)
      {
        v26 = sub_10003E080();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          sub_1000BF778();
        }

        goto LABEL_81;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v20 = *__error();
        v21 = sub_10003E080();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          sub_1000BF7AC();
        }

        *__error() = v20;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_86;
      }

      v23 = *__error();
      v24 = sub_10003E020(*(*v4 + 72));
      v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Process exited, no longer waiting for HID event", v24, *(*v4 + 72));
      if (!v25)
      {
        v26 = sub_10003E080();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          sub_1000BF82C();
        }

LABEL_81:

        if (qword_100127ED0)
        {
          v48 = qword_100127ED0;
        }

        else
        {
          v48 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v48);
LABEL_85:
        *__error() = v23;
LABEL_86:
        dispatch_semaphore_signal(v7[53]);
        v49 = [NSNumber numberWithInt:*(*v4 + 72)];
        [v3 setObject:0 forKeyedSubscript:v49];

        goto LABEL_96;
      }
    }

    v38 = v25;
    CStringPtr = CFStringGetCStringPtr(v25, 0x8000100u);
    if (CStringPtr)
    {
      v40 = CStringPtr;
      v41 = 0;
    }

    else
    {
      v40 = malloc_type_calloc(0x400uLL, 1uLL, 0xD53039E6uLL);
      CFStringGetCString(v38, v40, 1024, 0x8000100u);
      v41 = v40;
    }

    if (qword_100127ED0)
    {
      v43 = qword_100127ED0;
    }

    else
    {
      v43 = __stderrp;
    }

    fprintf(v43, "%s\n", v40);
    if (v41)
    {
      free(v41);
    }

    CFRelease(v38);
    goto LABEL_85;
  }

  if ((v8 & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v10 = *__error();
      v11 = sub_10003E080();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1000BF644();
      }

      *__error() = v10;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      goto LABEL_96;
    }

    v13 = *__error();
    v14 = sub_10003E020(*(*v4 + 72));
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Process exited, and not waiting for a HID event", v14, *(*v4 + 72));
    if (v15)
    {
      v16 = v15;
      v17 = CFStringGetCStringPtr(v15, 0x8000100u);
      if (v17)
      {
        v18 = v17;
        v19 = 0;
      }

      else
      {
        v18 = malloc_type_calloc(0x400uLL, 1uLL, 0xCD2A47B5uLL);
        CFStringGetCString(v16, v18, 1024, 0x8000100u);
        v19 = v18;
      }

      if (qword_100127ED0)
      {
        v44 = qword_100127ED0;
      }

      else
      {
        v44 = __stderrp;
      }

      fprintf(v44, "%s\n", v18);
      if (v19)
      {
        free(v19);
      }

      v45 = v16;
LABEL_94:
      CFRelease(v45);
LABEL_95:
      *__error() = v13;
      goto LABEL_96;
    }

    v42 = sub_10003E080();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      sub_1000BF6C4();
    }

    goto LABEL_75;
  }

  if (byte_100127EC8)
  {
    v27 = *__error();
    v28 = sub_10003E080();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_1000BF5DC();
    }

    *__error() = v27;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v13 = *__error();
    v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Process exited, and not waiting for a HID event");
    if (v30)
    {
      v31 = v30;
      v32 = CFStringGetCStringPtr(v30, 0x8000100u);
      if (v32)
      {
        v33 = v32;
        v34 = 0;
      }

      else
      {
        v33 = malloc_type_calloc(0x400uLL, 1uLL, 0xCD2A47B5uLL);
        CFStringGetCString(v31, v33, 1024, 0x8000100u);
        v34 = v33;
      }

      if (qword_100127ED0)
      {
        v50 = qword_100127ED0;
      }

      else
      {
        v50 = __stderrp;
      }

      fprintf(v50, "%s\n", v33);
      if (v34)
      {
        free(v34);
      }

      v45 = v31;
      goto LABEL_94;
    }

    v46 = sub_10003E080();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      sub_1000BF610();
    }

LABEL_75:
    if (qword_100127ED0)
    {
      v47 = qword_100127ED0;
    }

    else
    {
      v47 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v47);
    goto LABEL_95;
  }

LABEL_96:
}

void sub_1000855F0(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100085668;
  v1[3] = &unk_100115B78;
  v1[4] = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100084E6C(v1);
}

void sub_100085668(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = a1 + 32;
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 targetProcessId]);
  v7 = [v3 objectForKeyedSubscript:v6];

  v8 = *v4;
  if (*(v4 + 8) != 1)
  {
    if (v7)
    {
      v19 = v8[18];
      if (v7 != v8)
      {
        if (v19 < 0)
        {
          if (byte_100127EC8)
          {
            v68 = *__error();
            v69 = sub_10003E080();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              sub_1000BF8AC();
            }

            *__error() = v68;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 0)
          {
            goto LABEL_256;
          }

          v23 = *__error();
          v71 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Previous spin waiting for HID event");
          if (v71)
          {
            v26 = v71;
            CStringPtr = CFStringGetCStringPtr(v71, 0x8000100u);
            if (CStringPtr)
            {
              v73 = CStringPtr;
              v74 = 0;
            }

            else
            {
              v73 = malloc_type_calloc(0x400uLL, 1uLL, 0xC75494B9uLL);
              CFStringGetCString(v26, v73, 1024, 0x8000100u);
              v74 = v73;
            }

            if (qword_100127ED0)
            {
              v132 = qword_100127ED0;
            }

            else
            {
              v132 = __stderrp;
            }

            fprintf(v132, "%s\n", v73);
            if (v74)
            {
              free(v74);
            }

            goto LABEL_254;
          }

          v104 = sub_10003E080();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
          {
            sub_1000BF8E0();
          }
        }

        else
        {
          if (byte_100127EC8)
          {
            v20 = *__error();
            v21 = sub_10003E080();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              sub_1000BF914();
            }

            *__error() = v20;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 0)
          {
            goto LABEL_256;
          }

          v23 = *__error();
          v24 = sub_10003E020(*(*v4 + 72));
          v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Previous spin waiting for HID event", v24, *(*v4 + 72));
          if (v25)
          {
            v26 = v25;
            v27 = CFStringGetCStringPtr(v25, 0x8000100u);
            if (v27)
            {
              v28 = v27;
              v29 = 0;
            }

            else
            {
              v28 = malloc_type_calloc(0x400uLL, 1uLL, 0xC75494B9uLL);
              CFStringGetCString(v26, v28, 1024, 0x8000100u);
              v29 = v28;
            }

            if (qword_100127ED0)
            {
              v108 = qword_100127ED0;
            }

            else
            {
              v108 = __stderrp;
            }

            fprintf(v108, "%s\n", v28);
            if (v29)
            {
              free(v29);
            }

LABEL_254:
            CFRelease(v26);
LABEL_255:
            *__error() = v23;
LABEL_256:
            if (!*(*v4 + 424))
            {
              goto LABEL_295;
            }

            if (([*v4 targetProcessId] & 0x80000000) != 0)
            {
              if (byte_100127EC8)
              {
                v146 = *__error();
                v147 = sub_10003E080();
                if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
                {
                  sub_1000BFA14();
                }

                *__error() = v146;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v148 = *__error();
                v149 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: _hidEventSem non-NULL when already tracking this process in previous spin", "self->_hidEventSem == ((void*)0)");
                if (v149)
                {
                  v162 = v149;
                  v163 = CFStringGetCStringPtr(v149, 0x8000100u);
                  if (v163)
                  {
                    v164 = v163;
                    v165 = 0;
                  }

                  else
                  {
                    v164 = malloc_type_calloc(0x400uLL, 1uLL, 0x520D1BC6uLL);
                    CFStringGetCString(v162, v164, 1024, 0x8000100u);
                    v165 = v164;
                  }

                  if (qword_100127ED0)
                  {
                    v177 = qword_100127ED0;
                  }

                  else
                  {
                    v177 = __stderrp;
                  }

                  fprintf(v177, "%s\n", v164);
                  if (v165)
                  {
                    free(v165);
                  }

                  CFRelease(v162);
                }

                else
                {
                  v150 = sub_10003E080();
                  if (os_log_type_enabled(v150, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000BFA94();
                  }

                  if (qword_100127ED0)
                  {
                    v151 = qword_100127ED0;
                  }

                  else
                  {
                    v151 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v151);
                }

                *__error() = v148;
              }

              v182 = "self->_hidEventSem == ((void*)0)";
              v176 = "%s: _hidEventSem non-NULL when already tracking this process in previous spin";
            }

            else
            {
              if (byte_100127EC8)
              {
                v133 = *__error();
                v134 = sub_10003E080();
                if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                {
                  sub_1000BFB14();
                }

                *__error() = v133;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v135 = *__error();
                v136 = sub_10003E020([*v4 targetProcessId]);
                v137 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: _hidEventSem non-NULL when already tracking this process in previous spin", v136, [*v4 targetProcessId], "self->_hidEventSem == ((void*)0)");
                if (v137)
                {
                  v158 = v137;
                  v159 = CFStringGetCStringPtr(v137, 0x8000100u);
                  if (v159)
                  {
                    v160 = v159;
                    v161 = 0;
                  }

                  else
                  {
                    v160 = malloc_type_calloc(0x400uLL, 1uLL, 0x520D1BC6uLL);
                    CFStringGetCString(v158, v160, 1024, 0x8000100u);
                    v161 = v160;
                  }

                  if (qword_100127ED0)
                  {
                    v174 = qword_100127ED0;
                  }

                  else
                  {
                    v174 = __stderrp;
                  }

                  fprintf(v174, "%s\n", v160);
                  if (v161)
                  {
                    free(v161);
                  }

                  CFRelease(v158);
                }

                else
                {
                  v138 = sub_10003E080();
                  if (os_log_type_enabled(v138, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000BFBAC();
                  }

                  if (qword_100127ED0)
                  {
                    v139 = qword_100127ED0;
                  }

                  else
                  {
                    v139 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v139);
                }

                *__error() = v135;
              }

              v175 = sub_10003E020([*v4 targetProcessId]);
              [*v4 targetProcessId];
              LOBYTE(v182) = v175;
              v176 = "%s [%d]: %s: _hidEventSem non-NULL when already tracking this process in previous spin";
            }

            v178 = 897;
            goto LABEL_368;
          }

          v104 = sub_10003E080();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
          {
            sub_1000BF994();
          }
        }

        if (qword_100127ED0)
        {
          v111 = qword_100127ED0;
        }

        else
        {
          v111 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v111);
        goto LABEL_255;
      }

      if (v19 < 0)
      {
        if (byte_100127EC8)
        {
          v97 = *__error();
          v98 = sub_10003E080();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
          {
            sub_1000BFC44();
          }

          *__error() = v97;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 0)
        {
          goto LABEL_285;
        }

        v57 = *__error();
        v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No longer waiting for HID event");
        if (!v59)
        {
          v60 = sub_10003E080();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
          {
            sub_1000BFC78();
          }

          goto LABEL_280;
        }
      }

      else
      {
        if (byte_100127EC8)
        {
          v54 = *__error();
          v55 = sub_10003E080();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            sub_1000BFCAC();
          }

          *__error() = v54;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 0)
        {
          goto LABEL_285;
        }

        v57 = *__error();
        v58 = sub_10003E020(*(*v4 + 72));
        v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No longer waiting for HID event", v58, *(*v4 + 72));
        if (!v59)
        {
          v60 = sub_10003E080();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
          {
            sub_1000BFD2C();
          }

LABEL_280:

          if (qword_100127ED0)
          {
            v142 = qword_100127ED0;
          }

          else
          {
            v142 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v142);
LABEL_284:
          *__error() = v57;
LABEL_285:
          dispatch_semaphore_signal(*(*v4 + 424));
          v143 = *(*v4 + 424);
          *(*v4 + 424) = 0;

          v144 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*v4 targetProcessId]);
          [v3 setObject:0 forKeyedSubscript:v144];

          [*v4 deleteHIDExitSource];
          goto LABEL_295;
        }
      }

      v100 = v59;
      v101 = CFStringGetCStringPtr(v59, 0x8000100u);
      if (v101)
      {
        v102 = v101;
        v103 = 0;
      }

      else
      {
        v102 = malloc_type_calloc(0x400uLL, 1uLL, 0x630446DAuLL);
        CFStringGetCString(v100, v102, 1024, 0x8000100u);
        v103 = v102;
      }

      if (qword_100127ED0)
      {
        v112 = qword_100127ED0;
      }

      else
      {
        v112 = __stderrp;
      }

      fprintf(v112, "%s\n", v102);
      if (v103)
      {
        free(v103);
      }

      CFRelease(v100);
      goto LABEL_284;
    }

    if ((v8[18] & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v82 = *__error();
        v83 = sub_10003E080();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          sub_1000BFDAC();
        }

        *__error() = v82;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_226;
      }

      v40 = *__error();
      v42 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Doesn't require HID event and we weren't waiting before anyway");
      if (!v42)
      {
        v43 = sub_10003E080();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          sub_1000BFDE0();
        }

        goto LABEL_221;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v37 = *__error();
        v38 = sub_10003E080();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          sub_1000BFE14();
        }

        *__error() = v37;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_226;
      }

      v40 = *__error();
      v41 = sub_10003E020(*(*v4 + 72));
      v42 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Doesn't require HID event and we weren't waiting before anyway", v41, *(*v4 + 72));
      if (!v42)
      {
        v43 = sub_10003E080();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
        {
          sub_1000BFE94();
        }

LABEL_221:

        if (qword_100127ED0)
        {
          v118 = qword_100127ED0;
        }

        else
        {
          v118 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v118);
LABEL_225:
        *__error() = v40;
LABEL_226:
        if (!*(*v4 + 424))
        {
          goto LABEL_295;
        }

        if (([*v4 targetProcessId] & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v152 = *__error();
            v153 = sub_10003E080();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
            {
              sub_1000BFF14();
            }

            *__error() = v152;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v154 = *__error();
            v155 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: _hidEventSem non-NULL when not requiring HID event", "self->_hidEventSem == ((void*)0)");
            if (v155)
            {
              v170 = v155;
              v171 = CFStringGetCStringPtr(v155, 0x8000100u);
              if (v171)
              {
                v172 = v171;
                v173 = 0;
              }

              else
              {
                v172 = malloc_type_calloc(0x400uLL, 1uLL, 0xD335DB8AuLL);
                CFStringGetCString(v170, v172, 1024, 0x8000100u);
                v173 = v172;
              }

              if (qword_100127ED0)
              {
                v181 = qword_100127ED0;
              }

              else
              {
                v181 = __stderrp;
              }

              fprintf(v181, "%s\n", v172);
              if (v173)
              {
                free(v173);
              }

              CFRelease(v170);
            }

            else
            {
              v156 = sub_10003E080();
              if (os_log_type_enabled(v156, OS_LOG_TYPE_FAULT))
              {
                sub_1000BFF94();
              }

              if (qword_100127ED0)
              {
                v157 = qword_100127ED0;
              }

              else
              {
                v157 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v157);
            }

            *__error() = v154;
          }

          v182 = "self->_hidEventSem == ((void*)0)";
          v176 = "%s: _hidEventSem non-NULL when not requiring HID event";
        }

        else
        {
          if (byte_100127EC8)
          {
            v123 = *__error();
            v124 = sub_10003E080();
            if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
            {
              sub_1000C0014();
            }

            *__error() = v123;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v125 = *__error();
            v126 = sub_10003E020([*v4 targetProcessId]);
            v127 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: _hidEventSem non-NULL when not requiring HID event", v126, [*v4 targetProcessId], "self->_hidEventSem == ((void*)0)");
            if (v127)
            {
              v166 = v127;
              v167 = CFStringGetCStringPtr(v127, 0x8000100u);
              if (v167)
              {
                v168 = v167;
                v169 = 0;
              }

              else
              {
                v168 = malloc_type_calloc(0x400uLL, 1uLL, 0xD335DB8AuLL);
                CFStringGetCString(v166, v168, 1024, 0x8000100u);
                v169 = v168;
              }

              if (qword_100127ED0)
              {
                v179 = qword_100127ED0;
              }

              else
              {
                v179 = __stderrp;
              }

              fprintf(v179, "%s\n", v168);
              if (v169)
              {
                free(v169);
              }

              CFRelease(v166);
            }

            else
            {
              v128 = sub_10003E080();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
              {
                sub_1000C00AC();
              }

              if (qword_100127ED0)
              {
                v129 = qword_100127ED0;
              }

              else
              {
                v129 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v129);
            }

            *__error() = v125;
          }

          v180 = sub_10003E020([*v4 targetProcessId]);
          [*v4 targetProcessId];
          LOBYTE(v182) = v180;
          v176 = "%s [%d]: %s: _hidEventSem non-NULL when not requiring HID event";
        }

        v178 = 908;
LABEL_368:
        sub_10003DF54("[SPSampledProcess requireHIDEvent:]_block_invoke", "SPProcessEvent.m", v178, v176, v119, v120, v121, v122, v182);
        abort();
      }
    }

    v85 = v42;
    v86 = CFStringGetCStringPtr(v42, 0x8000100u);
    if (v86)
    {
      v87 = v86;
      v88 = 0;
    }

    else
    {
      v87 = malloc_type_calloc(0x400uLL, 1uLL, 0xCF4E71B1uLL);
      CFStringGetCString(v85, v87, 1024, 0x8000100u);
      v88 = v87;
    }

    if (qword_100127ED0)
    {
      v107 = qword_100127ED0;
    }

    else
    {
      v107 = __stderrp;
    }

    fprintf(v107, "%s\n", v87);
    if (v88)
    {
      free(v88);
    }

    CFRelease(v85);
    goto LABEL_225;
  }

  if (!v7)
  {
    if ((v8[18] & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v75 = *__error();
        v76 = sub_10003E080();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C0360();
        }

        *__error() = v75;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_218;
      }

      v33 = *__error();
      v35 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Requires HID event");
      if (!v35)
      {
        v36 = sub_10003E080();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          sub_1000C0394();
        }

        goto LABEL_213;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v30 = *__error();
        v31 = sub_10003E080();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C03C8();
        }

        *__error() = v30;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_218;
      }

      v33 = *__error();
      v34 = sub_10003E020(*(*v4 + 72));
      v35 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Requires HID event", v34, *(*v4 + 72));
      if (!v35)
      {
        v36 = sub_10003E080();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          sub_1000C0448();
        }

LABEL_213:

        if (qword_100127ED0)
        {
          v113 = qword_100127ED0;
        }

        else
        {
          v113 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v113);
LABEL_217:
        *__error() = v33;
LABEL_218:
        v114 = dispatch_semaphore_create(0);
        v115 = *(*v4 + 424);
        *(*v4 + 424) = v114;

        v116 = *v4;
        v117 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*v4 targetProcessId]);
        [v3 setObject:v116 forKeyedSubscript:v117];

        [*v4 createHIDExitSource];
        goto LABEL_295;
      }
    }

    v78 = v35;
    v79 = CFStringGetCStringPtr(v35, 0x8000100u);
    if (v79)
    {
      v80 = v79;
      v81 = 0;
    }

    else
    {
      v80 = malloc_type_calloc(0x400uLL, 1uLL, 0x9184FDDCuLL);
      CFStringGetCString(v78, v80, 1024, 0x8000100u);
      v81 = v80;
    }

    if (qword_100127ED0)
    {
      v106 = qword_100127ED0;
    }

    else
    {
      v106 = __stderrp;
    }

    fprintf(v106, "%s\n", v80);
    if (v81)
    {
      free(v81);
    }

    CFRelease(v78);
    goto LABEL_217;
  }

  v9 = v8[18];
  if (v7 != v8)
  {
    if (v9 < 0)
    {
      if (byte_100127EC8)
      {
        v61 = *__error();
        v62 = sub_10003E080();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Already waiting for HID event from previous spin, canceling this spin", buf, 2u);
        }

        *__error() = v61;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 2)
      {
        goto LABEL_197;
      }

      v15 = *__error();
      v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already waiting for HID event from previous spin, canceling this spin");
      if (!v17)
      {
        v18 = sub_10003E080();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          sub_1000C0144();
        }

        goto LABEL_192;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v10 = *__error();
        v11 = sub_10003E080();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = sub_10003E020(*(*v4 + 72));
          v13 = *(*v4 + 72);
          *buf = 136446466;
          v184 = v12;
          v185 = 1024;
          v186 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: Already waiting for HID event from previous spin, canceling this spin", buf, 0x12u);
        }

        *__error() = v10;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 2)
      {
        goto LABEL_197;
      }

      v15 = *__error();
      v16 = sub_10003E020(*(*v4 + 72));
      v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Already waiting for HID event from previous spin, canceling this spin", v16, *(*v4 + 72));
      if (!v17)
      {
        v18 = sub_10003E080();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          sub_1000C0178();
        }

LABEL_192:

        if (qword_100127ED0)
        {
          v110 = qword_100127ED0;
        }

        else
        {
          v110 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v110);
LABEL_196:
        *__error() = v15;
LABEL_197:
        [*v4 stopSamplingWithReason:7];
        goto LABEL_295;
      }
    }

    v64 = v17;
    v65 = CFStringGetCStringPtr(v17, 0x8000100u);
    if (v65)
    {
      v66 = v65;
      v67 = 0;
    }

    else
    {
      v66 = malloc_type_calloc(0x400uLL, 1uLL, 0x7684D7B6uLL);
      CFStringGetCString(v64, v66, 1024, 0x8000100u);
      v67 = v66;
    }

    if (qword_100127ED0)
    {
      v105 = qword_100127ED0;
    }

    else
    {
      v105 = __stderrp;
    }

    fprintf(v105, "%s\n", v66);
    if (v67)
    {
      free(v67);
    }

    CFRelease(v64);
    goto LABEL_196;
  }

  if ((v9 & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v44 = *__error();
      v45 = sub_10003E080();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C0260();
      }

      *__error() = v44;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      goto LABEL_295;
    }

    v47 = *__error();
    v48 = sub_10003E020(*(*v4 + 72));
    v49 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Already waiting for HID event", v48, *(*v4 + 72));
    if (v49)
    {
      v50 = v49;
      v51 = CFStringGetCStringPtr(v49, 0x8000100u);
      if (v51)
      {
        v52 = v51;
        v53 = 0;
      }

      else
      {
        v52 = malloc_type_calloc(0x400uLL, 1uLL, 0x711E5E63uLL);
        CFStringGetCString(v50, v52, 1024, 0x8000100u);
        v53 = v52;
      }

      if (qword_100127ED0)
      {
        v130 = qword_100127ED0;
      }

      else
      {
        v130 = __stderrp;
      }

      fprintf(v130, "%s\n", v52);
      if (v53)
      {
        free(v53);
      }

      v131 = v50;
LABEL_293:
      CFRelease(v131);
LABEL_294:
      *__error() = v47;
      goto LABEL_295;
    }

    v109 = sub_10003E080();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
    {
      sub_1000C02E0();
    }

    goto LABEL_274;
  }

  if (byte_100127EC8)
  {
    v89 = *__error();
    v90 = sub_10003E080();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C01F8();
    }

    *__error() = v89;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v47 = *__error();
    v92 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already waiting for HID event");
    if (v92)
    {
      v93 = v92;
      v94 = CFStringGetCStringPtr(v92, 0x8000100u);
      if (v94)
      {
        v95 = v94;
        v96 = 0;
      }

      else
      {
        v95 = malloc_type_calloc(0x400uLL, 1uLL, 0x711E5E63uLL);
        CFStringGetCString(v93, v95, 1024, 0x8000100u);
        v96 = v95;
      }

      if (qword_100127ED0)
      {
        v145 = qword_100127ED0;
      }

      else
      {
        v145 = __stderrp;
      }

      fprintf(v145, "%s\n", v95);
      if (v96)
      {
        free(v96);
      }

      v131 = v93;
      goto LABEL_293;
    }

    v140 = sub_10003E080();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_FAULT))
    {
      sub_1000C022C();
    }

LABEL_274:
    if (qword_100127ED0)
    {
      v141 = qword_100127ED0;
    }

    else
    {
      v141 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v141);
    goto LABEL_294;
  }

LABEL_295:
}

void sub_1000870C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 64);
  v5 = [NSNumber numberWithInt:*(a1 + 64)];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (!v6)
  {
    if ((*v4 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v41 = *__error();
        v42 = sub_10003E080();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C06D4();
        }

        *__error() = v41;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_136;
      }

      v25 = *__error();
      v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No sampled process for hid event");
      if (!v27)
      {
        v28 = sub_10003E080();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          sub_1000C0708();
        }

        goto LABEL_106;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v22 = *__error();
        v23 = sub_10003E080();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C073C();
        }

        *__error() = v22;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_136;
      }

      v25 = *__error();
      v26 = sub_10003E020(*v4);
      v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No sampled process for hid event", v26, *v4);
      if (!v27)
      {
        v28 = sub_10003E080();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          sub_1000C07BC();
        }

        goto LABEL_106;
      }
    }

    v44 = v27;
    CStringPtr = CFStringGetCStringPtr(v27, 0x8000100u);
    if (CStringPtr)
    {
LABEL_65:
      v54 = CStringPtr;
      v55 = 0;
LABEL_119:
      if (qword_100127ED0)
      {
        v73 = qword_100127ED0;
      }

      else
      {
        v73 = __stderrp;
      }

      fprintf(v73, "%s\n", v54);
      if (v55)
      {
        free(v55);
      }

      CFRelease(v44);
      goto LABEL_125;
    }

    v46 = 2845071430;
LABEL_118:
    v54 = malloc_type_calloc(0x400uLL, 1uLL, v46);
    CFStringGetCString(v44, v54, 1024, 0x8000100u);
    v55 = v54;
    goto LABEL_119;
  }

  v7 = (a1 + 32);
  if (![*(v6 + 416) gt:*(a1 + 32)])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if ((*(a1 + 64) & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v56 = *__error();
        v57 = sub_10003E080();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "Got hid event", buf, 2u);
        }

        *__error() = v56;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_135;
      }

      v34 = *__error();
      v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Got hid event");
      if (v59)
      {
        v60 = v59;
        v61 = CFStringGetCStringPtr(v59, 0x8000100u);
        if (v61)
        {
          v62 = v61;
          v63 = 0;
        }

        else
        {
          v62 = malloc_type_calloc(0x400uLL, 1uLL, 0x57A67270uLL);
          CFStringGetCString(v60, v62, 1024, 0x8000100u);
          v63 = v62;
        }

        if (qword_100127ED0)
        {
          v74 = qword_100127ED0;
        }

        else
        {
          v74 = __stderrp;
        }

        fprintf(v74, "%s\n", v62);
        if (v63)
        {
          free(v63);
        }

        v69 = v60;
        goto LABEL_133;
      }

      v71 = sub_10003E080();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
      {
        sub_1000C04C8();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v29 = *__error();
        v30 = sub_10003E080();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = sub_10003E020(*v4);
          v32 = *v4;
          *buf = 136446466;
          v88 = v31;
          v89 = 1024;
          v90 = v32;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%{public}s [%d]: Got hid event", buf, 0x12u);
        }

        *__error() = v29;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_135;
      }

      v34 = *__error();
      v35 = sub_10003E020(*v4);
      v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Got hid event", v35, *v4);
      if (v36)
      {
        v37 = v36;
        v38 = CFStringGetCStringPtr(v36, 0x8000100u);
        if (v38)
        {
          v39 = v38;
          v40 = 0;
        }

        else
        {
          v39 = malloc_type_calloc(0x400uLL, 1uLL, 0x57A67270uLL);
          CFStringGetCString(v37, v39, 1024, 0x8000100u);
          v40 = v39;
        }

        if (qword_100127ED0)
        {
          v68 = qword_100127ED0;
        }

        else
        {
          v68 = __stderrp;
        }

        fprintf(v68, "%s\n", v39);
        if (v40)
        {
          free(v40);
        }

        v69 = v37;
LABEL_133:
        CFRelease(v69);
LABEL_134:
        *__error() = v34;
LABEL_135:
        v75 = [SATimeRange timeRangeStart:*(a1 + 40) end:*(a1 + 32)];
        [v6 setEventTimeRange:v75];

        [v6 setReportTimeStart:*(a1 + 40)];
        [v6 setReportTimeEnd:*(a1 + 32)];
        [v6 setTargetHIDEventMachAbs:*(a1 + 56)];
        [v6 setTargetHIDEventEndMachAbs:{objc_msgSend(*(a1 + 32), "machAbsTime")}];
        dispatch_semaphore_signal(*(v6 + 424));
        v76 = [NSNumber numberWithInt:*(a1 + 64)];
        [v3 setObject:0 forKeyedSubscript:v76];

        [v6 deleteHIDExitSource];
        goto LABEL_136;
      }

      v66 = sub_10003E080();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
      {
        sub_1000C04FC();
      }
    }

    if (qword_100127ED0)
    {
      v72 = qword_100127ED0;
    }

    else
    {
      v72 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v72);
    goto LABEL_134;
  }

  if ((*v4 & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v8 = *__error();
      v9 = sub_10003E080();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v77 = sub_10003E020(*v4);
        v78 = *v4;
        [*(v6 + 416) machAbsTimeSeconds];
        v80 = v79;
        [*v7 machAbsTimeSeconds];
        *buf = 136446722;
        v88 = v77;
        v89 = 1024;
        v90 = v78;
        v91 = 2048;
        v92 = v80 - v81;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}s [%d]: Got hid event from %.1fs earlier than the spin we monitored, continuing to wait", buf, 0x1Cu);
      }

      *__error() = v8;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v11 = *__error();
      v12 = sub_10003E020(*v4);
      v13 = *v4;
      [*(v6 + 416) machAbsTimeSeconds];
      v15 = v14;
      [*v7 machAbsTimeSeconds];
      v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Got hid event from %.1fs earlier than the spin we monitored, continuing to wait", v12, v13, v15 - v16);
      if (v17)
      {
        v18 = v17;
        v19 = CFStringGetCStringPtr(v17, 0x8000100u);
        if (v19)
        {
          v20 = v19;
          v21 = 0;
        }

        else
        {
          v20 = malloc_type_calloc(0x400uLL, 1uLL, 0xF72AC13FuLL);
          CFStringGetCString(v18, v20, 1024, 0x8000100u);
          v21 = v20;
        }

        if (qword_100127ED0)
        {
          v67 = qword_100127ED0;
        }

        else
        {
          v67 = __stderrp;
        }

        fprintf(v67, "%s\n", v20);
        if (v21)
        {
          free(v21);
        }

        CFRelease(v18);
      }

      else
      {
        v64 = sub_10003E080();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
        {
          v82 = sub_10003E020(*v4);
          v83 = *v4;
          [*(v6 + 416) machAbsTimeSeconds];
          v85 = v84;
          [*v7 machAbsTimeSeconds];
          *buf = 136315650;
          v88 = v82;
          v89 = 1024;
          v90 = v83;
          v91 = 2048;
          v92 = v85 - v86;
          _os_log_fault_impl(&_mh_execute_header, v64, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: Got hid event from %.1fs earlier than the spin we monitored, continuing to wait", buf, 0x1Cu);
        }

        if (qword_100127ED0)
        {
          v65 = qword_100127ED0;
        }

        else
        {
          v65 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v65);
      }

      *__error() = v11;
    }

    goto LABEL_136;
  }

  if (byte_100127EC8)
  {
    v47 = *__error();
    v48 = sub_10003E080();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C057C(v6, v7);
    }

    *__error() = v47;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v25 = *__error();
    [*(v6 + 416) machAbsTimeSeconds];
    v51 = v50;
    [*v7 machAbsTimeSeconds];
    v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Got hid event from %.1fs earlier than the spin we monitored, continuing to wait", v51 - v52);
    if (v53)
    {
      v44 = v53;
      CStringPtr = CFStringGetCStringPtr(v53, 0x8000100u);
      if (CStringPtr)
      {
        goto LABEL_65;
      }

      v46 = 4146774335;
      goto LABEL_118;
    }

    v28 = sub_10003E080();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      sub_1000C0628(v6, v7);
    }

LABEL_106:

    if (qword_100127ED0)
    {
      v70 = qword_100127ED0;
    }

    else
    {
      v70 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v70);
LABEL_125:
    *__error() = v25;
  }

LABEL_136:
}

void sub_10008926C(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 298) != 1 || *(v2 + 297) == 1)
  {
    v4 = *(v2 + 32);
    if (!v4)
    {
      v5 = dispatch_get_global_queue(25, 2uLL);
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
      v7 = *(*v3 + 32);
      *(*v3 + 32) = v6;

      v8 = *v3;
      v9 = *(*v3 + 32);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000896D8;
      handler[3] = &unk_100115850;
      handler[4] = v8;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_resume(*(*v3 + 32));
      v2 = *v3;
      v4 = *(*v3 + 32);
    }

    v10 = *(v2 + 400);
    if (v10 >= 0x3E8)
    {
      v11 = 1000000;
    }

    else
    {
      v11 = 1000 * v10;
    }

    v12 = dispatch_time(0, ((*(a1 + 40) - *(a1 + 48)) * 1000000000.0));
    dispatch_source_set_timer(v4, v12, 0xFFFFFFFFFFFFFFFFLL, v11);
    return;
  }

  if ((*(v2 + 72) & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v13 = *__error();
      v14 = sub_10003E080();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C0FD8();
      }

      *__error() = v13;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      return;
    }

    v16 = *__error();
    v17 = sub_10003E020(*(*v3 + 72));
    v18 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Lost race: already done sampling", v17, *(*v3 + 72));
    if (v18)
    {
      v19 = v18;
      CStringPtr = CFStringGetCStringPtr(v18, 0x8000100u);
      if (CStringPtr)
      {
        v21 = CStringPtr;
        v22 = 0;
      }

      else
      {
        v21 = malloc_type_calloc(0x400uLL, 1uLL, 0xF7E812DuLL);
        CFStringGetCString(v19, v21, 1024, 0x8000100u);
        v22 = v21;
      }

      if (qword_100127ED0)
      {
        v32 = qword_100127ED0;
      }

      else
      {
        v32 = __stderrp;
      }

      fprintf(v32, "%s\n", v21);
      if (v22)
      {
        free(v22);
      }

      v33 = v19;
LABEL_58:
      CFRelease(v33);
LABEL_59:
      *__error() = v16;
      return;
    }

    v31 = sub_10003E080();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1000C1058();
    }

    goto LABEL_47;
  }

  if (byte_100127EC8)
  {
    v23 = *__error();
    v24 = sub_10003E080();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C0F70();
    }

    *__error() = v23;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v16 = *__error();
    v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Lost race: already done sampling");
    if (v26)
    {
      v27 = v26;
      v28 = CFStringGetCStringPtr(v26, 0x8000100u);
      if (v28)
      {
        v29 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0xF7E812DuLL);
        CFStringGetCString(v27, v29, 1024, 0x8000100u);
        v30 = v29;
      }

      if (qword_100127ED0)
      {
        v36 = qword_100127ED0;
      }

      else
      {
        v36 = __stderrp;
      }

      fprintf(v36, "%s\n", v29);
      if (v30)
      {
        free(v30);
      }

      v33 = v27;
      goto LABEL_58;
    }

    v34 = sub_10003E080();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      sub_1000C0FA4();
    }

LABEL_47:
    if (qword_100127ED0)
    {
      v35 = qword_100127ED0;
    }

    else
    {
      v35 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v35);
    goto LABEL_59;
  }
}

_DWORD *sub_1000896D8(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 48);
  result = SAMachAbsTimeSecondsGetCurrent();
  v4 = *(*v1 + 18);
  if (v2 <= v5)
  {
    if (v4 < 0)
    {
      if (byte_100127EC8)
      {
        v31 = *__error();
        v32 = sub_10003E080();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C10D8();
        }

        *__error() = v31;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        return [*v1 stopSamplingWithReason:3];
      }

      v19 = *__error();
      v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Monitoring timed out");
      if (!v21)
      {
        v22 = sub_10003E080();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          sub_1000C110C();
        }

        goto LABEL_78;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v16 = *__error();
        v17 = sub_10003E080();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C1140();
        }

        *__error() = v16;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        return [*v1 stopSamplingWithReason:3];
      }

      v19 = *__error();
      v20 = sub_10003E020(*(*v1 + 18));
      v21 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Monitoring timed out", v20, *(*v1 + 18));
      if (!v21)
      {
        v22 = sub_10003E080();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          sub_1000C11C0();
        }

LABEL_78:

        if (qword_100127ED0)
        {
          v44 = qword_100127ED0;
        }

        else
        {
          v44 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v44);
LABEL_82:
        *__error() = v19;
        return [*v1 stopSamplingWithReason:3];
      }
    }

    v34 = v21;
    CStringPtr = CFStringGetCStringPtr(v21, 0x8000100u);
    if (CStringPtr)
    {
      v36 = CStringPtr;
      v37 = 0;
    }

    else
    {
      v36 = malloc_type_calloc(0x400uLL, 1uLL, 0x9AA84E51uLL);
      CFStringGetCString(v34, v36, 1024, 0x8000100u);
      v37 = v36;
    }

    if (qword_100127ED0)
    {
      v39 = qword_100127ED0;
    }

    else
    {
      v39 = __stderrp;
    }

    fprintf(v39, "%s\n", v36);
    if (v37)
    {
      free(v37);
    }

    CFRelease(v34);
    goto LABEL_82;
  }

  if ((v4 & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v6 = *__error();
      v7 = sub_10003E080();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C12A8();
      }

      result = __error();
      *result = v6;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      return result;
    }

    v9 = *__error();
    v10 = sub_10003E020(*(*v1 + 18));
    v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Monitoring timeout was extended, doing nothing", v10, *(*v1 + 18));
    if (v11)
    {
      v12 = v11;
      v13 = CFStringGetCStringPtr(v11, 0x8000100u);
      if (v13)
      {
        v14 = v13;
        v15 = 0;
      }

      else
      {
        v14 = malloc_type_calloc(0x400uLL, 1uLL, 0x322215D7uLL);
        CFStringGetCString(v12, v14, 1024, 0x8000100u);
        v15 = v14;
      }

      if (qword_100127ED0)
      {
        v40 = qword_100127ED0;
      }

      else
      {
        v40 = __stderrp;
      }

      fprintf(v40, "%s\n", v14);
      if (v15)
      {
        free(v15);
      }

      v41 = v12;
LABEL_91:
      CFRelease(v41);
LABEL_92:
      result = __error();
      *result = v9;
      return result;
    }

    v38 = sub_10003E080();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      sub_1000C1328();
    }

    goto LABEL_72;
  }

  if (byte_100127EC8)
  {
    v23 = *__error();
    v24 = sub_10003E080();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C1240();
    }

    result = __error();
    *result = v23;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v9 = *__error();
    v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Monitoring timeout was extended, doing nothing");
    if (v26)
    {
      v27 = v26;
      v28 = CFStringGetCStringPtr(v26, 0x8000100u);
      if (v28)
      {
        v29 = v28;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0x322215D7uLL);
        CFStringGetCString(v27, v29, 1024, 0x8000100u);
        v30 = v29;
      }

      if (qword_100127ED0)
      {
        v45 = qword_100127ED0;
      }

      else
      {
        v45 = __stderrp;
      }

      fprintf(v45, "%s\n", v29);
      if (v30)
      {
        free(v30);
      }

      v41 = v27;
      goto LABEL_91;
    }

    v42 = sub_10003E080();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      sub_1000C1274();
    }

LABEL_72:
    if (qword_100127ED0)
    {
      v43 = qword_100127ED0;
    }

    else
    {
      v43 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v43);
    goto LABEL_92;
  }

  return result;
}

uint64_t sub_10008A124(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  v2 = objc_retainBlock(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  return _objc_release_x1();
}

void sub_10008A1EC(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v1 + 40);
  if (v3 != 1)
  {
    if (v4)
    {
      *(v1 + 40) = 0;
    }

    return;
  }

  if (v4)
  {
    return;
  }

  if (*(v1 + 298) != 1 || *(v1 + 297) == 1)
  {
    v5 = *(v1 + 72);
    if (v5 >= 1)
    {
      v6 = dispatch_get_global_queue(25, 2uLL);
      v7 = dispatch_source_create(&_dispatch_source_type_proc, v5, 0xA0000000uLL, v6);
      v8 = *(*v2 + 40);
      *(*v2 + 40) = v7;

      v9 = *v2;
      v10 = *(*v2 + 40);
      if (v10)
      {
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10008AA14;
        handler[3] = &unk_100115850;
        handler[4] = v9;
        dispatch_source_set_event_handler(v10, handler);
        dispatch_resume(*(*v2 + 40));
        return;
      }

      if ((*(v9 + 72) & 0x80000000) == 0)
      {
        if (byte_100127EC8)
        {
          v27 = *__error();
          v28 = sub_10003E080();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_1000C1754();
          }

          *__error() = v27;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v14 = *__error();
          v29 = sub_10003E020(*(*v2 + 72));
          v30 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to allocate proc exit dispatch source", v29, *(*v2 + 72));
          if (v30)
          {
            v24 = v30;
            CStringPtr = CFStringGetCStringPtr(v30, 0x8000100u);
            if (CStringPtr)
            {
              goto LABEL_47;
            }

            v26 = 2518794908;
            goto LABEL_93;
          }

          v47 = sub_10003E080();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            sub_1000C17D4();
          }

LABEL_87:

LABEL_103:
          if (qword_100127ED0)
          {
            v50 = qword_100127ED0;
          }

          else
          {
            v50 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v50);
          goto LABEL_116;
        }

        return;
      }

      if (byte_100127EC8)
      {
        v41 = *__error();
        v42 = sub_10003E080();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_1000C16E4();
        }

        *__error() = v41;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        return;
      }

      v14 = *__error();
      v43 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to allocate proc exit dispatch source");
      if (v43)
      {
        v16 = v43;
        v17 = CFStringGetCStringPtr(v43, 0x8000100u);
        if (v17)
        {
          goto LABEL_80;
        }

        v18 = 2518794908;
LABEL_108:
        v44 = malloc_type_calloc(0x400uLL, 1uLL, v18);
        CFStringGetCString(v16, v44, 1024, 0x8000100u);
        v45 = v44;
        goto LABEL_109;
      }

      v46 = sub_10003E080();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        sub_1000C1720();
      }

LABEL_102:

      goto LABEL_103;
    }

    if (v5)
    {
      if (byte_100127EC8)
      {
        v11 = *__error();
        v12 = sub_10003E080();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "No target process to monitor for exiting", buf, 2u);
        }

        *__error() = v11;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        return;
      }

      v14 = *__error();
      v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No target process to monitor for exiting");
      if (!v15)
      {
        v46 = sub_10003E080();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          sub_1000C167C();
        }

        goto LABEL_102;
      }

      v16 = v15;
      v17 = CFStringGetCStringPtr(v15, 0x8000100u);
      if (!v17)
      {
        v18 = 2765977849;
        goto LABEL_108;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v33 = *__error();
        v34 = sub_10003E080();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Can't stop when kernel exits", buf, 2u);
        }

        *__error() = v33;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        return;
      }

      v14 = *__error();
      v36 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Can't stop when kernel exits");
      if (!v36)
      {
        v46 = sub_10003E080();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          sub_1000C16B0();
        }

        goto LABEL_102;
      }

      v16 = v36;
      v17 = CFStringGetCStringPtr(v36, 0x8000100u);
      if (!v17)
      {
        v18 = 3500407202;
        goto LABEL_108;
      }
    }

LABEL_80:
    v44 = v17;
    v45 = 0;
LABEL_109:
    if (qword_100127ED0)
    {
      v51 = qword_100127ED0;
    }

    else
    {
      v51 = __stderrp;
    }

    fprintf(v51, "%s\n", v44);
    if (v45)
    {
      free(v45);
    }

    v49 = v16;
    goto LABEL_115;
  }

  if ((*(v1 + 72) & 0x80000000) != 0)
  {
    if (byte_100127EC8)
    {
      v37 = *__error();
      v38 = sub_10003E080();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C0F70();
      }

      *__error() = v37;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      return;
    }

    v14 = *__error();
    v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Lost race: already done sampling");
    if (!v40)
    {
      v46 = sub_10003E080();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        sub_1000C15C8();
      }

      goto LABEL_102;
    }

    v16 = v40;
    v17 = CFStringGetCStringPtr(v40, 0x8000100u);
    if (!v17)
    {
      v18 = 3680569647;
      goto LABEL_108;
    }

    goto LABEL_80;
  }

  if (byte_100127EC8)
  {
    v19 = *__error();
    v20 = sub_10003E080();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C0FD8();
    }

    *__error() = v19;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v14 = *__error();
    v22 = sub_10003E020(*(*v2 + 72));
    v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Lost race: already done sampling", v22, *(*v2 + 72));
    if (v23)
    {
      v24 = v23;
      CStringPtr = CFStringGetCStringPtr(v23, 0x8000100u);
      if (CStringPtr)
      {
LABEL_47:
        v31 = CStringPtr;
        v32 = 0;
LABEL_94:
        if (qword_100127ED0)
        {
          v48 = qword_100127ED0;
        }

        else
        {
          v48 = __stderrp;
        }

        fprintf(v48, "%s\n", v31);
        if (v32)
        {
          free(v32);
        }

        v49 = v24;
LABEL_115:
        CFRelease(v49);
LABEL_116:
        *__error() = v14;
        return;
      }

      v26 = 3680569647;
LABEL_93:
      v31 = malloc_type_calloc(0x400uLL, 1uLL, v26);
      CFStringGetCString(v24, v31, 1024, 0x8000100u);
      v32 = v31;
      goto LABEL_94;
    }

    v47 = sub_10003E080();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      sub_1000C15FC();
    }

    goto LABEL_87;
  }
}

id sub_10008AA14(uint64_t a1)
{
  v1 = (a1 + 32);
  if ((*(*(a1 + 32) + 72) & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v2 = *__error();
      v3 = sub_10003E080();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C18BC();
      }

      *__error() = v2;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      return [*v1 stopSamplingWithReason:2];
    }

    v5 = *__error();
    v6 = sub_10003E020(*(*v1 + 18));
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: exited", v6, *(*v1 + 18));
    if (!v7)
    {
      v8 = sub_10003E080();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1000C193C();
      }

LABEL_35:

      if (qword_100127ED0)
      {
        v17 = qword_100127ED0;
      }

      else
      {
        v17 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v17);
LABEL_39:
      *__error() = v5;
      return [*v1 stopSamplingWithReason:2];
    }

    goto LABEL_24;
  }

  if (byte_100127EC8)
  {
    v9 = *__error();
    v10 = sub_10003E080();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C1854();
    }

    *__error() = v9;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v5 = *__error();
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"exited");
    if (!v7)
    {
      v8 = sub_10003E080();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_1000C1888();
      }

      goto LABEL_35;
    }

LABEL_24:
    v12 = v7;
    CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
    if (CStringPtr)
    {
      v14 = CStringPtr;
      v15 = 0;
    }

    else
    {
      v14 = malloc_type_calloc(0x400uLL, 1uLL, 0x7E1E3432uLL);
      CFStringGetCString(v12, v14, 1024, 0x8000100u);
      v15 = v14;
    }

    if (qword_100127ED0)
    {
      v16 = qword_100127ED0;
    }

    else
    {
      v16 = __stderrp;
    }

    fprintf(v16, "%s\n", v14);
    if (v15)
    {
      free(v15);
    }

    CFRelease(v12);
    goto LABEL_39;
  }

  return [*v1 stopSamplingWithReason:2];
}

id sub_10008B194(id result)
{
  v3 = *(result + 4);
  if (*(v3 + 297) == 1)
  {
    v15 = v1;
    v16 = v2;
    v4 = result;
    *(v3 + 297) = 0;
    [*(result + 4) removeSelfFromPidCache];
    v5 = v4[4];
    v6 = *(v5 + 32);
    *(v5 + 32) = 0;

    v7 = v4[4];
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v9 = v4[4];
    v10 = *(v9 + 301);
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10008B268;
    v13[3] = &unk_100115C18;
    v13[4] = v9;
    v14 = *(v4 + 40);
    return [v11 stopAndWaitForAllSamplingToComplete:(v10 & 1) == 0 withCompletionCallbackOnQueue:v12 withBlock:v13];
  }

  return result;
}

void sub_10008C59C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [NSNumber numberWithInt:*(v5 + 72)];
  v7 = [v3 objectForKeyedSubscript:v6];

  if (v7 && v7 == *v4)
  {
    if ((*(*v4 + 18) & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v15 = *__error();
        v16 = sub_10003E080();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C218C();
        }

        *__error() = v15;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_42;
      }

      v11 = *__error();
      v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Removing self from processes waiting on HID event list");
      if (!v13)
      {
        v14 = sub_10003E080();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1000C21C0();
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v8 = *__error();
        v9 = sub_10003E080();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C21F4();
        }

        *__error() = v8;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_42;
      }

      v11 = *__error();
      v12 = sub_10003E020(*(*v4 + 18));
      v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Removing self from processes waiting on HID event list", v12, *(*v4 + 18));
      if (!v13)
      {
        v14 = sub_10003E080();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1000C2274();
        }

LABEL_37:

        if (qword_100127ED0)
        {
          v23 = qword_100127ED0;
        }

        else
        {
          v23 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v23);
LABEL_41:
        *__error() = v11;
LABEL_42:
        v24 = [NSNumber numberWithInt:*(*v4 + 18)];
        [v3 setObject:0 forKeyedSubscript:v24];

        [*v4 deleteHIDExitSource];
        goto LABEL_43;
      }
    }

    v18 = v13;
    CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
    if (CStringPtr)
    {
      v20 = CStringPtr;
      v21 = 0;
    }

    else
    {
      v20 = malloc_type_calloc(0x400uLL, 1uLL, 0xC1A22004uLL);
      CFStringGetCString(v18, v20, 1024, 0x8000100u);
      v21 = v20;
    }

    if (qword_100127ED0)
    {
      v22 = qword_100127ED0;
    }

    else
    {
      v22 = __stderrp;
    }

    fprintf(v22, "%s\n", v20);
    if (v21)
    {
      free(v21);
    }

    CFRelease(v18);
    goto LABEL_41;
  }

LABEL_43:
}

void sub_10008C8D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(*(a1 + 32) + 64) + 16))();
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = 0;
}

void sub_10008C924(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setTargetThreadId:0];
  v6 = (a1 + 32);
  v5 = *(a1 + 32);
  if ((v5[18] & 0x80000000) == 0)
  {
    [v4 setTargetProcessId:?];
    v5 = *v6;
  }

  if (*(v5 + 19))
  {
    [v4 setTargetThreadId:?];
    v5 = *v6;
  }

  if (*(v5 + 15))
  {
    v7 = [v4 targetProcess];
    v8 = [v7 mainBinaryPath];
    v9 = [v8 isAbsolutePath];

    if ((v9 & 1) == 0)
    {
      v10 = [v4 targetProcess];
      v11 = v10;
      if (v10)
      {
        [v10 setMainBinaryPath:*(*v6 + 15)];
      }
    }
  }

  [v4 setTargetHIDEventMachAbs:*(*v6 + 20)];
  [v4 setTargetHIDEventEndMachAbs:*(*v6 + 21)];
  v12 = [v4 targetProcess];
  v13 = [v12 name];
  v14 = *(*v6 + 10);
  *(*v6 + 10) = v13;

  v15 = [v4 targetProcess];
  v16 = [v15 mainBinaryPath];
  v17 = [v16 isAbsolutePath];
  if (v17)
  {
    v2 = [v4 targetProcess];
    v18 = [v2 mainBinaryPath];
  }

  else
  {
    v18 = 0;
  }

  objc_storeStrong(*v6 + 15, v18);
  if (v17)
  {
  }

  v19 = [v4 targetProcess];
  v20 = [v19 isUnresponsive];

  if (v20)
  {
    v21 = [v4 targetProcess];
    [v21 timeOfLastResponse];
    *(*v6 + 18) = v22;
  }

  else
  {
    *(*v6 + 18) = 0;
  }

  v23 = *(a1 + 40);
  if (!v23)
  {
    v24 = 1;
    goto LABEL_46;
  }

  v24 = *(a1 + 48);
  v25 = [v23 stackshotProvider];
  v26 = *(*v6 + 3);

  if (v25 != v26)
  {
    if ((*(*v6 + 18) & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v70 = *__error();
        v71 = sub_10003E080();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          sub_1000C22F4();
        }

        *__error() = v70;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v72 = *__error();
        v73 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Mismatched sample providers", "endSnapshot.stackshotProvider == self->_sampleProvider");
        if (v73)
        {
          v80 = v73;
          CStringPtr = CFStringGetCStringPtr(v73, 0x8000100u);
          if (CStringPtr)
          {
            v82 = CStringPtr;
            v83 = 0;
          }

          else
          {
            v82 = malloc_type_calloc(0x400uLL, 1uLL, 0xE692CA2uLL);
            CFStringGetCString(v80, v82, 1024, 0x8000100u);
            v83 = v82;
          }

          if (qword_100127ED0)
          {
            v90 = qword_100127ED0;
          }

          else
          {
            v90 = __stderrp;
          }

          fprintf(v90, "%s\n", v82);
          if (v83)
          {
            free(v83);
          }

          CFRelease(v80);
        }

        else
        {
          v74 = sub_10003E080();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
          {
            sub_1000C2374();
          }

          if (qword_100127ED0)
          {
            v75 = qword_100127ED0;
          }

          else
          {
            v75 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v75);
        }

        *__error() = v72;
      }

      sub_10003DF54("[SPSampledProcess _samplingHasCompletedWithEndSnapshot:withReason:]_block_invoke", "SPProcessEvent.m", 1269, "%s: Mismatched sample providers", v27, v28, v29, v30, "endSnapshot.stackshotProvider == self->_sampleProvider");
    }

    else
    {
      if (byte_100127EC8)
      {
        v63 = *__error();
        v64 = sub_10003E080();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_1000C23F4();
        }

        *__error() = v63;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v65 = *__error();
        v66 = sub_10003E020(*(*v6 + 18));
        v67 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Mismatched sample providers", v66, *(*v6 + 18), "endSnapshot.stackshotProvider == self->_sampleProvider");
        if (v67)
        {
          v76 = v67;
          v77 = CFStringGetCStringPtr(v67, 0x8000100u);
          if (v77)
          {
            v78 = v77;
            v79 = 0;
          }

          else
          {
            v78 = malloc_type_calloc(0x400uLL, 1uLL, 0xE692CA2uLL);
            CFStringGetCString(v76, v78, 1024, 0x8000100u);
            v79 = v78;
          }

          if (qword_100127ED0)
          {
            v84 = qword_100127ED0;
          }

          else
          {
            v84 = __stderrp;
          }

          fprintf(v84, "%s\n", v78);
          if (v79)
          {
            free(v79);
          }

          CFRelease(v76);
        }

        else
        {
          v68 = sub_10003E080();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
          {
            sub_1000C2490();
          }

          if (qword_100127ED0)
          {
            v69 = qword_100127ED0;
          }

          else
          {
            v69 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v69);
        }

        *__error() = v65;
      }

      v85 = sub_10003E020(*(*v6 + 18));
      v91 = *(*v6 + 18);
      sub_10003DF54("[SPSampledProcess _samplingHasCompletedWithEndSnapshot:withReason:]_block_invoke", "SPProcessEvent.m", 1269, "%s [%d]: %s: Mismatched sample providers", v86, v87, v88, v89, v85);
    }

    abort();
  }

  *(*(a1 + 32) + 284) = [*(a1 + 40) numSamplesAvoidedDueToAudio];
  *(*(a1 + 32) + 276) = [*(a1 + 40) numSamples];
  v31 = [*(a1 + 32) eventTimeRange];

  if (!v31)
  {
    v32 = *v6;
    v33 = *(*v6 + 18);
    if (v33 > 0.0)
    {
      v34 = *(v32 + 52);
      if (!v34)
      {
        goto LABEL_25;
      }

      [v34 wallTime];
      if (v33 < v35)
      {
        goto LABEL_26;
      }

      v32 = *v6;
      if (!*(*v6 + 52))
      {
LABEL_25:
        v36 = *(v32 + 18);
        v37 = [*(a1 + 40) timestamp];
        [v37 wallTime];
        v39 = v38;

        if (v36 < v39)
        {
LABEL_26:
          v40 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:*(*v6 + 18)];
          v41 = v40;
          if (*(*v6 + 52))
          {
            [v40 guessMissingTimesBasedOnTimestamp:?];
            if (!v41)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v62 = [*(a1 + 40) timestamp];
            [v41 guessMissingTimesBasedOnTimestamp:v62];

            if (!v41)
            {
              goto LABEL_34;
            }
          }

          goto LABEL_33;
        }

        v32 = *v6;
      }
    }

    v42 = *(v32 + 52);
    if (v42)
    {
      v41 = v42;
LABEL_33:
      v43 = [*(a1 + 40) timestamp];
      v44 = [SATimeRange timeRangeStart:v41 end:v43];
      [*(a1 + 32) setEventTimeRange:v44];

      [*(a1 + 32) setReportTimeStart:v41];
      v45 = [*(a1 + 40) timestamp];
      [*(a1 + 32) setReportTimeEnd:v45];
    }
  }

LABEL_34:
  if (*(*v6 + 18) >= 1)
  {
    v46 = [*v6 eventTimeRange];

    if (v46)
    {
      v95 = 0;
      v96 = &v95;
      v97 = 0x2020000000;
      v98 = 0;
      v47 = [*v6 reportTimeStart];
      v48 = v47;
      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v50 = [*v6 eventTimeRange];
        v49 = [v50 startTime];
      }

      v51 = [v4 indexOfFirstSampleOnOrAfterTimestamp:v49];
      v52 = [*v6 reportTimeEnd];
      v53 = v52;
      if (v52)
      {
        v54 = v52;
      }

      else
      {
        v55 = [*v6 eventTimeRange];
        v54 = [v55 endTime];
      }

      v56 = [v4 indexOfLastSampleOnOrBeforeTimestamp:v54];
      if (v51 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v57 = v56;
        if (v56 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v58 = [v4 targetProcess];
          v94[0] = _NSConcreteStackBlock;
          v94[1] = 3221225472;
          v94[2] = sub_10008D2E0;
          v94[3] = &unk_100115C40;
          v94[4] = &v95;
          v94[5] = v51;
          v94[6] = v57;
          [v58 enumerateTaskStatesBetweenStartTime:v49 startSampleIndex:v51 endTime:v54 endSampleIndex:v57 reverseOrder:0 block:v94];
        }
      }

      *(*v6 + 72) = v96[3];

      _Block_object_dispose(&v95, 8);
    }
  }

LABEL_46:
  v59 = *v6;
  v60 = *(*v6 + 7);
  if (v60 && v59[8])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008D358;
    block[3] = &unk_100115BA0;
    block[4] = v59;
    v93 = v24;
    dispatch_async(v60, block);
    v61 = *(*v6 + 7);
    *(*v6 + 7) = 0;
  }
}

void sub_10008D2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008D2E0(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 suspendCount] || objc_msgSend(v3, "isPidSuspended"))
  {
    *(*(a1[4] + 8) + 24) += [v3 sampleCountInSampleIndexRangeStart:a1[5] end:a1[6]];
  }
}

void sub_10008D358(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(*(a1 + 32) + 64) + 16))();
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = 0;
}

void sub_10008DD38(uint64_t a1, void *a2, double a3)
{
  LODWORD(a3) = *(*(a1 + 32) + 400);
  v4 = *&a3 / 1000000.0;
  v5 = a2;
  [v5 setAttemptedSamplingInterval:v4];
  [*(a1 + 32) reportTimeThreshold];
  [v5 setReportTimeThreshold:?];
  [*(a1 + 32) _saveReportToStream:*(a1 + 40) withSampleStore:v5];
}

void sub_10008E770(uint64_t a1, void *a2, double a3)
{
  LODWORD(a3) = *(*(a1 + 32) + 400);
  v4 = *&a3 / 1000000.0;
  v5 = a2;
  [v5 setAttemptedSamplingInterval:v4];
  [*(a1 + 32) reportTimeThreshold];
  [v5 setReportTimeThreshold:?];
  v6 = [*(a1 + 32) _samplePrinterForSampleStore:v5];

  (*(*(a1 + 40) + 16))();
}

id sub_10008E8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6, void *a7, void *a8, double a9)
{
  v200 = a5;
  v17 = a7;
  v18 = a8;
  v19 = v18;
  if (!a4 || !v17 || !v18)
  {
    v20 = 0;
    *__error() = 22;
    goto LABEL_475;
  }

  v198 = v18;
  if ((a1 & 0x80000000) != 0)
  {
    v199 = 0;
  }

  else if (proc_pidpath(a1, &buffer, 0x400u) < 1)
  {
    if (byte_100127EC8 == 1)
    {
      v21 = *__error();
      v22 = sub_10003E080();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1000C2710();
      }

      *__error() = v21;
    }

    v199 = 0;
    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v23 = *__error();
      v24 = sub_10003E020(a1);
      v25 = *__error();
      v26 = __error();
      v27 = strerror(*v26);
      v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to get path: %d (%s)", v24, a1, v25, v27);
      v29 = v28;
      if (v28)
      {
        CStringPtr = CFStringGetCStringPtr(v28, 0x8000100u);
        if (CStringPtr)
        {
          v31 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0xED55E785uLL);
          CFStringGetCString(v29, CStringPtr, 1024, 0x8000100u);
          v31 = CStringPtr;
        }

        if (qword_100127ED0)
        {
          v34 = qword_100127ED0;
        }

        else
        {
          v34 = __stderrp;
        }

        fprintf(v34, "%s\n", CStringPtr);
        if (v31)
        {
          free(v31);
        }

        CFRelease(v29);
      }

      else
      {
        v32 = sub_10003E080();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          sub_1000C27B8();
        }

        if (qword_100127ED0)
        {
          v33 = qword_100127ED0;
        }

        else
        {
          v33 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v33);
      }

      v199 = 0;
      *__error() = v23;
    }
  }

  else
  {
    v199 = [NSString stringWithUTF8String:&buffer];
  }

  if ((a6 & 1) != 0 && !sub_1000338B0(a1))
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v68 = *__error();
        v69 = sub_10003E080();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          sub_1000C2860();
        }

        *__error() = v68;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_218;
      }

      v47 = *__error();
      v70 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"process doesn't exist, not sampling");
      v50 = v70;
      if (v70)
      {
        v71 = CFStringGetCStringPtr(v70, 0x8000100u);
        if (v71)
        {
          v72 = 0;
        }

        else
        {
          v71 = malloc_type_calloc(0x400uLL, 1uLL, 0xA6D1A9A1uLL);
          CFStringGetCString(v50, v71, 1024, 0x8000100u);
          v72 = v71;
        }

        if (qword_100127ED0)
        {
          v127 = qword_100127ED0;
        }

        else
        {
          v127 = __stderrp;
        }

        fprintf(v127, "%s\n", v71);
        if (v72)
        {
          free(v72);
        }

        goto LABEL_216;
      }

      v103 = sub_10003E080();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
      {
        sub_1000C289C();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v45 = *__error();
        v46 = sub_10003E080();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_1000C28D0();
        }

        *__error() = v45;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_218;
      }

      v47 = *__error();
      v48 = sub_10003E020(a1);
      v49 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: process doesn't exist, not sampling", v48, a1);
      v50 = v49;
      if (v49)
      {
        v51 = CFStringGetCStringPtr(v49, 0x8000100u);
        if (v51)
        {
          v52 = 0;
        }

        else
        {
          v51 = malloc_type_calloc(0x400uLL, 1uLL, 0xA6D1A9A1uLL);
          CFStringGetCString(v50, v51, 1024, 0x8000100u);
          v52 = v51;
        }

        if (qword_100127ED0)
        {
          v118 = qword_100127ED0;
        }

        else
        {
          v118 = __stderrp;
        }

        fprintf(v118, "%s\n", v51);
        if (v52)
        {
          free(v52);
        }

LABEL_216:
        CFRelease(v50);
LABEL_217:
        *__error() = v47;
LABEL_218:
        v128 = __error();
        v20 = 0;
        v129 = 2;
LABEL_379:
        *v128 = v129;
        goto LABEL_473;
      }

      v103 = sub_10003E080();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2954();
      }
    }

    if (qword_100127ED0)
    {
      v119 = qword_100127ED0;
    }

    else
    {
      v119 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v119);
    goto LABEL_217;
  }

  v35 = (a6 >> 2) & 1;
  v204 = 0;
  v20 = [SPSampledProcess copySampledProcessForPid:a1 isWSBased:v35 createIfUnsampled:1 cancelExistingProcesses:(a6 >> 9) & 1 wasSampled:&v204];
  if (v20)
  {
    goto LABEL_35;
  }

  if ((a6 & 2) == 0 || (v204 & 1) == 0)
  {
LABEL_335:
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v156 = *__error();
        v157 = sub_10003E080();
        if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
        {
          sub_1000C343C();
        }

        *__error() = v156;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_378;
      }

      v150 = *__error();
      v158 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to create SPSampledProcess");
      v153 = v158;
      if (v158)
      {
        v159 = CFStringGetCStringPtr(v158, 0x8000100u);
        if (v159)
        {
          v160 = 0;
        }

        else
        {
          v159 = malloc_type_calloc(0x400uLL, 1uLL, 0x525AA6ACuLL);
          CFStringGetCString(v153, v159, 1024, 0x8000100u);
          v160 = v159;
        }

        if (qword_100127ED0)
        {
          v164 = qword_100127ED0;
        }

        else
        {
          v164 = __stderrp;
        }

        fprintf(v164, "%s\n", v159);
        if (v160)
        {
          free(v160);
        }

        goto LABEL_376;
      }

      v161 = sub_10003E080();
      if (os_log_type_enabled(v161, OS_LOG_TYPE_FAULT))
      {
        sub_1000C3478();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v148 = *__error();
        v149 = sub_10003E080();
        if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
        {
          sub_1000C34AC();
        }

        *__error() = v148;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_378;
      }

      v150 = *__error();
      v151 = sub_10003E020(a1);
      v152 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to create SPSampledProcess", v151, a1);
      v153 = v152;
      if (v152)
      {
        v154 = CFStringGetCStringPtr(v152, 0x8000100u);
        if (v154)
        {
          v155 = 0;
        }

        else
        {
          v154 = malloc_type_calloc(0x400uLL, 1uLL, 0x525AA6ACuLL);
          CFStringGetCString(v153, v154, 1024, 0x8000100u);
          v155 = v154;
        }

        if (qword_100127ED0)
        {
          v162 = qword_100127ED0;
        }

        else
        {
          v162 = __stderrp;
        }

        fprintf(v162, "%s\n", v154);
        if (v155)
        {
          free(v155);
        }

LABEL_376:
        CFRelease(v153);
LABEL_377:
        *__error() = v150;
LABEL_378:
        v128 = __error();
        v20 = 0;
        v129 = 37;
        goto LABEL_379;
      }

      v161 = sub_10003E080();
      if (os_log_type_enabled(v161, OS_LOG_TYPE_FAULT))
      {
        sub_1000C3530();
      }
    }

    if (qword_100127ED0)
    {
      v163 = qword_100127ED0;
    }

    else
    {
      v163 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v163);
    goto LABEL_377;
  }

  v44 = [SPSampledProcess copySampledProcessForPid:a1 isWSBased:(a6 & 4) == 0 createIfUnsampled:0 cancelExistingProcesses:0 wasSampled:0];
  v197 = v44;
  if (v44)
  {
    [v44 stopSamplingWithReason:9];
    goto LABEL_334;
  }

  if ((a1 & 0x80000000) != 0)
  {
    if (byte_100127EC8)
    {
      theStringc = *__error();
      v104 = sub_10003E080();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C29D8((a6 & 4) != 0, v104);
      }

      *__error() = theStringc;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v189 = *__error();
      v105 = "";
      if (v35)
      {
        v105 = "non-";
      }

      v106 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to find existing %sWindowServer-based sampled process", v105);
      theStringb = v106;
      if (v106)
      {
        v107 = CFStringGetCStringPtr(v106, 0x8000100u);
        if (v107)
        {
          v188 = 0;
        }

        else
        {
          v107 = malloc_type_calloc(0x400uLL, 1uLL, 0x74E39FBBuLL);
          CFStringGetCString(theStringb, v107, 1024, 0x8000100u);
          v188 = v107;
        }

        if (qword_100127ED0)
        {
          v147 = qword_100127ED0;
        }

        else
        {
          v147 = __stderrp;
        }

        fprintf(v147, "%s\n", v107);
        if (v188)
        {
          free(v188);
        }

        goto LABEL_332;
      }

      theStringe = sub_10003E080();
      v143 = theStringe;
      if (os_log_type_enabled(theStringe, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2A68();
        v143 = theStringe;
      }

      if (qword_100127ED0)
      {
        v135 = qword_100127ED0;
      }

      else
      {
        v135 = __stderrp;
      }

LABEL_303:
      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v135);
LABEL_333:
      *__error() = v189;
    }
  }

  else
  {
    if (byte_100127EC8)
    {
      theStringa = *__error();
      v73 = sub_10003E080();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C2AD8(a1);
      }

      *__error() = theStringa;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v189 = *__error();
      v74 = sub_10003E020(a1);
      if (v35)
      {
        v75 = "non-";
      }

      else
      {
        v75 = "";
      }

      v76 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to find existing %sWindowServer-based sampled process", v74, a1, v75);
      theStringb = v76;
      if (v76)
      {
        v77 = CFStringGetCStringPtr(v76, 0x8000100u);
        if (v77)
        {
          v187 = 0;
        }

        else
        {
          v77 = malloc_type_calloc(0x400uLL, 1uLL, 0x74E39FBBuLL);
          CFStringGetCString(theStringb, v77, 1024, 0x8000100u);
          v187 = v77;
        }

        if (qword_100127ED0)
        {
          v140 = qword_100127ED0;
        }

        else
        {
          v140 = __stderrp;
        }

        fprintf(v140, "%s\n", v77);
        if (v187)
        {
          free(v187);
        }

LABEL_332:
        CFRelease(theStringb);
        goto LABEL_333;
      }

      theStringd = sub_10003E080();
      v134 = theStringd;
      if (os_log_type_enabled(theStringd, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2B9C(a1);
        v134 = theStringd;
      }

      if (qword_100127ED0)
      {
        v135 = qword_100127ED0;
      }

      else
      {
        v135 = __stderrp;
      }

      goto LABEL_303;
    }
  }

LABEL_334:
  v20 = [SPSampledProcess copySampledProcessForPid:a1 isWSBased:(a6 >> 2) & 1 createIfUnsampled:1 cancelExistingProcesses:(a6 >> 9) & 1 wasSampled:&v204];

  if (!v20)
  {
    goto LABEL_335;
  }

LABEL_35:
  v196 = (a6 >> 1) & 1;
  if (v204 != 1)
  {
    [v20 setSamplingIntervalUs:a2];
    [v20 setOccasionalDataIntervalSec:a3];
    [v20 setSamplingMode:a4 withAdditionalSampledProcesses:v200];
    [v20 setOmitSensitiveStrings:(a6 >> 4) & 1];
    [v20 setCancelOnMemoryPressure:(a6 >> 5) & 1];
    if ([v20 startSampling])
    {
      if ((a6 & 0x40) != 0)
      {
        [v20 requireHIDEvent:1];
      }

      goto LABEL_54;
    }

    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v89 = *__error();
        v90 = sub_10003E080();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          sub_1000C2C44();
        }

        *__error() = v89;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_273;
      }

      v62 = *__error();
      v91 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to start sampling");
      v65 = v91;
      if (v91)
      {
        v92 = CFStringGetCStringPtr(v91, 0x8000100u);
        if (v92)
        {
          v93 = 0;
        }

        else
        {
          v92 = malloc_type_calloc(0x400uLL, 1uLL, 0xDE501104uLL);
          CFStringGetCString(v65, v92, 1024, 0x8000100u);
          v93 = v92;
        }

        if (qword_100127ED0)
        {
          v138 = qword_100127ED0;
        }

        else
        {
          v138 = __stderrp;
        }

        fprintf(v138, "%s\n", v92);
        if (v93)
        {
          free(v93);
        }

        goto LABEL_271;
      }

      v121 = sub_10003E080();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2C80();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v60 = *__error();
        v61 = sub_10003E080();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          sub_1000C2CB4();
        }

        *__error() = v60;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_273;
      }

      v62 = *__error();
      v63 = sub_10003E020(a1);
      v64 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Failed to start sampling", v63, a1);
      v65 = v64;
      if (v64)
      {
        v66 = CFStringGetCStringPtr(v64, 0x8000100u);
        if (v66)
        {
          v67 = 0;
        }

        else
        {
          v66 = malloc_type_calloc(0x400uLL, 1uLL, 0xDE501104uLL);
          CFStringGetCString(v65, v66, 1024, 0x8000100u);
          v67 = v66;
        }

        if (qword_100127ED0)
        {
          v131 = qword_100127ED0;
        }

        else
        {
          v131 = __stderrp;
        }

        fprintf(v131, "%s\n", v66);
        if (v67)
        {
          free(v67);
        }

LABEL_271:
        CFRelease(v65);
LABEL_272:
        *__error() = v62;
LABEL_273:
        [v20 removeSelfFromPidCache];
        *__error() = 37;

LABEL_472:
        v20 = 0;
        goto LABEL_473;
      }

      v121 = sub_10003E080();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2D38();
      }
    }

    if (qword_100127ED0)
    {
      v133 = qword_100127ED0;
    }

    else
    {
      v133 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v133);
    goto LABEL_272;
  }

  if ((a6 & 0x102) == 0x100)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v78 = *__error();
        v79 = sub_10003E080();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C32CC();
        }

        *__error() = v78;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_471;
      }

      v38 = *__error();
      v80 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not overriding existing sampling callback");
      v41 = v80;
      if (v80)
      {
        v81 = CFStringGetCStringPtr(v80, 0x8000100u);
        if (v81)
        {
          v82 = 0;
        }

        else
        {
          v81 = malloc_type_calloc(0x400uLL, 1uLL, 0xDE1A83DDuLL);
          CFStringGetCString(v41, v81, 1024, 0x8000100u);
          v82 = v81;
        }

        if (qword_100127ED0)
        {
          v136 = qword_100127ED0;
        }

        else
        {
          v136 = __stderrp;
        }

        fprintf(v136, "%s\n", v81);
        if (v82)
        {
          free(v82);
        }

        goto LABEL_256;
      }

      v120 = sub_10003E080();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
      {
        sub_1000C3300();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v36 = *__error();
        v37 = sub_10003E080();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C3334();
        }

        *__error() = v36;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_471;
      }

      v38 = *__error();
      v39 = sub_10003E020(a1);
      v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Not overriding existing sampling callback", v39, a1);
      v41 = v40;
      if (v40)
      {
        v42 = CFStringGetCStringPtr(v40, 0x8000100u);
        if (v42)
        {
          v43 = 0;
        }

        else
        {
          v42 = malloc_type_calloc(0x400uLL, 1uLL, 0xDE1A83DDuLL);
          CFStringGetCString(v41, v42, 1024, 0x8000100u);
          v43 = v42;
        }

        if (qword_100127ED0)
        {
          v130 = qword_100127ED0;
        }

        else
        {
          v130 = __stderrp;
        }

        fprintf(v130, "%s\n", v42);
        if (v43)
        {
          free(v43);
        }

LABEL_256:
        CFRelease(v41);
LABEL_257:
        *__error() = v38;
        goto LABEL_471;
      }

      v120 = sub_10003E080();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
      {
        sub_1000C33B8();
      }
    }

    if (qword_100127ED0)
    {
      v132 = qword_100127ED0;
    }

    else
    {
      v132 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v132);
    goto LABEL_257;
  }

  if ((a6 & 0x10) != 0 && ([v20 omitSensitiveStrings] & 1) == 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v122 = *__error();
        v123 = sub_10003E080();
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buffer) = 0;
          _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "Already sampling with sensitive strings", &buffer, 2u);
        }

        *__error() = v122;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 2)
      {
        goto LABEL_471;
      }

      v97 = *__error();
      v124 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already sampling with sensitive strings");
      v100 = v124;
      if (v124)
      {
        v125 = CFStringGetCStringPtr(v124, 0x8000100u);
        if (v125)
        {
          v126 = 0;
        }

        else
        {
          v125 = malloc_type_calloc(0x400uLL, 1uLL, 0xD8407571uLL);
          CFStringGetCString(v100, v125, 1024, 0x8000100u);
          v126 = v125;
        }

        if (qword_100127ED0)
        {
          v185 = qword_100127ED0;
        }

        else
        {
          v185 = __stderrp;
        }

        fprintf(v185, "%s\n", v125);
        if (v126)
        {
          free(v126);
        }

        goto LABEL_469;
      }

      v139 = sub_10003E080();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2DBC();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v94 = *__error();
        v95 = sub_10003E080();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v96 = sub_10003E020(a1);
          buffer = 136446466;
          v206 = v96;
          v207 = 1024;
          v208 = a1;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: Already sampling with sensitive strings", &buffer, 0x12u);
        }

        *__error() = v94;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 2)
      {
        goto LABEL_471;
      }

      v97 = *__error();
      v98 = sub_10003E020(a1);
      v99 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Already sampling with sensitive strings", v98, a1);
      v100 = v99;
      if (v99)
      {
        v101 = CFStringGetCStringPtr(v99, 0x8000100u);
        if (v101)
        {
          v102 = 0;
        }

        else
        {
          v101 = malloc_type_calloc(0x400uLL, 1uLL, 0xD8407571uLL);
          CFStringGetCString(v100, v101, 1024, 0x8000100u);
          v102 = v101;
        }

        if (qword_100127ED0)
        {
          v145 = qword_100127ED0;
        }

        else
        {
          v145 = __stderrp;
        }

        fprintf(v145, "%s\n", v101);
        if (v102)
        {
          free(v102);
        }

LABEL_469:
        CFRelease(v100);
LABEL_470:
        *__error() = v97;
LABEL_471:
        *__error() = 37;

        goto LABEL_472;
      }

      v139 = sub_10003E080();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2DF0();
      }
    }

    if (qword_100127ED0)
    {
      v146 = qword_100127ED0;
    }

    else
    {
      v146 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v146);
    goto LABEL_470;
  }

  if ((a6 & 2) != 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v108 = *__error();
        v109 = sub_10003E080();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C2FE4();
        }

        *__error() = v108;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 0)
      {
        theString = *__error();
        v110 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already sampling, overriding existing callback");
        v57 = v110;
        if (v110)
        {
          v111 = CFStringGetCStringPtr(v110, 0x8000100u);
          if (v111)
          {
            v112 = 0;
          }

          else
          {
            v111 = malloc_type_calloc(0x400uLL, 1uLL, 0x1D4CFECCuLL);
            CFStringGetCString(v57, v111, 1024, 0x8000100u);
            v112 = v111;
          }

          if (qword_100127ED0)
          {
            v165 = qword_100127ED0;
          }

          else
          {
            v165 = __stderrp;
          }

          fprintf(v165, "%s\n", v111);
          if (v112)
          {
            free(v112);
          }

          goto LABEL_393;
        }

        v137 = sub_10003E080();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
        {
          sub_1000C3018();
        }

LABEL_309:

        if (qword_100127ED0)
        {
          v144 = qword_100127ED0;
        }

        else
        {
          v144 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v144);
        goto LABEL_394;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v53 = *__error();
        v54 = sub_10003E080();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          sub_1000C304C();
        }

        *__error() = v53;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 0)
      {
        theString = *__error();
        v55 = sub_10003E020(a1);
        v56 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Already sampling, overriding existing callback", v55, a1);
        v57 = v56;
        if (v56)
        {
          v58 = CFStringGetCStringPtr(v56, 0x8000100u);
          if (v58)
          {
            v59 = 0;
          }

          else
          {
            v58 = malloc_type_calloc(0x400uLL, 1uLL, 0x1D4CFECCuLL);
            CFStringGetCString(v57, v58, 1024, 0x8000100u);
            v59 = v58;
          }

          if (qword_100127ED0)
          {
            v141 = qword_100127ED0;
          }

          else
          {
            v141 = __stderrp;
          }

          fprintf(v141, "%s\n", v58);
          if (v59)
          {
            free(v59);
          }

LABEL_393:
          CFRelease(v57);
LABEL_394:
          *__error() = theString;
          goto LABEL_395;
        }

        v137 = sub_10003E080();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
        {
          sub_1000C30D0();
        }

        goto LABEL_309;
      }
    }
  }

  else if ((a1 & 0x80000000) != 0)
  {
    if (byte_100127EC8)
    {
      v113 = *__error();
      v114 = sub_10003E080();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C2E74();
      }

      *__error() = v113;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      theString = *__error();
      v115 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already sampling, not overriding existing callback");
      v57 = v115;
      if (v115)
      {
        v116 = CFStringGetCStringPtr(v115, 0x8000100u);
        if (v116)
        {
          v117 = 0;
        }

        else
        {
          v116 = malloc_type_calloc(0x400uLL, 1uLL, 0x9F25C25AuLL);
          CFStringGetCString(v57, v116, 1024, 0x8000100u);
          v117 = v116;
        }

        if (qword_100127ED0)
        {
          v166 = qword_100127ED0;
        }

        else
        {
          v166 = __stderrp;
        }

        fprintf(v166, "%s\n", v116);
        if (v117)
        {
          free(v117);
        }

        goto LABEL_393;
      }

      v137 = sub_10003E080();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2EA8();
      }

      goto LABEL_309;
    }
  }

  else
  {
    if (byte_100127EC8)
    {
      v83 = *__error();
      v84 = sub_10003E080();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C2EDC();
      }

      *__error() = v83;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      theString = *__error();
      v85 = sub_10003E020(a1);
      v86 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Already sampling, not overriding existing callback", v85, a1);
      v57 = v86;
      if (v86)
      {
        v87 = CFStringGetCStringPtr(v86, 0x8000100u);
        if (v87)
        {
          v88 = 0;
        }

        else
        {
          v87 = malloc_type_calloc(0x400uLL, 1uLL, 0x9F25C25AuLL);
          CFStringGetCString(v57, v87, 1024, 0x8000100u);
          v88 = v87;
        }

        if (qword_100127ED0)
        {
          v142 = qword_100127ED0;
        }

        else
        {
          v142 = __stderrp;
        }

        fprintf(v142, "%s\n", v87);
        if (v88)
        {
          free(v88);
        }

        goto LABEL_393;
      }

      v137 = sub_10003E080();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
      {
        sub_1000C2F60();
      }

      goto LABEL_309;
    }
  }

LABEL_395:
  if ([v20 samplingIntervalUs] != a2 || a3 && objc_msgSend(v20, "occasionalDataIntervalSec") && objc_msgSend(v20, "occasionalDataIntervalSec") != a3)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v175 = *__error();
        v176 = sub_10003E080();
        if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
        {
          sub_1000C3154();
        }

        *__error() = v175;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_471;
      }

      v169 = *__error();
      v177 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already sampling with incompatible parameters");
      v172 = v177;
      if (v177)
      {
        v178 = CFStringGetCStringPtr(v177, 0x8000100u);
        if (v178)
        {
          v179 = 0;
        }

        else
        {
          v178 = malloc_type_calloc(0x400uLL, 1uLL, 0x23ECBC0uLL);
          CFStringGetCString(v172, v178, 1024, 0x8000100u);
          v179 = v178;
        }

        if (qword_100127ED0)
        {
          v184 = qword_100127ED0;
        }

        else
        {
          v184 = __stderrp;
        }

        fprintf(v184, "%s\n", v178);
        if (v179)
        {
          free(v179);
        }

        goto LABEL_460;
      }

      v181 = sub_10003E080();
      if (os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
      {
        sub_1000C3190();
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v167 = *__error();
        v168 = sub_10003E080();
        if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
        {
          sub_1000C31C4();
        }

        *__error() = v167;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_471;
      }

      v169 = *__error();
      v170 = sub_10003E020(a1);
      v171 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Already sampling with incompatible parameters", v170, a1);
      v172 = v171;
      if (v171)
      {
        v173 = CFStringGetCStringPtr(v171, 0x8000100u);
        if (v173)
        {
          v174 = 0;
        }

        else
        {
          v173 = malloc_type_calloc(0x400uLL, 1uLL, 0x23ECBC0uLL);
          CFStringGetCString(v172, v173, 1024, 0x8000100u);
          v174 = v173;
        }

        if (qword_100127ED0)
        {
          v182 = qword_100127ED0;
        }

        else
        {
          v182 = __stderrp;
        }

        fprintf(v182, "%s\n", v173);
        if (v174)
        {
          free(v174);
        }

LABEL_460:
        CFRelease(v172);
LABEL_461:
        *__error() = v169;
        goto LABEL_471;
      }

      v181 = sub_10003E080();
      if (os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
      {
        sub_1000C3248();
      }
    }

    if (qword_100127ED0)
    {
      v183 = qword_100127ED0;
    }

    else
    {
      v183 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v183);
    goto LABEL_461;
  }

  if ([v20 samplingMode] >= a4)
  {
    if ((a6 & 2) != 0)
    {
      [v20 setSamplingMode:a4 withAdditionalSampledProcesses:v200];
      [v20 setCancelOnMemoryPressure:(a6 >> 5) & 1];
LABEL_424:
      [v20 requireHIDEvent:(a6 >> 6) & 1];
LABEL_425:
      if ((a6 & 8) != 0)
      {
        [v20 setIsUrgent:1];
      }

      objc_initWeak(&buffer, v20);
      v201[0] = _NSConcreteStackBlock;
      v201[1] = 3221225472;
      v201[2] = sub_100090B78;
      v201[3] = &unk_100115CE0;
      v202 = v198;
      objc_copyWeak(&v203, &buffer);
      [v20 setSamplingCompletionHandlerQueue:v17 andBlock:v201];
      objc_destroyWeak(&v203);

      objc_destroyWeak(&buffer);
      goto LABEL_428;
    }

    if ((a6 & 0x20) == 0)
    {
      [v20 setCancelOnMemoryPressure:0];
    }
  }

  else
  {
    [v20 setSamplingMode:a4 withAdditionalSampledProcesses:v200];
    if ((a6 >> 1) & 1 | ((a6 & 0x20) == 0))
    {
      [v20 setCancelOnMemoryPressure:?];
      if (v196)
      {
        goto LABEL_424;
      }
    }
  }

LABEL_54:
  if ((a6 & 2) != 0 || (v204 & 1) == 0)
  {
    goto LABEL_425;
  }

  LOBYTE(v196) = 0;
LABEL_428:
  if (a9 > 0.0)
  {
    [v20 setSamplingTimeoutAtTime:a9];
  }

  if (v196 & 1 | ((v204 & 1) == 0))
  {
    [v20 setStopWhenProcessExits:a6 & 1];
  }

  if ((a6 & 0x80) != 0)
  {
    [v20 gatherLoadInfoForPid:a1];
  }

  v180 = v199;
  if (!v199)
  {
    goto LABEL_474;
  }

  [v20 setTargetProcessAbsolutePath:?];
LABEL_473:
  v180 = v199;
LABEL_474:

  v19 = v198;
LABEL_475:

  return v20;
}

void sub_100090B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100090B78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v3 + 16))(v3, WeakRetained, a2);
}

const char *sub_100090EE4(int a1)
{
  if ((a1 - 1) > 9)
  {
    return "unknown";
  }

  else
  {
    return (&off_100115D48)[(a1 - 1)];
  }
}

void sub_100090F10(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_100127E68;
  qword_100127E68 = v1;

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.spindump.processes_waiting_for_hid_event", v5);
  v4 = qword_100127E60;
  qword_100127E60 = v3;
}

_DWORD *sub_100090FC0(uint64_t a1)
{
  v2 = *(*a1 + 72);

  return sub_10003E020(v2);
}

void sub_100091028(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(a1 + 297);
  v4 = *(a1 + 298);
}

void sub_10009103C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0xEu);
}

id sub_10009105C()
{
  v2 = *v0;

  return [v2 targetProcessId];
}

id sub_100091074(void **a1)
{
  v2 = *a1;

  return [v2 targetProcessId];
}

_DWORD *sub_10009108C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;
  v4 = *a1;

  return sub_10003E020(v4);
}

id sub_1000911BC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (!v2)
  {
    stackshot_config_set_pid();
    v29 = stackshot_capture_with_config();
    if (!v29)
    {
      v30 = [NSData alloc];
      stackshot_buffer = stackshot_config_get_stackshot_buffer();
      v6 = [v30 initWithBytesNoCopy:stackshot_buffer length:stackshot_config_get_stackshot_size() freeWhenDone:0];
      goto LABEL_53;
    }

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000916A8;
    v40[3] = &unk_1001152D0;
    v41 = v29;
    if (qword_100127E78 == -1)
    {
      v6 = 0;
      goto LABEL_53;
    }

    dispatch_once(&qword_100127E78, v40);
LABEL_52:
    v6 = 0;
    goto LABEL_53;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (!v4)
  {
    goto LABEL_52;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v37;
  do
  {
    v8 = 0;
    do
    {
      if (*v37 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v36 + 1) + 8 * v8);
      [v9 intValue];
      stackshot_config_set_pid();
      v10 = stackshot_capture_with_config();
      if (v10)
      {
        if (v10 == 2)
        {
          if (byte_100127EC8 == 1)
          {
            v11 = *__error();
            v12 = sub_10003E080();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              sub_1000C35B4(v43, v9);
            }

            *__error() = v11;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 0)
          {
            v14 = *__error();
            v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"pid %d doesn't exist", [v9 intValue]);
            if (v15)
            {
              v16 = v15;
              v33 = v14;
              v17 = v3;
              v18 = v6;
              CStringPtr = CFStringGetCStringPtr(v15, 0x8000100u);
              if (CStringPtr)
              {
                v20 = CStringPtr;
                v21 = 0;
              }

              else
              {
                v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x4C16FD23uLL);
                CFStringGetCString(v16, v20, 1024, 0x8000100u);
                v21 = v20;
              }

              if (qword_100127ED0)
              {
                v27 = qword_100127ED0;
              }

              else
              {
                v27 = __stderrp;
              }

              fprintf(v27, "%s\n", v20);
              if (v21)
              {
                free(v21);
              }

              CFRelease(v16);
              v6 = v18;
              v3 = v17;
              v14 = v33;
            }

            else
            {
              v25 = sub_10003E080();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
              {
                sub_1000C3610(v42, v9);
              }

              if (qword_100127ED0)
              {
                v26 = qword_100127ED0;
              }

              else
              {
                v26 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v26);
            }

            *__error() = v14;
          }

          [v3 removeObject:v9];
        }

        else
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100091880;
          block[3] = &unk_1001152D0;
          v35 = v10;
          if (qword_100127E80 != -1)
          {
            dispatch_once(&qword_100127E80, block);
          }
        }
      }

      else
      {
        if (v6)
        {
          v22 = stackshot_config_get_stackshot_buffer();
          [v6 appendBytes:v22 length:stackshot_config_get_stackshot_size()];
        }

        else
        {
          v23 = [NSMutableData alloc];
          v24 = stackshot_config_get_stackshot_buffer();
          v6 = [v23 initWithBytes:v24 length:stackshot_config_get_stackshot_size()];
        }

        stackshot_config_dealloc_buffer();
      }

      v8 = v8 + 1;
    }

    while (v5 != v8);
    v28 = [v3 countByEnumeratingWithState:&v36 objects:v44 count:16];
    v5 = v28;
  }

  while (v28);
LABEL_53:

  return v6;
}

int *sub_1000916A8(int *result)
{
  v1 = result;
  if (byte_100127EC8 == 1)
  {
    v2 = *__error();
    v3 = sub_10003E080();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000C366C(v1);
    }

    result = __error();
    *result = v2;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v5 = *__error();
    v7 = *(v1 + 32);
    v6 = (v1 + 32);
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Stackshot failed: %d", v7);
    if (v8)
    {
      v9 = v8;
      CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
      if (CStringPtr)
      {
        v11 = CStringPtr;
        v12 = 0;
      }

      else
      {
        v11 = malloc_type_calloc(0x400uLL, 1uLL, 0x759AEC2uLL);
        CFStringGetCString(v9, v11, 1024, 0x8000100u);
        v12 = v11;
      }

      if (qword_100127ED0)
      {
        v15 = qword_100127ED0;
      }

      else
      {
        v15 = __stderrp;
      }

      fprintf(v15, "%s\n", v11);
      if (v12)
      {
        free(v12);
      }

      CFRelease(v9);
    }

    else
    {
      v13 = sub_10003E080();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1000C36E0(v6);
      }

      if (qword_100127ED0)
      {
        v14 = qword_100127ED0;
      }

      else
      {
        v14 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v14);
    }

    result = __error();
    *result = v5;
  }

  return result;
}

int *sub_100091880(int *result)
{
  v1 = result;
  if (byte_100127EC8 == 1)
  {
    v2 = *__error();
    v3 = sub_10003E080();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000C366C(v1);
    }

    result = __error();
    *result = v2;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v5 = *__error();
    v7 = *(v1 + 32);
    v6 = (v1 + 32);
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Stackshot failed: %d", v7);
    if (v8)
    {
      v9 = v8;
      CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
      if (CStringPtr)
      {
        v11 = CStringPtr;
        v12 = 0;
      }

      else
      {
        v11 = malloc_type_calloc(0x400uLL, 1uLL, 0x59C8CB92uLL);
        CFStringGetCString(v9, v11, 1024, 0x8000100u);
        v12 = v11;
      }

      if (qword_100127ED0)
      {
        v15 = qword_100127ED0;
      }

      else
      {
        v15 = __stderrp;
      }

      fprintf(v15, "%s\n", v11);
      if (v12)
      {
        free(v12);
      }

      CFRelease(v9);
    }

    else
    {
      v13 = sub_10003E080();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_1000C36E0(v6);
      }

      if (qword_100127ED0)
      {
        v14 = qword_100127ED0;
      }

      else
      {
        v14 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v14);
    }

    result = __error();
    *result = v5;
  }

  return result;
}

uint64_t sub_100092620(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  policy_info = 0;
  v2 = pthread_self();
  v3 = pthread_mach_thread_np(v2);
  if (thread_policy_set(v3, 1u, &policy_info, 1u))
  {
    sub_1000C3B80();
  }

  v124 = 63;
  v4 = pthread_self();
  v5 = pthread_mach_thread_np(v4);
  if (thread_policy_set(v5, 3u, &v124, 1u))
  {
    sub_1000C3D10();
  }

  v120 = 0;
  v121 = &v120;
  v122 = 0x2020000000;
  v123 = 0;
  if (byte_100127F10 & 1) != 0 || (byte_100127F11)
  {
    dsema = 0;
  }

  else
  {
    dsema = dispatch_semaphore_create(0);
  }

  group = dispatch_group_create();
  v92 = byte_100127F11;
  if (byte_100127F11 == 1)
  {
    dispatch_suspend(*(a1 + 24));
  }

  v116 = 0;
  v117 = &v116;
  v118 = 0x2020000000;
  v119 = 0;
  when = dispatch_time(0, 0);
  SAMachAbsTimeSecondsGetCurrent();
  v7 = v6;
  [*(a1 + 8) startingSamplingLiveSystem];
  v98 = 0;
  v95 = 0;
  v97 = 0;
  do
  {
    v8 = objc_autoreleasePoolPush();
    if ((byte_100127EDC & 2) != 0 && sub_1000338E4())
    {
      ++*(a1 + 88);
      goto LABEL_117;
    }

    ++*(a1 + 84);
    if (dispatch_semaphore_wait(*(a1 + 112), 0))
    {
      if (byte_100127EC8 == 1)
      {
        v9 = *__error();
        v10 = sub_10003E080();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1000C3EA0(&v114, v115);
        }

        *__error() = v9;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v14 = *__error();
        v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to update sampling pid list");
        v16 = v15;
        if (v15)
        {
          CStringPtr = CFStringGetCStringPtr(v15, 0x8000100u);
          if (CStringPtr)
          {
            v18 = 0;
          }

          else
          {
            CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0x49956E23uLL);
            CFStringGetCString(v16, CStringPtr, 1024, 0x8000100u);
            v18 = CStringPtr;
          }

          if (qword_100127ED0)
          {
            v21 = qword_100127ED0;
          }

          else
          {
            v21 = __stderrp;
          }

          fprintf(v21, "%s\n", CStringPtr);
          if (v18)
          {
            free(v18);
          }

          CFRelease(v16);
        }

        else
        {
          v19 = sub_10003E080();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            sub_1000C3ED8(&v112, v113);
          }

          if (qword_100127ED0)
          {
            v20 = qword_100127ED0;
          }

          else
          {
            v20 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v20);
        }

        v12 = 0;
        *__error() = v14;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = *(a1 + 104);
      if (v12 == 1)
      {
        *(a1 + 104) = 0;
        v13 = [*(a1 + 96) mutableCopy];

        v95 = v13;
      }

      dispatch_semaphore_signal(*(a1 + 112));
    }

    v22 = v117[3];
    if (v22)
    {
      v117[3] = 0;
    }

    else
    {
      v22 = stackshot_config_create();
    }

    if (!v98)
    {
      v12 = 1;
    }

    if (v12 == 1)
    {
      stackshot_config_set_flags();
      stackshot_config_set_delta_timestamp();
LABEL_54:
      v23 = 0;
      goto LABEL_55;
    }

    stackshot_config_set_flags();
    stackshot_config_set_delta_timestamp();
    if (!dword_100127EA4)
    {
      goto LABEL_54;
    }

    v23 = ((dword_100127EA4 * 1.2) + 0x3FFFF) & 0xFFFC0000;
    stackshot_config_set_size_hint();
LABEL_55:
    v98 = mach_absolute_time();
    v24 = sub_1000911BC(v22, v95);
    if (v24)
    {
      SASecondsFromMachTimeUsingLiveTimebase();
      v26 = v25;
      if ([v24 length] >= 0xFFFFFFFF)
      {
        if (byte_100127EC8 == 1)
        {
          v77 = *__error();
          v78 = sub_10003E080();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
          {
            sub_1000C3F30(buf, [v24 length]);
          }

          *__error() = v77;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v79 = *__error();
          v80 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: bad stackshot data length %lu", "stackshotData.length < 4294967295U", [v24 length]);
          v81 = v80;
          if (v80)
          {
            v84 = CFStringGetCStringPtr(v80, 0x8000100u);
            if (v84)
            {
              v85 = 0;
            }

            else
            {
              v84 = malloc_type_calloc(0x400uLL, 1uLL, 0xF7639C3DuLL);
              CFStringGetCString(v81, v84, 1024, 0x8000100u);
              v85 = v84;
            }

            if (qword_100127ED0)
            {
              v86 = qword_100127ED0;
            }

            else
            {
              v86 = __stderrp;
            }

            fprintf(v86, "%s\n", v84);
            if (v85)
            {
              free(v85);
            }

            CFRelease(v81);
          }

          else
          {
            v82 = sub_10003E080();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
            {
              sub_1000C3F80(v126, [v24 length]);
            }

            if (qword_100127ED0)
            {
              v83 = qword_100127ED0;
            }

            else
            {
              v83 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v83);
          }

          *__error() = v79;
        }

        [v24 length];
        sub_10003DF54("_SamplingThread", "SPSampleProvider.m", 263, "%s: bad stackshot data length %lu", v87, v88, v89, v90, "stackshotData.length < 4294967295U");
        abort();
      }

      v27 = [v24 length];
      v28 = v27;
      if ((v12 & 1) == 0)
      {
        if (v23 && v23 < v27)
        {
          if (byte_100127EC8 == 1)
          {
            v29 = *__error();
            v30 = sub_10003E080();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109632;
              v128 = dword_100127EA4;
              v129 = 1024;
              *v130 = v23;
              *&v130[4] = 1024;
              *&v130[6] = v28;
              _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Hint too small (previous %d, hint %d, actual %d)", buf, 0x14u);
            }

            *__error() = v29;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 0)
          {
            v31 = *__error();
            v32 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Hint too small (previous %d, hint %d, actual %d)", dword_100127EA4, v23, v28);
            v33 = v32;
            if (v32)
            {
              v34 = CFStringGetCStringPtr(v32, 0x8000100u);
              if (v34)
              {
                v35 = 0;
              }

              else
              {
                v34 = malloc_type_calloc(0x400uLL, 1uLL, 0xD2D880CDuLL);
                CFStringGetCString(v33, v34, 1024, 0x8000100u);
                v35 = v34;
              }

              if (qword_100127ED0)
              {
                v38 = qword_100127ED0;
              }

              else
              {
                v38 = __stderrp;
              }

              fprintf(v38, "%s\n", v34);
              if (v35)
              {
                free(v35);
              }

              CFRelease(v33);
            }

            else
            {
              v36 = sub_10003E080();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
              {
                *buf = 67109632;
                v128 = dword_100127EA4;
                v129 = 1024;
                *v130 = v23;
                *&v130[4] = 1024;
                *&v130[6] = v28;
                _os_log_fault_impl(&_mh_execute_header, v36, OS_LOG_TYPE_FAULT, "Unable to format: Hint too small (previous %d, hint %d, actual %d)", buf, 0x14u);
              }

              if (qword_100127ED0)
              {
                v37 = qword_100127ED0;
              }

              else
              {
                v37 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v37);
            }

            *__error() = v31;
          }
        }

        if (dword_100127EA4 < v28)
        {
          dword_100127EA4 = v28;
        }
      }

      if (dsema)
      {
        v97 |= (atomic_fetch_add_explicit(v121 + 3, v28, memory_order_relaxed) + v28) > 20971519;
      }

      v39 = dispatch_get_global_queue(25, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100096BA4;
      block[3] = &unk_100115E60;
      v40 = a1;
      v109 = v40;
      v111 = v26;
      v41 = group;
      v110 = v41;
      dispatch_async(v39, block);

      if (qword_100127EB0 != -1)
      {
        sub_1000C3F08();
      }

      if (qword_100127EA8)
      {
        v42 = v24;
        v43 = [v24 bytes];
        v44 = [v24 length];
        if (fwrite(v43, v44, 1uLL, qword_100127EA8) != 1)
        {
          if (byte_100127EC8 == 1)
          {
            v45 = *__error();
            v46 = sub_10003E080();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v62 = ferror(qword_100127EA8);
              v63 = strerror(v62);
              *buf = 67109378;
              v128 = v62;
              v129 = 2080;
              *v130 = v63;
              _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Unable to write stackshot: %d (%s)", buf, 0x12u);
            }

            *__error() = v45;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v93 = *__error();
            v47 = ferror(qword_100127EA8);
            v48 = strerror(v47);
            v49 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write stackshot: %d (%s)", v47, v48);
            v50 = v49;
            if (v49)
            {
              v51 = CFStringGetCStringPtr(v49, 0x8000100u);
              if (v51)
              {
                v52 = 0;
              }

              else
              {
                v51 = malloc_type_calloc(0x400uLL, 1uLL, 0x98F51B62uLL);
                CFStringGetCString(v50, v51, 1024, 0x8000100u);
                v52 = v51;
              }

              if (qword_100127ED0)
              {
                v55 = qword_100127ED0;
              }

              else
              {
                v55 = __stderrp;
              }

              fprintf(v55, "%s\n", v51);
              if (v52)
              {
                free(v52);
              }

              CFRelease(v50);
            }

            else
            {
              v53 = sub_10003E080();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
              {
                v64 = ferror(qword_100127EA8);
                v65 = strerror(v64);
                *buf = 67109378;
                v128 = v64;
                v129 = 2080;
                *v130 = v65;
                _os_log_fault_impl(&_mh_execute_header, v53, OS_LOG_TYPE_FAULT, "Unable to format: Unable to write stackshot: %d (%s)", buf, 0x12u);
              }

              if (qword_100127ED0)
              {
                v54 = qword_100127ED0;
              }

              else
              {
                v54 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v54);
            }

            *__error() = v93;
          }

          fclose(qword_100127EA8);
          qword_100127EA8 = 0;
        }
      }

      v56 = *(a1 + 24);
      v100[0] = _NSConcreteStackBlock;
      v100[1] = 3221225472;
      v100[2] = sub_1000970A4;
      v100[3] = &unk_100115EA8;
      v101 = v40;
      v102 = v24;
      v104 = &v116;
      v106 = v22;
      v57 = dsema;
      v107 = v28;
      v103 = v57;
      v105 = &v120;
      dispatch_group_async(v41, v56, v100);
    }

LABEL_117:
    objc_autoreleasePoolPop(v8);
    if (((dsema != 0) & v97) == 1)
    {
      if (qword_100127EB8 != -1)
      {
        sub_1000C3FD0();
      }

      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      v97 = 0;
    }

    SAMachAbsTimeSecondsGetCurrent();
    v59 = v58;
    v60 = *(a1 + 64);
    v7 = v7 + v60 / 1000000.0;
    if (v7 <= v58)
    {
      v61 = dispatch_time(0, 0);
      v7 = v59;
    }

    else
    {
      v61 = dispatch_time(when, 1000 * v60);
    }

    when = v61;
  }

  while (dispatch_semaphore_wait(*(a1 + 48), v61));
  [*(a1 + 8) finishedSamplingLiveSystem];
  if (v92)
  {
    if (qword_100127F18 && dispatch_group_wait(qword_100127F18, 0))
    {
      if (byte_100127EC8 == 1)
      {
        v66 = *__error();
        v67 = sub_10003E080();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Sampling completed, waiting for SIGINFO...", buf, 2u);
        }

        *__error() = v66;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 2)
      {
        v68 = *__error();
        v69 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Sampling completed, waiting for SIGINFO...");
        v70 = v69;
        if (v69)
        {
          v71 = CFStringGetCStringPtr(v69, 0x8000100u);
          if (v71)
          {
            v72 = 0;
          }

          else
          {
            v71 = malloc_type_calloc(0x400uLL, 1uLL, 0xB93FA9D3uLL);
            CFStringGetCString(v70, v71, 1024, 0x8000100u);
            v72 = v71;
          }

          if (qword_100127ED0)
          {
            v75 = qword_100127ED0;
          }

          else
          {
            v75 = __stderrp;
          }

          fprintf(v75, "%s\n", v71);
          if (v72)
          {
            free(v72);
          }

          CFRelease(v70);
        }

        else
        {
          v73 = sub_10003E080();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
          {
            sub_1000C3FF8();
          }

          if (qword_100127ED0)
          {
            v74 = qword_100127ED0;
          }

          else
          {
            v74 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v74);
        }

        *__error() = v68;
      }

      dispatch_group_wait(qword_100127F18, 0xFFFFFFFFFFFFFFFFLL);
    }

    dispatch_resume(*(a1 + 24));
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  if (v117[3])
  {
    stackshot_config_dealloc();
  }

  _Block_object_dispose(&v116, 8);

  _Block_object_dispose(&v120, 8);
  objc_autoreleasePoolPop(context);
  return 0;
}

void sub_1000936B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose((v50 - 248), 8);
  _Unwind_Resume(a1);
}

void sub_100094188(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.spindump.sample_provider_singleton", v3);
  v2 = qword_100127E90;
  qword_100127E90 = v1;
}

void sub_100094348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100094360(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100094378(uint64_t a1)
{
  v2 = dword_100127EA0;
  if (!dword_100127EA0)
  {
    v3 = objc_alloc_init(SPStackshotProvider);
    v4 = qword_100127E98;
    qword_100127E98 = v3;

    v2 = dword_100127EA0;
  }

  dword_100127EA0 = v2 + 1;
  v5 = +[SATimestamp timestamp];
  v6 = *(qword_100127E98 + 84);
  v7 = *(qword_100127E98 + 88);
  if ([qword_100127E98 startWithSamplingIntervalUs:*(a1 + 48) andOccasionalDataIntervalSec:*(a1 + 52) andOnlySampleProcesses:*(a1 + 32) andOnlySampleMainThreads:*(a1 + 56) andOmitSensitiveStrings:*(a1 + 57)])
  {
    v8 = [SPStackshotProviderSnapshot alloc];
    v9 = [(SPStackshotProviderSnapshot *)v8 initWithStackshotProvider:qword_100127E98 timestamp:v5 numSamples:v6 numSamplesAvoidedDueToAudio:v7];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    if (!--dword_100127EA0)
    {
      sub_1000C4178();
    }
  }
}

void sub_1000960E8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  if (v7 + -1.0 > v9)
  {
    LODWORD(a5) = *(v8 + 68);
    if (v7 + 1.0 < v9 + *&a5)
    {
      v17 = v5;
      v18 = v6;
      *(v8 + 56) = v7;
      v11 = [SAAuxiliaryData auxiliaryDataForTimestamp:0];
      v12 = *(a1 + 32);
      v13 = *(v12 + 24);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000961D4;
      v15[3] = &unk_100115DE8;
      v15[4] = v12;
      v16 = v11;
      v14 = v11;
      dispatch_async(v13, v15);
    }
  }
}

void sub_100096440(uint64_t a1)
{
  v1 = qword_100127E98;
  if (qword_100127E98 != *(a1 + 32))
  {
    if (sub_1000C4728(&v19))
    {
      return;
    }

    v5 = v19;
LABEL_43:
    *__error() = v5;
    return;
  }

  if (--dword_100127EA0)
  {
    if (byte_100127EC8 == 1)
    {
      v2 = *__error();
      v3 = sub_10003E080();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        sub_1000C48F8();
      }

      *__error() = v2;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      return;
    }

    v5 = *__error();
    v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Stackshot provider shared instance not yet done");
    if (v6)
    {
      v7 = v6;
      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      if (!CStringPtr)
      {
        v9 = 3275332155;
LABEL_36:
        v14 = malloc_type_calloc(0x400uLL, 1uLL, v9);
        CFStringGetCString(v7, v14, 1024, 0x8000100u);
        v15 = v14;
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    v16 = sub_10003E080();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1000C492C();
    }

    goto LABEL_31;
  }

  qword_100127E98 = 0;

  if (byte_100127EC8 == 1)
  {
    v10 = *__error();
    v11 = sub_10003E080();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000C4960();
    }

    *__error() = v10;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v5 = *__error();
    v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Stackshot provider shared instance done");
    if (v13)
    {
      v7 = v13;
      CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
      if (!CStringPtr)
      {
        v9 = 1965783567;
        goto LABEL_36;
      }

LABEL_26:
      v14 = CStringPtr;
      v15 = 0;
LABEL_37:
      if (qword_100127ED0)
      {
        v18 = qword_100127ED0;
      }

      else
      {
        v18 = __stderrp;
      }

      fprintf(v18, "%s\n", v14);
      if (v15)
      {
        free(v15);
      }

      CFRelease(v7);
      goto LABEL_43;
    }

    v16 = sub_10003E080();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1000C4994();
    }

LABEL_31:

    if (qword_100127ED0)
    {
      v17 = qword_100127ED0;
    }

    else
    {
      v17 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v17);
    goto LABEL_43;
  }
}

void sub_100096740(uint64_t a1)
{
  [*(a1 + 32) machAbsTimeSeconds];
  if (v2 + -1.0 > *(*(a1 + 40) + 56))
  {
    [*(a1 + 32) machAbsTimeSeconds];
    *(*(a1 + 40) + 56) = v3;
    v4 = [SAAuxiliaryData auxiliaryDataForTimestamp:0];
    v5 = *(a1 + 40);
    v6 = *(v5 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000968F4;
    block[3] = &unk_100115DE8;
    block[4] = v5;
    v16 = v4;
    v7 = v4;
    dispatch_async(v6, block);
  }

  if (*(a1 + 48) && *(a1 + 56))
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100096900;
    v11[3] = &unk_100115E10;
    v10 = *(a1 + 32);
    v8 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    v14 = *(a1 + 64);
    v13 = *(a1 + 56);
    v9 = objc_retainBlock(v11);
    if (*(a1 + 72) == 1)
    {
      dispatch_group_notify(*(*(a1 + 40) + 32), *(a1 + 48), v9);
    }

    else
    {
      dispatch_async(*(a1 + 48), v9);
    }
  }
}

void sub_100096900(uint64_t a1)
{
  v2 = [[SPStackshotProviderSnapshot alloc] initWithStackshotProvider:*(a1 + 32) timestamp:*(a1 + 40) numSamples:*(a1 + 56) numSamplesAvoidedDueToAudio:*(a1 + 60)];
  (*(*(a1 + 48) + 16))();
}

void sub_100096AA0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 120);
  v2 = [NSNumber numberWithInt:*(a1 + 40)];
  [v1 addObject:v2];
}

void sub_100096BA4(double *a1)
{
  v1 = *(a1 + 4);
  v2 = *(v1 + 68);
  if (v2)
  {
    if (a1[6] > *(v1 + 56) + v2)
    {
      v4 = objc_autoreleasePoolPush();
      *(*(a1 + 4) + 56) = a1[6];
      v5 = [SAAuxiliaryData auxiliaryDataForTimestamp:0];
      v6 = *(a1 + 4);
      v7 = *(a1 + 5);
      v8 = v6[3];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100096CAC;
      v10[3] = &unk_100115DE8;
      v11 = v6;
      v12 = v5;
      v9 = v5;
      dispatch_group_async(v7, v8, v10);

      objc_autoreleasePoolPop(v4);
    }
  }
}

void sub_100096CB8(id a1)
{
  v1 = getenv("SPINDUMP_SAVE_STACKSHOTS");
  if (v1 && (*v1 != 48 || v1[1]))
  {
    strcpy(__filename, "/var/mobile/stackshots.");
    memset(&v22, 0, sizeof(v22));
    v21 = time(0);
    localtime_r(&v21, &v22);
    v2 = strftime(&__filename[23], 0x3E9uLL, "%Y-%m-%d-%T", &v22);
    v3 = v2 + 23;
    if (v2 + 23 >= 0x400)
    {
      sub_1000C49C8(__filename, v3);
    }

    v4 = getpid();
    snprintf(&__filename[v3], 1001 - v2, ".%d.buf", v4);
    qword_100127EA8 = fopen(__filename, "w");
    if (qword_100127EA8)
    {
      if (byte_100127EC8)
      {
        v5 = *__error();
        v6 = sub_10003E080();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v24 = __filename;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saving stackshots to %s", buf, 0xCu);
        }

        *__error() = v5;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 2)
      {
        v7 = *__error();
        v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Saving stackshots to %s", __filename);
        if (!v8)
        {
          v9 = sub_10003E080();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            sub_1000C4BC0();
          }

LABEL_34:

          if (qword_100127ED0)
          {
            v20 = qword_100127ED0;
          }

          else
          {
            v20 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v20);
LABEL_38:
          *__error() = v7;
          return;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v10 = *__error();
        v11 = sub_10003E080();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000C4C34(__filename, v11);
        }

        *__error() = v10;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v7 = *__error();
        v12 = *__error();
        v13 = __error();
        v14 = strerror(*v13);
        v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to open %s to save stackshots: %d (%s)", __filename, v12, v14);
        if (!v8)
        {
          v9 = sub_10003E080();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            sub_1000C4CD8(__filename, v9);
          }

          goto LABEL_34;
        }

LABEL_23:
        v15 = v8;
        CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
        if (CStringPtr)
        {
          v17 = CStringPtr;
          v18 = 0;
        }

        else
        {
          v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x67BC2E96uLL);
          CFStringGetCString(v15, v17, 1024, 0x8000100u);
          v18 = v17;
        }

        if (qword_100127ED0)
        {
          v19 = qword_100127ED0;
        }

        else
        {
          v19 = __stderrp;
        }

        fprintf(v19, "%s\n", v17);
        if (v18)
        {
          free(v18);
        }

        CFRelease(v15);
        goto LABEL_38;
      }
    }
  }
}

intptr_t sub_1000970A4(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 8) addKCDataStackshots:*(a1 + 40) createSeparateSamplePerStackshot:0];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = *(*(a1 + 32) + 120);
  v3 = [v2 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (!v3)
  {
    goto LABEL_48;
  }

  v4 = v3;
  v5 = *v38;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v38 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v37 + 1) + 8 * i);
      if (([*(*(a1 + 32) + 8) cacheLoadInfoForProcess:{objc_msgSend(v7, "intValue")}] & 1) == 0)
      {
        if (([v7 intValue] & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v17 = *__error();
            v18 = sub_10003E080();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              sub_1000C4D7C(&v35, v36);
            }

            *__error() = v17;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v11 = *__error();
            v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to cache load info");
            if (v13)
            {
LABEL_30:
              v20 = v13;
              CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
              if (CStringPtr)
              {
                v22 = CStringPtr;
                v23 = 0;
              }

              else
              {
                v22 = malloc_type_calloc(0x400uLL, 1uLL, 0x1D8FE22BuLL);
                CFStringGetCString(v20, v22, 1024, 0x8000100u);
                v23 = v22;
              }

              if (qword_100127ED0)
              {
                v24 = qword_100127ED0;
              }

              else
              {
                v24 = __stderrp;
              }

              fprintf(v24, "%s\n", v22);
              if (v23)
              {
                free(v23);
              }

              CFRelease(v20);
              goto LABEL_45;
            }

            v14 = sub_10003E080();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              sub_1000C4DB4(&v33, v34);
            }

LABEL_41:

            if (qword_100127ED0)
            {
              v25 = qword_100127ED0;
            }

            else
            {
              v25 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v25);
LABEL_45:
            *__error() = v11;
            continue;
          }
        }

        else
        {
          if (byte_100127EC8)
          {
            v8 = *__error();
            v9 = sub_10003E080();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v26 = sub_10003E020([v7 intValue]);
              v27 = [v7 intValue];
              *buf = 136446466;
              v42 = v26;
              v43 = 1024;
              v44 = v27;
              _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s [%d]: Unable to cache load info", buf, 0x12u);
            }

            *__error() = v8;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v11 = *__error();
            v12 = sub_10003E020([v7 intValue]);
            v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to cache load info", v12, [v7 intValue]);
            if (v13)
            {
              goto LABEL_30;
            }

            v14 = sub_10003E080();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              v15 = sub_10003E020([v7 intValue]);
              v16 = [v7 intValue];
              *buf = 136315394;
              v42 = v15;
              v43 = 1024;
              v44 = v16;
              _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: Unable to cache load info", buf, 0x12u);
            }

            goto LABEL_41;
          }
        }
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v37 objects:v45 count:16];
  }

  while (v4);
LABEL_48:

  [*(*(a1 + 32) + 120) removeAllObjects];
  objc_autoreleasePoolPop(context);
  v28 = *(a1 + 72);
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    result = stackshot_config_dealloc();
  }

  else
  {
    result = stackshot_config_dealloc_buffer();
    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 72);
  }

  if (*(a1 + 48))
  {
    v30 = *(a1 + 80);
    v31 = atomic_fetch_add_explicit((*(*(a1 + 64) + 8) + 24), -v30, memory_order_relaxed) - v30;
    if (v31 <= 20971519 && v31 + *(a1 + 80) >= 20971520)
    {
      return dispatch_semaphore_signal(*(a1 + 48));
    }
  }

  return result;
}

void sub_1000975B0(id a1)
{
  if (byte_100127EC8 == 1)
  {
    v1 = *__error();
    v2 = sub_10003E080();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4DE4();
    }

    *__error() = v1;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v4 = *__error();
    v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to process samples fast enough, throttling sampling rate to avoid bloating memory. Use -noThrottle to avoid this.");
    if (v5)
    {
      v6 = v5;
      CStringPtr = CFStringGetCStringPtr(v5, 0x8000100u);
      if (CStringPtr)
      {
        v8 = CStringPtr;
        v9 = 0;
      }

      else
      {
        v8 = malloc_type_calloc(0x400uLL, 1uLL, 0xA311B46AuLL);
        CFStringGetCString(v6, v8, 1024, 0x8000100u);
        v9 = v8;
      }

      if (qword_100127ED0)
      {
        v12 = qword_100127ED0;
      }

      else
      {
        v12 = __stderrp;
      }

      fprintf(v12, "%s\n", v8);
      if (v9)
      {
        free(v9);
      }

      CFRelease(v6);
    }

    else
    {
      v10 = sub_10003E080();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_1000C4E20();
      }

      if (qword_100127ED0)
      {
        v11 = qword_100127ED0;
      }

      else
      {
        v11 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v11);
    }

    *__error() = v4;
  }
}

void sub_100097774(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

void sub_100097790(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

uint64_t sub_1000977A8(uint64_t result, uint64_t a2, int a3)
{
  *(a2 + 4) = v3;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  *(a2 + 18) = 2080;
  *(a2 + 20) = result;
  return result;
}

uint64_t sub_1000977C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(result + 4) = a3;
  *(result + 12) = 2048;
  *(result + 14) = a2;
  return result;
}

id sub_1000977DC(uint64_t a1, void *a2)
{

  return [a2 intValue];
}

id *sub_100098474(uint64_t a1, void *a2, char a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a2;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = objc_opt_self();
  if (v13 && v15)
  {
    sub_1000C5AC0(v13, v15);
  }

  if (!v15 && !v14 && !v13)
  {
    sub_1000C58B4(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  v24 = objc_alloc_init(v16);
  objc_storeWeak(v24 + 7, v12);
  *(v24 + 8) = a3;
  v25 = [v13 copy];
  v26 = v24[2];
  v24[2] = v25;

  v24[4] = a5;
  v27 = [v14 copy];
  v28 = v24[5];
  v24[5] = v27;

  v29 = [v15 copy];
  v30 = v24[3];
  v24[3] = v29;

  return v24;
}

BOOL sub_100098588(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = !(v3 | v4) || v3 && v4 && ([v3 isEqualToString:v4] & 1) != 0;

  return v6;
}

void sub_1000A06B4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x328], 8);
  _Unwind_Resume(a1);
}

void *sub_1000A0AF0(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  if (v4)
  {
    *(v3 + 24) = 2 * v4;
    v5 = *(*(*v2 + 8) + 24);
    if (v5 <= 0)
    {
      sub_1000C65E8(a1 + 32);
    }
  }

  else
  {
    *(v3 + 24) = 0x4000;
    v5 = *(*(*v2 + 8) + 24);
  }

  result = reallocf(*(*(*(a1 + 40) + 8) + 24), v5);
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    sub_1000C67F8(v2);
  }

  return result;
}

void sub_1000A0B94(FILE *a1, void *a2, void *a3, char a4, char a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  context = objc_autoreleasePoolPush();
  v14 = +[NSMutableDictionary dictionary];
  v15 = +[NSMutableDictionary dictionary];
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = a5;
  v16 = +[NSMutableSet set];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1000A4398;
  v47 = sub_1000A43A8;
  v48 = 0;
  v17 = sub_1000A0E84(a1, 0, v12, a4);
  v18 = v44[5];
  v44[5] = v17;

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000A43B0;
  v31[3] = &unk_100115F78;
  v41 = a5;
  v19 = v13;
  v32 = v19;
  v38 = v49;
  v39 = &v43;
  v42 = a4;
  v40 = a1;
  v20 = v12;
  v33 = v20;
  v21 = v11;
  v34 = v21;
  v22 = v14;
  v35 = v22;
  v23 = v16;
  v36 = v23;
  v24 = v15;
  v37 = v24;
  sub_1000A314C(a1, 0, v31);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000A484C;
  v28[3] = &unk_100115FC8;
  v25 = v23;
  v29 = v25;
  v26 = v24;
  v30 = v26;
  [v22 enumerateKeysAndObjectsUsingBlock:v28];

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(v49, 8);

  objc_autoreleasePoolPop(context);
}

id sub_1000A0E84(FILE *a1, int a2, void *a3, char a4)
{
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(NSMutableArray);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A368C;
  v15[3] = &unk_100115F30;
  v18 = &v20;
  v10 = v7;
  v16 = v10;
  v11 = v9;
  v17 = v11;
  v19 = a4;
  sub_1000A314C(a1, a2, v15);
  if ((v21[3] & 1) == 0)
  {

    v11 = 0;
  }

  v12 = v17;
  v13 = v11;

  _Block_object_dispose(&v20, 8);
  objc_autoreleasePoolPop(v8);

  return v13;
}

void sub_1000A0FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1000A0FE4(void *a1, void *a2, int a3, int a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = v10;
  if (a3)
  {
    v12 = [v10 rangeWithName:@"indentCount"];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v16 = [v9 substringWithRange:{v12, v13}];
      v14 = sub_1000A2DC0(v16);
    }
  }

  else
  {
    if ([v10 rangeWithName:@"indentWhitespace"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0xFFFFFFFFLL;
    }

    else
    {
      v14 = v15;
    }

    if ((v14 & 0x80000000) == 0)
    {
      v14 = ((v14 - a4) / a5);
    }
  }

  return v14;
}

void *sub_1000A10B4(void *a1, uint64_t a2, void *a3, void *a4, int a5, unint64_t *a6)
{
  v11 = a1;
  v12 = a3;
  v13 = a4;
  v14 = objc_autoreleasePoolPush();
  *a6 = -1;
  if (a5)
  {
    v15 = [v12 rangeWithName:@"binaryIndex"];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_3:
      v17 = 0;
      goto LABEL_280;
    }

    v25 = [v11 substringWithRange:{v15, v16}];
    v26 = sub_1000A2DC0(v25);

    if (v26 < [v13 count])
    {
      v17 = [v13 objectAtIndexedSubscript:v26];
      v27 = [v12 rangeWithName:@"offsetIntoBinary"];
      if (v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_1000C6F20(v11, a2);
      }

      v29 = [v11 substringWithRange:{v27, v28}];
      v24 = sub_1000A2DC0(v29);
      goto LABEL_278;
    }

    if (byte_100127EC8 == 1)
    {
      v57 = *__error();
      v58 = sub_10003E080();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v235 = v26;
        v236 = 2048;
        *v237 = [v13 count];
        *&v237[8] = 1024;
        *&v237[10] = a2;
        *&v237[14] = 2112;
        *&v237[16] = v11;
        _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Parsing spindump text: corrupt condensed file, frame line has out-of-bounds binary index %lu (%lu binaries) (%d: %@)", buf, 0x26u);
      }

      *__error() = v57;
    }

    v17 = 0;
    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      goto LABEL_280;
    }

    v37 = *__error();
    v59 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: corrupt condensed file, frame line has out-of-bounds binary index %lu (%lu binaries) (%d: %@)", v26, [v13 count], a2, v11);
    if (v59)
    {
      v39 = v59;
      CStringPtr = CFStringGetCStringPtr(v59, 0x8000100u);
      if (CStringPtr)
      {
        goto LABEL_55;
      }

      v41 = 3085136139;
      goto LABEL_151;
    }

    v136 = sub_10003E080();
    if (os_log_type_enabled(v136, OS_LOG_TYPE_FAULT))
    {
      v198 = [v13 count];
      *buf = 134218754;
      v235 = v26;
      v236 = 2048;
      *v237 = v198;
      *&v237[8] = 1024;
      *&v237[10] = a2;
      *&v237[14] = 2112;
      *&v237[16] = v11;
      _os_log_fault_impl(&_mh_execute_header, v136, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: corrupt condensed file, frame line has out-of-bounds binary index %lu (%lu binaries) (%d: %@)", buf, 0x26u);
    }

    goto LABEL_134;
  }

  v18 = [v12 rangeWithName:@"address"];
  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = [v11 substringWithRange:{v18, v19}];
    v31 = sub_1000A2DC0(v30);

    v228 = _NSConcreteStackBlock;
    v229 = 3221225472;
    v230 = sub_1000C5890;
    v231 = &unk_100115F50;
    v232 = v31;
    v32 = SABinarySearchArray();
    if (v32 < [v13 count])
    {
      v33 = [v13 objectAtIndexedSubscript:v32];
      if (v33)
      {
        v17 = v33;
        if (v33[7] <= v31)
        {
          goto LABEL_56;
        }
      }
    }

    if (!v32)
    {
      goto LABEL_19;
    }

    v34 = [v13 objectAtIndexedSubscript:v32 - 1];
    if (!v34)
    {
      goto LABEL_19;
    }

    v17 = v34;
    if (v34[8] - 1 < v31)
    {

LABEL_19:
      if ([v12 rangeWithName:@"binaryName"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v12, "rangeWithName:", @"binaryUuid") == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_3;
      }

      if (byte_100127EC8 == 1)
      {
        v35 = *__error();
        v36 = sub_10003E080();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_1000C6A08();
        }

        *__error() = v35;
      }

      v17 = 0;
      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_280;
      }

      v37 = *__error();
      v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unable to find load info for (%d: %@)", a2, v11);
      if (v38)
      {
        v39 = v38;
        CStringPtr = CFStringGetCStringPtr(v38, 0x8000100u);
        if (CStringPtr)
        {
LABEL_55:
          v60 = CStringPtr;
          v61 = 0;
LABEL_152:
          if (qword_100127ED0)
          {
            v152 = qword_100127ED0;
          }

          else
          {
            v152 = __stderrp;
          }

          fprintf(v152, "%s\n", v60);
          if (v61)
          {
            free(v61);
          }

          CFRelease(v39);
          goto LABEL_158;
        }

        v41 = 2824012580;
LABEL_151:
        v60 = malloc_type_calloc(0x400uLL, 1uLL, v41);
        CFStringGetCString(v39, v60, 1024, 0x8000100u);
        v61 = v60;
        goto LABEL_152;
      }

      v137 = sub_10003E080();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
      {
        sub_1000C6A7C();
      }

LABEL_134:
      if (qword_100127ED0)
      {
        v138 = qword_100127ED0;
      }

      else
      {
        v138 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v138);
LABEL_158:
      v17 = 0;
      *__error() = v37;
      goto LABEL_280;
    }

LABEL_56:
    v24 = v31 - v17[7];
    goto LABEL_279;
  }

  v218 = a2;
  v219 = v14;
  v20 = [v12 rangeWithName:@"binaryUuid"];
  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = v20;
    v43 = v21;
    v44 = [v11 substringWithRange:{v20, v21}];
    v45 = sub_1000A4234(v44);

    if (!v45)
    {
      if (byte_100127EC8 == 1)
      {
        v73 = *__error();
        v74 = sub_10003E080();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v75 = [v11 substringWithRange:{v42, v43}];
          *buf = 138412802;
          v235 = v75;
          v236 = 1024;
          *v237 = v218;
          *&v237[4] = 2112;
          *&v237[6] = v11;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: unable to parse UUID %@ in line (%d: %@)", buf, 0x1Cu);
        }

        *__error() = v73;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 2)
      {
        v76 = v13;
        v77 = v12;
        v78 = *__error();
        v79 = [v11 substringWithRange:{v42, v43}];
        v80 = v11;
        v81 = v79;
        v82 = v80;
        v83 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: unable to parse UUID %@ in line (%d: %@)", v79, v218, v80);

        if (v83)
        {
          v84 = CFStringGetCStringPtr(v83, 0x8000100u);
          if (v84)
          {
            v85 = v84;
            v86 = 0;
          }

          else
          {
            v85 = malloc_type_calloc(0x400uLL, 1uLL, 0x80A8BE69uLL);
            CFStringGetCString(v83, v85, 1024, 0x8000100u);
            v86 = v85;
          }

          v11 = v82;
          if (qword_100127ED0)
          {
            v170 = qword_100127ED0;
          }

          else
          {
            v170 = __stderrp;
          }

          fprintf(v170, "%s\n", v85);
          v12 = v77;
          if (v86)
          {
            free(v86);
          }

          CFRelease(v83);
        }

        else
        {
          v166 = sub_10003E080();
          v11 = v82;
          if (os_log_type_enabled(v166, OS_LOG_TYPE_FAULT))
          {
            v199 = [v82 substringWithRange:{v42, v43}];
            *buf = 138412802;
            v235 = v199;
            v236 = 1024;
            *v237 = v218;
            *&v237[4] = 2112;
            *&v237[6] = v82;
            _os_log_fault_impl(&_mh_execute_header, v166, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: unable to parse UUID %@ in line (%d: %@)", buf, 0x1Cu);
          }

          if (qword_100127ED0)
          {
            v167 = qword_100127ED0;
          }

          else
          {
            v167 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v167);
          v12 = v77;
        }

        v13 = v76;
LABEL_216:
        *__error() = v78;
      }

LABEL_217:

      v17 = 0;
      v14 = v219;
      goto LABEL_280;
    }

    v216 = v11;
    v226 = 0u;
    v227 = 0u;
    v224 = 0u;
    v225 = 0u;
    v46 = v13;
    v47 = [v46 countByEnumeratingWithState:&v224 objects:v240 count:16];
    if (!v47)
    {

      goto LABEL_109;
    }

    v49 = v47;
    v212 = v13;
    v214 = v12;
    v17 = 0;
    v50 = *v225;
    while (1)
    {
      v51 = 0;
      do
      {
        if (*v225 != v50)
        {
          objc_enumerationMutation(v46);
        }

        v52 = *(*(&v224 + 1) + 8 * v51);
        if (v52)
        {
          Property = objc_getProperty(*(*(&v224 + 1) + 8 * v51), v48, 40, 1);
        }

        else
        {
          Property = 0;
        }

        v54 = [Property uuid];
        v55 = [v54 isEqual:v45];

        if (v55)
        {
          if (v17)
          {
            if (objc_getProperty(v17, v48, 48, 1))
            {
              v12 = v214;
              if (byte_100127EC8)
              {
                v87 = *__error();
                v88 = sub_10003E080();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                {
                  v90 = objc_getProperty(v17, v89, 40, 1);
                  v91 = [v90 uuid];
                  v93 = objc_getProperty(v17, v92, 48, 1);

                  *buf = 138413314;
                  v235 = v45;
                  v236 = 2112;
                  *v237 = v91;
                  *&v237[8] = 2112;
                  *&v237[10] = v93;
                  *&v237[18] = 1024;
                  *&v237[20] = v218;
                  v238 = 2112;
                  v239 = v216;
                  _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: No address for frame line, and binary UUID %@ matches multiple load infos, assuming %@ segment %@ (%d: %@)", buf, 0x30u);
                }

                *__error() = v87;
              }

              v94 = byte_100127EC9 == 1 && dword_100127558 <= 2;
              v11 = v216;
              v13 = v212;
              if (!v94)
              {
                goto LABEL_263;
              }

              v210 = *__error();
              v96 = objc_getProperty(v17, v95, 40, 1);
              v97 = [v96 uuid];
              v99 = objc_getProperty(v17, v98, 48, 1);

              v100 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No address for frame line, and binary UUID %@ matches multiple load infos, assuming %@ segment %@ (%d: %@)", v45, v97, v99, v218, v216);
              if (v100)
              {
                v101 = CFStringGetCStringPtr(v100, 0x8000100u);
                if (v101)
                {
                  v102 = v101;
                  v103 = 0;
                }

                else
                {
                  v102 = malloc_type_calloc(0x400uLL, 1uLL, 0xB6BD52EBuLL);
                  CFStringGetCString(v100, v102, 1024, 0x8000100u);
                  v103 = v102;
                }

                v12 = v214;
                if (qword_100127ED0)
                {
                  v180 = qword_100127ED0;
                }

                else
                {
                  v180 = __stderrp;
                }

                fprintf(v180, "%s\n", v102);
                if (v103)
                {
                  free(v103);
                }

                CFRelease(v100);
              }

              else
              {
                v171 = sub_10003E080();
                if (os_log_type_enabled(v171, OS_LOG_TYPE_FAULT))
                {
                  v200 = objc_getProperty(v17, v172, 40, 1);
                  v201 = [v200 uuid];
                  v203 = objc_getProperty(v17, v202, 48, 1);

                  *buf = 138413314;
                  v235 = v45;
                  v236 = 2112;
                  *v237 = v201;
                  *&v237[8] = 2112;
                  *&v237[10] = v203;
                  *&v237[18] = 1024;
                  *&v237[20] = v218;
                  v238 = 2112;
                  v239 = v216;
                  _os_log_fault_impl(&_mh_execute_header, v171, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No address for frame line, and binary UUID %@ matches multiple load infos, assuming %@ segment %@ (%d: %@)", buf, 0x30u);
                }

                if (qword_100127ED0)
                {
                  v173 = qword_100127ED0;
                }

                else
                {
                  v173 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v173);
                v12 = v214;
              }

              v144 = v210;
            }

            else
            {
              v13 = v212;
              if (byte_100127EC8)
              {
                v139 = *__error();
                v140 = sub_10003E080();
                if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                {
                  v142 = [objc_getProperty(v17 v141];
                  *buf = 138413058;
                  v235 = v45;
                  v236 = 2112;
                  *v237 = v142;
                  *&v237[8] = 1024;
                  *&v237[10] = v218;
                  *&v237[14] = 2112;
                  *&v237[16] = v216;
                  _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: No address for frame line, and binary UUID %@ matches multiple load infos, assuming %@ (%d: %@)", buf, 0x26u);
                }

                *__error() = v139;
              }

              v143 = byte_100127EC9 == 1 && dword_100127558 <= 2;
              v12 = v214;
              v11 = v216;
              if (!v143)
              {
                goto LABEL_263;
              }

              v144 = *__error();
              v146 = [objc_getProperty(v17 v145];
              v147 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No address for frame line, and binary UUID %@ matches multiple load infos, assuming %@ (%d: %@)", v45, v146, v218, v216);

              if (v147)
              {
                v148 = v144;
                v149 = CFStringGetCStringPtr(v147, 0x8000100u);
                if (v149)
                {
                  v150 = v149;
                  v151 = 0;
                }

                else
                {
                  v150 = malloc_type_calloc(0x400uLL, 1uLL, 0x20241F5BuLL);
                  CFStringGetCString(v147, v150, 1024, 0x8000100u);
                  v151 = v150;
                }

                if (qword_100127ED0)
                {
                  v189 = qword_100127ED0;
                }

                else
                {
                  v189 = __stderrp;
                }

                fprintf(v189, "%s\n", v150);
                if (v151)
                {
                  free(v151);
                }

                CFRelease(v147);
                v144 = v148;
              }

              else
              {
                v181 = sub_10003E080();
                if (os_log_type_enabled(v181, OS_LOG_TYPE_FAULT))
                {
                  v208 = [objc_getProperty(v17 v182];
                  *buf = 138413058;
                  v235 = v45;
                  v236 = 2112;
                  *v237 = v208;
                  *&v237[8] = 1024;
                  *&v237[10] = v218;
                  *&v237[14] = 2112;
                  *&v237[16] = v216;
                  _os_log_fault_impl(&_mh_execute_header, v181, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No address for frame line, and binary UUID %@ matches multiple load infos, assuming %@ (%d: %@)", buf, 0x26u);
                }

                if (qword_100127ED0)
                {
                  v183 = qword_100127ED0;
                }

                else
                {
                  v183 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v183);
              }
            }

            *__error() = v144;
            v11 = v216;
LABEL_263:

            goto LABEL_264;
          }

          v17 = v52;
        }

        v51 = v51 + 1;
      }

      while (v49 != v51);
      v56 = [v46 countByEnumeratingWithState:&v224 objects:v240 count:16];
      v49 = v56;
      if (!v56)
      {

        v12 = v214;
        v11 = v216;
        v13 = v212;
        if (!v17)
        {
LABEL_109:
          if (byte_100127EC8 == 1)
          {
            v121 = *__error();
            v122 = sub_10003E080();
            if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v235 = v45;
              v236 = 1024;
              *v237 = v218;
              *&v237[4] = 2112;
              *&v237[6] = v11;
              _os_log_error_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "Parsing spindump text: No matching binary for frame line with binary UUID %@! (%d: %@)", buf, 0x1Cu);
            }

            *__error() = v121;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v78 = *__error();
            v123 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No matching binary for frame line with binary UUID %@! (%d: %@)", v45, v218, v11);
            if (v123)
            {
              v124 = v123;
              v125 = CFStringGetCStringPtr(v123, 0x8000100u);
              if (v125)
              {
                v126 = v125;
                v127 = 0;
              }

              else
              {
                v126 = malloc_type_calloc(0x400uLL, 1uLL, 0x4CCB5E1CuLL);
                CFStringGetCString(v124, v126, 1024, 0x8000100u);
                v127 = v126;
              }

              if (qword_100127ED0)
              {
                v179 = qword_100127ED0;
              }

              else
              {
                v179 = __stderrp;
              }

              fprintf(v179, "%s\n", v126);
              if (v127)
              {
                free(v127);
              }

              CFRelease(v124);
            }

            else
            {
              v168 = sub_10003E080();
              if (os_log_type_enabled(v168, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412802;
                v235 = v45;
                v236 = 1024;
                *v237 = v218;
                *&v237[4] = 2112;
                *&v237[6] = v11;
                _os_log_fault_impl(&_mh_execute_header, v168, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No matching binary for frame line with binary UUID %@! (%d: %@)", buf, 0x1Cu);
              }

              if (qword_100127ED0)
              {
                v169 = qword_100127ED0;
              }

              else
              {
                v169 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v169);
            }

            goto LABEL_216;
          }

          goto LABEL_217;
        }

LABEL_264:
        v190 = [v12 rangeWithName:@"offsetIntoBinary"];
        if (v190 == 0x7FFFFFFFFFFFFFFFLL)
        {
          sub_1000C6AF0(v11, v218);
        }

        v192 = [v11 substringWithRange:{v190, v191}];
        v24 = sub_1000A2DC0(v192);

LABEL_266:
        v14 = v219;
        goto LABEL_279;
      }
    }
  }

  v22 = [v12 rangeWithName:@"binaryName"];
  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
    v24 = -1;
    goto LABEL_266;
  }

  v217 = v11;
  v29 = [v11 substringWithRange:{v22, v23}];
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v62 = v13;
  v63 = [v62 countByEnumeratingWithState:&v220 objects:v233 count:16];
  if (!v63)
  {

LABEL_119:
    v14 = v219;
    if (byte_100127EC8 == 1)
    {
      v128 = *__error();
      v129 = sub_10003E080();
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v235 = v29;
        v236 = 1024;
        *v237 = v218;
        *&v237[4] = 2112;
        *&v237[6] = v11;
        _os_log_error_impl(&_mh_execute_header, v129, OS_LOG_TYPE_ERROR, "Parsing spindump text: No matching binary for frame line with binary name %@! (%d: %@)", buf, 0x1Cu);
      }

      *__error() = v128;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v130 = *__error();
      v131 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No matching binary for frame line with binary name %@! (%d: %@)", v29, v218, v11);
      if (v131)
      {
        v132 = v131;
        v133 = CFStringGetCStringPtr(v131, 0x8000100u);
        if (v133)
        {
          v134 = v133;
          v135 = 0;
        }

        else
        {
          v134 = malloc_type_calloc(0x400uLL, 1uLL, 0xEC7BDB2BuLL);
          CFStringGetCString(v132, v134, 1024, 0x8000100u);
          v135 = v134;
        }

        if (qword_100127ED0)
        {
          v184 = qword_100127ED0;
        }

        else
        {
          v184 = __stderrp;
        }

        fprintf(v184, "%s\n", v134);
        if (v135)
        {
          free(v135);
        }

        CFRelease(v132);
      }

      else
      {
        v174 = sub_10003E080();
        if (os_log_type_enabled(v174, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          v235 = v29;
          v236 = 1024;
          *v237 = v218;
          *&v237[4] = 2112;
          *&v237[6] = v11;
          _os_log_fault_impl(&_mh_execute_header, v174, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No matching binary for frame line with binary name %@! (%d: %@)", buf, 0x1Cu);
        }

        if (qword_100127ED0)
        {
          v175 = qword_100127ED0;
        }

        else
        {
          v175 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v175);
      }

      *__error() = v130;
    }

    goto LABEL_3;
  }

  v65 = v63;
  v213 = v13;
  v215 = v12;
  v17 = 0;
  v66 = *v221;
  do
  {
    v67 = 0;
    do
    {
      if (*v221 != v66)
      {
        objc_enumerationMutation(v62);
      }

      v68 = *(*(&v220 + 1) + 8 * v67);
      if (v68)
      {
        v69 = objc_getProperty(*(*(&v220 + 1) + 8 * v67), v64, 40, 1);
      }

      else
      {
        v69 = 0;
      }

      v70 = [v69 name];
      v71 = [v70 isEqualToString:v29];

      if (v71)
      {
        if (!v17)
        {
          v17 = v68;
          goto LABEL_67;
        }

        if (objc_getProperty(v17, v64, 48, 1))
        {
          v12 = v215;
          if (byte_100127EC8)
          {
            v104 = *__error();
            v105 = sub_10003E080();
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
            {
              v107 = objc_getProperty(v17, v106, 40, 1);
              v108 = [v107 uuid];
              v110 = objc_getProperty(v17, v109, 48, 1);

              *buf = 138413314;
              v235 = v29;
              v236 = 2112;
              *v237 = v108;
              *&v237[8] = 2112;
              *&v237[10] = v110;
              *&v237[18] = 1024;
              *&v237[20] = v218;
              v238 = 2112;
              v239 = v217;
              _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: No address for frame line, and binary name %@ matches multiple load infos, assuming %@ segment %@ (%d: %@)", buf, 0x30u);
            }

            *__error() = v104;
          }

          v111 = byte_100127EC9 == 1 && dword_100127558 <= 2;
          v11 = v217;
          v13 = v213;
          if (!v111)
          {
            goto LABEL_275;
          }

          v211 = *__error();
          v113 = objc_getProperty(v17, v112, 40, 1);
          v114 = [v113 uuid];
          v116 = objc_getProperty(v17, v115, 48, 1);

          v117 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No address for frame line, and binary name %@ matches multiple load infos, assuming %@ segment %@ (%d: %@)", v29, v114, v116, v218, v217);
          if (v117)
          {
            v118 = CFStringGetCStringPtr(v117, 0x8000100u);
            if (v118)
            {
              v119 = v118;
              v120 = 0;
            }

            else
            {
              v119 = malloc_type_calloc(0x400uLL, 1uLL, 0xD0215DAuLL);
              CFStringGetCString(v117, v119, 1024, 0x8000100u);
              v120 = v119;
            }

            v12 = v215;
            if (qword_100127ED0)
            {
              v185 = qword_100127ED0;
            }

            else
            {
              v185 = __stderrp;
            }

            fprintf(v185, "%s\n", v119);
            if (v120)
            {
              free(v120);
            }

            CFRelease(v117);
          }

          else
          {
            v176 = sub_10003E080();
            if (os_log_type_enabled(v176, OS_LOG_TYPE_FAULT))
            {
              v204 = objc_getProperty(v17, v177, 40, 1);
              v205 = [v204 uuid];
              v207 = objc_getProperty(v17, v206, 48, 1);

              *buf = 138413314;
              v235 = v29;
              v236 = 2112;
              *v237 = v205;
              *&v237[8] = 2112;
              *&v237[10] = v207;
              *&v237[18] = 1024;
              *&v237[20] = v218;
              v238 = 2112;
              v239 = v217;
              _os_log_fault_impl(&_mh_execute_header, v176, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No address for frame line, and binary name %@ matches multiple load infos, assuming %@ segment %@ (%d: %@)", buf, 0x30u);
            }

            if (qword_100127ED0)
            {
              v178 = qword_100127ED0;
            }

            else
            {
              v178 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v178);
            v12 = v215;
          }

          v158 = v211;
        }

        else
        {
          v13 = v213;
          if (byte_100127EC8)
          {
            v153 = *__error();
            v154 = sub_10003E080();
            if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
            {
              v156 = [objc_getProperty(v17 v155];
              *buf = 138413058;
              v235 = v29;
              v236 = 2112;
              *v237 = v156;
              *&v237[8] = 1024;
              *&v237[10] = v218;
              *&v237[14] = 2112;
              *&v237[16] = v217;
              _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "Parsing spindump text: No address for frame line, and binary name %@ matches multiple load infos, assuming %@ (%d: %@)", buf, 0x26u);
            }

            *__error() = v153;
          }

          v157 = byte_100127EC9 == 1 && dword_100127558 <= 2;
          v12 = v215;
          v11 = v217;
          if (!v157)
          {
            goto LABEL_275;
          }

          v158 = *__error();
          v160 = [objc_getProperty(v17 v159];
          v161 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No address for frame line, and binary name %@ matches multiple load infos, assuming %@ (%d: %@)", v29, v160, v218, v217);

          if (v161)
          {
            v162 = v158;
            v163 = CFStringGetCStringPtr(v161, 0x8000100u);
            if (v163)
            {
              v164 = v163;
              v165 = 0;
            }

            else
            {
              v164 = malloc_type_calloc(0x400uLL, 1uLL, 0x575F020CuLL);
              CFStringGetCString(v161, v164, 1024, 0x8000100u);
              v165 = v164;
            }

            if (qword_100127ED0)
            {
              v193 = qword_100127ED0;
            }

            else
            {
              v193 = __stderrp;
            }

            fprintf(v193, "%s\n", v164);
            if (v165)
            {
              free(v165);
            }

            CFRelease(v161);
            v158 = v162;
          }

          else
          {
            v186 = sub_10003E080();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_FAULT))
            {
              v209 = [objc_getProperty(v17 v187];
              *buf = 138413058;
              v235 = v29;
              v236 = 2112;
              *v237 = v209;
              *&v237[8] = 1024;
              *&v237[10] = v218;
              *&v237[14] = 2112;
              *&v237[16] = v217;
              _os_log_fault_impl(&_mh_execute_header, v186, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: No address for frame line, and binary name %@ matches multiple load infos, assuming %@ (%d: %@)", buf, 0x26u);
            }

            if (qword_100127ED0)
            {
              v188 = qword_100127ED0;
            }

            else
            {
              v188 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v188);
          }
        }

        *__error() = v158;
        v11 = v217;
LABEL_275:

        goto LABEL_276;
      }

LABEL_67:
      v67 = v67 + 1;
    }

    while (v65 != v67);
    v72 = [v62 countByEnumeratingWithState:&v220 objects:v233 count:16];
    v65 = v72;
  }

  while (v72);

  v12 = v215;
  v11 = v217;
  v13 = v213;
  if (!v17)
  {
    goto LABEL_119;
  }

LABEL_276:
  v194 = [v12 rangeWithName:@"offsetIntoBinary"];
  v14 = v219;
  if (v194 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1000C6D08(v11, v218);
  }

  v196 = [v11 substringWithRange:{v194, v195}];
  v24 = sub_1000A2DC0(v196);

LABEL_278:
LABEL_279:
  *a6 = v24;
LABEL_280:
  objc_autoreleasePoolPop(v14);

  return v17;
}

unint64_t sub_1000A2DC0(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [v1 UTF8String];
  if (!v3)
  {
    v4 = [v1 dataUsingEncoding:4 allowLossyConversion:1];
    if (!v4)
    {
      v6 = 0;
      goto LABEL_5;
    }

    v5 = v4;
    v3 = [v4 bytes];
  }

  v6 = strtoull(v3, 0, 0);
LABEL_5:
  objc_autoreleasePoolPop(v2);

  return v6;
}

uint64_t sub_1000A2E60(FILE *a1, int a2, int a3, int a4, int a5, const char *a6, uint64_t a7, const char *a8, int a9, int a10)
{
  v16 = "";
  if (a3)
  {
    v16 = "*";
  }

  fprintf(a1, "%*s", a2, v16);
  fprintf(a1, "%-*d", a5, a4);
  fputs(a6, a1);
  if (a7 != -1)
  {
    fprintf(a1, " [0x%llx]", a7);
  }

  if (a8)
  {
    fprintf(a1, " (%s)", a8);
  }

  if (a9)
  {
    fprintf(a1, " %d", a9);
    if (a9 != a10)
    {
      fprintf(a1, "-%d", a10);
    }
  }

  return fputc(10, a1);
}

uint64_t sub_1000A2F80(FILE *a1, int a2, int a3, int a4, int a5, const char *a6, uint64_t a7, int a8, int a9)
{
  v15 = "*";
  if (!a3)
  {
    v15 = "";
  }

  fprintf(a1, "%*s", a2, v15);
  if (a4 < 1)
  {
    if (a5 >= 1)
    {
      fprintf(a1, "%*s");
    }
  }

  else
  {
    fprintf(a1, "%-*d");
  }

  if (a6)
  {
    fprintf(a1, "<%s>", a6);
    if (a7)
    {
      fprintf(a1, " (%s)");
    }
  }

  else if (a7)
  {
    fprintf(a1, "<%s>");
  }

  if (a8)
  {
    fprintf(a1, " %d", a8);
    if (a8 != a9)
    {
      fprintf(a1, "-%d", a9);
    }
  }

  return fputc(10, a1);
}

void sub_1000A314C(FILE *a1, int a2, void *a3)
{
  LODWORD(v3) = a2;
  v5 = a3;
  v6 = ftello(a1);
  if (v6 == -1)
  {
    sub_1000C7138();
  }

  v7 = v6;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000A4190;
  v40[3] = &unk_100115410;
  v40[4] = &v41;
  v40[5] = &v45;
  v8 = objc_retainBlock(v40);
  (v8[2])();
LABEL_3:
  v9 = 0;
  while (fgets((v46[3] + v9), *(v42 + 6) - v9, a1))
  {
    v10 = v46[3];
    v9 = strnlen(v10, *(v42 + 6));
    if (v10[v9 - 1] == 10)
    {
      v10[v9 - 1] = 0;
      v11 = [NSString alloc];
      v12 = [v11 initWithUTF8String:v46[3]];
      v3 = (v3 + 1);
      buf[0] = 0;
      v5[2](v5, v12, v3, buf);
      v13 = buf[0];

      if ((v13 & 1) == 0)
      {
        goto LABEL_3;
      }

      break;
    }

    (v8[2])(v8);
  }

  free(v46[3]);
  if (fseeko(a1, v7, 0))
  {
    if (byte_100127EC8 == 1)
    {
      v14 = *__error();
      v15 = sub_10003E080();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *__error();
        v17 = __error();
        v18 = strerror(*v17);
        *buf = 136315906;
        v50 = "ret == 0";
        v51 = 2048;
        v52 = v7;
        v53 = 1024;
        v54 = v16;
        v55 = 2080;
        v56 = v18;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s: Unable to seek back to %lld after searching for load infos: %d (%s)", buf, 0x26u);
      }

      *__error() = v14;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v20 = *__error();
      v21 = *__error();
      v22 = __error();
      v23 = strerror(*v22);
      v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Unable to seek back to %lld after searching for load infos: %d (%s)", "ret == 0", v7, v21, v23);
      v25 = v24;
      if (v24)
      {
        CStringPtr = CFStringGetCStringPtr(v24, 0x8000100u);
        if (CStringPtr)
        {
          v38 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0x9252CE00uLL);
          CFStringGetCString(v25, CStringPtr, 1024, 0x8000100u);
          v38 = CStringPtr;
        }

        if (qword_100127ED0)
        {
          v39 = qword_100127ED0;
        }

        else
        {
          v39 = __stderrp;
        }

        fprintf(v39, "%s\n", CStringPtr);
        if (v38)
        {
          free(v38);
        }

        CFRelease(v25);
      }

      else
      {
        v26 = sub_10003E080();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          v27 = *__error();
          v28 = __error();
          v29 = strerror(*v28);
          *buf = 136315906;
          v50 = "ret == 0";
          v51 = 2048;
          v52 = v7;
          v53 = 1024;
          v54 = v27;
          v55 = 2080;
          v56 = v29;
          _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Unable to format: %s: Unable to seek back to %lld after searching for load infos: %d (%s)", buf, 0x26u);
        }

        if (qword_100127ED0)
        {
          v30 = qword_100127ED0;
        }

        else
        {
          v30 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v30);
      }

      *__error() = v20;
    }

    v31 = *__error();
    v32 = __error();
    strerror(*v32);
    sub_10003DF54("LookaheadLines", "SPTextualReportParser.m", 978, "%s: Unable to seek back to %lld after searching for load infos: %d (%s)", v33, v34, v35, v36, "ret == 0");
    abort();
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
}

void sub_1000A362C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000A368C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v9 = [*(a1 + 32) firstMatchInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 56);
      v12 = v8;
      v13 = v10;
      v14 = [v13 rangeWithName:@"kernelDot"];
      if (v11 == 1)
      {
        v15 = [v13 rangeWithName:@"binaryIndex"];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          sub_1000C77F8(v12, a3);
        }

        v17 = [v12 substringWithRange:{v15, v16}];
        v18 = sub_1000A2DC0(v17);
      }

      else
      {
        v18 = 0;
      }

      v28 = [v13 rangeWithName:@"startAddress"];
      if (v28 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v99 = 0;
      }

      else
      {
        v30 = [v12 substringWithRange:{v28, v29}];
        v99 = sub_1000A2DC0(v30);
      }

      v31 = [v13 rangeWithName:@"endAddress"];
      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v98 = 0;
      }

      else
      {
        v33 = [v12 substringWithRange:{v31, v32}];
        v98 = sub_1000A2DC0(v33);
      }

      v34 = [v13 rangeWithName:@"bundleIdentifier"];
      if (v34 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = 0;
      }

      else
      {
        v36 = [v12 substringWithRange:{v34, v35}];
        v37 = v36;
      }

      v38 = [v13 rangeWithName:@"name"];
      v100 = a3;
      if (v38 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v40 = 0;
      }

      else
      {
        v40 = [v12 substringWithRange:{v38, v39}];
        v41 = v40;
      }

      v101 = a4;
      v42 = [v13 rangeWithName:@"version"];
      if (v42 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = 0;
      }

      else
      {
        v44 = [v12 substringWithRange:{v42, v43}];
        v45 = v44;
      }

      v46 = [v13 rangeWithName:@"binaryUuid"];
      if (v46 == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_1000C75E0(v12, a3);
      }

      v97 = v14;
      v104 = v18;
      v48 = [v12 substringWithRange:{v46, v47}];
      v49 = sub_1000A4234(v48);
      v50 = v49;

      v51 = [v13 rangeWithName:@"segmentName"];
      if (v51 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v53 = 0;
      }

      else
      {
        v53 = [v12 substringWithRange:{v51, v52}];
        v54 = v53;
      }

      v55 = [v13 rangeWithName:@"binaryPath"];
      if (v55 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v57 = 0;
      }

      else
      {
        v57 = [v12 substringWithRange:{v55, v56}];
        v58 = v57;
      }

      v103 = v36;
      v102 = v40;
      v105 = v44;
      v59 = v49;
      v60 = v53;
      v61 = v57;
      if (!v59)
      {
        sub_1000C73C8(v12, v100);
      }

      v62 = v61;
      if (*(a1 + 56) != 1 || v104 == [*(a1 + 40) count])
      {
        if ([v62 isAbsolutePath])
        {
          v82 = v62;
        }

        else
        {
          v82 = 0;
        }

        v83 = [SABinary binaryWithUUID:v59 absolutePath:v82];
        v84 = [v83 path];

        if (!v84 && v62)
        {
          [v83 addPath:v62];
        }

        v86 = v102;
        v85 = v103;
        v87 = sub_1000C54F0([SPLoadInfo alloc], v83, v97 != 0x7FFFFFFFFFFFFFFFLL, v99, v98, v103, v102, v105, v60);
        [*(a1 + 40) addObject:v87];
      }

      else
      {
        if (byte_100127EC8 == 1)
        {
          v63 = *__error();
          v64 = sub_10003E080();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v92 = [*(a1 + 40) count];
            *buf = 134218754;
            *v107 = v92;
            *&v107[8] = 2048;
            *&v107[10] = v104;
            v108 = 1024;
            v109 = v100;
            v110 = 2112;
            v111 = v12;
            _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Parsing spindump text: corrupt condensed file, binary at position %lu has index %lu (%d: %@)", buf, 0x26u);
          }

          *__error() = v63;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v65 = *__error();
          v66 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: corrupt condensed file, binary at position %lu has index %lu (%d: %@)", [*(a1 + 40) count], v104, v100, v12);
          if (v66)
          {
            v67 = v66;
            CStringPtr = CFStringGetCStringPtr(v66, 0x8000100u);
            if (CStringPtr)
            {
              v69 = CStringPtr;
              v70 = 0;
            }

            else
            {
              v69 = malloc_type_calloc(0x400uLL, 1uLL, 0xC89B8028uLL);
              CFStringGetCString(v67, v69, 1024, 0x8000100u);
              v70 = v69;
            }

            if (qword_100127ED0)
            {
              v88 = qword_100127ED0;
            }

            else
            {
              v88 = __stderrp;
            }

            fprintf(v88, "%s\n", v69);
            if (v70)
            {
              free(v70);
            }

            CFRelease(v67);
          }

          else
          {
            v80 = sub_10003E080();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
            {
              v96 = [*(a1 + 40) count];
              *buf = 134218754;
              *v107 = v96;
              *&v107[8] = 2048;
              *&v107[10] = v104;
              v108 = 1024;
              v109 = v100;
              v110 = 2112;
              v111 = v12;
              _os_log_fault_impl(&_mh_execute_header, v80, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: corrupt condensed file, binary at position %lu has index %lu (%d: %@)", buf, 0x26u);
            }

            if (qword_100127ED0)
            {
              v81 = qword_100127ED0;
            }

            else
            {
              v81 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v81);
          }

          *__error() = v65;
        }

        *(*(*(a1 + 48) + 8) + 24) = 0;
        v86 = v102;
        *v101 = 1;
        v85 = v103;
      }
    }

    else if ([v8 length])
    {
      if (byte_100127EC8 == 1)
      {
        v19 = *__error();
        v20 = sub_10003E080();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1000C7A10();
        }

        *__error() = v19;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v22 = *__error();
        v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: Unexpected line in load infos, ignoring (%d: %@)", a3, v8);
        if (v23)
        {
          v24 = v23;
          v25 = CFStringGetCStringPtr(v23, 0x8000100u);
          if (v25)
          {
            v26 = v25;
            v27 = 0;
          }

          else
          {
            v26 = malloc_type_calloc(0x400uLL, 1uLL, 0xC242A947uLL);
            CFStringGetCString(v24, v26, 1024, 0x8000100u);
            v27 = v26;
          }

          if (qword_100127ED0)
          {
            v91 = qword_100127ED0;
          }

          else
          {
            v91 = __stderrp;
          }

          fprintf(v91, "%s\n", v26);
          if (v27)
          {
            free(v27);
          }

          CFRelease(v24);
        }

        else
        {
          v89 = sub_10003E080();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
          {
            sub_1000C7A84();
          }

          if (qword_100127ED0)
          {
            v90 = qword_100127ED0;
          }

          else
          {
            v90 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v90);
        }

        *__error() = v22;
      }
    }

    else
    {
      if (![*(a1 + 40) count])
      {
        if (byte_100127EC8 == 1)
        {
          v71 = *__error();
          v72 = sub_10003E080();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v107 = a3;
            *&v107[4] = 2112;
            *&v107[6] = v8;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "Parsing spindump text: No load infos, ended at line (%d: %@)", buf, 0x12u);
          }

          *__error() = v71;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 1)
        {
          v74 = *__error();
          v75 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Parsing spindump text: No load infos, ended at line (%d: %@)", a3, v8);
          if (v75)
          {
            v76 = v75;
            v77 = CFStringGetCStringPtr(v75, 0x8000100u);
            if (v77)
            {
              v78 = v77;
              v79 = 0;
            }

            else
            {
              v78 = malloc_type_calloc(0x400uLL, 1uLL, 0xC34195DAuLL);
              CFStringGetCString(v76, v78, 1024, 0x8000100u);
              v79 = v78;
            }

            if (qword_100127ED0)
            {
              v95 = qword_100127ED0;
            }

            else
            {
              v95 = __stderrp;
            }

            fprintf(v95, "%s\n", v78);
            if (v79)
            {
              free(v79);
            }

            CFRelease(v76);
          }

          else
          {
            v93 = sub_10003E080();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
            {
              sub_1000C7AF8();
            }

            if (qword_100127ED0)
            {
              v94 = qword_100127ED0;
            }

            else
            {
              v94 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v94);
          }

          *__error() = v74;
        }
      }

      *a4 = 1;
    }
  }

  else if ([v7 containsString:@"Binary Images:"])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}