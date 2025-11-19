void sub_100060B20(uint64_t a1, int a2, const char *a3)
{
  xpc_dictionary_set_int64(*(a1 + 32), "errno", a2);
  if (a3)
  {
    xpc_dictionary_set_string(*(a1 + 32), "path", a3);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  xpc_connection_send_message(v5, v6);
}

void sub_100060B84(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100060BA0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_100060BE8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_fault_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0xCu);
}

const char *sub_100060C08(const __CFString *a1)
{

  return CFStringGetCStringPtr(a1, 0x8000100u);
}

void sub_100060C38(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v12 = a6;
  v48 = a7;
  if (byte_100127EC8 == 1)
  {
    v13 = a4;
    v14 = *__error();
    v15 = sub_10003E080();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = sub_10003E020(a1);
      *&buf[12] = 1024;
      *&buf[14] = a1;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Waiting for child %s [%d]...", buf, 0x12u);
    }

    *__error() = v14;
    a4 = v13;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v17 = a4;
    v18 = *__error();
    v19 = sub_10003E020(a1);
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Waiting for child %s [%d]...", v19, a1);
    if (v20)
    {
      v21 = v20;
      CStringPtr = CFStringGetCStringPtr(v20, 0x8000100u);
      if (CStringPtr)
      {
        v23 = CStringPtr;
        v24 = 0;
      }

      else
      {
        v23 = malloc_type_calloc(0x400uLL, 1uLL, 0x8F5E5C70uLL);
        CFStringGetCString(v21, v23, 1024, 0x8000100u);
        v24 = v23;
      }

      if (qword_100127ED0)
      {
        v27 = qword_100127ED0;
      }

      else
      {
        v27 = __stderrp;
      }

      fprintf(v27, "%s\n", v23);
      if (v24)
      {
        free(v24);
      }

      CFRelease(v21);
    }

    else
    {
      v25 = sub_10003E080();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1000AF654(a1);
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

    *__error() = v18;
    a4 = v17;
  }

  v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v29 = qos_class_self();
  v30 = dispatch_queue_attr_make_with_qos_class(v28, v29, 0);

  v47 = v30;
  v31 = dispatch_queue_create("com.apple.spindump.readchildren", v30);
  if (a2 != -1)
  {
    fcntl(a2, 4, 4);
  }

  v51 = a2;
  v53 = a1;
  if (a3 != -1)
  {
    fcntl(a3, 4, 4);
  }

  v52 = a3;
  v32 = vm_page_size;
  v33 = malloc_type_calloc(1uLL, vm_page_size, 0x8C8EEA88uLL);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v99 = 0;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x2020000000;
  v97 = 0;
  queue = v31;
  if (a2 == -1)
  {
    v34 = 0;
  }

  else
  {
    v34 = dispatch_source_create(&_dispatch_source_type_read, a2, 0, v31);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000613EC;
    handler[3] = &unk_1001152B0;
    v94 = a2;
    v89 = v96;
    v91 = v33;
    v92 = v32;
    v88 = v12;
    v90 = buf;
    v93 = a5;
    v95 = v53;
    dispatch_source_set_event_handler(v34, handler);
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_100061704;
    v85[3] = &unk_1001152D0;
    v86 = a2;
    dispatch_source_set_cancel_handler(v34, v85);
    dispatch_activate(v34);
  }

  if (a3 == -1)
  {
    v35 = 0;
    if (a4)
    {
      goto LABEL_36;
    }

LABEL_38:
    v37 = 0;
    v40 = v12;
    v36 = queue;
    v39 = v53;
    goto LABEL_39;
  }

  v35 = dispatch_source_create(&_dispatch_source_type_read, a3, 0, queue);
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10006170C;
  v76[3] = &unk_1001152B0;
  v83 = a3;
  v78 = v96;
  v80 = v33;
  v81 = v32;
  v77 = v12;
  v79 = buf;
  v82 = a5;
  v84 = v53;
  dispatch_source_set_event_handler(v35, v76);
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_100061A24;
  v74[3] = &unk_1001152D0;
  v75 = a3;
  dispatch_source_set_cancel_handler(v35, v74);
  dispatch_activate(v35);

  if (!a4)
  {
    goto LABEL_38;
  }

LABEL_36:
  v36 = queue;
  v37 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  v38 = dispatch_time(0, 1000000000 * a4);
  dispatch_source_set_timer(v37, v38, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100061A2C;
  v68[3] = &unk_1001152F8;
  v39 = v53;
  v73 = v53;
  v70 = v96;
  v72 = a4;
  v69 = v12;
  v71 = buf;
  dispatch_source_set_event_handler(v37, v68);
  dispatch_activate(v37);

  v40 = v12;
LABEL_39:
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100061CA4;
  v54[3] = &unk_100115320;
  v55 = v34;
  v56 = v35;
  v57 = dispatch_source_create(&_dispatch_source_type_proc, v39, 0x80000000uLL, v36);
  v58 = v37;
  v65 = v39;
  v66 = v51;
  v63 = v33;
  v64 = v32;
  v61 = v96;
  v62 = buf;
  v67 = v52;
  v59 = v40;
  v60 = v48;
  v41 = v48;
  v42 = v40;
  v43 = v37;
  v44 = v57;
  v45 = v35;
  v46 = v34;
  dispatch_source_set_event_handler(v44, v54);
  dispatch_activate(v44);

  _Block_object_dispose(v96, 8);
  _Block_object_dispose(buf, 8);
}

ssize_t sub_1000613EC(ssize_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = read(*(result + 80), *(v1 + 56), *(v1 + 64) - 1);
    if (result >= 1)
    {
      v2 = result;
      while (1)
      {
        *(*(v1 + 56) + v2) = 0;
        [*(v1 + 32) appendFormat:@"%s", *(v1 + 56)];
        *(*(*(v1 + 48) + 8) + 24) += v2;
        v3 = *(v1 + 72);
        if (v3)
        {
          if (v3 < *(*(*(v1 + 48) + 8) + 24))
          {
            break;
          }
        }

        result = read(*(v1 + 80), *(v1 + 56), *(v1 + 64) - 1);
        v2 = result;
        if (result <= 0)
        {
          return result;
        }
      }

      *(*(*(v1 + 40) + 8) + 24) = 1;
      if (byte_100127EC8 == 1)
      {
        v4 = *__error();
        v5 = sub_10003E080();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1000AF6E8();
        }

        *__error() = v4;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v6 = *__error();
        v7 = sub_10003E020(*(v1 + 84));
        v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Child %s [%d] output exceeded %llu bytes", v7, *(v1 + 84), *(v1 + 72));
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
            v11 = malloc_type_calloc(0x400uLL, 1uLL, 0x4E2264C8uLL);
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
            sub_1000AF774();
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

        *__error() = v6;
      }

      kill(*(v1 + 84), 9);
      v16 = [*(v1 + 32) length];
      [*(v1 + 32) appendFormat:@"\n%s [%d] output exceeded %llu bytes, truncating", sub_10003E020(*(v1 + 84)), *(v1 + 84), *(v1 + 72)];
      result = [*(v1 + 32) length];
      *(*(*(v1 + 48) + 8) + 24) += result - v16;
    }
  }

  return result;
}

ssize_t sub_10006170C(ssize_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = read(*(result + 80), *(v1 + 56), *(v1 + 64) - 1);
    if (result >= 1)
    {
      v2 = result;
      while (1)
      {
        *(*(v1 + 56) + v2) = 0;
        [*(v1 + 32) appendFormat:@"%s", *(v1 + 56)];
        *(*(*(v1 + 48) + 8) + 24) += v2;
        v3 = *(v1 + 72);
        if (v3)
        {
          if (v3 < *(*(*(v1 + 48) + 8) + 24))
          {
            break;
          }
        }

        result = read(*(v1 + 80), *(v1 + 56), *(v1 + 64) - 1);
        v2 = result;
        if (result <= 0)
        {
          return result;
        }
      }

      *(*(*(v1 + 40) + 8) + 24) = 1;
      if (byte_100127EC8 == 1)
      {
        v4 = *__error();
        v5 = sub_10003E080();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1000AF6E8();
        }

        *__error() = v4;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v6 = *__error();
        v7 = sub_10003E020(*(v1 + 84));
        v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Child %s [%d] output exceeded %llu bytes", v7, *(v1 + 84), *(v1 + 72));
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
            v11 = malloc_type_calloc(0x400uLL, 1uLL, 0xF6339B99uLL);
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
            sub_1000AF774();
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

        *__error() = v6;
      }

      kill(*(v1 + 84), 9);
      v16 = [*(v1 + 32) length];
      [*(v1 + 32) appendFormat:@"\n%s [%d] output exceeded %llu bytes, truncating", sub_10003E020(*(v1 + 84)), *(v1 + 84), *(v1 + 72)];
      result = [*(v1 + 32) length];
      *(*(*(v1 + 48) + 8) + 24) += result - v16;
    }
  }

  return result;
}

_BYTE *sub_100061A2C(_BYTE *result)
{
  if ((*(*(*(result + 5) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    if (byte_100127EC8 == 1)
    {
      v2 = *__error();
      v3 = sub_10003E080();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000AF808(v1);
      }

      *__error() = v2;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v5 = *__error();
      v6 = sub_10003E020(*(v1 + 64));
      v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Child %s [%d] timed out after %llus", v6, *(v1 + 64), *(v1 + 56));
      if (v7)
      {
        v8 = v7;
        CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
        if (CStringPtr)
        {
          v10 = CStringPtr;
          v11 = 0;
        }

        else
        {
          v10 = malloc_type_calloc(0x400uLL, 1uLL, 0xBC1751FAuLL);
          CFStringGetCString(v8, v10, 1024, 0x8000100u);
          v11 = v10;
        }

        if (qword_100127ED0)
        {
          v14 = qword_100127ED0;
        }

        else
        {
          v14 = __stderrp;
        }

        fprintf(v14, "%s\n", v10);
        if (v11)
        {
          free(v11);
        }

        CFRelease(v8);
      }

      else
      {
        v12 = sub_10003E080();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          sub_1000AF890();
        }

        if (qword_100127ED0)
        {
          v13 = qword_100127ED0;
        }

        else
        {
          v13 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v13);
      }

      *__error() = v5;
    }

    kill(*(v1 + 64), 9);
    v15 = [*(v1 + 32) length];
    [*(v1 + 32) appendFormat:@"\n%s [%d] timed out after %llus, truncating", sub_10003E020(*(v1 + 64)), *(v1 + 64), *(v1 + 56)];
    result = [*(v1 + 32) length];
    *(*(*(v1 + 48) + 8) + 24) += result - v15;
  }

  return result;
}

uint64_t sub_100061CA4(uint64_t a1)
{
  if (byte_100127EC8 == 1)
  {
    v2 = *__error();
    v3 = sub_10003E080();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000AF924(a1, v3);
    }

    *__error() = v2;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v5 = *__error();
    v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Child [%d] exited", *(a1 + 112));
    if (v6)
    {
      v7 = v6;
      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      if (CStringPtr)
      {
        v9 = CStringPtr;
        v10 = 0;
      }

      else
      {
        v9 = malloc_type_calloc(0x400uLL, 1uLL, 0xDB83FF75uLL);
        CFStringGetCString(v7, v9, 1024, 0x8000100u);
        v10 = v9;
      }

      if (qword_100127ED0)
      {
        v13 = qword_100127ED0;
      }

      else
      {
        v13 = __stderrp;
      }

      fprintf(v13, "%s\n", v9);
      if (v10)
      {
        free(v10);
      }

      CFRelease(v7);
    }

    else
    {
      v11 = sub_10003E080();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1000AF9A0((a1 + 112), v11);
      }

      if (qword_100127ED0)
      {
        v12 = qword_100127ED0;
      }

      else
      {
        v12 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v12);
    }

    *__error() = v5;
  }

  v28 = 0;
    ;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    dispatch_source_cancel(v14);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    dispatch_source_cancel(v15);
  }

  dispatch_source_cancel(*(a1 + 48));
  v16 = *(a1 + 56);
  if (v16)
  {
    dispatch_source_cancel(v16);
  }

  v17 = *(*(a1 + 80) + 8);
  if (*(v17 + 24))
  {
    *(v17 + 24) = 1;
  }

  else
  {
    v18 = *(a1 + 116);
    if (v18 != -1)
    {
      fcntl(v18, 4, 0);
      v19 = read(*(a1 + 116), *(a1 + 96), *(a1 + 104) - 1);
      if (v19 >= 1)
      {
        for (i = v19; i > 0; i = read(*(a1 + 116), v21, *(a1 + 104) - 1))
        {
          *(*(a1 + 96) + i) = 0;
          [*(a1 + 64) appendFormat:@"%s", *(a1 + 96)];
          v21 = *(a1 + 96);
          *(*(*(a1 + 88) + 8) + 24) += i;
        }
      }
    }

    v22 = *(a1 + 120);
    if (v22 != -1)
    {
      fcntl(v22, 4, 0);
      v23 = read(*(a1 + 120), *(a1 + 96), *(a1 + 104) - 1);
      if (v23 >= 1)
      {
        for (j = v23; j > 0; j = read(*(a1 + 120), v25, *(a1 + 104) - 1))
        {
          *(*(a1 + 96) + j) = 0;
          [*(a1 + 64) appendFormat:@"%s", *(a1 + 96)];
          v25 = *(a1 + 96);
          *(*(*(a1 + 88) + 8) + 24) += j;
        }
      }
    }
  }

  free(*(a1 + 96));
  if (*(*(*(a1 + 88) + 8) + 24))
  {
    [*(a1 + 64) appendString:@"\n"];
    v26 = ++*(*(*(a1 + 88) + 8) + 24);
  }

  return (*(*(a1 + 72) + 16))();
}

void sub_100062090(const char *a1, off_t a2, int a3, void *a4, int a5, double a6, double a7)
{
  v21 = a4;
  v13 = sub_100039314(a1, a2, a3, v21, 0, a5, 0, 1, a6, a7, -1, 0, 0, 0, 0, 0);
  if (v13)
  {
    sub_1000AFA1C(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_100062144(const char *a1, int a2)
{
  if (a1 && *a1 == 47)
  {
    for (i = 0; i != 6; ++i)
    {
      v5 = strlen(off_100115340[i]);
      if (!strncmp(a1, off_100115340[i], v5))
      {
        v11 = 0;
        return v11 & 1;
      }
    }

    if (!a2)
    {
      goto LABEL_11;
    }

    v6 = [[NSURL alloc] initFileURLWithFileSystemRepresentation:a1 isDirectory:0 relativeToURL:0];
    if (v6 && (v7 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle()) != 0)
    {
      v8 = v7;
      v9 = CFBundleGetIdentifier(v7);
      v10 = v9;
      if (v9)
      {
        v11 = [v9 hasPrefix:@"com.apple."] - 1;
      }

      else
      {
        v11 = 1;
      }

      CFRelease(v8);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
LABEL_11:
    v11 = 1;
  }

  return v11 & 1;
}

void sub_100062254(uint64_t a1)
{
  CSSymbolicatorGetSymbolOwner();
  if (CSIsNull())
  {
    v3 = *(a1 + 32);
    v2 = (a1 + 32);
    v5 = (v2 + 3);
    v4 = *(v2 + 6);
    if (v3)
    {
      if ((v4 & 0x80000000) == 0)
      {
        if (byte_100127EC8)
        {
          v6 = *__error();
          v7 = sub_10003E080();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            sub_1000B1EAC(v2, v2 + 6);
          }

          *__error() = v6;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          return;
        }

        v9 = *__error();
        v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: No symbol owner for symbolicator", *v2, *v5);
        if (v10)
        {
          v11 = v10;
          CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
          if (!CStringPtr)
          {
            v13 = 4077322289;
LABEL_118:
            v30 = malloc_type_calloc(0x400uLL, 1uLL, v13);
            CFStringGetCString(v11, v30, 1024, 0x8000100u);
            v31 = v30;
            goto LABEL_119;
          }

          goto LABEL_46;
        }

        v56 = sub_10003E080();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1F24(v2, v2 + 6);
        }

LABEL_114:

LABEL_148:
        if (qword_100127ED0)
        {
          v67 = qword_100127ED0;
        }

        else
        {
          v67 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v67);
        goto LABEL_152;
      }

      if (byte_100127EC8)
      {
        v32 = *__error();
        v33 = sub_10003E080();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_1000B1DCC(v2);
        }

        *__error() = v32;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        return;
      }

      v9 = *__error();
      v35 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: No symbol owner for symbolicator", *v2);
      if (v35)
      {
        v36 = v35;
        v37 = CFStringGetCStringPtr(v35, 0x8000100u);
        if (!v37)
        {
          v38 = 4077322289;
LABEL_137:
          v54 = malloc_type_calloc(0x400uLL, 1uLL, v38);
          CFStringGetCString(v36, v54, 1024, 0x8000100u);
          v55 = v54;
          goto LABEL_138;
        }

        goto LABEL_95;
      }

      v62 = sub_10003E080();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        sub_1000B1E3C(v2);
      }

      goto LABEL_127;
    }

    if (v4 < 0)
    {
      if (byte_100127EC8)
      {
        v39 = *__error();
        v40 = sub_10003E080();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1000B1F9C();
        }

        *__error() = v39;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        return;
      }

      v9 = *__error();
      v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No symbol owner for symbolicator");
      if (!v20)
      {
        v21 = sub_10003E080();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1FD8();
        }

        goto LABEL_147;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v16 = *__error();
        v17 = sub_10003E080();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1000B2014();
        }

        *__error() = v16;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        return;
      }

      v9 = *__error();
      v19 = sub_10003E020(*v5);
      v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No symbol owner for symbolicator", v19, *v5);
      if (!v20)
      {
        v21 = sub_10003E080();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          sub_1000B2094();
        }

LABEL_147:

        goto LABEL_148;
      }
    }

    v42 = v20;
    v43 = CFStringGetCStringPtr(v20, 0x8000100u);
    if (!v43)
    {
      v44 = 4077322289;
LABEL_129:
      v60 = malloc_type_calloc(0x400uLL, 1uLL, v44);
      CFStringGetCString(v42, v60, 1024, 0x8000100u);
      v61 = v60;
      goto LABEL_130;
    }

    goto LABEL_109;
  }

  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  if (CFUUIDBytes)
  {
    v68 = [[NSUUID alloc] initWithUUIDBytes:CFUUIDBytes];
    [*(a1 + 40) addObject:v68];
    v15 = [SABinary binaryWithUUID:v68 absolutePath:*(a1 + 48)];

    return;
  }

  v23 = *(a1 + 32);
  v22 = (a1 + 32);
  v25 = (v22 + 3);
  v24 = *(v22 + 6);
  if (!v23)
  {
    if (v24 < 0)
    {
      if (byte_100127EC8)
      {
        v57 = *__error();
        v58 = sub_10003E080();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          sub_1000B1C54();
        }

        *__error() = v57;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        return;
      }

      v9 = *__error();
      v49 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No UUID for symbol owner");
      if (!v49)
      {
        v21 = sub_10003E080();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1C90();
        }

        goto LABEL_147;
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
          sub_1000B1CCC();
        }

        *__error() = v45;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        return;
      }

      v9 = *__error();
      v48 = sub_10003E020(*v25);
      v49 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No UUID for symbol owner", v48, *v25);
      if (!v49)
      {
        v21 = sub_10003E080();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          sub_1000B1D4C();
        }

        goto LABEL_147;
      }
    }

    v42 = v49;
    v43 = CFStringGetCStringPtr(v49, 0x8000100u);
    if (!v43)
    {
      v44 = 2326492598;
      goto LABEL_129;
    }

LABEL_109:
    v60 = v43;
    v61 = 0;
LABEL_130:
    if (qword_100127ED0)
    {
      v65 = qword_100127ED0;
    }

    else
    {
      v65 = __stderrp;
    }

    fprintf(v65, "%s\n", v60);
    if (v61)
    {
      free(v61);
    }

    v64 = v42;
    goto LABEL_144;
  }

  if (v24 < 0)
  {
    if (byte_100127EC8)
    {
      v50 = *__error();
      v51 = sub_10003E080();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_1000B1A84(v22);
      }

      *__error() = v50;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      return;
    }

    v9 = *__error();
    v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: No UUID for symbol owner", *v22);
    if (v53)
    {
      v36 = v53;
      v37 = CFStringGetCStringPtr(v53, 0x8000100u);
      if (!v37)
      {
        v38 = 2326492598;
        goto LABEL_137;
      }

LABEL_95:
      v54 = v37;
      v55 = 0;
LABEL_138:
      if (qword_100127ED0)
      {
        v66 = qword_100127ED0;
      }

      else
      {
        v66 = __stderrp;
      }

      fprintf(v66, "%s\n", v54);
      if (v55)
      {
        free(v55);
      }

      v64 = v36;
      goto LABEL_144;
    }

    v62 = sub_10003E080();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
    {
      sub_1000B1AF4(v22);
    }

LABEL_127:

    goto LABEL_148;
  }

  if (byte_100127EC8)
  {
    v26 = *__error();
    v27 = sub_10003E080();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1000B1B64(v22, v22 + 6);
    }

    *__error() = v26;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v9 = *__error();
    v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: No UUID for symbol owner", *v22, *v25);
    if (v29)
    {
      v11 = v29;
      CStringPtr = CFStringGetCStringPtr(v29, 0x8000100u);
      if (!CStringPtr)
      {
        v13 = 2326492598;
        goto LABEL_118;
      }

LABEL_46:
      v30 = CStringPtr;
      v31 = 0;
LABEL_119:
      if (qword_100127ED0)
      {
        v63 = qword_100127ED0;
      }

      else
      {
        v63 = __stderrp;
      }

      fprintf(v63, "%s\n", v30);
      if (v31)
      {
        free(v31);
      }

      v64 = v11;
LABEL_144:
      CFRelease(v64);
LABEL_152:
      *__error() = v9;
      return;
    }

    v56 = sub_10003E080();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      sub_1000B1BDC(v22, v22 + 6);
    }

    goto LABEL_114;
  }
}

void sub_100062BE8(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 mainBinary];
  v4 = [v3 uuid];

  if (v4 && [*(a1 + 32) containsObject:v4])
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:v4];
    v6 = [v5 unsignedIntValue];
    v7 = [v9 taskStates];
    v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count] + v6);
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v4];
  }
}

