void sub_1000319E4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x4C0], 8);
  _Block_object_dispose(&STACK[0x490], 8);
  _Unwind_Resume(a1);
}

int *sub_100031A30()
{
  if (sub_10003B35C("/var/db/.spindump_ignore_thermal_pressure"))
  {
    v0 = 2;
  }

  else
  {
    v0 = 0;
  }

  word_100127F08 = word_100127F08 & 0xFFFD | v0;
  if (byte_100127EC8 == 1)
  {
    v1 = *__error();
    v2 = sub_10003E080();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v167 = (word_100127F08 >> 1) & 1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "ignore_thermal_pressure:%d due to cookie file", buf, 8u);
    }

    *__error() = v1;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v4 = *__error();
    v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ignore_thermal_pressure:%d due to cookie file", (word_100127F08 >> 1) & 1);
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
        v8 = malloc_type_calloc(0x400uLL, 1uLL, 0xA7329D5AuLL);
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
        sub_1000ACAD0();
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

  if (sub_10003B35C("/var/db/.spindump_ignore_debugger"))
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  word_100127F08 = word_100127F08 & 0xFFFB | v13;
  if (byte_100127EC8 == 1)
  {
    v14 = *__error();
    v15 = sub_10003E080();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v167 = (word_100127F08 >> 2) & 1;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "ignore_debugger:%d due to cookie file", buf, 8u);
    }

    *__error() = v14;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v16 = *__error();
    v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"ignore_debugger:%d due to cookie file", (word_100127F08 >> 2) & 1);
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
        v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x924F3FF7uLL);
        CFStringGetCString(v18, v20, 1024, 0x8000100u);
        v21 = v20;
      }

      if (qword_100127ED0)
      {
        v24 = qword_100127ED0;
      }

      else
      {
        v24 = __stderrp;
      }

      fprintf(v24, "%s\n", v20);
      if (v21)
      {
        free(v21);
      }

      CFRelease(v18);
    }

    else
    {
      v22 = sub_10003E080();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1000ACB48();
      }

      if (qword_100127ED0)
      {
        v23 = qword_100127ED0;
      }

      else
      {
        v23 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v23);
    }

    *__error() = v16;
  }

  if (qword_100127D90 != -1)
  {
    sub_1000ACBC0();
  }

  word_100127F08 = word_100127F08 & 0xFFFE | byte_100127D88;
  if (qword_100127DA0 != -1)
  {
    sub_1000ACBE8();
  }

  if (byte_100127D98)
  {
    v25 = 8;
  }

  else
  {
    v25 = 0;
  }

  word_100127F08 = word_100127F08 & 0xFFF7 | v25;
  if (qword_100127DB0 != -1)
  {
    sub_1000ACC10();
  }

  v26 = word_100127F08;
  if (byte_100127DA8)
  {
    v27 = 16;
  }

  else
  {
    v27 = 0;
  }

  word_100127F08 = word_100127F08 & 0xFFEF | v27;
  if ((v26 & 8) != 0)
  {
    if (byte_100127EC8 == 1)
    {
      v28 = *__error();
      v29 = sub_10003E080();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Submissions suppressed", buf, 2u);
      }

      *__error() = v28;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v30 = *__error();
      v31 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submissions suppressed");
      if (v31)
      {
        v32 = v31;
        v33 = CFStringGetCStringPtr(v31, 0x8000100u);
        if (v33)
        {
          v34 = v33;
          v35 = 0;
        }

        else
        {
          v34 = malloc_type_calloc(0x400uLL, 1uLL, 0xC8712B7BuLL);
          CFStringGetCString(v32, v34, 1024, 0x8000100u);
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

        CFRelease(v32);
      }

      else
      {
        v36 = sub_10003E080();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          sub_1000ACC38();
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

      *__error() = v30;
    }
  }

  if ((word_100127F08 & 0x10) != 0)
  {
    if (byte_100127EC8 == 1)
    {
      v39 = *__error();
      v40 = sub_10003E080();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Submissions forced enabled", buf, 2u);
      }

      *__error() = v39;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 2)
    {
      v41 = *__error();
      v42 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submissions forced enabled");
      if (v42)
      {
        v43 = v42;
        v44 = CFStringGetCStringPtr(v42, 0x8000100u);
        if (v44)
        {
          v45 = v44;
          v46 = 0;
        }

        else
        {
          v45 = malloc_type_calloc(0x400uLL, 1uLL, 0x79148E5DuLL);
          CFStringGetCString(v43, v45, 1024, 0x8000100u);
          v46 = v45;
        }

        if (qword_100127ED0)
        {
          v49 = qword_100127ED0;
        }

        else
        {
          v49 = __stderrp;
        }

        fprintf(v49, "%s\n", v45);
        if (v46)
        {
          free(v46);
        }

        CFRelease(v43);
      }

      else
      {
        v47 = sub_10003E080();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          sub_1000ACC78();
        }

        if (qword_100127ED0)
        {
          v48 = qword_100127ED0;
        }

        else
        {
          v48 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v48);
      }

      *__error() = v41;
    }
  }

  if (word_100127F08)
  {
    qword_100127EE0 = 0x4059000000000000;
    if (byte_100127EC8 == 1)
    {
      v50 = *__error();
      v51 = sub_10003E080();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v167 = qword_100127EE0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Apple Internal: reporting full spins %.1f%% of the time", buf, 0xCu);
      }

      *__error() = v50;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 1)
    {
      v52 = *__error();
      v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Apple Internal: reporting full spins %.1f%% of the time", qword_100127EE0);
      if (v53)
      {
        v54 = v53;
        v55 = CFStringGetCStringPtr(v53, 0x8000100u);
        if (v55)
        {
          v56 = v55;
          v57 = 0;
        }

        else
        {
          v56 = malloc_type_calloc(0x400uLL, 1uLL, 0x51B025DCuLL);
          CFStringGetCString(v54, v56, 1024, 0x8000100u);
          v57 = v56;
        }

        if (qword_100127ED0)
        {
          v60 = qword_100127ED0;
        }

        else
        {
          v60 = __stderrp;
        }

        fprintf(v60, "%s\n", v56);
        if (v57)
        {
          free(v57);
        }

        CFRelease(v54);
      }

      else
      {
        v58 = sub_10003E080();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
        {
          sub_1000ACCB8();
        }

        if (qword_100127ED0)
        {
          v59 = qword_100127ED0;
        }

        else
        {
          v59 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v59);
      }

      *__error() = v52;
    }
  }

  else
  {
    sub_10005CB40(@"spindump_percent_full_spin_reports", &qword_100127EE0, 0.0);
  }

  v61 = 25.0;
  if (word_100127F08)
  {
    v61 = 100.0;
  }

  sub_10005CB40(@"io_exception_sampling_percentage", &qword_100127EF8, v61);
  v62 = 5.0;
  if (word_100127F08)
  {
    v62 = 100.0;
  }

  sub_10005CB40(@"cpu_resource_1st_party_sampling_percentage", &qword_100127F00, v62);
  sub_10005CB40(@"spindump_percent_short_spins_reported", &unk_100127EE8, 10.0);
  sub_10005CB40(@"spindump_threshold_defining_short_spins_s", &unk_100127EF0, 2.0);
  word_100127F08 &= 0xFF3Fu;
  if (byte_100127EC8 == 1)
  {
    v63 = *__error();
    v64 = sub_10003E080();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      sub_1000ACD34();
    }

    *__error() = v63;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v65 = *__error();
    v66 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submit spins:%d hangs:%d unavilable on this platform", (word_100127F08 >> 6) & 1, (word_100127F08 >> 7) & 1);
    if (v66)
    {
      v67 = v66;
      v68 = CFStringGetCStringPtr(v66, 0x8000100u);
      if (v68)
      {
        v69 = v68;
        v70 = 0;
      }

      else
      {
        v69 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2E3C680uLL);
        CFStringGetCString(v67, v69, 1024, 0x8000100u);
        v70 = v69;
      }

      if (qword_100127ED0)
      {
        v73 = qword_100127ED0;
      }

      else
      {
        v73 = __stderrp;
      }

      fprintf(v73, "%s\n", v69);
      if (v70)
      {
        free(v70);
      }

      CFRelease(v67);
    }

    else
    {
      v71 = sub_10003E080();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
      {
        sub_1000ACDB4();
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
    }

    *__error() = v65;
  }

  word_100127F08 = (word_100127F08 & 0xBCFF | (((word_100127F08 >> 3) & 1) << 8) & 0xBDFF | (((word_100127F08 >> 3) & 1) << 14) | (((word_100127F08 >> 3) & 1) << 9)) ^ 0x4300;
  if (byte_100127EC8 == 1)
  {
    v74 = *__error();
    v75 = sub_10003E080();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      *v167 = HIBYTE(word_100127F08) & 1;
      *&v167[4] = 1024;
      *&v167[6] = (word_100127F08 >> 9) & 1;
      v168 = 1024;
      v169 = (word_100127F08 >> 3) & 1;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "Submit resource reports cpu:%d io:%d due to suppression:%d", buf, 0x14u);
    }

    *__error() = v74;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v76 = *__error();
    v77 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submit resource reports cpu:%d io:%d due to suppression:%d", HIBYTE(word_100127F08) & 1, (word_100127F08 >> 9) & 1, (word_100127F08 >> 3) & 1);
    if (v77)
    {
      v78 = v77;
      v79 = CFStringGetCStringPtr(v77, 0x8000100u);
      if (v79)
      {
        v80 = v79;
        v81 = 0;
      }

      else
      {
        v80 = malloc_type_calloc(0x400uLL, 1uLL, 0xCE35C379uLL);
        CFStringGetCString(v78, v80, 1024, 0x8000100u);
        v81 = v80;
      }

      if (qword_100127ED0)
      {
        v84 = qword_100127ED0;
      }

      else
      {
        v84 = __stderrp;
      }

      fprintf(v84, "%s\n", v80);
      if (v81)
      {
        free(v81);
      }

      CFRelease(v78);
    }

    else
    {
      v82 = sub_10003E080();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
      {
        sub_1000ACE34();
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

    *__error() = v76;
  }

  word_100127F08 = ((word_100127F08 << 8) & 0x800 | word_100127F08 & 0xE3FF | (word_100127F08 << 7) & 0x400 | (word_100127F08 << 9) & 0x1000) ^ 0x1C00;
  if (byte_100127EC8 == 1)
  {
    v85 = *__error();
    v86 = sub_10003E080();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      *buf = 67109888;
      *v167 = (word_100127F08 >> 10) & 1;
      *&v167[4] = 1024;
      *&v167[6] = (word_100127F08 >> 11) & 1;
      v168 = 1024;
      v169 = (word_100127F08 >> 12) & 1;
      v170 = 1024;
      v171 = (word_100127F08 >> 3) & 1;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "Submit systemstats:%d sleep/wake failure:%d watchdog:%d due to suppression:%d", buf, 0x1Au);
    }

    *__error() = v85;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v87 = *__error();
    v88 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submit systemstats:%d sleep/wake failure:%d watchdog:%d due to suppression:%d", (word_100127F08 >> 10) & 1, (word_100127F08 >> 11) & 1, (word_100127F08 >> 12) & 1, (word_100127F08 >> 3) & 1);
    if (v88)
    {
      v89 = v88;
      v90 = CFStringGetCStringPtr(v88, 0x8000100u);
      if (v90)
      {
        v91 = v90;
        v92 = 0;
      }

      else
      {
        v91 = malloc_type_calloc(0x400uLL, 1uLL, 0x809ED32AuLL);
        CFStringGetCString(v89, v91, 1024, 0x8000100u);
        v92 = v91;
      }

      if (qword_100127ED0)
      {
        v95 = qword_100127ED0;
      }

      else
      {
        v95 = __stderrp;
      }

      fprintf(v95, "%s\n", v91);
      if (v92)
      {
        free(v92);
      }

      CFRelease(v89);
    }

    else
    {
      v93 = sub_10003E080();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
      {
        sub_1000ACEC0();
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

    *__error() = v87;
  }

  word_100127F08 &= ~0x2000u;
  if (byte_100127EC8 == 1)
  {
    v96 = *__error();
    v97 = sub_10003E080();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      sub_1000ACF5C();
    }

    *__error() = v96;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 0)
  {
    v98 = *__error();
    v99 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Submit service watchdog:%d unavilable on this platform", (word_100127F08 >> 13) & 1);
    if (v99)
    {
      v100 = v99;
      v101 = CFStringGetCStringPtr(v99, 0x8000100u);
      if (v101)
      {
        v102 = v101;
        v103 = 0;
      }

      else
      {
        v102 = malloc_type_calloc(0x400uLL, 1uLL, 0xAC3B3707uLL);
        CFStringGetCString(v100, v102, 1024, 0x8000100u);
        v103 = v102;
      }

      if (qword_100127ED0)
      {
        v106 = qword_100127ED0;
      }

      else
      {
        v106 = __stderrp;
      }

      fprintf(v106, "%s\n", v102);
      if (v103)
      {
        free(v103);
      }

      CFRelease(v100);
    }

    else
    {
      v104 = sub_10003E080();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
      {
        sub_1000ACFD4();
      }

      if (qword_100127ED0)
      {
        v105 = qword_100127ED0;
      }

      else
      {
        v105 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v105);
    }

    *__error() = v98;
  }

  if (word_100127F08)
  {
    v107 = 0;
  }

  else
  {
    v107 = 2;
  }

  byte_100127EDC = v107 | byte_100127EDC & 0xFC;
  if (byte_100127EC8 == 1)
  {
    v108 = *__error();
    v109 = sub_10003E080();
    if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v167 = (byte_100127EDC >> 1) & 1;
      *&v167[4] = 1024;
      *&v167[6] = word_100127F08 & 1;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_INFO, "Avoid affecting audio:%d due to internal:%d", buf, 0xEu);
    }

    *__error() = v108;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v110 = *__error();
    v111 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Avoid affecting audio:%d due to internal:%d", (byte_100127EDC >> 1) & 1, word_100127F08 & 1);
    if (v111)
    {
      v112 = v111;
      v113 = CFStringGetCStringPtr(v111, 0x8000100u);
      if (v113)
      {
        v114 = v113;
        v115 = 0;
      }

      else
      {
        v114 = malloc_type_calloc(0x400uLL, 1uLL, 0x891B66FuLL);
        CFStringGetCString(v112, v114, 1024, 0x8000100u);
        v115 = v114;
      }

      if (qword_100127ED0)
      {
        v118 = qword_100127ED0;
      }

      else
      {
        v118 = __stderrp;
      }

      fprintf(v118, "%s\n", v114);
      if (v115)
      {
        free(v115);
      }

      CFRelease(v112);
    }

    else
    {
      v116 = sub_10003E080();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
      {
        sub_1000AD04C();
      }

      if (qword_100127ED0)
      {
        v117 = qword_100127ED0;
      }

      else
      {
        v117 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v117);
    }

    *__error() = v110;
  }

  if (sub_10003B35C("/var/db/.spindump_enable_symbolication"))
  {
    v119 = 8;
  }

  else
  {
    v119 = 0;
  }

  byte_100127EDC = byte_100127EDC & 0xF7 | v119;
  if (byte_100127EC8 == 1)
  {
    v120 = *__error();
    v121 = sub_10003E080();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v167 = (byte_100127EDC >> 3) & 1;
      *&v167[4] = 1024;
      *&v167[6] = *v167;
      _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_INFO, "Symbolicate:%d due to enable symbolication file existing:%d", buf, 0xEu);
    }

    *__error() = v120;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v122 = *__error();
    v123 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Symbolicate:%d due to enable symbolication file existing:%d", (byte_100127EDC >> 3) & 1, (byte_100127EDC >> 3) & 1);
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
        v126 = malloc_type_calloc(0x400uLL, 1uLL, 0x2D3FA092uLL);
        CFStringGetCString(v124, v126, 1024, 0x8000100u);
        v127 = v126;
      }

      if (qword_100127ED0)
      {
        v130 = qword_100127ED0;
      }

      else
      {
        v130 = __stderrp;
      }

      fprintf(v130, "%s\n", v126);
      if (v127)
      {
        free(v127);
      }

      CFRelease(v124);
    }

    else
    {
      v128 = sub_10003E080();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_FAULT))
      {
        sub_1000AD0E4();
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

    *__error() = v122;
  }

  byte_100127EDC |= 0x10u;
  if (byte_100127EC8 == 1)
  {
    v131 = *__error();
    v132 = sub_10003E080();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v167 = (byte_100127EDC >> 4) & 1;
      _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_INFO, "NoBulkSymbolication:%d", buf, 8u);
    }

    *__error() = v131;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v133 = *__error();
    v134 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"NoBulkSymbolication:%d", (byte_100127EDC >> 4) & 1);
    if (v134)
    {
      v135 = v134;
      v136 = CFStringGetCStringPtr(v134, 0x8000100u);
      if (v136)
      {
        v137 = v136;
        v138 = 0;
      }

      else
      {
        v137 = malloc_type_calloc(0x400uLL, 1uLL, 0x5082ADBBuLL);
        CFStringGetCString(v135, v137, 1024, 0x8000100u);
        v138 = v137;
      }

      if (qword_100127ED0)
      {
        v141 = qword_100127ED0;
      }

      else
      {
        v141 = __stderrp;
      }

      fprintf(v141, "%s\n", v137);
      if (v138)
      {
        free(v138);
      }

      CFRelease(v135);
    }

    else
    {
      v139 = sub_10003E080();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
      {
        sub_1000AD170();
      }

      if (qword_100127ED0)
      {
        v140 = qword_100127ED0;
      }

      else
      {
        v140 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v140);
    }

    *__error() = v133;
  }

  byte_100127EDC &= ~4u;
  if (byte_100127EC8 == 1)
  {
    v142 = *__error();
    v143 = sub_10003E080();
    if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v167 = (byte_100127EDC >> 2) & 1;
      _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_INFO, "UseDsymForUUID:%d", buf, 8u);
    }

    *__error() = v142;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v144 = *__error();
    v145 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"UseDsymForUUID:%d", (byte_100127EDC >> 2) & 1);
    if (v145)
    {
      v146 = v145;
      v147 = CFStringGetCStringPtr(v145, 0x8000100u);
      if (v147)
      {
        v148 = v147;
        v149 = 0;
      }

      else
      {
        v148 = malloc_type_calloc(0x400uLL, 1uLL, 0x9A2E63F5uLL);
        CFStringGetCString(v146, v148, 1024, 0x8000100u);
        v149 = v148;
      }

      if (qword_100127ED0)
      {
        v152 = qword_100127ED0;
      }

      else
      {
        v152 = __stderrp;
      }

      fprintf(v152, "%s\n", v148);
      if (v149)
      {
        free(v149);
      }

      CFRelease(v146);
    }

    else
    {
      v150 = sub_10003E080();
      if (os_log_type_enabled(v150, OS_LOG_TYPE_FAULT))
      {
        sub_1000AD1E8();
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

    *__error() = v144;
  }

  result = sub_10003B35C("/var/db/.spindump_disable_exclaves");
  if (result)
  {
    v154 = 32;
  }

  else
  {
    v154 = 0;
  }

  byte_100127EDC = byte_100127EDC & 0xDF | v154;
  if (byte_100127EC8 == 1)
  {
    v155 = *__error();
    v156 = sub_10003E080();
    if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v167 = (byte_100127EDC >> 5) & 1;
      _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_INFO, "NoExclaves:%d", buf, 8u);
    }

    result = __error();
    *result = v155;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v157 = *__error();
    v158 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"NoExclaves:%d", (byte_100127EDC >> 5) & 1);
    if (v158)
    {
      v159 = v158;
      v160 = CFStringGetCStringPtr(v158, 0x8000100u);
      if (v160)
      {
        v161 = v160;
        v162 = 0;
      }

      else
      {
        v161 = malloc_type_calloc(0x400uLL, 1uLL, 0x4C239179uLL);
        CFStringGetCString(v159, v161, 1024, 0x8000100u);
        v162 = v161;
      }

      if (qword_100127ED0)
      {
        v165 = qword_100127ED0;
      }

      else
      {
        v165 = __stderrp;
      }

      fprintf(v165, "%s\n", v161);
      if (v162)
      {
        free(v162);
      }

      CFRelease(v159);
    }

    else
    {
      v163 = sub_10003E080();
      if (os_log_type_enabled(v163, OS_LOG_TYPE_FAULT))
      {
        sub_1000AD260();
      }

      if (qword_100127ED0)
      {
        v164 = qword_100127ED0;
      }

      else
      {
        v164 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v164);
    }

    result = __error();
    *result = v157;
  }

  return result;
}

void sub_1000335BC(void *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100033698;
  v3[3] = &unk_100115218;
  v4 = a1;
  v1 = v4;
  v2 = objc_retainBlock(v3);
  (v2[2])(v2, 2);
  (v2[2])(v2, 15);
  (v2[2])(v2, 1);
  (v2[2])(v2, 3);
}

void sub_100033698(uint64_t a1, int a2)
{
  v4 = a2;
  v5 = dispatch_get_global_queue(25, 2uLL);
  v6 = dispatch_source_create(&_dispatch_source_type_signal, v4, 0, v5);

  if (!v6)
  {
    sub_1000BD5E0(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  signal(a2, 1);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000804F4;
  v17[3] = &unk_1001159C8;
  v15 = *(a1 + 32);
  v18 = v6;
  v19 = v15;
  v16 = v6;
  dispatch_source_set_event_handler(v16, v17);
  dispatch_resume(v16);
}

void sub_100033794()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);
  v2 = dispatch_queue_create("com.apple.spindump.communication", v1);
  if (!v2)
  {
    sub_1000ADB3C(0, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = v2;
  mach_service = xpc_connection_create_mach_service("com.apple.spindump", v2, 1uLL);
  v12 = qword_100127DB8;
  qword_100127DB8 = mach_service;

  v13 = qword_100127DB8;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000339AC;
  handler[3] = &unk_100115260;
  v16 = v10;
  v14 = v10;
  xpc_connection_set_event_handler(v13, handler);
  xpc_connection_resume(qword_100127DB8);
  sub_10006B22C();
}

uint64_t sub_1000338E4()
{
  if (qword_100127E10 != -1)
  {
    sub_1000BD3B8();
  }

  if (qword_100127568)
  {
    v2 = 0;
    v1 = 4;
    if (sysctl(dword_100127DFC, qword_100127568, &v2, &v1, 0, 0))
    {
      sub_1000BD3CC();
    }

    else if (v2)
    {
      return 1;
    }
  }

  return 0;
}

void sub_100033970(id a1)
{
  if (sysctlnametomib("security.mac.sandbox.audio_active", dword_100127DFC, &qword_100127568))
  {
    sub_1000BD7C0();
  }
}

void sub_1000339AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_error)
  {
    if (byte_100127EC8 == 1)
    {
      v9 = *__error();
      v10 = sub_10003E080();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_1000ADD2C(v3, v10);
      }

      *__error() = v9;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v12 = *__error();
      string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
      v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Got xpc error for peer: %s", string);
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
          v17 = malloc_type_calloc(0x400uLL, 1uLL, 0xBE07064AuLL);
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
          sub_1000ADDC0(v3, _xpc_error_key_description);
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

      *__error() = v12;
    }
  }

  else if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    pid = xpc_connection_get_pid(v3);
    euid = xpc_connection_get_euid(v3);
    v6 = xpc_connection_copy_entitlement_value();
    v7 = v6;
    v8 = v6 && xpc_get_type(v6) == &_xpc_type_BOOL && xpc_BOOL_get_value(v7);
    xpc_connection_set_target_queue(v3, *(a1 + 32));
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005D6FC;
    handler[3] = &unk_100115238;
    v23 = pid;
    v24 = euid;
    v25 = v8;
    v26 = 0;
    v27 = 0;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_resume(v3);
  }
}

size_t sub_100033CB8(char *a1, size_t a2, int a3, int8x16_t a4)
{
  result = 0;
  if (a1 && a2)
  {
    memset(&v18, 0, sizeof(v18));
    v17 = (kCFAbsoluteTimeIntervalSince1970 + *a4.i64);
    localtime_r(&v17, &v18);
    result = strftime(a1, a2, "%Y-%m-%d %T", &v18);
    if (result)
    {
      v9 = result;
      v10 = &a1[result];
      v11 = a2 - result;
      if (a3)
      {
        *v8.i64 = *a4.i64 - trunc(*a4.i64);
        v12.f64[0] = NAN;
        v12.f64[1] = NAN;
        v8.i64[0] = vbslq_s8(vnegq_f64(v12), v8, a4).i64[0];
        if (*v8.i64 > 0.0)
        {
          snprintf(&__str, 0x10uLL, "%f", *v8.i64);
          v13 = strlcpy(v10, v20, v11);
          v14 = v11 > v13;
          v11 -= v13;
          if (!v14)
          {
            return a2 - 1;
          }

          v9 += v13;
          v10 += v13;
        }
      }

      v15 = strftime(v10, v11, " %z", &v18);
      if (!v15)
      {
        v10[v9] = 0;
      }

      return v15 + v9;
    }

    else
    {
      *a1 = 0;
    }
  }

  return result;
}

