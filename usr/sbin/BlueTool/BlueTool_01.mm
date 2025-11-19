uint64_t sub_1000140D0()
{
  v0 = sub_100044574();
  v1 = sub_100044C84();
  sub_100043FA8();
  v2 = sub_100013090();
  v3 = byte_1004ECEC0;
  v4 = qword_1004ECEC8;
  v5 = qword_1004ECED0;
  result = sub_1000131E8(v0, v1, v2);
  if (result != -1)
  {
    if (v3)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }

    return *(v7 + 96 * result + 40);
  }

  return result;
}

uint64_t sub_100014158(int a1)
{
  v2 = sub_100044574();
  v3 = sub_100044C84();
  sub_100043FA8();
  v4 = sub_100013090();
  if (byte_1004ECEC0)
  {
    v5 = &qword_1004ECEC8;
  }

  else
  {
    v5 = &qword_1004ECED0;
  }

  v6 = *v5;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  *__str = 0u;
  v77 = 0u;
  if (!v2)
  {
    return 10;
  }

  v7 = v4;
  v8 = MGCopyAnswer();
  if (v8)
  {
    v9 = v8;
    v10 = CFEqual(v8, @"Vendor") != 0;
    v11 = CFEqual(v9, @"Internal") != 0;
    CFRelease(v9);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v72 = a1;
  if (qword_1004EE428 != -1)
  {
    sub_10004C9A4();
  }

  memset(&v73, 0, sizeof(v73));
  v13 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v75 = v2;
    *&v75[8] = 2080;
    *&v75[10] = "runCommandForCurrentConfig";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "platform = %s from %s", buf, 0x16u);
    if (qword_1004EE428 != -1)
    {
      sub_10004C9B8();
    }
  }

  v14 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v75 = v3;
    *&v75[8] = 2080;
    *&v75[10] = "runCommandForCurrentConfig";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "chip = %s from %s", buf, 0x16u);
    if (qword_1004EE428 != -1)
    {
      sub_10004C9E0();
    }
  }

  v15 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v75 = v7;
    *&v75[8] = 2080;
    *&v75[10] = "runCommandForCurrentConfig";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "vendor = %s from %s", buf, 0x16u);
    if (qword_1004EE428 != -1)
    {
      sub_10004CA08();
    }
  }

  v16 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v75 = v10;
    *&v75[4] = 1024;
    *&v75[6] = v11;
    *&v75[10] = 2080;
    *&v75[12] = "runCommandForCurrentConfig";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_isVendorInstall = %d and _isInternalInstall = %d from %s", buf, 0x18u);
  }

  if (v10 || v11)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004CA30();
    }

    v17 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v75 = "runCommandForCurrentConfig";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "we are going to look for override script in %s", buf, 0xCu);
    }

    v18 = objc_autoreleasePoolPush();
    if (qword_1004EE428 != -1)
    {
      sub_10004CA58();
    }

    v19 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v75 = "runCommandForCurrentConfig";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "entered autoreleasepool from %s", buf, 0xCu);
    }

    v20 = MGCopyAnswer();
    if (qword_1004EE428 != -1)
    {
      sub_10004CA80();
    }

    v21 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v20 UTF8String];
      *buf = 136315394;
      *v75 = v22;
      *&v75[8] = 2080;
      *&v75[10] = "runCommandForCurrentConfig";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "HW Model = %s from %s", buf, 0x16u);
    }

    if (v20)
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004CAA8();
      }

      v23 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v75 = "runCommandForCurrentConfig";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "entered HW Model section from %s", buf, 0xCu);
      }

      v24 = [v20 UTF8String];
      v25 = "init";
      if (a1 != 2)
      {
        v25 = "deepsleep";
      }

      if (a1 == 1)
      {
        v25 = "boot";
      }

      snprintf(__str, 0x80uLL, "/etc/bluetool/%s.%s.script", v24, v25);
      CFRelease(v20);
      if (!stat(__str, &v73))
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004CAD0();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004CAF8();
        }

        v62 = fopen(__str, "r");
        if (qword_1004EE428 != -1)
        {
          sub_10004CB68();
        }

        v63 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *v75 = __str;
          *&v75[8] = 2080;
          *&v75[10] = "runCommandForCurrentConfig";
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "HW Model there is override script file %s and use it from %s", buf, 0x16u);
        }

        if (v62)
        {
          v64 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
          if (v64)
          {
            v65 = v64;
            while (!feof(v62))
            {
              v66 = fgets(v65, 1024, v62);
              if (v66)
              {
                v67 = v66;
                v68 = strlen(v66);
                if (v68)
                {
                  v67[v68 - 1] = 0;
                  sub_100019B78(v67, 0);
                }
              }
            }

            fclose(v62);
            free(v65);
          }

          else
          {
            fclose(v62);
          }

          objc_autoreleasePoolPop(v18);
          return 0;
        }
      }
    }

    objc_autoreleasePoolPop(v18);
    if (qword_1004EE428 != -1)
    {
      sub_10004CB90();
    }

    v26 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v75 = "runCommandForCurrentConfig";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "didn't find HWModel override script. Continue to look for platform override script from %s", buf, 0xCu);
    }

    v27 = "init";
    if (a1 != 2)
    {
      v27 = "deepsleep";
    }

    if (a1 == 1)
    {
      v27 = "boot";
    }

    snprintf(__str, 0x80uLL, "/etc/bluetool/%s.%s.script", v2, v27);
    if (!stat(__str, &v73))
    {
      v55 = fopen(__str, "r");
      if (qword_1004EE428 != -1)
      {
        sub_10004CBB8();
      }

      v56 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *v75 = __str;
        *&v75[8] = 2080;
        *&v75[10] = "runCommandForCurrentConfig";
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "platform there is override script file %s and use it from %s", buf, 0x16u);
      }

      if (v55)
      {
        v57 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
        if (v57)
        {
          v58 = v57;
          while (!feof(v55))
          {
            v59 = fgets(v58, 1024, v55);
            if (v59)
            {
              v60 = v59;
              v61 = strlen(v59);
              if (v61)
              {
                v60[v61 - 1] = 0;
                sub_100019B78(v60, 0);
              }
            }
          }

          fclose(v55);
          free(v58);
        }

        else
        {
          fclose(v55);
        }

        return 0;
      }
    }
  }

  if (qword_1004EE428 != -1)
  {
    sub_10004CBE0();
  }

  v28 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v75 = "runCommandForCurrentConfig";
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "didn't find platform override script either. Will use builtinScript in firmwareList array from %s", buf, 0xCu);
  }

  v29 = sub_1000131E8(v2, v3, v7);
  if (qword_1004EE428 != -1)
  {
    sub_10004CC08();
  }

  v30 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v75 = v29;
    *&v75[4] = 2080;
    *&v75[6] = "runCommandForCurrentConfig";
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "getFirmwarePosForPlatform fwPos = %d from %s", buf, 0x12u);
    v31 = qword_1004EE428;
    if (v29 != -1)
    {
      goto LABEL_77;
    }

    if (qword_1004EE428 != -1)
    {
      sub_10004CC30();
    }
  }

  else if (v29 != -1)
  {
    goto LABEL_79;
  }

  v32 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v75 = "runCommandForCurrentConfig";
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "entered fwPos == NO_FW_FOUND from %s", buf, 0xCu);
  }

  v71 = v6;
  v33 = 0;
  do
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004CC58();
    }

    v34 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v75 = v33;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "No WiFi - Iteration %d", buf, 8u);
    }

    usleep(0x7A120u);
    v35 = sub_100043FA8();
    v36 = sub_100013090();
    v37 = sub_1000131E8(v2, v3, v36);
    v29 = v37;
    if (v33 > 8)
    {
      break;
    }

    if (v35 != -1)
    {
      break;
    }

    ++v33;
  }

  while (v37 == -1);
  v31 = qword_1004EE428;
  if (v37 != -1)
  {
    v6 = v71;
LABEL_77:
    if (v31 != -1)
    {
      sub_10004CC80();
    }

LABEL_79:
    v38 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v75 = v29;
      *&v75[4] = 2080;
      *&v75[6] = "runCommandForCurrentConfig";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "final fwPos = %d from %s", buf, 0x12u);
    }

    switch(v72)
    {
      case 3:
        if (qword_1004EE428 != -1)
        {
          sub_10004CCA8();
        }

        v50 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "******************************", buf, 2u);
          if (qword_1004EE428 != -1)
          {
            sub_10004CCD0();
          }
        }

        v51 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v75 = v29;
          *&v75[4] = 2080;
          *&v75[6] = "runCommandForCurrentConfig";
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "running deepsleep builtin script in firmwareList array at fwPos %d from %s", buf, 0x12u);
          if (qword_1004EE428 != -1)
          {
            sub_10004CCF8();
          }
        }

        v52 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "******************************", buf, 2u);
          if (qword_1004EE428 != -1)
          {
            sub_10004CD20();
          }
        }

        v53 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          v54 = *(v6 + 96 * v29 + 80);
          *buf = 134218242;
          *v75 = v54;
          *&v75[8] = 2080;
          *&v75[10] = "runCommandForCurrentConfig";
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "firmwareList at fwPos has deepsleep function pointer at %p from %s", buf, 0x16u);
        }

        v70 = *(v6 + 96 * v29 + 80);
        if (v70)
        {
          return v70();
        }

        break;
      case 2:
        if (qword_1004EE428 != -1)
        {
          sub_10004CD48();
        }

        v45 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "******************************", buf, 2u);
          if (qword_1004EE428 != -1)
          {
            sub_10004CD70();
          }
        }

        v46 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v75 = v29;
          *&v75[4] = 2080;
          *&v75[6] = "runCommandForCurrentConfig";
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "running init builtin script in firmwareList array at fwPos %d from %s", buf, 0x12u);
          if (qword_1004EE428 != -1)
          {
            sub_10004CD98();
          }
        }

        v47 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "******************************", buf, 2u);
          if (qword_1004EE428 != -1)
          {
            sub_10004CDC0();
          }
        }

        v48 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          v49 = *(v6 + 96 * v29 + 72);
          *buf = 134218242;
          *v75 = v49;
          *&v75[8] = 2080;
          *&v75[10] = "runCommandForCurrentConfig";
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "firmwareList at fwPos has init function pointer %p from %s", buf, 0x16u);
        }

        v70 = *(v6 + 96 * v29 + 72);
        if (v70)
        {
          return v70();
        }

        break;
      case 1:
        if (qword_1004EE428 != -1)
        {
          sub_10004CDE8();
        }

        v39 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "******************************", buf, 2u);
          if (qword_1004EE428 != -1)
          {
            sub_10004CE10();
          }
        }

        v40 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v75 = v29;
          *&v75[4] = 2080;
          *&v75[6] = "runCommandForCurrentConfig";
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "running boot builtin script in firmwareList array at fwPos %d from %s", buf, 0x12u);
          if (qword_1004EE428 != -1)
          {
            sub_10004CE38();
          }
        }

        v41 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "******************************", buf, 2u);
          if (qword_1004EE428 != -1)
          {
            sub_10004CE60();
          }
        }

        v42 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          v43 = *(v6 + 96 * v29 + 64);
          v44 = v29;
          *buf = 67109634;
          *v75 = v29;
          *&v75[4] = 2048;
          *&v75[6] = v43;
          *&v75[14] = 2080;
          *&v75[16] = "runCommandForCurrentConfig";
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "firmwareList at fwPos %d has boot function pointer %p from %s", buf, 0x1Cu);
        }

        else
        {
          v44 = v29;
        }

        v70 = *(v6 + 96 * v44 + 64);
        if (!v70)
        {
          return 5;
        }

        return v70();
      default:
        return 15;
    }

    return 5;
  }

  if (qword_1004EE428 != -1)
  {
    sub_10004CE88();
  }

  v69 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *v75 = v2;
    *&v75[8] = 2080;
    *&v75[10] = v3;
    *&v75[18] = 2080;
    *&v75[20] = v36;
    _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Error - no firmware for this platform.  Looking for %s %s %s", buf, 0x20u);
  }

  if (v35 == -1)
  {
    return 13;
  }

  else
  {
    return 10;
  }
}

