void sub_1000C25E4(uint64_t a1, uint64_t a2)
{
  sub_100091028(a2, __stack_chk_guard);
  sub_100090FE8();
  sub_1000691D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void sub_1000C2694(uint64_t a1, uint64_t a2)
{
  sub_100091028(a2, __stack_chk_guard);
  sub_100090FE8();
  sub_1000691D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Eu);
}

void sub_1000C2710()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100069130();
  sub_10009100C();
  sub_10005BDB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_1000C27B8()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  v1 = *__error();
  v2 = __error();
  strerror(*v2);
  sub_100069130();
  sub_10009100C();
  sub_10005BD84();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x22u);
}

void sub_1000C2860()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C28D0()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C2954()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C29D8(char a1, NSObject *a2)
{
  v2 = "";
  if (a1)
  {
    v2 = "non-";
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unable to find existing %sWindowServer-based sampled process", &v3, 0xCu);
}

void sub_1000C2A68()
{
  sub_10004E6C8();
  sub_10005BE3C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000C2AD8(int a1)
{
  sub_10003E020(a1);
  sub_10004E6C8();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000C2B9C(int a1)
{
  sub_10003E020(a1);
  sub_10004E6C8();
  sub_10005BE6C();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1000C2C44()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C2CB4()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C2D38()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C2DF0()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C2EDC()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C2F60()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C304C()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C30D0()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C3154()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C31C4()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C3248()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C3334()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDA4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C33B8()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C343C()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C34AC()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BDB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C3530()
{
  sub_10004E7C0();
  sub_10003E020(v0);
  sub_10005BCF4();
  sub_10005BD84();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000C35B4(uint64_t a1, void *a2)
{
  v5 = sub_1000977DC(a1, a2);
  *v4 = 67109120;
  *v3 = v5;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "pid %d doesn't exist", v4, 8u);
}

void sub_1000C3610(uint64_t a1, void *a2)
{
  v5 = sub_1000977DC(a1, a2);
  *v4 = 67109120;
  *v3 = v5;
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Unable to format: pid %d doesn't exist", v4, 8u);
}

void sub_1000C366C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10005D690();
  sub_100060BBC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000C36E0(unsigned int *a1)
{
  v1 = *a1;
  sub_10005D690();
  sub_10005BE3C();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000C37F0(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100127EC8 == 1)
  {
    v9 = *__error();
    v10 = sub_10003E080();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *a1;
      *buf = 136315394;
      v29 = "_numClientsSampling == 0";
      v30 = 1024;
      v31 = v11;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Still have %d clients sampling when dealloc'ed", buf, 0x12u);
    }

    *__error() = v9;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v13 = *__error();
    v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: Still have %d clients sampling when dealloc'ed", "_numClientsSampling == 0", *a1);
    if (v14)
    {
      v20 = v14;
      v21 = sub_1000692C4(v14);
      if (v21)
      {
        v24 = v21;
        v25 = 0;
      }

      else
      {
        v22 = sub_1000977FC();
        v24 = malloc_type_calloc(v22, v23, 0x76F48353uLL);
        sub_100080AE4(v20, v24);
        v25 = v24;
      }

      if (qword_100127ED0)
      {
        v26 = qword_100127ED0;
      }

      else
      {
        v26 = __stderrp;
      }

      fprintf(v26, "%s\n", v24);
      if (v25)
      {
        free(v25);
      }

      CFRelease(v20);
    }

    else
    {
      v15 = sub_10003E080();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = *a1;
        *buf = 136315394;
        v29 = "_numClientsSampling == 0";
        v30 = 1024;
        v31 = v16;
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Unable to format: %s: Still have %d clients sampling when dealloc'ed", buf, 0x12u);
      }

      sub_100097808();
      sub_100069310("UNABLE TO FORMAT STRING\n", v17, v18, v19);
    }

    *__error() = v13;
  }

  v27 = *a1;
  sub_10003DF54("[SPStackshotProvider dealloc]", "SPSampleProvider.m", 480, "%s: Still have %d clients sampling when dealloc'ed", a5, a6, a7, a8, "_numClientsSampling == 0");
  abort();
}

void sub_1000C3AD8(uint64_t a1, _DWORD *a2, int a3)
{
  *a2 = 136315650;
  sub_1000977A8(a1, a2, a3);
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s: Unable to create sampling thread: %d (%s)", v3, 0x1Cu);
}

void sub_1000C3B2C(uint64_t a1, _DWORD *a2, int a3)
{
  *a2 = 136315650;
  sub_1000977A8(a1, a2, a3);
  _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Unable to format: %s: Unable to create sampling thread: %d (%s)", v3, 0x1Cu);
}

int *sub_1000C3B80()
{
  v1 = *__error();
  v2 = sub_10003E080();
  if (sub_1000693B0(v2))
  {
    v22[0] = 0;
    sub_100097774(&_mh_execute_header, v3, v4, "failed to set the sampling thread to a fixed-priority policy", v22);
  }

  result = __error();
  *result = v1;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"failed to set the sampling thread to a fixed-priority policy");
    if (v8)
    {
      v9 = v8;
      if (sub_1000692C4(v8))
      {
        v10 = 0;
      }

      else
      {
        v17 = sub_1000977FC();
        v19 = malloc_type_calloc(v17, v18, 0xA71AFBB0uLL);
        sub_10004E764(v19);
        v10 = v1;
      }

      v20 = sub_100080B60(qword_100127ED0);
      fprintf(v20, "%s\n", v21);
      if (v10)
      {
        free(v10);
      }

      CFRelease(v9);
    }

    else
    {
      v11 = sub_10003E080();
      if (sub_1000693B0(v11))
      {
        v23[0] = 0;
        sub_100097774(&_mh_execute_header, v12, v13, "Unable to format: failed to set the sampling thread to a fixed-priority policy", v23);
      }

      sub_100097808();
      sub_100069310("UNABLE TO FORMAT STRING\n", v14, v15, v16);
    }

    result = __error();
    *result = v7;
  }

  return result;
}