const char *sub_100033E24(unsigned int a1, int a2)
{
  v2 = "hang";
  if (a2)
  {
    v2 = "hang-lite";
  }

  if (a1 <= 0xF)
  {
    v3 = &off_100115540;
    if (a2)
    {
      v3 = &off_1001154C0;
    }

    return v3[a1];
  }

  return v2;
}

void sub_100033E68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = a2;
  v20 = a5;
  v137 = a4;
  if ((a1 & 0x80000000) == 0)
  {
    if (byte_100127EC8)
    {
      v21 = *__error();
      v22 = sub_10003E080();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 136447490;
        v156 = sub_10003E020(a1);
        v157 = 1024;
        *v158 = a1;
        *&v158[4] = 2048;
        *&v158[6] = a3;
        *&v158[14] = 2048;
        *&v158[16] = a6;
        *&v158[24] = 2048;
        *&v158[26] = a7;
        v159 = 2048;
        v160 = a4;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%{public}s [%d]: cpu resource: thread %#llx using %.0fs cpu over the last %.0f seconds with flags %#llx", buf, 0x3Au);
      }

      *__error() = v21;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 1)
    {
      goto LABEL_52;
    }

    v24 = *__error();
    v25 = sub_10003E020(a1);
    v26 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: thread %#llx using %.0fs cpu over the last %.0f seconds with flags %#llx", v25, a1, a3, *&a6, *&a7, a4);
    if (v26)
    {
      v27 = v26;
      CStringPtr = CFStringGetCStringPtr(v26, 0x8000100u);
      if (CStringPtr)
      {
        v29 = CStringPtr;
        v30 = 0;
      }

      else
      {
        v29 = malloc_type_calloc(0x400uLL, 1uLL, 0xE9E5874DuLL);
        CFStringGetCString(v27, v29, 1024, 0x8000100u);
        v30 = v29;
      }

      if (qword_100127ED0)
      {
        v40 = qword_100127ED0;
      }

      else
      {
        v40 = __stderrp;
      }

      fprintf(v40, "%s\n", v29);
      if (v30)
      {
        free(v30);
      }

LABEL_50:
      CFRelease(v27);
      goto LABEL_51;
    }

    v38 = sub_10003E080();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      v133 = sub_10003E020(a1);
      *buf = 136316418;
      v156 = v133;
      v157 = 1024;
      *v158 = a1;
      *&v158[4] = 2048;
      *&v158[6] = a3;
      *&v158[14] = 2048;
      *&v158[16] = a6;
      *&v158[24] = 2048;
      *&v158[26] = a7;
      v159 = 2048;
      v160 = a4;
      _os_log_fault_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: cpu resource: thread %#llx using %.0fs cpu over the last %.0f seconds with flags %#llx", buf, 0x3Au);
    }

    if (qword_100127ED0)
    {
      v39 = qword_100127ED0;
    }

    else
    {
      v39 = __stderrp;
    }

    goto LABEL_31;
  }

  if (byte_100127EC8)
  {
    v31 = *__error();
    v32 = sub_10003E080();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 134218752;
      v156 = a3;
      v157 = 2048;
      *v158 = a6;
      *&v158[8] = 2048;
      *&v158[10] = a7;
      *&v158[18] = 2048;
      *&v158[20] = a4;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "cpu resource: thread %#llx using %.0fs cpu over the last %.0f seconds with flags %#llx", buf, 0x2Au);
    }

    *__error() = v31;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 1)
  {
    v24 = *__error();
    v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: thread %#llx using %.0fs cpu over the last %.0f seconds with flags %#llx", a3, *&a6, *&a7, a4);
    if (v34)
    {
      v27 = v34;
      v35 = CFStringGetCStringPtr(v34, 0x8000100u);
      if (v35)
      {
        v36 = v35;
        v37 = 0;
      }

      else
      {
        v36 = malloc_type_calloc(0x400uLL, 1uLL, 0xE9E5874DuLL);
        CFStringGetCString(v27, v36, 1024, 0x8000100u);
        v37 = v36;
      }

      if (qword_100127ED0)
      {
        v42 = qword_100127ED0;
      }

      else
      {
        v42 = __stderrp;
      }

      fprintf(v42, "%s\n", v36);
      if (v37)
      {
        free(v37);
      }

      goto LABEL_50;
    }

    v41 = sub_10003E080();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218752;
      v156 = a3;
      v157 = 2048;
      *v158 = a6;
      *&v158[8] = 2048;
      *&v158[10] = a7;
      *&v158[18] = 2048;
      *&v158[20] = a4;
      _os_log_fault_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "Unable to format: cpu resource: thread %#llx using %.0fs cpu over the last %.0f seconds with flags %#llx", buf, 0x2Au);
    }

    if (qword_100127ED0)
    {
      v39 = qword_100127ED0;
    }

    else
    {
      v39 = __stderrp;
    }

LABEL_31:
    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v39);
LABEL_51:
    *__error() = v24;
  }

LABEL_52:
  v43 = sub_10003E0F0(a1);
  if (!v19)
  {
    v19 = sub_10003E138(a1);
  }

  v154 = 0;
  v44 = [v19 lastPathComponent];
  v45 = sub_1000534BC(v44, a1, "cpu resource", 160, &v154);

  if ((word_100127F08 & 0x100) == 0)
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v52 = *__error();
        v53 = sub_10003E080();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A92EC();
        }

        *__error() = v52;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_88;
      }

      v48 = *__error();
      v50 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: not monitoring due to suppression cookie file");
      if (!v50)
      {
        v51 = sub_10003E080();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
        {
          sub_1000A9328();
        }

        goto LABEL_83;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v46 = *__error();
        v47 = sub_10003E080();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A9364();
        }

        *__error() = v46;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_88;
      }

      v48 = *__error();
      v49 = sub_10003E020(a1);
      v50 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: not monitoring due to suppression cookie file", v49, a1);
      if (!v50)
      {
        v51 = sub_10003E080();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
        {
          sub_1000A93E4();
        }

LABEL_83:

        if (qword_100127ED0)
        {
          v62 = qword_100127ED0;
        }

        else
        {
          v62 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v62);
LABEL_87:
        *__error() = v48;
LABEL_88:
        v45 |= 0x8000uLL;
        goto LABEL_89;
      }
    }

    v54 = v50;
    v136 = v48;
    v55 = a3;
    v56 = v43;
    v57 = v20;
    v58 = CFStringGetCStringPtr(v50, 0x8000100u);
    if (v58)
    {
      v59 = v58;
      v60 = 0;
    }

    else
    {
      v59 = malloc_type_calloc(0x400uLL, 1uLL, 0x47299994uLL);
      CFStringGetCString(v54, v59, 1024, 0x8000100u);
      v60 = v59;
    }

    if (qword_100127ED0)
    {
      v61 = qword_100127ED0;
    }

    else
    {
      v61 = __stderrp;
    }

    fprintf(v61, "%s\n", v59);
    if (v60)
    {
      free(v60);
    }

    CFRelease(v54);
    v20 = v57;
    a4 = v137;
    v43 = v56;
    a3 = v55;
    v48 = v136;
    goto LABEL_87;
  }

LABEL_89:
  if ((sub_100062144([v19 UTF8String], 1) & 1) == 0 && sub_100053C3C(*&qword_100127F00))
  {
    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v80 = *__error();
        a4 = sub_10003E080();
        if (os_log_type_enabled(a4, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A9464();
        }

        *__error() = v80;
        LOBYTE(a4) = v137;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_166;
      }

      v64 = *__error();
      v66 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: not monitoring due to throttling the number of reports generated for 1st party processes");
      if (!v66)
      {
        v67 = sub_10003E080();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
        {
          sub_1000A94A0();
        }

        goto LABEL_161;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v63 = *__error();
        a4 = sub_10003E080();
        if (os_log_type_enabled(a4, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A94DC();
        }

        *__error() = v63;
        LOBYTE(a4) = v137;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_166;
      }

      v64 = *__error();
      v65 = sub_10003E020(a1);
      v66 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: not monitoring due to throttling the number of reports generated for 1st party processes", v65, a1);
      if (!v66)
      {
        v67 = sub_10003E080();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
        {
          sub_1000A955C();
        }

LABEL_161:

        if (qword_100127ED0)
        {
          v109 = qword_100127ED0;
        }

        else
        {
          v109 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v109);
LABEL_165:
        *__error() = v64;
        LOBYTE(a4) = v137;
LABEL_166:
        v45 |= 0x200000uLL;
LABEL_167:
        if ((a1 & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v116 = *__error();
            a4 = sub_10003E080();
            if (os_log_type_enabled(a4, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v156 = v45;
              _os_log_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEFAULT, "cpu resource: not monitoring due to conditions %#llx", buf, 0xCu);
            }

            *__error() = v116;
            LOBYTE(a4) = v137;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 2)
          {
            goto LABEL_200;
          }

          v112 = *__error();
          v114 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: not monitoring due to conditions %#llx", v45);
          if (!v114)
          {
            v115 = sub_10003E080();
            if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
            {
              sub_1000A95DC();
            }

            goto LABEL_195;
          }
        }

        else
        {
          if (byte_100127EC8)
          {
            v110 = *__error();
            a4 = sub_10003E080();
            if (os_log_type_enabled(a4, OS_LOG_TYPE_DEFAULT))
            {
              v111 = sub_10003E020(a1);
              *buf = 136446722;
              v156 = v111;
              v157 = 1024;
              *v158 = a1;
              *&v158[4] = 2048;
              *&v158[6] = v45;
              _os_log_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: cpu resource: not monitoring due to conditions %#llx", buf, 0x1Cu);
            }

            *__error() = v110;
            LOBYTE(a4) = v137;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 2)
          {
            goto LABEL_200;
          }

          v112 = *__error();
          v113 = sub_10003E020(a1);
          v114 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: not monitoring due to conditions %#llx", v113, a1, v45);
          if (!v114)
          {
            v115 = sub_10003E080();
            if (os_log_type_enabled(v115, OS_LOG_TYPE_FAULT))
            {
              sub_1000A964C();
            }

LABEL_195:

            if (qword_100127ED0)
            {
              v123 = qword_100127ED0;
            }

            else
            {
              v123 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v123);
LABEL_199:
            *__error() = v112;
            LOBYTE(a4) = v137;
LABEL_200:
            v124 = v154;
            v125 = a8 - a7;
            v126 = a4 & 1;
            v127 = a1;
            v128 = v19;
            v129 = v43;
            v130 = v45;
LABEL_201:
            sub_10003E494(v127, v128, v129, v130, v124, v126, v125, a8, a6);
            goto LABEL_202;
          }
        }

        v117 = v114;
        v118 = v43;
        v119 = CFStringGetCStringPtr(v114, 0x8000100u);
        if (v119)
        {
          v120 = v119;
          v121 = 0;
        }

        else
        {
          v120 = malloc_type_calloc(0x400uLL, 1uLL, 0xD4F113E9uLL);
          CFStringGetCString(v117, v120, 1024, 0x8000100u);
          v121 = v120;
        }

        if (qword_100127ED0)
        {
          v122 = qword_100127ED0;
        }

        else
        {
          v122 = __stderrp;
        }

        fprintf(v122, "%s\n", v120);
        if (v121)
        {
          free(v121);
        }

        CFRelease(v117);
        v43 = v118;
        goto LABEL_199;
      }
    }

    v81 = v66;
    v82 = v43;
    v83 = CFStringGetCStringPtr(v66, 0x8000100u);
    if (v83)
    {
      v84 = v83;
      v85 = 0;
    }

    else
    {
      v84 = malloc_type_calloc(0x400uLL, 1uLL, 0xD74E2BA8uLL);
      CFStringGetCString(v81, v84, 1024, 0x8000100u);
      v85 = v84;
    }

    if (qword_100127ED0)
    {
      v92 = qword_100127ED0;
    }

    else
    {
      v92 = __stderrp;
    }

    fprintf(v92, "%s\n", v84);
    if (v85)
    {
      free(v85);
    }

    CFRelease(v81);
    v43 = v82;
    goto LABEL_165;
  }

  if (v45)
  {
    goto LABEL_167;
  }

  v68 = v20;
  v69 = v154;
  if ((v154 & 0x80000000000) != 0)
  {
    if (sub_10006B204())
    {
      if ((a1 & 0x80000000) != 0)
      {
        if (byte_100127EC8)
        {
          v93 = *__error();
          v94 = sub_10003E080();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "cpu resource: deferring report generation due to game mode", buf, 2u);
          }

          *__error() = v93;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 2)
        {
          goto LABEL_224;
        }

        v76 = *__error();
        v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: deferring report generation due to game mode");
        if (!v78)
        {
          v79 = sub_10003E080();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
          {
            sub_1000A9850();
          }

          goto LABEL_219;
        }
      }

      else
      {
        if (byte_100127EC8)
        {
          v73 = *__error();
          v74 = sub_10003E080();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            v75 = sub_10003E020(a1);
            *buf = 136446466;
            v156 = v75;
            v157 = 1024;
            *v158 = a1;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%{public}s [%d]: cpu resource: deferring report generation due to game mode", buf, 0x12u);
          }

          *__error() = v73;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 2)
        {
          goto LABEL_224;
        }

        v76 = *__error();
        v77 = sub_10003E020(a1);
        v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: deferring report generation due to game mode", v77, a1);
        if (!v78)
        {
          v79 = sub_10003E080();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
          {
            sub_1000A988C();
          }

LABEL_219:

          if (qword_100127ED0)
          {
            v134 = qword_100127ED0;
          }

          else
          {
            v134 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v134);
LABEL_223:
          *__error() = v76;
LABEL_224:
          sub_10006BAB4(a1, v19, a3, a4, v68, a6, a7, a8, a9, a10);
          v125 = a8 - a7;
          v124 = v69 | 0x100000000000;
          v20 = v68;
          v126 = a4 & 1;
          v127 = a1;
          v128 = v19;
          v129 = v43;
          v130 = 0;
          goto LABEL_201;
        }
      }

      v95 = v78;
      v138 = v76;
      v96 = a3;
      v97 = v43;
      v98 = CFStringGetCStringPtr(v78, 0x8000100u);
      if (v98)
      {
        v99 = v98;
        v100 = 0;
      }

      else
      {
        v99 = malloc_type_calloc(0x400uLL, 1uLL, 0xD39BB45DuLL);
        CFStringGetCString(v95, v99, 1024, 0x8000100u);
        v100 = v99;
      }

      if (qword_100127ED0)
      {
        v131 = qword_100127ED0;
      }

      else
      {
        v131 = __stderrp;
      }

      fprintf(v131, "%s\n", v99);
      if (v100)
      {
        free(v100);
      }

      CFRelease(v95);
      v43 = v97;
      a3 = v96;
      v76 = v138;
      goto LABEL_223;
    }

    if ((a1 & 0x80000000) != 0)
    {
      if (byte_100127EC8)
      {
        v101 = *__error();
        v102 = sub_10003E080();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A96D8();
        }

        *__error() = v101;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_103;
      }

      v88 = *__error();
      v90 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"cpu resource: cannot defer report generation for game mode");
      if (!v90)
      {
        v91 = sub_10003E080();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
        {
          sub_1000A9714();
        }

        goto LABEL_227;
      }
    }

    else
    {
      if (byte_100127EC8)
      {
        v86 = *__error();
        v87 = sub_10003E080();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
        {
          sub_1000A9750();
        }

        *__error() = v86;
      }

      if (byte_100127EC9 != 1 || dword_100127558 > 0)
      {
        goto LABEL_103;
      }

      v88 = *__error();
      v89 = sub_10003E020(a1);
      v90 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: cpu resource: cannot defer report generation for game mode", v89, a1);
      if (!v90)
      {
        v91 = sub_10003E080();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
        {
          sub_1000A97D0();
        }

LABEL_227:

        if (qword_100127ED0)
        {
          v135 = qword_100127ED0;
        }

        else
        {
          v135 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v135);
LABEL_231:
        *__error() = v88;
        goto LABEL_103;
      }
    }

    v103 = v90;
    v139 = v88;
    v104 = a3;
    v105 = v43;
    v106 = CFStringGetCStringPtr(v90, 0x8000100u);
    if (v106)
    {
      v107 = v106;
      v108 = 0;
    }

    else
    {
      v107 = malloc_type_calloc(0x400uLL, 1uLL, 0xC1C88733uLL);
      CFStringGetCString(v103, v107, 1024, 0x8000100u);
      v108 = v107;
    }

    if (qword_100127ED0)
    {
      v132 = qword_100127ED0;
    }

    else
    {
      v132 = __stderrp;
    }

    fprintf(v132, "%s\n", v107);
    if (v108)
    {
      free(v108);
    }

    CFRelease(v103);
    v43 = v105;
    a3 = v104;
    v88 = v139;
    goto LABEL_231;
  }

LABEL_103:
  v70 = sub_10003DEB8("CPU resource for [%d] thread %#llx", a1, a3);
  v71 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100053F7C;
  block[3] = &unk_100115048;
  v153 = a1;
  v141 = v19;
  v144 = a3;
  v145 = a4;
  v146 = a6;
  v147 = a7;
  v148 = a8;
  v149 = a9;
  v150 = a10;
  v151 = v43;
  v152 = v69;
  v20 = v68;
  v142 = v68;
  v143 = v70;
  v72 = v70;
  dispatch_async(v71, block);

LABEL_202:
}

uint64_t sub_100035308(const char *a1, off_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, void *a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, unsigned int a17, unsigned __int8 a18, uint64_t a19, uint64_t a20, double a21, char a22, int a23, int a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31, unsigned int a32, void *a33, void *a34, void *a35, void *a36, void *a37, char a38)
{
  v48 = a17;
  v49 = a4;
  v395 = a7;
  v50 = a26;
  v51 = a3;
  v394 = a33;
  v397 = a34;
  v393 = a35;
  v392 = a36;
  v391 = a37;
  v389 = v49;
  v52 = sub_1000693F8(a3, v49, a6);
  v53 = [v52 lastPathComponent];
  v58 = v53;
  v398 = a3;
  if (a17 - 5 >= 6 && a17 != 15)
  {
    if (v53)
    {
      if ((a3 & 0x80000000) != 0)
      {
        if (byte_100127EC8)
        {
          v352 = *__error();
          v353 = sub_10003E080();
          if (os_log_type_enabled(v353, OS_LOG_TYPE_ERROR))
          {
            sub_1000B1724();
          }

          *__error() = v352;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v354 = *__error();
          CStringPtr = CFStringGetCStringPtr(v58, 0x8000100u);
          v356 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: %s: Bad report type for microstackshots %d", CStringPtr, "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE", a17);
          if (v356)
          {
            v371 = v356;
            v372 = CFStringGetCStringPtr(v356, 0x8000100u);
            if (v372)
            {
              v373 = v372;
              v374 = 0;
            }

            else
            {
              v373 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2008DABuLL);
              CFStringGetCString(v371, v373, 1024, 0x8000100u);
              v374 = v373;
            }

            if (qword_100127ED0)
            {
              v379 = qword_100127ED0;
            }

            else
            {
              v379 = __stderrp;
            }

            fprintf(v379, "%s\n", v373);
            if (v374)
            {
              free(v374);
            }

            CFRelease(v371);
          }

          else
          {
            v357 = sub_10003E080();
            if (os_log_type_enabled(v357, OS_LOG_TYPE_FAULT))
            {
              sub_1000B17B4();
            }

            if (qword_100127ED0)
            {
              v358 = qword_100127ED0;
            }

            else
            {
              v358 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v358);
          }

          *__error() = v354;
        }

        LOBYTE(v380) = CFStringGetCStringPtr(v58, 0x8000100u);
        v333 = "%s: %s: Bad report type for microstackshots %d";
        goto LABEL_683;
      }

      if (byte_100127EC8)
      {
        v338 = *__error();
        v339 = sub_10003E080();
        if (os_log_type_enabled(v339, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *v413 = CFStringGetCStringPtr(v58, 0x8000100u);
          *&v413[8] = 1024;
          *&v413[10] = a3;
          *&v413[14] = 2080;
          *&v413[16] = "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE";
          *&v413[24] = 1024;
          *&v413[26] = a17;
          _os_log_error_impl(&_mh_execute_header, v339, OS_LOG_TYPE_ERROR, "%s [%d]: %s: Bad report type for microstackshots %d", buf, 0x22u);
        }

        *__error() = v338;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v340 = *__error();
        v341 = CFStringGetCStringPtr(v58, 0x8000100u);
        v342 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Bad report type for microstackshots %d", v341, a3, "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE", a17);
        if (v342)
        {
          v363 = v342;
          v364 = CFStringGetCStringPtr(v342, 0x8000100u);
          if (v364)
          {
            v365 = v364;
            v366 = 0;
          }

          else
          {
            v365 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2008DABuLL);
            CFStringGetCString(v363, v365, 1024, 0x8000100u);
            v366 = v365;
          }

          if (qword_100127ED0)
          {
            v377 = qword_100127ED0;
          }

          else
          {
            v377 = __stderrp;
          }

          fprintf(v377, "%s\n", v365);
          if (v366)
          {
            free(v366);
          }

          CFRelease(v363);
        }

        else
        {
          v343 = sub_10003E080();
          if (os_log_type_enabled(v343, OS_LOG_TYPE_FAULT))
          {
            v344 = CFStringGetCStringPtr(v58, 0x8000100u);
            *buf = 136315906;
            *v413 = v344;
            *&v413[8] = 1024;
            *&v413[10] = a3;
            *&v413[14] = 2080;
            *&v413[16] = "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE";
            *&v413[24] = 1024;
            *&v413[26] = a17;
            _os_log_fault_impl(&_mh_execute_header, v343, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: Bad report type for microstackshots %d", buf, 0x22u);
          }

          if (qword_100127ED0)
          {
            v345 = qword_100127ED0;
          }

          else
          {
            v345 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v345);
        }

        *__error() = v340;
      }

      v376 = CFStringGetCStringPtr(v58, 0x8000100u);
    }

    else
    {
      if ((a3 & 0x80000000) != 0)
      {
        if (byte_100127EC8)
        {
          v346 = *__error();
          v347 = sub_10003E080();
          if (os_log_type_enabled(v347, OS_LOG_TYPE_ERROR))
          {
            sub_1000B1844();
          }

          *__error() = v346;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v348 = *__error();
          v349 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Bad report type for microstackshots %d", "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE", a17);
          if (v349)
          {
            v367 = v349;
            v368 = CFStringGetCStringPtr(v349, 0x8000100u);
            if (v368)
            {
              v369 = v368;
              v370 = 0;
            }

            else
            {
              v369 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2008DABuLL);
              CFStringGetCString(v367, v369, 1024, 0x8000100u);
              v370 = v369;
            }

            if (qword_100127ED0)
            {
              v378 = qword_100127ED0;
            }

            else
            {
              v378 = __stderrp;
            }

            fprintf(v378, "%s\n", v369);
            if (v370)
            {
              free(v370);
            }

            CFRelease(v367);
          }

          else
          {
            v350 = sub_10003E080();
            if (os_log_type_enabled(v350, OS_LOG_TYPE_FAULT))
            {
              sub_1000B18C4();
            }

            if (qword_100127ED0)
            {
              v351 = qword_100127ED0;
            }

            else
            {
              v351 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v351);
          }

          *__error() = v348;
        }

        v380 = "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE";
        v333 = "%s: Bad report type for microstackshots %d";
        goto LABEL_683;
      }

      if (byte_100127EC8)
      {
        v80 = *__error();
        v81 = sub_10003E080();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          sub_1000B1944();
        }

        *__error() = v80;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v82 = *__error();
        v83 = sub_10003E020(a3);
        v84 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: Bad report type for microstackshots %d", v83, a3, "report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO || report_type == DID_MANUAL_MICROSTACKSHOTS || report_type == DID_MANUAL_MICROSTACKSHOTS_IO || report_type == DID_CPU_RESOURCE || report_type == DID_POWER_EXCEPTION || report_type == DID_DISK_WRITES_RESOURCE", a17);
        if (v84)
        {
          v359 = v84;
          v360 = CFStringGetCStringPtr(v84, 0x8000100u);
          if (v360)
          {
            v361 = v360;
            v362 = 0;
          }

          else
          {
            v361 = malloc_type_calloc(0x400uLL, 1uLL, 0xE2008DABuLL);
            CFStringGetCString(v359, v361, 1024, 0x8000100u);
            v362 = v361;
          }

          if (qword_100127ED0)
          {
            v375 = qword_100127ED0;
          }

          else
          {
            v375 = __stderrp;
          }

          fprintf(v375, "%s\n", v361);
          if (v362)
          {
            free(v362);
          }

          CFRelease(v359);
        }

        else
        {
          v85 = sub_10003E080();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
          {
            sub_1000B19E4();
          }

          if (qword_100127ED0)
          {
            v86 = qword_100127ED0;
          }

          else
          {
            v86 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v86);
        }

        *__error() = v82;
      }

      v376 = sub_10003E020(a3);
    }

    LOBYTE(v380) = v376;
    v333 = "%s [%d]: %s: Bad report type for microstackshots %d";