uint64_t sub_1000158C8(uint64_t a1, uint64_t a2, int a3)
{
  if (!qword_1004ED6F0)
  {
    qword_1004ED6F0 = objc_alloc_init(NSMutableDictionary);
  }

  v6 = [[NSString alloc] initWithUTF8String:a1];
  if (![qword_1004ED6F0 objectForKey:v6])
  {
    v7 = [[NSData alloc] initWithBytes:a2 length:a3];
    [qword_1004ED6F0 setObject:v7 forKey:v6];
    if (qword_1004EE428 != -1)
    {
      sub_10004CEB0();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
    {
      sub_10004CEC4();
    }
  }

  return 0;
}

uint64_t sub_1000159F8(uint64_t a1, void *a2)
{
  v3 = [NSString stringWithUTF8String:a1];
  v4 = [qword_1004ED6F0 objectForKey:v3];
  if (v4)
  {
    memcpy(a2, [v4 bytes], objc_msgSend(v4, "length"));
    return 0;
  }

  else
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004CF38();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004CF4C();
    }

    return 22;
  }
}

uint64_t sub_100015AF4(int a1, void *a2)
{
  v4 = sub_100044574();
  v5 = sub_100044C84();
  sub_100043FA8();
  v6 = sub_100013090();
  v7 = sub_10004499C();
  v8 = sub_1000131E8(v4, v5, v6);
  if (v8 == -1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004D5AC();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004D5C0();
    }

    return 22;
  }

  v9 = v8;
  if (byte_1004ECEC0)
  {
    v10 = &qword_1004ECEC8;
  }

  else
  {
    v10 = &qword_1004ECED0;
  }

  if (!*(*v10 + 96 * v8 + 32))
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004D564();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004D578();
    }

    return 22;
  }

  bzero(byte_1004ED6F8, 0x400uLL);
  __strlcat_chk();
  if (qword_1004EE428 != -1)
  {
    sub_10004CFBC();
  }

  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
  {
    sub_10004CFD0();
  }

  if (sub_1000165B8(v9, v7) == -1)
  {
    if (v7)
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004D06C();
      }

      v19 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = v7;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "SKU=%s specific PTB file not found. Attempting to load default (non-SKU) PTB file", buf, 0xCu);
      }

      if (sub_1000165B8(v9, "R") == -1)
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004D0BC();
        }

        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
        {
          sub_10004D0E4();
        }

        return 22;
      }

      if (qword_1004EE428 != -1)
      {
        sub_10004D094();
      }

      v20 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = byte_1004ED6F8;
        v12 = "Loaded default non-SKU PTB file: %s";
        v13 = v20;
        v14 = 12;
        goto LABEL_15;
      }
    }

    else
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004D164();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004D18C();
      }

      if (sub_1000165B8(v9, "R") == -1)
      {
        return 22;
      }

      if (qword_1004EE428 != -1)
      {
        sub_10004D20C();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004D234();
      }
    }
  }

  else
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004D044();
    }

    v11 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = v7;
      v24 = 2080;
      v25 = byte_1004ED6F8;
      v12 = "Loaded SKU=%s PTB file: %s";
      v13 = v11;
      v14 = 22;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
    }
  }

  if (strlen(byte_1004ED6F8) <= 0x1E)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004D508();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004D530();
    }

    return 22;
  }

  v15 = open(byte_1004ED6F8, 0);
  if (v15 < 0)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004D4AC();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004D4D4();
    }

    return 22;
  }

  v16 = v15;
  memset(&v21, 0, sizeof(v21));
  if (fstat(v15, &v21) == -1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004D450();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004D478();
      if (!v16)
      {
        return 22;
      }

      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (LODWORD(v21.st_size) != a1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004D2B4();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004D2DC();
      if (!v16)
      {
        return 22;
      }

      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (read(v16, a2, SLODWORD(v21.st_size)) != a1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004D310();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004D338();
      if (!v16)
      {
        return 22;
      }

      goto LABEL_78;
    }

LABEL_77:
    if (!v16)
    {
      return 22;
    }

LABEL_78:
    close(v16);
    return 22;
  }

  close(v16);
  if (qword_1004EE428 != -1)
  {
    sub_10004D3A0();
  }

  v17 = qword_1004EE430;
  result = os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    sub_10004D3C8(a2, a1, v17);
    return 0;
  }

  return result;
}

uint64_t sub_1000165B8(int a1, const char *a2)
{
  if (byte_1004ECEC0)
  {
    v2 = &qword_1004ECEC8;
  }

  else
  {
    v2 = &qword_1004ECED0;
  }

  v3 = "R";
  if (a2)
  {
    v3 = a2;
  }

  v4 = [NSString stringWithFormat:@"%sK_%s_*.ptb", *(*v2 + 96 * a1 + 32), v3];
  v13 = 0;
  v5 = -[NSArray filteredArrayUsingPredicate:]([+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:@"/usr/share/firmware/bluetooth/", &v13], "filteredArrayUsingPredicate:", +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"SELF like %@", v4));
  if ([(NSArray *)v5 count])
  {
    v6 = [(NSArray *)v5 objectAtIndex:0];
    [v6 UTF8String];
    __strlcat_chk();
    if (qword_1004EE428 != -1)
    {
      sub_10004D5F4();
    }

    v7 = qword_1004EE430;
    result = os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO);
    if (result)
    {
      v9 = [(NSString *)v4 UTF8String];
      v10 = [v6 UTF8String];
      *buf = 136315394;
      v15 = v9;
      v16 = 2080;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "PTB file matching %s is %s", buf, 0x16u);
      return 0;
    }
  }

  else
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004D61C();
    }

    v11 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
    {
      v12 = [(NSString *)v4 UTF8String];
      *buf = 136315394;
      v15 = v12;
      v16 = 2080;
      v17 = &unk_1004ED6F8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "No PTB file matching %s in %s", buf, 0x16u);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_1000169E4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100016A18(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

uint64_t sub_100016A38()
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  v0 = time(0);
  time(0);
  do
  {
    off_1004EE3F8(qword_1004EE3C8, v6, 258, &v5);
    fwrite("Receive Test Statistics: ", 0x19uLL, 1uLL, __stderrp);
    if (v5)
    {
      v1 = 0;
      v2 = 0;
      do
      {
        fprintf(__stderrp, "%02X ", *(v6 + v1));
        v1 = ++v2;
      }

      while (v5 > v2);
    }

    fputc(10, __stderrp);
  }

  while (time(0) - v0 < qword_1004ECA28 && byte_1004EDEF8 == 0);
  return 0;
}

uint64_t sub_100016BA8(void *a1, _BYTE *a2, int a3)
{
  if (dword_1004EE3D0)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v11 = 0;
    off_1004EE3F0(qword_1004EE3C8, &unk_10005235E, 3);
    do
    {
      off_1004EE3F8(qword_1004EE3C8, v12, 258, &v11);
    }

    while (LOBYTE(v12[0]) != 14 && BYTE3(v12[0]) != 12 && BYTE4(v12[0]) != 20);
    if (a3)
    {
      printf("Local Name: %s\n", v12 + 6);
    }

    if (a1)
    {
      v8 = strlen(v12 + 6);
      memcpy(a1, v12 + 6, v8);
    }

    if (a2)
    {
      v9 = strlen(v12 + 6);
      result = 0;
      *a2 = v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    fwrite("Device not open yet, use 'device' to open it.\n", 0x2EuLL, 1uLL, __stderrp);
    return 3;
  }

  return result;
}

uint64_t sub_100016D1C(_WORD *a1, _BYTE *a2, _WORD *a3, _BYTE *a4, _WORD *a5, int a6)
{
  if (!dword_1004EE3D0)
  {
    fwrite("Device not open yet, use 'device' to open it.\n", 0x2EuLL, 1uLL, __stderrp);
    return 3;
  }

  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  off_1004EE3F0(qword_1004EE3C8, &unk_10005235B, 3);
  do
  {
    off_1004EE3F8(qword_1004EE3C8, v18, 258, &v17);
  }

  while (LOBYTE(v18[0]) != 14 && BYTE3(v18[0]) != 16 && BYTE4(v18[0]) != 1);
  if (a6)
  {
    if (WORD5(v18[0]) > 0xEu)
    {
      if (WORD5(v18[0]) == 76)
      {
        v14 = "Apple";
        goto LABEL_23;
      }

      if (WORD5(v18[0]) == 15)
      {
        v14 = "Broadcom";
        goto LABEL_23;
      }
    }

    else
    {
      if (WORD5(v18[0]) == 10)
      {
        v14 = "CSR";
        goto LABEL_23;
      }

      if (WORD5(v18[0]) == 13)
      {
        v14 = "Texas Instruments";
LABEL_23:
        printf("Radio Manufacturer:            %s\n", v14);
        if (BYTE6(v18[0]) <= 8uLL)
        {
          v16 = off_1004EC9E0[BYTE6(v18[0])];
        }

        else
        {
          v16 = "NULL";
        }

        printf("Bluetooth HCI Specification:   %s\n", v16);
        printf("Bluetooth HCI Revision:        0x%02X%02X\n", BYTE7(v18[0]), BYTE8(v18[0]));
        printf("Bluetooth LMP Version:         0x%02X\n", BYTE9(v18[0]));
        printf("Bluetooth LMP Subversion:      0x%02X%02X\n", BYTE13(v18[0]), BYTE12(v18[0]));
        goto LABEL_27;
      }
    }

    v14 = "<Unknown>";
    goto LABEL_23;
  }

LABEL_27:
  if (a1)
  {
    *a1 = WORD5(v18[0]);
  }

  if (a2)
  {
    *a2 = BYTE6(v18[0]);
  }

  if (a3)
  {
    *a3 = *(v18 + 7);
  }

  if (a4)
  {
    *a4 = BYTE9(v18[0]);
  }

  result = 0;
  if (a5)
  {
    *a5 = WORD6(v18[0]);
  }

  return result;
}