int *sub_1000C3D10()
{
  v1 = *__error();
  v2 = sub_10003E080();
  if (sub_1000693B0(v2))
  {
    v22[0] = 0;
    sub_100097774(&_mh_execute_header, v3, v4, "failed to set sampling thread's priority", v22);
  }

  result = __error();
  *result = v1;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v7 = *__error();
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"failed to set sampling thread's priority");
    if (v8)
    {
      v9 = v8;
      if (sub_1000692C4(v8))
      {
        v10 = 0;
      }

      else
      {
        v17 = sub_1000977FC();
        v19 = malloc_type_calloc(v17, v18, 0x6D1B51D4uLL);
        sub_10004E764(v19);
        v10 = v1;
      }

      v20 = sub_100080B60(qword_100127ED0);
      fprintf(v20, "%s\n", v21);
      if (v10)
      {
        free(v10);
      }

      CFRelease(v9);
    }

    else
    {
      v11 = sub_10003E080();
      if (sub_1000693B0(v11))
      {
        v23[0] = 0;
        sub_100097774(&_mh_execute_header, v12, v13, "Unable to format: failed to set sampling thread's priority", v23);
      }

      sub_100097808();
      sub_100069310("UNABLE TO FORMAT STRING\n", v14, v15, v16);
    }

    result = __error();
    *result = v7;
  }

  return result;
}

void sub_1000C3F30(_DWORD *a1, uint64_t a2)
{
  *a1 = 136315394;
  sub_1000977C8(a1, a2, "stackshotData.length < 4294967295U");
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: bad stackshot data length %lu", v3, 0x16u);
}

void sub_1000C3F80(_DWORD *a1, uint64_t a2)
{
  *a1 = 136315394;
  sub_1000977C8(a1, a2, "stackshotData.length < 4294967295U");
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Unable to format: %s: bad stackshot data length %lu", v3, 0x16u);
}

void sub_1000C4178()
{
  v1 = *__error();
  v2 = sub_10003E080();
  if (sub_1000693B0(v2))
  {
    v22[0] = 0;
    sub_100097774(&_mh_execute_header, v3, v4, "shared instance has 0 references", v22);
  }

  *__error() = v1;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v6 = *__error();
    v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"shared instance has 0 references");
    if (v7)
    {
      v8 = v7;
      if (sub_1000692C4(v7))
      {
        v9 = 0;
      }

      else
      {
        v16 = sub_1000977FC();
        v18 = malloc_type_calloc(v16, v17, 0xC44C137AuLL);
        sub_10004E764(v18);
        v9 = v1;
      }

      v19 = sub_100080B60(qword_100127ED0);
      fprintf(v19, "%s\n", v21);
      if (v9)
      {
        free(v9);
      }

      CFRelease(v8);
    }

    else
    {
      v10 = sub_10003E080();
      if (sub_1000693B0(v10))
      {
        v23[0] = 0;
        sub_100097774(&_mh_execute_header, v11, v12, "Unable to format: shared instance has 0 references", v23);
      }

      sub_100097808();
      sub_100069310("UNABLE TO FORMAT STRING\n", v13, v14, v15);
    }

    *__error() = v6;
  }

  v20 = qword_100127E98;
  qword_100127E98 = 0;
}