LABEL_683:
    v337 = 194;
LABEL_597:
    sub_10003DF54("DoMicrostackshotsOnly", "microstackshot.m", v337, v333, v54, v55, v56, v57, v380);
    abort();
  }

  v399 = v50;
  if (a17 - 7 < 2 != [v50 systemstatsFormat])
  {
    if (v58)
    {
      if ((a3 & 0x80000000) != 0)
      {
        if (byte_100127EC8)
        {
          v304 = *__error();
          v305 = sub_10003E080();
          if (os_log_type_enabled(v305, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *v413 = CFStringGetCStringPtr(v58, 0x8000100u);
            *&v413[8] = 2080;
            *&v413[10] = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
            *&v413[18] = 1024;
            *&v413[20] = a17;
            *&v413[24] = 1024;
            *&v413[26] = [v399 systemstatsFormat];
            _os_log_error_impl(&_mh_execute_header, v305, OS_LOG_TYPE_ERROR, "%s: %s: report_type %d, but systemstatsFormat %d", buf, 0x22u);
          }

          *__error() = v304;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v306 = *__error();
          v307 = CFStringGetCStringPtr(v58, 0x8000100u);
          v308 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: %s: report_type %d, but systemstatsFormat %d", v307, "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))", a17, [v399 systemstatsFormat]);
          if (v308)
          {
            v325 = v308;
            v326 = CFStringGetCStringPtr(v308, 0x8000100u);
            if (v326)
            {
              v327 = v326;
              v328 = 0;
            }

            else
            {
              v327 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD127A4FuLL);
              CFStringGetCString(v325, v327, 1024, 0x8000100u);
              v328 = v327;
            }

            if (qword_100127ED0)
            {
              v335 = qword_100127ED0;
            }

            else
            {
              v335 = __stderrp;
            }

            fprintf(v335, "%s\n", v327);
            if (v328)
            {
              free(v328);
            }

            CFRelease(v325);
          }

          else
          {
            v309 = sub_10003E080();
            if (os_log_type_enabled(v309, OS_LOG_TYPE_FAULT))
            {
              v310 = CFStringGetCStringPtr(v58, 0x8000100u);
              v311 = [v399 systemstatsFormat];
              *buf = 136315906;
              *v413 = v310;
              *&v413[8] = 2080;
              *&v413[10] = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
              *&v413[18] = 1024;
              *&v413[20] = a17;
              *&v413[24] = 1024;
              *&v413[26] = v311;
              _os_log_fault_impl(&_mh_execute_header, v309, OS_LOG_TYPE_FAULT, "Unable to format: %s: %s: report_type %d, but systemstatsFormat %d", buf, 0x22u);
            }

            if (qword_100127ED0)
            {
              v312 = qword_100127ED0;
            }

            else
            {
              v312 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v312);
          }

          *__error() = v306;
        }

        v336 = CFStringGetCStringPtr(v58, 0x8000100u);
        [v399 systemstatsFormat];
        LOBYTE(v380) = v336;
        v333 = "%s: %s: report_type %d, but systemstatsFormat %d";
        goto LABEL_596;
      }

      if (byte_100127EC8)
      {
        v289 = *__error();
        v290 = sub_10003E080();
        if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *v413 = CFStringGetCStringPtr(v58, 0x8000100u);
          *&v413[8] = 1024;
          *&v413[14] = 2080;
          *&v413[10] = a3;
          *&v413[16] = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
          *&v413[24] = 1024;
          *&v413[26] = a17;
          v414 = 1024;
          v415 = [v399 systemstatsFormat];
          _os_log_error_impl(&_mh_execute_header, v290, OS_LOG_TYPE_ERROR, "%s [%d]: %s: report_type %d, but systemstatsFormat %d", buf, 0x28u);
        }

        *__error() = v289;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v291 = *__error();
        v292 = CFStringGetCStringPtr(v58, 0x8000100u);
        v293 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: report_type %d, but systemstatsFormat %d", v292, a3, "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))", a17, [v399 systemstatsFormat]);
        if (v293)
        {
          v317 = v293;
          v318 = CFStringGetCStringPtr(v293, 0x8000100u);
          if (v318)
          {
            v319 = v318;
            v320 = 0;
          }

          else
          {
            v319 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD127A4FuLL);
            CFStringGetCString(v317, v319, 1024, 0x8000100u);
            v320 = v319;
          }

          if (qword_100127ED0)
          {
            v331 = qword_100127ED0;
          }

          else
          {
            v331 = __stderrp;
          }

          fprintf(v331, "%s\n", v319);
          if (v320)
          {
            free(v320);
          }

          CFRelease(v317);
        }

        else
        {
          v294 = sub_10003E080();
          if (os_log_type_enabled(v294, OS_LOG_TYPE_FAULT))
          {
            v295 = CFStringGetCStringPtr(v58, 0x8000100u);
            v296 = [v399 systemstatsFormat];
            *buf = 136316162;
            *v413 = v295;
            *&v413[8] = 1024;
            *&v413[10] = a3;
            *&v413[14] = 2080;
            *&v413[16] = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
            *&v413[24] = 1024;
            *&v413[26] = a17;
            v414 = 1024;
            v415 = v296;
            _os_log_fault_impl(&_mh_execute_header, v294, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: report_type %d, but systemstatsFormat %d", buf, 0x28u);
          }

          if (qword_100127ED0)
          {
            v297 = qword_100127ED0;
          }

          else
          {
            v297 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v297);
        }

        *__error() = v291;
      }

      v330 = CFStringGetCStringPtr(v58, 0x8000100u);
    }

    else
    {
      if ((a3 & 0x80000000) != 0)
      {
        if (byte_100127EC8)
        {
          v298 = *__error();
          v299 = sub_10003E080();
          if (os_log_type_enabled(v299, OS_LOG_TYPE_ERROR))
          {
            sub_1000B15F4();
          }

          *__error() = v298;
          v50 = v399;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v300 = *__error();
          v301 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: report_type %d, but systemstatsFormat %d", "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))", a17, [v50 systemstatsFormat]);
          if (v301)
          {
            v321 = v301;
            v322 = CFStringGetCStringPtr(v301, 0x8000100u);
            if (v322)
            {
              v323 = v322;
              v324 = 0;
            }

            else
            {
              v323 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD127A4FuLL);
              CFStringGetCString(v321, v323, 1024, 0x8000100u);
              v324 = v323;
            }

            if (qword_100127ED0)
            {
              v334 = qword_100127ED0;
            }

            else
            {
              v334 = __stderrp;
            }

            fprintf(v334, "%s\n", v323);
            if (v324)
            {
              free(v324);
            }

            CFRelease(v321);
          }

          else
          {
            v302 = sub_10003E080();
            if (os_log_type_enabled(v302, OS_LOG_TYPE_FAULT))
            {
              sub_1000B168C();
            }

            if (qword_100127ED0)
            {
              v303 = qword_100127ED0;
            }

            else
            {
              v303 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v303);
          }

          *__error() = v300;
          v50 = v399;
        }

        [v50 systemstatsFormat];
        v380 = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
        v333 = "%s: report_type %d, but systemstatsFormat %d";
        goto LABEL_596;
      }

      if (byte_100127EC8)
      {
        v277 = *__error();
        v278 = sub_10003E080();
        if (os_log_type_enabled(v278, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *v413 = sub_10003E020(a3);
          *&v413[8] = 1024;
          *&v413[14] = 2080;
          *&v413[10] = a3;
          *&v413[16] = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
          *&v413[24] = 1024;
          *&v413[26] = a17;
          v414 = 1024;
          v415 = [v399 systemstatsFormat];
          _os_log_error_impl(&_mh_execute_header, v278, OS_LOG_TYPE_ERROR, "%s [%d]: %s: report_type %d, but systemstatsFormat %d", buf, 0x28u);
        }

        *__error() = v277;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v279 = *__error();
        v280 = sub_10003E020(a3);
        v281 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: report_type %d, but systemstatsFormat %d", v280, a3, "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))", a17, [v399 systemstatsFormat]);
        if (v281)
        {
          v313 = v281;
          v314 = CFStringGetCStringPtr(v281, 0x8000100u);
          if (v314)
          {
            v315 = v314;
            v316 = 0;
          }

          else
          {
            v315 = malloc_type_calloc(0x400uLL, 1uLL, 0xBD127A4FuLL);
            CFStringGetCString(v313, v315, 1024, 0x8000100u);
            v316 = v315;
          }

          if (qword_100127ED0)
          {
            v329 = qword_100127ED0;
          }

          else
          {
            v329 = __stderrp;
          }

          fprintf(v329, "%s\n", v315);
          if (v316)
          {
            free(v316);
          }

          CFRelease(v313);
        }

        else
        {
          v282 = sub_10003E080();
          if (os_log_type_enabled(v282, OS_LOG_TYPE_FAULT))
          {
            v283 = sub_10003E020(a3);
            v284 = [v399 systemstatsFormat];
            *buf = 136316162;
            *v413 = v283;
            *&v413[8] = 1024;
            *&v413[10] = a3;
            *&v413[14] = 2080;
            *&v413[16] = "((!!(report_type == DID_SYSTEM_STATS || report_type == DID_SYSTEM_STATS_IO)) == (!!printOptions.systemstatsFormat))";
            *&v413[24] = 1024;
            *&v413[26] = a17;
            v414 = 1024;
            v415 = v284;
            _os_log_fault_impl(&_mh_execute_header, v282, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: report_type %d, but systemstatsFormat %d", buf, 0x28u);
          }

          if (qword_100127ED0)
          {
            v285 = qword_100127ED0;
          }

          else
          {
            v285 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v285);
        }

        *__error() = v279;
      }

      v330 = sub_10003E020(a3);
    }

    v332 = v330;
    [v399 systemstatsFormat];
    LOBYTE(v380) = v332;
    v333 = "%s [%d]: %s: report_type %d, but systemstatsFormat %d";
LABEL_596:
    v337 = 196;
    goto LABEL_597;
  }

  v59 = a17 - 5 < 2 || a17 == 15;
  v383 = v59;
  if (a17 != 15)
  {
    v400 = 0;
    v71 = 0;
    v60 = v397;
    v65 = v52;
    if (a17 != 5)
    {
      goto LABEL_224;
    }

    if (!a6)
    {
      goto LABEL_223;
    }

    goto LABEL_23;
  }

  v60 = v397;
  if (v52)
  {
    v61 = v52;
    if ([v52 isAbsolutePath])
    {
      v62 = objc_alloc_init(NSMutableArray);
      [v52 UTF8String];
      v404 = _NSConcreteStackBlock;
      v405 = 3221225472;
      v406 = sub_100062254;
      v407 = &unk_100115378;
      v63 = v58;
      v408 = v63;
      v411 = a3;
      v409 = v62;
      v64 = v61;
      v410 = v64;
      CSSymbolicatorForeachSymbolicatorWithPathFlagsAndNotification();
      v400 = v409;
      v65 = v61;
      v385 = [v409 count];
      if (v385)
      {
        if (v63)
        {
          if ((v51 & 0x80000000) != 0)
          {
            if (byte_100127EC8)
            {
              v119 = *__error();
              v120 = sub_10003E080();
              if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
              {
                *buf = 138543618;
                *v413 = v63;
                *&v413[8] = 2112;
                *&v413[10] = v409;
                _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_INFO, "%{public}@: Possible UUIDs: %@", buf, 0x16u);
              }

              *__error() = v119;
            }

            if (byte_100127EC9 != 1 || dword_100127558 > 1)
            {
              goto LABEL_221;
            }

            v68 = *__error();
            v69 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Possible UUIDs: %@", v63, v400);
            if (!v69)
            {
              v70 = sub_10003E080();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
              {
                sub_1000B081C();
              }

              goto LABEL_198;
            }
          }

          else
          {
            if (byte_100127EC8)
            {
              v66 = *__error();
              v67 = sub_10003E080();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
              {
                *buf = 138543874;
                *v413 = v63;
                *&v413[8] = 1024;
                *&v413[10] = v51;
                *&v413[14] = 2112;
                *&v413[16] = v409;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%{public}@ [%d]: Possible UUIDs: %@", buf, 0x1Cu);
              }

              *__error() = v66;
            }

            if (byte_100127EC9 != 1 || dword_100127558 > 1)
            {
              goto LABEL_221;
            }

            v68 = *__error();
            v69 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Possible UUIDs: %@", v63, v51, v400);
            if (!v69)
            {
              v70 = sub_10003E080();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412802;
                *v413 = v63;
                *&v413[8] = 1024;
                *&v413[10] = v51;
                *&v413[14] = 2112;
                *&v413[16] = v400;
                _os_log_fault_impl(&_mh_execute_header, v70, OS_LOG_TYPE_FAULT, "Unable to format: %@ [%d]: Possible UUIDs: %@", buf, 0x1Cu);
              }

LABEL_198:

              goto LABEL_216;
            }
          }
        }

        else
        {
          if ((v51 & 0x80000000) == 0)
          {
            if (byte_100127EC8)
            {
              v109 = *__error();
              v110 = sub_10003E080();
              if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
              {
                *buf = 136446722;
                *v413 = sub_10003E020(v51);
                *&v413[8] = 1024;
                *&v413[10] = v51;
                *&v413[14] = 2112;
                *&v413[16] = v409;
                _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_INFO, "%{public}s [%d]: Possible UUIDs: %@", buf, 0x1Cu);
              }

              *__error() = v109;
            }

            if (byte_100127EC9 != 1 || dword_100127558 > 1)
            {
              goto LABEL_221;
            }

            v111 = *__error();
            v112 = sub_10003E020(v51);
            v113 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Possible UUIDs: %@", v112, v51, v400);
            if (!v113)
            {
              v145 = sub_10003E080();
              if (os_log_type_enabled(v145, OS_LOG_TYPE_FAULT))
              {
                sub_1000B08FC();
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
              v68 = v111;
              goto LABEL_220;
            }

            v114 = v113;
            v115 = CFStringGetCStringPtr(v113, 0x8000100u);
            if (v115)
            {
              v116 = v115;
              v117 = 0;
            }

            else
            {
              v116 = malloc_type_calloc(0x400uLL, 1uLL, 0xE719uLL);
              CFStringGetCString(v114, v116, 1024, 0x8000100u);
              v117 = v116;
            }

            v68 = v111;
            goto LABEL_186;
          }

          if (byte_100127EC8)
          {
            v134 = *__error();
            v135 = sub_10003E080();
            if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v413 = v409;
              _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_INFO, "Possible UUIDs: %@", buf, 0xCu);
            }

            *__error() = v134;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 1)
          {
            goto LABEL_221;
          }

          v68 = *__error();
          v69 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Possible UUIDs: %@", v400);
          if (!v69)
          {
            v70 = sub_10003E080();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
            {
              sub_1000B088C();
            }

            goto LABEL_198;
          }
        }

        v114 = v69;
        v136 = CFStringGetCStringPtr(v69, 0x8000100u);
        if (v136)
        {
          v116 = v136;
          v117 = 0;
        }

        else
        {
          v116 = malloc_type_calloc(0x400uLL, 1uLL, 0xE719uLL);
          CFStringGetCString(v114, v116, 1024, 0x8000100u);
          v117 = v116;
        }

LABEL_186:
        if (qword_100127ED0)
        {
          v149 = qword_100127ED0;
        }

        else
        {
          v149 = __stderrp;
        }

        fprintf(v149, "%s\n", v116);
        if (v117)
        {
          free(v117);
        }

        v148 = v114;
LABEL_192:
        CFRelease(v148);
LABEL_220:
        *__error() = v68;