BOOL sub_100016F80(int a1, const char **a2, char **a3)
{
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v41 = 0;
  if (a1 >= 2)
  {
    v6 = a2[1];
    if (*v6 == 45 && v6[1] == 104 && !v6[2])
    {
      fwrite("usage: hci <command>\n", 0x15uLL, 1uLL, __stderrp);
      fwrite("where <command> is one of:\n", 0x1BuLL, 1uLL, __stderrp);
      fprintf(__stderrp, "  %-16s : %s\n", "info", "Sends read local version to device");
      fprintf(__stderrp, "  %-16s : %s\n", "reset", "Sends reset command to device");
      fprintf(__stderrp, "  %-16s : %s\n", "dut", "Places device into dut test mode");
      fprintf(__stderrp, "  %-16s : %s\n", "sef", "Set event filter (Type, Condition, AutoAccept)");
      fprintf(__stderrp, "  %-16s : %s\n", "wse", "Write scan enable (Scan)");
      fprintf(__stderrp, "  %-16s : %s\n", "cmd", "Send HCI command (Command, Param1, Param2, Param3, ..., ParamN)");
      fprintf(__stderrp, "  %-16s : %s\n", "localName", "Sends the read local name command to device");
      fprintf(__stderrp, "  %-16s : %s\n", "rxTest", "Configure test time, run test or abort the test");
      return 0;
    }
  }

  if (!dword_1004EE3D0)
  {
    fwrite("Device not open yet, use 'device' to open it.\n", 0x2EuLL, 1uLL, __stderrp);
    return 0;
  }

  v7 = a2[1];
  if (!strcmp(v7, "reset"))
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004D66C();
    }

    v9 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "bluetool_command_hci";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ready to send HCI_Reset command from %s", buf, 0xCu);
    }

    off_1004EE3F0(qword_1004EE3C8, &unk_100052358, 3);
    do
    {
      do
      {
        off_1004EE3F8(qword_1004EE3C8, v43, 258, &v41);
      }

      while (LOBYTE(v43[0]) != 14);
    }

    while (BYTE3(v43[0]) != 3 || BYTE4(v43[0]) != 12);
    if (BYTE5(v43[0]))
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004D680();
      }

      v11 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004D6A8(v11);
      }

      if (v41)
      {
        v12 = 0;
        v13 = qword_1004EE428;
        do
        {
          if (v13 != -1)
          {
            sub_10004D6EC();
          }

          v14 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
          {
            v15 = *(v43 + v12);
            *buf = 67109120;
            *&buf[4] = v15;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, " %02X", buf, 8u);
            v13 = qword_1004EE428;
          }

          else
          {
            v13 = -1;
          }

          ++v12;
        }

        while (v12 < v41);
      }

      goto LABEL_56;
    }

    if (qword_1004EE428 != -1)
    {
      sub_10004D714();
    }

    v16 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "bluetool_command_hci";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "HCI_Reset completed from %s", buf, 0xCu);
    }

    v17 = "Issued HCI Reset";
LABEL_55:
    puts(v17);
    goto LABEL_56;
  }

  if (!strcmp(v7, "localName"))
  {
    sub_100016BA8(0, 0, 1);
    goto LABEL_56;
  }

  if (!strcmp(v7, "info"))
  {
    sub_100016D1C(0, 0, 0, 0, 0, 1);
    off_1004EE3F0(qword_1004EE3C8, &unk_100052361, 3);
    do
    {
      off_1004EE3F8(qword_1004EE3C8, v43, 258, &v41);
    }

    while (LOBYTE(v43[0]) != 14);
    printf("Bluetooth Address:             %02x:%02x:%02x:%02x:%02x:%02x\n", BYTE11(v43[0]), BYTE10(v43[0]), BYTE9(v43[0]), BYTE8(v43[0]), BYTE7(v43[0]), BYTE6(v43[0]));
    goto LABEL_56;
  }

  if (!strcmp(v7, "dut"))
  {
    off_1004EE3F0(qword_1004EE3C8, &unk_100052364, 3);
    do
    {
      off_1004EE3F8(qword_1004EE3C8, v43, 258, &v41);
    }

    while (LOBYTE(v43[0]) != 14);
    v17 = "DUT Mode Enabled!";
    goto LABEL_55;
  }

  if (!strcmp(v7, "sef"))
  {
    *buf = 0;
    if (a1 < 5)
    {
      return 0;
    }

    LOBYTE(v43[0]) = strtol(a2[2], buf, 0);
    BYTE1(v43[0]) = strtol(a2[3], buf, 0);
    BYTE2(v43[0]) = strtol(a2[4], buf, 0);
    sub_100017C50(3077, v43, 3uLL, v43, &v41, 14);
    fwrite("Set Event Filter Response: ", 0x1BuLL, 1uLL, __stderrp);
    if (v41)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        fprintf(__stderrp, "%02X ", *(v43 + v24));
        v24 = ++v25;
      }

      while (v41 > v25);
    }

LABEL_99:
    fputc(10, __stderrp);
    goto LABEL_56;
  }

  if (!strcmp(v7, "rfc"))
  {
    *buf = 0;
    if (a1 < 3)
    {
      return 1;
    }

    v28 = strtol(a2[2], buf, 0);
    LOBYTE(v43[0]) = v28;
    if (v28 == 49)
    {
      if (a1 < 7)
      {
        return 1;
      }

      BYTE1(v43[0]) = strtol(a2[3], buf, 0);
      BYTE2(v43[0]) = strtol(a2[4], buf, 0);
      BYTE3(v43[0]) = strtol(a2[5], buf, 0);
      BYTE4(v43[0]) = strtol(a2[6], buf, 0);
      v29 = LOBYTE(v43[0]);
      v30 = 5;
    }

    else
    {
      v29 = v28;
      v30 = 1;
    }

    if (v29 == 80)
    {
      if (a1 < 6)
      {
        return 1;
      }

      BYTE1(v43[0]) = strtol(a2[3], buf, 0);
      BYTE2(v43[0]) = strtol(a2[4], buf, 0);
      BYTE3(v43[0]) = strtol(a2[5], buf, 0);
      v30 = 4;
    }

    sub_100017C50(64795, v43, v30, v43, &v41, 14);
    fwrite("Factory Calibration Read Table Response: ", 0x29uLL, 1uLL, __stderrp);
    if (v41)
    {
      for (i = 0; i < v41; ++i)
      {
        fprintf(__stderrp, "%02X ", *(v43 + i));
      }
    }

    goto LABEL_99;
  }

  if (!strcmp(v7, "wse"))
  {
    *buf = 0;
    if (a1 < 3)
    {
      return 0;
    }

    LOBYTE(v43[0]) = strtol(a2[2], buf, 0);
    sub_100017C50(3098, v43, 1uLL, v43, &v41, 14);
    fwrite("Write Scan Enable Response: ", 0x1CuLL, 1uLL, __stderrp);
    if (v41)
    {
      v26 = 0;
      v27 = 0;
      do
      {
        fprintf(__stderrp, "%02X ", *(v43 + v26));
        v26 = ++v27;
      }

      while (v41 > v27);
    }

    goto LABEL_99;
  }

  if (!strcmp(v7, "rxTest"))
  {
    *buf = 0;
    if (a1 >= 3)
    {
      v31 = a2[2];
      if (*v31 != 45)
      {
        goto LABEL_56;
      }

      if (v31[1] == 116 && !v31[2])
      {
        qword_1004ECA28 = strtol(a2[3], buf, 0);
        v17 = "Set test time";
      }

      else
      {
        if (v31[1] != 97 || v31[2])
        {
          goto LABEL_56;
        }

        byte_1004EDEF8 = 1;
        v17 = "Abort Receiving Rx test events";
      }

      goto LABEL_55;
    }

    return 0;
  }

  if (!strcmp(v7, "cmd"))
  {
    *buf = 0;
    if (a1 < 3)
    {
      return 0;
    }

    v33 = strtol(a2[2], buf, 0);
    if (v33)
    {
      if (a1 == 3)
      {
        v34 = 0;
      }

      else
      {
        v35 = 0;
        v36 = 3;
        do
        {
          *(v43 + v35++) = strtol(a2[v36++], buf, 0);
        }

        while (a1 > v36);
        v34 = v35;
      }

      sub_100017C50(v33, v43, v34, v43 + 2, &v41, 14);
      LOBYTE(v43[0]) = 14;
      BYTE1(v43[0]) = v41;
      v41 += 2;
      fwrite("HCI Command Response: ", 0x16uLL, 1uLL, __stderrp);
      if (v41)
      {
        v37 = 0;
        v38 = 0;
        do
        {
          fprintf(__stderrp, "%02X ", *(v43 + v37));
          v37 = ++v38;
        }

        while (v41 > v38);
      }

      fputc(10, __stderrp);
      if (v33 == 64594 && pthread_create(&qword_1004EDFC0, 0, sub_100016A38, 0))
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004D644();
        }

        v39 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Create thread failed\n", v40, 2u);
        }
      }
    }
  }

  else
  {
    fwrite("Invalid HCI command!\n", 0x15uLL, 1uLL, __stderrp);
  }

LABEL_56:
  result = 0;
  if (!a3 || !v41)
  {
    return result;
  }

  v18 = malloc_type_malloc(5 * v41, 0x92623E79uLL);
  *a3 = v18;
  if (v18)
  {
    v19 = v18;
    v20 = v41;
    if (v41)
    {
      v21 = 0;
      v22 = v18;
      do
      {
        snprintf(v22, 5 * v20, "0x%02x", *(v43 + v21));
        v22[4] = 32;
        ++v21;
        v20 = v41;
        v22 += 5;
      }

      while (v21 < v41);
      v20 = 5 * v41;
    }

    result = 0;
    v19[v20 - 1] = 0;
    return result;
  }

  if (qword_1004EE428 != -1)
  {
    sub_10004D73C();
  }

  v23 = qword_1004EE430;
  result = os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10004D764(v23);
    return 0;
  }

  return result;
}

uint64_t sub_100017C50(__int16 a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, int a6)
{
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  __n_2 = 0u;
  if (a3 < 0x100)
  {
    v6 = a4;
    v12 = 0;
    v13 = a1;
    __n_1 = a3;
    __memcpy_chk();
    off_1004EE3F0(qword_1004EE3C8, &v13, a3 + 3);
    if (v6)
    {
      do
      {
        off_1004EE3F8(qword_1004EE3C8, &v13, 258, &v12);
      }

      while (v13 != a6);
      v10 = HIBYTE(v13);
      memcpy(v6, &__n_1, HIBYTE(v13));
      v6 = 0;
      *a5 = v10;
    }
  }

  else
  {
    v6 = 1;
    fwrite("Invalid packet size specified. Ignoring command.", 0x30uLL, 1uLL, __stderrp);
  }

  return v6;
}

uint64_t sub_100017E48()
{
  result = sub_10001CB28();
  if (!result)
  {
    strcpy(&xmmword_1004EDFC8, "AppleBT HCI device");
    dword_1004EE420 = 0;
    off_1004EE3D8 = sub_100017F28;
    off_1004EE3E0 = sub_100017F30;
    off_1004EE3E8 = sub_10001800C;
    off_1004EE3F0 = sub_100018014;
    off_1004EE3F8 = sub_1000180DC;
    off_1004EE408 = sub_1000182E8;
    off_1004EE400 = sub_10001830C;
    qword_1004EE3C8 = 0;
    dword_1004EE3D0 = 1;
    off_1004EE410 = nullsub_7;
    off_1004EE418 = nullsub_8;
  }

  return result;
}

uint64_t sub_100017F30(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 1;
  if (a3 <= 0x406)
  {
    v4 = a3;
    bzero(v11, 0x406uLL);
    v8 = v4;
    v5 = byte_1004EDEF9++;
    v9 = v5;
    v10 = 0;
    __memcpy_chk();
    inputStruct[0] = 0x10700000100;
    inputStruct[1] = &v8;
    if (sub_10001D568(1, inputStruct))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_100018014(uint64_t a1, uint64_t a2, unint64_t a3)
{
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  result = 1;
  v7 = 0u;
  if (a3 <= 0x103)
  {
    v6 = 1;
    v5 = __memcpy_chk();
    return sub_100017F30(v5, &v6, a3 + 1);
  }

  return result;
}

uint64_t sub_1000180DC(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4)
{
  bzero(&v17, 0x40AuLL);
  outputStruct = 0;
  inputStruct[0] = 0x10600000105;
  inputStruct[1] = &v17;
  v7 = sub_10001D9B0(1, inputStruct, &outputStruct);
  v8 = byte_1004EDEFA++;
  if (v18[0] != v8)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004D7A8();
    }

    v9 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004D7D0(v18, v9);
    }

    v10 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004D8A4(v18, v10);
    }

    byte_1004EDEFA = v18[0] + 1;
  }

  if (BYTE4(outputStruct) == 1)
  {
    v11 = v17 - 1;
    *a4 = v11;
    if (v11 > a3)
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004D9C8();
      }

      v12 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004D9F0(a4, a3, v12);
      }

      *a4 = a3;
      v11 = a3;
    }

    memcpy(a2, v19, v11);
  }

  else
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004D924();
    }

    v13 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004D94C(&outputStruct + 4, v13);
    }

    return 0xFFFFFFFFLL;
  }

  return v7;
}