uint64_t sub_100062CD8(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, unsigned int a8, double a9, double a10, double a11, double a12, double a13, double a14, unsigned __int8 a15, char a16)
{
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a5;
  v548 = a6;
  v32 = a7;
  v549 = a4;
  v542 = a4 - 9;
  v34 = (byte_100127EDC & 0x10) == 0 && (a4 - 9) < 2;
  sub_1000791AC(v28, (byte_100127EDC >> 3) & 1, (byte_100127EDC >> 2) & 1, v34);
  v555 = 0u;
  v556 = 0u;
  v553 = 0u;
  v554 = 0u;
  v35 = v31;
  v36 = [v35 countByEnumeratingWithState:&v553 objects:v561 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v554;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v554 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [v28 useDsymForUUIDFor:*(*(&v553 + 1) + 8 * i)];
      }

      v37 = [v35 countByEnumeratingWithState:&v553 objects:v561 count:16];
    }

    while (v37);
  }

  v40 = [[SASamplePrinter alloc] initWithSampleStore:v28];
  v41 = v40;
  v42 = v29;
  if (v29)
  {
    [v40 setOptions:v29];
  }

  if (v548)
  {
    [v41 setIncidentUUID:?];
  }

  v546 = v32;
  v547 = v41;
  if (a13 == 0.0)
  {
LABEL_62:
    if (a11 == 0.0)
    {
      v82 = a9;
    }

    else
    {
      v82 = a11;
    }

    if (a12 == 0.0)
    {
      a12 = a10;
    }

    if (v82 > 0.0 && a12 > 0.0)
    {
      v83 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:?];
      v84 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:0.0 machContTimeSec:0.0 wallTime:a12];
      v85 = [SATimeRange timeRangeStart:v83 end:v84];
      [v28 setEventTimeRange:v85];

      v41 = v547;
    }

    [v41 setShareWithAppDevs:AppAnalyticsEnabled()];
    v86 = [v41 options];
    [v86 setMicrostackshotsFormat:1];

    if (v549 == 15)
    {
      goto LABEL_73;
    }

    if (v549 != 6)
    {
      if (v549 != 5)
      {
        v117 = [v28 targetProcess];
        v118 = [v117 name];

        v119 = [v28 targetProcessId];
        if (v118)
        {
          if ((v119 & 0x80000000) != 0)
          {
            if (byte_100127EC8)
            {
              v175 = *__error();
              v176 = sub_10003E080();
              if (os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG))
              {
                sub_1000B2F04();
              }

              *__error() = v175;
              v41 = v547;
            }

            v122 = v549;
            if (byte_100127EC9 != 1 || dword_100127558 > 0)
            {
              goto LABEL_382;
            }

            v123 = v30;
            v124 = *__error();
            v177 = [v28 targetProcess];
            v178 = [v177 name];
            v127 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Not providing unsupported report type (%d) to MetricKit", v178, v549);

            if (!v127)
            {
              v128 = sub_10003E080();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
              {
                sub_1000B2FB0();
              }

              goto LABEL_375;
            }
          }

          else
          {
            if (byte_100127EC8)
            {
              v120 = *__error();
              v121 = sub_10003E080();
              if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
              {
                sub_1000B3058();
              }

              *__error() = v120;
              v41 = v547;
            }

            v122 = v549;
            if (byte_100127EC9 != 1 || dword_100127558 > 0)
            {
              goto LABEL_382;
            }

            v123 = v30;
            v124 = *__error();
            v125 = [v28 targetProcess];
            v126 = [v125 name];
            v127 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Not providing unsupported report type (%d) to MetricKit", v126, [v28 targetProcessId], v549);

            if (!v127)
            {
              v128 = sub_10003E080();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
              {
                sub_1000B311C();
              }

              goto LABEL_375;
            }
          }

          CStringPtr = CFStringGetCStringPtr(v127, 0x8000100u);
          if (!CStringPtr)
          {
            v180 = 239848261;
LABEL_349:
            v219 = malloc_type_calloc(0x400uLL, 1uLL, v180);
            CFStringGetCString(v127, v219, 1024, 0x8000100u);
            v220 = v219;
            goto LABEL_350;
          }

LABEL_267:
          v219 = CStringPtr;
          v220 = 0;
LABEL_350:
          if (qword_100127ED0)
          {
            v242 = qword_100127ED0;
          }

          else
          {
            v242 = __stderrp;
          }

          fprintf(v242, "%s\n", v219);
          if (v220)
          {
            free(v220);
          }

          CFRelease(v127);
          goto LABEL_379;
        }

        if ((v119 & 0x80000000) == 0)
        {
          if (byte_100127EC8)
          {
            v144 = *__error();
            v145 = sub_10003E080();
            if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
            {
              sub_1000B32C4();
            }

            *__error() = v144;
          }

          v122 = v549;
          if (byte_100127EC9 != 1 || dword_100127558 > 0)
          {
            goto LABEL_382;
          }

          v146 = *__error();
          v147 = sub_10003E020([v28 targetProcessId]);
          v148 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Not providing unsupported report type (%d) to MetricKit", v147, [v28 targetProcessId], v549);
          if (!v148)
          {
            v238 = sub_10003E080();
            if (os_log_type_enabled(v238, OS_LOG_TYPE_FAULT))
            {
              sub_1000B3364();
            }

            if (qword_100127ED0)
            {
              v239 = qword_100127ED0;
            }

            else
            {
              v239 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v239);
            v42 = v29;
            goto LABEL_578;
          }

          v149 = v148;
          v150 = v30;
          v151 = CFStringGetCStringPtr(v148, 0x8000100u);
          if (v151)
          {
            v152 = v151;
            v153 = 0;
          }

          else
          {
            v152 = malloc_type_calloc(0x400uLL, 1uLL, 0xE4BCB45uLL);
            CFStringGetCString(v149, v152, 1024, 0x8000100u);
            v153 = v152;
          }

          v42 = v29;
          goto LABEL_541;
        }

        if (byte_100127EC8)
        {
          v207 = *__error();
          v208 = sub_10003E080();
          if (os_log_type_enabled(v208, OS_LOG_TYPE_DEBUG))
          {
            sub_1000B31DC();
          }

          *__error() = v207;
        }

        v122 = v549;
        if (byte_100127EC9 != 1 || dword_100127558 > 0)
        {
          goto LABEL_382;
        }

        v146 = *__error();
        v209 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not providing unsupported report type (%d) to MetricKit", v549);
        if (!v209)
        {
          v167 = sub_10003E080();
          if (os_log_type_enabled(v167, OS_LOG_TYPE_FAULT))
          {
            sub_1000B3250();
          }

          goto LABEL_574;
        }

        v149 = v209;
        v150 = v30;
        v210 = CFStringGetCStringPtr(v209, 0x8000100u);
        if (!v210)
        {
          v211 = 239848261;
LABEL_540:
          v152 = malloc_type_calloc(0x400uLL, 1uLL, v211);
          CFStringGetCString(v149, v152, 1024, 0x8000100u);
          v153 = v152;
          goto LABEL_541;
        }

LABEL_308:
        v152 = v210;
        v153 = 0;
LABEL_541:
        if (qword_100127ED0)
        {
          v370 = qword_100127ED0;
        }

        else
        {
          v370 = __stderrp;
        }

        fprintf(v370, "%s\n", v152);
        if (v153)
        {
          free(v153);
        }

        CFRelease(v149);
        v30 = v150;
        v41 = v547;
        goto LABEL_578;
      }

LABEL_73:
      v87 = objc_opt_class();
      v88 = [v28 targetProcess];
      v89 = [v88 name];

      v90 = [v28 targetProcessId];
      if (v87)
      {
        if (v89)
        {
          v41 = v547;
          if ((v90 & 0x80000000) != 0)
          {
            if (byte_100127EC8)
            {
              v154 = *__error();
              v155 = sub_10003E080();
              if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
              {
                v156 = [v28 targetProcess];
                v157 = [v156 name];
                *buf = 138543362;
                v558 = v157;
                _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_INFO, "%{public}@: Providing cpu usage report to MetricKit", buf, 0xCu);

                v41 = v547;
              }

              *__error() = v154;
            }

            if (byte_100127EC9 != 1 || dword_100127558 > 1)
            {
              goto LABEL_299;
            }

            v96 = v30;
            v97 = *__error();
            v158 = [v28 targetProcess];
            v159 = [v158 name];
            v100 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Providing cpu usage report to MetricKit", v159);

            if (!v100)
            {
              v101 = sub_10003E080();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
              {
                sub_1000B28B0(v28);
              }

              goto LABEL_285;
            }
          }

          else
          {
            if (byte_100127EC8)
            {
              v91 = *__error();
              v92 = sub_10003E080();
              if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
              {
                v93 = [v28 targetProcess];
                v94 = [v93 name];
                v95 = [v28 targetProcessId];
                *buf = 138543618;
                v558 = v94;
                v559 = 1024;
                v560 = v95;
                _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_INFO, "%{public}@ [%d]: Providing cpu usage report to MetricKit", buf, 0x12u);

                v41 = v547;
              }

              *__error() = v91;
            }

            if (byte_100127EC9 != 1 || dword_100127558 > 1)
            {
              goto LABEL_299;
            }

            v96 = v30;
            v97 = *__error();
            v98 = [v28 targetProcess];
            v99 = [v98 name];
            v100 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Providing cpu usage report to MetricKit", v99, [v28 targetProcessId]);

            if (!v100)
            {
              v101 = sub_10003E080();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
              {
                sub_1000B2954();
              }

LABEL_285:

              if (qword_100127ED0)
              {
                v230 = qword_100127ED0;
              }

              else
              {
                v230 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v230);
LABEL_289:
              v30 = v96;
LABEL_297:
              v41 = v547;
LABEL_298:
              *__error() = v97;
LABEL_299:
              v232 = v41;
              v233 = 0;
LABEL_366:
              [MXSampleAnalysisParser sendDiagnosticReport:v232 forType:v233 forSourceID:4];
LABEL_380:
              v32 = v546;
LABEL_381:
              v122 = v549;
              goto LABEL_382;
            }
          }

          v160 = CFStringGetCStringPtr(v100, 0x8000100u);
          if (v160)
          {
            v161 = v160;
            v162 = 0;
          }

          else
          {
            v161 = malloc_type_calloc(0x400uLL, 1uLL, 0x834ECF26uLL);
            CFStringGetCString(v100, v161, 1024, 0x8000100u);
            v162 = v161;
          }

          if (qword_100127ED0)
          {
            v214 = qword_100127ED0;
          }

          else
          {
            v214 = __stderrp;
          }

          fprintf(v214, "%s\n", v161);
          if (v162)
          {
            free(v162);
          }

          CFRelease(v100);
          goto LABEL_289;
        }

        v41 = v547;
        if ((v90 & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v185 = *__error();
            v186 = sub_10003E080();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_INFO, "Providing cpu usage report to MetricKit", buf, 2u);
            }

            *__error() = v185;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 1)
          {
            goto LABEL_299;
          }

          v97 = *__error();
          v138 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Providing cpu usage report to MetricKit");
          if (!v138)
          {
            v139 = sub_10003E080();
            if (os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
            {
              sub_1000B29FC();
            }

            goto LABEL_337;
          }
        }

        else
        {
          if (byte_100127EC8)
          {
            v133 = *__error();
            v134 = sub_10003E080();
            if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
            {
              v135 = sub_10003E020([v28 targetProcessId]);
              v136 = [v28 targetProcessId];
              *buf = 136446466;
              v558 = v135;
              v559 = 1024;
              v560 = v136;
              _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_INFO, "%{public}s [%d]: Providing cpu usage report to MetricKit", buf, 0x12u);
            }

            *__error() = v133;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 1)
          {
            goto LABEL_299;
          }

          v97 = *__error();
          v137 = sub_10003E020([v28 targetProcessId]);
          v138 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Providing cpu usage report to MetricKit", v137, [v28 targetProcessId]);
          if (!v138)
          {
            v139 = sub_10003E080();
            if (os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
            {
              sub_1000B2A38();
            }

LABEL_337:

            if (qword_100127ED0)
            {
              v240 = qword_100127ED0;
            }

            else
            {
              v240 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v240);
            goto LABEL_298;
          }
        }

        v187 = v138;
        v188 = v30;
        v189 = CFStringGetCStringPtr(v138, 0x8000100u);
        if (v189)
        {
          v190 = v189;
          v191 = 0;
        }

        else
        {
          v190 = malloc_type_calloc(0x400uLL, 1uLL, 0x834ECF26uLL);
          CFStringGetCString(v187, v190, 1024, 0x8000100u);
          v191 = v190;
        }

        if (qword_100127ED0)
        {
          v231 = qword_100127ED0;
        }

        else
        {
          v231 = __stderrp;
        }

        fprintf(v231, "%s\n", v190);
        if (v191)
        {
          free(v191);
        }

        CFRelease(v187);
        v30 = v188;
        goto LABEL_297;
      }

      if (v89)
      {
        v32 = v546;
        v41 = v547;
        v122 = v549;
        if ((v90 & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v181 = *__error();
            v182 = sub_10003E080();
            if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
            {
              sub_1000B2ACC(v28);
            }

            *__error() = v181;
            v122 = v549;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v123 = v30;
            v124 = *__error();
            v183 = [v28 targetProcess];
            v184 = [v183 name];
            v127 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: MetricKit unavailable, not providing cpu usage report", v184);

            if (!v127)
            {
              v128 = sub_10003E080();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
              {
                sub_1000B2B70(v28);
              }

              goto LABEL_375;
            }

LABEL_195:
            CStringPtr = CFStringGetCStringPtr(v127, 0x8000100u);
            if (!CStringPtr)
            {
              v180 = 326608200;
              goto LABEL_349;
            }

            goto LABEL_267;
          }
        }

        else
        {
          if (byte_100127EC8)
          {
            v129 = *__error();
            v130 = sub_10003E080();
            if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
              sub_1000B2C14();
            }

            *__error() = v129;
            v122 = v549;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v123 = v30;
            v124 = *__error();
            v131 = [v28 targetProcess];
            v132 = [v131 name];
            v127 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: MetricKit unavailable, not providing cpu usage report", v132, [v28 targetProcessId]);

            if (!v127)
            {
              v128 = sub_10003E080();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
              {
                sub_1000B2CBC();
              }

LABEL_375:

              if (qword_100127ED0)
              {
                v244 = qword_100127ED0;
              }

              else
              {
                v244 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v244);
LABEL_379:
              v30 = v123;
              v41 = v547;
              *__error() = v124;
              goto LABEL_380;
            }

            goto LABEL_195;
          }
        }