LABEL_221:

        if (v385)
        {
          v48 = a17;
          v59 = v383;
          if (!a6)
          {
LABEL_223:
            v71 = 0;
LABEL_224:
            v384 = v71;
            v386 = v58;
            if (v48 > 0xF)
            {
              v153 = a5;
              v154 = v59;
            }

            else
            {
              v153 = a5;
              v154 = v59;
              if (((1 << v48) & 0x8060) != 0)
              {
                v155 = v59;
                v156 = sub_100062144([v65 UTF8String], a6);
                v153 = 0;
                v154 = v155 & (v156 ^ 1);
              }
            }

            if (v154)
            {
              v157 = -1;
            }

            else
            {
              v157 = v398;
            }

            if (v154)
            {
              v158 = 0;
            }

            else
            {
              v158 = v400;
            }

            v159 = sub_100039314(a1, a2, v157, v158, v153, a6, 1, 0, a9, a10, a24, a29, a30, a31, a32, v60);
            v160 = v159;
            if (!v159)
            {
              goto LABEL_379;
            }

            v161 = v398;
            if ((v398 & 0x80000000) == 0)
            {
              [v159 setTargetProcessId:v398];
            }

            v162 = a5;
            if (a5)
            {
              [v160 setTargetThreadId:a5];
            }

            if (![v400 count])
            {
LABEL_360:
              if (v65)
              {
                v226 = [v160 targetProcess];
                v227 = [v226 mainBinaryPath];
                v228 = [v227 isAbsolutePath];

                if ((v228 & 1) == 0)
                {
                  v229 = [v160 targetProcess];
                  v230 = v229;
                  if (v229)
                  {
                    [v229 setMainBinaryPath:v65];
                    [v160 postprocess];
                  }
                }
              }

              v231 = [v160 tasksByPid];
              if (![v231 count])
              {
                goto LABEL_378;
              }

              v232 = !v383;
              if (!v162)
              {
                v232 = 1;
              }

              if ((v232 & 1) == 0)
              {
                v233 = [v160 targetProcess];
                v234 = [v233 threads];
                v235 = [NSNumber numberWithUnsignedLongLong:v162];
                v236 = [v234 objectForKeyedSubscript:v235];

                v50 = v399;
                if (!v236)
                {
                  goto LABEL_379;
                }

LABEL_425:
                if (v384)
                {
                  [v160 addAuxiliaryData:?];
                }

                if (!v50)
                {
                  v50 = objc_alloc_init(SASamplePrintOptions);
                }

                v261 = v50;
                v262 = [NSString stringWithUTF8String:sub_100033E24(v48, 0)];
                [v160 setEvent:v262];

                if (v48 > 7)
                {
                  if (v48 == 8 || v48 == 10)
                  {
LABEL_435:
                    v263 = SAFormattedBytes();
                    v264 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/step", [v263 UTF8String]);
                    [v160 setStepsNote:v264];
                  }
                }

                else
                {
                  if (v48 != 5)
                  {
                    if (v48 != 6)
                    {
                      goto LABEL_445;
                    }

                    [v160 setBytesWritten:{a19, a14}];
                    [v160 setBytesWrittenLimit:a20];
                    [v160 setWriteDuration:a15];
                    [v160 setWriteLimitDuration:a21];
                    [v261 setPrintSpinSignatureStack:1];
                    goto LABEL_435;
                  }

                  [v160 setCpuUsed:a14];
                  [v160 setCpuLimit:a16];
                  [v160 setCpuDuration:a15];
                  [v160 setCpuLimitDuration:a21];
                  [v261 setPrintSpinSignatureStack:1];
                }

LABEL_445:
                v266 = v395;
                if (!v395)
                {
                  if (v48 > 0xF || ((1 << v48) & 0x8060) == 0)
                  {
                    goto LABEL_450;
                  }

                  v266 = @"none";
                }

                [v160 setActionTaken:v266];
LABEL_450:
                if (v393)
                {
                  [v160 setIssueType:v393];
                }

                if (v392)
                {
                  [v160 setMitigationReason:v392];
                }

                if (v391)
                {
                  [v160 setDetector:v391];
                }

                if (a27)
                {
                  v267 = [NSString stringWithUTF8String:a27];
                  [v160 setSignature:v267];
                }

                if ((v48 - 9) >= 2)
                {
                  [v160 setSanitizePaths:1];
                }

                v268 = 0;
                v269 = 0;
                if (v48 <= 0xF && ((1 << v48) & 0x8060) != 0)
                {
                  v268 = +[NSUUID UUID];
                  v269 = 5;
                }

                [v261 setOmitTasksBelowPercentOfTotalSamples:v269];
                v270 = 0;
                if (v48 > 0xF)
                {
                  v271 = a8;
                }

                else
                {
                  v271 = a8;
                  if (((1 << v48) & 0x8060) != 0)
                  {
                    if (v48 == 15)
                    {
                      v270 = a38;
                    }

                    else
                    {
                      v270 = a22;
                    }
                  }
                }

                if (v271)
                {
                  v273 = [NSString stringWithUTF8String:?];
                }

                else
                {
                  v273 = 0;
                }

                if (a28)
                {
                  v274 = [NSString stringWithUTF8String:a28];
                  v76 = sub_100062CD8(v160, v261, v273, v48, v394, v268, v274, a18, a9, a10, a11, a12, a13, a15, v270 & 1, a25);
                }

                else
                {
                  v76 = sub_100062CD8(v160, v261, v273, v48, v394, v268, 0, a18, a9, a10, a11, a12, a13, a15, v270 & 1, a25);
                }

                v239 = v384;
                v58 = v386;
                if (a8)
                {
                }

                v50 = v261;
LABEL_485:
                v94 = v389;
                goto LABEL_493;
              }

              if (v162)
              {
                v237 = 0;
              }

              else
              {
                v237 = v383;
              }

              if ((v161 & 0x80000000) == 0 && v237)
              {
                v238 = [v160 targetProcess];
                if (v238)
                {

LABEL_424:
                  v50 = v399;
                  goto LABEL_425;
                }

LABEL_378:

                v50 = v399;
                goto LABEL_379;
              }

              if (v161 >= 0)
              {
                LOBYTE(v237) = 0;
              }

              if (!v237)
              {
                goto LABEL_424;
              }

              v259 = [v160 targetProcesses];
              v260 = [v259 count];

              v50 = v399;
              if (v260)
              {
                goto LABEL_425;
              }

LABEL_379:
              if (v58)
              {
                if ((v398 & 0x80000000) == 0)
                {
                  v239 = v384;
                  if (byte_100127EC8)
                  {
                    v240 = *__error();
                    v241 = sub_10003E080();
                    if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B10B4();
                    }

                    *__error() = v240;
                    v50 = v399;
                  }

                  v76 = 0x800000;
                  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                  {
                    v242 = *__error();
                    v243 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: No microstackshots found", v58, v398);
                    if (!v243)
                    {
                      v244 = sub_10003E080();
                      if (os_log_type_enabled(v244, OS_LOG_TYPE_FAULT))
                      {
                        sub_1000B1128();
                      }

LABEL_470:

                      if (qword_100127ED0)
                      {
                        v272 = qword_100127ED0;
                      }

                      else
                      {
                        v272 = __stderrp;
                      }

                      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v272);
                      v94 = v389;
LABEL_492:
                      *__error() = v242;
                      v76 = 0x800000;
                      v50 = v399;
                      goto LABEL_493;
                    }

LABEL_398:
                    v248 = v243;
                    v249 = CFStringGetCStringPtr(v243, 0x8000100u);
                    if (v249)
                    {
                      v250 = v249;
                      v251 = 0;
                    }

                    else
                    {
                      v250 = malloc_type_calloc(0x400uLL, 1uLL, 0xD9153144uLL);
                      CFStringGetCString(v248, v250, 1024, 0x8000100u);
                      v251 = v250;
                    }

                    v94 = v389;
                    goto LABEL_438;
                  }

                  goto LABEL_485;
                }

                v94 = v389;
                v239 = v384;
                if (byte_100127EC8)
                {
                  v252 = *__error();
                  v253 = sub_10003E080();
                  if (os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B0FD4();
                  }

                  *__error() = v252;
                  v50 = v399;
                }

                v76 = 0x800000;
                if (byte_100127EC9 != 1 || dword_100127558 > 3)
                {
                  goto LABEL_493;
                }

                v242 = *__error();
                v254 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: No microstackshots found", v58);
                if (!v254)
                {
                  v255 = sub_10003E080();
                  if (os_log_type_enabled(v255, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B1044();
                  }

LABEL_488:

                  if (qword_100127ED0)
                  {
                    v275 = qword_100127ED0;
                  }

                  else
                  {
                    v275 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v275);
                  goto LABEL_492;
                }
              }

              else
              {
                if ((v398 & 0x80000000) == 0)
                {
                  v239 = v384;
                  if (byte_100127EC8)
                  {
                    v245 = *__error();
                    v246 = sub_10003E080();
                    if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
                    {
                      sub_1000B1214(v398);
                    }

                    *__error() = v245;
                    v50 = v399;
                  }

                  v76 = 0x800000;
                  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                  {
                    v242 = *__error();
                    v247 = sub_10003E020(v398);
                    v243 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No microstackshots found", v247, v398);
                    if (!v243)
                    {
                      v244 = sub_10003E080();
                      if (os_log_type_enabled(v244, OS_LOG_TYPE_FAULT))
                      {
                        sub_1000B129C(v398);
                      }

                      goto LABEL_470;
                    }

                    goto LABEL_398;
                  }

                  goto LABEL_485;
                }

                v94 = v389;
                v239 = v384;
                if (byte_100127EC8)
                {
                  v256 = *__error();
                  v257 = sub_10003E080();
                  if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B119C();
                  }

                  *__error() = v256;
                  v50 = v399;
                }

                v76 = 0x800000;
                if (byte_100127EC9 != 1 || dword_100127558 > 3)
                {
                  goto LABEL_493;
                }

                v242 = *__error();
                v254 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No microstackshots found");
                if (!v254)
                {
                  v255 = sub_10003E080();
                  if (os_log_type_enabled(v255, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B11D8();
                  }

                  goto LABEL_488;
                }
              }

              v248 = v254;
              v258 = CFStringGetCStringPtr(v254, 0x8000100u);
              if (v258)
              {
                v250 = v258;
                v251 = 0;
              }

              else
              {
                v250 = malloc_type_calloc(0x400uLL, 1uLL, 0xD9153144uLL);
                CFStringGetCString(v248, v250, 1024, 0x8000100u);
                v251 = v250;
              }

LABEL_438:
              if (qword_100127ED0)
              {
                v265 = qword_100127ED0;
              }

              else
              {
                v265 = __stderrp;
              }

              fprintf(v265, "%s\n", v250);
              if (v251)
              {
                free(v251);
              }

              CFRelease(v248);
              goto LABEL_492;
            }

            v163 = objc_alloc_init(NSMutableDictionary);
            v401[0] = _NSConcreteStackBlock;
            v401[1] = 3221225472;
            v401[2] = sub_100062BE8;
            v401[3] = &unk_100114F08;
            v164 = v400;
            v402 = v164;
            v165 = v163;
            v403 = v165;
            [v160 enumerateTasks:v401];
            v166 = [v165 keysSortedByValueUsingSelector:"compare:"];
            v167 = [v166 lastObject];

            if (v167)
            {
              if (v58)
              {
                if ((v398 & 0x80000000) != 0)
                {
                  if (byte_100127EC8)
                  {
                    v197 = *__error();
                    v198 = sub_10003E080();
                    if (os_log_type_enabled(v198, OS_LOG_TYPE_INFO))
                    {
                      v199 = [v165 objectForKeyedSubscript:v167];
                      v200 = [v199 unsignedIntValue];
                      *buf = 138543874;
                      *v413 = v58;
                      *&v413[8] = 1024;
                      *&v413[10] = v200;
                      *&v413[14] = 2112;
                      *&v413[16] = v167;
                      _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_INFO, "%{public}@: Most common UUID with %u samples: %@", buf, 0x1Cu);
                    }

                    *__error() = v197;
                    LODWORD(v161) = v398;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 1)
                  {
                    goto LABEL_351;
                  }

                  v172 = *__error();
                  v201 = [v165 objectForKeyedSubscript:v167];
                  v174 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Most common UUID with %u samples: %@", v58, [v201 unsignedIntValue], v167);

                  if (!v174)
                  {
                    v175 = sub_10003E080();
                    if (os_log_type_enabled(v175, OS_LOG_TYPE_FAULT))
                    {
                      v176 = [v165 objectForKeyedSubscript:v167];
                      v202 = [v176 unsignedIntValue];
                      *buf = 138412802;
                      *v413 = v58;
                      *&v413[8] = 1024;
                      *&v413[10] = v202;
                      *&v413[14] = 2112;
                      *&v413[16] = v167;
                      v178 = "Unable to format: %@: Most common UUID with %u samples: %@";
                      v179 = v175;
                      v180 = 28;
                      goto LABEL_284;
                    }

LABEL_346:

                    if (qword_100127ED0)
                    {
                      v224 = qword_100127ED0;
                    }

                    else
                    {
                      v224 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v224);
LABEL_350:
                    *__error() = v172;
LABEL_351:
                    [v160 setTargetMainBinaryUUID:v167];
                    v76 = 0x400000000000;
                    goto LABEL_359;
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
                      v170 = [v165 objectForKeyedSubscript:v167];
                      v171 = [v170 unsignedIntValue];
                      *buf = 138544130;
                      *v413 = v58;
                      *&v413[8] = 1024;
                      *&v413[10] = v398;
                      *&v413[14] = 1024;
                      *&v413[16] = v171;
                      *&v413[20] = 2112;
                      *&v413[22] = v167;
                      _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_INFO, "%{public}@ [%d]: Most common UUID with %u samples: %@", buf, 0x22u);
                    }

                    *__error() = v168;
                    v161 = v398;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 1)
                  {
                    goto LABEL_351;
                  }

                  v172 = *__error();
                  v173 = [v165 objectForKeyedSubscript:v167];
                  v174 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Most common UUID with %u samples: %@", v58, v161, [v173 unsignedIntValue], v167);

                  if (!v174)
                  {
                    v175 = sub_10003E080();
                    if (os_log_type_enabled(v175, OS_LOG_TYPE_FAULT))
                    {
                      v176 = [v165 objectForKeyedSubscript:v167];
                      v177 = [v176 unsignedIntValue];
                      *buf = 138413058;
                      *v413 = v58;
                      *&v413[8] = 1024;
                      *&v413[10] = v161;
                      *&v413[14] = 1024;
                      *&v413[16] = v177;
                      *&v413[20] = 2112;
                      *&v413[22] = v167;
                      v178 = "Unable to format: %@ [%d]: Most common UUID with %u samples: %@";
                      v179 = v175;
                      v180 = 34;
LABEL_284:
                      _os_log_fault_impl(&_mh_execute_header, v179, OS_LOG_TYPE_FAULT, v178, buf, v180);

                      goto LABEL_346;
                    }

                    goto LABEL_346;
                  }
                }
              }

              else
              {
                if ((v398 & 0x80000000) == 0)
                {
                  if (byte_100127EC8)
                  {
                    v186 = *__error();
                    v187 = sub_10003E080();
                    if (os_log_type_enabled(v187, OS_LOG_TYPE_INFO))
                    {
                      v188 = sub_10003E020(v398);
                      v189 = [v165 objectForKeyedSubscript:v167];
                      v190 = [v189 unsignedIntValue];
                      *buf = 136446978;
                      *v413 = v188;
                      *&v413[8] = 1024;
                      *&v413[10] = v398;
                      *&v413[14] = 1024;
                      *&v413[16] = v190;
                      *&v413[20] = 2112;
                      *&v413[22] = v167;
                      _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_INFO, "%{public}s [%d]: Most common UUID with %u samples: %@", buf, 0x22u);

                      v161 = v398;
                    }

                    *__error() = v186;
                  }

                  if (byte_100127EC9 != 1 || dword_100127558 > 1)
                  {
                    goto LABEL_351;
                  }

                  v381 = v48;
                  v172 = *__error();
                  v191 = sub_10003E020(v161);
                  [v165 objectForKeyedSubscript:v167];
                  v193 = v192 = v161;
                  v174 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Most common UUID with %u samples: %@", v191, v192, [v193 unsignedIntValue], v167);

                  if (!v174)
                  {
                    v221 = sub_10003E080();
                    if (os_log_type_enabled(v221, OS_LOG_TYPE_FAULT))
                    {
                      v286 = sub_10003E020(v398);
                      v287 = [v165 objectForKeyedSubscript:v167];
                      v288 = [v287 unsignedIntValue];
                      *buf = 136315906;
                      *v413 = v286;
                      *&v413[8] = 1024;
                      *&v413[10] = v398;
                      *&v413[14] = 1024;
                      *&v413[16] = v288;
                      *&v413[20] = 2112;
                      *&v413[22] = v167;
                      _os_log_fault_impl(&_mh_execute_header, v221, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: Most common UUID with %u samples: %@", buf, 0x22u);
                    }

                    if (qword_100127ED0)
                    {
                      v222 = qword_100127ED0;
                    }

                    else
                    {
                      v222 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v222);
                    LODWORD(v161) = v398;
                    v48 = v381;
                    goto LABEL_350;
                  }

                  v194 = CFStringGetCStringPtr(v174, 0x8000100u);
                  if (v194)
                  {
                    v195 = v194;
                    v196 = 0;
                  }

                  else
                  {
                    v195 = malloc_type_calloc(0x400uLL, 1uLL, 0x4161A8FDuLL);
                    CFStringGetCString(v174, v195, 1024, 0x8000100u);
                    v196 = v195;
                  }

                  v48 = v381;
                  goto LABEL_338;
                }

                if (byte_100127EC8)
                {
                  v208 = *__error();
                  v209 = sub_10003E080();
                  if (os_log_type_enabled(v209, OS_LOG_TYPE_INFO))
                  {
                    v210 = [v165 objectForKeyedSubscript:v167];
                    v211 = [v210 unsignedIntValue];
                    *buf = 67109378;
                    *v413 = v211;
                    *&v413[4] = 2112;
                    *&v413[6] = v167;
                    _os_log_impl(&_mh_execute_header, v209, OS_LOG_TYPE_INFO, "Most common UUID with %u samples: %@", buf, 0x12u);
                  }

                  *__error() = v208;
                  LODWORD(v161) = v398;
                }

                if (byte_100127EC9 != 1 || dword_100127558 > 1)
                {
                  goto LABEL_351;
                }

                v172 = *__error();
                v212 = [v165 objectForKeyedSubscript:v167];
                v174 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Most common UUID with %u samples: %@", [v212 unsignedIntValue], v167);

                if (!v174)
                {
                  v175 = sub_10003E080();
                  if (os_log_type_enabled(v175, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B0C54(v165, v167);
                  }

                  goto LABEL_346;
                }
              }

              v213 = CFStringGetCStringPtr(v174, 0x8000100u);
              if (v213)
              {
                v195 = v213;
                v196 = 0;
              }

              else
              {
                v195 = malloc_type_calloc(0x400uLL, 1uLL, 0x4161A8FDuLL);
                CFStringGetCString(v174, v195, 1024, 0x8000100u);
                v196 = v195;
              }

LABEL_338:
              if (qword_100127ED0)
              {
                v223 = qword_100127ED0;
              }

              else
              {
                v223 = __stderrp;
              }

              fprintf(v223, "%s\n", v195);
              if (v196)
              {
                free(v196);
              }

              CFRelease(v174);
              LODWORD(v161) = v398;
              goto LABEL_350;
            }

            if (v58)
            {
              if ((v398 & 0x80000000) != 0)
              {
                if (byte_100127EC8)
                {
                  v206 = *__error();
                  v207 = sub_10003E080();
                  if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
                  {
                    sub_1000B0D04();
                  }

                  *__error() = v206;
                  v58 = v386;
                }

                v76 = 0x800000;
                if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                {
                  v183 = *__error();
                  v184 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: No microstackshots with provided UUIDs %@", v58, v164);
                  if (!v184)
                  {
                    v185 = sub_10003E080();
                    if (os_log_type_enabled(v185, OS_LOG_TYPE_FAULT))
                    {
                      sub_1000B0D74();
                    }

                    goto LABEL_354;
                  }

LABEL_321:
                  v216 = v184;
                  v217 = CFStringGetCStringPtr(v184, 0x8000100u);
                  if (v217)
                  {
                    v218 = v217;
                    v219 = 0;
                  }

                  else
                  {
                    v218 = malloc_type_calloc(0x400uLL, 1uLL, 0xB7B82BEBuLL);
                    CFStringGetCString(v216, v218, 1024, 0x8000100u);
                    v219 = v218;
                  }

                  if (qword_100127ED0)
                  {
                    v220 = qword_100127ED0;
                  }

                  else
                  {
                    v220 = __stderrp;
                  }

                  fprintf(v220, "%s\n", v218);
                  if (v219)
                  {
                    free(v219);
                  }

                  CFRelease(v216);
                  LODWORD(v161) = v398;
                  goto LABEL_358;
                }
              }

              else
              {
                if (byte_100127EC8)
                {
                  v181 = *__error();
                  v182 = sub_10003E080();
                  if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543874;
                    *v413 = v386;
                    *&v413[8] = 1024;
                    *&v413[10] = v398;
                    *&v413[14] = 2112;
                    *&v413[16] = v164;
                    _os_log_error_impl(&_mh_execute_header, v182, OS_LOG_TYPE_ERROR, "%{public}@ [%d]: No microstackshots with provided UUIDs %@", buf, 0x1Cu);
                  }

                  *__error() = v181;
                  v58 = v386;
                }

                v76 = 0x800000;
                if (byte_100127EC9 == 1 && dword_100127558 <= 3)
                {
                  v183 = *__error();
                  v184 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: No microstackshots with provided UUIDs %@", v58, v398, v164);
                  if (!v184)
                  {
                    v185 = sub_10003E080();
                    if (os_log_type_enabled(v185, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412802;
                      *v413 = v58;
                      *&v413[8] = 1024;
                      *&v413[10] = v398;
                      *&v413[14] = 2112;
                      *&v413[16] = v164;
                      _os_log_fault_impl(&_mh_execute_header, v185, OS_LOG_TYPE_FAULT, "Unable to format: %@ [%d]: No microstackshots with provided UUIDs %@", buf, 0x1Cu);
                    }

LABEL_354:

                    if (qword_100127ED0)
                    {
                      v225 = qword_100127ED0;
                    }

                    else
                    {
                      v225 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v225);
LABEL_358:
                    *__error() = v183;
                    v76 = 0x800000;
                    goto LABEL_359;
                  }

                  goto LABEL_321;
                }
              }
            }

            else if ((v398 & 0x80000000) != 0)
            {
              if (byte_100127EC8)
              {
                v214 = *__error();
                v215 = sub_10003E080();
                if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
                {
                  sub_1000B0DE4();
                }

                *__error() = v214;
                v58 = v386;
              }

              v76 = 0x800000;
              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v183 = *__error();
                v184 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"No microstackshots with provided UUIDs %@", v164);
                if (!v184)
                {
                  v185 = sub_10003E080();
                  if (os_log_type_enabled(v185, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B0E54();
                  }

                  goto LABEL_354;
                }

                goto LABEL_321;
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
                  sub_1000B0EC4();
                }

                *__error() = v203;
                v58 = v386;
              }

              v76 = 0x800000;
              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v183 = *__error();
                v205 = sub_10003E020(v398);
                v184 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: No microstackshots with provided UUIDs %@", v205, v398, v164);
                if (!v184)
                {
                  v185 = sub_10003E080();
                  if (os_log_type_enabled(v185, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B0F4C();
                  }

                  goto LABEL_354;
                }

                goto LABEL_321;
              }
            }

LABEL_359:

            v162 = a5;
            if (!v167)
            {
              v50 = v399;
              v94 = v389;
              v239 = v384;
LABEL_493:

              v60 = v397;
              goto LABEL_494;
            }

            goto LABEL_360;
          }

LABEL_23:
          v72 = v59;
          v73 = +[SATimestamp timestamp];
          v71 = [SAAuxiliaryData auxiliaryDataForTimestamp:v73];

          v59 = v72;
          goto LABEL_224;
        }

        v76 = 0x400000000000;
LABEL_264:
        v94 = v49;
LABEL_494:

        goto LABEL_495;
      }

      if (v63)
      {
        if ((v51 & 0x80000000) != 0)
        {
          if (byte_100127EC8)
          {
            v127 = *__error();
            v128 = sub_10003E080();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
            {
              sub_1000B0984();
            }

            *__error() = v127;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 3)
          {
            goto LABEL_221;
          }

          v68 = *__error();
          v129 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Unable to determine UUID at path %@", v63, v64);
          if (v129)
          {
            v130 = v129;
            v131 = CFStringGetCStringPtr(v129, 0x8000100u);
            if (v131)
            {
              v132 = v131;
              v133 = 0;
            }

            else
            {
              v132 = malloc_type_calloc(0x400uLL, 1uLL, 0x8D8A188EuLL);
              CFStringGetCString(v130, v132, 1024, 0x8000100u);
              v133 = v132;
            }

            if (qword_100127ED0)
            {
              v151 = qword_100127ED0;
            }

            else
            {
              v151 = __stderrp;
            }

            fprintf(v151, "%s\n", v132);
            if (v133)
            {
              free(v133);
            }

            v148 = v130;
            goto LABEL_192;
          }

          v144 = sub_10003E080();
          if (os_log_type_enabled(v144, OS_LOG_TYPE_FAULT))
          {
            sub_1000B09F4();
          }
        }

        else
        {
          if (byte_100127EC8)
          {
            v99 = *__error();
            v100 = sub_10003E080();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              *v413 = v63;
              *&v413[8] = 1024;
              *&v413[10] = v398;
              *&v413[14] = 2112;
              *&v413[16] = v64;
              _os_log_error_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "%{public}@ [%d]: Unable to determine UUID at path %@", buf, 0x1Cu);
            }

            *__error() = v99;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 3)
          {
            goto LABEL_221;
          }

          v68 = *__error();
          v101 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Unable to determine UUID at path %@", v63, v398, v64);
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
              v104 = malloc_type_calloc(0x400uLL, 1uLL, 0x8D8A188EuLL);
              CFStringGetCString(v102, v104, 1024, 0x8000100u);
              v105 = v104;
            }

            if (qword_100127ED0)
            {
              v147 = qword_100127ED0;
            }

            else
            {
              v147 = __stderrp;
            }

            fprintf(v147, "%s\n", v104);
            if (v105)
            {
              free(v105);
            }

            v148 = v102;
            goto LABEL_192;
          }

          v144 = sub_10003E080();
          if (os_log_type_enabled(v144, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412802;
            *v413 = v63;
            *&v413[8] = 1024;
            *&v413[10] = v398;
            *&v413[14] = 2112;
            *&v413[16] = v64;
            _os_log_fault_impl(&_mh_execute_header, v144, OS_LOG_TYPE_FAULT, "Unable to format: %@ [%d]: Unable to determine UUID at path %@", buf, 0x1Cu);
          }
        }

LABEL_216:
        if (qword_100127ED0)
        {
          v152 = qword_100127ED0;
        }

        else
        {
          v152 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v152);
        goto LABEL_220;
      }

      if ((v51 & 0x80000000) != 0)
      {
        if (byte_100127EC8)
        {
          v138 = *__error();
          v139 = sub_10003E080();
          if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
          {
            sub_1000B0A64();
          }

          *__error() = v138;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          goto LABEL_221;
        }

        v68 = *__error();
        v124 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to determine UUID at path %@", v64);
        if (!v124)
        {
          v125 = sub_10003E080();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
          {
            sub_1000B0AD4();
          }

          goto LABEL_215;
        }
      }

      else
      {
        if (byte_100127EC8)
        {
          v121 = *__error();
          v122 = sub_10003E080();
          if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
          {
            sub_1000B0B44();
          }

          *__error() = v121;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 3)
        {
          goto LABEL_221;
        }

        v68 = *__error();
        v123 = sub_10003E020(v51);
        v124 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Unable to determine UUID at path %@", v123, v51, v64);
        if (!v124)
        {
          v125 = sub_10003E080();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
          {
            sub_1000B0BCC();
          }

LABEL_215:

          goto LABEL_216;
        }
      }

      v140 = v124;
      v141 = CFStringGetCStringPtr(v124, 0x8000100u);
      if (v141)
      {
        v142 = v141;
        v143 = 0;
      }

      else
      {
        v142 = malloc_type_calloc(0x400uLL, 1uLL, 0x8D8A188EuLL);
        CFStringGetCString(v140, v142, 1024, 0x8000100u);
        v143 = v142;
      }

      if (qword_100127ED0)
      {
        v150 = qword_100127ED0;
      }

      else
      {
        v150 = __stderrp;
      }

      fprintf(v150, "%s\n", v142);
      if (v143)
      {
        free(v143);
      }

      v148 = v140;
      goto LABEL_192;
    }
  }

  v65 = v52;
  if (!v58)
  {
    if ((v51 & 0x80000000) == 0)
    {
      if (byte_100127EC8)
      {
        v87 = *__error();
        v88 = sub_10003E080();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          sub_1000B14E4();
        }

        *__error() = v87;
        v50 = v399;
      }

      v400 = 0;
      v76 = 0x200000000000;
      if (byte_100127EC9 != 1 || dword_100127558 > 3)
      {
        goto LABEL_264;
      }

      v77 = *__error();
      v89 = sub_10003E020(v51);
      v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: Absolute path required, have %@", v89, v51, v65);
      if (!v78)
      {
        v79 = sub_10003E080();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
        {
          sub_1000B156C();
        }

        goto LABEL_129;
      }

      goto LABEL_59;
    }

    v94 = v49;
    if (byte_100127EC8)
    {
      v106 = *__error();
      v107 = sub_10003E080();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        sub_1000B1404();
      }

      *__error() = v106;
      v50 = v399;
    }

    v400 = 0;
    v76 = 0x200000000000;
    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      goto LABEL_494;
    }

    v77 = *__error();
    v97 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Absolute path required, have %@", v65);
    if (!v97)
    {
      v98 = sub_10003E080();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_FAULT))
      {
        sub_1000B1474();
      }

      goto LABEL_154;
    }

LABEL_88:
    v90 = v97;
    v108 = CFStringGetCStringPtr(v97, 0x8000100u);
    if (v108)
    {
      v92 = v108;
      v93 = 0;
    }

    else
    {
      v92 = malloc_type_calloc(0x400uLL, 1uLL, 0xBAD27653uLL);
      CFStringGetCString(v90, v92, 1024, 0x8000100u);
      v93 = v92;
    }

LABEL_102:
    if (qword_100127ED0)
    {
      v118 = qword_100127ED0;
    }

    else
    {
      v118 = __stderrp;
    }

    fprintf(v118, "%s\n", v92);
    if (v93)
    {
      free(v93);
    }

    CFRelease(v90);
    goto LABEL_158;
  }

  if ((v51 & 0x80000000) != 0)
  {
    v94 = v49;
    if (byte_100127EC8)
    {
      v95 = *__error();
      v96 = sub_10003E080();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        sub_1000B1324();
      }

      *__error() = v95;
      v50 = v399;
    }

    v400 = 0;
    v76 = 0x200000000000;
    if (byte_100127EC9 != 1 || dword_100127558 > 3)
    {
      goto LABEL_494;
    }

    v77 = *__error();
    v97 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@: Absolute path required, have %@", v58, v65);
    if (!v97)
    {
      v98 = sub_10003E080();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_FAULT))
      {
        sub_1000B1394();
      }

LABEL_154:

      if (qword_100127ED0)
      {
        v137 = qword_100127ED0;
      }

      else
      {
        v137 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v137);
      goto LABEL_158;
    }

    goto LABEL_88;
  }

  if (byte_100127EC8)
  {
    v74 = *__error();
    v75 = sub_10003E080();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *v413 = v58;
      *&v413[8] = 1024;
      *&v413[10] = v51;
      *&v413[14] = 2112;
      *&v413[16] = v52;
      _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%{public}@ [%d]: Absolute path required, have %@", buf, 0x1Cu);
    }

    *__error() = v74;
    v50 = v399;
  }

  v400 = 0;
  v76 = 0x200000000000;
  if (byte_100127EC9 != 1 || dword_100127558 > 3)
  {
    goto LABEL_264;
  }

  v77 = *__error();
  v78 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ [%d]: Absolute path required, have %@", v58, v51, v65);
  if (v78)
  {
LABEL_59:
    v90 = v78;
    v91 = CFStringGetCStringPtr(v78, 0x8000100u);
    if (v91)
    {
      v92 = v91;
      v93 = 0;
    }

    else
    {
      v92 = malloc_type_calloc(0x400uLL, 1uLL, 0xBAD27653uLL);
      CFStringGetCString(v90, v92, 1024, 0x8000100u);
      v93 = v92;
    }

    v94 = v49;
    goto LABEL_102;
  }

  v79 = sub_10003E080();
  if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412802;
    *v413 = v58;
    *&v413[8] = 1024;
    *&v413[10] = v51;
    *&v413[14] = 2112;
    *&v413[16] = v65;
    _os_log_fault_impl(&_mh_execute_header, v79, OS_LOG_TYPE_FAULT, "Unable to format: %@ [%d]: Absolute path required, have %@", buf, 0x1Cu);
  }