uint64_t sub_1000182E8()
{
  result = sub_10001D15C();
  dword_1004EE3D0 = 0;
  return result;
}

uint64_t sub_10001840C()
{
  if (dword_1004EDF00)
  {
    return 0;
  }

  if (byte_1004EDF04)
  {
    return 5;
  }

  v1 = IOServiceNameMatching("AppleBTMgmt");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (!MatchingService)
  {
    byte_1004EDF04 = 1;
    return 5;
  }

  v3 = MatchingService;
  if (IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_1004EDF00))
  {
    if (qword_1004EDF08 != -1)
    {
      sub_10004DA7C();
    }

    if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
    {
      sub_10004DA90();
    }

    v0 = 5;
  }

  else
  {
    if (qword_1004EDF08 != -1)
    {
      sub_10004DAF8();
    }

    v4 = qword_1004EDF10;
    v0 = 0;
    if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "AppleBTMgmt";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "applebt_mgmt_connect: Service %s connected!\n", &v6, 0xCu);
      v0 = 0;
    }
  }

  IOObjectRelease(v3);
  return v0;
}

uint64_t sub_1000185FC()
{
  if (qword_1004EDF08 != -1)
  {
    sub_10004DB0C();
  }

  v0 = qword_1004EDF10;
  if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "applebt_power_on: Calling method kAppleBTMgmtPowerOn!\n", buf, 2u);
  }

  v1 = sub_10001840C();
  if (v1)
  {
    v2 = v1;
    if (qword_1004EDF08 != -1)
    {
      sub_10004DB20();
    }

    if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
    {
      sub_10004DB48();
    }
  }

  else
  {
    v3 = IOConnectCallMethod(dword_1004EDF00, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v3)
    {
      v2 = v3;
      if (qword_1004EDF08 != -1)
      {
        sub_10004DBB0();
      }

      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
      {
        sub_10004DBD8();
      }
    }

    else
    {
      if (qword_1004EDF08 != -1)
      {
        sub_10004DC40();
      }

      v4 = qword_1004EDF10;
      v2 = 0;
      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "applebt_power_on: BT device powered on/reset!\n", v6, 2u);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_100018848()
{
  v0 = sub_10001840C();
  if (v0)
  {
    v1 = v0;
    if (qword_1004EDF08 != -1)
    {
      sub_10004DC68();
    }

    if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
    {
      sub_10004DC7C();
    }
  }

  else
  {
    v2 = IOConnectCallMethod(dword_1004EDF00, 1u, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v2)
    {
      v1 = v2;
      if (qword_1004EDF08 != -1)
      {
        sub_10004DCE4();
      }

      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
      {
        sub_10004DCF8();
      }
    }

    else
    {
      if (qword_1004EDF08 != -1)
      {
        sub_10004DD60();
      }

      v3 = qword_1004EDF10;
      v1 = 0;
      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "applebt_power_off: BT device powered off!\n", buf, 2u);
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_100018A18()
{
  v0 = sub_10001840C();
  if (v0)
  {
    v1 = v0;
    if (qword_1004EDF08 != -1)
    {
      sub_10004DD74();
    }

    if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
    {
      sub_10004DD88();
    }
  }

  else
  {
    v2 = IOConnectCallMethod(dword_1004EDF00, 8u, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v2)
    {
      v1 = v2;
      if (qword_1004EDF08 != -1)
      {
        sub_10004DDF0();
      }

      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
      {
        sub_10004DE04();
      }
    }

    else
    {
      if (qword_1004EDF08 != -1)
      {
        sub_10004DE6C();
      }

      v3 = qword_1004EDF10;
      v1 = 0;
      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "applebt_power_sleep: BT device powered Sleep!\n", buf, 2u);
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_100018BE8()
{
  v0 = sub_10001840C();
  if (v0)
  {
    v1 = v0;
    if (qword_1004EDF08 != -1)
    {
      sub_10004DE80();
    }

    if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
    {
      sub_10004DE94();
    }
  }

  else
  {
    v2 = IOConnectCallMethod(dword_1004EDF00, 9u, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v2)
    {
      v1 = v2;
      if (qword_1004EDF08 != -1)
      {
        sub_10004DEFC();
      }

      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
      {
        sub_10004DF10();
      }
    }

    else
    {
      if (qword_1004EDF08 != -1)
      {
        sub_10004DF78();
      }

      v3 = qword_1004EDF10;
      v1 = 0;
      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "applebt_exit_power_sleep: BT device exited power Sleep!\n", buf, 2u);
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_100018DB8(unsigned __int8 a1)
{
  inputStruct = a1;
  v1 = sub_10001840C();
  if (v1)
  {
    v2 = v1;
    if (qword_1004EDF08 != -1)
    {
      sub_10004DF8C();
    }

    if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
    {
      sub_10004DFA0();
    }
  }

  else
  {
    v3 = IOConnectCallMethod(dword_1004EDF00, 2u, 0, 0, &inputStruct, 1uLL, 0, 0, 0, 0);
    if (v3)
    {
      v2 = v3;
      if (qword_1004EDF08 != -1)
      {
        sub_10004E008();
      }

      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
      {
        sub_10004E030();
      }
    }

    else
    {
      if (qword_1004EDF08 != -1)
      {
        sub_10004E098();
      }

      v4 = qword_1004EDF10;
      v2 = 0;
      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v8 = inputStruct;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "applebt_set_trace_mode: set to %d!\n", buf, 8u);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_100018FC8(unsigned __int8 a1)
{
  inputStruct = a1;
  v1 = sub_10001840C();
  if (v1)
  {
    v2 = v1;
    if (qword_1004EDF08 != -1)
    {
      sub_10004E0C0();
    }

    if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
    {
      sub_10004E0D4();
    }
  }

  else
  {
    v3 = IOConnectCallMethod(dword_1004EDF00, 3u, 0, 0, &inputStruct, 1uLL, 0, 0, 0, 0);
    if (v3)
    {
      v2 = v3;
      if (qword_1004EDF08 != -1)
      {
        sub_10004E13C();
      }

      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
      {
        sub_10004E164();
      }
    }

    else
    {
      if (qword_1004EDF08 != -1)
      {
        sub_10004E1CC();
      }

      v4 = qword_1004EDF10;
      v2 = 0;
      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v8 = inputStruct;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "applebt_set_trace_level: set to %d!\n", buf, 8u);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_1000191D8(uint64_t *a1)
{
  v2 = sub_10001840C();
  if (v2)
  {
    v3 = v2;
    if (qword_1004EDF08 != -1)
    {
      sub_10004E1F4();
    }

    if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
    {
      sub_10004E208();
    }
  }

  else
  {
    v4 = IOConnectCallMethod(dword_1004EDF00, 4u, 0, 0, a1, 0x20uLL, 0, 0, 0, 0);
    if (v4)
    {
      v3 = v4;
      if (qword_1004EDF08 != -1)
      {
        sub_10004E270();
      }

      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
      {
        sub_10004E284();
      }
    }

    else
    {
      if (qword_1004EDF08 != -1)
      {
        sub_10004E2EC();
      }

      v5 = qword_1004EDF10;
      v3 = 0;
      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *a1;
        v7 = a1[1];
        v8 = a1[2];
        v9 = a1[3];
        *buf = 134218752;
        v12 = v6;
        v13 = 2048;
        v14 = v7;
        v15 = 2048;
        v16 = v8;
        v17 = 2048;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "applebt_set_trace_mask: set to <%016llX%016llX%016llX%016llX>!\n", buf, 0x2Au);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_100019410(int a1)
{
  inputStruct = a1;
  v1 = sub_10001840C();
  if (v1)
  {
    v2 = v1;
    if (qword_1004EDF08 != -1)
    {
      sub_10004E300();
    }

    if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
    {
      sub_10004E314();
    }
  }

  else
  {
    v3 = IOConnectCallMethod(dword_1004EDF00, 5u, 0, 0, &inputStruct, 4uLL, 0, 0, 0, 0);
    if (v3)
    {
      v2 = v3;
      if (qword_1004EDF08 != -1)
      {
        sub_10004E37C();
      }

      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
      {
        sub_10004E3A4();
      }
    }

    else
    {
      if (qword_1004EDF08 != -1)
      {
        sub_10004E40C();
      }

      v4 = qword_1004EDF10;
      v2 = 0;
      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v8 = inputStruct;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "applebt_set_capture_timeout: set to %d!\n", buf, 8u);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_100019620(int a1)
{
  inputStruct = a1;
  v1 = sub_10001840C();
  if (v1)
  {
    v2 = v1;
    if (qword_1004EDF08 != -1)
    {
      sub_10004E434();
    }

    if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
    {
      sub_10004E448();
    }
  }

  else
  {
    v3 = IOConnectCallMethod(dword_1004EDF00, 6u, 0, 0, &inputStruct, 4uLL, 0, 0, 0, 0);
    v2 = v3;
    if (v3 != -536870201 && v3 != 0)
    {
      if (qword_1004EDF08 != -1)
      {
        sub_10004E4B0();
      }

      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
      {
        sub_10004E4D8();
      }
    }
  }

  return v2;
}

uint64_t sub_10001977C(uint32_t a1, const void *a2, unsigned int a3)
{
  v6 = sub_10001840C();
  if (v6)
  {
    v7 = v6;
    if (qword_1004EDF08 != -1)
    {
      sub_10004E540();
    }

    if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
    {
      sub_10004E554();
    }
  }

  else
  {
    v8 = IOConnectCallMethod(dword_1004EDF00, a1, 0, 0, a2, a3, 0, 0, 0, 0);
    if (v8)
    {
      v7 = v8;
      if (qword_1004EDF08 != -1)
      {
        sub_10004E5BC();
      }

      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
      {
        sub_10004E5D0();
      }
    }

    else
    {
      if (qword_1004EDF08 != -1)
      {
        sub_10004E638();
      }

      v9 = qword_1004EDF10;
      v7 = 0;
      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "applebt_general_debug: completed!\n", buf, 2u);
        return 0;
      }
    }
  }

  return v7;
}

uint64_t sub_100019960(void *a1, size_t *a2)
{
  v4 = sub_10001840C();
  if (v4)
  {
    v5 = v4;
    if (qword_1004EDF08 != -1)
    {
      sub_10004E64C();
    }

    if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
    {
      sub_10004E660();
    }
  }

  else
  {
    output = 0;
    outputCnt = 1;
    v6 = IOConnectCallMethod(dword_1004EDF00, 7u, 0, 0, 0, 0, &output, &outputCnt, a1, a2);
    if (v6)
    {
      v5 = v6;
      if (qword_1004EDF08 != -1)
      {
        sub_10004E6C8();
      }

      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_ERROR))
      {
        sub_10004E6F0();
      }
    }

    else
    {
      *a2 = output;
      if (qword_1004EDF08 != -1)
      {
        sub_10004E758();
      }

      v7 = qword_1004EDF10;
      v5 = 0;
      if (os_log_type_enabled(qword_1004EDF10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "applebt_read_crash_info: completed!\n", buf, 2u);
        return 0;
      }
    }
  }

  return v5;
}

void sub_100019B5C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t sub_100019B78(const char *a1, uint64_t a2)
{
  v4 = strdup(a1);
  if (v4)
  {
    v5 = v4;
    bzero(__s2, 0x808uLL);
    v6 = 0;
    v7 = v5;
LABEL_3:
    while (1)
    {
      for (i = v7; ; ++i)
      {
        ++v7;
        v9 = *i;
        if (v9 != 9 && v9 != 32)
        {
          break;
        }
      }

      if (!*i)
      {
        break;
      }

      __s2[v6] = i;
      if (v6 == 256)
      {
        v14 = 1;
        fwrite("Too many arguments.\n", 0x14uLL, 1uLL, __stderrp);
        goto LABEL_42;
      }

      ++v6;
      while (1)
      {
        v11 = *v7++;
        v10 = v11;
        if (!v11)
        {
          break;
        }

        if (v10 == 32 || v10 == 9)
        {
          *(v7 - 1) = 0;
          goto LABEL_3;
        }
      }

      --v7;
    }

    if (!v6 || (v13 = __s2[0], *__s2[0] == 35))
    {
LABEL_20:
      free(v5);
      return 0;
    }

    if (byte_1004EDF18 == 1)
    {
      add_history(a1);
    }

    if (strcmp("?", v13))
    {
      v16 = &off_1004E8DF0;
      while (1)
      {
        v17 = *v16;
        if (!*v16)
        {
          break;
        }

        v18 = strcmp(*(v16 - 2), v13);
        v16 += 3;
        if (!v18)
        {
          goto LABEL_31;
        }
      }

      if (!strcmp(v13, "quit") || !strcmp(v13, "exit"))
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004E780();
        }

        v19 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v21 = "invoke_command";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ready to quit from %s", buf, 0xCu);
        }

        sub_100019E98();
      }

      else
      {
        fprintf(__stderrp, "%s - unknown command.\n", v13);
      }

      goto LABEL_20;
    }

    v17 = sub_10001A6E4;
LABEL_31:
    optreset = 1;
    optind = 1;
    v14 = (v17)(v6, __s2, a2);
    if (v14)
    {
      fprintf(__stderrp, "%s returned %d\n", __s2[0], v14);
    }

    else
    {
LABEL_42:
      free(v5);
    }
  }

  else
  {
    fwrite("Unable to allocate memory!  Abort! Abort!\n", 0x2AuLL, 1uLL, __stderrp);
    return 2;
  }

  return v14;
}

void sub_100019E98()
{
  sub_1000436A8();
  if (dword_1004EE3D0)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004E794();
    }

    v0 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      v1 = 136315138;
      v2 = "handleQuit";
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Device is opened and ready to close it from %s", &v1, 0xCu);
    }

    off_1004EE408(qword_1004EE3C8);
  }

  if ((byte_1004EDF1C & 1) == 0)
  {
    exit(0);
  }
}

uint64_t sub_100019F94(const char *a1)
{
  v2 = fopen(a1, "r");
  if (v2)
  {
    v3 = v2;
    fprintf(__stderrp, "Running %s.\n", a1);
    if (qword_1004EE428 != -1)
    {
      sub_10004E7A8();
    }

    v4 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *v13 = a1;
      *&v13[8] = 2080;
      *&v13[10] = "runScriptFile";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "running script file %s from %s", buf, 0x16u);
    }

    v5 = malloc_type_malloc(0x800uLL, 0x100004077774924uLL);
    if (v5)
    {
      while (!feof(v3))
      {
        v6 = fgets(v5, 2048, v3);
        if (v6)
        {
          v7 = v6;
          v8 = strlen(v6);
          if (v8)
          {
            v7[v8 - 1] = 0;
            sub_100019B78(v7, 0);
          }
        }
      }
    }

    free(v5);
    fclose(v3);
    return 0;
  }

  else
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004E7BC();
    }

    v10 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *__error();
      *buf = 67109634;
      *v13 = v11;
      *&v13[4] = 2080;
      *&v13[6] = a1;
      *&v13[14] = 2080;
      *&v13[16] = "runScriptFile";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "got error %d when opening script file %s from %s", buf, 0x1Cu);
    }

    fprintf(__stderrp, "Unable to open file %s.\n", a1);
    return 3;
  }
}