void sub_1000C4380(void *a1, char a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a2 & 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No one's sampling when requested to adjust sampling target to %{public}@ %d", buf, 0x12u);
}

void sub_1000C43EC(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unable to format: No one's sampling when requested to adjust sampling target to %@ %d", buf, 0x12u);
}

void sub_1000C4454()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C44C4(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 68);
  sub_10005D690();
  v7 = 1024;
  v8 = v4;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Already sampling with %uus-interval stackshots and %us-interval occasional data", v6, 0xEu);
}

void sub_1000C4550(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_10005D690();
  v7 = 1024;
  v8 = v4;
  _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Unable to format: Already sampling with %uus-interval stackshots and %us-interval occasional data", v6, 0xEu);
}

void sub_1000C45DC(unsigned int *a1)
{
  v1 = *a1;
  sub_10005D690();
  sub_10005BE3C();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1000C46B8()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t sub_1000C4728(int *a1)
{
  v2 = *__error();
  v3 = sub_10003E080();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v21 = 0;
    sub_100097790(&_mh_execute_header, v3, v4, "shared instance isn't self", v21);
  }

  *__error() = v2;
  if (byte_100127EC9 != 1 || dword_100127558 > 4)
  {
    return 1;
  }

  v7 = *__error();
  v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"shared instance isn't self");
  if (v8)
  {
    v9 = v8;
    v10 = sub_1000692C4(v8);
    if (v10)
    {
      v11 = v10;
      v12 = 0;
    }

    else
    {
      v18 = sub_1000977FC();
      v11 = malloc_type_calloc(v18, v19, 0x71A30AC7uLL);
      sub_100080AE4(v9, v11);
      v12 = v11;
    }

    if (qword_100127ED0)
    {
      v20 = qword_100127ED0;
    }

    else
    {
      v20 = __stderrp;
    }

    fprintf(v20, "%s\n", v11);
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
      *v22 = 0;
      sub_100097790(&_mh_execute_header, v13, v14, "Unable to format: shared instance isn't self", v22);
    }

    sub_100097808();
    sub_100069310("UNABLE TO FORMAT STRING\n", v15, v16, v17);
  }

  result = 0;
  *a1 = v7;
  return result;
}

int *sub_1000C49C8(uint64_t a1, uint64_t a2)
{
  v4 = *__error();
  v5 = sub_10003E080();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100080B34();
    sub_100080B90(&_mh_execute_header, v21, v22, "filePath %s cut off with date (needed %zu chars)", v23, v24, v25, v26, v33, v34, v35);
  }

  result = __error();
  *result = v4;
  if (byte_100127EC9 == 1 && dword_100127558 <= 4)
  {
    v8 = *__error();
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"filePath %s cut off with date (needed %zu chars)");
    if (v9)
    {
      v10 = v9;
      v11 = sub_1000692C4(v9);
      if (v11)
      {
        v12 = v11;
        v13 = 0;
      }

      else
      {
        v18 = sub_1000977FC();
        v12 = malloc_type_calloc(v18, v19, 0x67BC2E96uLL);
        sub_100080AE4(v10, v12);
        v13 = v12;
      }

      if (qword_100127ED0)
      {
        v20 = qword_100127ED0;
      }

      else
      {
        v20 = __stderrp;
      }

      fprintf(v20, "%s\n", v12);
      if (v13)
      {
        free(v13);
      }

      CFRelease(v10);
    }

    else
    {
      v14 = sub_10003E080();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_100080B34();
        sub_100080B90(&_mh_execute_header, v27, v28, "Unable to format: filePath %s cut off with date (needed %zu chars)", v29, v30, v31, v32, a1, a2, v35);
      }

      sub_100097808();
      sub_100069310("UNABLE TO FORMAT STRING\n", v15, v16, v17);
    }

    result = __error();
    *result = v8;
  }

  return result;
}

void sub_1000C4C34(uint64_t a1, NSObject *a2)
{
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100069034();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to open %s to save stackshots: %d (%s)", v5, 0x1Cu);
}

void sub_1000C4CD8(uint64_t a1, NSObject *a2)
{
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  sub_100069034();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to format: Unable to open %s to save stackshots: %d (%s)", v5, 0x1Cu);
}