LABEL_129:

  if (qword_100127ED0)
  {
    v126 = qword_100127ED0;
  }

  else
  {
    v126 = __stderrp;
  }

  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v126);
  v94 = v49;
LABEL_158:
  *__error() = v77;
  v76 = 0x200000000000;
  v50 = v399;

LABEL_495:
  return v76;
}

id sub_100039314(const char *a1, off_t a2, int a3, void *a4, uint64_t a5, int a6, int a7, int a8, double a9, double a10, int a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, void *a16)
{
  value_4 = a4;
  v157 = a16;
  if ((a7 & 1) == 0 && (a8 & 1) == 0)
  {
    sub_1000AFBFC();
  }

  v23 = a8 ^ 1;
  if (!a1 && (v23 & 1) == 0)
  {
    sub_1000AFDF4();
  }

  if (a1)
  {
    v24 = a7;
  }

  else
  {
    v24 = 0;
  }

  if ((v24 & v23) != 1)
  {
    if (!&_systemstats_copy_microstackshots_to_file)
    {
      goto LABEL_189;
    }

    if (a1 && a8)
    {
      v31 = geteuid();
      v32 = sub_10003B424(a1, 1537, v31, 420);
      if (v32 == -1)
      {
        if (byte_100127EC8 == 1)
        {
          v75 = *__error();
          v76 = sub_10003E080();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            sub_1000B0318();
          }

          *__error() = v75;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 3)
        {
          v77 = *__error();
          v78 = *__error();
          v79 = __error();
          v80 = strerror(*v79);
          v81 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to open datastore file %s: %d (%s)", a1, v78, v80);
          v82 = v81;
          if (v81)
          {
            CStringPtr = CFStringGetCStringPtr(v81, 0x8000100u);
            if (CStringPtr)
            {
              v84 = 0;
            }

            else
            {
              CStringPtr = malloc_type_calloc(0x400uLL, 1uLL, 0x7C749F7uLL);
              CFStringGetCString(v82, CStringPtr, 1024, 0x8000100u);
              v84 = CStringPtr;
            }

            if (qword_100127ED0)
            {
              v106 = qword_100127ED0;
            }

            else
            {
              v106 = __stderrp;
            }

            fprintf(v106, "%s\n", CStringPtr);
            if (v84)
            {
              free(v84);
            }

            CFRelease(v82);
          }

          else
          {
            v100 = sub_10003E080();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_FAULT))
            {
              sub_1000B03B0();
            }

            if (qword_100127ED0)
            {
              v101 = qword_100127ED0;
            }

            else
            {
              v101 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v101);
          }

          *__error() = v77;
        }
      }

      else
      {
        v33 = v32;
        if (a2 && lseek(v32, a2, 0) == -1)
        {
          if (byte_100127EC8 == 1)
          {
            v150 = *__error();
            oslog = sub_10003E080();
            v87 = oslog;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              sub_1000B01E4();
              v87 = oslog;
            }

            *__error() = v150;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            osloga = *__error();
            v88 = *__error();
            v89 = __error();
            v90 = strerror(*v89);
            v91 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to seek %s to offset %lld: %d (%s)", a1, a2, v88, v90);
            v92 = v91;
            if (v91)
            {
              v93 = CFStringGetCStringPtr(v91, 0x8000100u);
              if (v93)
              {
                v94 = 0;
              }

              else
              {
                v93 = malloc_type_calloc(0x400uLL, 1uLL, 0xF20F7915uLL);
                CFStringGetCString(v92, v93, 1024, 0x8000100u);
                v94 = v93;
              }

              if (qword_100127ED0)
              {
                v110 = qword_100127ED0;
              }

              else
              {
                v110 = __stderrp;
              }

              fprintf(v110, "%s\n", v93);
              if (v94)
              {
                free(v94);
              }

              CFRelease(v92);
            }

            else
            {
              v108 = sub_10003E080();
              if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
              {
                sub_1000B027C();
              }

              if (qword_100127ED0)
              {
                v109 = qword_100127ED0;
              }

              else
              {
                v109 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v109);
            }

            *__error() = osloga;
          }

          close(v33);
        }

        else
        {
          empty = xpc_dictionary_create_empty();
          v35 = empty;
          if (a9 > 0.0)
          {
            xpc_dictionary_set_uint64(empty, "time", (kCFAbsoluteTimeIntervalSince1970 + a9));
          }

          systemstats_copy_microstackshots_to_file();
          close(v33);
        }
      }

      if ((a7 & 1) == 0)
      {
        goto LABEL_189;
      }
    }

    else if ((a7 & 1) == 0)
    {
      sub_1000AFFEC();
    }

    v111 = [SASampleStore alloc];
    if (a6)
    {
      v112 = [v111 initForLiveSampling];
      [v112 setShouldGatherKextStat:0];
      if (!a12)
      {
LABEL_192:
        if (a13 && *a13 && *(a13 + 4))
        {
          [v112 setMachTimebase:*a13];
        }

        if (a14)
        {
          [v112 setHwPageSize:a14];
        }

        if (a15)
        {
          [v112 setVmPageSize:a15];
        }

        if ((byte_100127EDC & 2) != 0 && sub_1000338E4())
        {
          if (byte_100127EC8 == 1)
          {
            v114 = *__error();
            v115 = sub_10003E080();
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "Avoiding inspecting live processes for microstackshot report due to audio running", buf, 2u);
            }

            *__error() = v114;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 2)
          {
            v116 = *__error();
            v117 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Avoiding inspecting live processes for microstackshot report due to audio running");
            v118 = v117;
            if (v117)
            {
              v119 = CFStringGetCStringPtr(v117, 0x8000100u);
              if (v119)
              {
                v120 = 0;
              }

              else
              {
                v119 = malloc_type_calloc(0x400uLL, 1uLL, 0xFD7CA921uLL);
                CFStringGetCString(v118, v119, 1024, 0x8000100u);
                v120 = v119;
              }

              if (qword_100127ED0)
              {
                v123 = qword_100127ED0;
              }

              else
              {
                v123 = __stderrp;
              }

              fprintf(v123, "%s\n", v119);
              if (v120)
              {
                free(v120);
              }

              CFRelease(v118);
            }

            else
            {
              v121 = sub_10003E080();
              if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
              {
                sub_1000B044C();
              }

              if (qword_100127ED0)
              {
                v122 = qword_100127ED0;
              }

              else
              {
                v122 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v122);
            }

            *__error() = v116;
          }

          [v112 setDataGatheringOptions:{objc_msgSend(v112, "dataGatheringOptions") & 0xFFFFFFFFFFFFFFFDLL}];
        }

        sub_1000791AC(v112, (byte_100127EDC >> 3) & 1, (byte_100127EDC >> 2) & 1, (byte_100127EDC & 0x10) == 0);
        *buf = 0;
        v183 = buf;
        v184 = 0x2020000000;
        v185 = 0;
        v180[0] = 0;
        v180[1] = v180;
        v180[2] = 0x2020000000;
        v181 = 0;
        v124 = dispatch_semaphore_create(0);
        v125 = xpc_dictionary_create_empty();
        v126 = v125;
        if (a9 > 0.0)
        {
          xpc_dictionary_set_uint64(v125, "time", (kCFAbsoluteTimeIntervalSince1970 + a9));
        }

        if (a3 >= 1)
        {
          xpc_dictionary_set_uint64(v126, "pid", a3);
        }

        oslogb = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v127 = dispatch_queue_create("com.apple.spindump.microstackshot_parsing", oslogb);
        v163 = _NSConcreteStackBlock;
        v164 = 3221225472;
        v165 = sub_10003A89C;
        v166 = &unk_1001153E8;
        v177 = qos_class_self();
        v172 = v180;
        v128 = v112;
        v167 = v128;
        v178 = a11;
        v179 = a3;
        v168 = value_4;
        v174 = a5;
        v175 = a9;
        v176 = a10;
        v169 = v157;
        v173 = buf;
        v129 = v124;
        v170 = v129;
        v130 = v127;
        v171 = v130;
        systemstats_get_microstackshots();
        v159 = 0;
        v160 = &v159;
        v161 = 0x2020000000;
        v162 = 0;
        do
        {
          v131 = dispatch_time(0, 30000000000);
          if (!dispatch_semaphore_wait(v129, v131))
          {
            break;
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000679F8;
          block[3] = &unk_100115410;
          block[4] = v180;
          block[5] = &v159;
          dispatch_sync(v130, block);
        }

        while (*(v160 + 24) != 1);
        if (*(v183 + 3))
        {
          if (byte_100127EC8 == 1)
          {
            v132 = *__error();
            v133 = sub_10003E080();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              v134 = *(v183 + 6);
              v135 = strerror(v134);
              sub_1000B0488(v135, v187, v134);
            }

            *__error() = v132;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 3)
          {
            v137 = *__error();
            v138 = *(v183 + 6);
            v139 = strerror(*(v183 + 6));
            v140 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Error grabbing microstackshots: %d (%s)", v138, v139);
            v141 = v140;
            if (v140)
            {
              v142 = CFStringGetCStringPtr(v140, 0x8000100u);
              if (v142)
              {
                v143 = 0;
              }

              else
              {
                v142 = malloc_type_calloc(0x400uLL, 1uLL, 0x4D191851uLL);
                CFStringGetCString(v141, v142, 1024, 0x8000100u);
                v143 = v142;
              }

              if (qword_100127ED0)
              {
                v148 = qword_100127ED0;
              }

              else
              {
                v148 = __stderrp;
              }

              fprintf(v148, "%s\n", v142);
              if (v143)
              {
                free(v143);
              }

              CFRelease(v141);
            }

            else
            {
              v144 = sub_10003E080();
              if (os_log_type_enabled(v144, OS_LOG_TYPE_FAULT))
              {
                v145 = *(v183 + 6);
                v146 = strerror(v145);
                sub_1000B04D0(v146, v186, v145);
              }

              if (qword_100127ED0)
              {
                v147 = qword_100127ED0;
              }

              else
              {
                v147 = __stderrp;
              }

              fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v147);
            }

            *__error() = v137;
          }
        }

        [v128 postprocess];
        v30 = v128;
        _Block_object_dispose(&v159, 8);

        _Block_object_dispose(v180, 8);
        _Block_object_dispose(buf, 8);
        goto LABEL_261;
      }
    }

    else
    {
      v112 = [v111 initForFileParsing];
      if (!a12)
      {
        goto LABEL_192;
      }
    }

    v113 = [NSString stringWithUTF8String:a12];
    [v112 setMachineArchitecture:v113];

    goto LABEL_192;
  }

  v25 = open(a1, 0);
  if (v25 != -1)
  {
    v26 = v25;
    if (a2 && lseek(v25, a2, 0) == -1)
    {
      if (byte_100127EC8 == 1)
      {
        v65 = *__error();
        v66 = sub_10003E080();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          sub_1000B01E4();
        }

        *__error() = v65;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v67 = *__error();
        v68 = *__error();
        v69 = __error();
        v70 = strerror(*v69);
        v71 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to seek %s to offset %lld: %d (%s)", a1, a2, v68, v70);
        v72 = v71;
        if (v71)
        {
          v73 = CFStringGetCStringPtr(v71, 0x8000100u);
          if (v73)
          {
            v74 = 0;
          }

          else
          {
            v73 = malloc_type_calloc(0x400uLL, 1uLL, 0x57F454DuLL);
            CFStringGetCString(v72, v73, 1024, 0x8000100u);
            v74 = v73;
          }

          if (qword_100127ED0)
          {
            v103 = qword_100127ED0;
          }

          else
          {
            v103 = __stderrp;
          }

          fprintf(v103, "%s\n", v73);
          if (v74)
          {
            free(v74);
          }

          CFRelease(v72);
        }

        else
        {
          v98 = sub_10003E080();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_FAULT))
          {
            sub_1000B0518();
          }

          if (qword_100127ED0)
          {
            v99 = qword_100127ED0;
          }

          else
          {
            v99 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v99);
        }

        *__error() = v67;
      }
    }

    else
    {
      v27 = gzdopen(v26, "r");
      if (v27)
      {
        v28 = v27;
        v29 = [SASampleStore alloc];
        if (a6)
        {
          v30 = [v29 initForLiveSampling];
          [v30 setShouldGatherKextStat:0];
          if (!a12)
          {
LABEL_50:
            if (a13 && *a13 && *(a13 + 4))
            {
              [v30 setMachTimebase:*a13];
            }

            if (a14)
            {
              [v30 setHwPageSize:a14];
            }

            if (a15)
            {
              [v30 setVmPageSize:a15];
            }

            if ((byte_100127EDC & 2) != 0 && sub_1000338E4())
            {
              if (byte_100127EC8 == 1)
              {
                v58 = *__error();
                v59 = sub_10003E080();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Avoiding inspecting live processes for microstackshot report due to audio running", buf, 2u);
                }

                *__error() = v58;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 2)
              {
                v60 = *__error();
                v61 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Avoiding inspecting live processes for microstackshot report due to audio running");
                v62 = v61;
                if (v61)
                {
                  v63 = CFStringGetCStringPtr(v61, 0x8000100u);
                  if (v63)
                  {
                    v64 = 0;
                  }

                  else
                  {
                    v63 = malloc_type_calloc(0x400uLL, 1uLL, 0x1E245F5FuLL);
                    CFStringGetCString(v62, v63, 1024, 0x8000100u);
                    v64 = v63;
                  }

                  if (qword_100127ED0)
                  {
                    v107 = qword_100127ED0;
                  }

                  else
                  {
                    v107 = __stderrp;
                  }

                  fprintf(v107, "%s\n", v63);
                  if (v64)
                  {
                    free(v64);
                  }

                  CFRelease(v62);
                }

                else
                {
                  v104 = sub_10003E080();
                  if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
                  {
                    sub_1000B044C();
                  }

                  if (qword_100127ED0)
                  {
                    v105 = qword_100127ED0;
                  }

                  else
                  {
                    v105 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v105);
                }

                *__error() = v60;
              }

              [v30 setDataGatheringOptions:{objc_msgSend(v30, "dataGatheringOptions") & 0xFFFFFFFFFFFFFFFDLL}];
            }

            sub_1000791AC(v30, (byte_100127EDC >> 3) & 1, (byte_100127EDC >> 2) & 1, (byte_100127EDC & 0x10) == 0);
            sub_10003ABA8(v30, v28, 0, 0, a11, a3, value_4, a5, a9, a10, v157);
            gzclose(v28);
            [v30 postprocess];
            goto LABEL_261;
          }
        }

        else
        {
          v30 = [v29 initForFileParsing];
          if (!a12)
          {
            goto LABEL_50;
          }
        }

        v57 = [NSString stringWithUTF8String:a12];
        [v30 setMachineArchitecture:v57];

        goto LABEL_50;
      }

      if (byte_100127EC8 == 1)
      {
        v47 = *__error();
        v48 = sub_10003E080();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_1000B05B4();
        }

        *__error() = v47;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v49 = *__error();
        v50 = *__error();
        v51 = __error();
        v52 = strerror(*v51);
        v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to gzdopen datastore file %s: %d (%s)", a1, v50, v52);
        v54 = v53;
        if (v53)
        {
          v55 = CFStringGetCStringPtr(v53, 0x8000100u);
          if (v55)
          {
            v56 = 0;
          }

          else
          {
            v55 = malloc_type_calloc(0x400uLL, 1uLL, 0xDC61AB1FuLL);
            CFStringGetCString(v54, v55, 1024, 0x8000100u);
            v56 = v55;
          }

          if (qword_100127ED0)
          {
            v102 = qword_100127ED0;
          }

          else
          {
            v102 = __stderrp;
          }

          fprintf(v102, "%s\n", v55);
          if (v56)
          {
            free(v56);
          }

          CFRelease(v54);
        }

        else
        {
          v96 = sub_10003E080();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
          {
            sub_1000B064C();
          }

          if (qword_100127ED0)
          {
            v97 = qword_100127ED0;
          }

          else
          {
            v97 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v97);
        }

        *__error() = v49;
      }
    }

    close(v26);
LABEL_189:
    v30 = 0;
    goto LABEL_261;
  }

  if (byte_100127EC8 == 1)
  {
    v36 = *__error();
    v37 = sub_10003E080();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1000B06E8();
    }

    *__error() = v36;
  }

  if (byte_100127EC9 != 1 || dword_100127558 > 3)
  {
    goto LABEL_189;
  }

  v39 = *__error();
  v40 = *__error();
  v41 = __error();
  v42 = strerror(*v41);
  v43 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to open %s: %d (%s)", a1, v40, v42);
  v44 = v43;
  if (v43)
  {
    v45 = CFStringGetCStringPtr(v43, 0x8000100u);
    if (v45)
    {
      v46 = 0;
    }

    else
    {
      v45 = malloc_type_calloc(0x400uLL, 1uLL, 0x6E9E04D7uLL);
      CFStringGetCString(v44, v45, 1024, 0x8000100u);
      v46 = v45;
    }

    if (qword_100127ED0)
    {
      v95 = qword_100127ED0;
    }

    else
    {
      v95 = __stderrp;
    }

    fprintf(v95, "%s\n", v45);
    if (v46)
    {
      free(v46);
    }

    CFRelease(v44);
  }

  else
  {
    v85 = sub_10003E080();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
    {
      sub_1000B0780();
    }

    if (qword_100127ED0)
    {
      v86 = qword_100127ED0;
    }

    else
    {
      v86 = __stderrp;
    }

    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v86);
  }

  v30 = 0;
  *__error() = v39;
LABEL_261:

  return v30;
}

void sub_10003A834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 256), 8);
  _Block_object_dispose((v27 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_10003A89C(uint64_t a1, char a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  if (a4 == 54)
  {
    if (byte_100127EC8 == 1)
    {
      v9 = *__error();
      v10 = sub_10003E080();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000B56F8();
      }

      *__error() = v9;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v12 = *__error();
      v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"reset from systemstats");
      if (v13)
      {
        v14 = v13;
        CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
        if (CStringPtr)
        {
          v16 = CStringPtr;
          v17 = 0;
        }

        else
        {
          v16 = malloc_type_calloc(0x400uLL, 1uLL, 0x8F65411CuLL);
          CFStringGetCString(v14, v16, 1024, 0x8000100u);
          v17 = v16;
        }

        if (qword_100127ED0)
        {
          v28 = qword_100127ED0;
        }

        else
        {
          v28 = __stderrp;
        }

        fprintf(v28, "%s\n", v16);
        if (v17)
        {
          free(v17);
        }

        CFRelease(v14);
      }

      else
      {
        v26 = sub_10003E080();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          sub_1000B5734();
        }

        if (qword_100127ED0)
        {
          v27 = qword_100127ED0;
        }

        else
        {
          v27 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v27);
      }

      *__error() = v12;
    }
  }

  else
  {
    v18 = *(a1 + 112);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100067758;
    block[3] = &unk_1001153C0;
    v33 = *(a1 + 72);
    v30 = v7;
    v19 = *(a1 + 32);
    v37 = *(a1 + 116);
    v20 = *(a1 + 40);
    v35 = *(a1 + 88);
    v36 = *(a1 + 96);
    v21 = *(a1 + 48);
    v39 = a2;
    v34 = *(a1 + 80);
    v38 = a4;
    v22 = *(a1 + 56);
    *&v23 = v21;
    *(&v23 + 1) = v22;
    *&v24 = v19;
    *(&v24 + 1) = v20;
    v31 = v24;
    v32 = v23;
    v25 = dispatch_block_create_with_qos_class(0, v18, 0, block);
    dispatch_sync(*(a1 + 64), v25);
  }
}

void sub_10003ABA8(void *a1, gzFile_s *a2, uint64_t a3, uint64_t a4, int a5, int a6, void *a7, uint64_t a8, double a9, double a10, void *a11)
{
  v20 = a1;
  v21 = a7;
  v22 = a11;
  v30 = v22;
  if (!a5 && a6 == -1 && !v21 && !a8 && a9 == 0.0 && a10 == 0.0)
  {
    v31 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_23:
    v47 = [[NSData alloc] initWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
    [v20 addMicrostackshotsFromData:v47 statistics:v30 filterBlock:v31];

    goto LABEL_24;
  }

  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_100067D34;
  v88[3] = &unk_100115438;
  v90 = a10;
  v91 = a9;
  v93 = a5;
  v94 = a6;
  v92 = a8;
  v89 = v21;
  v31 = objc_retainBlock(v88);

  if (a3)
  {
    goto LABEL_23;
  }

LABEL_8:
  if (!a2)
  {
    sub_1000B5518(v22, v23, v24, v25, v26, v27, v28, v29);
  }

  v86 = v21;
  v32 = malloc_type_calloc(1uLL, 0x20000uLL, 0xF9551A22uLL);
  v33 = gzread(a2, v32, 0x20000u);
  v85 = v33;
  v34 = 0;
  if (v33 < 1)
  {
LABEL_19:
    if (v33 != -1)
    {
      [v30 setBytes_not_microstackshots:{objc_msgSend(v30, "bytes_not_microstackshots") + v34}];
      v21 = v86;
      if (v85 > 0)
      {
        goto LABEL_24;
      }

      goto LABEL_73;
    }

    errnum = 0;
    v48 = gzerror(a2, &errnum);
    v21 = v86;
    if (errnum == -1)
    {
      errnum = *__error();
      if (byte_100127EC8 == 1)
      {
        v58 = *__error();
        v59 = sub_10003E080();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_1000B5390(&errnum);
        }

        *__error() = v58;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v52 = *__error();
        v60 = errnum;
        v61 = strerror(errnum);
        v62 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Read failed for microstackshots: %d (%s)", v60, v61);
        if (v62)
        {
          v63 = v62;
          CStringPtr = CFStringGetCStringPtr(v62, 0x8000100u);
          if (CStringPtr)
          {
            v65 = CStringPtr;
            v66 = 0;
          }

          else
          {
            v65 = malloc_type_calloc(0x400uLL, 1uLL, 0x12585991uLL);
            CFStringGetCString(v63, v65, 1024, 0x8000100u);
            v66 = v65;
          }

          if (qword_100127ED0)
          {
            v72 = qword_100127ED0;
          }

          else
          {
            v72 = __stderrp;
          }

          fprintf(v72, "%s\n", v65);
          if (v66)
          {
            free(v66);
          }

          v69 = v63;
          goto LABEL_70;
        }

        v70 = sub_10003E080();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          sub_1000B5418(&errnum);
        }

LABEL_59:
        if (qword_100127ED0)
        {
          v71 = qword_100127ED0;
        }

        else
        {
          v71 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v71);
        goto LABEL_71;
      }
    }

    else
    {
      v49 = v48;
      if (byte_100127EC8 == 1)
      {
        v50 = *__error();
        v51 = sub_10003E080();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          sub_1000B5288(&errnum);
        }

        *__error() = v50;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v52 = *__error();
        v53 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Read failed for microstackshots: %d (%s)", errnum, v49);
        if (v53)
        {
          v54 = v53;
          v55 = CFStringGetCStringPtr(v53, 0x8000100u);
          if (v55)
          {
            v56 = v55;
            v57 = 0;
          }

          else
          {
            v56 = malloc_type_calloc(0x400uLL, 1uLL, 0x702A6BE9uLL);
            CFStringGetCString(v54, v56, 1024, 0x8000100u);
            v57 = v56;
          }

          if (qword_100127ED0)
          {
            v68 = qword_100127ED0;
          }

          else
          {
            v68 = __stderrp;
          }

          fprintf(v68, "%s\n", v56);
          if (v57)
          {
            free(v57);
          }

          v69 = v54;
LABEL_70:
          CFRelease(v69);
LABEL_71:
          *__error() = v52;
          goto LABEL_72;
        }

        v67 = sub_10003E080();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
        {
          sub_1000B530C(&errnum);
        }

        goto LABEL_59;
      }
    }