uint64_t start(int a1, char *const *a2)
{
  setvbuf(__stdoutp, 0, 2, 0);
  setvbuf(__stderrp, 0, 2, 0);
  sub_100012CEC();
  while (1)
  {
    while (1)
    {
      v4 = getopt(a1, a2, "c:hf:F:R");
      if (v4 <= 98)
      {
        break;
      }

      switch(v4)
      {
        case 'c':
          for (result = strtok(optarg, "\n"); result; result = strtok(0, "\n"))
          {
            sub_100019B78(result, 0);
          }

          return result;
        case 'h':
          puts("BlueTool -- A Bluetooth Config/Control Tool");
          putchar(10);
          puts("Options:");
          puts("\t-h              This message.");
          puts("\t-f <filename>   Read commands from file at startup.");
          puts("\t-F sequence\t\truns the default script for a given sequence.");
          puts("\t-c <commands>   Execute commands from string at startup.");
          putchar(10);
          return 0;
        case 'f':
          if (qword_1004EE428 != -1)
          {
            sub_10004E7E4();
          }

          v9 = qword_1004EE430;
          if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315394;
            v14 = optarg;
            v15 = 2080;
            v16 = "main";
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "try to run from command line an external script %s from %s", &v13, 0x16u);
          }

          return sub_100019F94(optarg);
      }
    }

    if (v4 == 70)
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004E7D0();
      }

      v10 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315394;
        v14 = optarg;
        v15 = 2080;
        v16 = "main";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "try to run from command line a builtinScript %s from %s", &v13, 0x16u);
      }

      v11 = optarg;
      if (!strncmp(optarg, "boot", 5uLL))
      {
        v12 = 1;
      }

      else if (!strncmp(v11, "init", 5uLL))
      {
        v12 = 2;
      }

      else
      {
        if (strncmp(v11, "deepsleep", 0xAuLL))
        {
          return 1;
        }

        v12 = 3;
      }

      sub_100014158(v12);
      return 0;
    }

    if (v4 == 82)
    {
      break;
    }

    if (v4 == -1)
    {
      bzero(&xmmword_1004EDFC8 + 7, 0x459uLL);
      strcpy(&xmmword_1004EDFC8, "<NONE>");
      rl_readline_name = "BlueTool";
      byte_1004EDF18 = 1;
      puts("\nWelcome to BlueTool... Rev 6.0\n");
      v5 = getenv("BT_CHIP");
      if (v5 && !strcmp(v5, "ACI BT"))
      {
        sub_100019B78("aci -V", 0);
      }

      for (i = readline("bluetool-> "); i; i = readline("bluetool-> "))
      {
        if (*i)
        {
          v7 = strdup(i);
          sub_100019B78(v7, 0);
          free(v7);
        }
      }

      sub_100019E98();
      exit(0);
    }
  }

  byte_1004EDF1C = 1;

  return sub_1000459C8();
}

uint64_t sub_10001A6E4()
{
  fwrite("BlueTool Help\n", 0xEuLL, 1uLL, __stderrp);
  v0 = off_1004E8DC8;
  do
  {
    fprintf(__stderrp, "  %-16s : %s\n", *v0, v0[1]);
    v1 = v0[5];
    v0 += 3;
  }

  while (v1);
  fwrite("Give any commands '-h' for more details.\n", 0x29uLL, 1uLL, __stderrp);
  return 0;
}

uint64_t sub_10001A77C(int a1, uint64_t a2)
{
  if (a1 == 2)
  {
    v2 = strtoul(*(a2 + 8), 0, 0);
    if (v2 >= 1)
    {
      usleep(1000 * v2);
    }

    return 0;
  }

  else
  {
    v3 = 1;
    fwrite("usage: msleep <msec>\n", 0x15uLL, 1uLL, __stderrp);
  }

  return v3;
}

uint64_t sub_10001A820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 6)
  {
    v3 = 1;
    fwrite("usage: if <test> ? a : b", 0x18uLL, 1uLL, __stderrp);
    return v3;
  }

  v7 = 0;
  v8 = a1;
  while (1)
  {
    v9 = *(a2 + 8 + 8 * v7);
    if (*v9 == 63 && !v9[1])
    {
      break;
    }

    if (a1 == ++v7)
    {
      v7 = a1;
      goto LABEL_9;
    }
  }

  v8 = v7 + 1;
LABEL_9:
  v10 = v8 + 1;
  v11 = (a1 - (v8 + 1));
  if (a1 <= v8 + 1)
  {
    v11 = 0;
  }

  else
  {
    v12 = 0;
    v13 = a2 + 8 * v10;
    while (**v13 != 58 || *(*v13 + 1))
    {
      --v12;
      v13 += 8;
      if (v8 - a1 + 1 == v12)
      {
        v10 = v8 - v12 + 1;
        goto LABEL_17;
      }
    }

    v10 = v8 - v12 + 2;
    v11 = -v12;
  }

LABEL_17:
  v14 = v7 + 2;
  v15 = (a2 + 8);
  if (a1 <= v10)
  {
    if (!sub_10001AACC(v7, v15, 0))
    {
      return 0;
    }
  }

  else if (!sub_10001AACC(v7, v15, 0))
  {
    if (a1 != v10)
    {
      v16 = (a2 + 8 * (v11 + v14) + 8);
      v17 = (a1 - v10);
      goto LABEL_24;
    }

    return 0;
  }

  if (!v11)
  {
    return 1;
  }

  v16 = (a2 + 8 * v14);
  v17 = v11;
LABEL_24:

  return sub_10001AACC(v17, v16, a3);
}

uint64_t sub_10001A9C8(int a1, uint64_t a2, void *a3)
{
  if (a1 < 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = (a2 + 8);
    v7 = a1 - 1;
    do
    {
      fprintf(__stderrp, " %s", *v6);
      if (a3)
      {
        v8 = strlen(*v6);
        v9 = reallocf(v5, v8 + v4 + 1);
        v5 = v9;
        if (v9)
        {
          v10 = *v6;
          strcpy(v9 + v4, *v6);
          v11 = v4 + strlen(v10);
          v4 = v11 + 1;
          *(v5 + v11) = 32;
        }
      }

      ++v6;
      --v7;
    }

    while (v7);
  }

  fputc(10, __stderrp);
  if (a3)
  {
    *a3 = v5;
  }

  return 0;
}

uint64_t sub_10001AACC(uint64_t a1, const char **a2, uint64_t a3)
{
  v6 = *a2;
  if (!strcmp("?", *a2))
  {
    v9 = sub_10001A6E4;
LABEL_7:

    return (v9)(a1, a2, a3);
  }

  else
  {
    v7 = &off_1004E8DF0;
    while (*v7)
    {
      v11 = *v7;
      v8 = strcmp(*(v7 - 2), v6);
      v7 += 3;
      if (!v8)
      {
        v9 = v11;
        goto LABEL_7;
      }
    }

    return 1;
  }
}