LABEL_382:
        v245 = v122 - 7;
        if (!v32)
        {
          v54 = v548;
          if (byte_100127EC8 == 1)
          {
            v262 = *__error();
            v263 = sub_10003E080();
            if (os_log_type_enabled(v263, OS_LOG_TYPE_DEBUG))
            {
              sub_1000B3640();
            }

            *__error() = v262;
            v122 = v549;
          }

          v246 = 0;
          if (byte_100127EC9 != 1 || dword_100127558 > 0)
          {
LABEL_449:
            v286 = 0.0;
            if (v245 < 2)
            {
LABEL_453:
              v290 = sub_1000694CC(v41, 0, v246, v122, 0, a15, v286, a14, a8, 0, 0, 0);
LABEL_454:

              +[SABinary clearCoreSymbolicationCaches];
              if (v290)
              {
                v193 = 0;
              }

              else
              {
                v193 = 0x1000000;
              }

              v28 = v246;
              goto LABEL_458;
            }

            if (v122 <= 0xF && ((1 << v122) & 0x8060) != 0)
            {
              [v28 startTime];
              v288 = v287 = v246;
              [v288 wallTime];
              v286 = v289;

              v246 = v287;
              v122 = v549;
              goto LABEL_453;
            }

            if (a16)
            {
              [v41 printToStream:__stdoutp];
              v290 = 1;
              goto LABEL_454;
            }

            v541 = v246;
            if (v542 >= 2)
            {
              v458 = [v28 targetProcess];
              v459 = [v458 name];

              v460 = [v28 targetProcessId];
              if (!v459)
              {
                if ((v460 & 0x80000000) != 0)
                {
                  if (byte_100127EC8)
                  {
                    v481 = *__error();
                    v482 = sub_10003E080();
                    if (os_log_type_enabled(v482, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B39D8();
                    }

                    *__error() = v481;
                  }

                  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                  {
                    v483 = *__error();
                    v484 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Bad report type %d", "report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS", v549);
                    if (v484)
                    {
                      v503 = v484;
                      v504 = CFStringGetCStringPtr(v484, 0x8000100u);
                      if (v504)
                      {
                        v505 = v504;
                        v506 = 0;
                      }

                      else
                      {
                        v505 = malloc_type_calloc(0x400uLL, 1uLL, 0x3CC1F1D7uLL);
                        CFStringGetCString(v503, v505, 1024, 0x8000100u);
                        v506 = v505;
                      }

                      if (qword_100127ED0)
                      {
                        v524 = qword_100127ED0;
                      }

                      else
                      {
                        v524 = __stderrp;
                      }

                      fprintf(v524, "%s\n", v505);
                      if (v506)
                      {
                        free(v506);
                      }

                      CFRelease(v503);
                    }

                    else
                    {
                      v485 = sub_10003E080();
                      if (os_log_type_enabled(v485, OS_LOG_TYPE_FAULT))
                      {
                        sub_1000B3A58();
                      }

                      if (qword_100127ED0)
                      {
                        v486 = qword_100127ED0;
                      }

                      else
                      {
                        v486 = __stderrp;
                      }

                      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v486);
                    }

                    *__error() = v483;
                  }

                  sub_10003DF54("DoMicrostackshotsForSampleStore", "microstackshot.m", 562, "%s: Bad report type %d", v461, v462, v463, v464, "report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS");
                }

                else
                {
                  if (byte_100127EC8)
                  {
                    v465 = *__error();
                    v466 = sub_10003E080();
                    if (os_log_type_enabled(v466, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B3AD8();
                    }

                    *__error() = v465;
                  }

                  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                  {
                    v467 = *__error();
                    v468 = sub_10003E020([v28 targetProcessId]);
                    v469 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Bad report type %d", v468, [v28 targetProcessId], "report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS", v549);
                    if (v469)
                    {
                      v496 = v469;
                      v497 = CFStringGetCStringPtr(v469, 0x8000100u);
                      if (v497)
                      {
                        v498 = v497;
                        v499 = 0;
                      }

                      else
                      {
                        v498 = malloc_type_calloc(0x400uLL, 1uLL, 0x3CC1F1D7uLL);
                        CFStringGetCString(v496, v498, 1024, 0x8000100u);
                        v499 = v498;
                      }

                      if (qword_100127ED0)
                      {
                        v510 = qword_100127ED0;
                      }

                      else
                      {
                        v510 = __stderrp;
                      }

                      fprintf(v510, "%s\n", v498);
                      if (v499)
                      {
                        free(v499);
                      }

                      CFRelease(v496);
                    }

                    else
                    {
                      v470 = sub_10003E080();
                      if (os_log_type_enabled(v470, OS_LOG_TYPE_FAULT))
                      {
                        sub_1000B3B80();
                      }

                      if (qword_100127ED0)
                      {
                        v471 = qword_100127ED0;
                      }

                      else
                      {
                        v471 = __stderrp;
                      }

                      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v471);
                    }

                    *__error() = v467;
                  }

                  v511 = sub_10003E020([v28 targetProcessId]);
                  [v28 targetProcessId];
                  sub_10003DF54("DoMicrostackshotsForSampleStore", "microstackshot.m", 562, "%s [%d]: %s: Bad report type %d", v512, v513, v514, v515, v511);
                }

                abort();
              }

              if ((v460 & 0x80000000) == 0)
              {
                if (byte_100127EC8)
                {
                  v472 = *__error();
                  v473 = sub_10003E080();
                  if (os_log_type_enabled(v473, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B3828();
                  }

                  *__error() = v472;
                }

                if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                {
                  v474 = *__error();
                  v475 = [v28 targetProcess];
                  v476 = [v475 name];
                  v477 = CFStringGetCStringPtr(v476, 0x8000100u);
                  v478 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Bad report type %d", v477, [v28 targetProcessId], "report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS", v549);

                  if (v478)
                  {
                    v500 = CFStringGetCStringPtr(v478, 0x8000100u);
                    if (v500)
                    {
                      v501 = v500;
                      v502 = 0;
                    }

                    else
                    {
                      v501 = malloc_type_calloc(0x400uLL, 1uLL, 0x3CC1F1D7uLL);
                      CFStringGetCString(v478, v501, 1024, 0x8000100u);
                      v502 = v501;
                    }

                    if (qword_100127ED0)
                    {
                      v516 = qword_100127ED0;
                    }

                    else
                    {
                      v516 = __stderrp;
                    }

                    fprintf(v516, "%s\n", v501);
                    if (v502)
                    {
                      free(v502);
                    }

                    CFRelease(v478);
                  }

                  else
                  {
                    v479 = sub_10003E080();
                    if (os_log_type_enabled(v479, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B3900();
                    }

                    if (qword_100127ED0)
                    {
                      v480 = qword_100127ED0;
                    }

                    else
                    {
                      v480 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v480);
                  }

                  *__error() = v474;
                }

                v517 = [v28 targetProcess];
                v518 = [v517 name];
                v519 = CFStringGetCStringPtr(v518, 0x8000100u);
                [v28 targetProcessId];
                sub_10003DF54("DoMicrostackshotsForSampleStore", "microstackshot.m", 562, "%s [%d]: %s: Bad report type %d", v520, v521, v522, v523, v519);

                abort();
              }

              if (byte_100127EC8)
              {
                v487 = *__error();
                v488 = sub_10003E080();
                if (os_log_type_enabled(v488, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B36B8();
                }

                *__error() = v487;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v489 = *__error();
                v490 = [v28 targetProcess];
                v491 = [v490 name];
                v492 = CFStringGetCStringPtr(v491, 0x8000100u);
                v493 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: %s: Bad report type %d", v492, "report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS", v549);

                if (v493)
                {
                  v507 = CFStringGetCStringPtr(v493, 0x8000100u);
                  if (v507)
                  {
                    v508 = v507;
                    v509 = 0;
                  }

                  else
                  {
                    v508 = malloc_type_calloc(0x400uLL, 1uLL, 0x3CC1F1D7uLL);
                    CFStringGetCString(v493, v508, 1024, 0x8000100u);
                    v509 = v508;
                  }

                  if (qword_100127ED0)
                  {
                    v525 = qword_100127ED0;
                  }

                  else
                  {
                    v525 = __stderrp;
                  }

                  fprintf(v525, "%s\n", v508);
                  if (v509)
                  {
                    free(v509);
                  }

                  CFRelease(v493);
                }

                else
                {
                  v494 = sub_10003E080();
                  if (os_log_type_enabled(v494, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B3770();
                  }

                  if (qword_100127ED0)
                  {
                    v495 = qword_100127ED0;
                  }

                  else
                  {
                    v495 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v495);
                }

                *__error() = v489;
              }

              v526 = [v28 targetProcess];
              v527 = [v526 name];
              v528 = CFStringGetCStringPtr(v527, 0x8000100u);
              sub_10003DF54("DoMicrostackshotsForSampleStore", "microstackshot.m", 562, "%s: %s: Bad report type %d", v529, v530, v531, v532, v528);

              abort();
            }

            if (v122 == 9)
            {
              v292 = @"Powerstats";
            }

            else
            {
              v292 = @"IOStats";
            }

            v293 = geteuid();
            v550 = v30;
            v551 = 0;
            v294 = sub_10006AF5C(v30, v292, 0xFFFFFFFFLL, 1537, v293, 0x1A4u, &v551);
            v295 = v551;
            if (v294 == -1)
            {
              v306 = [v28 targetProcess];
              v307 = [v306 name];

              v308 = [v28 targetProcessId];
              if (v307)
              {
                v30 = v550;
                v246 = v541;
                if ((v308 & 0x80000000) == 0)
                {
                  if (byte_100127EC8)
                  {
                    v309 = *__error();
                    v310 = sub_10003E080();
                    if (os_log_type_enabled(v310, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B48E8();
                    }

                    *__error() = v309;
                    v246 = v541;
                  }

                  v290 = 0;
                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_721;
                  }

                  v544 = *__error();
                  v311 = [v28 targetProcess];
                  v312 = [v311 name];
                  v313 = [v28 targetProcessId];
                  v314 = v295;
                  v315 = *__error();
                  v316 = __error();
                  v317 = strerror(*v316);
                  v533 = v315;
                  v295 = v314;
                  v318 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: could not open log file %@: %d (%s)", v312, v313, v314, v533, v317);

                  if (v318)
                  {
                    v319 = CFStringGetCStringPtr(v318, 0x8000100u);
                    if (v319)
                    {
                      v320 = v319;
                      v321 = 0;
                    }

                    else
                    {
                      v320 = malloc_type_calloc(0x400uLL, 1uLL, 0xB1F43F5DuLL);
                      CFStringGetCString(v318, v320, 1024, 0x8000100u);
                      v321 = v320;
                    }

                    v30 = v550;
                    goto LABEL_701;
                  }

                  v396 = sub_10003E080();
                  if (os_log_type_enabled(v396, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B49A4();
                  }

                  if (qword_100127ED0)
                  {
                    v397 = qword_100127ED0;
                  }

                  else
                  {
                    v397 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v397);
                  v290 = 0;
                  v30 = v550;
                  goto LABEL_717;
                }

                if (byte_100127EC8)
                {
                  v349 = *__error();
                  v350 = sub_10003E080();
                  if (os_log_type_enabled(v350, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B4778();
                  }

                  *__error() = v349;
                  v246 = v541;
                }

                v290 = 0;
                if (byte_100127EC9 != 1 || dword_100127558 > 3)
                {
                  goto LABEL_721;
                }

                v300 = *__error();
                v351 = [v28 targetProcess];
                v352 = [v351 name];
                v353 = *__error();
                v354 = __error();
                v355 = strerror(*v354);
                v318 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: could not open log file %@: %d (%s)", v352, v295, v353, v355);

                if (!v318)
                {
                  v401 = sub_10003E080();
                  if (os_log_type_enabled(v401, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B4830();
                  }

                  if (qword_100127ED0)
                  {
                    v402 = qword_100127ED0;
                  }

                  else
                  {
                    v402 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v402);
                  v290 = 0;
                  v30 = v550;
                  goto LABEL_708;
                }

                v356 = CFStringGetCStringPtr(v318, 0x8000100u);
                if (v356)
                {
                  v320 = v356;
                  v321 = 0;
                }

                else
                {
                  v320 = malloc_type_calloc(0x400uLL, 1uLL, 0xB1F43F5DuLL);
                  CFStringGetCString(v318, v320, 1024, 0x8000100u);
                  v321 = v320;
                }

                v30 = v550;
LABEL_702:
                if (qword_100127ED0)
                {
                  v453 = qword_100127ED0;
                }

                else
                {
                  v453 = __stderrp;
                }

                fprintf(v453, "%s\n", v320);
                if (v321)
                {
                  free(v321);
                }

                CFRelease(v318);
                v290 = 0;
LABEL_708:
                v41 = v547;
LABEL_719:
                *__error() = v300;
LABEL_720:
                v246 = v541;
                goto LABEL_721;
              }

              v30 = v550;
              v246 = v541;
              if ((v308 & 0x80000000) == 0)
              {
                if (byte_100127EC8)
                {
                  v338 = *__error();
                  v339 = sub_10003E080();
                  if (os_log_type_enabled(v339, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B4B90();
                  }

                  *__error() = v338;
                  v246 = v541;
                }

                v290 = 0;
                if (byte_100127EC9 != 1 || dword_100127558 > 3)
                {
                  goto LABEL_721;
                }

                v544 = *__error();
                v340 = sub_10003E020([v28 targetProcessId]);
                v341 = [v28 targetProcessId];
                v342 = v295;
                v343 = *__error();
                v344 = __error();
                v345 = strerror(*v344);
                v535 = v343;
                v295 = v342;
                v346 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: could not open log file %@: %d (%s)", v340, v341, v342, v535, v345);
                if (v346)
                {
                  v318 = v346;
                  v347 = CFStringGetCStringPtr(v346, 0x8000100u);
                  if (v347)
                  {
LABEL_660:
                    v320 = v347;
                    v321 = 0;
LABEL_701:
                    v300 = v544;
                    goto LABEL_702;
                  }

                  v348 = 2985574237;
LABEL_700:
                  v320 = malloc_type_calloc(0x400uLL, 1uLL, v348);
                  CFStringGetCString(v318, v320, 1024, 0x8000100u);
                  v321 = v320;
                  goto LABEL_701;
                }

                v400 = sub_10003E080();
                if (os_log_type_enabled(v400, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B4C3C();
                }

LABEL_689:

                if (qword_100127ED0)
                {
                  v450 = qword_100127ED0;
                }

                else
                {
                  v450 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v450);
LABEL_716:
                v290 = 0;
LABEL_717:
                v41 = v547;
LABEL_718:
                v300 = v544;
                goto LABEL_719;
              }

              if (byte_100127EC8)
              {
                v379 = *__error();
                v380 = sub_10003E080();
                if (os_log_type_enabled(v380, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B4A60();
                }

                *__error() = v379;
                v246 = v541;
              }

              v290 = 0;
              if (byte_100127EC9 != 1 || dword_100127558 > 3)
              {
                goto LABEL_721;
              }

              v300 = *__error();
              v381 = *__error();
              v382 = __error();
              v383 = strerror(*v382);
              v384 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"could not open log file %@: %d (%s)", v295, v381, v383);
              if (v384)
              {
                v318 = v384;
                v385 = CFStringGetCStringPtr(v384, 0x8000100u);
                if (v385)
                {
LABEL_678:
                  v320 = v385;
                  v321 = 0;
                  goto LABEL_702;
                }

                v386 = 2985574237;
LABEL_736:
                v320 = malloc_type_calloc(0x400uLL, 1uLL, v386);
                CFStringGetCString(v318, v320, 1024, 0x8000100u);
                v321 = v320;
                goto LABEL_702;
              }

              v407 = sub_10003E080();
              if (os_log_type_enabled(v407, OS_LOG_TYPE_FAULT))
              {
                sub_1000B4AF8();
              }

LABEL_730:

              if (qword_100127ED0)
              {
                v457 = qword_100127ED0;
              }

              else
              {
                v457 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v457);
              v290 = 0;
              goto LABEL_719;
            }

            v296 = fdopen(v294, "w");
            if (v296)
            {
              v297 = v296;
              [v41 printToStream:v296];
              fclose(v297);
              v30 = v550;
              if (byte_100127EC8 == 1)
              {
                v298 = *__error();
                v299 = sub_10003E080();
                if (os_log_type_enabled(v299, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v558 = v295;
                  _os_log_impl(&_mh_execute_header, v299, OS_LOG_TYPE_DEFAULT, "Spindump analysis written to file %@", buf, 0xCu);
                }

                *__error() = v298;
              }

              v290 = 1;
              if (byte_100127EC9 != 1)
              {
                goto LABEL_720;
              }

              v246 = v541;
              if (dword_100127558 > 2)
              {
LABEL_721:

                v32 = v546;
                goto LABEL_454;
              }

              v300 = *__error();
              v301 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Spindump analysis written to file %@", v295);
              if (!v301)
              {
                v367 = sub_10003E080();
                if (os_log_type_enabled(v367, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B3C28();
                }

                if (qword_100127ED0)
                {
                  v368 = qword_100127ED0;
                }

                else
                {
                  v368 = __stderrp;
                }

                v290 = 1;
                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v368);
                goto LABEL_719;
              }

              v302 = v301;
              v303 = CFStringGetCStringPtr(v301, 0x8000100u);
              if (v303)
              {
                v304 = v303;
                v305 = 0;
              }

              else
              {
                v304 = malloc_type_calloc(0x400uLL, 1uLL, 0xB9CFA3CBuLL);
                CFStringGetCString(v302, v304, 1024, 0x8000100u);
                v305 = v304;
              }

              if (qword_100127ED0)
              {
                v387 = qword_100127ED0;
              }

              else
              {
                v387 = __stderrp;
              }

              fprintf(v387, "%s\n", v304);
              if (v305)
              {
                free(v305);
              }

              CFRelease(v302);
              v290 = 1;
              goto LABEL_708;
            }

            v322 = [v28 targetProcess];
            v323 = [v322 name];

            v324 = [v28 targetProcessId];
            if (v323)
            {
              if ((v324 & 0x80000000) == 0)
              {
                if (byte_100127EC8)
                {
                  v325 = *__error();
                  v326 = sub_10003E080();
                  if (os_log_type_enabled(v326, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B3E08();
                  }

                  *__error() = v325;
                }

                if (byte_100127EC9 != 1 || dword_100127558 > 3)
                {
                  goto LABEL_640;
                }

                v545 = *__error();
                v327 = [v28 targetProcess];
                v328 = [v327 name];
                v329 = [v28 targetProcessId];
                v330 = v295;
                v331 = *__error();
                v332 = __error();
                v333 = strerror(*v332);
                v534 = v331;
                v295 = v330;
                v334 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: could not fdopen log file %@: %d (%s)", v328, v329, v330, v534, v333);

                if (v334)
                {
                  v335 = CFStringGetCStringPtr(v334, 0x8000100u);
                  if (v335)
                  {
                    v336 = v335;
                    v337 = 0;
                  }

                  else
                  {
                    v336 = malloc_type_calloc(0x400uLL, 1uLL, 0xA55A59C7uLL);
                    CFStringGetCString(v334, v336, 1024, 0x8000100u);
                    v337 = v336;
                  }

                  v54 = v548;
                  goto LABEL_632;
                }

                v398 = sub_10003E080();
                if (os_log_type_enabled(v398, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B3EC4();
                }

                if (qword_100127ED0)
                {
                  v399 = qword_100127ED0;
                }

                else
                {
                  v399 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v399);
                v54 = v548;
LABEL_620:
                v41 = v547;
LABEL_639:
                *__error() = v545;
LABEL_640:
                close(v294);
                v409 = [v28 targetProcess];
                v410 = [v409 name];

                v411 = [v28 targetProcessId];
                if (v410)
                {
                  v30 = v550;
                  v246 = v541;
                  if ((v411 & 0x80000000) == 0)
                  {
                    if (byte_100127EC8)
                    {
                      v412 = *__error();
                      v413 = sub_10003E080();
                      if (os_log_type_enabled(v413, OS_LOG_TYPE_ERROR))
                      {
                        sub_1000B4378();
                      }

                      *__error() = v412;
                      v246 = v541;
                    }

                    v290 = 0;
                    if (byte_100127EC9 != 1 || dword_100127558 > 3)
                    {
                      goto LABEL_721;
                    }

                    v544 = *__error();
                    v414 = [v28 targetProcess];
                    v415 = [v414 name];
                    v416 = [v28 targetProcessId];
                    v417 = v295;
                    v418 = *__error();
                    v419 = __error();
                    v420 = strerror(*v419);
                    v537 = v418;
                    v295 = v417;
                    v318 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: could not write to file %@: %d (%s)", v415, v416, v417, v537, v420);

                    if (v318)
                    {
                      v421 = CFStringGetCStringPtr(v318, 0x8000100u);
                      if (v421)
                      {
                        v320 = v421;
                        v321 = 0;
                      }

                      else
                      {
                        v320 = malloc_type_calloc(0x400uLL, 1uLL, 0x27A76D56uLL);
                        CFStringGetCString(v318, v320, 1024, 0x8000100u);
                        v321 = v320;
                      }

                      v54 = v548;
                      goto LABEL_701;
                    }

                    v448 = sub_10003E080();
                    if (os_log_type_enabled(v448, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B4434();
                    }

                    if (qword_100127ED0)
                    {
                      v449 = qword_100127ED0;
                    }

                    else
                    {
                      v449 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v449);
                    v290 = 0;
                    v54 = v548;
                    goto LABEL_717;
                  }

                  if (byte_100127EC8)
                  {
                    v431 = *__error();
                    v432 = sub_10003E080();
                    if (os_log_type_enabled(v432, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B4208();
                    }

                    *__error() = v431;
                    v246 = v541;
                  }

                  v290 = 0;
                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_721;
                  }

                  v544 = *__error();
                  v433 = [v28 targetProcess];
                  v434 = [v433 name];
                  v435 = *__error();
                  v436 = __error();
                  v437 = strerror(*v436);
                  v438 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: could not write to file %@: %d (%s)", v434, v295, v435, v437);

                  if (!v438)
                  {
                    v451 = sub_10003E080();
                    if (os_log_type_enabled(v451, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B42C0();
                    }

                    if (qword_100127ED0)
                    {
                      v452 = qword_100127ED0;
                    }

                    else
                    {
                      v452 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v452);
                    v290 = 0;
                    v41 = v547;
                    v54 = v548;
                    goto LABEL_718;
                  }

                  v439 = CFStringGetCStringPtr(v438, 0x8000100u);
                  if (v439)
                  {
                    v440 = v439;
                    v441 = 0;
                  }

                  else
                  {
                    v440 = malloc_type_calloc(0x400uLL, 1uLL, 0x27A76D56uLL);
                    CFStringGetCString(v438, v440, 1024, 0x8000100u);
                    v441 = v440;
                  }

                  v54 = v548;
                  if (qword_100127ED0)
                  {
                    v454 = qword_100127ED0;
                  }

                  else
                  {
                    v454 = __stderrp;
                  }

                  fprintf(v454, "%s\n", v440);
                  if (v441)
                  {
                    free(v441);
                  }

                  CFRelease(v438);
                  goto LABEL_716;
                }

                v30 = v550;
                v246 = v541;
                if ((v411 & 0x80000000) == 0)
                {
                  if (byte_100127EC8)
                  {
                    v422 = *__error();
                    v423 = sub_10003E080();
                    if (os_log_type_enabled(v423, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B4620();
                    }

                    *__error() = v422;
                    v246 = v541;
                  }

                  v290 = 0;
                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_721;
                  }

                  v544 = *__error();
                  v424 = sub_10003E020([v28 targetProcessId]);
                  v425 = [v28 targetProcessId];
                  v426 = v295;
                  v427 = *__error();
                  v428 = __error();
                  v429 = strerror(*v428);
                  v538 = v427;
                  v295 = v426;
                  v430 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: could not write to file %@: %d (%s)", v424, v425, v426, v538, v429);
                  if (v430)
                  {
                    v318 = v430;
                    v347 = CFStringGetCStringPtr(v430, 0x8000100u);
                    if (v347)
                    {
                      goto LABEL_660;
                    }

                    v348 = 665283926;
                    goto LABEL_700;
                  }

                  v400 = sub_10003E080();
                  if (os_log_type_enabled(v400, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B46CC();
                  }

                  goto LABEL_689;
                }

                if (byte_100127EC8)
                {
                  v442 = *__error();
                  v443 = sub_10003E080();
                  if (os_log_type_enabled(v443, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B44F0();
                  }

                  *__error() = v442;
                  v246 = v541;
                }

                v290 = 0;
                if (byte_100127EC9 != 1 || dword_100127558 > 3)
                {
                  goto LABEL_721;
                }

                v300 = *__error();
                v444 = *__error();
                v445 = __error();
                v446 = strerror(*v445);
                v447 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"could not write to file %@: %d (%s)", v295, v444, v446);
                if (v447)
                {
                  v318 = v447;
                  v385 = CFStringGetCStringPtr(v447, 0x8000100u);
                  if (v385)
                  {
                    goto LABEL_678;
                  }

                  v386 = 665283926;
                  goto LABEL_736;
                }

                v407 = sub_10003E080();
                if (os_log_type_enabled(v407, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B4588();
                }

                goto LABEL_730;
              }

              if (byte_100127EC8)
              {
                v371 = *__error();
                v372 = sub_10003E080();
                if (os_log_type_enabled(v372, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B3C98();
                }

                *__error() = v371;
              }

              if (byte_100127EC9 != 1 || dword_100127558 > 3)
              {
                goto LABEL_640;
              }

              v545 = *__error();
              v373 = [v28 targetProcess];
              v374 = [v373 name];
              v375 = *__error();
              v376 = __error();
              v377 = strerror(*v376);
              v334 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: could not fdopen log file %@: %d (%s)", v374, v295, v375, v377);

              if (!v334)
              {
                v405 = sub_10003E080();
                if (os_log_type_enabled(v405, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B3D50();
                }

                if (qword_100127ED0)
                {
                  v406 = qword_100127ED0;
                }

                else
                {
                  v406 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v406);
                v54 = v548;
                goto LABEL_638;
              }

              v378 = CFStringGetCStringPtr(v334, 0x8000100u);
              if (v378)
              {
                v336 = v378;
                v337 = 0;
              }

              else
              {
                v336 = malloc_type_calloc(0x400uLL, 1uLL, 0xA55A59C7uLL);
                CFStringGetCString(v334, v336, 1024, 0x8000100u);
                v337 = v336;
              }

              v54 = v548;
LABEL_632:
              if (qword_100127ED0)
              {
                v408 = qword_100127ED0;
              }

              else
              {
                v408 = __stderrp;
              }

              fprintf(v408, "%s\n", v336);
              if (v337)
              {
                free(v337);
              }

              CFRelease(v334);
LABEL_638:
              v41 = v547;
              goto LABEL_639;
            }

            if ((v324 & 0x80000000) != 0)
            {
              if (byte_100127EC8)
              {
                v389 = *__error();
                v390 = sub_10003E080();
                if (os_log_type_enabled(v390, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B3F80();
                }

                *__error() = v389;
              }

              if (byte_100127EC9 != 1 || dword_100127558 > 3)
              {
                goto LABEL_640;
              }

              v545 = *__error();
              v391 = *__error();
              v392 = __error();
              v393 = strerror(*v392);
              v394 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"could not fdopen log file %@: %d (%s)", v295, v391, v393);
              if (!v394)
              {
                v455 = sub_10003E080();
                if (os_log_type_enabled(v455, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B4018();
                }

                if (qword_100127ED0)
                {
                  v456 = qword_100127ED0;
                }

                else
                {
                  v456 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v456);
                goto LABEL_639;
              }

              v334 = v394;
              v395 = CFStringGetCStringPtr(v394, 0x8000100u);
              if (v395)
              {
                v336 = v395;
                v337 = 0;
                goto LABEL_632;
              }
            }

            else
            {
              if (byte_100127EC8)
              {
                v357 = *__error();
                v358 = sub_10003E080();
                if (os_log_type_enabled(v358, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B40B0();
                }

                *__error() = v357;
              }

              if (byte_100127EC9 != 1 || dword_100127558 > 3)
              {
                goto LABEL_640;
              }

              v545 = *__error();
              v359 = sub_10003E020([v28 targetProcessId]);
              v360 = [v28 targetProcessId];
              v361 = v295;
              v362 = *__error();
              v363 = __error();
              v364 = strerror(*v363);
              v536 = v362;
              v295 = v361;
              v365 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: could not fdopen log file %@: %d (%s)", v359, v360, v361, v536, v364);
              if (!v365)
              {
                v403 = sub_10003E080();
                if (os_log_type_enabled(v403, OS_LOG_TYPE_FAULT))
                {
                  sub_1000B415C();
                }

                if (qword_100127ED0)
                {
                  v404 = qword_100127ED0;
                }

                else
                {
                  v404 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v404);
                goto LABEL_620;
              }

              v334 = v365;
              v366 = CFStringGetCStringPtr(v365, 0x8000100u);
              if (v366)
              {
                v336 = v366;
                v337 = 0;
                goto LABEL_632;
              }
            }

            v336 = malloc_type_calloc(0x400uLL, 1uLL, 0xA55A59C7uLL);
            CFStringGetCString(v334, v336, 1024, 0x8000100u);
            v337 = v336;
            goto LABEL_632;
          }

          v264 = v30;
          v265 = v42;
          v266 = *__error();
          v267 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No file to append");
          if (v267)
          {
            v268 = v267;
            v269 = CFStringGetCStringPtr(v267, 0x8000100u);
            if (v269)
            {
              v270 = v269;
              v271 = 0;
            }

            else
            {
              v270 = malloc_type_calloc(0x400uLL, 1uLL, 0x359AC69FuLL);
              CFStringGetCString(v268, v270, 1024, 0x8000100u);
              v271 = v270;
            }

            if (qword_100127ED0)
            {
              v282 = qword_100127ED0;
            }

            else
            {
              v282 = __stderrp;
            }

            fprintf(v282, "%s\n", v270);
            if (v271)
            {
              free(v271);
            }

            CFRelease(v268);
            v41 = v547;
          }

          else
          {
            v280 = sub_10003E080();
            if (os_log_type_enabled(v280, OS_LOG_TYPE_FAULT))
            {
              sub_1000B367C();
            }

            if (qword_100127ED0)
            {
              v281 = qword_100127ED0;
            }

            else
            {
              v281 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v281);
          }

          v246 = 0;
          *__error() = v266;
          v42 = v265;
          v30 = v264;
          v54 = v548;
          v32 = v546;
LABEL_448:
          v122 = v549;
          goto LABEL_449;
        }

        v552 = 0;
        v246 = [[NSData alloc] initWithContentsOfFile:v32 options:1 error:&v552];
        v247 = v552;
        v248 = v247;
        v54 = v548;
        if (v246)
        {
          if (byte_100127EC8)
          {
            v539 = v247;
            v249 = v30;
            v250 = v42;
            v251 = v246;
            v252 = *__error();
            v253 = sub_10003E080();
            if (os_log_type_enabled(v253, OS_LOG_TYPE_DEBUG))
            {
              sub_1000B3400();
            }

            *__error() = v252;
            v41 = v547;
            v246 = v251;
            v42 = v250;
            v30 = v249;
            v54 = v548;
            v248 = v539;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 0)
          {
            goto LABEL_447;
          }

          v540 = v246;
          v254 = v30;
          v255 = v32;
          v256 = v42;
          v257 = *__error();
          v258 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Appending data file %@", v255);
          if (!v258)
          {
            v278 = sub_10003E080();
            if (os_log_type_enabled(v278, OS_LOG_TYPE_FAULT))
            {
              sub_1000B3470();
            }

            if (qword_100127ED0)
            {
              v279 = qword_100127ED0;
            }

            else
            {
              v279 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v279);
            goto LABEL_446;
          }

          v259 = v258;
          v260 = CFStringGetCStringPtr(v258, 0x8000100u);
          if (!v260)
          {
            v261 = 2392982575;
LABEL_438:
            v276 = malloc_type_calloc(0x400uLL, 1uLL, v261);
            CFStringGetCString(v259, v276, 1024, 0x8000100u);
            v277 = v276;
            goto LABEL_439;
          }
        }

        else
        {
          if (byte_100127EC8)
          {
            v272 = *__error();
            v273 = sub_10003E080();
            if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
            {
              sub_1000B34E0(v32, v248);
            }

            *__error() = v272;
            v41 = v547;
            v246 = 0;
            v54 = v548;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 3)
          {
            goto LABEL_447;
          }

          v540 = v246;
          v254 = v30;
          v274 = v32;
          v256 = v42;
          v257 = *__error();
          v275 = [v248 localizedDescription];
          v259 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"reading in data file %@ failed: %@", v274, v275);

          if (!v259)
          {
            v283 = sub_10003E080();
            if (os_log_type_enabled(v283, OS_LOG_TYPE_FAULT))
            {
              sub_1000B3590(v546, v248);
            }

            if (qword_100127ED0)
            {
              v284 = qword_100127ED0;
            }

            else
            {
              v284 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v284);
            goto LABEL_445;
          }

          v260 = CFStringGetCStringPtr(v259, 0x8000100u);
          if (!v260)
          {
            v261 = 1329572444;
            goto LABEL_438;
          }
        }

        v276 = v260;
        v277 = 0;
LABEL_439:
        if (qword_100127ED0)
        {
          v285 = qword_100127ED0;
        }

        else
        {
          v285 = __stderrp;
        }

        fprintf(v285, "%s\n", v276);
        if (v277)
        {
          free(v277);
        }

        CFRelease(v259);
LABEL_445:
        v30 = v254;
        v41 = v547;
LABEL_446:
        *__error() = v257;
        v42 = v256;
        v54 = v548;
        v32 = v546;
        v246 = v540;
LABEL_447:

        goto LABEL_448;
      }

      v32 = v546;
      v41 = v547;
      v122 = v549;
      if ((v90 & 0x80000000) != 0)
      {
        if (byte_100127EC8)
        {
          v212 = *__error();
          v213 = sub_10003E080();
          if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
          {
            sub_1000B2D64();
          }

          *__error() = v212;
          v122 = v549;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          goto LABEL_382;
        }

        v146 = *__error();
        v166 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"MetricKit unavailable, not providing cpu usage report");
        if (!v166)
        {
          v167 = sub_10003E080();
          if (os_log_type_enabled(v167, OS_LOG_TYPE_FAULT))
          {
            sub_1000B2DA0();
          }

          goto LABEL_574;
        }
      }

      else
      {
        if (byte_100127EC8)
        {
          v163 = *__error();
          v164 = sub_10003E080();
          if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
          {
            sub_1000B2DDC();
          }

          *__error() = v163;
          v122 = v549;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          goto LABEL_382;
        }

        v146 = *__error();
        v165 = sub_10003E020([v28 targetProcessId]);
        v166 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: MetricKit unavailable, not providing cpu usage report", v165, [v28 targetProcessId]);
        if (!v166)
        {
          v167 = sub_10003E080();
          if (os_log_type_enabled(v167, OS_LOG_TYPE_FAULT))
          {
            sub_1000B2E70();
          }

LABEL_574:

          if (qword_100127ED0)
          {
            v388 = qword_100127ED0;
          }

          else
          {
            v388 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v388);
LABEL_578:
          *__error() = v146;
          goto LABEL_381;
        }
      }

      v149 = v166;
      v150 = v30;
      v210 = CFStringGetCStringPtr(v166, 0x8000100u);
      if (!v210)
      {
        v211 = 326608200;
        goto LABEL_540;
      }

      goto LABEL_308;
    }

    v102 = objc_opt_class();
    v103 = [v28 targetProcess];
    v104 = [v103 name];

    v105 = [v28 targetProcessId];
    if (!v102)
    {
      if (v104)
      {
        v32 = v546;
        v41 = v547;
        v122 = v549;
        if ((v105 & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v215 = *__error();
            v216 = sub_10003E080();
            if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
            {
              sub_1000B2478(v28);
            }

            *__error() = v215;
            v122 = v549;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 3)
          {
            goto LABEL_382;
          }

          v123 = v30;
          v124 = *__error();
          v217 = [v28 targetProcess];
          v218 = [v217 name];
          v127 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: MetricKit unavailable, not providing disk writes report", v218);

          if (!v127)
          {
            v128 = sub_10003E080();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
            {
              sub_1000B251C(v28);
            }

            goto LABEL_375;
          }
        }

        else
        {
          if (byte_100127EC8)
          {
            v140 = *__error();
            v141 = sub_10003E080();
            if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
            {
              sub_1000B25C0();
            }

            *__error() = v140;
            v122 = v549;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 3)
          {
            goto LABEL_382;
          }

          v123 = v30;
          v124 = *__error();
          v142 = [v28 targetProcess];
          v143 = [v142 name];
          v127 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: MetricKit unavailable, not providing disk writes report", v143, [v28 targetProcessId]);

          if (!v127)
          {
            v128 = sub_10003E080();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
            {
              sub_1000B2668();
            }

            goto LABEL_375;
          }
        }

        CStringPtr = CFStringGetCStringPtr(v127, 0x8000100u);
        if (!CStringPtr)
        {
          v180 = 626516253;
          goto LABEL_349;
        }

        goto LABEL_267;
      }

      v32 = v546;
      v41 = v547;
      v122 = v549;
      if ((v105 & 0x80000000) != 0)
      {
        if (byte_100127EC8)
        {
          v234 = *__error();
          v235 = sub_10003E080();
          if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
          {
            sub_1000B2710();
          }

          *__error() = v234;
          v122 = v549;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          goto LABEL_382;
        }

        v146 = *__error();
        v206 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"MetricKit unavailable, not providing disk writes report");
        if (!v206)
        {
          v167 = sub_10003E080();
          if (os_log_type_enabled(v167, OS_LOG_TYPE_FAULT))
          {
            sub_1000B274C();
          }

          goto LABEL_574;
        }
      }

      else
      {
        if (byte_100127EC8)
        {
          v203 = *__error();
          v204 = sub_10003E080();
          if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
          {
            sub_1000B2788();
          }

          *__error() = v203;
          v122 = v549;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          goto LABEL_382;
        }

        v146 = *__error();
        v205 = sub_10003E020([v28 targetProcessId]);
        v206 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: MetricKit unavailable, not providing disk writes report", v205, [v28 targetProcessId]);
        if (!v206)
        {
          v167 = sub_10003E080();
          if (os_log_type_enabled(v167, OS_LOG_TYPE_FAULT))
          {
            sub_1000B281C();
          }

          goto LABEL_574;
        }
      }

      v149 = v206;
      v150 = v30;
      v210 = CFStringGetCStringPtr(v206, 0x8000100u);
      if (!v210)
      {
        v211 = 626516253;
        goto LABEL_540;
      }

      goto LABEL_308;
    }

    if (v104)
    {
      v41 = v547;
      if ((v105 & 0x80000000) != 0)
      {
        if (byte_100127EC8)
        {
          v194 = *__error();
          v195 = sub_10003E080();
          if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
          {
            v196 = [v28 targetProcess];
            v197 = [v196 name];
            *buf = 138543362;
            v558 = v197;
            _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_INFO, "%{public}@: Providing disk writes report to MetricKit", buf, 0xCu);

            v41 = v547;
          }

          *__error() = v194;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 1)
        {
          goto LABEL_365;
        }

        v111 = v30;
        v112 = *__error();
        v198 = [v28 targetProcess];
        v199 = [v198 name];
        v115 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Providing disk writes report to MetricKit", v199);

        if (!v115)
        {
          v116 = sub_10003E080();
          if (os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
          {
            sub_1000B225C(v28);
          }

          goto LABEL_343;
        }
      }

      else
      {
        if (byte_100127EC8)
        {
          v106 = *__error();
          v107 = sub_10003E080();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
          {
            v108 = [v28 targetProcess];
            v109 = [v108 name];
            v110 = [v28 targetProcessId];
            *buf = 138543618;
            v558 = v109;
            v559 = 1024;
            v560 = v110;
            _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "%{public}@ [%d]: Providing disk writes report to MetricKit", buf, 0x12u);

            v41 = v547;
          }

          *__error() = v106;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 1)
        {
          goto LABEL_365;
        }

        v111 = v30;
        v112 = *__error();
        v113 = [v28 targetProcess];
        v114 = [v113 name];
        v115 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Providing disk writes report to MetricKit", v114, [v28 targetProcessId]);

        if (!v115)
        {
          v116 = sub_10003E080();
          if (os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
          {
            sub_1000B2300();
          }

LABEL_343:

          if (qword_100127ED0)
          {
            v241 = qword_100127ED0;
          }

          else
          {
            v241 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v241);
LABEL_347:
          v30 = v111;
LABEL_363:
          v41 = v547;
LABEL_364:
          *__error() = v112;
LABEL_365:
          v232 = v41;
          v233 = 1;
          goto LABEL_366;
        }
      }

      v200 = CFStringGetCStringPtr(v115, 0x8000100u);
      if (v200)
      {
        v201 = v200;
        v202 = 0;
      }

      else
      {
        v201 = malloc_type_calloc(0x400uLL, 1uLL, 0x83422993uLL);
        CFStringGetCString(v115, v201, 1024, 0x8000100u);
        v202 = v201;
      }

      if (qword_100127ED0)
      {
        v237 = qword_100127ED0;
      }

      else
      {
        v237 = __stderrp;
      }

      fprintf(v237, "%s\n", v201);
      if (v202)
      {
        free(v202);
      }

      CFRelease(v115);
      goto LABEL_347;
    }

    v41 = v547;
    if ((v105 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v221 = *__error();
        v222 = sub_10003E080();
        if (os_log_type_enabled(v222, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_INFO, "Providing disk writes report to MetricKit", buf, 2u);
        }

        *__error() = v221;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_365;
      }

      v112 = *__error();
      v173 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Providing disk writes report to MetricKit");
      if (!v173)
      {
        v174 = sub_10003E080();
        if (os_log_type_enabled(v174, OS_LOG_TYPE_FAULT))
        {
          sub_1000B23A8();
        }

        goto LABEL_535;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v168 = *__error();
        v169 = sub_10003E080();
        if (os_log_type_enabled(v169, OS_LOG_TYPE_INFO))
        {
          v170 = sub_10003E020([v28 targetProcessId]);
          v171 = [v28 targetProcessId];
          *buf = 136446466;
          v558 = v170;
          v559 = 1024;
          v560 = v171;
          _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_INFO, "%{public}s [%d]: Providing disk writes report to MetricKit", buf, 0x12u);
        }

        *__error() = v168;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 1)
      {
        goto LABEL_365;
      }

      v112 = *__error();
      v172 = sub_10003E020([v28 targetProcessId]);
      v173 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Providing disk writes report to MetricKit", v172, [v28 targetProcessId]);
      if (!v173)
      {
        v174 = sub_10003E080();
        if (os_log_type_enabled(v174, OS_LOG_TYPE_FAULT))
        {
          sub_1000B23E4();
        }

LABEL_535:

        if (qword_100127ED0)
        {
          v369 = qword_100127ED0;
        }

        else
        {
          v369 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v369);
        goto LABEL_364;
      }
    }

    v223 = v173;
    v224 = v30;
    v225 = CFStringGetCStringPtr(v173, 0x8000100u);
    if (v225)
    {
      v226 = v225;
      v227 = 0;
    }

    else
    {
      v226 = malloc_type_calloc(0x400uLL, 1uLL, 0x83422993uLL);
      CFStringGetCString(v223, v226, 1024, 0x8000100u);
      v227 = v226;
    }

    if (qword_100127ED0)
    {
      v243 = qword_100127ED0;
    }

    else
    {
      v243 = __stderrp;
    }

    fprintf(v243, "%s\n", v226);
    if (v227)
    {
      free(v227);
    }

    CFRelease(v223);
    v30 = v224;
    goto LABEL_363;
  }

  v43 = [v28 endTime];
  if (v43)
  {
    v44 = v43;
    [v43 machContTimeSeconds];
    if (v45 != 0.0)
    {
      [v44 machContTimeSeconds];
      if (v46 > a13)
      {
        v47 = v30;
        [v44 machContTimeSeconds];
        v49 = v48 - a13;
        v50 = 0.0;
LABEL_37:
        v53 = 0.0;
LABEL_38:
        v66 = [SATimestamp timestampWithMachAbsTime:0 machAbsTimeSec:0 machContTime:v50 machContTimeSec:v49 wallTime:v53];
        if (v66)
        {
          v67 = [v28 indexOfFirstSampleOnOrAfterTimestamp:v66];
          if (v67 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v70 = v67;
            v69 = [v28 sampleTimestamps];
            v71 = [v69 objectAtIndexedSubscript:v70];
            [v66 guessMissingTimesBasedOnTimestamp:v71];

LABEL_60:
            goto LABEL_61;
          }

          v68 = [v28 endTime];
          if (v68)
          {
            v69 = v68;

LABEL_59:
            [v66 guessMissingTimesBasedOnTimestamp:v69];
            goto LABEL_60;
          }

          v69 = [v28 startTime];

          if (v69)
          {
            goto LABEL_59;
          }
        }

LABEL_61:
        [v41 filterToTimestampRangeStart:v66 end:0];

        v30 = v47;
        v32 = v546;
        goto LABEL_62;
      }
    }

    [v44 wallTime];
    if (v51 != 0.0)
    {
      v47 = v30;
      [v44 wallTime];
      v53 = v52 - a13;
      v50 = 0.0;
      v49 = 0.0;
      goto LABEL_38;
    }

    [v44 machAbsTimeSeconds];
    if (v63 != 0.0)
    {
      [v44 machAbsTimeSeconds];
      if (v64 > a13)
      {
        v47 = v30;
        [v44 machAbsTimeSeconds];
        v50 = v65 - a13;
        v49 = 0.0;
        goto LABEL_37;
      }
    }

    v54 = v548;
    if (byte_100127EC8 == 1)
    {
      v72 = *__error();
      v73 = sub_10003E080();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        sub_1000B2114(v44);
      }

      *__error() = v72;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v74 = *__error();
      v75 = [v44 debugDescription];
      v76 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"-last provided, but unable to calculate %.0f seconds earlier than %@", *&a13, v75);

      if (v76)
      {
        v77 = CFStringGetCStringPtr(v76, 0x8000100u);
        if (v77)
        {
          v78 = v77;
          v79 = 0;
        }

        else
        {
          v78 = malloc_type_calloc(0x400uLL, 1uLL, 0x60E4062CuLL);
          CFStringGetCString(v76, v78, 1024, 0x8000100u);
          v79 = v78;
        }

        if (qword_100127ED0)
        {
          v236 = qword_100127ED0;
        }

        else
        {
          v236 = __stderrp;
        }

        fprintf(v236, "%s\n", v78);
        if (v79)
        {
          free(v79);
        }

        CFRelease(v76);
        v54 = v548;
      }

      else
      {
        v228 = sub_10003E080();
        if (os_log_type_enabled(v228, OS_LOG_TYPE_FAULT))
        {
          sub_1000B21B8(v44);
        }

        if (qword_100127ED0)
        {
          v229 = qword_100127ED0;
        }

        else
        {
          v229 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v229);
      }

      v41 = v547;
      *__error() = v74;
    }

    v193 = 0x800000;
    v32 = v546;
  }

  else
  {
    v54 = v548;
    if (byte_100127EC8 == 1)
    {
      v55 = *__error();
      v56 = sub_10003E080();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        sub_1000B4CE8(v28);
      }

      *__error() = v55;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v57 = *__error();
      v58 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"-last provided, but unable to get data end time (%lu samples)", [v28 numSamples]);
      if (v58)
      {
        v59 = v58;
        v60 = CFStringGetCStringPtr(v58, 0x8000100u);
        if (v60)
        {
          v61 = v60;
          v62 = 0;
        }

        else
        {
          v61 = malloc_type_calloc(0x400uLL, 1uLL, 0x14A863D6uLL);
          CFStringGetCString(v59, v61, 1024, 0x8000100u);
          v62 = v61;
        }

        if (qword_100127ED0)
        {
          v192 = qword_100127ED0;
        }

        else
        {
          v192 = __stderrp;
        }

        fprintf(v192, "%s\n", v61);
        if (v62)
        {
          free(v62);
        }

        CFRelease(v59);
        v54 = v548;
        v41 = v547;
      }

      else
      {
        v80 = sub_10003E080();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
        {
          sub_1000B4D68(v28);
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

      *__error() = v57;
    }

    v193 = 0x800000;
  }

LABEL_458:

  return v193;
}

void sub_100067758(uint64_t a1)
{
  v1 = *(*(a1 + 72) + 8);
  if (*(v1 + 24) == 2)
  {
    if (qword_100127DC0 != -1)
    {
      sub_1000B5770();
    }
  }

  else
  {
    *(v1 + 24) = 1;
    v3 = *(a1 + 32);
    if (v3)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v3);
      length = xpc_data_get_length(*(a1 + 32));
      sub_10003ABA8(*(a1 + 40), 0, bytes_ptr, length, *(a1 + 112), *(a1 + 116), *(a1 + 48), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 56));
    }

    if (*(a1 + 124) == 1)
    {
      *(*(*(a1 + 80) + 8) + 24) = *(a1 + 120);
      v6 = *(a1 + 64);

      dispatch_semaphore_signal(v6);
    }
  }
}

void sub_100067834(id a1)
{
  if (byte_100127EC8 == 1)
  {
    v1 = *__error();
    v2 = sub_10003E080();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B5784();
    }

    *__error() = v1;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v4 = *__error();
    v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Already timed out, not parsing system stats microstackshots");
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
        v8 = malloc_type_calloc(0x400uLL, 1uLL, 0x90A71F3FuLL);
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
        sub_1000B57C0();
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

int *sub_1000679F8(int *result)
{
  v1 = *(*(result + 4) + 8);
  if (*(v1 + 24))
  {
    *(v1 + 24) = 0;
    if (byte_100127EC8 == 1)
    {
      v2 = *__error();
      v3 = sub_10003E080();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v20 = 30;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timed out system stats microstackshots after %d seconds, but it's parsing, so waiting a bit longer", buf, 8u);
      }

      result = __error();
      *result = v2;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 2)
    {
      return result;
    }

    v5 = *__error();
    v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Timed out system stats microstackshots after %d seconds, but it's parsing, so waiting a bit longer", 30);
    if (v6)
    {
      v7 = v6;
      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      if (!CStringPtr)
      {
        v9 = 160436883;
LABEL_35:
        v14 = malloc_type_calloc(0x400uLL, 1uLL, v9);
        CFStringGetCString(v7, v14, 1024, 0x8000100u);
        v15 = v14;
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    v16 = sub_10003E080();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1000B57FC();
    }

    goto LABEL_30;
  }

  *(v1 + 24) = 2;
  *(*(*(result + 5) + 8) + 24) = 1;
  if (byte_100127EC8 == 1)
  {
    v10 = *__error();
    v11 = sub_10003E080();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000B5870();
    }

    result = __error();
    *result = v10;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v5 = *__error();
    v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Timed out waiting for system stats microstackshots after %d seconds", 30);
    if (v13)
    {
      v7 = v13;
      CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
      if (!CStringPtr)
      {
        v9 = 3157969297;
        goto LABEL_35;
      }

LABEL_25:
      v14 = CStringPtr;
      v15 = 0;
LABEL_36:
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
LABEL_42:
      result = __error();
      *result = v5;
      return result;
    }

    v16 = sub_10003E080();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1000B58E4();
    }

LABEL_30:

    if (qword_100127ED0)
    {
      v17 = qword_100127ED0;
    }

    else
    {
      v17 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v17);
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_100067D34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100127DD0 != -1)
  {
    sub_1000B5958();
  }

  if (byte_100127DC8 == 1)
  {
    v4 = sub_10003E080();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      [v3 wallTime];
      sub_100033CB8(v131 + 6, 0x32uLL, 1, v6);
    }
  }

  v7 = *(a1 + 40);
  if (v7 == 0.0 || ([v3 wallTime], v7 >= v8))
  {
    v20 = *(a1 + 48);
    if (v20 == 0.0 || ([v3 wallTime], v20 <= v21))
    {
      if (!*(a1 + 64) || ([v3 microSnapshotFlags] & *(a1 + 64)) != 0)
      {
        v31 = *(a1 + 68);
        if (v31 < 0 || v31 == [v3 processID])
        {
          v32 = *(a1 + 56);
          if (!v32 || v32 == [v3 threadID])
          {
            if (!*(a1 + 32))
            {
              goto LABEL_43;
            }

            v33 = [v3 processMainBinaryUUID];
            if (v33)
            {
              v34 = v33;
              v35 = *(a1 + 32);
              v36 = [v3 processMainBinaryUUID];
              LOBYTE(v35) = [v35 containsObject:v36];

              if (v35)
              {
LABEL_43:
                if (qword_100127DD0 != -1)
                {
                  sub_1000B596C();
                }

                if (byte_100127DC8 == 1)
                {
                  if (byte_100127EC8 == 1)
                  {
                    v37 = *__error();
                    v38 = sub_10003E080();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                    {
                      sub_1000B5B00(v3, v131 + 6, v38, v39, v40, v41, v42, v43, v123, v124, v125, v126, v127, v128, *buf, *&buf[8], *&buf[16], *&buf[24], *&buf[32], v130, v131[0], v131[1], v131[2], v131[3]);
                    }

                    *__error() = v37;
                  }

                  v11 = 0;
                  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
                  {
                    v12 = *__error();
                    v44 = [v3 processName];
                    v45 = [v3 processID];
                    v46 = [v3 threadID];
                    v47 = [v3 processMainBinaryUUID];
                    v48 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Including microstackshot for %@ [%d] thread 0x%llx at %s (%@)", v44, v45, v46, v131 + 6, v47);

                    if (v48)
                    {
                      CStringPtr = CFStringGetCStringPtr(v48, 0x8000100u);
                      if (CStringPtr)
                      {
                        v50 = CStringPtr;
                        v51 = 0;
                      }

                      else
                      {
                        v50 = malloc_type_calloc(0x400uLL, 1uLL, 0x28DA767CuLL);
                        CFStringGetCString(v48, v50, 1024, 0x8000100u);
                        v51 = v50;
                      }

                      if (qword_100127ED0)
                      {
                        v95 = qword_100127ED0;
                      }

                      else
                      {
                        v95 = __stderrp;
                      }

                      fprintf(v95, "%s\n", v50);
                      if (v51)
                      {
                        free(v51);
                      }

                      CFRelease(v48);
                    }

                    else
                    {
                      v88 = sub_10003E080();
                      if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
                      {
                        sub_1000B5BC8();
                      }

                      if (qword_100127ED0)
                      {
                        v89 = qword_100127ED0;
                      }

                      else
                      {
                        v89 = __stderrp;
                      }

                      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v89);
                    }

                    v11 = 0;
                    goto LABEL_160;
                  }
                }

                else
                {
                  v11 = 0;
                }

                goto LABEL_161;
              }
            }

            if (qword_100127DD0 != -1)
            {
              sub_1000B596C();
            }

            if (byte_100127DC8 == 1)
            {
              if (byte_100127EC8 == 1)
              {
                v63 = *__error();
                v64 = sub_10003E080();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                {
                  sub_1000B5994();
                }

                *__error() = v63;
              }

              v11 = 1;
              if (byte_100127EC9 != 1 || dword_100127558 > 0)
              {
                goto LABEL_161;
              }

              v12 = *__error();
              v65 = [v3 processName];
              v66 = [v3 processID];
              v67 = [v3 processMainBinaryUUID];
              v68 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not including microstackshot for %@ [%d] at %s due to being wrong uuid (%@)", v65, v66, v131 + 6, v67);

              if (v68)
              {
                v69 = CFStringGetCStringPtr(v68, 0x8000100u);
                if (v69)
                {
                  v70 = v69;
                  v71 = 0;
                }

                else
                {
                  v70 = malloc_type_calloc(0x400uLL, 1uLL, 0x2E4918B1uLL);
                  CFStringGetCString(v68, v70, 1024, 0x8000100u);
                  v71 = v70;
                }

                if (qword_100127ED0)
                {
                  v103 = qword_100127ED0;
                }

                else
                {
                  v103 = __stderrp;
                }

                fprintf(v103, "%s\n", v70);
                if (v71)
                {
                  free(v71);
                }

                v101 = v68;
                goto LABEL_159;
              }

              v94 = sub_10003E080();
              if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
              {
                sub_1000B5A4C();
              }

LABEL_136:
              if (qword_100127ED0)
              {
                v93 = qword_100127ED0;
              }

              else
              {
                v93 = __stderrp;
              }

              v11 = 1;
              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v93);
              goto LABEL_160;
            }

            goto LABEL_104;
          }

          if (qword_100127DD0 != -1)
          {
            sub_1000B596C();
          }

          if (byte_100127DC8 != 1)
          {
            goto LABEL_104;
          }

          if (byte_100127EC8 == 1)
          {
            v58 = *__error();
            v59 = sub_10003E080();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              v119 = [v3 processName];
              v120 = [v3 processID];
              v121 = [v3 threadID];
              v122 = *(a1 + 56);
              *buf = 138413314;
              *&buf[4] = v119;
              *&buf[12] = 1024;
              *&buf[14] = v120;
              *&buf[18] = 2048;
              *&buf[20] = v121;
              *&buf[28] = 2080;
              *&buf[30] = v131 + 6;
              *&buf[38] = 2048;
              v130 = v122;
              _os_log_debug_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "Not including microstackshot for %@ [%d] thread 0x%llx at %s due to being wrong thread (requested 0x%llx)", buf, 0x30u);
            }

            *__error() = v58;
          }

          v11 = 1;
          if (byte_100127EC9 != 1 || dword_100127558 > 0)
          {
            goto LABEL_161;
          }

          v12 = *__error();
          v60 = [v3 processName];
          v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not including microstackshot for %@ [%d] thread 0x%llx at %s due to being wrong thread (requested 0x%llx)", v60, [v3 processID], objc_msgSend(v3, "threadID"), v131 + 6, *(a1 + 56));

          if (v28)
          {
            v29 = CFStringGetCStringPtr(v28, 0x8000100u);
            if (!v29)
            {
              v30 = 2673781532;
              goto LABEL_152;
            }

            goto LABEL_91;
          }

          v74 = sub_10003E080();
          if (!os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_135;
          }

          v75 = [v3 processName];
          v90 = [v3 processID];
          v91 = [v3 threadID];
          v92 = *(a1 + 56);
          *buf = 138413314;
          *&buf[4] = v75;
          *&buf[12] = 1024;
          *&buf[14] = v90;
          *&buf[18] = 2048;
          *&buf[20] = v91;
          *&buf[28] = 2080;
          *&buf[30] = v131 + 6;
          *&buf[38] = 2048;
          v130 = v92;
          v79 = "Unable to format: Not including microstackshot for %@ [%d] thread 0x%llx at %s due to being wrong thread (requested 0x%llx)";
          v80 = v74;
          v81 = 48;
        }

        else
        {
          if (qword_100127DD0 != -1)
          {
            sub_1000B596C();
          }

          if (byte_100127DC8 != 1)
          {
            goto LABEL_104;
          }

          if (byte_100127EC8 == 1)
          {
            v52 = *__error();
            v53 = sub_10003E080();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              v112 = [v3 processName];
              v113 = [v3 processID];
              v114 = *(a1 + 68);
              *buf = 138413058;
              *&buf[4] = v112;
              *&buf[12] = 1024;
              *&buf[14] = v113;
              *&buf[18] = 2080;
              *&buf[20] = v131 + 6;
              *&buf[28] = 1024;
              *&buf[30] = v114;
              _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Not including microstackshot for %@ [%d] at %s due to being wrong pid (requested %d)", buf, 0x22u);
            }

            *__error() = v52;
          }

          v11 = 1;
          if (byte_100127EC9 != 1 || dword_100127558 > 0)
          {
            goto LABEL_161;
          }

          v12 = *__error();
          v54 = [v3 processName];
          v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not including microstackshot for %@ [%d] at %s due to being wrong pid (requested %d)", v54, [v3 processID], v131 + 6, *(a1 + 68));

          if (v28)
          {
            v29 = CFStringGetCStringPtr(v28, 0x8000100u);
            if (!v29)
            {
              v30 = 4232788963;
              goto LABEL_152;
            }

LABEL_91:
            v61 = v29;
            v62 = 0;
LABEL_153:
            if (qword_100127ED0)
            {
              v100 = qword_100127ED0;
            }

            else
            {
              v100 = __stderrp;
            }

            fprintf(v100, "%s\n", v61);
            if (v62)
            {
              free(v62);
            }

            v101 = v28;
LABEL_159:
            CFRelease(v101);
            v11 = 1;
LABEL_160:
            *__error() = v12;
            goto LABEL_161;
          }

          v74 = sub_10003E080();
          if (!os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_135;
          }

          v75 = [v3 processName];
          v83 = [v3 processID];
          v84 = *(a1 + 68);
          *buf = 138413058;
          *&buf[4] = v75;
          *&buf[12] = 1024;
          *&buf[14] = v83;
          *&buf[18] = 2080;
          *&buf[20] = v131 + 6;
          *&buf[28] = 1024;
          *&buf[30] = v84;
          v79 = "Unable to format: Not including microstackshot for %@ [%d] at %s due to being wrong pid (requested %d)";
          v80 = v74;
          v81 = 34;
        }

LABEL_134:
        _os_log_fault_impl(&_mh_execute_header, v80, OS_LOG_TYPE_FAULT, v79, buf, v81);

LABEL_135:
        goto LABEL_136;
      }

      if (qword_100127DD0 != -1)
      {
        sub_1000B596C();
      }

      if (byte_100127DC8 == 1)
      {
        if (byte_100127EC8 == 1)
        {
          v55 = *__error();
          v56 = sub_10003E080();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            v115 = [v3 processName];
            v116 = [v3 processID];
            v117 = [v3 microSnapshotFlags];
            v118 = *(a1 + 64);
            *buf = 138413314;
            *&buf[4] = v115;
            *&buf[12] = 1024;
            *&buf[14] = v116;
            *&buf[18] = 2080;
            *&buf[20] = v131 + 6;
            *&buf[28] = 2048;
            *&buf[30] = v117;
            *&buf[38] = 1024;
            LODWORD(v130) = v118;
            _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "Not including microstackshot for %@ [%d] at %s due to being wrong type (0x%llx, requested 0x%x)", buf, 0x2Cu);
          }

          *__error() = v55;
        }

        v11 = 1;
        if (byte_100127EC9 != 1 || dword_100127558 > 0)
        {
          goto LABEL_161;
        }

        v12 = *__error();
        v57 = [v3 processName];
        v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not including microstackshot for %@ [%d] at %s due to being wrong type (0x%llx, requested 0x%x)", v57, [v3 processID], v131 + 6, objc_msgSend(v3, "microSnapshotFlags"), *(a1 + 64));

        if (v28)
        {
          v29 = CFStringGetCStringPtr(v28, 0x8000100u);
          if (!v29)
          {
            v30 = 1219867186;
            goto LABEL_152;
          }

          goto LABEL_91;
        }

        v74 = sub_10003E080();
        if (!os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_135;
        }

        v75 = [v3 processName];
        v85 = [v3 processID];
        v86 = [v3 microSnapshotFlags];
        v87 = *(a1 + 64);
        *buf = 138413314;
        *&buf[4] = v75;
        *&buf[12] = 1024;
        *&buf[14] = v85;
        *&buf[18] = 2080;
        *&buf[20] = v131 + 6;
        *&buf[28] = 2048;
        *&buf[30] = v86;
        *&buf[38] = 1024;
        LODWORD(v130) = v87;
        v79 = "Unable to format: Not including microstackshot for %@ [%d] at %s due to being wrong type (0x%llx, requested 0x%x)";
        v80 = v74;
        v81 = 44;
        goto LABEL_134;
      }
    }

    else
    {
      if (qword_100127DD0 != -1)
      {
        sub_1000B596C();
      }

      if (byte_100127DC8 == 1)
      {
        if (byte_100127EC8 == 1)
        {
          v22 = *__error();
          v23 = sub_10003E080();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v104 = [v3 processName];
            v105 = [v3 processID];
            v106 = *(a1 + 48);
            [v3 wallTime];
            *buf = 138413058;
            *&buf[4] = v104;
            *&buf[12] = 1024;
            *&buf[14] = v105;
            *&buf[18] = 2080;
            *&buf[20] = v131 + 6;
            *&buf[28] = 2048;
            *&buf[30] = v106 - v107;
            _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Not including microstackshot for %@ [%d] at %s due to being too early (%fs)", buf, 0x26u);
          }

          *__error() = v22;
        }

        v11 = 1;
        if (byte_100127EC9 != 1 || dword_100127558 > 0)
        {
          goto LABEL_161;
        }

        v12 = *__error();
        v24 = [v3 processName];
        v25 = [v3 processID];
        v26 = *(a1 + 48);
        [v3 wallTime];
        v28 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not including microstackshot for %@ [%d] at %s due to being too early (%fs)", v24, v25, v131 + 6, v26 - v27);

        if (v28)
        {
          v29 = CFStringGetCStringPtr(v28, 0x8000100u);
          if (!v29)
          {
            v30 = 1142108974;
LABEL_152:
            v61 = malloc_type_calloc(0x400uLL, 1uLL, v30);
            CFStringGetCString(v28, v61, 1024, 0x8000100u);
            v62 = v61;
            goto LABEL_153;
          }

          goto LABEL_91;
        }

        v74 = sub_10003E080();
        if (!os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_135;
        }

        v75 = [v3 processName];
        v76 = [v3 processID];
        v77 = *(a1 + 48);
        [v3 wallTime];
        *buf = 138413058;
        *&buf[4] = v75;
        *&buf[12] = 1024;
        *&buf[14] = v76;
        *&buf[18] = 2080;
        *&buf[20] = v131 + 6;
        *&buf[28] = 2048;
        *&buf[30] = v77 - v78;
        v79 = "Unable to format: Not including microstackshot for %@ [%d] at %s due to being too early (%fs)";
        v80 = v74;
        v81 = 38;
        goto LABEL_134;
      }
    }