void sub_1000C4DE4()
{
  sub_10005BE48();
  sub_100060BBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000C4E54()
{
  sub_100069174();
  sub_1000817E0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void sub_1000C4EC8()
{
  sub_100069174();
  sub_1000817E0();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

void sub_1000C5068()
{
  sub_100069174();
  sub_1000817E0();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void sub_1000C50DC()
{
  sub_100069174();
  sub_1000817E0();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

id sub_1000C5238()
{
  sub_1000A59A4();
  v6 = v5;
  v7 = v0;
  v8 = v1;
  if (v2)
  {
    v9 = v2[6];
    if (v9)
    {
      v20 = v2;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            if (sub_1000C5408())
            {
              v18 = v15;

              goto LABEL_15;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v2 = v20;
    }

    else
    {
      v16 = objc_alloc_init(NSMutableArray);
      v17 = v2[6];
      v2[6] = v16;
    }

    v18 = sub_100098474(SPTreeNode, v2, v4, v6, v3, v7, v8);
    [v2[6] addObject:v18];
  }

  else
  {
    v18 = 0;
  }

LABEL_15:

  return v18;
}

uint64_t sub_1000C5408()
{
  sub_1000A59A4();
  v6 = v5;
  v7 = v0;
  v8 = v1;
  if (v2)
    v2 = *(v2 + 8) == v4 && *(v2 + 32) == v3 && sub_100098588(*(v2 + 40), v7) && sub_100098588(*(v2 + 24), v8) && (*(v2 + 32) == -1 || ([*(v2 + 16) firstObject], v9 = {;
  }

  return v2;
}

id *sub_1000C54F0(id *a1, void *a2, char a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v17 = a2;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (a1)
  {
    v32.receiver = a1;
    v32.super_class = SPLoadInfo;
    v22 = objc_msgSendSuper2(&v32, "init");
    a1 = v22;
    if (v22)
    {
      objc_storeStrong(v22 + 5, a2);
      *(a1 + 32) = a3;
      a1[7] = a4;
      a1[8] = a5;
      v23 = [v18 copy];
      v24 = a1[1];
      a1[1] = v23;

      v25 = [v19 copy];
      v26 = a1[2];
      a1[2] = v25;

      v27 = [v20 copy];
      v28 = a1[3];
      a1[3] = v27;

      v29 = [v21 copy];
      v30 = a1[6];
      a1[6] = v29;
    }
  }

  return a1;
}

id *sub_1000C5624(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[5] bundleIdentifier];
    v3 = v2;
    if (!v2)
    {
      v3 = v1[1];
    }

    v1 = v3;
  }

  return v1;
}

id *sub_1000C5684(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[5] name];
    v3 = v2;
    if (!v2)
    {
      v3 = v1[2];
    }

    v1 = v3;
  }

  return v1;
}

id sub_1000C56E4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = v2;
      goto LABEL_17;
    }

    v4 = [*(a1 + 40) bundleVersion];
    v5 = [*(a1 + 40) bundleShortVersion];
    v6 = [*(a1 + 40) binaryVersion];
    v7 = v6;
    if (!v5 && !v4 && !v6)
    {
      v3 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v8 = +[NSMutableString string];
    v3 = v8;
    if (v5)
    {
      [v8 appendString:v5];
      if (!(v4 | v7))
      {
        goto LABEL_16;
      }

      [v3 appendString:@" "];
    }

    if (v4 | v7)
    {
      if (v4)
      {
        v9 = v4;
      }

      else
      {
        v9 = v7;
      }

      [v3 appendFormat:@"(%@)", v9];
    }

    goto LABEL_16;
  }

  v3 = 0;
LABEL_17:

  return v3;
}

int64_t sub_1000C5800(id a1, SPTreeNode *a2, SPTreeNode *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    count = v4->_count;
    if (v5)
    {
LABEL_3:
      v7 = v5->_count;
      goto LABEL_4;
    }
  }

  else
  {
    count = 0;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_4:
  if (count < v7)
  {
    v8 = 1;
    goto LABEL_12;
  }

  if (v4)
  {
    v9 = v4->_count;
    if (v5)
    {
LABEL_8:
      v10 = v5->_count;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_9:
  if (v9 <= v10)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

LABEL_12:

  return v8;
}

uint64_t sub_1000C5890(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 56);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  v4 = v3 > v2;
  if (v3 >= v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void sub_1000C58B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v9 = *__error();
    v10 = sub_10003E080();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "bodies || angleBracketContents || stateInfo";
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: No frame bodies, state, nor angle bracket contents", buf, 0xCu);
    }

    *__error() = v9;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v12 = *__error();
    v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: No frame bodies, state, nor angle bracket contents", "bodies || angleBracketContents || stateInfo");
    if (v13)
    {
      v18 = v13;
      v19 = sub_1000692C4(v13);
      if (v19)
      {
        v8 = v19;
        v21 = 0;
      }

      else
      {
        v20 = malloc_type_calloc(0x400uLL, 1uLL, 0x9EF20C4EuLL);
        sub_10004E764(v20);
        v21 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v22 = qword_100127ED0;
      }

      else
      {
        v22 = __stderrp;
      }

      fprintf(v22, "%s\n", v8);
      if (v21)
      {
        free(v21);
      }

      CFRelease(v18);
    }

    else
    {
      v14 = sub_10003E080();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v24 = "bodies || angleBracketContents || stateInfo";
        _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Unable to format: %s: No frame bodies, state, nor angle bracket contents", buf, 0xCu);
      }

      if (qword_100127ED0)
      {
        v17 = qword_100127ED0;
      }

      else
      {
        v17 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v15, v16, v17);
    }

    *__error() = v12;
  }

  sub_10003DF54("+[SPTreeNode nodeWithParent:isKernel:bodies:address:stateInfo:angleBracketContents:]", "SPTextualReportParser.m", 70, "%s: No frame bodies, state, nor angle bracket contents", a5, a6, a7, a8, "bodies || angleBracketContents || stateInfo");
  abort();
}

void sub_1000C5AC0(void *a1, void *a2)
{
  if (byte_100127EC8 == 1)
  {
    v5 = *__error();
    v6 = sub_10003E080();
    if (sub_1000A5974(v6))
    {
      v7 = [a1 debugDescription];
      v8 = [v7 UTF8String];
      v9 = [a2 debugDescription];
      *buf = 136315650;
      v38 = "!(bodies && angleBracketContents)";
      v39 = 2080;
      v40 = v8;
      v41 = 2080;
      v42 = [v9 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: bodies (%s) and angle bracket contents (%s)", buf, 0x20u);
    }

    *__error() = v5;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v11 = *__error();
    v12 = [a1 debugDescription];
    v13 = [v12 UTF8String];
    v14 = [a2 debugDescription];
    v36 = [v14 UTF8String];
    v35 = "!(bodies && angleBracketContents)";
    v16 = sub_1000A598C(v36, v15, @"%s: bodies (%s) and angle bracket contents (%s)");

    if (v16)
    {
      v25 = sub_1000692C4(v16);
      if (v25)
      {
        v12 = v25;
        v27 = 0;
      }

      else
      {
        v26 = malloc_type_calloc(0x400uLL, 1uLL, 0xB491877uLL);
        sub_1000A57F4(v26);
        v27 = v12;
      }

      if (qword_100127ED0)
      {
        v28 = qword_100127ED0;
      }

      else
      {
        v28 = __stderrp;
      }

      fprintf(v28, "%s\n", v12);
      if (v27)
      {
        free(v27);
      }

      CFRelease(v16);
    }

    else
    {
      v17 = sub_10003E080();
      if (sub_1000A595C(v17))
      {
        v18 = [a1 debugDescription];
        v19 = [v18 UTF8String];
        v20 = [a2 debugDescription];
        v21 = [v20 UTF8String];
        *buf = 136315650;
        v38 = "!(bodies && angleBracketContents)";
        v39 = 2080;
        v40 = v19;
        v41 = 2080;
        v42 = v21;
        _os_log_fault_impl(&_mh_execute_header, 0, OS_LOG_TYPE_FAULT, "Unable to format: %s: bodies (%s) and angle bracket contents (%s)", buf, 0x20u);
      }

      if (qword_100127ED0)
      {
        v24 = qword_100127ED0;
      }

      else
      {
        v24 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v22, v23, v24);
    }

    *__error() = v11;
  }

  v29 = [a1 debugDescription];
  [v29 UTF8String];
  v30 = [a2 debugDescription];
  [v30 UTF8String];
  sub_10003DF54("+[SPTreeNode nodeWithParent:isKernel:bodies:address:stateInfo:angleBracketContents:]", "SPTextualReportParser.m", 69, "%s: bodies (%s) and angle bracket contents (%s)", v31, v32, v33, v34, "!(bodies && angleBracketContents)");

  abort();
}

void sub_1000C5DEC()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_1000691C4();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x1Cu);
}