uint64_t sub_10001ABD0(int a1, const char **a2)
{
  if (sub_100041FEC() == 6)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004E924();
    }

    v4 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = "bluetool_command_device";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HCI transport is hciTransportAPPLEBT from %s", buf, 0xCu);
    }

    v5 = 0;
    do
    {
      while (1)
      {
        while (1)
        {
          v6 = v5;
          v7 = getopt(a1, a2, "hDC");
          if (v7 != 67)
          {
            break;
          }

          if (dword_1004EE3D0)
          {
            if (qword_1004EE428 != -1)
            {
              sub_10004E938();
            }

            v9 = qword_1004EE430;
            if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v39 = "bluetool_command_device";
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device is opened and ready to close it for transport AppleBT from %s", buf, 0xCu);
            }

            off_1004EE408(qword_1004EE3C8);
            if (qword_1004EE428 != -1)
            {
              sub_10004E960();
            }

            v10 = qword_1004EE430;
            v5 = 1;
            if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v39 = "bluetool_command_device";
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device is closed from %s", buf, 0xCu);
              v5 = 1;
            }
          }

          else
          {
            v5 = 1;
            fwrite("Device not Opened\n", 0x12uLL, 1uLL, __stderrp);
          }
        }

        if (v7 != 68)
        {
          break;
        }

        if (qword_1004EE428 != -1)
        {
          sub_10004E988();
        }

        v8 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v39 = "bluetool_command_device";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IOS device and ready to open device IO from %s", buf, 0xCu);
        }

        sub_100017E48();
        v5 = 1;
      }

      v5 = 0;
    }

    while (v7 != -1);
    if ((v6 & 1) == 0)
    {
      fprintf(__stderrp, "%s - Pick a device\n", *a2);
      fwrite("-D           - Open the default device.\n", 0x28uLL, 1uLL, __stderrp);
      v17 = __stderrp;
      v18 = "-C           - Close the default device.\n";
      v19 = 41;
LABEL_52:
      fwrite(v18, v19, 1uLL, v17);
      fputc(10, __stderrp);
    }

    return 0;
  }

  if (sub_100041FEC() == 7)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004E898();
    }

    v11 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = "bluetool_command_device";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "HCI transport is PCIE and ready to open device from %s", buf, 0xCu);
    }

    while (1)
    {
      v12 = getopt(a1, a2, "hD");
      if (v12 != 68)
      {
        break;
      }

      if (dword_1004EE3D0)
      {
        v13 = off_1004EE408 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004E8AC();
        }

        v14 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v39 = "bluetool_command_device";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Device is opened and ready to close it for transport PCIE from %s", buf, 0xCu);
        }

        off_1004EE408(qword_1004EE3C8);
        if (qword_1004EE428 != -1)
        {
          sub_10004E8D4();
        }

        v15 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v39 = "bluetool_command_device";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device is closed from %s", buf, 0xCu);
        }

        if (dword_1004EE3D0)
        {
          goto LABEL_114;
        }
      }

      if (sub_100001C30())
      {
        goto LABEL_122;
      }

      if (qword_1004EE428 != -1)
      {
        sub_10004E8FC();
      }

      v16 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v39 = "bluetool_command_device";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device opened successfully from %s", buf, 0xCu);
      }
    }

    if (v12 == -1)
    {
      return 0;
    }

    if (v12 == 104)
    {
      sub_100001BC4();
      return 0;
    }

    sub_100001BC4();
    return 1;
  }

  if (sub_100041FEC() == 9)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004E80C();
    }

    v21 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = "bluetool_command_device";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "HCI transport is APPLE PCIE and ready to open device from %s", buf, 0xCu);
    }

    while (1)
    {
      v22 = getopt(a1, a2, "hD");
      if (v22 != 68)
      {
        break;
      }

      if (dword_1004EE3D0)
      {
        v23 = off_1004EE408 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        if (qword_1004EE428 != -1)
        {
          sub_10004E820();
        }

        v24 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v39 = "bluetool_command_device";
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Device is opened and ready to close it for transport APPLE PCIE from %s", buf, 0xCu);
        }

        off_1004EE408(qword_1004EE3C8);
        if (qword_1004EE428 != -1)
        {
          sub_10004E848();
        }

        v25 = qword_1004EE430;
        if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v39 = "bluetool_command_device";
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Device is closed from %s", buf, 0xCu);
        }

        if (dword_1004EE3D0)
        {
          goto LABEL_114;
        }
      }

      if (sub_100012704())
      {
        goto LABEL_122;
      }

      if (qword_1004EE428 != -1)
      {
        sub_10004E870();
      }

      v26 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v39 = "bluetool_command_device";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Device opened successfully from %s", buf, 0xCu);
      }
    }

    if (v22 == -1)
    {
      return 0;
    }

    if (v22 == 104)
    {
      sub_100012698();
      return 0;
    }

    sub_100012698();
    return 1;
  }

  optind = 1;
  if (qword_1004EE428 != -1)
  {
    sub_10004E7F8();
  }

  v27 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v39 = "bluetool_command_device";
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "HCI transport is other types from %s", buf, 0xCu);
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    while (1)
    {
      v30 = getopt(a1, a2, "hd:Ds:Sc");
      if (v30 < 99)
      {
        break;
      }

      if (v30 > 99)
      {
        switch(v30)
        {
          case 'd':
            v29 = optarg;
            break;
          case 's':
            v28 = strtoul(optarg, 0, 0);
            break;
          case 'h':
            fprintf(__stderrp, "%s - Pick a device\n", *a2);
            fwrite("-d <device>  - Open the specified UART device.\n", 0x2FuLL, 1uLL, __stderrp);
            fwrite("-D           - Open the default device.\n", 0x28uLL, 1uLL, __stderrp);
            fwrite("-s <#>       - Configure the device for the given speed/baudrate.\n", 0x42uLL, 1uLL, __stderrp);
            v17 = __stderrp;
            v18 = "-S           - Configure the device for using the speed/baudrate from the device tree.\n";
            v19 = 87;
            goto LABEL_52;
        }
      }

      else
      {
        sub_10001BCEC(qword_1004EE3C8);
      }
    }

    if (v30 == -1)
    {
      break;
    }

    if (v30 == 68)
    {
      v32 = getenv("BT_UART");
      if (v32)
      {
        v29 = v32;
      }

      else
      {
        v29 = "com.apple.uart.bluetooth";
      }
    }

    else if (v30 == 83)
    {
      v31 = sub_100041D24();
      if (v31)
      {
        v28 = v31;
      }

      else
      {
        v28 = 2400000;
      }
    }
  }

  if (v29)
  {
    if (dword_1004EE3D0)
    {
      v33 = off_1004EE408 == 0;
    }

    else
    {
      v33 = 1;
    }

    if (v33 || (off_1004EE408(qword_1004EE3C8), !dword_1004EE3D0))
    {
      if (v28)
      {
        v37 = v28;
      }

      else
      {
        v37 = 115200;
      }

      printf("Opening %s @ %d baud.\n", v29, v37);
      if (!sub_10001BE18(v29, v37))
      {
        off_1004EE410(qword_1004EE3C8);
        return 0;
      }

LABEL_122:
      v34 = __stderrp;
      v35 = "Unable to open device.\n";
      v36 = 23;
    }

    else
    {
LABEL_114:
      v34 = __stderrp;
      v35 = "Failed to close already opened device.\n";
      v36 = 39;
    }

    fwrite(v35, v36, 1uLL, v34);
    return 3;
  }

  printf("Current Device: %s\n", &xmmword_1004EDFC8);
  result = 0;
  if (v28 && dword_1004EE3D0)
  {
    printf("Setting speed to %d\n", v28);
    off_1004EE400(qword_1004EE3C8, v28);
    return 0;
  }

  return result;
}

uint64_t sub_10001B884(int a1, uint64_t a2)
{
  if (sub_100041FEC() == 6)
  {
    fwrite("autobaud not supported for AppleBT!\n", 0x24uLL, 1uLL, __stderrp);
    fflush(__stderrp);
    return 0;
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  puts("bluetool_command_autobaud");
  v4 = 1000;
  if (a1 >= 1)
  {
    if (a2)
    {
      v5 = *(a2 + 8);
      if (v5)
      {
        v6 = atoi(v5);
        if (v6 >= 0)
        {
          v4 = v6;
        }

        else
        {
          v4 = 3000;
        }
      }
    }
  }

  if (!dword_1004EE3D0)
  {
    fwrite("Device not currently opened.\n", 0x1DuLL, 1uLL, __stderrp);
    return 3;
  }

  v7 = 1;
LABEL_11:
  puts("bluetool_command_autobaud : reset ON");
  sub_1000438C4();
  usleep(0x3D090u);
  puts("bluetool_command_autobaud : reset OFF");
  sub_100043984();
  puts("bluetool_command_autobaud : flush");
  if (off_1004EE410)
  {
    usleep(0x3D090u);
    off_1004EE410(qword_1004EE3C8);
  }

  for (i = 0; i != 11; ++i)
  {
    if (off_1004EE3E8(qword_1004EE3C8))
    {
      while (off_1004EE3E8(qword_1004EE3C8))
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        if ((off_1004EE3F8(qword_1004EE3C8, &v13, 258, &v12) & 0x80000000) != 0)
        {
          goto LABEL_26;
        }

        puts("bluetool_command_autobaud : sleep again");
        usleep(0xEA60u);
      }

      usleep(0x493E0u);
      puts("bluetool_command_autobaud : HCI reset !");
      off_1004EE3F0(qword_1004EE3C8, &unk_100052358, 3);
      do
      {
        usleep(0x4E20u);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0;
        off_1004EE3F8(qword_1004EE3C8, &v13, 258, &v12);
      }

      while (v13 == 15);
      if (v13 == 14)
      {
        puts("autobaud complete!");
        return 0;
      }

      printf("We got packet 0x%02x\n", v13);
      if (v7 > 7)
      {
        goto LABEL_36;
      }

LABEL_32:
      ++v7;
      goto LABEL_11;
    }

    v9 = 0;
    do
    {
      usleep(v4);
      off_1004EE3D8(qword_1004EE3C8, &unk_100052370 + v9, 1);
      usleep(0x3E8u);
      if (off_1004EE3E8(qword_1004EE3C8))
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 >= 0xF;
      }

      ++v9;
    }

    while (!v10);
  }

LABEL_26:
  if (v7 != 8)
  {
    goto LABEL_32;
  }

LABEL_36:
  fwrite("BlueTool: ERROR -- unable to autobaud chip.\n", 0x2CuLL, 1uLL, __stderrp);
  return 6;
}

uint64_t sub_10001BC00(int a1, char **a2)
{
  while (1)
  {
    while (1)
    {
      v4 = getopt(a1, a2, "ht:");
      if (v4 != 116)
      {
        break;
      }

      strtoul(optarg, 0, 0);
    }

    if (v4 == -1)
    {
      break;
    }

    if (v4 == 104)
    {
      fwrite("(No Parameters)  - Places device in test mode indefinitely\n", 0x3BuLL, 1uLL, __stderrp);
      fwrite("-t <#>           - Places device in test mode for # seconds\n", 0x3CuLL, 1uLL, __stderrp);
      fputc(10, __stderrp);
      return 0;
    }
  }

  fwrite("not implemented", 0xFuLL, 1uLL, __stderrp);
  return 5;
}

uint64_t sub_10001BCEC(int a1)
{
  v4 = 0;
  ioctl(a1, 0x4004746AuLL, &v4);
  if (qword_1004EE428 != -1)
  {
    sub_10004E9B0();
  }

  v1 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_INFO))
  {
    if ((v4 & 0x20) != 0)
    {
      v2 = "ASSERTED";
    }

    else
    {
      v2 = "DEASSERTED";
    }

    *buf = 136315138;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "CTS is %s", buf, 0xCu);
  }

  return v4 & 0x20;
}

uint64_t sub_10001BE18(const char *a1, unsigned int a2)
{
  v8 = 0;
  *&v7[12] = 0;
  v9 = 0;
  v4 = socket(32, 1, 2);
  if (v4 < 0)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004EB40();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004EB54();
    }

    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  *v7 = 139296;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  __strlcpy_chk();
  if (ioctl(v5, 0xC0644E03uLL, v10))
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004E9D8();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004EA00();
    }

    return 0xFFFFFFFFLL;
  }

  *&v7[4] = v10[0];
  *&v7[8] = 0;
  if (connect(v5, v7, 0x20u) == -1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004EA8C();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004EAB4();
    }

    return 0xFFFFFFFFLL;
  }

  sub_10001C158(v5, a2);
  snprintf(&xmmword_1004EDFC8, 0x3FFuLL, "UART - %s", a1);
  result = 0;
  dword_1004EE420 = 0;
  off_1004EE3D8 = sub_10001C22C;
  off_1004EE3E0 = sub_10001C234;
  off_1004EE3E8 = sub_10001C23C;
  off_1004EE3F0 = sub_10001C2D0;
  off_1004EE3F8 = sub_10001C398;
  off_1004EE408 = sub_10001C67C;
  off_1004EE400 = sub_10001C158;
  qword_1004EE3C8 = v5;
  dword_1004EE3D0 = 1;
  off_1004EE410 = sub_10001C6A0;
  off_1004EE418 = sub_10001C6A8;
  return result;
}