LABEL_104:
    v11 = 1;
    goto LABEL_161;
  }

  if (qword_100127DD0 != -1)
  {
    sub_1000B596C();
  }

  if (byte_100127DC8 == 1)
  {
    if (byte_100127EC8 == 1)
    {
      v9 = *__error();
      v10 = sub_10003E080();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v96 = [v3 processName];
        v97 = [v3 processID];
        [v3 wallTime];
        v99 = v98 - *(a1 + 40);
        *buf = 138413058;
        *&buf[4] = v96;
        *&buf[12] = 1024;
        *&buf[14] = v97;
        *&buf[18] = 2080;
        *&buf[20] = v131 + 6;
        *&buf[28] = 2048;
        *&buf[30] = v99;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Not including microstackshot for %@ [%d] at %s due to being too late (%fs)", buf, 0x26u);
      }

      *__error() = v9;
    }

    v11 = 2;
    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v12 = *__error();
      v13 = [v3 processName];
      v14 = [v3 processID];
      [v3 wallTime];
      v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Not including microstackshot for %@ [%d] at %s due to being too late (%fs)", v13, v14, v131 + 6, v15 - *(a1 + 40));

      if (v16)
      {
        v17 = CFStringGetCStringPtr(v16, 0x8000100u);
        if (v17)
        {
          v18 = v17;
          v19 = 0;
        }

        else
        {
          v18 = malloc_type_calloc(0x400uLL, 1uLL, 0xF3106D33uLL);
          CFStringGetCString(v16, v18, 1024, 0x8000100u);
          v19 = v18;
        }

        if (qword_100127ED0)
        {
          v82 = qword_100127ED0;
        }

        else
        {
          v82 = __stderrp;
        }

        fprintf(v82, "%s\n", v18);
        if (v19)
        {
          free(v19);
        }

        CFRelease(v16);
      }

      else
      {
        v72 = sub_10003E080();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
        {
          v108 = [v3 processName];
          v109 = [v3 processID];
          [v3 wallTime];
          v111 = v110 - *(a1 + 40);
          *buf = 138413058;
          *&buf[4] = v108;
          *&buf[12] = 1024;
          *&buf[14] = v109;
          *&buf[18] = 2080;
          *&buf[20] = v131 + 6;
          *&buf[28] = 2048;
          *&buf[30] = v111;
          _os_log_fault_impl(&_mh_execute_header, v72, OS_LOG_TYPE_FAULT, "Unable to format: Not including microstackshot for %@ [%d] at %s due to being too late (%fs)", buf, 0x26u);
        }

        if (qword_100127ED0)
        {
          v73 = qword_100127ED0;
        }

        else
        {
          v73 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v73);
      }

      v11 = 2;
      goto LABEL_160;
    }
  }

  else
  {
    v11 = 2;
  }