void sub_1000C5E8C()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  sub_100069034();
  sub_1000691C4();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x1Cu);
}

void sub_1000C5FA0()
{
  sub_100075844();
  sub_1000692F8(v0, v1, v2, 1.5047e-36);
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Parsing spindump text requires a seekable file: %d (%s)", v3, 0x12u);
}

void sub_1000C5FE4()
{
  sub_100075844();
  sub_1000692F8(v0, v1, v2, 1.5047e-36);
  _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text requires a seekable file: %d (%s)", v3, 0x12u);
}

void sub_1000C61C8()
{
  sub_100075844();
  *v0 = 136315650;
  sub_1000977A8(v1, v0, v2);
  sub_1000A58F0(&_mh_execute_header, "%s: frame match with no count and whitespace (%d: %s)", v3, v4);
}

void sub_1000C620C()
{
  sub_100075844();
  *v0 = 136315650;
  sub_1000977A8(v1, v0, v2);
  sub_1000A58D4(&_mh_execute_header, "Unable to format: %s: frame match with no count and whitespace (%d: %s)", v3, v4);
}

void sub_1000C6250()
{
  sub_100075844();
  *v0 = 136315650;
  sub_1000977A8(v1, v0, v2);
  sub_1000A58F0(&_mh_execute_header, "%s: frame match with no count (%d: %s)", v3, v4);
}