uint64_t sub_10001C158(int a1, unsigned int a2)
{
  memset(&v6, 0, sizeof(v6));
  v5 = 72;
  getsockopt(a1, 2, 1078490131, &v6, &v5);
  cfmakeraw(&v6);
  cfsetspeed(&v6, a2);
  v6.c_iflag |= 4uLL;
  v6.c_cflag = 232192;
  setsockopt(a1, 2, -2142735340, &v6, 0x48u);
  return 0;
}

BOOL sub_10001C23C(int a1)
{
  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  memset(&v4, 0, sizeof(v4));
  if (__darwin_check_fd_set_overflow(a1, &v4, 0))
  {
    *(v4.fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  return select(a1 + 1, &v4, 0, 0, &v3) > 0;
}

uint64_t sub_10001C2D0(int a1, char *a2, uint64_t a3)
{
  __buf = 1;
  if (write(a1, &__buf, 1uLL) != 1)
  {
    if (qword_1004EE428 != -1)
    {
      sub_10004EBE0();
    }

    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      sub_10004EC08();
    }

    *__error() = 0;
  }

  return sub_10001C87C(a1, a2, a3, 1uLL);
}

uint64_t sub_10001C398(int a1, unsigned __int8 *a2, unint64_t a3, void *a4)
{
  v8 = a2 + 2;
LABEL_2:
  v9 = 0;
  v31 = 0;
  while (1)
  {
    v10 = read(a1, &v31 + v9, (1 - v9));
    if (v10 < 1)
    {
      if (qword_1004EE428 != -1)
      {
        sub_10004ECB4();
      }

      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
      {
        sub_10004ECDC();
      }

      return 0xFFFFFFFFLL;
    }

    v9 += v10;
    if (v9 >= 1)
    {
      v9 = 0;
      if (v31 - 5 >= 0xFFFFFFFD)
      {
        break;
      }
    }
  }

  v11 = v31 & 6;
  v30 = a3;
  if (v11 == 2)
  {
    v29 = a4;
    fwrite("ACL/SCO DATA?!?!? What do you think I am? A Bluetooth stack?\n", 0x3DuLL, 1uLL, __stderrp);
    v12 = 0;
    if (v31 == 2)
    {
      v13 = 4;
    }

    else
    {
      v13 = 3;
    }

    do
    {
      v14 = read(a1, &a2[v12], v13 - v12);
      if (v14 < 1)
      {
        goto LABEL_39;
      }

      v12 += v14;
    }

    while (v12 < v13);
    if (v12 <= 0)
    {
LABEL_39:
      v28 = "read() H4_HCI_DATA header";
      goto LABEL_43;
    }

    if (v31 == 2)
    {
      v15 = a2[3] << 8;
    }

    else
    {
      v15 = 0;
    }

    v23 = v15 | *v8;
    v24 = malloc_type_malloc(v23, 0xB3985D7EuLL);
    if (v23)
    {
      v25 = 0;
      while (1)
      {
        v26 = read(a1, &v24[v25], v23 - v25);
        if (v26 < 1)
        {
          break;
        }

        v25 += v26;
        if (v25 >= v23)
        {
          free(v24);
          a4 = v29;
          goto LABEL_32;
        }
      }
    }

    free(v24);
    v28 = "read() H4_HCI_DATA body";
LABEL_43:
    perror(v28);
    return 0xFFFFFFFFLL;
  }

  for (i = 0; i <= 1; i += v17)
  {
    v17 = read(a1, &a2[i], (2 - i));
    if (v17 < 1)
    {
      v28 = "read() H4_HCI_EVENT header";
      goto LABEL_43;
    }
  }

  v18 = *v8 + 2;
  if (v18 <= a3)
  {
    v19 = a4;
    v20 = a2[1];
    if (a2[1])
    {
      v21 = 0;
      while (1)
      {
        v22 = read(a1, &v8[v21], v20 - v21);
        if (v22 < 1)
        {
          break;
        }

        v21 += v22;
        if (v21 >= v20)
        {
          if (v21 <= 0)
          {
            break;
          }

          a4 = v19;
          if (v19)
          {
            *v19 = a2[1];
          }

LABEL_32:
          a3 = v30;
          if (v11 != 2)
          {
            return 0;
          }

          goto LABEL_2;
        }
      }
    }

    v28 = "read() H4_HCI_EVENT body";
    goto LABEL_43;
  }

  fprintf(__stderrp, "buffer passed into %s is too small to hold %d bytes\n", "uart_get_hci_event", v18);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10001C67C(int a1)
{
  result = close(a1);
  dword_1004EE3D0 = 0;
  return result;
}

void sub_10001C6A8(int a1)
{
  __buf = -86;
  tcflush(a1, 3);
  if (qword_1004EE428 != -1)
  {
    dispatch_once(&qword_1004EE428, &stru_1004E95E8);
  }

  v2 = qword_1004EE430;
  if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v8) = 170;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Spaming %02X to UART", buf, 8u);
  }

  while (1)
  {
    while (write(a1, &__buf, 1uLL) > 0)
    {
      if (qword_1004EE428 != -1)
      {
        dispatch_once(&qword_1004EE428, &stru_1004E9668);
      }

      v3 = qword_1004EE430;
      if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v8) = __buf;
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "W: 0x%02x", buf, 8u);
      }
    }

    if (qword_1004EE428 != -1)
    {
      dispatch_once(&qword_1004EE428, &stru_1004E9628);
    }

    v4 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      v5 = __error();
      v6 = strerror(*v5);
      *buf = 136315138;
      v8 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error writing byte to device: %s", buf, 0xCu);
    }
  }
}

uint64_t sub_10001C87C(int __fd, char *__buf, uint64_t a3, unint64_t a4)
{
  if (a3 < 1)
  {
LABEL_9:
    tcdrain(__fd);
    return 0;
  }

  else
  {
    v8 = a3;
    while (1)
    {
      v9 = v8 >= a4 ? a4 : v8;
      v10 = write(__fd, __buf, v9);
      if (v10 <= 0)
      {
        break;
      }

      __buf += v10;
      v11 = v8 <= v10;
      v8 -= v10;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    if (qword_1004EE428 != -1)
    {
      sub_10004ED64();
    }

    v13 = qword_1004EE430;
    if (os_log_type_enabled(qword_1004EE430, OS_LOG_TYPE_ERROR))
    {
      v14 = __error();
      v15 = strerror(*v14);
      v16 = 134218754;
      v17 = v9;
      v18 = 2048;
      v19 = a3 - v8;
      v20 = 2048;
      v21 = a3;
      v22 = 2080;
      v23 = v15;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error writing %zu bytes %zd / %zu to device: %s", &v16, 0x2Au);
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10001CB28()
{
  if (byte_1004EDF20)
  {
    return 0;
  }

  v1 = dword_1004EDF38;
  if (dword_1004EDF38)
  {
    goto LABEL_4;
  }

  notification = 0;
  v3 = IONotificationPortCreate(kIOMainPortDefault);
  RunLoopSource = IONotificationPortGetRunLoopSource(v3);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  v6 = IOServiceNameMatching("AppleBTHci");
  v7 = IOServiceAddMatchingNotification(v3, "IOServiceFirstMatch", v6, sub_10001DC90, Current, &notification);
  if (v7)
  {
    v0 = v7;
    if (qword_1004EDF28 != -1)
    {
      sub_10004ED78();
    }

    if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
    {
      sub_10004EDA0();
    }
  }

  else
  {
    v9 = IOIteratorNext(notification);
    for (dword_1004EDF3C = v9; !v9; dword_1004EDF3C = v9)
    {
      if (qword_1004EDF28 != -1)
      {
        sub_10004EE14();
      }

      v10 = qword_1004EDF30;
      if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "AppleBTHci";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "applebt_hci_connect: Couldn't find %s service, waiting for first match\n", buf, 0xCu);
      }

      CFRunLoopRun();
      v9 = IOIteratorNext(notification);
    }

    v0 = IOServiceOpen(v9, mach_task_self_, 0, &dword_1004EDF38);
    if (v0)
    {
      if (qword_1004EDF28 != -1)
      {
        sub_10004EE3C();
      }

      if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
      {
        sub_10004EE64();
      }
    }
  }

  CFRunLoopRemoveSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  IONotificationPortDestroy(v3);
  IOObjectRelease(notification);
  if (qword_1004EDF28 != -1)
  {
    sub_10004EED8();
  }

  v11 = qword_1004EDF30;
  if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "AppleBTHci";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "applebt_hci_connect: Service %s connected!\n", buf, 0xCu);
  }

  if (!v0)
  {
    v1 = dword_1004EDF38;
LABEL_4:
    v2 = IOConnectCallMethod(v1, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v2)
    {
      v0 = v2;
      if (qword_1004EDF28 != -1)
      {
        sub_10004EF9C();
      }

      if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
      {
        sub_10004EFC4();
      }
    }

    else
    {
      if (qword_1004EDF28 != -1)
      {
        sub_10004F03C();
      }

      v8 = qword_1004EDF30;
      if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "AppleBTHci";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "applebt_hci_open: Service %s opened!\n", buf, 0xCu);
      }

      v0 = 0;
      byte_1004EDF20 = 1;
    }

    return v0;
  }

  if (qword_1004EDF28 != -1)
  {
    sub_10004EF00();
  }

  if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
  {
    sub_10004EF28();
  }

  return v0;
}

const char *sub_10001CF94(int a1)
{
  if (a1 <= -536870186)
  {
    if (a1 > -536870196)
    {
      switch(a1)
      {
        case -536870195:
          return "kIOReturnNotOpen";
        case -536870194:
          return "kIOReturnNotReadable";
        case -536870193:
          return "kIOReturnNotWritable";
      }
    }

    else
    {
      switch(a1)
      {
        case -536870211:
          return "kIOReturnNoMemory";
        case -536870206:
          return "kIOReturnBadArgument";
        case -536870198:
          return "kIOReturnIOError";
      }
    }
  }

  else if (a1 <= -536870166)
  {
    switch(a1)
    {
      case -536870185:
        return "kIOReturnOffline";
      case -536870181:
        return "kIOReturnNoSpace";
      case -536870167:
        return "kIOReturnDeviceError";
    }
  }

  else if (a1 < 0)
  {
    if (a1 == -536870165)
    {
      return "kIOReturnAborted";
    }

    if (a1 == -536870160)
    {
      return "kIOReturnNotFound";
    }
  }

  else
  {
    if (!a1)
    {
      return "kIOReturnSuccess";
    }

    if (a1 == 5)
    {
      return "KERN_FAILURE";
    }
  }

  return "UNKNOWN";
}

uint64_t sub_10001D15C()
{
  if (byte_1004EDF20)
  {
    byte_1004EDF20 = 0;
    v0 = IOConnectCallMethod(dword_1004EDF38, 1u, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v0)
    {
      if (qword_1004EDF28 != -1)
      {
        sub_10004F0B4();
      }

      if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
      {
        sub_10004F0C8();
      }
    }

    IOServiceClose(dword_1004EDF38);
    dword_1004EDF38 = 0;
    IOObjectRelease(dword_1004EDF3C);
    dword_1004EDF3C = 0;
    if (qword_1004EDF28 != -1)
    {
      sub_10004F140();
    }

    v1 = qword_1004EDF30;
    if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v4 = "AppleBTHci";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "applebt_hci_close: Service %s closed and disconnected!\n", buf, 0xCu);
    }
  }

  else
  {
    if (qword_1004EDF28 != -1)
    {
      sub_10004F064();
    }

    if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
    {
      sub_10004F078();
    }

    return 5;
  }

  return v0;
}