LABEL_72:
    if (v85 > 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

  v35 = 0;
  v36 = 0x20000;
  while (1)
  {
    v37 = v34 + v33;
    v38 = [[NSData alloc] initWithBytesNoCopy:v32 length:v37 freeWhenDone:0];
    v39 = [v20 addMicrostackshotsFromData:v38 statistics:v30 filterBlock:v31];
    if ((v39 & 0x8000000000000000) != 0)
    {
      break;
    }

    v34 = v37 - v39;
    if (v34)
    {
      if (v39)
      {
        memmove(v32, &v32[v39], v34);
      }

      else
      {
        v36 *= 2;
        v46 = reallocf(v32, v36);
        if (!v46)
        {
          sub_1000B4DE8(v36);
        }

        v32 = v46;
      }
    }

    if (v36 <= v34)
    {
      sub_1000B5024(v34, v36, v40, v41, v42, v43, v44, v45);
    }

    v33 = gzread(a2, &v32[v34], v36 - v34);
    v35 = 1;
    if (v33 < 1)
    {
      goto LABEL_19;
    }
  }

  v21 = v86;
  if ((v35 & 1) == 0)
  {
LABEL_73:
    if (byte_100127EC8 == 1)
    {
      v73 = *__error();
      v74 = sub_10003E080();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        sub_1000B54A0();
      }

      *__error() = v73;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v76 = *__error();
      v77 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Data does not contain microstackshots");
      if (v77)
      {
        v78 = v77;
        v79 = CFStringGetCStringPtr(v77, 0x8000100u);
        if (v79)
        {
          v80 = v79;
          v81 = 0;
        }

        else
        {
          v80 = malloc_type_calloc(0x400uLL, 1uLL, 0xED953CD1uLL);
          CFStringGetCString(v78, v80, 1024, 0x8000100u);
          v81 = v80;
        }

        if (qword_100127ED0)
        {
          v84 = qword_100127ED0;
        }

        else
        {
          v84 = __stderrp;
        }

        fprintf(v84, "%s\n", v80);
        if (v81)
        {
          free(v81);
        }

        CFRelease(v78);
      }

      else
      {
        v82 = sub_10003E080();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
        {
          sub_1000B54DC();
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

      *__error() = v76;
    }
  }

LABEL_24:
}

BOOL sub_10003B3A0()
{
  byte_100127EDC = byte_100127EDC & 0xFC | 1;
  if (sub_10003B35C("/var/db/.spindump_enable_symbolication"))
  {
    v0 = 8;
  }

  else
  {
    v0 = 16;
  }

  byte_100127EDC = v0 | byte_100127EDC & 0xE3;
  result = sub_10003B35C("/var/db/.spindump_disable_exclaves");
  if (result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  byte_100127EDC = byte_100127EDC & 0xDF | v2;
  return result;
}

uint64_t sub_10003B424(const char *a1, int a2, int a3, uint64_t a4)
{
  v6 = a2;
  memset(&v16, 0, sizeof(v16));
  memset(&v15.st_atimespec, 0, 112);
  if ((a2 & 0x200) != 0)
  {
    v8 = -3585;
  }

  else
  {
    v8 = -1025;
  }

  v9 = v8 & a2;
  memset(&v15, 0, 32);
  *__error() = 0;
  if (lstat(a1, &v15) < 0)
  {
    v12 = __error();
    v10 = 0xFFFFFFFFLL;
    if ((v6 & 0x200) != 0 && *v12 == 2)
    {
      v13 = open(a1, v9 | 0xA00, a4);
      if (v13 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v13;
      }
    }
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
    if ((v15.st_mode & 0xF000) == 0x8000 && v15.st_nlink == 1 && v15.st_uid == a3 && (v15.st_mode & 0xFFF) == a4)
    {
      v11 = open(a1, v9, 0);
      if ((v11 & 0x80000000) == 0)
      {
        v10 = v11;
        if (!fstat(v11, &v16) && v16.st_nlink == v15.st_nlink && v16.st_uid == v15.st_uid && v16.st_mode == v15.st_mode && v16.st_ino == v15.st_ino && v16.st_dev == v15.st_dev)
        {
          if ((v6 & 0x400) != 0)
          {
            ftruncate(v10, 0);
          }
        }

        else
        {
          close(v10);
          *__error() = 59;
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return v10;
}

CFAbsoluteTime sub_10003B5D8(const char *a1)
{
  __endptr = 0;
  v2 = strtol(a1, &__endptr, 0);
  if (__endptr != a1 && !*__endptr)
  {
    v12 = v2;
    if (byte_100127EC8 == 1)
    {
      v13 = *__error();
      v14 = sub_10003E080();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B9E80();
      }

      *__error() = v13;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
    {
      v16 = *__error();
      v17 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found unix timestamp %ld", v12);
      if (v17)
      {
        v18 = v17;
        CStringPtr = CFStringGetCStringPtr(v17, 0x8000100u);
        if (CStringPtr)
        {
          v20 = CStringPtr;
          v21 = 0;
        }

        else
        {
          v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x42F722B5uLL);
          CFStringGetCString(v18, v20, 1024, 0x8000100u);
          v21 = v20;
        }

        if (qword_100127ED0)
        {
          v77 = qword_100127ED0;
        }

        else
        {
          v77 = __stderrp;
        }

        fprintf(v77, "%s\n", v20);
        if (v21)
        {
          free(v21);
        }

        CFRelease(v18);
      }

      else
      {
        v57 = sub_10003E080();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
        {
          sub_1000B9EF0();
        }

        if (qword_100127ED0)
        {
          v58 = qword_100127ED0;
        }

        else
        {
          v58 = __stderrp;
        }

        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v58);
      }

      *__error() = v16;
    }

    v78 = v12;
    return v78 - kCFAbsoluteTimeIntervalSince1970;
  }

  memset(&v110, 0, sizeof(v110));
  v110.tm_isdst = -1;
  v3 = strptime(a1, "%Y-%m-%d %T %z", &v110);
  __endptr = v3;
  if (v3 && !*v3)
  {
    v22 = mktime(&v110);
    if (byte_100127EC8 == 1)
    {
      v23 = *__error();
      v24 = sub_10003E080();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B9F60();
      }

      *__error() = v23;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      goto LABEL_170;
    }

    v26 = *__error();
    v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found ISO timestamp with time zone number %ld", v22);
    if (v27)
    {
      v28 = v27;
      v29 = CFStringGetCStringPtr(v27, 0x8000100u);
      if (!v29)
      {
        v30 = 2377879084;
        goto LABEL_162;
      }

      goto LABEL_69;
    }

    v73 = sub_10003E080();
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_144;
    }

LABEL_113:
    sub_1000B9FD0();
    goto LABEL_144;
  }

  v4 = strptime(a1, "%Y-%m-%dT%T %z", &v110);
  if (v4 && !*v4)
  {
    v22 = mktime(&v110);
    if (byte_100127EC8 == 1)
    {
      v31 = *__error();
      v32 = sub_10003E080();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        sub_1000B9F60();
      }

      *__error() = v31;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      goto LABEL_170;
    }

    v26 = *__error();
    v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found ISO timestamp with time zone number %ld", v22);
    if (v34)
    {
      v28 = v34;
      v29 = CFStringGetCStringPtr(v34, 0x8000100u);
      if (!v29)
      {
        v30 = 1049548421;
        goto LABEL_162;
      }

      goto LABEL_69;
    }

    v73 = sub_10003E080();
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_144;
    }

    goto LABEL_113;
  }

  v5 = strptime(a1, "%Y-%m-%d %T %Z", &v110);
  __endptr = v5;
  if (v5 && !*v5)
  {
    v22 = mktime(&v110);
    if (byte_100127EC8 == 1)
    {
      v35 = *__error();
      v36 = sub_10003E080();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_1000BA040();
      }

      *__error() = v35;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      goto LABEL_170;
    }

    v26 = *__error();
    v37 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found ISO timestamp with time zone name %ld", v22);
    if (!v37)
    {
      v73 = sub_10003E080();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
      {
LABEL_143:
        sub_1000BA0B0();
      }

LABEL_144:

      if (qword_100127ED0)
      {
        v81 = qword_100127ED0;
      }

      else
      {
        v81 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v81);
LABEL_169:
      *__error() = v26;
LABEL_170:
      v78 = v22;
      return v78 - kCFAbsoluteTimeIntervalSince1970;
    }

    v28 = v37;
    v29 = CFStringGetCStringPtr(v37, 0x8000100u);
    if (!v29)
    {
      v30 = 2215867693;
      goto LABEL_162;
    }

LABEL_69:
    v41 = v29;
    v42 = 0;
LABEL_163:
    if (qword_100127ED0)
    {
      v91 = qword_100127ED0;
    }

    else
    {
      v91 = __stderrp;
    }

    fprintf(v91, "%s\n", v41);
    if (v42)
    {
      free(v42);
    }

    CFRelease(v28);
    goto LABEL_169;
  }

  v6 = strptime(a1, "%Y-%m-%dT%T %Z", &v110);
  if (v6 && !*v6)
  {
    v22 = mktime(&v110);
    if (byte_100127EC8 == 1)
    {
      v38 = *__error();
      v39 = sub_10003E080();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        sub_1000BA040();
      }

      *__error() = v38;
    }

    if (byte_100127EC9 != 1 || dword_100127558 > 0)
    {
      goto LABEL_170;
    }

    v26 = *__error();
    v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found ISO timestamp with time zone name %ld", v22);
    if (v40)
    {
      v28 = v40;
      v29 = CFStringGetCStringPtr(v40, 0x8000100u);
      if (v29)
      {
        goto LABEL_69;
      }

      v30 = 3599346824;
LABEL_162:
      v41 = malloc_type_calloc(0x400uLL, 1uLL, v30);
      CFStringGetCString(v28, v41, 1024, 0x8000100u);
      v42 = v41;
      goto LABEL_163;
    }

    v73 = sub_10003E080();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_143;
    }

    goto LABEL_144;
  }

  v7 = strptime(a1, "%Y-%m-%d %T", &v110);
  __endptr = v7;
  if (v7 || (v7 = strptime(a1, "%Y-%m-%dT%T", &v110), (__endptr = v7) != 0))
  {
    v8 = v7;
    if (*v7 == 46)
    {
      *&v112[0] = 0;
      *v49.i64 = strtod(v7 - 2, v112);
      v106 = v49;
      if (*&v112[0] <= v8)
      {
        sub_1000BA120(v112, v8, v43, v44, v45, v46, v47, v48);
      }

      if (!**&v112[0] || ((v50 = strptime(*&v112[0], " %z", &v110), (__endptr = v50) != 0) || (v50 = strptime(*&v112[0], " %Z", &v110), (__endptr = v50) != 0)) && !*v50)
      {
        v9 = mktime(&v110);
        if (*v106.i64 > 0.0)
        {
          if (byte_100127EC8 == 1)
          {
            v59 = *__error();
            v60 = sub_10003E080();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
            {
              sub_1000BA464();
            }

            *__error() = v59;
          }

          if (byte_100127EC9 != 1 || dword_100127558 > 0)
          {
            goto LABEL_160;
          }

          v61 = *__error();
          *v62.i64 = *v106.i64 - trunc(*v106.i64);
          v63.f64[0] = NAN;
          v63.f64[1] = NAN;
          v64 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found ISO timestamp %ld with subseconds %f", v9, vbslq_s8(vnegq_f64(v63), v62, v106).u64[0]);
          if (v64)
          {
            v65 = v64;
            v66 = CFStringGetCStringPtr(v64, 0x8000100u);
            if (v66)
            {
LABEL_111:
              v71 = v66;
              v72 = 0;
LABEL_153:
              if (qword_100127ED0)
              {
                v88 = qword_100127ED0;
              }

              else
              {
                v88 = __stderrp;
              }

              fprintf(v88, "%s\n", v71);
              if (v72)
              {
                free(v72);
              }

              CFRelease(v65);
LABEL_159:
              *__error() = v61;
LABEL_160:
              *v10.i64 = *v106.i64 - trunc(*v106.i64);
              v89.f64[0] = NAN;
              v89.f64[1] = NAN;
              return *vbslq_s8(vnegq_f64(v89), v10, v106).i64 + v9 - kCFAbsoluteTimeIntervalSince1970;
            }

            v67 = 1683825117;
LABEL_152:
            v71 = malloc_type_calloc(0x400uLL, 1uLL, v67);
            CFStringGetCString(v65, v71, 1024, 0x8000100u);
            v72 = v71;
            goto LABEL_153;
          }

          v79 = sub_10003E080();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
          {
            sub_1000BA4EC();
          }

LABEL_138:

          if (qword_100127ED0)
          {
            v80 = qword_100127ED0;
          }

          else
          {
            v80 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v80);
          goto LABEL_159;
        }

LABEL_103:
        if (byte_100127EC8 == 1)
        {
          v68 = *__error();
          v69 = sub_10003E080();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            sub_1000BA384();
          }

          *__error() = v68;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 0)
        {
          goto LABEL_160;
        }

        v61 = *__error();
        v70 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found ISO timestamp %ld", v9);
        if (v70)
        {
          v65 = v70;
          v66 = CFStringGetCStringPtr(v70, 0x8000100u);
          if (v66)
          {
            goto LABEL_111;
          }

          v67 = 225392900;
          goto LABEL_152;
        }

        v79 = sub_10003E080();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
        {
          sub_1000BA3F4();
        }

        goto LABEL_138;
      }
    }

    else if (!*v7)
    {
      v9 = mktime(&v110);
      v11.i64[0] = 0;
      v106 = v11;
      goto LABEL_103;
    }
  }

  atp = 0.0;
  v51 = CFLocaleCopyCurrent();
  if (v51)
  {
    v52 = CFStringCreateWithCString(0, a1, 0x8000100u);
    if (v52)
    {
      v53 = 0;
      v54 = 0;
LABEL_78:
      v55 = 0;
      while (1)
      {
        if (v54)
        {
          CFRelease(v54);
        }

        v56 = CFDateFormatterCreate(0, v51, qword_1000CE608[v53], qword_1000CE608[v55]);
        if (!v56)
        {
          break;
        }

        v54 = v56;
        CFDateFormatterSetProperty(v56, kCFDateFormatterIsLenient, kCFBooleanTrue);
        if (CFDateFormatterGetAbsoluteTimeFromString(v54, v52, 0, &atp))
        {
          goto LABEL_188;
        }

        if (++v55 == 4)
        {
          if (++v53 != 4)
          {
            goto LABEL_78;
          }

          goto LABEL_188;
        }
      }

      if (byte_100127EC8 == 1)
      {
        v74 = *__error();
        v75 = sub_10003E080();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          sub_1000BA560();
        }

        *__error() = v74;
      }

      if (byte_100127EC9 == 1 && dword_100127558 <= 3)
      {
        v82 = *__error();
        v83 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to create date formatter");
        if (v83)
        {
          v84 = v83;
          v85 = CFStringGetCStringPtr(v83, 0x8000100u);
          if (v85)
          {
            v86 = v85;
            v87 = 0;
          }

          else
          {
            v86 = malloc_type_calloc(0x400uLL, 1uLL, 0x79F28351uLL);
            CFStringGetCString(v84, v86, 1024, 0x8000100u);
            v87 = v86;
          }

          if (qword_100127ED0)
          {
            v94 = qword_100127ED0;
          }

          else
          {
            v94 = __stderrp;
          }

          fprintf(v94, "%s\n", v86);
          if (v87)
          {
            free(v87);
          }

          CFRelease(v84);
        }

        else
        {
          v92 = sub_10003E080();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
          {
            sub_1000BA594();
          }

          if (qword_100127ED0)
          {
            v93 = qword_100127ED0;
          }

          else
          {
            v93 = __stderrp;
          }

          fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v93);
        }

        v54 = 0;
        *__error() = v82;
        goto LABEL_188;
      }
    }

    v54 = 0;
  }

  else
  {
    v54 = 0;
    v52 = 0;
  }