LABEL_161:

  return v11;
}

void sub_100068FF0(id a1)
{
  v1 = getenv("SA_LOG_MICROSTACKSHOTS");
  if (v1 && (*v1 != 48 || v1[1]))
  {
    byte_100127DC8 = 1;
  }
}

void sub_100069220(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

uint64_t *sub_100069288@<X0>(uint64_t *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *result;
  v5 = *a2;
  return result;
}

const char *sub_1000692C4(const __CFString *a1)
{

  return CFStringGetCStringPtr(a1, 0x8000100u);
}

uint64_t sub_1000692F8(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2080;
  *(a2 + 10) = result;
  return result;
}

size_t sub_100069310(const void *a1, uint64_t a2, uint64_t a3, FILE *a4)
{

  return fwrite(a1, 0x18uLL, 1uLL, a4);
}

id sub_100069328()
{

  return [v0 targetProcessId];
}

id sub_100069340()
{

  return [v0 targetProcessId];
}

id sub_100069358()
{

  return [v0 targetProcessId];
}

BOOL sub_100069398(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_1000693B0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

_DWORD *sub_1000693E0(int *a1)
{
  v2 = *a1;

  return sub_10003E020(v2);
}

id sub_1000693F8(int a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (v5 && [v5 isAbsolutePath])
  {
    v7 = v6;
LABEL_8:
    v8 = v7;
    goto LABEL_9;
  }

  v8 = 0;
  if ((a1 & 0x80000000) == 0 && a3)
  {
    if (proc_pidpath(a1, buffer, 0x400u) <= 0)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = [[NSString alloc] initWithUTF8String:buffer];
    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

uint64_t sub_1000694CC(void *a1, void *a2, void *a3, uint64_t a4, int a5, int a6, double a7, double a8, uint64_t a9, int a10, void *a11, uint64_t a12)
{
  v19 = a1;
  v20 = a2;
  v168 = a3;
  v21 = a11;
  v167 = v21;
  if (byte_100127EC8 == 1)
  {
    v29 = *__error();
    v30 = sub_10003E080();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B5C88(a4, a5);
    }

    v21 = __error();
    *v21 = v29;
  }

  v169 = v20;
  v31 = byte_100127EC9 == 1 && dword_100127558 <= 0;
  v170 = v19;
  if (v31)
  {
    v32 = *__error();
    v33 = sub_100033E24(a4, a5);
    v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Saving %s report", v33);
    if (v34)
    {
      v35 = v34;
      CStringPtr = CFStringGetCStringPtr(v34, 0x8000100u);
      if (CStringPtr)
      {
        v37 = CStringPtr;
        v38 = 0;
      }

      else
      {
        v37 = malloc_type_calloc(0x400uLL, 1uLL, 0x4B86B44BuLL);
        CFStringGetCString(v35, v37, 1024, 0x8000100u);
        v38 = v37;
      }

      if (qword_100127ED0)
      {
        v41 = qword_100127ED0;
      }

      else
      {
        v41 = __stderrp;
      }

      fprintf(v41, "%s\n", v37);
      if (v38)
      {
        free(v38);
      }

      CFRelease(v35);
    }

    else
    {
      v39 = sub_10003E080();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        sub_1000B5D10();
      }

      if (qword_100127ED0)
      {
        v40 = qword_100127ED0;
      }

      else
      {
        v40 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v40);
    }

    v21 = __error();
    *v21 = v32;
  }

  if (a4 > 7)
  {
    if (a4 > 13)
    {
      if (a4 != 14)
      {
        if (a4 == 15)
        {
          v55 = [v19 sampleStore];
          v56 = [v55 targetProcesses];
          v57 = [v56 lastObject];
          v58 = v57;
          if (v57)
          {
            v59 = [v57 name];
          }

          else
          {
            [v19 sampleStore];
            v88 = v87 = a6;
            v89 = [v88 targetProcess];
            v59 = [v89 name];

            v19 = v170;
            a6 = v87;
          }

          if (byte_100127EC8 == 1)
          {
            v90 = *__error();
            v91 = sub_10003E080();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              sub_1000B6248();
            }

            *__error() = v90;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 0)
          {
            v92 = *__error();
            v93 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"power exception app name is %@", v59);
            if (v93)
            {
              v94 = v93;
              v95 = CFStringGetCStringPtr(v93, 0x8000100u);
              if (v95)
              {
                v96 = v95;
                v97 = 0;
              }

              else
              {
                v96 = malloc_type_calloc(0x400uLL, 1uLL, 0x256B4D11uLL);
                CFStringGetCString(v94, v96, 1024, 0x8000100u);
                v97 = v96;
              }

              if (qword_100127ED0)
              {
                v113 = qword_100127ED0;
              }

              else
              {
                v113 = __stderrp;
              }

              fprintf(v113, "%s\n", v96);
              if (v97)
              {
                free(v97);
              }

              CFRelease(v94);
            }

            else
            {
              v101 = sub_10003E080();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
              {
                sub_1000B62BC();
              }

              if (qword_100127ED0)
              {
                v102 = qword_100127ED0;
              }

              else
              {
                v102 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v102);
            }

            *__error() = v92;
          }

          if (!v59)
          {
            sub_1000B632C(v19);
          }

          v114 = [NSString alloc];
          if (a6)
          {
            v43 = [v114 initWithFormat:@"%@.cpu_resource_fatal", v59];
            v42 = @"206";
          }

          else
          {
            v43 = [v114 initWithFormat:@"%@.cpu_resource", v59];
            v42 = kOSAProblemTypeExcResource;
          }

          goto LABEL_130;
        }

        goto LABEL_74;
      }

      v43 = 0;
      v42 = @"239";
    }

    else if ((a4 - 9) >= 2)
    {
      if (a4 != 8)
      {
        goto LABEL_74;
      }

      v43 = @"periodic-io-microstackshot-report";
      v42 = @"144";
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

LABEL_130:
    if (a12)
    {
      sub_1000B660C(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    v115 = v19;
    v116 = [v115 sampleStore];
    v117 = [v116 targetProcesses];
    v118 = [v117 lastObject];
    v119 = v118;
    if (v118)
    {
      v120 = v118;
    }

    else
    {
      v121 = [v115 sampleStore];
      v120 = [v121 targetProcess];
    }

    v165 = v43;
    if ([v120 developerType] == 1)
    {
      v122 = 1;
    }

    else if ([v120 developerType] == -1)
    {
      v123 = [v120 bundleIdentifier];
      if (v123)
      {
        v124 = [v120 bundleIdentifier];
        v122 = [v124 hasPrefix:@"com.apple."];
      }

      else
      {
        v122 = 0;
      }
    }

    else
    {
      v122 = 0;
    }

    v175[0] = kOSALogMetadataAppName;
    v164 = v42;
    v125 = [v120 name];
    v126 = v125;
    if (v125)
    {
      v127 = v125;
    }

    else
    {
      v127 = @"Unknown";
    }

    v176[0] = v127;
    v175[1] = @"app_name";
    v128 = [v120 name];
    v129 = v128;
    if (v128)
    {
      v130 = v128;
    }

    else
    {
      v130 = @"Unknown";
    }

    v176[1] = v130;
    v175[2] = @"is_first_party";
    v131 = [NSNumber numberWithBool:v122];
    v176[2] = v131;
    v175[3] = @"share_with_app_devs";
    v132 = +[OSASystemConfiguration sharedInstance];
    v133 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v132 optIn3rdParty]);
    v176[3] = v133;
    v134 = [NSDictionary dictionaryWithObjects:v176 forKeys:v175 count:4];
    v135 = [v134 mutableCopy];

    v136 = [v115 incidentUUID];

    v54 = v167;
    v53 = v168;
    if (v136)
    {
      v137 = [v115 incidentUUID];
      v138 = [v137 UUIDString];
      [v135 setObject:v138 forKeyedSubscript:kOSALogMetadataIncidentID];
    }

    v139 = [v120 mainBinary];

    if (v139)
    {
      v140 = [v120 mainBinary];
      v141 = [v140 uuid];
      v142 = [v141 UUIDString];
      v143 = v142;
      if (v142)
      {
        v144 = v142;
      }

      else
      {
        v144 = &stru_1001199C0;
      }

      [v135 setObject:v144 forKeyedSubscript:@"slice_uuid"];
    }

    v145 = [v120 bundleIdentifier];

    if (v145)
    {
      v146 = [v120 bundleIdentifier];
      [v135 setObject:v146 forKeyedSubscript:kOSALogMetadataBundleID];
    }

    v147 = [v120 bundleVersion];

    if (v147)
    {
      v148 = [v120 bundleVersion];
      [v135 setObject:v148 forKeyedSubscript:@"build_version"];
    }

    v149 = [v120 bundleShortVersion];

    if (v149)
    {
      v150 = [v120 bundleShortVersion];
      [v135 setObject:v150 forKeyedSubscript:@"app_version"];
    }

    if ([v120 isBeta])
    {
      [v135 setObject:&__kCFBooleanTrue forKeyedSubscript:@"is_beta"];
      v151 = [v120 cohortID];

      if (v151)
      {
        v152 = [v120 cohortID];
        [v135 setObject:v152 forKeyedSubscript:@"app_cohort"];
      }
    }

    if ([v120 adamID])
    {
      v153 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v120 adamID]);
      [v135 setObject:v153 forKeyedSubscript:@"adam_id"];
    }

    v154 = [v120 distributorID];

    if (v154)
    {
      v156 = [v120 distributorID];
      [v135 setObject:v156 forKeyedSubscript:@"distributor_id"];
    }

    if (a10)
    {
      v157 = [v120 mainBinaryPath];
      v158 = [v157 isAbsolutePath];

      if (v158)
      {
        v159 = [v120 mainBinaryPath];
        [v135 setObject:v159 forKeyedSubscript:kOSALogOptionReopenPath];
      }
    }

    if (a7 > 0.0)
    {
      *v155.i64 = a7;
      sub_100033CB8(v174, 0x32uLL, 0, v155);
      v160 = [NSString stringWithUTF8String:v174];
      [v135 setObject:v160 forKeyedSubscript:@"timestamp"];
    }

    if (a8 > 0.0)
    {
      v161 = [NSString stringWithFormat:@"%.0f", a8 * 1000.0];
      [v135 setObject:v161 forKeyedSubscript:@"duration_ms"];
    }

    v171 = v115;
    v52 = v169;
    v172 = v169;
    v173 = v168;
    v49 = OSAWriteLogForSubmission();

    v19 = v170;
    goto LABEL_176;
  }

  if (a4 > 4)
  {
    if (a4 == 5)
    {
      v72 = [v19 sampleStore];
      v73 = [v72 targetProcess];
      v74 = [v73 name];

      if (!v74)
      {
        sub_1000B6810(v19);
      }

      v75 = [NSString alloc];
      if (a6)
      {
        v43 = [v75 initWithFormat:@"%@.cpu_resource_fatal", v74];
        v42 = @"206";
      }

      else
      {
        v43 = [v75 initWithFormat:@"%@.cpu_resource", v74];
        v42 = kOSAProblemTypeExcResource;
      }
    }

    else if (a4 == 6)
    {
      v76 = [v19 sampleStore];
      v77 = [v76 targetProcess];
      v78 = [v77 name];

      if (!v78)
      {
        sub_1000B5F68(v19);
      }

      v43 = [[NSString alloc] initWithFormat:@"%@.diskwrites_resource", v78];
      if (a6 && qword_100127DD8 != -1)
      {
        sub_1000B5F40();
      }

      v42 = @"145";
    }

    else
    {
      v21 = kOSAProblemTypeNewMicroSS;
      v42 = v21;
      v43 = @"periodic-microstackshot-report";
    }

    goto LABEL_130;
  }

  if (a4 == 3)
  {
    if (byte_100127EC8 == 1)
    {
      v60 = *__error();
      v61 = sub_10003E080();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_1000B5D80(v19, v61);
      }

      *__error() = v60;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v63 = *__error();
      v64 = [v19 sampleStore];
      v65 = [v64 targetProcess];
      v66 = [v65 name];
      v67 = [v66 UTF8String];
      if (v67)
      {
        v68 = v67;
      }

      else
      {
        v68 = "No app";
      }

      v69 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: %s: DID_MANUAL status while reporting", "status != DID_MANUAL", v68);

      if (v69)
      {
        v98 = CFStringGetCStringPtr(v69, 0x8000100u);
        if (v98)
        {
          v99 = v98;
          v100 = 0;
        }

        else
        {
          v99 = malloc_type_calloc(0x400uLL, 1uLL, 0x96212E7CuLL);
          CFStringGetCString(v69, v99, 1024, 0x8000100u);
          v100 = v99;
        }

        if (qword_100127ED0)
        {
          v105 = qword_100127ED0;
        }

        else
        {
          v105 = __stderrp;
        }

        fprintf(v105, "%s\n", v99);
        if (v100)
        {
          free(v100);
        }

        CFRelease(v69);
      }

      else
      {
        v70 = sub_10003E080();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          sub_1000B5E60(v19, v70);
        }

        if (qword_100127ED0)
        {
          v71 = qword_100127ED0;
        }

        else
        {
          v71 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v71);
      }

      *__error() = v63;
    }

    v106 = [v19 sampleStore];
    v107 = [v106 targetProcess];
    v108 = [v107 name];
    [v108 UTF8String];
    sub_10003DF54("SaveReport", "reporting.m", 476, "%s: %s: DID_MANUAL status while reporting", v109, v110, v111, v112, "status != DID_MANUAL");

    abort();
  }

  if (a4 == 4)
  {
    v44 = objc_alloc_init(NSDate);
    v45 = objc_alloc_init(NSDateFormatter);
    [v45 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    v46 = [v45 stringFromDate:v44];
    v47 = [[NSString alloc] initWithFormat:@"/var/mobile/Library/Logs/CrashReporter/ShutdownStall-%@.txt", v46];
    v48 = fopen([v47 UTF8String], "wx");
    v49 = v48 != 0;
    if (v48)
    {
      v50 = v48;
      fwrite("Use spindump -i to generate textual report\n\n", 0x2CuLL, 1uLL, v48);
      v51 = [v19 sampleStore];
      [v51 saveBinaryFormatToStream:v50];

      fclose(v50);
    }

    else
    {
      sub_1000B6AF0(v47);
    }

    v52 = v169;

    v54 = v167;
    v53 = v168;
    goto LABEL_176;
  }

LABEL_74:
  v79 = *__error();
  v80 = sub_10003E080();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
  {
    sub_1000B6D0C();
  }

  v49 = 0;
  *__error() = v79;
  v54 = v167;
  v53 = v168;
  if (byte_100127EC9 == 1)
  {
    v52 = v169;
    if (dword_100127558 <= 4)
    {
      v81 = *__error();
      v82 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SaveReport: Unsupported status %d", a4);
      if (v82)
      {
        v83 = v82;
        v84 = CFStringGetCStringPtr(v82, 0x8000100u);
        if (v84)
        {
          v85 = v84;
          v86 = 0;
        }

        else
        {
          v85 = malloc_type_calloc(0x400uLL, 1uLL, 0xF1B1B1C1uLL);
          CFStringGetCString(v83, v85, 1024, 0x8000100u);
          v86 = v85;
        }

        if (qword_100127ED0)
        {
          v163 = qword_100127ED0;
        }

        else
        {
          v163 = __stderrp;
        }

        fprintf(v163, "%s\n", v85);
        if (v86)
        {
          free(v86);
        }

        CFRelease(v83);
      }

      else
      {
        v103 = sub_10003E080();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
        {
          sub_1000B6D80();
        }

        if (qword_100127ED0)
        {
          v104 = qword_100127ED0;
        }

        else
        {
          v104 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v104);
      }

      v49 = 0;
      *__error() = v81;
    }
  }

  else
  {
    v52 = v169;
  }

LABEL_176:

  return v49;
}

void sub_10006A6CC(id a1)
{
  v1 = *__error();
  v2 = sub_10003E080();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1000B6DF4();
  }

  *__error() = v1;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v4 = *__error();
    v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No bug type for fatal disk writes reports, using non-fatal bug type");
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
        v8 = malloc_type_calloc(0x400uLL, 1uLL, 0x5D0F1F1AuLL);
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
        sub_1000B6E34();
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

void sub_10006A87C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 fileDescriptor] == -1)
  {
    sub_1000B7484(v3);
  }

  else
  {
    v4 = dup([v3 fileDescriptor]);
    if (v4 == -1)
    {
      sub_1000B7294();
    }

    else
    {
      v5 = fdopen(v4, "a");
      if (v5)
      {
        v6 = v5;
        if (*(a1 + 56) == 4)
        {
          fwrite("Use spindump -i to generate textual report\n\n", 0x2CuLL, 1uLL, v5);
          v7 = [*(a1 + 32) sampleStore];
          [v7 saveBinaryFormatToStream:v6];
        }

        else
        {
          v8 = *(a1 + 40);
          if (v8)
          {
            if (fwrite([v8 bytes], objc_msgSend(*(a1 + 40), "length"), 1uLL, v6) != 1)
            {
              if (byte_100127EC8 == 1)
              {
                v9 = *__error();
                v10 = sub_10003E080();
                if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B6E74(v6);
                }

                *__error() = v9;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v11 = *__error();
                v12 = ferror(v6);
                v13 = strerror(v12);
                v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write pre-blob to output file: %d (%s)", v12, v13);
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
                    v17 = malloc_type_calloc(0x400uLL, 1uLL, 0x9576FDF2uLL);
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
                    sub_1000B6F00(v6);
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

                *__error() = v11;
              }
            }

            fwrite("\n================================================================\n", 0x42uLL, 1uLL, v6);
          }

          [*(a1 + 32) printToStream:v6];
          if (*(a1 + 48))
          {
            fwrite("\n================================================================\n", 0x42uLL, 1uLL, v6);
            if (fwrite([*(a1 + 48) bytes], objc_msgSend(*(a1 + 48), "length"), 1uLL, v6) != 1)
            {
              if (byte_100127EC8 == 1)
              {
                v22 = *__error();
                v23 = sub_10003E080();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B6F8C(v6);
                }

                *__error() = v22;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v24 = *__error();
                v25 = ferror(v6);
                v26 = strerror(v25);
                v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write post-blob to output file: %d (%s)", v25, v26);
                if (v27)
                {
                  v28 = v27;
                  v29 = CFStringGetCStringPtr(v27, 0x8000100u);
                  if (v29)
                  {
                    v30 = v29;
                    v31 = 0;
                  }

                  else
                  {
                    v30 = malloc_type_calloc(0x400uLL, 1uLL, 0x1FEC7E02uLL);
                    CFStringGetCString(v28, v30, 1024, 0x8000100u);
                    v31 = v30;
                  }

                  if (qword_100127ED0)
                  {
                    v34 = qword_100127ED0;
                  }

                  else
                  {
                    v34 = __stderrp;
                  }

                  fprintf(v34, "%s\n", v30);
                  if (v31)
                  {
                    free(v31);
                  }

                  CFRelease(v28);
                }

                else
                {
                  v32 = sub_10003E080();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B7018(v6);
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

                *__error() = v24;
              }
            }
          }
        }

        fclose(v6);
      }

      else
      {
        sub_1000B70A4();
      }
    }
  }
}

const __CFString *sub_10006AD8C(int a1, int a2)
{
  v2 = @"--------------------------------------------------\nTimeline format: stacks are sorted chronologically\nUse -i and -heavy to re-report with count sorting\n--------------------------------------------------";
  if (a1)
  {
    v2 = @"------------------------------------------------------------\nHeavy format: stacks are sorted by count\nUse -i and -timeline to re-report with chronological sorting\n------------------------------------------------------------";
  }

  v3 = @"--------------------------------------------------\nTimeline format: stacks are sorted chronologically\n--------------------------------------------------";
  if (a1)
  {
    v3 = @"----------------------------------------\nHeavy format: stacks are sorted by count\n----------------------------------------";
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10006ADC4(char *buffer)
{

  return CFStringGetCString(v1, buffer, 1024, 0x8000100u);
}

void sub_10006ADEC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_fault_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 8u);
}

void sub_10006AE30(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

void sub_10006AE50(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_fault_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x16u);
}

const char *sub_10006AE70()
{

  return CFStringGetCStringPtr(v0, 0x8000100u);
}

uint64_t sub_10006AE8C(char *buffer)
{

  return CFStringGetCString(v1, buffer, 1024, 0x8000100u);
}

BOOL sub_10006AECC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

CFStringRef sub_10006AEE4(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return CFStringCreateWithFormat(v3, 0, a3);
}

void sub_10006AF1C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_fault_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x1Cu);
}

void sub_10006AF3C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_fault_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0xCu);
}