void sub_1000C6294()
{
  sub_100075844();
  *v0 = 136315650;
  sub_1000977A8(v1, v0, v2);
  sub_1000A58D4(&_mh_execute_header, "Unable to format: %s: frame match with no count (%d: %s)", v3, v4);
}

void sub_1000C62D8()
{
  sub_100075844();
  *v0 = 136315650;
  sub_1000977A8(v1, v0, v2);
  sub_1000A58F0(&_mh_execute_header, "%s: Non-frame line has count but no indent level (%d: %s)", v3, v4);
}

void sub_1000C631C()
{
  sub_100075844();
  *v0 = 136315650;
  sub_1000977A8(v1, v0, v2);
  sub_1000A58D4(&_mh_execute_header, "Unable to format: %s: Non-frame line has count but no indent level (%d: %s)", v3, v4);
}

void sub_1000C6360(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4)
{
  *a2 = 136315394;
  sub_1000A57E0(a1, a2, "heaviestNode.angleBracketContents || heaviestNode.stateInfo");
  sub_1000A5938();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000C63BC(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4)
{
  *a2 = 136315394;
  sub_1000A57E0(a1, a2, "heaviestNode.angleBracketContents || heaviestNode.stateInfo");
  sub_1000A592C();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000C6480(uint64_t a1, _DWORD *a2)
{
  *a2 = 136315394;
  sub_1000A57E0(a1, a2, "regex");
  sub_1000A5938();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000C64CC(uint64_t a1, _DWORD *a2)
{
  *a2 = 136315394;
  sub_1000A57E0(a1, a2, "regex");
  sub_1000A592C();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000C65E8(uint64_t a1)
{
  v3 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v4 = *__error();
    v5 = sub_10003E080();
    if (sub_1000A59D0(v5))
    {
      v6 = *(*(*a1 + 8) + 24);
      sub_1000A5944();
      sub_1000A58B4(&_mh_execute_header, v7, v8, "%s: bufSize overflow (%d)", v9, v10, v11, v12, v37, v38, v39);
    }

    *__error() = v4;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v14 = *__error();
    sub_1000A59BC();
    v16 = CFStringCreateWithFormat(v15, 0, @"%s: bufSize overflow (%d)");
    if (v16)
    {
      v28 = v16;
      v29 = sub_1000692C4(v16);
      if (v29)
      {
        v3 = v29;
        v31 = 0;
      }

      else
      {
        v30 = malloc_type_calloc(0x400uLL, 1uLL, 0x6F14803CuLL);
        sub_10006ADC4(v30);
        v31 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v32 = qword_100127ED0;
      }

      else
      {
        v32 = __stderrp;
      }

      fprintf(v32, "%s\n", v3);
      if (v31)
      {
        free(v31);
      }

      CFRelease(v28);
    }

    else
    {
      v17 = sub_10003E080();
      if (sub_10006AECC(v17))
      {
        v18 = *(*(*a1 + 8) + 24);
        sub_1000A5944();
        sub_100080BB0(&_mh_execute_header, v19, v20, "Unable to format: %s: bufSize overflow (%d)", v21, v22, v23, v24, v37, v38, v39);
      }

      if (qword_100127ED0)
      {
        v27 = qword_100127ED0;
      }

      else
      {
        v27 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v25, v26, v27);
    }

    *__error() = v14;
  }

  sub_1000A59BC();
  sub_10003DF54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]_block_invoke", "SPTextualReportParser.m", 251, "%s: bufSize overflow (%d)", v33, v34, v35, v36, v37);
  abort();
}

void sub_1000C67F8(uint64_t a1)
{
  v3 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v4 = *__error();
    v5 = sub_10003E080();
    if (sub_1000A59D0(v5))
    {
      v6 = *(*(*a1 + 8) + 24);
      sub_1000A5944();
      sub_1000A58B4(&_mh_execute_header, v7, v8, "%s: Unable to allocate %d buffer", v9, v10, v11, v12, v37, v38, v39);
    }

    *__error() = v4;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v14 = *__error();
    sub_1000A59BC();
    v16 = CFStringCreateWithFormat(v15, 0, @"%s: Unable to allocate %d buffer");
    if (v16)
    {
      v28 = v16;
      v29 = sub_1000692C4(v16);
      if (v29)
      {
        v3 = v29;
        v31 = 0;
      }

      else
      {
        v30 = malloc_type_calloc(0x400uLL, 1uLL, 0x29DCA47uLL);
        sub_10006ADC4(v30);
        v31 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v32 = qword_100127ED0;
      }

      else
      {
        v32 = __stderrp;
      }

      fprintf(v32, "%s\n", v3);
      if (v31)
      {
        free(v31);
      }

      CFRelease(v28);
    }

    else
    {
      v17 = sub_10003E080();
      if (sub_10006AECC(v17))
      {
        v18 = *(*(*a1 + 8) + 24);
        sub_1000A5944();
        sub_100080BB0(&_mh_execute_header, v19, v20, "Unable to format: %s: Unable to allocate %d buffer", v21, v22, v23, v24, v37, v38, v39);
      }

      if (qword_100127ED0)
      {
        v27 = qword_100127ED0;
      }

      else
      {
        v27 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v25, v26, v27);
    }

    *__error() = v14;
  }

  sub_1000A59BC();
  sub_10003DF54("[SPTextualReportParser parseSpindumpFile:andReportToStream:]_block_invoke", "SPTextualReportParser.m", 254, "%s: Unable to allocate %d buffer", v33, v34, v35, v36, v37);
  abort();
}

void sub_1000C6A08()
{
  sub_1000A581C();
  sub_1000A5938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000C6A7C()
{
  sub_1000A581C();
  sub_1000A592C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000C7138()
{
  if (byte_100127EC8 == 1)
  {
    v0 = *__error();
    v1 = sub_10003E080();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v2 = *__error();
      v3 = __error();
      strerror(*v3);
      sub_1000A59E8();
      _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s: ftello failed: %d (%s)", buf, 0x1Cu);
    }

    *__error() = v0;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v5 = *__error();
    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s: ftello failed: %d (%s)", "pos != -1", v6, v8);
    v10 = v9;
    if (v9)
    {
      v23 = sub_1000692C4(v9);
      if (!v23)
      {
        v24 = malloc_type_calloc(0x400uLL, 1uLL, 0x7EF3DC29uLL);
        sub_10004E764(v24);
      }

      if (qword_100127ED0)
      {
        v25 = qword_100127ED0;
      }

      else
      {
        v25 = __stderrp;
      }

      fprintf(v25, "%s\n", v23);
      CFRelease(v10);
    }

    else
    {
      v11 = sub_10003E080();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = *__error();
        v13 = __error();
        strerror(*v13);
        sub_1000A59E8();
        _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Unable to format: %s: ftello failed: %d (%s)", buf, 0x1Cu);
      }

      if (qword_100127ED0)
      {
        v16 = qword_100127ED0;
      }

      else
      {
        v16 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v14, v15, v16);
    }

    *__error() = v5;
  }

  v17 = *__error();
  v18 = __error();
  strerror(*v18);
  sub_10003DF54("LookaheadLines", "SPTextualReportParser.m", 936, "%s: ftello failed: %d (%s)", v19, v20, v21, v22, "pos != -1");
  abort();
}

void sub_1000C7A10()
{
  sub_1000A581C();
  sub_1000A5938();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000C7A84()
{
  sub_1000A581C();
  sub_1000A592C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000C7AF8()
{
  sub_1000A581C();
  sub_1000A592C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000C7B6C(uint64_t a1)
{
  v3 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v4 = *__error();
    v5 = sub_10003E080();
    if (sub_1000A59D0(v5))
    {
      v6 = *(*(*a1 + 8) + 24);
      sub_1000A5944();
      sub_1000A58B4(&_mh_execute_header, v7, v8, "%s: bufSize overflow (%d)", v9, v10, v11, v12, v37, v38, v39);
    }

    *__error() = v4;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v14 = *__error();
    sub_1000A59BC();
    v16 = CFStringCreateWithFormat(v15, 0, @"%s: bufSize overflow (%d)");
    if (v16)
    {
      v28 = v16;
      v29 = sub_1000692C4(v16);
      if (v29)
      {
        v3 = v29;
        v31 = 0;
      }

      else
      {
        v30 = malloc_type_calloc(0x400uLL, 1uLL, 0x97648203uLL);
        sub_10006ADC4(v30);
        v31 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v32 = qword_100127ED0;
      }

      else
      {
        v32 = __stderrp;
      }

      fprintf(v32, "%s\n", v3);
      if (v31)
      {
        free(v31);
      }

      CFRelease(v28);
    }

    else
    {
      v17 = sub_10003E080();
      if (sub_10006AECC(v17))
      {
        v18 = *(*(*a1 + 8) + 24);
        sub_1000A5944();
        sub_100080BB0(&_mh_execute_header, v19, v20, "Unable to format: %s: bufSize overflow (%d)", v21, v22, v23, v24, v37, v38, v39);
      }

      if (qword_100127ED0)
      {
        v27 = qword_100127ED0;
      }

      else
      {
        v27 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v25, v26, v27);
    }

    *__error() = v14;
  }

  sub_1000A59BC();
  sub_10003DF54("LookaheadLines_block_invoke", "SPTextualReportParser.m", 947, "%s: bufSize overflow (%d)", v33, v34, v35, v36, v37);
  abort();
}

void sub_1000C7D7C(uint64_t a1)
{
  v3 = &off_1000CE000;
  if (byte_100127EC8 == 1)
  {
    v4 = *__error();
    v5 = sub_10003E080();
    if (sub_1000A59D0(v5))
    {
      v6 = *(*(*a1 + 8) + 24);
      sub_1000A5944();
      sub_1000A58B4(&_mh_execute_header, v7, v8, "%s: Unable to allocate %d buffer", v9, v10, v11, v12, v37, v38, v39);
    }

    *__error() = v4;
  }

  if (byte_100127EC9 == 1 && dword_100127558 <= 3)
  {
    v14 = *__error();
    sub_1000A59BC();
    v16 = CFStringCreateWithFormat(v15, 0, @"%s: Unable to allocate %d buffer");
    if (v16)
    {
      v28 = v16;
      v29 = sub_1000692C4(v16);
      if (v29)
      {
        v3 = v29;
        v31 = 0;
      }

      else
      {
        v30 = malloc_type_calloc(0x400uLL, 1uLL, 0x126F64F7uLL);
        sub_10006ADC4(v30);
        v31 = &off_1000CE000;
      }

      if (qword_100127ED0)
      {
        v32 = qword_100127ED0;
      }

      else
      {
        v32 = __stderrp;
      }

      fprintf(v32, "%s\n", v3);
      if (v31)
      {
        free(v31);
      }

      CFRelease(v28);
    }

    else
    {
      v17 = sub_10003E080();
      if (sub_10006AECC(v17))
      {
        v18 = *(*(*a1 + 8) + 24);
        sub_1000A5944();
        sub_100080BB0(&_mh_execute_header, v19, v20, "Unable to format: %s: Unable to allocate %d buffer", v21, v22, v23, v24, v37, v38, v39);
      }

      if (qword_100127ED0)
      {
        v27 = qword_100127ED0;
      }

      else
      {
        v27 = __stderrp;
      }

      sub_100069310("UNABLE TO FORMAT STRING\n", v25, v26, v27);
    }

    *__error() = v14;
  }

  sub_1000A59BC();
  sub_10003DF54("LookaheadLines_block_invoke", "SPTextualReportParser.m", 950, "%s: Unable to allocate %d buffer", v33, v34, v35, v36, v37);
  abort();
}

void sub_1000C7F8C(void *a1, NSObject *a2)
{
  v4 = [a1 uuid];
  v5 = [a1 path];
  v6 = v5;
  if (!v5)
  {
    v6 = [a1 name];
  }

  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to format: Parsing spindump text: Unable to find symbol owner for %@ %@", &v7, 0x16u);
  if (!v5)
  {
  }
}

void sub_1000C8078(uint64_t a1, id *a2)
{
  v3 = [*a2 uuid];
  v4 = [*a2 name];
  sub_1000A590C();
  sub_1000691C4();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0x20u);
}

void sub_1000C8130(uint64_t a1, id *a2)
{
  v3 = [*a2 uuid];
  v4 = [*a2 name];
  sub_1000A590C();
  sub_1000691C4();
  _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x20u);
}