LABEL_188:
  if (atp == 0.0)
  {
    memset(v112, 0, sizeof(v112));
    memset(&v108, 0, sizeof(v108));
    v107 = (CFAbsoluteTimeGetCurrent() + kCFAbsoluteTimeIntervalSince1970);
    localtime_r(&v107, &v108);
    strftime(v112, 0x80uLL, "%Y-%m-%dT%T%z", &v108);
    if (byte_100127EC8 == 1)
    {
      v95 = *__error();
      v96 = sub_10003E080();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        sub_1000BA5D0();
      }

      *__error() = v95;
    }

    if (byte_100127EC9 == 1 && dword_100127558 <= 3)
    {
      v97 = *__error();
      v98 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Unable to parse time string %s, try using format '%%Y-%%m-%%dT%%T%%z', e.g. %s", a1, v112);
      if (v98)
      {
        v99 = v98;
        v100 = CFStringGetCStringPtr(v98, 0x8000100u);
        if (v100)
        {
          v101 = v100;
          v102 = 0;
        }

        else
        {
          v101 = malloc_type_calloc(0x400uLL, 1uLL, 0x9FD9AA7BuLL);
          CFStringGetCString(v99, v101, 1024, 0x8000100u);
          v102 = v101;
        }

        if (qword_100127ED0)
        {
          v105 = qword_100127ED0;
        }

        else
        {
          v105 = __stderrp;
        }

        fprintf(v105, "%s\n", v101);
        if (v102)
        {
          free(v102);
        }

        CFRelease(v99);
      }

      else
      {
        v103 = sub_10003E080();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
        {
          sub_1000BA64C();
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

      *__error() = v97;
    }
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  return atp;
}

uint64_t sub_10003C624()
{
  if (qword_1001276C8 != -1)
  {
    sub_1000A5A0C();
  }

  return dword_1001276C0;
}

void sub_10003C65C(id a1)
{
  *v2 = 0x600000001;
  v1 = 4;
  if (sysctl(v2, 2u, &dword_1001276C0, &v1, 0, 0) == -1)
  {
    sub_1000A5A20();
  }
}

uint64_t sub_10003C6E8(const char *a1, int a2, int a3, char a4, uint64_t *a5)
{
  v195 = getpid();
  __endptr = 0;
  if (!a1 || !*a1)
  {
    return 4294967294;
  }

  v9 = strtol(a1, &__endptr, 0);
  if (__endptr != a1 && !*__endptr)
  {
    v34 = v9;
    if (!v9 || !kill(v9, 0))
    {
      if (a5)
      {
        if (proc_pidpath(v34, &buffer, 0x400u) >= 1)
        {
          v72 = malloc_type_malloc(0x400uLL, 0x447CF6B4uLL);
          *a5 = v72;
          basename_r(&buffer, v72);
        }

        if (byte_100127EC8 == 1)
        {
          v73 = *__error();
          v74 = sub_10003E080();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            sub_1000A5A4C(a5);
          }

          *__error() = v73;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 0)
        {
          return v34;
        }

        v75 = *__error();
        v76 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found pid %s [%d]", *a5, v34);
        if (v76)
        {
          v77 = v76;
          CStringPtr = CFStringGetCStringPtr(v76, 0x8000100u);
          if (CStringPtr)
          {
            v79 = CStringPtr;
            v80 = 0;
          }

          else
          {
            v79 = malloc_type_calloc(0x400uLL, 1uLL, 0xCA623E3CuLL);
            CFStringGetCString(v77, v79, 1024, 0x8000100u);
            v80 = v79;
          }

          if (qword_100127ED0)
          {
            v183 = qword_100127ED0;
          }

          else
          {
            v183 = __stderrp;
          }

          fprintf(v183, "%s\n", v79);
          if (v80)
          {
            free(v80);
          }

          v184 = v77;
LABEL_328:
          CFRelease(v184);
LABEL_329:
          *__error() = v75;
          return v34;
        }

        v180 = sub_10003E080();
        if (os_log_type_enabled(v180, OS_LOG_TYPE_FAULT))
        {
          sub_1000A5AC8(a5);
        }
      }

      else
      {
        if (byte_100127EC8 == 1)
        {
          v151 = *__error();
          v152 = sub_10003E080();
          if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
          {
            sub_1000A5B44(v34, v152);
          }

          *__error() = v151;
        }

        if (byte_100127EC9 != 1 || dword_100127558 > 0)
        {
          return v34;
        }

        v75 = *__error();
        v154 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found pid [%d]", v34);
        if (v154)
        {
          v155 = v154;
          v156 = CFStringGetCStringPtr(v154, 0x8000100u);
          if (v156)
          {
            v157 = v156;
            v158 = 0;
          }

          else
          {
            v157 = malloc_type_calloc(0x400uLL, 1uLL, 0xBBBD025DuLL);
            CFStringGetCString(v155, v157, 1024, 0x8000100u);
            v158 = v157;
          }

          if (qword_100127ED0)
          {
            v186 = qword_100127ED0;
          }

          else
          {
            v186 = __stderrp;
          }

          fprintf(v186, "%s\n", v157);
          if (v158)
          {
            free(v158);
          }

          v184 = v155;
          goto LABEL_328;
        }

        v180 = sub_10003E080();
        if (os_log_type_enabled(v180, OS_LOG_TYPE_FAULT))
        {
          sub_1000A5BBC(v34, v180);
        }
      }

      if (qword_100127ED0)
      {
        v185 = qword_100127ED0;
      }

      else
      {
        v185 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v185);
      goto LABEL_329;
    }
  }

  if (qword_1001276C8 != -1)
  {
    sub_1000A5A0C();
  }

  v10 = dword_1001276C0;
  v190 = malloc_type_calloc(dword_1001276C0, 4uLL, 0x100004052888210uLL);
  v11 = proc_listallpids(v190, 4 * v10);
  if (v11 == -1)
  {
    perror("proc_listallpids");
    free(v190);
    return 4294967294;
  }

  LODWORD(v12) = v11;
  v13 = malloc_type_calloc(v11, 0x400uLL, 0x1000040D7EB2065uLL);
  __s1 = v13;
  v193 = a1;
  if (v12 < 1)
  {
    if (a3)
    {
      sub_10003DFD8(&buffer, 0x100uLL, "Multiple matches for %s: ", v14, v15, v16, v17, v18, a1);
      v53 = 0;
LABEL_133:
      v34 = 4294967294;
LABEL_134:
      if (a5)
      {
        goto LABEL_302;
      }

      goto LABEL_303;
    }

    v187 = v12;
    v188 = a5;
    v192 = -1;
LABEL_95:
    if (v187 >= 1 && (a2 & 1) == 0)
    {
      v81 = v187;
      v55 = __s1;
      v82 = __s1;
      v83 = v190;
      do
      {
        if (!strncasecmp(v55, a1, 0x400uLL))
        {
          if (byte_100127EC8 == 1)
          {
            v84 = *__error();
            v85 = sub_10003E080();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              v96 = *v83;
              buffer = 136315394;
              v200 = v82;
              v201 = 1024;
              v202 = v96;
              _os_log_debug_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "Found case insensitive match %s [%d]", &buffer, 0x12u);
            }

            *__error() = v84;
            a1 = v193;
          }

          if (byte_100127EC9 == 1 && dword_100127558 <= 0)
          {
            v87 = *__error();
            v88 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found case insensitive match %s [%d]", v55, *v83);
            if (v88)
            {
              v89 = v88;
              v90 = CFStringGetCStringPtr(v88, 0x8000100u);
              if (v90)
              {
                v91 = v90;
                v92 = 0;
              }

              else
              {
                v91 = malloc_type_calloc(0x400uLL, 1uLL, 0x40E1C931uLL);
                CFStringGetCString(v89, v91, 1024, 0x8000100u);
                v92 = v91;
              }

              if (qword_100127ED0)
              {
                v95 = qword_100127ED0;
              }

              else
              {
                v95 = __stderrp;
              }

              fprintf(v95, "%s\n", v91);
              if (v92)
              {
                free(v92);
              }

              CFRelease(v89);
            }

            else
            {
              v93 = sub_10003E080();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
              {
                v97 = *v83;
                buffer = 136315394;
                v200 = v82;
                v201 = 1024;
                v202 = v97;
                _os_log_fault_impl(&_mh_execute_header, v93, OS_LOG_TYPE_FAULT, "Unable to format: Found case insensitive match %s [%d]", &buffer, 0x12u);
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

            *__error() = v87;
            a1 = v193;
          }

          v34 = *v83;
          if ((a4 & 1) != 0 || v195 != v34)
          {
            if (v195 != v34)
            {
              goto LABEL_236;
            }

            v192 = *v83;
          }
        }

        ++v83;
        v55 += 1024;
        v82 += 1024;
        --v81;
      }

      while (v81);
      v98 = strlen(a1);
      if (v98 <= 0x3FF)
      {
        v99 = v98;
        v100 = v187;
        v55 = __s1;
        v101 = __s1;
        v102 = v190;
        while (1)
        {
          if (!strncmp(v55, a1, v99))
          {
            if (byte_100127EC8 == 1)
            {
              v103 = *__error();
              v104 = sub_10003E080();
              if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
              {
                v115 = *v102;
                buffer = 136315394;
                v200 = v101;
                v201 = 1024;
                v202 = v115;
                _os_log_debug_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEBUG, "Found prefix match %s [%d]", &buffer, 0x12u);
              }

              *__error() = v103;
              a1 = v193;
            }

            if (byte_100127EC9 == 1 && dword_100127558 <= 0)
            {
              v106 = *__error();
              v107 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found prefix match %s [%d]", v55, *v102);
              if (v107)
              {
                v108 = v107;
                v109 = CFStringGetCStringPtr(v107, 0x8000100u);
                if (v109)
                {
                  v110 = v109;
                  v111 = 0;
                }

                else
                {
                  v110 = malloc_type_calloc(0x400uLL, 1uLL, 0x2F294D78uLL);
                  CFStringGetCString(v108, v110, 1024, 0x8000100u);
                  v111 = v110;
                }

                if (qword_100127ED0)
                {
                  v114 = qword_100127ED0;
                }

                else
                {
                  v114 = __stderrp;
                }

                fprintf(v114, "%s\n", v110);
                if (v111)
                {
                  free(v111);
                }

                CFRelease(v108);
              }

              else
              {
                v112 = sub_10003E080();
                if (os_log_type_enabled(v112, OS_LOG_TYPE_FAULT))
                {
                  v116 = *v102;
                  buffer = 136315394;
                  v200 = v101;
                  v201 = 1024;
                  v202 = v116;
                  _os_log_fault_impl(&_mh_execute_header, v112, OS_LOG_TYPE_FAULT, "Unable to format: Found prefix match %s [%d]", &buffer, 0x12u);
                }

                if (qword_100127ED0)
                {
                  v113 = qword_100127ED0;
                }

                else
                {
                  v113 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v113);
              }

              *__error() = v106;
              a1 = v193;
            }

            v34 = *v102;
            if ((a4 & 1) != 0 || v195 != v34)
            {
              if (v195 != v34)
              {
                goto LABEL_236;
              }

              v192 = *v102;
            }
          }

          ++v102;
          v55 += 1024;
          v101 += 1024;
          if (!--v100)
          {
            v117 = v187;
            v55 = __s1;
            v118 = __s1;
            v119 = v190;
            while (1)
            {
              if (!strncasecmp(v55, a1, v99))
              {
                if (byte_100127EC8 == 1)
                {
                  v120 = *__error();
                  v121 = sub_10003E080();
                  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
                  {
                    v132 = *v119;
                    buffer = 136315394;
                    v200 = v118;
                    v201 = 1024;
                    v202 = v132;
                    _os_log_debug_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEBUG, "Found case insensitive prefix match %s [%d]", &buffer, 0x12u);
                  }

                  *__error() = v120;
                  a1 = v193;
                }

                if (byte_100127EC9 == 1 && dword_100127558 <= 0)
                {
                  v123 = *__error();
                  v124 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found case insensitive prefix match %s [%d]", v55, *v119);
                  if (v124)
                  {
                    v125 = v124;
                    v126 = CFStringGetCStringPtr(v124, 0x8000100u);
                    if (v126)
                    {
                      v127 = v126;
                      v128 = 0;
                    }

                    else
                    {
                      v127 = malloc_type_calloc(0x400uLL, 1uLL, 0x5CB77C74uLL);
                      CFStringGetCString(v125, v127, 1024, 0x8000100u);
                      v128 = v127;
                    }

                    if (qword_100127ED0)
                    {
                      v131 = qword_100127ED0;
                    }

                    else
                    {
                      v131 = __stderrp;
                    }

                    fprintf(v131, "%s\n", v127);
                    if (v128)
                    {
                      free(v128);
                    }

                    CFRelease(v125);
                  }

                  else
                  {
                    v129 = sub_10003E080();
                    if (os_log_type_enabled(v129, OS_LOG_TYPE_FAULT))
                    {
                      v133 = *v119;
                      buffer = 136315394;
                      v200 = v118;
                      v201 = 1024;
                      v202 = v133;
                      _os_log_fault_impl(&_mh_execute_header, v129, OS_LOG_TYPE_FAULT, "Unable to format: Found case insensitive prefix match %s [%d]", &buffer, 0x12u);
                    }

                    if (qword_100127ED0)
                    {
                      v130 = qword_100127ED0;
                    }

                    else
                    {
                      v130 = __stderrp;
                    }

                    fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v130);
                  }

                  *__error() = v123;
                  a1 = v193;
                }

                v34 = *v119;
                if ((a4 & 1) != 0 || v195 != v34)
                {
                  if (v195 != v34)
                  {
                    goto LABEL_236;
                  }

                  v192 = *v119;
                }
              }

              ++v119;
              v55 += 1024;
              v118 += 1024;
              if (!--v117)
              {
                v134 = v187;
                v55 = __s1;
                v135 = __s1;
                v136 = v190;
                while (1)
                {
                  if (strstr(v55, a1))
                  {
                    if (byte_100127EC8 == 1)
                    {
                      v137 = *__error();
                      v138 = sub_10003E080();
                      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
                      {
                        v149 = *v136;
                        buffer = 136315394;
                        v200 = v135;
                        v201 = 1024;
                        v202 = v149;
                        _os_log_debug_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEBUG, "Found partial match %s [%d]", &buffer, 0x12u);
                      }

                      *__error() = v137;
                      a1 = v193;
                    }

                    if (byte_100127EC9 == 1 && dword_100127558 <= 0)
                    {
                      v140 = *__error();
                      v141 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found partial match %s [%d]", v55, *v136);
                      if (v141)
                      {
                        v142 = v141;
                        v143 = CFStringGetCStringPtr(v141, 0x8000100u);
                        if (v143)
                        {
                          v144 = v143;
                          v145 = 0;
                        }

                        else
                        {
                          v144 = malloc_type_calloc(0x400uLL, 1uLL, 0x65BA8629uLL);
                          CFStringGetCString(v142, v144, 1024, 0x8000100u);
                          v145 = v144;
                        }

                        if (qword_100127ED0)
                        {
                          v148 = qword_100127ED0;
                        }

                        else
                        {
                          v148 = __stderrp;
                        }

                        fprintf(v148, "%s\n", v144);
                        if (v145)
                        {
                          free(v145);
                        }

                        CFRelease(v142);
                      }

                      else
                      {
                        v146 = sub_10003E080();
                        if (os_log_type_enabled(v146, OS_LOG_TYPE_FAULT))
                        {
                          v150 = *v136;
                          buffer = 136315394;
                          v200 = v135;
                          v201 = 1024;
                          v202 = v150;
                          _os_log_fault_impl(&_mh_execute_header, v146, OS_LOG_TYPE_FAULT, "Unable to format: Found partial match %s [%d]", &buffer, 0x12u);
                        }

                        if (qword_100127ED0)
                        {
                          v147 = qword_100127ED0;
                        }

                        else
                        {
                          v147 = __stderrp;
                        }

                        fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v147);
                      }

                      *__error() = v140;
                      a1 = v193;
                    }

                    v34 = *v136;
                    if ((a4 & 1) != 0 || v195 != v34)
                    {
                      if (v195 != v34)
                      {
                        goto LABEL_236;
                      }

                      v192 = *v136;
                    }
                  }

                  ++v136;
                  v55 += 1024;
                  v135 += 1024;
                  if (!--v134)
                  {
                    v159 = __s1;
                    v160 = __s1;
                    v161 = v190;
                    v34 = v192;
                    v162 = v187;
                    while (1)
                    {
                      if (strcasestr(v159, a1))
                      {
                        if (byte_100127EC8 == 1)
                        {
                          v163 = *__error();
                          v164 = sub_10003E080();
                          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
                          {
                            v176 = *v161;
                            buffer = 136315394;
                            v200 = v160;
                            v201 = 1024;
                            v202 = v176;
                            _os_log_debug_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEBUG, "Found case insensitive partial match %s [%d]", &buffer, 0x12u);
                          }

                          *__error() = v163;
                        }

                        if (byte_100127EC9 == 1 && dword_100127558 <= 0)
                        {
                          v166 = *__error();
                          v167 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found case insensitive partial match %s [%d]", v159, *v161);
                          if (v167)
                          {
                            v168 = v167;
                            v169 = CFStringGetCStringPtr(v167, 0x8000100u);
                            if (v169)
                            {
                              v170 = v169;
                              v171 = 0;
                            }

                            else
                            {
                              v170 = malloc_type_calloc(0x400uLL, 1uLL, 0x2BCC3AFBuLL);
                              CFStringGetCString(v168, v170, 1024, 0x8000100u);
                              v171 = v170;
                            }

                            if (qword_100127ED0)
                            {
                              v174 = qword_100127ED0;
                            }

                            else
                            {
                              v174 = __stderrp;
                            }

                            fprintf(v174, "%s\n", v170);
                            if (v171)
                            {
                              free(v171);
                            }

                            CFRelease(v168);
                          }

                          else
                          {
                            v172 = sub_10003E080();
                            if (os_log_type_enabled(v172, OS_LOG_TYPE_FAULT))
                            {
                              v177 = *v161;
                              buffer = 136315394;
                              v200 = v160;
                              v201 = 1024;
                              v202 = v177;
                              _os_log_fault_impl(&_mh_execute_header, v172, OS_LOG_TYPE_FAULT, "Unable to format: Found case insensitive partial match %s [%d]", &buffer, 0x12u);
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
                          }

                          *__error() = v166;
                        }

                        v175 = *v161;
                        if ((a4 & 1) != 0 || v195 != v175)
                        {
                          if (v195 != v175)
                          {
                            if (v188)
                            {
                              *v188 = strdup(v159);
                            }

                            v34 = v175;
                            goto LABEL_303;
                          }

                          v34 = *v161;
                        }
                      }

                      ++v161;
                      v159 += 1024;
                      v160 += 1024;
                      if (!--v162)
                      {
                        goto LABEL_303;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v34 = v192;
    goto LABEL_303;
  }

  v19 = v13;
  v187 = v12;
  v20 = v12;
  v12 = v12;
  v21 = v190;
  v22 = v13;
  do
  {
    v23 = *v21++;
    if (proc_pidpath(v23, &buffer, 0x400u) >= 1)
    {
      basename_r(&buffer, v22);
    }

    v22 += 1024;
    --v12;
  }

  while (v12);
  v188 = a5;
  if ((a3 & 1) == 0)
  {
    v192 = -1;
    v54 = &byte_100127EC8;
    v55 = v19;
    v56 = v190;
    do
    {
      if (!strncmp(v55, a1, 0x400uLL))
      {
        if (*v54 == 1)
        {
          v57 = *__error();
          v58 = sub_10003E080();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            v70 = *v56;
            buffer = 136315394;
            v200 = v19;
            v201 = 1024;
            v202 = v70;
            _os_log_debug_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "Found exact match %s [%d]", &buffer, 0x12u);
          }

          *__error() = v57;
          a1 = v193;
        }

        if (byte_100127EC9 == 1 && dword_100127558 <= 0)
        {
          v60 = *__error();
          v61 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Found exact match %s [%d]", v55, *v56);
          if (v61)
          {
            v62 = v61;
            v63 = v54;
            v64 = CFStringGetCStringPtr(v61, 0x8000100u);
            if (v64)
            {
              v65 = v64;
              v66 = 0;
            }

            else
            {
              v65 = malloc_type_calloc(0x400uLL, 1uLL, 0xFD0C384BuLL);
              CFStringGetCString(v62, v65, 1024, 0x8000100u);
              v66 = v65;
            }

            if (qword_100127ED0)
            {
              v69 = qword_100127ED0;
            }

            else
            {
              v69 = __stderrp;
            }

            fprintf(v69, "%s\n", v65);
            if (v66)
            {
              free(v66);
            }

            CFRelease(v62);
            v54 = v63;
          }

          else
          {
            v67 = sub_10003E080();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
            {
              v71 = *v56;
              buffer = 136315394;
              v200 = v19;
              v201 = 1024;
              v202 = v71;
              _os_log_fault_impl(&_mh_execute_header, v67, OS_LOG_TYPE_FAULT, "Unable to format: Found exact match %s [%d]", &buffer, 0x12u);
            }

            if (qword_100127ED0)
            {
              v68 = qword_100127ED0;
            }

            else
            {
              v68 = __stderrp;
            }

            fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v68);
          }

          *__error() = v60;
          a1 = v193;
        }

        v34 = *v56;
        if ((a4 & 1) != 0 || v195 != v34)
        {
          if (v195 != v34)
          {
LABEL_236:
            if (v188)
            {
              *v188 = strdup(v55);
            }

            goto LABEL_303;
          }

          v192 = *v56;
        }
      }

      ++v56;
      v55 += 1024;
      v19 += 1024;
      --v20;
    }

    while (v20);
    goto LABEL_95;
  }

  v29 = sub_10003DFD8(&buffer, 0x100uLL, "Multiple matches for %s: ", v24, v25, v26, v27, v28, a1);
  v30 = v19;
  v31 = 0;
  v32 = 0;
  v191 = 0;
  v33 = &buffer + v29;
  v34 = 0xFFFFFFFFLL;
  v35 = v30;
  v36 = v190;
  do
  {
    if (a2)
    {
      if (strncmp(v35, a1, 0x400uLL))
      {
        goto LABEL_30;
      }
    }

    else if (!strcasestr(v35, a1))
    {
      goto LABEL_30;
    }

    v42 = *v36;
    if ((a4 & 1) != 0 || v195 != v42)
    {
      if (v195 != v42)
      {
        if (a5 && !v31)
        {
          v191 = strdup(v35);
        }

        v43 = ", ";
        if (!v32)
        {
          v43 = "";
        }

        v33 += sub_10003DFD8(v33, &v203 - v33, "%s%s [%d]", v37, v38, v39, v40, v41, v43);
        ++v31;
        ++v32;
      }

      v34 = v42;
    }

    a1 = v193;
LABEL_30:
    ++v36;
    v35 += 1024;
    --v20;
  }

  while (v20);
  if (v31 < 2)
  {
    v53 = v191;
    if (v31)
    {
      goto LABEL_134;
    }

    goto LABEL_133;
  }

  if (byte_100127EC8 == 1)
  {
    v44 = *__error();
    v45 = sub_10003E080();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      p_buffer = &buffer;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    *__error() = v44;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 2)
  {
    v47 = *__error();
    v48 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s", &buffer);
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
        v51 = malloc_type_calloc(0x400uLL, 1uLL, 0x3B3AD74DuLL);
        CFStringGetCString(v49, v51, 1024, 0x8000100u);
        v52 = v51;
      }

      if (qword_100127ED0)
      {
        v181 = qword_100127ED0;
      }

      else
      {
        v181 = __stderrp;
      }

      fprintf(v181, "%s\n", v51);
      if (v52)
      {
        free(v52);
      }

      CFRelease(v49);
    }

    else
    {
      v178 = sub_10003E080();
      if (os_log_type_enabled(v178, OS_LOG_TYPE_FAULT))
      {
        sub_1000A5C34(&buffer, v178);
      }

      if (qword_100127ED0)
      {
        v179 = qword_100127ED0;
      }

      else
      {
        v179 = __stderrp;
      }

      fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v179);
    }

    *__error() = v47;
  }

  free(v191);
  v53 = 0;
  v34 = 0xFFFFFFFFLL;
  if (a5)
  {
LABEL_302:
    *a5 = v53;
  }

LABEL_303:
  free(v190);
  free(__s1);
  return v34;
}

id sub_10003DEB8(char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(__str, 0x200uLL, __format, va);
  v1 = os_transaction_create();

  return v1;
}

uint64_t sub_10003DF54(const char *a1, const char *a2, int a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = snprintf(byte_1001276D0, 0x400uLL, "Assertion Failed %s %s:%d ", a1, a2, a3);
  if ((result - 1) <= 0x3FE)
  {
    result = vsnprintf(&byte_1001276D0[result], 1024 - result, a4, &a9);
  }

  qword_100127580 = byte_1001276D0;
  return result;
}

uint64_t sub_10003DFD8(char *a1, size_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  LODWORD(result) = vsnprintf(a1, a2, a3, &a9);
  if (result >= a2)
  {
    return (a2 - 1);
  }

  else
  {
    return result;
  }
}

_DWORD *sub_10003E020(int a1)
{
  add_explicit = atomic_fetch_add_explicit(dword_100127CD0, 1u, memory_order_relaxed);
  v2 = add_explicit & 3;
  v4 = -add_explicit;
  v3 = v4 < 0;
  v5 = v4 & 3;
  if (v3)
  {
    v6 = v2;
  }

  else
  {
    v6 = -v5;
  }

  v7 = (&unk_100127AD0 + 128 * v6);
  *v7 = 0;
  proc_name(a1, v7, 0x80u);
  return v7;
}

uint64_t sub_10003E080()
{
  if (qword_100127CE0 != -1)
  {
    sub_1000A5CAC();
  }

  return qword_100127CD8;
}

void sub_10003E0B8(id a1)
{
  qword_100127CD8 = os_log_create("com.apple.spindump", "logging");
  if (!qword_100127CD8)
  {
    sub_1000A5CC0();
  }
}

uint64_t sub_10003E0F0(int a1)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  if (proc_pidinfo(a1, 20, 1uLL, v2, 40) == 40)
  {
    return *&v2[0];
  }

  else
  {
    return 0;
  }
}

id sub_10003E138(int a1)
{
  if (proc_pidpath(a1, buffer, 0x400u) < 1)
  {
    return 0;
  }

  else
  {
    return [[NSString alloc] initWithUTF8String:buffer];
  }
}

void sub_10003E1B8(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, void *a11)
{
  v20 = a2;
  v21 = a11;
  if (qword_100127D38 != -1)
  {
    sub_1000A5CDC();
  }

  v22 = *off_100114DA0[a4];
  if (os_signpost_enabled(v22) || sub_10003E438(a4))
  {
    v35 = a5;
    v36 = a6;
    if ((a1 & 0x80000000) == 0 && !a3)
    {
      memset(buffer, 0, 40);
      if (proc_pidinfo(a1, 20, 1uLL, buffer, 40) == 40)
      {
        a3 = buffer[0];
      }

      else
      {
        a3 = 0;
      }
    }

    v23 = v21;
    v24 = a8;
    v37 = v20;
    if (a1 < 0 || v20)
    {
      v25 = a7;
      v26 = v20;
    }

    else
    {
      v25 = a7;
      v26 = sub_10003E138(a1);
    }

    v27 = v26;
    v28 = +[SATimestamp timestamp];
    v29 = [v27 lastPathComponent];
    v30 = sub_10003DEB8("Event rate report for %s [%d] type %lu", [v29 UTF8String], a1, a4);

    if (qword_100127D48 != -1)
    {
      sub_1000A5CF0();
    }

    v31 = qword_100127D40;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003FB5C;
    block[3] = &unk_100114D40;
    v44 = v35;
    v45 = v36;
    v46 = v25;
    v47 = v24;
    v39 = v27;
    v40 = v28;
    v48 = a9;
    v49 = a10;
    v51 = a1;
    v21 = v23;
    v43 = v23;
    v50 = a3;
    v41 = v22;
    v42 = v30;
    v32 = v30;
    v33 = v28;
    v34 = v27;
    dispatch_async(v31, block);

    v20 = v37;
  }
}

uint64_t sub_10003E438(uint64_t a1)
{
  if (!&_AnalyticsIsEventUsed)
  {
    return 0;
  }

  v1 = sub_10003E484(a1);
  IsEventUsed = AnalyticsIsEventUsed();

  return IsEventUsed;
}

void sub_10003E494(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8, double a9)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003E524;
  v9[3] = &unk_100114CD8;
  v10 = a1;
  v11 = a6;
  *&v9[4] = a9;
  v9[5] = a4;
  v9[6] = a5;
  *&v9[7] = a8;
  *&v9[8] = a7;
  sub_10003E1B8(a1, a2, a3, 2, 0, 0, 0, 0, a7, a8, v9);
}

void sub_10003E524(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  if (os_signpost_enabled(v11))
  {
    v13 = *(a1 + 72);
    v14 = *(a1 + 76);
    v15 = round(*(a1 + 32));
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    *buf = 138545154;
    v24 = v12;
    v25 = 2050;
    v26 = a5;
    v27 = 2050;
    v28 = a3;
    v29 = 1026;
    v30 = v13;
    v31 = 1026;
    v32 = v14;
    v33 = 2050;
    v34 = v15;
    v35 = 2050;
    v36 = v16;
    v37 = 2050;
    v38 = v17;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CPUResource", "BundleIdOverride=%{public,signpost.description:attribute}@ %{public,signpost.description:begin_time}llu cid=%{public,name=cid}llu pid=%{public,name=pid}u fatal=%{public,name=fatal}d cpuUsed=%{public,name=cpuUsed}.0f conditionsPreventingSubmission=%{public,name=conditionsPreventingSubmission}#llx otherConditions=%{public,name=otherConditions}#llx enableTelemetry=YES ", buf, 0x4Au);
  }

  if (os_signpost_enabled(v11))
  {
    *buf = 134349056;
    v24 = a6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CPUResource", "%{public, signpost.description:end_time}llu", buf, 0xCu);
  }

  v18 = sub_10003E438(2);
  if (v12 && v18)
  {
    v19 = v12;
    v20 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    AnalyticsSendEventLazy();
  }
}

id sub_10003E740(uint64_t a1)
{
  v2 = *(a1 + 40);
  v11[0] = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"%llu", v2, @"BundleID", @"CoalitionID"];
  v11[1] = v3;
  v10[2] = @"Duration";
  v4 = [NSNumber numberWithDouble:*(a1 + 48) - *(a1 + 56)];
  v11[2] = v4;
  v10[3] = @"CpuUsedS";
  v5 = [NSNumber numberWithDouble:*(a1 + 64)];
  v11[3] = v5;
  v10[4] = @"ConditionsPreventingSubmission";
  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 72)];
  v11[4] = v6;
  v10[5] = @"OtherConditions";
  v7 = [NSNumber numberWithUnsignedLongLong:*(a1 + 80)];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

void sub_10003E8C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003E95C;
  v6[3] = &unk_100114CF8;
  v6[4] = a4;
  v6[5] = a2;
  v6[6] = a3;
  *&v6[7] = a6;
  *&v6[8] = a5;
  sub_10003E1B8(-1, a1, 0, 3, 0, 0, 0, 0, a5, a6, v6);
}

void sub_10003E95C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = a4;
  if (os_signpost_enabled(v10))
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    *buf = 138544642;
    v21 = v11;
    v22 = 2050;
    v23 = a5;
    v24 = 2050;
    v25 = a6;
    v26 = 2050;
    v27 = v12;
    v28 = 2050;
    v29 = v13;
    v30 = 2050;
    v31 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PowerException", "BundleIdOverride=%{public,signpost.description:attribute}@ %{public,signpost.description:begin_time}llu %{public, signpost.description:end_time}llu action=%{public,name=action}llu conditionsPreventingSubmission=%{public,name=conditionsPreventingSubmission}#llx otherConditions=%{public,name=otherConditions}#llx enableTelemetry=YES ", buf, 0x3Eu);
  }

  v15 = sub_10003E438(3);
  if (v11 && v15)
  {
    v16 = v11;
    v17 = *(a1 + 32);
    v18 = *(a1 + 56);
    v19 = *(a1 + 40);
    AnalyticsSendEventLazy();
  }
}

id sub_10003EAF0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v10[0] = *(a1 + 32);
  v9[0] = @"BundleID";
  v9[1] = @"Action";
  v3 = [NSNumber numberWithUnsignedLongLong:v2];
  v10[1] = v3;
  v9[2] = @"Duration";
  v4 = [NSNumber numberWithDouble:*(a1 + 48) - *(a1 + 56)];
  v10[2] = v4;
  v9[3] = @"ConditionsPreventingSubmission";
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
  v10[3] = v5;
  v9[4] = @"OtherConditions";
  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 72)];
  v10[4] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

void sub_10003EC3C(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003ECC8;
  v8[3] = &unk_100114D18;
  v9 = a1;
  v8[4] = a6;
  v8[5] = a4;
  v8[6] = a5;
  *&v8[7] = a8;
  *&v8[8] = a7;
  sub_10003E1B8(a1, a2, a3, 4, 0, 0, 0, 0, a7, a8, v8);
}