uint64_t sub_10006AF5C(void *a1, void *a2, uint64_t a3, int a4, int a5, unsigned int a6, void *a7)
{
  v12 = a1;
  v13 = a2;
  memset(&v31, 0, sizeof(v31));
  if (!v12)
  {
    v28 = 0;
    v15 = @"/tmp";
    goto LABEL_7;
  }

  if (stat([v12 fileSystemRepresentation], &v31))
  {
    v14 = v12;
    goto LABEL_10;
  }

  v16 = v31.st_mode & 0xF000;
  v17 = v12;
  if (v16 == 0x4000)
  {
    v15 = v17;
    v28 = v12;
LABEL_7:
    v27 = a7;
    if (v13)
    {
      [v13 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
      if ((a3 & 0x80000000) != 0)
        v19 = {;
      }

      else
        v18 = {;
        v19 = [NSString stringWithFormat:@"%@_%i", v18, a3];
      }

      v24 = @".spindump.txt";
    }

    else
    {
      v19 = @"spindump";
      v24 = @".txt";
    }

    v21 = [NSString stringWithFormat:@"%@/%@%@", v15, v19, v24];
    LODWORD(v25) = 1;
    memset(&v30, 0, sizeof(v30));
    do
    {
      if (stat([v21 fileSystemRepresentation], &v30))
      {
        v26 = v21;
      }

      else
      {
        do
        {
          v25 = (v25 + 1);
          v26 = [NSString stringWithFormat:@"%@/%@.%d%@", v15, v19, v25, v24];

          v21 = v26;
        }

        while (!stat([v26 fileSystemRepresentation], &v30));
      }

      v21 = v26;
      v20 = sub_10003B424([v26 UTF8String], a4 | 0x800u, a5, a6);
    }

    while (v20 == -1 && *__error() == 17);

    a7 = v27;
    v12 = v28;
    if (v27)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_10:
  v20 = sub_10003B424([v12 UTF8String], a4, a5, a6);
  v15 = 0;
  v21 = v12;
  if (a7)
  {
LABEL_11:
    v22 = v21;
    *a7 = v21;
  }

LABEL_12:

  return v20;
}

void sub_10006B22C()
{
  if (objc_opt_class())
  {
    v12 = sub_10006B45C();
    dispatch_async(v12, &stru_1001155C0);
  }

  else
  {
    if (byte_100127EC8 == 1)
    {
      v0 = *__error();
      v1 = sub_10003E080();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Deferred reports not supported, not checking for them", buf, 2u);
      }

      *__error() = v0;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 1)
    {
      v3 = *__error();
      v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Deferred reports not supported, not checking for them");
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
          v7 = malloc_type_calloc(0x400uLL, 1uLL, 0xEB02061BuLL);
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
          sub_1000B76A4();
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
  }
}

id sub_10006B45C()
{
  if (qword_100127DE8 != -1)
  {
    sub_1000B76E0();
  }

  v1 = qword_100127DE0;

  return v1;
}

void sub_10006B4A0(id a1)
{
  v1 = +[BGSystemTaskScheduler sharedScheduler];
  v2 = sub_10006B45C();
  v3 = [v1 registerForTaskWithIdentifier:@"com.apple.spindump.deferred_report_generation" usingQueue:v2 launchHandler:&stru_100115600];

  if (v3)
  {
    if (byte_100127EC8 == 1)
    {
      v4 = *__error();
      v5 = sub_10003E080();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B776C();
      }

      *__error() = v4;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      return;
    }

    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Registered for deferred report generation");
    if (v8)
    {
      v9 = v8;
      CStringPtr = CFStringGetCStringPtr(v8, 0x8000100u);
      if (!CStringPtr)
      {
        v11 = 480343013;
LABEL_33:
        v16 = malloc_type_calloc(0x400uLL, 1uLL, v11);
        CFStringGetCString(v9, v16, 1024, 0x8000100u);
        v17 = v16;
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    v18 = sub_10003E080();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1000B77A0();
    }

    goto LABEL_28;
  }

  v12 = *__error();
  v13 = sub_10003E080();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1000B76F4();
  }

  *__error() = v12;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v7 = *__error();
    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to register for deferred report generation");
    if (v15)
    {
      v9 = v15;
      CStringPtr = CFStringGetCStringPtr(v15, 0x8000100u);
      if (!CStringPtr)
      {
        v11 = 3513354074;
        goto LABEL_33;
      }

LABEL_23:
      v16 = CStringPtr;
      v17 = 0;
LABEL_34:
      if (qword_100127ED0)
      {
        v20 = qword_100127ED0;
      }

      else
      {
        v20 = __stderrp;
      }

      fprintf(v20, "%s\n", v16);
      if (v17)
      {
        free(v17);
      }

      CFRelease(v9);
LABEL_40:
      *__error() = v7;
      return;
    }

    v18 = sub_10003E080();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1000B7730();
    }

LABEL_28:

    if (qword_100127ED0)
    {
      v19 = qword_100127ED0;
    }

    else
    {
      v19 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v19);
    goto LABEL_40;
  }
}

void sub_10006B780(id a1, BGNonRepeatingSystemTask *a2)
{
  v2 = a2;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3020000000;
  v21 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10006D3EC;
  v19[3] = &unk_1001156C0;
  v19[4] = v20;
  [(BGNonRepeatingSystemTask *)v2 setExpirationHandler:v19];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10006D5CC;
  v18[3] = &unk_1001156E8;
  v18[4] = v20;
  v3 = objc_retainBlock(v18);
  if (sub_10006D5DC(v3))
  {
LABEL_26:
    [(BGNonRepeatingSystemTask *)v2 setTaskCompleted];
    goto LABEL_27;
  }

  v17 = 0;
  v4 = [(BGNonRepeatingSystemTask *)v2 setTaskExpiredWithRetryAfter:&v17 error:0.0];
  v5 = v17;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v7 = *__error();
    v8 = sub_10003E080();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1000B77DC();
    }

    *__error() = v7;
    if (byte_100127EC9 == 1 && dword_100127558 <= 4)
    {
      v9 = *__error();
      v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to set expiry: %@", v6);
      v11 = v10;
      if (v10)
      {
        CStringPtr = CFStringGetCStringPtr(v10, 0x8000100u);
        if (CStringPtr)
        {
          v13 = 0;
        }

        else
        {
          CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0x359C6262uLL);
          CFStringGetCString(v11, CStringPtr, 1024, 0x8000100u);
          v13 = CStringPtr;
        }

        if (qword_100127ED0)
        {
          v16 = qword_100127ED0;
        }

        else
        {
          v16 = __stderrp;
        }

        fprintf(v16, "%s\n", CStringPtr);
        if (v13)
        {
          free(v13);
        }

        CFRelease(v11);
      }

      else
      {
        v14 = sub_10003E080();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_1000B784C();
        }

        if (qword_100127ED0)
        {
          v15 = qword_100127ED0;
        }

        else
        {
          v15 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v15);
      }

      *__error() = v9;
    }

    goto LABEL_26;
  }

LABEL_27:
  _Block_object_dispose(v20, 8);
}

void sub_10006BA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006BAB4(int a1, void *a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = a2;
  v20 = a5;
  v21 = sub_10003DEB8("create deferred cpu usage report for [%d]", a1);
  v22 = sub_10006B45C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006BC0C;
  block[3] = &unk_100115628;
  v37 = a1;
  v30 = a3;
  v31 = a4;
  v27 = v19;
  v28 = v20;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v35 = a9;
  v36 = a10;
  v29 = v21;
  v23 = v21;
  v24 = v20;
  v25 = v19;
  dispatch_async(v22, block);
}

void sub_10006BC0C(uint64_t a1)
{
  v10 = objc_alloc_init(NSMutableDictionary);
  [v10 setObject:&off_100120008 forKeyedSubscript:@"message"];
  v2 = [NSNumber numberWithInt:*(a1 + 112)];
  [v10 setObject:v2 forKeyedSubscript:@"pid"];

  [v10 setObject:*(a1 + 32) forKeyedSubscript:@"pname"];
  if (*(a1 + 56))
  {
    v3 = [NSNumber numberWithUnsignedLongLong:?];
    [v10 setObject:v3 forKeyedSubscript:@"tid"];
  }

  v4 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
  [v10 setObject:v4 forKeyedSubscript:@"flags"];

  [v10 setObject:*(a1 + 40) forKeyedSubscript:@"action"];
  v5 = [NSNumber numberWithDouble:*(a1 + 72)];
  [v10 setObject:v5 forKeyedSubscript:@"cpu"];

  v6 = [NSNumber numberWithDouble:*(a1 + 80)];
  [v10 setObject:v6 forKeyedSubscript:@"duration"];

  v7 = [NSNumber numberWithDouble:*(a1 + 88)];
  [v10 setObject:v7 forKeyedSubscript:@"endtime"];

  if (*(a1 + 96) > 0.0 && *(a1 + 104) > 0.0)
  {
    v8 = [NSNumber numberWithDouble:?];
    [v10 setObject:v8 forKeyedSubscript:@"cpu_limit"];

    v9 = [NSNumber numberWithDouble:*(a1 + 104)];
    [v10 setObject:v9 forKeyedSubscript:@"duration_limit"];
  }

  sub_10006BE20(v10);
}

void sub_10006BE20(void *a1)
{
  v1 = a1;
  v2 = [NSURL fileURLWithPath:@"/private/var/db/spindump/DeferredReports.plist" isDirectory:0];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:@"/private/var/db/spindump/DeferredReports.plist"];

  if (v4)
  {
    v107 = 0;
    v5 = [NSArray arrayWithContentsOfURL:v2 error:&v107];
    v6 = v107;
    v7 = [v5 mutableCopy];

    if (!v7)
    {
      v8 = *__error();
      v9 = sub_10003E080();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1000B792C();
      }

      *__error() = v8;
      if (byte_100127EC9 == 1 && dword_100127558 <= 4)
      {
        v10 = *__error();
        v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to read deferred reports plist, overwriting it: %@", v6);
        if (v11)
        {
          v12 = v11;
          CStringPtr = CFStringGetCStringPtr(v11, 0x8000100u);
          if (CStringPtr)
          {
            v14 = CStringPtr;
            v15 = 0;
          }

          else
          {
            v14 = malloc_type_calloc(0x400uLL, 1uLL, 0x24A4EABFuLL);
            CFStringGetCString(v12, v14, 1024, 0x8000100u);
            v15 = v14;
          }

          if (qword_100127ED0)
          {
            v30 = qword_100127ED0;
          }

          else
          {
            v30 = __stderrp;
          }

          fprintf(v30, "%s\n", v14);
          if (v15)
          {
            free(v15);
          }

          CFRelease(v12);
        }

        else
        {
          v28 = sub_10003E080();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            sub_1000B799C();
          }

          if (qword_100127ED0)
          {
            v29 = qword_100127ED0;
          }

          else
          {
            v29 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v29);
        }

        *__error() = v10;
      }

      v31 = +[NSFileManager defaultManager];
      v106 = 0;
      v32 = [v31 removeItemAtURL:v2 error:&v106];
      v33 = v106;

      if ((v32 & 1) == 0)
      {
        sub_1000B7A0C(v33);
      }

      v7 = [[NSMutableArray alloc] initWithCapacity:1];
    }
  }

  else
  {
    if (byte_100127EC8 == 1)
    {
      v16 = *__error();
      v17 = sub_10003E080();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B78BC();
      }

      *__error() = v16;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v19 = *__error();
      v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No existing deferred reports, creating new plist");
      if (v20)
      {
        v21 = v20;
        v22 = CFStringGetCStringPtr(v20, 0x8000100u);
        if (v22)
        {
          v23 = v22;
          v24 = 0;
        }

        else
        {
          v23 = malloc_type_calloc(0x400uLL, 1uLL, 0xB40460EBuLL);
          CFStringGetCString(v21, v23, 1024, 0x8000100u);
          v24 = v23;
        }

        if (qword_100127ED0)
        {
          v27 = qword_100127ED0;
        }

        else
        {
          v27 = __stderrp;
        }

        fprintf(v27, "%s\n", v23);
        if (v24)
        {
          free(v24);
        }

        CFRelease(v21);
      }

      else
      {
        v25 = sub_10003E080();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          sub_1000B78F0();
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

      *__error() = v19;
    }

    v7 = [[NSMutableArray alloc] initWithCapacity:1];
  }

  [v7 addObject:v1];

  v105 = 0;
  v34 = [v7 writeToURL:v2 error:&v105];
  v35 = v105;
  if ((v34 & 1) == 0)
  {
    v45 = *__error();
    v46 = sub_10003E080();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      sub_1000B7BE0();
    }

    *__error() = v45;
    if (byte_100127EC9 == 1 && dword_100127558 <= 4)
    {
      v47 = *__error();
      v48 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write %lu deferred reports to plist: %@", [v7 count], v35);
      if (v48)
      {
        v49 = v48;
        v50 = CFStringGetCStringPtr(v48, 0x8000100u);
        if (v50)
        {
          v51 = v50;
          v52 = 0;
        }

        else
        {
          v51 = malloc_type_calloc(0x400uLL, 1uLL, 0x1E620285uLL);
          CFStringGetCString(v49, v51, 1024, 0x8000100u);
          v52 = v51;
        }

        if (qword_100127ED0)
        {
          v92 = qword_100127ED0;
        }

        else
        {
          v92 = __stderrp;
        }

        fprintf(v92, "%s\n", v51);
        if (v52)
        {
          free(v52);
        }

        CFRelease(v49);
      }

      else
      {
        v55 = sub_10003E080();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          sub_1000B7C60();
        }

        if (qword_100127ED0)
        {
          v56 = qword_100127ED0;
        }

        else
        {
          v56 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v56);
      }

      *__error() = v47;
    }

    v93 = +[NSFileManager defaultManager];
    v104 = 0;
    v94 = [v93 removeItemAtURL:v2 error:&v104];
    v59 = v104;

    if ((v94 & 1) == 0)
    {
      sub_1000B7CE0(v59);
    }

    goto LABEL_137;
  }

  if (byte_100127EC8 == 1)
  {
    v36 = *__error();
    v37 = sub_10003E080();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = [v7 count];
      *buf = 134217984;
      *&buf[4] = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Added report to pending deferred reports (have %lu)", buf, 0xCu);
    }

    *__error() = v36;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v39 = *__error();
    v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Added report to pending deferred reports (have %lu)", [v7 count]);
    if (v40)
    {
      v41 = v40;
      v42 = CFStringGetCStringPtr(v40, 0x8000100u);
      if (v42)
      {
        v43 = v42;
        v44 = 0;
      }

      else
      {
        v43 = malloc_type_calloc(0x400uLL, 1uLL, 0x66EC9423uLL);
        CFStringGetCString(v41, v43, 1024, 0x8000100u);
        v44 = v43;
      }

      if (qword_100127ED0)
      {
        v57 = qword_100127ED0;
      }

      else
      {
        v57 = __stderrp;
      }

      fprintf(v57, "%s\n", v43);
      if (v44)
      {
        free(v44);
      }

      CFRelease(v41);
    }

    else
    {
      v53 = sub_10003E080();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        sub_1000B7EB4(v7);
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

    *__error() = v39;
  }

  if (objc_opt_class())
  {
    v58 = +[BGSystemTaskScheduler sharedScheduler];
    v59 = [v58 taskRequestForIdentifier:@"com.apple.spindump.deferred_report_generation"];

    if (v59)
    {
      if (byte_100127EC8 == 1)
      {
        v60 = *__error();
        v61 = sub_10003E080();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B7F34();
        }

        *__error() = v60;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 0)
      {
        v62 = *__error();
        v63 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Deferred report task already exists");
        if (v63)
        {
          v64 = v63;
          v65 = CFStringGetCStringPtr(v63, 0x8000100u);
          if (v65)
          {
            v66 = v65;
            v67 = 0;
          }

          else
          {
            v66 = malloc_type_calloc(0x400uLL, 1uLL, 0x5557420EuLL);
            CFStringGetCString(v64, v66, 1024, 0x8000100u);
            v67 = v66;
          }

          if (qword_100127ED0)
          {
            v99 = qword_100127ED0;
          }

          else
          {
            v99 = __stderrp;
          }

          fprintf(v99, "%s\n", v66);
          if (v67)
          {
            free(v67);
          }

          CFRelease(v64);
        }

        else
        {
          v95 = sub_10003E080();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
          {
            sub_1000B7F68();
          }

          if (qword_100127ED0)
          {
            v96 = qword_100127ED0;
          }

          else
          {
            v96 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v96);
        }

        *__error() = v62;
      }

      goto LABEL_137;
    }

    v76 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.spindump.deferred_report_generation"];
    [v76 setPriority:1];
    [v76 setScheduleAfter:1.0];
    [v76 setRequiresNetworkConnectivity:0];
    [v76 setRequiresExternalPower:0];
    v77 = +[BGSystemTaskScheduler sharedScheduler];
    *buf = 0;
    v78 = [v77 submitTaskRequest:v76 error:buf];
    v79 = *buf;

    if (v78)
    {
      v59 = 0;
      if (byte_100127EC8 == 1)
      {
        v80 = *__error();
        v81 = sub_10003E080();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
        {
          sub_1000B8084();
        }

        *__error() = v80;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_184;
      }

      v82 = *__error();
      v83 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submitted deferred report task successfully");
      if (v83)
      {
        v84 = v83;
        v85 = CFStringGetCStringPtr(v83, 0x8000100u);
        if (!v85)
        {
          v86 = 2076187545;
LABEL_176:
          v90 = malloc_type_calloc(0x400uLL, 1uLL, v86);
          CFStringGetCString(v84, v90, 1024, 0x8000100u);
          v91 = v90;
          goto LABEL_177;
        }

        goto LABEL_126;
      }

      v101 = sub_10003E080();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
      {
        sub_1000B80B8();
      }
    }

    else
    {
      v87 = *__error();
      v88 = sub_10003E080();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_FAULT))
      {
        sub_1000B7FA4();
      }

      *__error() = v87;
      v59 = 0;
      if (byte_100127EC9 != 1 || dword_100127558 > 4)
      {
        goto LABEL_184;
      }

      v82 = *__error();
      v89 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Failed to submit task with error: %@", v79);
      if (v89)
      {
        v84 = v89;
        v85 = CFStringGetCStringPtr(v89, 0x8000100u);
        if (!v85)
        {
          v86 = 4083141428;
          goto LABEL_176;
        }

LABEL_126:
        v90 = v85;
        v91 = 0;
LABEL_177:
        if (qword_100127ED0)
        {
          v103 = qword_100127ED0;
        }

        else
        {
          v103 = __stderrp;
        }

        fprintf(v103, "%s\n", v90);
        if (v91)
        {
          free(v91);
        }

        CFRelease(v84);
        goto LABEL_183;
      }

      v101 = sub_10003E080();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
      {
        sub_1000B8014();
      }
    }

    if (qword_100127ED0)
    {
      v102 = qword_100127ED0;
    }

    else
    {
      v102 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v102);
LABEL_183:
    *__error() = v82;
LABEL_184:

LABEL_137:
    goto LABEL_138;
  }

  v68 = *__error();
  v69 = sub_10003E080();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
  {
    sub_1000B80F4();
  }

  *__error() = v68;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v70 = *__error();
    v71 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Attempting to defer reports when not supported. Caller should check before calling");
    if (v71)
    {
      v72 = v71;
      v73 = CFStringGetCStringPtr(v71, 0x8000100u);
      if (v73)
      {
        v74 = v73;
        v75 = 0;
      }

      else
      {
        v74 = malloc_type_calloc(0x400uLL, 1uLL, 0xBFF3459AuLL);
        CFStringGetCString(v72, v74, 1024, 0x8000100u);
        v75 = v74;
      }

      if (qword_100127ED0)
      {
        v100 = qword_100127ED0;
      }

      else
      {
        v100 = __stderrp;
      }

      fprintf(v100, "%s\n", v74);
      if (v75)
      {
        free(v75);
      }

      CFRelease(v72);
    }

    else
    {
      v97 = sub_10003E080();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
      {
        sub_1000B8130();
      }

      if (qword_100127ED0)
      {
        v98 = qword_100127ED0;
      }

      else
      {
        v98 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v98);
    }

    *__error() = v70;
  }

LABEL_138:
}

void sub_10006CCFC(int a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v17 = a2;
  v18 = a4;
  v19 = sub_10003DEB8("create deferred disk writes report for [%d]", a1);
  v20 = sub_10006B45C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CE48;
  block[3] = &unk_100115650;
  v34 = a1;
  v25 = v17;
  v26 = v18;
  v28 = a3;
  v29 = a5;
  v30 = a7;
  v31 = a8;
  v32 = a6;
  v33 = a9;
  v27 = v19;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  dispatch_async(v20, block);
}

void sub_10006CE48(uint64_t a1)
{
  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:&off_100120020 forKeyedSubscript:@"message"];
  v2 = [NSNumber numberWithInt:*(a1 + 104)];
  [v9 setObject:v2 forKeyedSubscript:@"pid"];

  [v9 setObject:*(a1 + 32) forKeyedSubscript:@"pname"];
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56)];
  [v9 setObject:v3 forKeyedSubscript:@"flags"];

  [v9 setObject:*(a1 + 40) forKeyedSubscript:@"action"];
  v4 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
  [v9 setObject:v4 forKeyedSubscript:@"io"];

  v5 = [NSNumber numberWithDouble:*(a1 + 72)];
  [v9 setObject:v5 forKeyedSubscript:@"duration"];

  v6 = [NSNumber numberWithDouble:*(a1 + 80)];
  [v9 setObject:v6 forKeyedSubscript:@"endtime"];

  if (*(a1 + 88) && *(a1 + 96) > 0.0)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:?];
    [v9 setObject:v7 forKeyedSubscript:@"io_limit"];

    v8 = [NSNumber numberWithDouble:*(a1 + 96)];
    [v9 setObject:v8 forKeyedSubscript:@"duration_limit"];
  }

  sub_10006BE20(v9);
}

void sub_10006D028(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, double a7, double a8, double a9)
{
  v17 = a1;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = [v17 lastPathComponent];
  v23 = sub_10003DEB8("create deferred power exception report for %s", [v22 UTF8String]);

  v24 = sub_10006B45C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D1E0;
  block[3] = &unk_100115678;
  v37 = v23;
  v38 = a2;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v36 = v21;
  v25 = v23;
  v26 = v21;
  v27 = v20;
  v28 = v19;
  v29 = v18;
  v30 = v17;
  dispatch_async(v24, block);
}

void sub_10006D1E0(uint64_t a1)
{
  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setObject:&off_100120038 forKeyedSubscript:@"message"];
  [v6 setObject:*(a1 + 32) forKeyedSubscript:@"pname"];
  v2 = [NSNumber numberWithUnsignedLongLong:*(a1 + 80)];
  [v6 setObject:v2 forKeyedSubscript:@"flags"];

  [v6 setObject:*(a1 + 40) forKeyedSubscript:@"issue_type"];
  [v6 setObject:*(a1 + 48) forKeyedSubscript:@"mitigation_reason"];
  [v6 setObject:*(a1 + 56) forKeyedSubscript:@"action"];
  [v6 setObject:*(a1 + 64) forKeyedSubscript:@"detector"];
  v3 = [NSNumber numberWithDouble:*(a1 + 88)];
  [v6 setObject:v3 forKeyedSubscript:@"event_duration"];

  v4 = [NSNumber numberWithDouble:*(a1 + 96)];
  [v6 setObject:v4 forKeyedSubscript:@"report_duration"];

  v5 = [NSNumber numberWithDouble:*(a1 + 104)];
  [v6 setObject:v5 forKeyedSubscript:@"endtime"];

  sub_10006BE20(v6);
}

void sub_10006D368(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_BACKGROUND, 0);

  v2 = dispatch_queue_create("com.apple.spindump.deferred_report_generation", attr);
  v3 = qword_100127DE0;
  qword_100127DE0 = v2;
}

int *sub_10006D3EC(int *result)
{
  v1 = result;
  if (byte_100127EC8 == 1)
  {
    v2 = *__error();
    v3 = sub_10003E080();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1000B816C();
    }

    result = __error();
    *result = v2;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v5 = *__error();
    v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Deferred tasks expired");
    if (v6)
    {
      v7 = v6;
      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      if (CStringPtr)
      {
        v9 = CStringPtr;
        v10 = 0;
      }

      else
      {
        v9 = malloc_type_calloc(0x400uLL, 1uLL, 0xCFBCA05AuLL);
        CFStringGetCString(v7, v9, 1024, 0x8000100u);
        v10 = v9;
      }

      if (qword_100127ED0)
      {
        v13 = qword_100127ED0;
      }

      else
      {
        v13 = __stderrp;
      }

      fprintf(v13, "%s\n", v9);
      if (v10)
      {
        free(v10);
      }

      CFRelease(v7);
    }

    else
    {
      v11 = sub_10003E080();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1000B81A0();
      }

      if (qword_100127ED0)
      {
        v12 = qword_100127ED0;
      }

      else
      {
        v12 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v12);
    }

    result = __error();
    *result = v5;
  }

  *(*(*(v1 + 4) + 8) + 40) = 1;
  return result;
}