uint64_t sub_10001D398()
{
  if (byte_1004EDF20)
  {
    v0 = IOConnectCallMethod(dword_1004EDF38, 4u, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v0)
    {
      if (qword_1004EDF28 != -1)
      {
        sub_10004F1B8();
      }

      if (!os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      sub_10004F1CC();
    }

    if (qword_1004EDF28 != -1)
    {
      sub_10004F244();
    }

LABEL_9:
    v1 = qword_1004EDF30;
    if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "applebt_hci_transport_reset: HCI Transport was reset!\n", buf, 2u);
    }

    return v0;
  }

  if (qword_1004EDF28 != -1)
  {
    sub_10004F168();
  }

  if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
  {
    sub_10004F17C();
  }

  return 5;
}

uint64_t sub_10001D568(int a1, unsigned __int8 *inputStruct)
{
  if (byte_1004EDF20)
  {
    v34 = 0;
    memset(outputStruct, 0, sizeof(outputStruct));
    v26 = 8 * a1;
    v4 = IOConnectCallMethod(dword_1004EDF38, 2u, 0, 0, inputStruct, 16 * a1, 0, 0, outputStruct, &v26);
    if (v4)
    {
      v5 = v4;
      if (qword_1004EDF28 != -1)
      {
        sub_10004F2BC();
      }

      if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
      {
        sub_10004F2E4();
      }

      return v5;
    }

    if (a1 < 1)
    {
      return 0;
    }

    v5 = 0;
    v7 = a1;
    v8 = inputStruct + 1;
    for (i = outputStruct + 4; ; i += 8)
    {
      v10 = *(i - 1);
      if (v10)
      {
        break;
      }

LABEL_30:
      v8 += 16;
      if (!--v7)
      {
        return v5;
      }
    }

    if (v10 == -536870181)
    {
      if (qword_1004EDF28 != -1)
      {
        sub_10004F35C();
      }

      v18 = qword_1004EDF30;
      if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(v8 - 1);
        v20 = *i;
        v21 = *v8;
        *buf = 67109632;
        v28 = v19;
        v29 = 1024;
        v30 = v20;
        v31 = 1024;
        LODWORD(v32) = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "applebt_hci_write: write to discardable pipe %d failed with no space, written %d out of %d packets\n", buf, 0x14u);
      }

      goto LABEL_30;
    }

    if (v10 == -536870198)
    {
      if (qword_1004EDF28 != -1)
      {
        sub_10004F384();
      }

      v11 = qword_1004EDF30;
      if (!os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v12 = *(v8 - 1);
      v13 = *i;
      v14 = *v8;
      *buf = 67109632;
      v28 = v12;
      v29 = 1024;
      v30 = v13;
      v31 = 1024;
      LODWORD(v32) = v14;
      v15 = v11;
      v16 = "applebt_hci_write: write to non-discardable pipe %d failed with no space, written %d out of %d packets\n";
      v17 = 20;
    }

    else
    {
      if (qword_1004EDF28 != -1)
      {
        sub_10004F3AC();
      }

      v22 = qword_1004EDF30;
      if (!os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v23 = *(v8 - 1);
      v24 = *(i - 1);
      v25 = sub_10001CF94(v24);
      *buf = 67109634;
      v28 = v23;
      v29 = 1024;
      v30 = v24;
      v31 = 2080;
      v32 = v25;
      v15 = v22;
      v16 = "applebt_hci_write: write to pipe %d failed with (0x%08X, %s)\n";
      v17 = 24;
    }

    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v16, buf, v17);
LABEL_29:
    v5 = 5;
    goto LABEL_30;
  }

  if (qword_1004EDF28 != -1)
  {
    sub_10004F26C();
  }

  if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
  {
    sub_10004F280();
  }

  return 5;
}

uint64_t sub_10001D9B0(int a1, void *inputStruct, void *outputStruct)
{
  if (byte_1004EDF20)
  {
    v11 = 8 * a1;
    v5 = 16 * a1;
    while (1)
    {
      v6 = IOConnectCallMethod(dword_1004EDF38, 3u, 0, 0, inputStruct, v5, 0, 0, outputStruct, &v11);
      if (v6 != -536870165)
      {
        break;
      }

      if (qword_1004EDF28 != -1)
      {
        sub_10004F424();
      }

      v7 = qword_1004EDF30;
      if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "applebt_hci_read: method kAppleBTHciRead was aborted by signal! Read again\n", buf, 2u);
      }
    }

    v8 = v6;
    if (v6)
    {
      if (qword_1004EDF28 != -1)
      {
        sub_10004F44C();
      }

      if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
      {
        sub_10004F474();
      }
    }
  }

  else
  {
    if (qword_1004EDF28 != -1)
    {
      sub_10004F3D4();
    }

    if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
    {
      sub_10004F3E8();
    }

    return 5;
  }

  return v8;
}

CFTypeRef sub_10001DBC8()
{
  v1 = dword_1004EDF3C;
  if (dword_1004EDF3C)
  {

    return IORegistryEntrySearchCFProperty(v1, "IODeviceTree", @"pipes", kCFAllocatorDefault, 1u);
  }

  else
  {
    if (qword_1004EDF28 != -1)
    {
      sub_10004F4EC();
    }

    if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_ERROR))
    {
      sub_10004F500();
    }

    return 0;
  }
}

void sub_10001DC90(__CFRunLoop *a1)
{
  if (qword_1004EDF28 != -1)
  {
    sub_10004F53C();
  }

  v2 = qword_1004EDF30;
  if (os_log_type_enabled(qword_1004EDF30, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DeviceFoundCB: releasing waiting thread\n", v3, 2u);
  }

  CFRunLoopStop(a1);
}

void sub_10001DE20(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t sub_1000282E0()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("msleep 200", 0);
                                        if (!result)
                                        {

                                          return sub_100019B78("quit", 0);
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000284B8()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100028554()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("msleep 200", 0);
                                        if (!result)
                                        {

                                          return sub_100019B78("quit", 0);
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002872C()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000287C8()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("msleep 200", 0);
                                        if (!result)
                                        {

                                          return sub_100019B78("quit", 0);
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000289A0()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100028A3C()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("msleep 200", 0);
                                        if (!result)
                                        {

                                          return sub_100019B78("quit", 0);
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100028C14()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100028CB0()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("msleep 200", 0);
                                        if (!result)
                                        {

                                          return sub_100019B78("quit", 0);
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100028E88()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100028F24()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("msleep 200", 0);
                                        if (!result)
                                        {

                                          return sub_100019B78("quit", 0);
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000290FC()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100029198()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("msleep 200", 0);
                                        if (!result)
                                        {

                                          return sub_100019B78("quit", 0);
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100029370()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002940C()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("msleep 200", 0);
                                        if (!result)
                                        {

                                          return sub_100019B78("quit", 0);
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000295E4()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100029680()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("hci reset", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -A", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -N", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -Q", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002986C()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100029908()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("hci reset", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -A", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -N", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -Q", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100029AF4()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100029B90()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("hci reset", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -A", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -N", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -Q", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100029D7C()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100029E18()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("hci reset", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -A", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -N", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -Q", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002A004()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002A0A0()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("hci reset", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -A", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -N", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -Q", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002A28C()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002A328()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("hci reset", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -A", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -N", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -Q", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002A514()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002A5B0()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -b 1500000", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -x", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002A79C()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002A838()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -b 1500000", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -x", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002AA24()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002AAC0()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -b 1500000", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -x", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002ACAC()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002AD48()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -b 1500000", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -x", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002AF34()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002AFD0()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -b 1500000", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -x", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002B1BC()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002B258()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -b 1500000", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -x", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002B444()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002B4E0()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -b 1500000", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -x", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002B6CC()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002B768()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -b 1500000", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -x", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002B954()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002B9F0()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002BAD8()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002BB4C()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002BC34()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002BCA8()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002BD90()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002BE04()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002BEEC()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002BF60()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002C048()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002C0BC()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002C1A4()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002C218()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -x", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002C404()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002C4A0()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("power off", 0);
      if (!result)
      {
        result = sub_100019B78("msleep 100", 0);
        if (!result)
        {
          result = sub_100019B78("power on", 0);
          if (!result)
          {
            result = sub_100019B78("msleep 100", 0);
            if (!result)
            {
              result = sub_100019B78("hci reset", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -B", 0);
                if (!result)
                {
                  result = sub_100019B78("msleep 200 ", 0);
                  if (!result)
                  {
                    result = sub_100019B78("bcm -W", 0);
                    if (!result)
                    {
                      result = sub_100019B78("msleep 200 ", 0);
                      if (!result)
                      {
                        result = sub_100019B78("device -s 115200", 0);
                        if (!result)
                        {
                          result = sub_100019B78("msleep 200 ", 0);
                          if (!result)
                          {
                            result = sub_100019B78("bcm -B", 0);
                            if (!result)
                            {
                              result = sub_100019B78("msleep 200 ", 0);
                              if (!result)
                              {
                                result = sub_100019B78("bcm -A", 0);
                                if (!result)
                                {
                                  result = sub_100019B78("bcm -N", 0);
                                  if (!result)
                                  {
                                    result = sub_100019B78("bcm -Q", 0);
                                    if (!result)
                                    {
                                      result = sub_100019B78("bcm -x", 0);
                                      if (!result)
                                      {
                                        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x00", 0);
                                        if (!result)
                                        {
                                          result = sub_100019B78("msleep 200", 0);
                                          if (!result)
                                          {

                                            return sub_100019B78("quit", 0);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002C68C()
{
  result = sub_100019B78("device -D -S", 0);
  if (!result)
  {
    result = sub_100019B78("wake on", 0);
    if (!result)
    {
      result = sub_100019B78("hci reset", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -s 0x01,0x00,0x00,0x01,0x01,0x00,0x01,0x00,0x00,0x00,0x00,0x01", 0);
        if (!result)
        {
          result = sub_100019B78("wake off", 0);
          if (!result)
          {

            return sub_100019B78("quit", 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002C728()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002C810()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002C884()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002C96C()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002C9E0()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002CAC8()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002CB3C()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002CC24()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002CC98()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002CD80()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002CDF4()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002CEDC()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002CF50()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002D038()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002D0AC()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002D194()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002D208()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002D2F0()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002D364()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002D44C()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002D4C0()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002D5A8()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002D61C()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002D704()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002D778()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002D860()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002D8D4()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002D9BC()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002DA30()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002DB18()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002DB8C()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002DC74()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}

uint64_t sub_10002DCE8()
{
  result = sub_100019B78("power off", 0);
  if (!result)
  {
    result = sub_100019B78("device -D", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -W", 0);
      if (!result)
      {
        result = sub_100019B78("bcm -A", 0);
        if (!result)
        {
          result = sub_100019B78("bcm -N", 0);
          if (!result)
          {
            result = sub_100019B78("bcm -Q", 0);
            if (!result)
            {
              result = sub_100019B78("bcm -x", 0);
              if (!result)
              {
                result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
                if (!result)
                {

                  return sub_100019B78("quit", 0);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002DDD0()
{
  result = sub_100019B78("device -D", 0);
  if (!result)
  {
    result = sub_100019B78("hci reset", 0);
    if (!result)
    {
      result = sub_100019B78("bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00", 0);
      if (!result)
      {

        return sub_100019B78("quit", 0);
      }
    }
  }

  return result;
}