void sub_10003ECC8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a4;
  if (os_signpost_enabled(v11))
  {
    v13 = *(a1 + 72);
    v14 = *(a1 + 40);
    v15 = *(a1 + 32) / 0xF4240uLL;
    v16 = *(a1 + 48);
    *buf = 138544898;
    v23 = v12;
    v24 = 2050;
    v25 = a5;
    v26 = 2050;
    v27 = a3;
    v28 = 1026;
    v29 = v13;
    v30 = 2050;
    v31 = v15;
    v32 = 2050;
    v33 = v14;
    v34 = 2050;
    v35 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DiskWritesResource", "BundleIdOverride=%{public, signpost.description:attribute}@ %{public, signpost.description:begin_time}llu cid=%{public,name=cid}llu pid=%{public,name=pid}u ioMB=%{public,name=ioMB}llu conditionsPreventingSubmission=%{public,name=conditionsPreventingSubmission}#llx otherConditions=%{public,name=otherConditions}#llx enableTelemetry=YES ", buf, 0x44u);
  }

  if (os_signpost_enabled(v11))
  {
    *buf = 134349056;
    v23 = a6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DiskWritesResource", "%{public, signpost.description:end_time}llu", buf, 0xCu);
  }

  v17 = sub_10003E438(4);
  if (v12 && v17)
  {
    v18 = v12;
    v19 = *(a1 + 56);
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    AnalyticsSendEventLazy();
  }
}

id sub_10003EEEC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v11[0] = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"%llu", v2, @"BundleID", @"CoalitionID"];
  v11[1] = v3;
  v10[2] = @"Duration";
  v4 = [NSNumber numberWithDouble:*(a1 + 48) - *(a1 + 56)];
  v11[2] = v4;
  v10[3] = @"Bytes";
  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 64)];
  v11[3] = v5;
  v10[4] = @"ConditionsPreventingSubmission";
  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 72)];
  v11[4] = v6;
  v10[5] = @"OtherConditions";
  v7 = [NSNumber numberWithUnsignedLongLong:*(a1 + 80)];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

void sub_10003F070(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003F100;
  v7[3] = &unk_100114C90;
  v8 = a1;
  v7[4] = a6;
  v7[5] = a7;
  v7[6] = a4;
  v7[7] = a5;
  sub_10003E1B8(a1, a2, a3, 5, 0, 0, 0, 0, 0.0, 0.0, v7);
}

void sub_10003F100(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (os_signpost_enabled(v7))
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *buf = 138544898;
    v19 = v8;
    v20 = 2050;
    v21 = a3;
    v22 = 1026;
    v23 = v9;
    v24 = 2050;
    v25 = v10;
    v26 = 2050;
    v27 = v11;
    v28 = 2050;
    v29 = v12;
    v30 = 2050;
    v31 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FileDescriptorExhaustion", "BundleIdOverride=%{public, signpost.description:attribute}@ cid=%{public,name=cid}llu pid=%{public,name=pid}u numFDs=%{public,name=numFDs}llu numFDsLimit=%{public,name=numFDsLimit}llu conditionsPreventingSubmission=%{public,name=conditionsPreventingSubmission}#llx otherConditions=%{public,name=otherConditions}#llx enableTelemetry=YES ", buf, 0x44u);
  }

  v14 = sub_10003E438(5);
  if (v8 && v14)
  {
    v15 = v8;
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    AnalyticsSendEventLazy();
  }
}

id sub_10003F294(void *a1)
{
  v2 = a1[5];
  v11[0] = a1[4];
  v3 = [NSString stringWithFormat:@"%llu", v2, @"BundleID", @"CoalitionID"];
  v11[1] = v3;
  v10[2] = @"NumFileDescriptors";
  v4 = [NSNumber numberWithUnsignedLongLong:a1[6]];
  v11[2] = v4;
  v10[3] = @"NumFileDescriptorsLimit";
  v5 = [NSNumber numberWithUnsignedLongLong:a1[7]];
  v11[3] = v5;
  v10[4] = @"ConditionsPreventingSubmission";
  v6 = [NSNumber numberWithUnsignedLongLong:a1[8]];
  v11[4] = v6;
  v10[5] = @"OtherConditions";
  v7 = [NSNumber numberWithUnsignedLongLong:a1[9]];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

void sub_10003F414(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003F4A4;
  v7[3] = &unk_100114C90;
  v8 = a1;
  v7[4] = a6;
  v7[5] = a7;
  v7[6] = a4;
  v7[7] = a5;
  sub_10003E1B8(a1, a2, a3, 6, 0, 0, 0, 0, 0.0, 0.0, v7);
}

void sub_10003F4A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (os_signpost_enabled(v7))
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *buf = 138544898;
    v19 = v8;
    v20 = 2050;
    v21 = a3;
    v22 = 1026;
    v23 = v9;
    v24 = 2050;
    v25 = v10;
    v26 = 2050;
    v27 = v11;
    v28 = 2050;
    v29 = v12;
    v30 = 2050;
    v31 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PortExhaustion", "BundleIdOverride=%{public, signpost.description:attribute}@ cid=%{public,name=cid}llu pid=%{public,name=pid}u numPorts=%{public,name=numPorts}llu numPortsLimit=%{public,name=numPortsLimit}llu conditionsPreventingSubmission=%{public,name=conditionsPreventingSubmission}#llx otherConditions=%{public,name=otherConditions}#llx enableTelemetry=YES ", buf, 0x44u);
  }

  v14 = sub_10003E438(6);
  if (v8 && v14)
  {
    v15 = v8;
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    AnalyticsSendEventLazy();
  }
}

id sub_10003F638(void *a1)
{
  v2 = a1[5];
  v11[0] = a1[4];
  v3 = [NSString stringWithFormat:@"%llu", v2, @"BundleID", @"CoalitionID"];
  v11[1] = v3;
  v10[2] = @"NumPorts";
  v4 = [NSNumber numberWithUnsignedLongLong:a1[6]];
  v11[2] = v4;
  v10[3] = @"NumPortsLimit";
  v5 = [NSNumber numberWithUnsignedLongLong:a1[7]];
  v11[3] = v5;
  v10[4] = @"ConditionsPreventingSubmission";
  v6 = [NSNumber numberWithUnsignedLongLong:a1[8]];
  v11[4] = v6;
  v10[5] = @"OtherConditions";
  v7 = [NSNumber numberWithUnsignedLongLong:a1[9]];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

void sub_10003F7B8(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003F848;
  v7[3] = &unk_100114C90;
  v8 = a1;
  v7[4] = a6;
  v7[5] = a7;
  v7[6] = a4;
  v7[7] = a5;
  sub_10003E1B8(a1, a2, a3, 7, 0, 0, 0, 0, 0.0, 0.0, v7);
}

void sub_10003F848(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (os_signpost_enabled(v7))
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *buf = 138544898;
    v19 = v8;
    v20 = 2050;
    v21 = a3;
    v22 = 1026;
    v23 = v9;
    v24 = 2050;
    v25 = v10;
    v26 = 2050;
    v27 = v11;
    v28 = 2050;
    v29 = v12;
    v30 = 2050;
    v31 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "KQWorkLoopExhaustion", "BundleIdOverride=%{public, signpost.description:attribute}@ cid=%{public,name=cid}llu pid=%{public,name=pid}u numKQWorkLoops=%{public,name=numKQWorkLoops}llu numKQWorkLoopsLimit=%{public,name=numKQWorkLoopsLimit}llu conditionsPreventingSubmission=%{public,name=conditionsPreventingSubmission}#llx otherConditions=%{public,name=otherConditions}#llx enableTelemetry=YES ", buf, 0x44u);
  }

  v14 = sub_10003E438(7);
  if (v8 && v14)
  {
    v15 = v8;
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    AnalyticsSendEventLazy();
  }
}

id sub_10003F9DC(void *a1)
{
  v2 = a1[5];
  v11[0] = a1[4];
  v3 = [NSString stringWithFormat:@"%llu", v2, @"BundleID", @"CoalitionID"];
  v11[1] = v3;
  v10[2] = @"NumKQWorkLoops";
  v4 = [NSNumber numberWithUnsignedLongLong:a1[6]];
  v11[2] = v4;
  v10[3] = @"NumKQWorkLoopsLimit";
  v5 = [NSNumber numberWithUnsignedLongLong:a1[7]];
  v11[3] = v5;
  v10[4] = @"ConditionsPreventingSubmission";
  v6 = [NSNumber numberWithUnsignedLongLong:a1[8]];
  v11[4] = v6;
  v10[5] = @"OtherConditions";
  v7 = [NSNumber numberWithUnsignedLongLong:a1[9]];
  v11[5] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:6];

  return v8;
}

void sub_10003FB5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
    v4 = [[NSURL alloc] initFileURLWithPath:v3 isDirectory:0];

    if (v4 && (v5 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle()) != 0)
    {
      v6 = v5;
      v171 = CFBundleGetIdentifier(v5);
      CFRelease(v6);
    }

    else
    {
      v171 = 0;
    }

    v7 = v171;
  }

  else
  {
    v7 = 0;
  }

  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v172 = v7;
  if (v10)
  {
    v11 = *(a1 + 88);
    if (v11 && *(a1 + 96))
    {
      v12 = [*(a1 + 40) machContTime];
      v13 = v12 - [*(a1 + 40) machAbsTime];
      v14 = *(a1 + 88) + v13;
      v15 = *(a1 + 96) + v13;
    }

    else
    {
      v16 = *(a1 + 104);
      if (v16 == 0.0 || *(a1 + 112) == 0.0)
      {
        if (v9 | v11 | v8 || (v16 == 0.0 ? (v19 = *(a1 + 96) == 0) : (v19 = 0), !v19 || *(a1 + 112) != 0.0))
        {
          v22 = [*(a1 + 32) lastPathComponent];

          v27 = *(a1 + 128);
          if (!v22)
          {
            if (v27 < 0)
            {
              if (byte_100127EC8)
              {
                v77 = *__error();
                v78 = sub_10003E080();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                {
                  v79 = *(a1 + 72);
                  v80 = *(a1 + 80);
                  v81 = *(a1 + 88);
                  v82 = *(a1 + 96);
                  v83 = *(a1 + 104);
                  v84 = *(a1 + 112);
                  *buf = 136316674;
                  v174 = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                  v175 = 2048;
                  *v176 = v79;
                  *&v176[8] = 2048;
                  *&v176[10] = v80;
                  *&v176[18] = 2048;
                  *&v176[20] = v81;
                  *&v176[28] = 2048;
                  *&v176[30] = v82;
                  *&v176[38] = 2048;
                  *&v176[40] = v83;
                  *&v176[48] = 2048;
                  *&v176[50] = v84;
                  _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "%s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x48u);
                }

                *__error() = v77;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v85 = *__error();
                v86 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
                if (v86)
                {
                  v126 = v86;
                  CStringPtr = CFStringGetCStringPtr(v86, 0x8000100u);
                  if (CStringPtr)
                  {
                    v128 = CStringPtr;
                    v129 = 0;
                  }

                  else
                  {
                    v128 = malloc_type_calloc(0x400uLL, 1uLL, 0x552AAE8DuLL);
                    CFStringGetCString(v126, v128, 1024, 0x8000100u);
                    v129 = v128;
                  }

                  if (qword_100127ED0)
                  {
                    v147 = qword_100127ED0;
                  }

                  else
                  {
                    v147 = __stderrp;
                  }

                  fprintf(v147, "%s\n", v128);
                  if (v129)
                  {
                    free(v129);
                  }

                  CFRelease(v126);
                }

                else
                {
                  v87 = sub_10003E080();
                  if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
                  {
                    v88 = *(a1 + 72);
                    v89 = *(a1 + 80);
                    v90 = *(a1 + 88);
                    v91 = *(a1 + 96);
                    v92 = *(a1 + 104);
                    v93 = *(a1 + 112);
                    *buf = 136316674;
                    v174 = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                    v175 = 2048;
                    *v176 = v88;
                    *&v176[8] = 2048;
                    *&v176[10] = v89;
                    *&v176[18] = 2048;
                    *&v176[20] = v90;
                    *&v176[28] = 2048;
                    *&v176[30] = v91;
                    *&v176[38] = 2048;
                    *&v176[40] = v92;
                    *&v176[48] = 2048;
                    *&v176[50] = v93;
                    _os_log_fault_impl(&_mh_execute_header, v87, OS_LOG_TYPE_FAULT, "Unable to format: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x48u);
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

                *__error() = v85;
              }

              v160 = *(a1 + 104);
              v164 = *(a1 + 112);
              v155 = *(a1 + 88);
              v156 = *(a1 + 96);
              v151 = *(a1 + 72);
              sub_10003DF54("_SPEventRateReportEvent_block_invoke", "SPEventRate.m", 330, "%s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", v23, v24, v25, v26, "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0");
            }

            else
            {
              if (byte_100127EC8)
              {
                v28 = *__error();
                v29 = sub_10003E080();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v30 = sub_10003E020(*(a1 + 128));
                  v31 = *(a1 + 128);
                  v32 = *(a1 + 72);
                  v33 = *(a1 + 80);
                  v34 = *(a1 + 88);
                  v35 = *(a1 + 96);
                  v36 = *(a1 + 104);
                  v37 = *(a1 + 112);
                  *buf = 136317186;
                  v174 = v30;
                  v175 = 1024;
                  *v176 = v31;
                  *&v176[4] = 2080;
                  *&v176[6] = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                  *&v176[14] = 2048;
                  *&v176[16] = v32;
                  *&v176[24] = 2048;
                  *&v176[26] = v33;
                  *&v176[34] = 2048;
                  *&v176[36] = v34;
                  *&v176[44] = 2048;
                  *&v176[46] = v35;
                  *&v176[54] = 2048;
                  *&v176[56] = v36;
                  *&v176[64] = 2048;
                  *&v176[66] = v37;
                  _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x58u);
                }

                *__error() = v28;
              }

              if (byte_100127EC9 == 1 && dword_100127558 <= 3)
              {
                v38 = *__error();
                v39 = sub_10003E020(*(a1 + 128));
                v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", v39, *(a1 + 128), "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
                if (v40)
                {
                  v119 = v40;
                  v120 = CFStringGetCStringPtr(v40, 0x8000100u);
                  if (v120)
                  {
                    v121 = v120;
                    v122 = 0;
                  }

                  else
                  {
                    v121 = malloc_type_calloc(0x400uLL, 1uLL, 0x552AAE8DuLL);
                    CFStringGetCString(v119, v121, 1024, 0x8000100u);
                    v122 = v121;
                  }

                  if (qword_100127ED0)
                  {
                    v133 = qword_100127ED0;
                  }

                  else
                  {
                    v133 = __stderrp;
                  }

                  fprintf(v133, "%s\n", v121);
                  if (v122)
                  {
                    free(v122);
                  }

                  CFRelease(v119);
                }

                else
                {
                  v41 = sub_10003E080();
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
                  {
                    v42 = sub_10003E020(*(a1 + 128));
                    v43 = *(a1 + 128);
                    v44 = *(a1 + 72);
                    v45 = *(a1 + 80);
                    v46 = *(a1 + 88);
                    v47 = *(a1 + 96);
                    v48 = *(a1 + 104);
                    v49 = *(a1 + 112);
                    *buf = 136317186;
                    v174 = v42;
                    v175 = 1024;
                    *v176 = v43;
                    *&v176[4] = 2080;
                    *&v176[6] = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                    *&v176[14] = 2048;
                    *&v176[16] = v44;
                    *&v176[24] = 2048;
                    *&v176[26] = v45;
                    *&v176[34] = 2048;
                    *&v176[36] = v46;
                    *&v176[44] = 2048;
                    *&v176[46] = v47;
                    *&v176[54] = 2048;
                    *&v176[56] = v48;
                    *&v176[64] = 2048;
                    *&v176[66] = v49;
                    _os_log_fault_impl(&_mh_execute_header, v41, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x58u);
                  }

                  if (qword_100127ED0)
                  {
                    v50 = qword_100127ED0;
                  }

                  else
                  {
                    v50 = __stderrp;
                  }

                  fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v50);
                }

                *__error() = v38;
              }

              v134 = sub_10003E020(*(a1 + 128));
              v166 = *(a1 + 104);
              v169 = *(a1 + 112);
              v158 = *(a1 + 88);
              v162 = *(a1 + 96);
              v153 = *(a1 + 72);
              v149 = *(a1 + 128);
              sub_10003DF54("_SPEventRateReportEvent_block_invoke", "SPEventRate.m", 330, "%s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", v135, v136, v137, v138, v134);
            }

            abort();
          }

          if (v27 < 0)
          {
            if (byte_100127EC8)
            {
              v95 = *__error();
              v96 = sub_10003E080();
              if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
              {
                v97 = [*(a1 + 32) lastPathComponent];
                v98 = CFStringGetCStringPtr(v97, 0x8000100u);
                v99 = *(a1 + 72);
                v100 = *(a1 + 80);
                v101 = *(a1 + 88);
                v102 = *(a1 + 96);
                v103 = *(a1 + 104);
                v104 = *(a1 + 112);
                *buf = 136316930;
                v174 = v98;
                v175 = 2080;
                *v176 = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                *&v176[8] = 2048;
                *&v176[10] = v99;
                *&v176[18] = 2048;
                *&v176[20] = v100;
                *&v176[28] = 2048;
                *&v176[30] = v101;
                *&v176[38] = 2048;
                *&v176[40] = v102;
                *&v176[48] = 2048;
                *&v176[50] = v103;
                *&v176[58] = 2048;
                *&v176[60] = v104;
                _os_log_error_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "%s: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x52u);
              }

              *__error() = v95;
            }

            if (byte_100127EC9 == 1 && dword_100127558 <= 3)
            {
              v105 = *__error();
              v106 = [*(a1 + 32) lastPathComponent];
              v107 = CFStringGetCStringPtr(v106, 0x8000100u);
              v108 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", v107, "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));

              if (v108)
              {
                v130 = CFStringGetCStringPtr(v108, 0x8000100u);
                if (v130)
                {
                  v131 = v130;
                  v132 = 0;
                }

                else
                {
                  v131 = malloc_type_calloc(0x400uLL, 1uLL, 0x552AAE8DuLL);
                  CFStringGetCString(v108, v131, 1024, 0x8000100u);
                  v132 = v131;
                }

                if (qword_100127ED0)
                {
                  v148 = qword_100127ED0;
                }

                else
                {
                  v148 = __stderrp;
                }

                fprintf(v148, "%s\n", v131);
                if (v132)
                {
                  free(v132);
                }

                CFRelease(v108);
              }

              else
              {
                v109 = sub_10003E080();
                if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
                {
                  v110 = [*(a1 + 32) lastPathComponent];
                  v111 = CFStringGetCStringPtr(v110, 0x8000100u);
                  v112 = *(a1 + 72);
                  v113 = *(a1 + 80);
                  v114 = *(a1 + 88);
                  v115 = *(a1 + 96);
                  v116 = *(a1 + 104);
                  v117 = *(a1 + 112);
                  *buf = 136316930;
                  v174 = v111;
                  v175 = 2080;
                  *v176 = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                  *&v176[8] = 2048;
                  *&v176[10] = v112;
                  *&v176[18] = 2048;
                  *&v176[20] = v113;
                  *&v176[28] = 2048;
                  *&v176[30] = v114;
                  *&v176[38] = 2048;
                  *&v176[40] = v115;
                  *&v176[48] = 2048;
                  *&v176[50] = v116;
                  *&v176[58] = 2048;
                  *&v176[60] = v117;
                  _os_log_fault_impl(&_mh_execute_header, v109, OS_LOG_TYPE_FAULT, "Unable to format: %s: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x52u);
                }

                if (qword_100127ED0)
                {
                  v118 = qword_100127ED0;
                }

                else
                {
                  v118 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v118);
              }

              *__error() = v105;
            }

            v140 = [*(a1 + 32) lastPathComponent];
            v141 = CFStringGetCStringPtr(v140, 0x8000100u);
            v165 = *(a1 + 104);
            v168 = *(a1 + 112);
            v157 = *(a1 + 88);
            v161 = *(a1 + 96);
            v146 = "%s: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f";
            v152 = *(a1 + 72);
          }

          else
          {
            if (byte_100127EC8)
            {
              v51 = *__error();
              v52 = sub_10003E080();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                v53 = [*(a1 + 32) lastPathComponent];
                v54 = CFStringGetCStringPtr(v53, 0x8000100u);
                v55 = *(a1 + 128);
                v56 = *(a1 + 72);
                v57 = *(a1 + 80);
                v58 = *(a1 + 88);
                v59 = *(a1 + 96);
                v60 = *(a1 + 104);
                v61 = *(a1 + 112);
                *buf = 136317186;
                v174 = v54;
                v175 = 1024;
                *v176 = v55;
                *&v176[4] = 2080;
                *&v176[6] = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                *&v176[14] = 2048;
                *&v176[16] = v56;
                *&v176[24] = 2048;
                *&v176[26] = v57;
                *&v176[34] = 2048;
                *&v176[36] = v58;
                *&v176[44] = 2048;
                *&v176[46] = v59;
                *&v176[54] = 2048;
                *&v176[56] = v60;
                *&v176[64] = 2048;
                *&v176[66] = v61;
                _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x58u);
              }

              *__error() = v51;
            }

            if (byte_100127EC9 == 1 && dword_100127558 <= 3)
            {
              v62 = *__error();
              v63 = [*(a1 + 32) lastPathComponent];
              v64 = CFStringGetCStringPtr(v63, 0x8000100u);
              v65 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", v64, *(a1 + 128), "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0", *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));

              if (v65)
              {
                v123 = CFStringGetCStringPtr(v65, 0x8000100u);
                if (v123)
                {
                  v124 = v123;
                  v125 = 0;
                }

                else
                {
                  v124 = malloc_type_calloc(0x400uLL, 1uLL, 0x552AAE8DuLL);
                  CFStringGetCString(v65, v124, 1024, 0x8000100u);
                  v125 = v124;
                }

                if (qword_100127ED0)
                {
                  v139 = qword_100127ED0;
                }

                else
                {
                  v139 = __stderrp;
                }

                fprintf(v139, "%s\n", v124);
                if (v125)
                {
                  free(v125);
                }

                CFRelease(v65);
              }

              else
              {
                v66 = sub_10003E080();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
                {
                  v67 = [*(a1 + 32) lastPathComponent];
                  v68 = CFStringGetCStringPtr(v67, 0x8000100u);
                  v69 = *(a1 + 128);
                  v70 = *(a1 + 72);
                  v71 = *(a1 + 80);
                  v72 = *(a1 + 88);
                  v73 = *(a1 + 96);
                  v74 = *(a1 + 104);
                  v75 = *(a1 + 112);
                  *buf = 136317186;
                  v174 = v68;
                  v175 = 1024;
                  *v176 = v69;
                  *&v176[4] = 2080;
                  *&v176[6] = "startTimeMachCont == 0 && endTimeMachCont == 0 && startTimeMachAbs == 0 && endTimeMachAbs == 0 && startTimeCF == 0 && endTimeCF == 0";
                  *&v176[14] = 2048;
                  *&v176[16] = v70;
                  *&v176[24] = 2048;
                  *&v176[26] = v71;
                  *&v176[34] = 2048;
                  *&v176[36] = v72;
                  *&v176[44] = 2048;
                  *&v176[46] = v73;
                  *&v176[54] = 2048;
                  *&v176[56] = v74;
                  *&v176[64] = 2048;
                  *&v176[66] = v75;
                  _os_log_fault_impl(&_mh_execute_header, v66, OS_LOG_TYPE_FAULT, "Unable to format: %s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f", buf, 0x58u);
                }

                if (qword_100127ED0)
                {
                  v76 = qword_100127ED0;
                }

                else
                {
                  v76 = __stderrp;
                }

                fwrite("UNABLE TO FORMAT STRING\n", 0x18uLL, 1uLL, v76);
              }

              *__error() = v62;
            }

            v140 = [*(a1 + 32) lastPathComponent];
            v141 = CFStringGetCStringPtr(v140, 0x8000100u);
            v167 = *(a1 + 104);
            v170 = *(a1 + 112);
            v159 = *(a1 + 88);
            v163 = *(a1 + 96);
            v154 = *(a1 + 72);
            v150 = *(a1 + 128);
            v146 = "%s [%d]: %s: No matching timestamps provided: %llu-%llu, %llu-%llu, %.2f-%.2f";
          }

          sub_10003DF54("_SPEventRateReportEvent_block_invoke", "SPEventRate.m", 330, v146, v142, v143, v144, v145, v141);

          abort();
        }
      }

      else
      {
        [*(a1 + 40) machContTime];
        [*(a1 + 40) wallTime];
        v17 = *(a1 + 104);
        SAMachTimeFromSecondsUsingLiveTimebase();
        [*(a1 + 40) machContTime];
        [*(a1 + 40) wallTime];
        v18 = *(a1 + 112);
        SAMachTimeFromSecondsUsingLiveTimebase();
      }
    }
  }

  v20 = *(a1 + 48);
  v21 = *(a1 + 120);
  (*(*(a1 + 64) + 16))();
}