uint64_t sub_10006D5DC(void *a1)
{
  v1 = a1;
  if (byte_100127EC8 == 1)
  {
    v2 = *__error();
    v3 = sub_10003E080();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Generating deferred reports", buf, 2u);
    }

    *__error() = v2;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 2)
  {
    v5 = *__error();
    v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Generating deferred reports");
    if (v6)
    {
      v7 = v6;
      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      if (CStringPtr)
      {
        v9 = CStringPtr;
        v10 = 0;
      }

      else
      {
        v9 = malloc_type_calloc(0x400uLL, 1uLL, 0xD489C141uLL);
        CFStringGetCString(v7, v9, 1024, 0x8000100u);
        v10 = v9;
      }

      if (qword_100127ED0)
      {
        v13 = qword_100127ED0;
      }

      else
      {
        v13 = __stderrp;
      }

      fprintf(v13, "%s\n", v9);
      if (v10)
      {
        free(v10);
      }

      CFRelease(v7);
    }

    else
    {
      v11 = sub_10003E080();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1000B81DC();
      }

      if (qword_100127ED0)
      {
        v12 = qword_100127ED0;
      }

      else
      {
        v12 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v12);
    }

    *__error() = v5;
  }

  v14 = +[NSFileManager defaultManager];
  v15 = [v14 fileExistsAtPath:@"/private/var/db/spindump/DeferredReports.plist"];

  if ((v15 & 1) == 0)
  {
    if (byte_100127EC8 == 1)
    {
      v235 = *__error();
      v236 = sub_10003E080();
      if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, "No deferred reports", buf, 2u);
      }

      *__error() = v235;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v238 = *__error();
      v239 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No deferred reports");
      if (v239)
      {
        v240 = v239;
        v241 = CFStringGetCStringPtr(v239, 0x8000100u);
        if (v241)
        {
          v242 = v241;
          v243 = 0;
        }

        else
        {
          v242 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD4760F6uLL);
          CFStringGetCString(v240, v242, 1024, 0x8000100u);
          v243 = v242;
        }

        if (qword_100127ED0)
        {
          v263 = qword_100127ED0;
        }

        else
        {
          v263 = __stderrp;
        }

        fprintf(v263, "%s\n", v242);
        if (v243)
        {
          free(v243);
        }

        CFRelease(v240);
      }

      else
      {
        v261 = sub_10003E080();
        if (os_log_type_enabled(v261, OS_LOG_TYPE_FAULT))
        {
          sub_1000B8218();
        }

        if (qword_100127ED0)
        {
          v262 = qword_100127ED0;
        }

        else
        {
          v262 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v262);
      }

      *__error() = v238;
    }

    v264 = 1;
    goto LABEL_617;
  }

  v16 = [NSURL fileURLWithPath:@"/private/var/db/spindump/DeferredReports.plist" isDirectory:0];
  v386 = 0;
  v17 = [NSArray arrayWithContentsOfURL:v16 error:&v386];
  v376 = v386;
  if (!v17)
  {
    if (byte_100127EC8 == 1)
    {
      v253 = *__error();
      v254 = sub_10003E080();
      if (os_log_type_enabled(v254, OS_LOG_TYPE_ERROR))
      {
        sub_1000B8B64();
      }

      *__error() = v253;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v255 = *__error();
      v256 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to read deferred reports plist: %@", v376);
      if (v256)
      {
        v257 = v256;
        v258 = CFStringGetCStringPtr(v256, 0x8000100u);
        if (v258)
        {
          v259 = v258;
          v260 = 0;
        }

        else
        {
          v259 = malloc_type_calloc(0x400uLL, 1uLL, 0x3AB02833uLL);
          CFStringGetCString(v257, v259, 1024, 0x8000100u);
          v260 = v259;
        }

        if (qword_100127ED0)
        {
          v300 = qword_100127ED0;
        }

        else
        {
          v300 = __stderrp;
        }

        fprintf(v300, "%s\n", v259);
        if (v260)
        {
          free(v260);
        }

        CFRelease(v257);
      }

      else
      {
        v287 = sub_10003E080();
        if (os_log_type_enabled(v287, OS_LOG_TYPE_FAULT))
        {
          sub_1000B8BD8();
        }

        if (qword_100127ED0)
        {
          v288 = qword_100127ED0;
        }

        else
        {
          v288 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v288);
      }

      *__error() = v255;
      v17 = 0;
    }

    v301 = +[NSFileManager defaultManager];
    v385 = 0;
    v302 = [v301 removeItemAtURL:v16 error:&v385];
    v292 = v385;

    if ((v302 & 1) == 0)
    {
      v329 = v17;
      v330 = v16;
      v331 = *__error();
      v332 = sub_10003E080();
      if (os_log_type_enabled(v332, OS_LOG_TYPE_FAULT))
      {
        sub_1000B82D0();
      }

      *__error() = v331;
      v264 = 1;
      if (byte_100127EC9 == 1 && dword_100127558 <= 4)
      {
        v333 = *__error();
        v334 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to remove deferred reports plist: %@", v292);
        if (v334)
        {
          v335 = v334;
          v336 = CFStringGetCStringPtr(v334, 0x8000100u);
          if (v336)
          {
            v337 = v336;
            v338 = 0;
          }

          else
          {
            v337 = malloc_type_calloc(0x400uLL, 1uLL, 0x2BE19509uLL);
            CFStringGetCString(v335, v337, 1024, 0x8000100u);
            v338 = v337;
          }

          if (qword_100127ED0)
          {
            v347 = qword_100127ED0;
          }

          else
          {
            v347 = __stderrp;
          }

          fprintf(v347, "%s\n", v337);
          if (v338)
          {
            free(v338);
          }

          CFRelease(v335);
        }

        else
        {
          v345 = sub_10003E080();
          if (os_log_type_enabled(v345, OS_LOG_TYPE_FAULT))
          {
            sub_1000B8340();
          }

          if (qword_100127ED0)
          {
            v346 = qword_100127ED0;
          }

          else
          {
            v346 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v346);
        }

        *__error() = v333;
        v264 = 1;
      }

      v16 = v330;
      v17 = v329;
      goto LABEL_615;
    }

    goto LABEL_553;
  }

  v374 = v16;
  objc_opt_class();
  v375 = v17;
  v18 = v17;
  v421 = 0u;
  v422 = 0u;
  v423 = 0u;
  v424 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v421 objects:buf count:16];
  if (!v20)
  {
    goto LABEL_37;
  }

  v21 = v20;
  v22 = *v422;
LABEL_31:
  v23 = 0;
  while (1)
  {
    if (*v422 != v22)
    {
      objc_enumerationMutation(v19);
    }

    v24 = *(*(&v421 + 1) + 8 * v23);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    if (v21 == ++v23)
    {
      v21 = [v19 countByEnumeratingWithState:&v421 objects:buf count:16];
      if (!v21)
      {
LABEL_37:

        v25 = 0;
        if ([v19 count])
        {
          do
          {
            if (v1[2](v1))
            {
              break;
            }

            v26 = [v19 objectAtIndexedSubscript:v25];
            v27 = sub_100070FBC(v26, @"message");
            v28 = v27;
            if (v27)
            {
              v29 = [v27 longLongValue];
              if (v29 == 15)
              {
                v30 = v26;
                v372 = sub_1000710A4(v30, @"pname");
                if (v372)
                {
                  v83 = sub_100070FBC(v30, @"flags");
                  v352 = [v83 unsignedLongLongValue];

                  v84 = sub_1000710A4(v30, @"issue_type");
                  if (v84)
                  {
                    v85 = v84;
                    v86 = sub_100076928([v84 UTF8String]);
                    v369 = [NSString stringWithUTF8String:v86];

                    free(v86);
                  }

                  else
                  {
                    v369 = 0;
                  }

                  v115 = sub_1000710A4(v30, @"mitigation_reason");
                  if (v115)
                  {
                    v116 = v115;
                    v117 = sub_100076928([v115 UTF8String]);
                    v363 = [NSString stringWithUTF8String:v117];

                    free(v117);
                  }

                  else
                  {
                    v363 = 0;
                  }

                  v118 = sub_1000710A4(v30, @"action");
                  if (v118)
                  {
                    v119 = v118;
                    v120 = sub_100076928([v118 UTF8String]);
                    theString = [NSString stringWithUTF8String:v120];

                    free(v120);
                  }

                  else
                  {
                    theString = 0;
                  }

                  v121 = sub_1000710A4(v30, @"detector");
                  if (v121)
                  {
                    v122 = v121;
                    v123 = sub_100076928([v121 UTF8String]);
                    v356 = [NSString stringWithUTF8String:v123];

                    free(v123);
                  }

                  else
                  {
                    v356 = 0;
                  }

                  v124 = sub_100070FBC(v30, @"report_duration");
                  [v124 doubleValue];
                  v126 = v125;

                  if (v126 <= 0.0)
                  {
                    if (byte_100127EC8 == 1)
                    {
                      v141 = *__error();
                      v142 = sub_10003E080();
                      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134217984;
                        v418 = v126;
                        _os_log_error_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "deferred power exception: bad report duration (%f)", buf, 0xCu);
                      }

                      *__error() = v141;
                    }

                    if (byte_100127EC9 != 1 || dword_100127558 > 3)
                    {
                      goto LABEL_358;
                    }

                    v143 = *__error();
                    v144 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred power exception: bad report duration (%f)", *&v126);
                    if (v144)
                    {
                      v145 = v144;
                      v353 = v143;
                      v146 = CFStringGetCStringPtr(v144, 0x8000100u);
                      if (v146)
                      {
                        goto LABEL_239;
                      }

                      v147 = 2713806270;
                      goto LABEL_350;
                    }

                    v173 = sub_10003E080();
                    if (!os_log_type_enabled(v173, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_314;
                    }

                    *buf = 134217984;
                    v418 = v126;
                    v174 = v173;
                    v175 = "Unable to format: deferred power exception: bad report duration (%f)";
                  }

                  else
                  {
                    v127 = sub_100070FBC(v30, @"event_duration");
                    [v127 doubleValue];
                    v129 = v128;

                    if (v129 > 0.0)
                    {
                      v130 = sub_100070FBC(v30, @"endtime");
                      [v130 doubleValue];
                      v132 = v131;

                      if (v132 > 0.0)
                      {
                        if (byte_100127EC8)
                        {
                          v133 = *__error();
                          v134 = sub_10003E080();
                          if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
                          {
                            v135 = [v372 lastPathComponent];
                            *buf = 138543362;
                            v418 = *&v135;
                            _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_INFO, "%{public}@ deferred power exception: generating deferred report", buf, 0xCu);
                          }

                          *__error() = v133;
                        }

                        if (byte_100127EC9 == 1 && dword_100127558 <= 1)
                        {
                          v350 = *__error();
                          v136 = [v372 lastPathComponent];
                          v137 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ deferred power exception: generating deferred report", v136);

                          if (v137)
                          {
                            v138 = CFStringGetCStringPtr(v137, 0x8000100u);
                            if (v138)
                            {
                              v139 = v138;
                              v140 = 0;
                            }

                            else
                            {
                              v139 = malloc_type_calloc(0x400uLL, 1uLL, 0x5E566FDEuLL);
                              CFStringGetCString(v137, v139, 1024, 0x8000100u);
                              v140 = v139;
                            }

                            if (qword_100127ED0)
                            {
                              v215 = qword_100127ED0;
                            }

                            else
                            {
                              v215 = __stderrp;
                            }

                            fprintf(v215, "%s\n", v139);
                            if (v140)
                            {
                              free(v140);
                            }

                            CFRelease(v137);
                          }

                          else
                          {
                            v195 = sub_10003E080();
                            if (os_log_type_enabled(v195, OS_LOG_TYPE_FAULT))
                            {
                              sub_1000B8408(&v421, v372);
                            }

                            if (qword_100127ED0)
                            {
                              v196 = qword_100127ED0;
                            }

                            else
                            {
                              v196 = __stderrp;
                            }

                            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v196);
                          }

                          *__error() = v350;
                        }

                        sub_10005645C(v372, v352, v369, v363, theString, v356, v129, v126, v132);
                        goto LABEL_358;
                      }

                      if (byte_100127EC8)
                      {
                        v162 = *__error();
                        v163 = sub_10003E080();
                        if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
                        {
                          sub_1000B83B0(&v409, v410);
                        }

                        *__error() = v162;
                      }

                      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                      {
                        v143 = *__error();
                        v164 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred power exception: no endtime provided");
                        if (v164)
                        {
                          v145 = v164;
                          v353 = v143;
                          v146 = CFStringGetCStringPtr(v164, 0x8000100u);
                          if (v146)
                          {
LABEL_239:
                            v165 = v146;
                            v166 = 0;
                            goto LABEL_351;
                          }

                          v147 = 1193644374;
LABEL_350:
                          v165 = malloc_type_calloc(0x400uLL, 1uLL, v147);
                          CFStringGetCString(v145, v165, 1024, 0x8000100u);
                          v166 = v165;
LABEL_351:
                          if (qword_100127ED0)
                          {
                            v216 = qword_100127ED0;
                          }

                          else
                          {
                            v216 = __stderrp;
                          }

                          fprintf(v216, "%s\n", v165);
                          if (v166)
                          {
                            free(v166);
                          }

                          CFRelease(v145);
                          v143 = v353;
LABEL_357:
                          *__error() = v143;
                          goto LABEL_358;
                        }

                        v173 = sub_10003E080();
                        if (os_log_type_enabled(v173, OS_LOG_TYPE_FAULT))
                        {
                          sub_1000B83DC(&v407, v408);
                        }

LABEL_314:

                        if (qword_100127ED0)
                        {
                          v197 = qword_100127ED0;
                        }

                        else
                        {
                          v197 = __stderrp;
                        }

                        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v197);
                        goto LABEL_357;
                      }

LABEL_358:

LABEL_359:
                      goto LABEL_400;
                    }

                    if (byte_100127EC8 == 1)
                    {
                      v152 = *__error();
                      v153 = sub_10003E080();
                      if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134217984;
                        v418 = v129;
                        _os_log_error_impl(&_mh_execute_header, v153, OS_LOG_TYPE_ERROR, "deferred power exception: bad event duration (%f)", buf, 0xCu);
                      }

                      *__error() = v152;
                    }

                    if (byte_100127EC9 != 1 || dword_100127558 > 3)
                    {
                      goto LABEL_358;
                    }

                    v143 = *__error();
                    v154 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred power exception: bad event duration (%f)", *&v129);
                    if (v154)
                    {
                      v145 = v154;
                      v353 = v143;
                      v146 = CFStringGetCStringPtr(v154, 0x8000100u);
                      if (v146)
                      {
                        goto LABEL_239;
                      }

                      v147 = 767317854;
                      goto LABEL_350;
                    }

                    v173 = sub_10003E080();
                    if (!os_log_type_enabled(v173, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_314;
                    }

                    *buf = 134217984;
                    v418 = v129;
                    v174 = v173;
                    v175 = "Unable to format: deferred power exception: bad event duration (%f)";
                  }

                  _os_log_fault_impl(&_mh_execute_header, v174, OS_LOG_TYPE_FAULT, v175, buf, 0xCu);
                  goto LABEL_314;
                }

                if (byte_100127EC8 == 1)
                {
                  v97 = *__error();
                  v98 = sub_10003E080();
                  if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B8464(&v413, v414);
                  }

                  *__error() = v97;
                }

                if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                {
                  v100 = *__error();
                  v101 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred power exception: no process name provided");
                  if (v101)
                  {
                    v102 = v101;
                    v103 = CFStringGetCStringPtr(v101, 0x8000100u);
                    if (v103)
                    {
                      v104 = v103;
                      v105 = 0;
                    }

                    else
                    {
                      v104 = malloc_type_calloc(0x400uLL, 1uLL, 0xB0AB23E2uLL);
                      CFStringGetCString(v102, v104, 1024, 0x8000100u);
                      v105 = v104;
                    }

                    if (qword_100127ED0)
                    {
                      v178 = qword_100127ED0;
                    }

                    else
                    {
                      v178 = __stderrp;
                    }

                    fprintf(v178, "%s\n", v104);
                    if (v105)
                    {
                      free(v105);
                    }

                    CFRelease(v102);
                  }

                  else
                  {
                    v171 = sub_10003E080();
                    if (os_log_type_enabled(v171, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B8490(&v411, v412);
                    }

                    if (qword_100127ED0)
                    {
                      v172 = qword_100127ED0;
                    }

                    else
                    {
                      v172 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v172);
                  }

                  *__error() = v100;
                }

                goto LABEL_359;
              }

              if (v29 == 5)
              {
                v30 = v26;
                v64 = sub_100070FBC(v30, @"pid");
                v65 = [v64 intValue];

                if (!v65)
                {
                  if (byte_100127EC8 == 1)
                  {
                    v94 = *__error();
                    v95 = sub_10003E080();
                    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B8540(&v405, v406);
                    }

                    *__error() = v94;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v51 = *__error();
                  v96 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: no pid provided");
                  if (!v96)
                  {
                    v170 = sub_10003E080();
                    if (os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B856C(&v403, v404);
                    }

                    goto LABEL_395;
                  }

                  v53 = v96;
                  v54 = CFStringGetCStringPtr(v96, 0x8000100u);
                  if (v54)
                  {
                    goto LABEL_291;
                  }

                  v55 = 2597666092;
                  goto LABEL_387;
                }

                v66 = sub_100070FBC(v30, @"flags");
                v371 = [v66 unsignedLongLongValue];

                v67 = sub_100070FBC(v30, @"io");
                v68 = [v67 longLongValue];

                if (v68 <= 0)
                {
                  if (byte_100127EC8 == 1)
                  {
                    v112 = *__error();
                    v113 = sub_10003E080();
                    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134217984;
                      v418 = *&v68;
                      _os_log_error_impl(&_mh_execute_header, v113, OS_LOG_TYPE_ERROR, "deferred disk writes resource: bad bytes (%lld)", buf, 0xCu);
                    }

                    *__error() = v112;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v51 = *__error();
                  v114 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: bad bytes (%lld)", v68);
                  if (!v114)
                  {
                    v170 = sub_10003E080();
                    if (os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 134217984;
                      v418 = *&v68;
                      v176 = v170;
                      v177 = "Unable to format: deferred disk writes resource: bad bytes (%lld)";
                      goto LABEL_301;
                    }

                    goto LABEL_395;
                  }

                  v53 = v114;
                  v54 = CFStringGetCStringPtr(v114, 0x8000100u);
                  if (v54)
                  {
                    goto LABEL_291;
                  }

                  v55 = 2082171218;
                  goto LABEL_387;
                }

                v69 = sub_100070FBC(v30, @"duration");
                [v69 doubleValue];
                v71 = v70;

                if (v71 <= 0.0)
                {
                  if (byte_100127EC8 == 1)
                  {
                    v148 = *__error();
                    v149 = sub_10003E080();
                    if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134217984;
                      v418 = v71;
                      _os_log_error_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "deferred disk writes resource: bad duration (%f)", buf, 0xCu);
                    }

                    *__error() = v148;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v51 = *__error();
                  v150 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: bad duration (%f)", *&v71);
                  if (!v150)
                  {
                    v170 = sub_10003E080();
                    if (os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 134217984;
                      v418 = v71;
                      v176 = v170;
                      v177 = "Unable to format: deferred disk writes resource: bad duration (%f)";
                      goto LABEL_301;
                    }

                    goto LABEL_395;
                  }

                  v53 = v150;
                  v54 = CFStringGetCStringPtr(v150, 0x8000100u);
                  if (v54)
                  {
                    goto LABEL_291;
                  }

                  v55 = 3749419559;
                  goto LABEL_387;
                }

                v72 = sub_100070FBC(v30, @"endtime");
                [v72 doubleValue];
                v74 = v73;

                if (v74 <= 0.0)
                {
                  if (byte_100127EC8 == 1)
                  {
                    v159 = *__error();
                    v160 = sub_10003E080();
                    if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B84BC(&v401, v402);
                    }

                    *__error() = v159;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v51 = *__error();
                  v161 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: no endtime provided");
                  if (!v161)
                  {
                    v170 = sub_10003E080();
                    if (os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B84E8(&v399, v400);
                    }

                    goto LABEL_395;
                  }

                  v53 = v161;
                  v54 = CFStringGetCStringPtr(v161, 0x8000100u);
                  if (v54)
                  {
                    goto LABEL_291;
                  }

                  v55 = 1114910037;
                  goto LABEL_387;
                }

                v362 = v68;
                v75 = sub_100070FBC(v30, @"io_limit");
                v76 = [v75 longLongValue];

                v368 = v76;
                if (v76 < 0)
                {
                  if (byte_100127EC8 == 1)
                  {
                    v185 = *__error();
                    v186 = sub_10003E080();
                    if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134217984;
                      v418 = *&v368;
                      _os_log_error_impl(&_mh_execute_header, v186, OS_LOG_TYPE_ERROR, "deferred disk writes resource: bad io_limit_bytes (%lld)", buf, 0xCu);
                    }

                    *__error() = v185;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v51 = *__error();
                  v187 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: bad io_limit_bytes (%lld)", v368);
                  if (v187)
                  {
                    v53 = v187;
                    v54 = CFStringGetCStringPtr(v187, 0x8000100u);
                    if (v54)
                    {
                      goto LABEL_291;
                    }

                    v55 = 1949373162;
                    goto LABEL_387;
                  }

                  v170 = sub_10003E080();
                  if (!os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_395;
                  }

                  *buf = 134217984;
                  v418 = *&v368;
                  v176 = v170;
                  v177 = "Unable to format: deferred disk writes resource: bad io_limit_bytes (%lld)";
                  goto LABEL_301;
                }

                v77 = sub_100070FBC(v30, @"duration_limit");
                [v77 doubleValue];
                v79 = v78;

                if (v79 < 0.0)
                {
                  if (byte_100127EC8 == 1)
                  {
                    v80 = *__error();
                    v81 = sub_10003E080();
                    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134217984;
                      v418 = v79;
                      _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "deferred disk writes resource: bad duration_limit (%f)", buf, 0xCu);
                    }

                    *__error() = v80;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v51 = *__error();
                  v82 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: bad duration_limit (%f)", *&v79);
                  if (!v82)
                  {
                    v170 = sub_10003E080();
                    if (!os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_395;
                    }

                    *buf = 134217984;
                    v418 = v79;
                    v176 = v170;
                    v177 = "Unable to format: deferred disk writes resource: bad duration_limit (%f)";
                    goto LABEL_301;
                  }

                  v53 = v82;
                  v54 = CFStringGetCStringPtr(v82, 0x8000100u);
                  if (v54)
                  {
                    goto LABEL_291;
                  }

                  v55 = 34311375;
                  goto LABEL_387;
                }

                v357 = sub_1000710A4(v30, @"pname");
                v190 = sub_1000710A4(v30, @"action");
                if (v190)
                {
                  v191 = v190;
                  v192 = sub_100076928([v190 UTF8String]);
                  theStringa = [NSString stringWithUTF8String:v192];

                  free(v192);
                }

                else
                {
                  theStringa = 0;
                }

                v198 = v362;
                if ((v65 & 0x80000000) != 0)
                {
                  if (byte_100127EC8)
                  {
                    v210 = *__error();
                    v211 = sub_10003E080();
                    if (os_log_type_enabled(v211, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_INFO, "deferred disk writes resource: generating deferred report", buf, 2u);
                    }

                    *__error() = v210;
                  }

                  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
                  {
                    v202 = *__error();
                    v212 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred disk writes resource: generating deferred report");
                    if (!v212)
                    {
                      v228 = sub_10003E080();
                      if (os_log_type_enabled(v228, OS_LOG_TYPE_FAULT))
                      {
                        sub_1000B8514(&v397, v398);
                      }

                      goto LABEL_421;
                    }

                    v355 = v212;
                    v213 = CFStringGetCStringPtr(v212, 0x8000100u);
                    if (v213)
                    {
                      v214 = v213;
                      v351 = 0;
                    }

                    else
                    {
                      v214 = malloc_type_calloc(0x400uLL, 1uLL, 0xED37399uLL);
                      CFStringGetCString(v355, v214, 1024, 0x8000100u);
                      v351 = v214;
                    }

                    if (qword_100127ED0)
                    {
                      v234 = qword_100127ED0;
                    }

                    else
                    {
                      v234 = __stderrp;
                    }

                    fprintf(v234, "%s\n", v214);
                    if (v351)
                    {
                      free(v351);
                    }

                    CFRelease(v355);
LABEL_440:
                    *__error() = v202;
                  }
                }

                else
                {
                  if (byte_100127EC8)
                  {
                    v199 = *__error();
                    v200 = sub_10003E080();
                    if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
                    {
                      v201 = sub_10003E020(v65);
                      *buf = 136446466;
                      v418 = *&v201;
                      v419 = 1024;
                      LODWORD(v420) = v65;
                      _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_INFO, "%{public}s [%d]: deferred disk writes resource: generating deferred report", buf, 0x12u);
                    }

                    *__error() = v199;
                  }

                  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
                  {
                    v202 = *__error();
                    v203 = sub_10003E020(v65);
                    v204 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: deferred disk writes resource: generating deferred report", v203, v65);
                    if (v204)
                    {
                      v354 = v202;
                      v205 = v204;
                      v206 = CFStringGetCStringPtr(v204, 0x8000100u);
                      if (v206)
                      {
                        v207 = v206;
                        v208 = v205;
                        v209 = 0;
                      }

                      else
                      {
                        v207 = malloc_type_calloc(0x400uLL, 1uLL, 0xED37399uLL);
                        v208 = v205;
                        CFStringGetCString(v205, v207, 1024, 0x8000100u);
                        v209 = v207;
                      }

                      if (qword_100127ED0)
                      {
                        v231 = qword_100127ED0;
                      }

                      else
                      {
                        v231 = __stderrp;
                      }

                      fprintf(v231, "%s\n", v207);
                      if (v209)
                      {
                        free(v209);
                      }

                      CFRelease(v208);
                      v198 = v362;
                      v202 = v354;
                      goto LABEL_440;
                    }

                    v228 = sub_10003E080();
                    if (os_log_type_enabled(v228, OS_LOG_TYPE_FAULT))
                    {
                      v229 = sub_10003E020(v65);
                      *buf = 136315394;
                      v418 = *&v229;
                      v419 = 1024;
                      LODWORD(v420) = v65;
                      _os_log_fault_impl(&_mh_execute_header, v228, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: deferred disk writes resource: generating deferred report", buf, 0x12u);
                    }

LABEL_421:

                    if (qword_100127ED0)
                    {
                      v232 = qword_100127ED0;
                    }

                    else
                    {
                      v232 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v232);
                    goto LABEL_440;
                  }
                }

                sub_100053FF4(v65, v357, v371, theStringa, v198, v368, v71, v74, v79);

                goto LABEL_400;
              }

              if (v29 == 3)
              {
                v30 = v26;
                v31 = sub_100070FBC(v30, @"pid");
                v32 = [v31 intValue];

                if (v32)
                {
                  v33 = sub_100070FBC(v30, @"tid");
                  v34 = [v33 unsignedLongLongValue];

                  v35 = sub_100070FBC(v30, @"flags");
                  v36 = [v35 unsignedLongLongValue];

                  v37 = sub_100070FBC(v30, @"cpu");
                  [v37 doubleValue];
                  v39 = v38;

                  if (v39 <= 0.0)
                  {
                    if (byte_100127EC8 == 1)
                    {
                      v109 = *__error();
                      v110 = sub_10003E080();
                      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134217984;
                        v418 = v39;
                        _os_log_error_impl(&_mh_execute_header, v110, OS_LOG_TYPE_ERROR, "deferred cpu resource: bad cpu_used (%f)", buf, 0xCu);
                      }

                      *__error() = v109;
                    }

                    if (byte_100127EC9 != 1 || dword_100127558 > 3)
                    {
                      goto LABEL_400;
                    }

                    v51 = *__error();
                    v111 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: bad cpu_used (%f)", *&v39);
                    if (!v111)
                    {
                      v170 = sub_10003E080();
                      if (os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 134217984;
                        v418 = v39;
                        v176 = v170;
                        v177 = "Unable to format: deferred cpu resource: bad cpu_used (%f)";
                        goto LABEL_301;
                      }

                      goto LABEL_395;
                    }

                    v53 = v111;
                    v54 = CFStringGetCStringPtr(v111, 0x8000100u);
                    if (v54)
                    {
                      goto LABEL_291;
                    }

                    v55 = 3558672245;
                  }

                  else
                  {
                    v40 = sub_100070FBC(v30, @"duration");
                    [v40 doubleValue];
                    v42 = v41;

                    if (v42 <= 0.0)
                    {
                      if (byte_100127EC8 == 1)
                      {
                        v155 = *__error();
                        v156 = sub_10003E080();
                        if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 134217984;
                          v418 = v42;
                          _os_log_error_impl(&_mh_execute_header, v156, OS_LOG_TYPE_ERROR, "deferred cpu resource: bad duration (%f)", buf, 0xCu);
                        }

                        *__error() = v155;
                      }

                      if (byte_100127EC9 != 1 || dword_100127558 > 3)
                      {
                        goto LABEL_400;
                      }

                      v51 = *__error();
                      v157 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: bad duration (%f)", *&v42);
                      if (!v157)
                      {
                        v170 = sub_10003E080();
                        if (os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 134217984;
                          v418 = v42;
                          v176 = v170;
                          v177 = "Unable to format: deferred cpu resource: bad duration (%f)";
                          goto LABEL_301;
                        }

                        goto LABEL_395;
                      }

                      v53 = v157;
                      v54 = CFStringGetCStringPtr(v157, 0x8000100u);
                      if (v54)
                      {
                        goto LABEL_291;
                      }

                      v55 = 2354760207;
                    }

                    else
                    {
                      v43 = sub_100070FBC(v30, @"endtime");
                      [v43 doubleValue];
                      v45 = v44;

                      if (v45 > 0.0)
                      {
                        v46 = sub_100070FBC(v30, @"cpu_limit");
                        [v46 doubleValue];
                        v48 = v47;

                        if (v48 < 0.0)
                        {
                          if (byte_100127EC8 == 1)
                          {
                            v49 = *__error();
                            v50 = sub_10003E080();
                            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 134217984;
                              v418 = v48;
                              _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "deferred cpu resource: bad cpu_used_limit (%f)", buf, 0xCu);
                            }

                            *__error() = v49;
                          }

                          if (byte_100127EC9 != 1 || dword_100127558 > 3)
                          {
                            goto LABEL_400;
                          }

                          v51 = *__error();
                          v52 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: bad cpu_used_limit (%f)", *&v48);
                          if (v52)
                          {
                            v53 = v52;
                            v54 = CFStringGetCStringPtr(v52, 0x8000100u);
                            if (!v54)
                            {
                              v55 = 2279917455;
                              goto LABEL_387;
                            }

LABEL_291:
                            v188 = v54;
                            v189 = 0;
LABEL_388:
                            if (qword_100127ED0)
                            {
                              v226 = qword_100127ED0;
                            }

                            else
                            {
                              v226 = __stderrp;
                            }

                            fprintf(v226, "%s\n", v188);
                            if (v189)
                            {
                              free(v189);
                            }

                            CFRelease(v53);
LABEL_399:
                            *__error() = v51;
LABEL_400:

                            goto LABEL_401;
                          }

                          v170 = sub_10003E080();
                          if (os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 134217984;
                            v418 = v48;
                            v176 = v170;
                            v177 = "Unable to format: deferred cpu resource: bad cpu_used_limit (%f)";
                            goto LABEL_301;
                          }

LABEL_395:

                          if (qword_100127ED0)
                          {
                            v227 = qword_100127ED0;
                          }

                          else
                          {
                            v227 = __stderrp;
                          }

                          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v227);
                          goto LABEL_399;
                        }

                        v179 = sub_100070FBC(v30, @"duration_limit");
                        [v179 doubleValue];
                        v181 = v180;

                        if (v181 < 0.0)
                        {
                          if (byte_100127EC8 == 1)
                          {
                            v182 = *__error();
                            v183 = sub_10003E080();
                            if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 134217984;
                              v418 = v181;
                              _os_log_error_impl(&_mh_execute_header, v183, OS_LOG_TYPE_ERROR, "deferred cpu resource: bad duration_limit (%f)", buf, 0xCu);
                            }

                            *__error() = v182;
                          }

                          if (byte_100127EC9 != 1 || dword_100127558 > 3)
                          {
                            goto LABEL_400;
                          }

                          v51 = *__error();
                          v184 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: bad duration_limit (%f)", *&v181);
                          if (v184)
                          {
                            v53 = v184;
                            v54 = CFStringGetCStringPtr(v184, 0x8000100u);
                            if (v54)
                            {
                              goto LABEL_291;
                            }

                            v55 = 1782473697;
                            goto LABEL_387;
                          }

                          v170 = sub_10003E080();
                          if (!os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
                          {
                            goto LABEL_395;
                          }

                          *buf = 134217984;
                          v418 = v181;
                          v176 = v170;
                          v177 = "Unable to format: deferred cpu resource: bad duration_limit (%f)";
LABEL_301:
                          _os_log_fault_impl(&_mh_execute_header, v176, OS_LOG_TYPE_FAULT, v177, buf, 0xCu);
                          goto LABEL_395;
                        }

                        v373 = sub_1000710A4(v30, @"pname");
                        v193 = sub_1000710A4(v30, @"action");
                        if (v193)
                        {
                          v194 = v193;
                          v364 = sub_100076928([v193 UTF8String]);
                          v370 = [NSString stringWithUTF8String:v364];

                          free(v364);
                        }

                        else
                        {
                          v370 = 0;
                        }

                        if ((v32 & 0x80000000) != 0)
                        {
                          if (byte_100127EC8)
                          {
                            v367 = *__error();
                            v223 = sub_10003E080();
                            if (os_log_type_enabled(v223, OS_LOG_TYPE_INFO))
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_INFO, "deferred cpu resource: generating deferred report", buf, 2u);
                            }

                            *__error() = v367;
                          }

                          if (byte_100127EC9 == 1 && dword_100127558 <= 1)
                          {
                            v366 = *__error();
                            v220 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: generating deferred report");
                            if (v220)
                            {
                              goto LABEL_378;
                            }

                            v221 = sub_10003E080();
                            if (os_log_type_enabled(v221, OS_LOG_TYPE_FAULT))
                            {
                              sub_1000B85F0(&v387, v388);
                            }

LABEL_427:

                            if (qword_100127ED0)
                            {
                              v233 = qword_100127ED0;
                            }

                            else
                            {
                              v233 = __stderrp;
                            }

                            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v233);
LABEL_431:
                            *__error() = v366;
                          }
                        }

                        else
                        {
                          if (byte_100127EC8)
                          {
                            v365 = *__error();
                            v217 = sub_10003E080();
                            if (os_log_type_enabled(v217, OS_LOG_TYPE_INFO))
                            {
                              v218 = sub_10003E020(v32);
                              *buf = 136446466;
                              v418 = *&v218;
                              v419 = 1024;
                              LODWORD(v420) = v32;
                              _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_INFO, "%{public}s [%d]: deferred cpu resource: generating deferred report", buf, 0x12u);
                            }

                            *__error() = v365;
                          }

                          if (byte_100127EC9 == 1 && dword_100127558 <= 1)
                          {
                            v366 = *__error();
                            v219 = sub_10003E020(v32);
                            v220 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: deferred cpu resource: generating deferred report", v219, v32);
                            if (!v220)
                            {
                              v221 = sub_10003E080();
                              if (os_log_type_enabled(v221, OS_LOG_TYPE_FAULT))
                              {
                                v222 = sub_10003E020(v32);
                                *buf = 136315394;
                                v418 = *&v222;
                                v419 = 1024;
                                LODWORD(v420) = v32;
                                _os_log_fault_impl(&_mh_execute_header, v221, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: deferred cpu resource: generating deferred report", buf, 0x12u);
                              }

                              goto LABEL_427;
                            }

LABEL_378:
                            theStringb = v220;
                            v224 = CFStringGetCStringPtr(v220, 0x8000100u);
                            if (v224)
                            {
                              v225 = v224;
                              v358 = 0;
                            }

                            else
                            {
                              v225 = malloc_type_calloc(0x400uLL, 1uLL, 0x436D0618uLL);
                              CFStringGetCString(theStringb, v225, 1024, 0x8000100u);
                              v358 = v225;
                            }

                            if (qword_100127ED0)
                            {
                              v230 = qword_100127ED0;
                            }

                            else
                            {
                              v230 = __stderrp;
                            }

                            fprintf(v230, "%s\n", v225);
                            if (v358)
                            {
                              free(v358);
                            }

                            CFRelease(theStringb);
                            goto LABEL_431;
                          }
                        }

                        sub_10005255C(v32, v373, v34, v36, v370, v39, v42, v45, v48, v181);

                        goto LABEL_400;
                      }

                      if (byte_100127EC8 == 1)
                      {
                        v167 = *__error();
                        v168 = sub_10003E080();
                        if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
                        {
                          sub_1000B8598(&v391, v392);
                        }

                        *__error() = v167;
                      }

                      if (byte_100127EC9 != 1 || dword_100127558 > 3)
                      {
                        goto LABEL_400;
                      }

                      v51 = *__error();
                      v169 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: no endtime provided");
                      if (!v169)
                      {
                        v170 = sub_10003E080();
                        if (os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
                        {
                          sub_1000B85C4(&v389, v390);
                        }

                        goto LABEL_395;
                      }

                      v53 = v169;
                      v54 = CFStringGetCStringPtr(v169, 0x8000100u);
                      if (v54)
                      {
                        goto LABEL_291;
                      }

                      v55 = 485039807;
                    }
                  }
                }

                else
                {
                  if (byte_100127EC8 == 1)
                  {
                    v106 = *__error();
                    v107 = sub_10003E080();
                    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B861C(&v395, v396);
                    }

                    *__error() = v106;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 3)
                  {
                    goto LABEL_400;
                  }

                  v51 = *__error();
                  v108 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"deferred cpu resource: no pid provided");
                  if (!v108)
                  {
                    v170 = sub_10003E080();
                    if (os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B8648(&v393, v394);
                    }

                    goto LABEL_395;
                  }

                  v53 = v108;
                  v54 = CFStringGetCStringPtr(v108, 0x8000100u);
                  if (v54)
                  {
                    goto LABEL_291;
                  }

                  v55 = 4273087204;
                }

LABEL_387:
                v188 = malloc_type_calloc(0x400uLL, 1uLL, v55);
                CFStringGetCString(v53, v188, 1024, 0x8000100u);
                v189 = v188;
                goto LABEL_388;
              }

              if (byte_100127EC8 == 1)
              {
                v87 = *__error();
                v88 = sub_10003E080();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B8674(v416, v28);
                }

                *__error() = v87;
              }

              if (byte_100127EC9 != 1 || dword_100127558 > 3)
              {
                goto LABEL_401;
              }

              v59 = *__error();
              v90 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unhandled deferred report type %llu", [v28 longLongValue]);
              if (v90)
              {
                v61 = v90;
                v62 = CFStringGetCStringPtr(v90, 0x8000100u);
                if (v62)
                {
LABEL_98:
                  v91 = v62;
                  v92 = 0;
LABEL_215:
                  if (qword_100127ED0)
                  {
                    v158 = qword_100127ED0;
                  }

                  else
                  {
                    v158 = __stderrp;
                  }

                  fprintf(v158, "%s\n", v91);
                  if (v92)
                  {
                    free(v92);
                  }

                  CFRelease(v61);
                  goto LABEL_221;
                }

                v63 = 1033975112;
LABEL_214:
                v91 = malloc_type_calloc(0x400uLL, 1uLL, v63);
                CFStringGetCString(v61, v91, 1024, 0x8000100u);
                v92 = v91;
                goto LABEL_215;
              }

              v93 = sub_10003E080();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
              {
                sub_1000B86D4(v415, v28);
              }
            }

            else
            {
              if (byte_100127EC8 == 1)
              {
                v56 = *__error();
                v57 = sub_10003E080();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B8724(&v382, v383);
                }

                *__error() = v56;
              }

              if (byte_100127EC9 != 1 || dword_100127558 > 3)
              {
                goto LABEL_401;
              }

              v59 = *__error();
              v60 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Bad deferred report type value type");
              if (v60)
              {
                v61 = v60;
                v62 = CFStringGetCStringPtr(v60, 0x8000100u);
                if (v62)
                {
                  goto LABEL_98;
                }

                v63 = 988123095;
                goto LABEL_214;
              }

              v93 = sub_10003E080();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
              {
                sub_1000B8750(&v380, v381);
              }
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
LABEL_221:
            *__error() = v59;
LABEL_401:

            ++v25;
          }

          while (v25 < [v19 count]);
        }

        if (v25 < [v19 count])
        {
          if (byte_100127EC8)
          {
            v265 = *__error();
            v266 = sub_10003E080();
            if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
            {
              v267 = [v19 count];
              *buf = 134218240;
              *&v418 = &v267[-v25];
              v419 = 2048;
              v420 = v25;
              _os_log_impl(&_mh_execute_header, v266, OS_LOG_TYPE_DEFAULT, "Task expired with %lu remaining deferred reports (generated %lu)", buf, 0x16u);
            }

            *__error() = v265;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 2)
          {
            v269 = *__error();
            v270 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Task expired with %lu remaining deferred reports (generated %lu)", [v19 count] - v25, v25);
            if (v270)
            {
              v271 = v270;
              v272 = CFStringGetCStringPtr(v270, 0x8000100u);
              if (v272)
              {
                v273 = v272;
                v274 = 0;
              }

              else
              {
                v273 = malloc_type_calloc(0x400uLL, 1uLL, 0xE8D8601CuLL);
                CFStringGetCString(v271, v273, 1024, 0x8000100u);
                v274 = v273;
              }

              if (qword_100127ED0)
              {
                v307 = qword_100127ED0;
              }

              else
              {
                v307 = __stderrp;
              }

              fprintf(v307, "%s\n", v273);
              if (v274)
              {
                free(v274);
              }

              CFRelease(v271);
            }

            else
            {
              v303 = sub_10003E080();
              if (os_log_type_enabled(v303, OS_LOG_TYPE_FAULT))
              {
                sub_1000B87FC();
              }

              if (qword_100127ED0)
              {
                v304 = qword_100127ED0;
              }

              else
              {
                v304 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v304);
            }

            *__error() = v269;
          }

          if (v25)
          {
            v292 = [v19 subarrayWithRange:{v25, objc_msgSend(v19, "count") - v25}];
            v378 = 0;
            v16 = v374;
            v308 = [v292 writeToURL:v374 error:&v378];
            v309 = v378;
            v310 = v309;
            if ((v308 & 1) == 0)
            {
              v311 = *__error();
              v312 = sub_10003E080();
              if (os_log_type_enabled(v312, OS_LOG_TYPE_FAULT))
              {
                sub_1000B8890();
              }

              *__error() = v311;
              if (byte_100127EC9 == 1 && dword_100127558 <= 4)
              {
                v313 = *__error();
                v314 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to write %lu remaining deferred reports to plist: %@", [v292 count], v310);
                if (v314)
                {
                  v315 = v314;
                  v316 = CFStringGetCStringPtr(v314, 0x8000100u);
                  if (v316)
                  {
                    v317 = v316;
                    v318 = 0;
                  }

                  else
                  {
                    v317 = malloc_type_calloc(0x400uLL, 1uLL, 0x9168E54EuLL);
                    CFStringGetCString(v315, v317, 1024, 0x8000100u);
                    v318 = v317;
                  }

                  if (qword_100127ED0)
                  {
                    v324 = qword_100127ED0;
                  }

                  else
                  {
                    v324 = __stderrp;
                  }

                  fprintf(v324, "%s\n", v317);
                  if (v318)
                  {
                    free(v318);
                  }

                  CFRelease(v315);
                  v16 = v374;
                }

                else
                {
                  v322 = sub_10003E080();
                  if (os_log_type_enabled(v322, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B8910();
                  }

                  if (qword_100127ED0)
                  {
                    v323 = qword_100127ED0;
                  }

                  else
                  {
                    v323 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v323);
                }

                *__error() = v313;
              }

              v325 = +[NSFileManager defaultManager];
              v377 = 0;
              v326 = [v325 removeItemAtURL:v16 error:&v377];
              v327 = v377;

              if ((v326 & 1) == 0)
              {
                sub_1000B8990(v327);
              }

              goto LABEL_612;
            }

            v264 = 0;
            goto LABEL_614;
          }

          v264 = 0;
          v16 = v374;
          v17 = v375;
          goto LABEL_616;
        }

        v16 = v374;
        if (byte_100127EC8)
        {
          v275 = *__error();
          v276 = sub_10003E080();
          if (os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
          {
            v277 = [v19 count];
            *buf = 134217984;
            v418 = *&v277;
            _os_log_impl(&_mh_execute_header, v276, OS_LOG_TYPE_DEFAULT, "Generated %lu deferred reports", buf, 0xCu);
          }

          *__error() = v275;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 2)
        {
          v279 = *__error();
          v280 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Generated %lu deferred reports", [v19 count]);
          if (v280)
          {
            v281 = v280;
            v282 = CFStringGetCStringPtr(v280, 0x8000100u);
            if (v282)
            {
              v283 = v282;
              v284 = 0;
            }

            else
            {
              v283 = malloc_type_calloc(0x400uLL, 1uLL, 0x79EB4913uLL);
              CFStringGetCString(v281, v283, 1024, 0x8000100u);
              v284 = v283;
            }

            if (qword_100127ED0)
            {
              v319 = qword_100127ED0;
            }

            else
            {
              v319 = __stderrp;
            }

            fprintf(v319, "%s\n", v283);
            if (v284)
            {
              free(v284);
            }

            CFRelease(v281);
          }

          else
          {
            v305 = sub_10003E080();
            if (os_log_type_enabled(v305, OS_LOG_TYPE_FAULT))
            {
              sub_1000B877C(v19);
            }

            if (qword_100127ED0)
            {
              v306 = qword_100127ED0;
            }

            else
            {
              v306 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v306);
          }

          *__error() = v279;
          v16 = v374;
        }

        v320 = +[NSFileManager defaultManager];
        v379 = 0;
        v321 = [v320 removeItemAtURL:v16 error:&v379];
        v292 = v379;

        if (v321)
        {
          v264 = 1;
          goto LABEL_614;
        }

        v339 = *__error();
        v340 = sub_10003E080();
        if (os_log_type_enabled(v340, OS_LOG_TYPE_FAULT))
        {
          sub_1000B82D0();
        }

        *__error() = v339;
        v264 = 1;
        if (byte_100127EC9 != 1 || dword_100127558 > 4)
        {
          goto LABEL_613;
        }

        v295 = *__error();
        v341 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to remove deferred reports plist: %@", v292);
        if (v341)
        {
          v297 = v341;
          v298 = CFStringGetCStringPtr(v341, 0x8000100u);
          if (v298)
          {
            goto LABEL_631;
          }

          v299 = 3682427990;
LABEL_656:
          v342 = malloc_type_calloc(0x400uLL, 1uLL, v299);
          CFStringGetCString(v297, v342, 1024, 0x8000100u);
          v343 = v342;
          goto LABEL_657;
        }

        v344 = sub_10003E080();
        if (os_log_type_enabled(v344, OS_LOG_TYPE_FAULT))
        {
          sub_1000B8340();
        }

LABEL_651:

        if (qword_100127ED0)
        {
          v348 = qword_100127ED0;
        }

        else
        {
          v348 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v348);
        goto LABEL_663;
      }

      goto LABEL_31;
    }
  }

  v16 = v374;
  v17 = v375;
  if (byte_100127EC8 == 1)
  {
    v244 = *__error();
    v245 = sub_10003E080();
    if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
    {
      sub_1000B8254();
    }

    *__error() = v244;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v247 = *__error();
    v248 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Invalid deferred reports plist");
    if (v248)
    {
      v249 = v248;
      v250 = CFStringGetCStringPtr(v248, 0x8000100u);
      if (v250)
      {
        v251 = v250;
        v252 = 0;
      }

      else
      {
        v251 = malloc_type_calloc(0x400uLL, 1uLL, 0xFF775BEFuLL);
        CFStringGetCString(v249, v251, 1024, 0x8000100u);
        v252 = v251;
      }

      if (qword_100127ED0)
      {
        v289 = qword_100127ED0;
      }

      else
      {
        v289 = __stderrp;
      }

      fprintf(v289, "%s\n", v251);
      if (v252)
      {
        free(v252);
      }

      CFRelease(v249);
    }

    else
    {
      v285 = sub_10003E080();
      if (os_log_type_enabled(v285, OS_LOG_TYPE_FAULT))
      {
        sub_1000B8294();
      }

      if (qword_100127ED0)
      {
        v286 = qword_100127ED0;
      }

      else
      {
        v286 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v286);
    }

    *__error() = v247;
    v17 = v375;
  }

  v290 = +[NSFileManager defaultManager];
  v384 = 0;
  v291 = [v290 removeItemAtURL:v374 error:&v384];
  v292 = v384;

  if (v291)
  {
LABEL_553:
    v264 = 1;
    goto LABEL_615;
  }

  v293 = *__error();
  v294 = sub_10003E080();
  if (os_log_type_enabled(v294, OS_LOG_TYPE_FAULT))
  {
    sub_1000B82D0();
  }

  *__error() = v293;
  v264 = 1;
  if (byte_100127EC9 != 1 || dword_100127558 > 4)
  {
    goto LABEL_613;
  }

  v295 = *__error();
  v296 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to remove deferred reports plist: %@", v292);
  if (!v296)
  {
    v344 = sub_10003E080();
    if (os_log_type_enabled(v344, OS_LOG_TYPE_FAULT))
    {
      sub_1000B8340();
    }

    goto LABEL_651;
  }

  v297 = v296;
  v298 = CFStringGetCStringPtr(v296, 0x8000100u);
  if (!v298)
  {
    v299 = 1088578138;
    goto LABEL_656;
  }

LABEL_631:
  v342 = v298;
  v343 = 0;
LABEL_657:
  if (qword_100127ED0)
  {
    v349 = qword_100127ED0;
  }

  else
  {
    v349 = __stderrp;
  }

  fprintf(v349, "%s\n", v342);
  if (v343)
  {
    free(v343);
  }

  CFRelease(v297);
LABEL_663:
  *__error() = v295;
LABEL_612:
  v264 = 1;
LABEL_613:
  v16 = v374;
LABEL_614:
  v17 = v375;
LABEL_615:

LABEL_616:
LABEL_617:

  return v264;
}