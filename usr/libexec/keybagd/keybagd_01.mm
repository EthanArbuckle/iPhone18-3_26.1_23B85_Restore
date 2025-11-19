void sub_100018D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 200), 8);
  _Block_object_dispose((v32 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_100018D78(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  dispatch_assert_queue_V2(qword_10003D2A8);
  if (byte_10003D3D4 == a1)
  {
    sub_100011BE0("SeshatPowerAssertion", @"not doing anything %d:%d", v10, v11, v12, v13, v14, v15, a1);
  }

  else if (a1)
  {
    if (IOPMAssertionDeclareSystemActivity())
    {
      sub_100011BE0("SeshatPowerAssertion", @"Unable to take power assertion.", v16, v17, v18, v19, v20, v21, v28);
    }

    else
    {
      byte_10003D3D4 = 1;
    }
  }

  else if (IOPMAssertionRelease(dword_10003D3D0))
  {

    sub_100011BE0("SeshatPowerAssertion", @"Unable to remove power assertion.", v22, v23, v24, v25, v26, v27, a9);
  }

  else
  {
    byte_10003D3D4 = 0;
  }
}

uint64_t sub_100018E70()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_1000190C0;
  v0 = qword_10003D3E8;
  v7 = sub_1000190D0;
  v8 = qword_10003D3E8;
  if (!qword_10003D3E8)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100019C4C;
    v2[3] = &unk_100034CD0;
    v2[4] = &v3;
    sub_100019C4C(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_100018F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_100018F5C(id *a1, char a2, char a3, uint64_t a4, CFTypeRef *a5, uint64_t a6)
{
  v6 = 0xFFFF0000000ALL;
  if (a1 && *a1 && (qword_10003D3A8 & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v19 = 0;
    v20 = &v19;
    v21 = 0x3052000000;
    v22 = sub_1000190C0;
    v23 = sub_1000190D0;
    v24 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000190DC;
    v16[3] = &unk_100035AA8;
    v17 = a2;
    v18 = a3;
    v16[4] = &v19;
    v16[5] = a4;
    v16[6] = a6;
    v6 = sub_100021558(a1, v16);
    v14 = v20[5];
    if (v14)
    {
      *a5 = CFRetain(v14);
    }

    _Block_object_dispose(&v19, 8);
    objc_autoreleasePoolPop(v13);
  }

  return v6;
}

void sub_1000190A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_1000190FC(id *a1, char a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6)
{
  v6 = 0xFFFF0000000ALL;
  if (a1 && *a1 && (qword_10003D3A8 & 2) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v24 = 0;
    v25 = &v24;
    v26 = 0x3052000000;
    v27 = sub_1000190C0;
    v28 = sub_1000190D0;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3052000000;
    v21 = sub_1000190C0;
    v22 = sub_1000190D0;
    v23 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000192E4;
    v16[3] = &unk_100035AD0;
    v17 = a2;
    v16[6] = a3;
    v16[7] = a5;
    v16[4] = &v24;
    v16[5] = &v18;
    v6 = sub_100021558(a1, v16);
    v14 = v25[5];
    if (v14)
    {
      *a4 = CFRetain(v14);
    }

    if (v19[5])
    {
      *(a6 + 8) = [sub_100019308() smallCrumbsFromError:v19[5]];
      *a6 = [sub_100019308() largeCrumbsFromError:v19[5]];
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
    objc_autoreleasePoolPop(v13);
  }

  return v6;
}

void sub_1000192BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100019308()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_1000190C0;
  v0 = qword_10003D3F0;
  v7 = sub_1000190D0;
  v8 = qword_10003D3F0;
  if (!qword_10003D3F0)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100019CA4;
    v2[3] = &unk_100034CD0;
    v2[4] = &v3;
    sub_100019CA4(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000193DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t sub_100019440(id *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0xFFFF0000000ALL;
  if (a1 && *a1 && (qword_10003D3A8 & 0x20) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v15 = 0;
    v16 = &v15;
    v17 = 0x3052000000;
    v18 = sub_1000190C0;
    v19 = sub_1000190D0;
    v20 = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100019598;
    v14[3] = &unk_100035B58;
    v14[4] = &v15;
    v14[5] = a3;
    v14[6] = a4;
    v14[7] = a5;
    v5 = sub_100021558(a1, v14);
    v12 = v16[5];
    if (v12)
    {
      *a2 = CFRetain(v12);
    }

    _Block_object_dispose(&v15, 8);
    objc_autoreleasePoolPop(v11);
  }

  return v5;
}

void sub_10001957C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000195B0()
{
  v0 = objc_autoreleasePoolPush();
  v4 = 0;
  v1 = 0xFFFFFFFFLL;
  if ([objc_msgSend(sub_100018730() "sharedHardwareManager")] && v4)
  {
    if ([v4 count] < 1)
    {
      v1 = 0;
    }

    else
    {
      v2 = 0;
      LODWORD(v1) = 0;
      do
      {
        v1 = [objc_msgSend(v4 objectAtIndex:{v2++), "intValue"}] + v1;
      }

      while (v2 < [v4 count]);
    }
  }

  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t sub_100019658(uint64_t a1)
{
  v1 = qword_10003D3A8;
  qword_10003D3A8 = a1;
  return v1;
}

BOOL sub_100019678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = qword_10003D3A8;
  if (qword_10003D3A8)
  {
    sub_100011BE0("SeshatIsReportingEnabled", @"not reporting aggd data, since debugging mode is enabled", a3, a4, a5, a6, a7, a8, v10);
  }

  return v8 == 0;
}

void sub_1000196BC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == 27268)
  {
    v11[1] = v8;
    v11[2] = v9;
    v11[0] = 1;
    sub_10000E31C(v11, a2, a3, a4, a5, a6, a7, a8, v10);
  }
}

uint64_t sub_100019734(uint64_t result, unsigned int a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 4) = 0;
  *a3 = result;
  *(a3 + 1) = bswap32(a2);
  return result;
}

const __CFData *sub_10001974C(char a1, unsigned int a2, CFDataRef theData, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((qword_10003D3A8 & 0x10000) != 0)
  {
    sub_100011BE0("SeshatIsNonceEquivalent", @"not eq", theData, a4, a5, a6, a7, a8, v13);
    return 0;
  }

  else
  {
    v8 = theData;
    v14[0] = a1;
    *&v14[1] = bswap32(a2);
    if (theData)
    {
      if (CFDataGetLength(theData) == 5)
      {
        BytePtr = CFDataGetBytePtr(v8);
        v8 = (*v14 == *BytePtr && v14[4] == BytePtr[4]);
      }

      else
      {
        v8 = 0;
      }
    }

    sub_100011BE0("SeshatIsNonceEquivalent", @"nonce eq: %d,%u -> %d", theData, a4, a5, a6, a7, a8, a1);
  }

  return v8;
}

Class sub_10001981C(uint64_t a1)
{
  sub_100019874();
  result = objc_getClass("NFHardwareManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_100022484();
  }

  qword_10003D3B0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_100019874()
{
  v0 = 0;
  if (!sub_1000198B8())
  {
    sub_1000224EC(&v0);
  }
}

uint64_t sub_1000198B8()
{
  if (!qword_10003D3B8)
  {
    qword_10003D3B8 = _sl_dlopen();
  }

  return qword_10003D3B8;
}

uint64_t sub_100019988(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10003D3B8 = result;
  return result;
}

Class sub_1000199FC(uint64_t a1)
{
  sub_100019874();
  result = objc_getClass("NFTapToRadar");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_100022554();
  }

  qword_10003D3C8 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_100019A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019B10;
  v4[3] = &unk_100035BB8;
  v5 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4[4] = a3;
  v4[5] = v3;
  v6 = *(a1 + 56);
  v4[6] = a2;
  dispatch_sync(qword_10003D3D8, v4);
}

void sub_100019B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(a1 + 56) + 8);
  if (*(v9 + 24) == 1)
  {
    sub_100011BE0("_SeshatCreateSessionWithTimeout_block_invoke_3", @"doing nothing due to poison", a3, a4, a5, a6, a7, a8, v21);
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = [objc_msgSend(v10 "description")];
      sub_100011BE0("_SeshatCreateSessionWithTimeout_block_invoke_3", @"ERROR: %s", v12, v13, v14, v15, v16, v17, v11);
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v18 = *(a1 + 32);
      v19 = *(a1 + 64);
    }

    else
    {
      *(v9 + 24) = 1;
      v18 = *(a1 + 48);
      v19 = *(a1 + 72);
    }

    *(*(v19 + 8) + 40) = v18;
    dispatch_semaphore_signal(*(a1 + 40));
  }

  v20 = *(a1 + 40);

  dispatch_release(v20);
}

void *sub_100019BE8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(*(result[5] + 8) + 24) & 1) == 0)
  {
    v8 = result;
    sub_100011BE0("_SeshatCreateSessionWithTimeout_block_invoke_4", @"signaling end of session due to failure to start", a3, a4, a5, a6, a7, a8, v10);
    result = [v8[4] endSession];
    v9 = v8[6];
    *(*(v8[5] + 8) + 24) = 1;
    if (v9)
    {
      *v9 = 1;
    }
  }

  return result;
}

Class sub_100019C4C(uint64_t a1)
{
  sub_100019874();
  result = objc_getClass("NFSecureElement");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_1000225BC();
  }

  qword_10003D3E8 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class sub_100019CA4(uint64_t a1)
{
  sub_100019874();
  result = objc_getClass("NFSeshatSession");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_100022624();
  }

  qword_10003D3F0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

unint64_t sub_100019CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, int a19, char a20, __int16 a21, char a22, __int16 a23, __int16 a24, char a25, char a26)
{

  return sub_100019440(&a18, (v26 - 96), &a26, &a22, &a20);
}

void sub_100019D60(id a1)
{
  if (bootstrap_check_in(bootstrap_port, "com.apple.mobile.keybagd.mach", &dword_10003D400))
  {

    sub_100011BE0("serverPort_block_invoke", @"failed to create notification port", v1, v2, v3, v4, v5, v6, v11);
  }

  else
  {
    v7 = dword_10003D400;
    global_queue = dispatch_get_global_queue(0, 0);
    qword_10003D408 = dispatch_source_create(&_dispatch_source_type_mach_recv, v7, 0, global_queue);
    dispatch_source_set_event_handler(qword_10003D408, &stru_100035C88);
    v9 = qword_10003D408;

    dispatch_resume(v9);
  }
}

uint64_t sub_100019E20()
{
  if (qword_10003D3F8 != -1)
  {
    sub_10002268C();
  }

  result = aks_register_for_notifications();
  if (!result)
  {
    if (qword_10003D3F8 != -1)
    {
      sub_10002268C();
    }

    return aks_register_for_notifications();
  }

  return result;
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    qword_10003D410 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, qword_10003D410, 0, qword_10003D418, qword_10003D420, v8, a5, v6);
  }

  return result;
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = qword_10003D410 - a3;
    if (qword_10003D410 < a3)
    {
      v6 = 0;
    }

    qword_10003D410 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, qword_10003D410, 0, qword_10003D418, qword_10003D420, v9, a5, v7);
  }

  return result;
}

uint64_t ACMContextCreateWithFlags(uint64_t *a1, uint64_t a2)
{
  if (byte_10003D279 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreate(sub_10001AA5C, &v8, a1, a2, &byte_10003D279, 1);
  if (v4)
  {
    sub_10001A800();
    v5 = 70;
  }

  else
  {
    v5 = 10;
    if (a1 && byte_10003D279 <= 0x28u)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        if (*a1)
        {
          LODWORD(v6) = *(v6 + 16);
        }

        *buf = 136315906;
        v10 = "ACMLib";
        v11 = 2080;
        v12 = "ACMContextCreateWithFlags";
        v13 = 1024;
        LODWORD(v14[0]) = v6;
        WORD2(v14[0]) = 1024;
        *(v14 + 6) = a2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] created (flags=0x%x).\n", buf, 0x22u);
      }

      v5 = 10;
    }
  }

  if (v5 >= byte_10003D279 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    v13 = 2048;
    v14[0] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextDelete(_DWORD *a1, int a2)
{
  v4 = byte_10003D279;
  if (byte_10003D279 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
    v4 = byte_10003D279;
  }

  if (a1 && v4 <= 0x28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = "NO";
    *buf = 136315906;
    v12 = "ACMLib";
    v14 = "ACMContextDelete";
    v13 = 2080;
    if (a2)
    {
      v6 = "YES";
    }

    v15 = 1024;
    LODWORD(v16[0]) = v5;
    WORD2(v16[0]) = 2080;
    *(v16 + 6) = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: CS[%u] deleted (contextDestroyed=%s).\n", buf, 0x26u);
  }

  v10 = a1;
  v7 = LibCall_ACMContextDelete(sub_10001AA5C, &v10, a1, a2);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= byte_10003D279 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    v15 = 2048;
    v16[0] = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v7;
}

void ACMContextGetExternalForm(const void *a1, uint64_t a2)
{
  if (byte_10003D279 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v4, 0x16u);
  }

  if (a1 && a2)
  {
    if (!sub_10001AC20() && !sub_10001ADD4(a1, 19, 0, a1, 0x10uLL, 0, 0))
    {
      (*(a2 + 16))(a2, a1, 16);
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  sub_10001B0C4(a2);
LABEL_9:
  if (byte_10003D279 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", &v4, 0x16u);
  }
}

uint64_t ACMContextCopyData(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (byte_10003D279 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextCopyData";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = 0;
  v8 = LibCall_ACMContextCopyData(sub_10001AA5C, &v11, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= byte_10003D279 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextCopyData";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v8;
}

void sub_10001A800()
{
  if (byte_10003D279 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(dword_10003D42C, 2u, 0, 0, &output, &outputCnt))
  {
    goto LABEL_12;
  }

  v0 = output;
  byte_10003D279 = output;
  if (output <= 0x1EuLL && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10001B0EC();
LABEL_12:
    v0 = byte_10003D279;
  }

  if (v0 <= 0xA && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t sub_10001AA5C(uint64_t *a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_10003D279 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10001AA20();
    sub_10001AA08();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = sub_10001AC20();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = sub_10001ADD4(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= byte_10003D279 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10001AA50();
    sub_10001AA2C();
    sub_10001A9F8();
    sub_10001AA08();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  return v21;
}

uint64_t sub_10001AC20()
{
  if (byte_10003D279 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10001A9C8();
    sub_10001AA08();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (byte_10003D428)
  {
    v5 = 0;
  }

  else
  {
    v6 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
    if (!MatchingService)
    {
      v9 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v8 = MatchingService;
    v5 = IOServiceOpen(MatchingService, mach_task_self_, 0, &dword_10003D42C);
    if (v5)
    {
      v9 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v8);
    byte_10003D428 = 1;
  }

  v9 = 10;
LABEL_10:
  if (v9 >= byte_10003D279 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10001AA50();
    sub_10001AA2C();
    sub_10001A9F8();
    sub_10001AA08();
    _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
  }

  return v5;
}

uint64_t sub_10001ADD4(uint64_t a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (byte_10003D279 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10001A9E0();
    sub_10001A9BC();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  inputStructCnt = 0;
  v19 = LibCall_BuildCommand(a2, 0, a3, a4, a5, &inputStructCnt);
  if (v19)
  {
    v20 = v19;
    if (!a6 && a7)
    {
      v23 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v21 = *a7;
      }

      else
      {
        v21 = 0;
      }

      v44 = v21;
      v22 = IOConnectCallStructMethod(dword_10003D42C, 0, v19, inputStructCnt, a6, &v44);
      v23 = v22;
      if (a1)
      {
        v24 = *(a1 + 16);
      }

      if (v22)
      {
        if (byte_10003D279 <= 0x46u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_10001A9E0();
          sub_10001AA38();
          v49 = v25;
          v50 = v23;
          v51 = v25;
          v52 = v23;
          sub_10001A9BC();
          _os_log_impl(v26, v27, v28, v29, v30, 0x2Eu);
        }
      }

      else
      {
        if (byte_10003D279 <= 0x28u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          sub_10001A9E0();
          sub_10001AA38();
          sub_10001A9BC();
          _os_log_impl(v31, v32, v33, v34, v35, 0x22u);
        }

        v23 = 0;
        if (a7)
        {
          *a7 = v44;
        }
      }
    }

    v36 = inputStructCnt;
    acm_mem_free_info("<data>", v20, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v20, v36);
    if (v23)
    {
      v37 = 70;
    }

    else
    {
      v37 = 10;
    }
  }

  else
  {
    v37 = 70;
    v23 = 4294967291;
  }

  if (v37 >= byte_10003D279 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v46 = 136315650;
    v47 = "ACMLib";
    sub_10001AA14();
    v48 = "performCommand";
    sub_10001A9AC();
    sub_10001A9BC();
    _os_log_impl(v38, v39, v40, v41, v42, 0x20u);
  }

  return v23;
}

void sub_10001B0EC()
{
  sub_10001AA2C();
  sub_10001AA08();
  _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

uint64_t LibCall_ACMContextDelete(void (*a1)(uint64_t, uint64_t, void, void *, uint64_t, void, void), uint64_t a2, void *a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextDelete");
  }

  if (a1 && a3)
  {
    if (a4)
    {
      a1(a2, 2, 0, a3, 16, 0, 0);
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    acm_mem_free_info("ACMHandleWithPayload", a3, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 172, "LibCall_ACMContextDelete");
    acm_mem_free(a3, 0x14uLL);
    v8 = 0;
    v9 = 10;
    goto LABEL_8;
  }

  v9 = 70;
  v8 = 4294967293;
LABEL_8:
  if (v9 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextDelete", v8);
  }

  return v8;
}

void *sub_10001B2F0()
{

  return acm_mem_alloc_typed(0x14uLL, 0x1000040A86A77D5uLL);
}

const __CFData *sub_10001B4AC(int a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != -1)
  {
    lock_state = aks_get_lock_state();
    if (!lock_state)
    {
      v9 = 0;
      goto LABEL_7;
    }

    sub_100011BE0("KBisxARTBasedKeyBag", @"get_lock_state() -> 0x%x", a3, a4, a5, a6, a7, a8, lock_state);
LABEL_9:
    v9 = 0;
    goto LABEL_7;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  v10 = sub_10000C40C(a2, @"KeyBagKeys");
  v9 = v10;
  if (v10)
  {
    CFDataGetBytePtr(v10);
    CFDataGetLength(v9);
    v9 = aks_bag_in_xart();
  }

LABEL_7:
  sub_100011BE0("KBisxARTBasedKeyBag", @"Result = %d", a3, a4, a5, a6, a7, a8, v9);
  return v9;
}

uint64_t sub_10001B578(const __CFDictionary *a1, const char *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v10 = a3;
  v13 = sub_10001B4AC(-1, a1, a3, a4, a5, a6, a7, a8);
  CFDictionarySetValue(a1, @"KeyBagVersion", @"1");
  if (v13)
  {
    CFDictionarySetValue(a1, @"KeybagxART", @"1");
  }

  if (mkdir(a2, 0x1C0u) && *__error() != 17)
  {
    v14 = __error();
    strerror(*v14);
    sub_100011BE0("KBSaveKeyBag", @"Can't create %s: %s", v15, v16, v17, v18, v19, v20, a2);
    return 0xFFFFFFFFLL;
  }

  snprintf(__str, 0x401uLL, "%s/%s.kb", a2, a4);
  if ((sub_10001C744(":/defaults", @"no-effaceable-storage") != 0) | v13 & 1)
  {
    if (v13 && !sub_10001C744(":/defaults", @"no-effaceable-storage"))
    {
      sub_100002D14(0x42414731u);
    }

    bzero(v204, 0x401uLL);
    v21 = 0xFFFFFFFFLL;
    v201 = -1;
    snprintf(v204, 0x401uLL, "%s.writing", __str);
    if (!sub_100001B60(a1, v204, &v201))
    {
      v23 = sub_10000537C();
      if (renamex_np(v23, v24, 2u) && (v25 = *__error(), v26 = sub_10000537C(), rename(v26, v27, v28), v29))
      {
        v180 = __error();
        strerror(*v180);
        sub_100011BE0("KBSecureSaveObjectNoCrypto", @"could not rename %s to %s: %s (%d)", v181, v182, v183, v184, v185, v186, v204);
      }

      else if (fcntl(v201, 51))
      {
        v163 = __error();
        strerror(*v163);
        sub_100011BE0("KBSecureSaveObjectNoCrypto", @"Unable to fsync %s: %s", v164, v165, v166, v167, v168, v169, v204);
      }

      else
      {
        if (unlink(v204))
        {
          v30 = __error();
          v31 = strerror(*v30);
          sub_100011BE0("KBSecureSaveObjectNoCrypto", @"unlink failed: %s", v32, v33, v34, v35, v36, v37, v31);
        }

        v21 = 0;
      }
    }

    if (v201 != -1 && close(v201))
    {
      v38 = v201;
      v39 = __error();
      strerror(*v39);
      sub_100011BE0("KBSecureSaveObjectNoCrypto", @"failed to close(%d): %s", v40, v41, v42, v43, v44, v45, v38);
    }

    return v21;
  }

  dataOutMoved = 0;
  cryptorRef = 0;
  v192 = 52;
  memset(v199, 0, sizeof(v199));
  v200 = 0;
  if (!v8)
  {
    if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, &v199[1] + 4))
    {
      v188 = @"Can't create key";
    }

    else
    {
      if (!SecRandomCopyBytes(kSecRandomDefault, 0x10uLL, v199 + 4))
      {
LABEL_24:
        v58 = CFDataCreate(0, &v199[1] + 4, 32);
        if (v58)
        {
          v65 = v58;
          v66 = CFDataCreate(0, v199 + 4, 16);
          if (v66)
          {
            v73 = v66;
            v74 = sub_100001C74(a1);
            if (!v74)
            {
              sub_100011BE0("KBSecureSaveObjectWithCrypto", @"Can't serialize object", v75, v76, v77, v78, v79, v80, v189);
              v98 = 0;
              v21 = 4294967291;
LABEL_55:
              CFRelease(v65);
              CFRelease(v73);
              if (v98)
              {
                CFRelease(v98);
              }

              goto LABEL_57;
            }

            v81 = v74;
            v82 = CCCryptorCreate(0, 0, 1u, &v199[1] + 4, 0x20uLL, v199 + 4, &cryptorRef);
            if (v82)
            {
              sub_100011BE0("KBSecureSaveObjectWithCrypto", @"Can't create cryptor: %d", v83, v84, v85, v86, v87, v88, v82);
              v98 = 0;
            }

            else
            {
              Length = CFDataGetLength(v81);
              OutputLength = CCCryptorGetOutputLength(cryptorRef, Length, 1);
              Mutable = CFDataCreateMutable(0, OutputLength);
              v98 = Mutable;
              if (!Mutable)
              {
                v170 = "KBSecureSaveObjectWithCrypto";
                v171 = @"Can't create crypt buffer";
LABEL_71:
                sub_100011BE0(v170, v171, v92, v93, v94, v95, v96, v97, v189);
                v21 = 4294967291;
                goto LABEL_54;
              }

              CFDataSetLength(Mutable, OutputLength);
              v99 = cryptorRef;
              BytePtr = CFDataGetBytePtr(v81);
              MutableBytePtr = CFDataGetMutableBytePtr(v98);
              v102 = CCCryptorUpdate(v99, BytePtr, Length, MutableBytePtr, OutputLength, &dataOutMoved);
              if (!v102)
              {
                v109 = cryptorRef;
                v110 = CFDataGetMutableBytePtr(v98);
                CCCryptorFinal(v109, &v110[dataOutMoved], OutputLength - dataOutMoved, &dataOutMoved);
                valuePtr = v10;
                cf = 0;
                v195 = -1;
                v111 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                if (v111)
                {
                  v112 = v111;
                  v113 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                  if (!v113)
                  {
                    goto LABEL_78;
                  }

                  CFDictionaryAddValue(v112, @"_MKBIV", v73);
                  CFDictionaryAddValue(v112, @"_MKBWIPEID", v113);
                  CFDictionaryAddValue(v112, @"_MKBPAYLOAD", v98);
                  snprintf(v204, 0x401uLL, "%s.writing", __str);
                  if (sub_100001B60(v112, v204, &v195))
                  {
                    goto LABEL_78;
                  }

                  v114 = sub_10000537C();
                  if (renamex_np(v114, v115, 2u))
                  {
                    v116 = *__error();
                    v117 = sub_10000537C();
                    rename(v117, v118, v119);
                    if (v120)
                    {
                      v187 = __error();
                      strerror(*v187);
                      v190 = v204;
                      v179 = @"could not rename %s to %s: %s (%d)";
LABEL_77:
                      sub_100011BE0("KBSecureSaveObject", v179, v141, v142, v143, v144, v145, v146, v190);
                      goto LABEL_78;
                    }
                  }

                  if (fcntl(v195, 51))
                  {
                    v172 = __error();
                    strerror(*v172);
                    sub_100011BE0("KBSecureSaveObject", @"Unable to fsync %s: %s", v173, v174, v175, v176, v177, v178, v204);
LABEL_78:
                    v21 = 0xFFFFFFFFLL;
LABEL_47:
                    if (v195 != -1 && close(v195))
                    {
                      v155 = v195;
                      v156 = __error();
                      strerror(*v156);
                      sub_100011BE0("KBSecureSaveObject", @"failed to close(%d): %s", v157, v158, v159, v160, v161, v162, v155);
                    }

                    CFRelease(v112);
                    if (cf)
                    {
                      CFRelease(cf);
                    }

                    if (v113)
                    {
                      CFRelease(v113);
                    }

                    goto LABEL_54;
                  }

                  if ((v8 & 1) == 0)
                  {
                    v121 = valuePtr;
                    if (CFDataGetLength(v73) != 16 || CFDataGetLength(v65) != 32)
                    {
                      sub_100011BE0("storeWipeIDInfo", @"trying to store invalid iv or secret", v122, v123, v124, v125, v126, v127, v190);
                      goto LABEL_42;
                    }

                    memset(v203, 0, 32);
                    v202 = 0u;
                    v201 = v121;
                    v205.location = 0;
                    v205.length = 16;
                    CFDataGetBytes(v73, v205, &v202);
                    v206.location = 0;
                    v206.length = 32;
                    CFDataGetBytes(v65, v206, v203);
                    v128 = sub_100002AC4(v121, &v201, 0x34uLL);
                    if (v128)
                    {
                      sub_100011BE0("storeWipeIDInfo", @"Unable to save wipe info: %08x", v129, v130, v131, v132, v133, v134, v128);
LABEL_42:
                      sub_100011BE0("KBSecureSaveObject", @"Oh no! Can't save wipe ID", v135, v136, v137, v138, v139, v140, v191);
                    }
                  }

                  if (!sub_100004D74(__str, &cf))
                  {
                    if (unlink(v204))
                    {
                      v147 = __error();
                      v148 = strerror(*v147);
                      sub_100011BE0("KBSecureSaveObject", @"unlink failed: %s", v149, v150, v151, v152, v153, v154, v148);
                    }

                    v21 = 0;
                    goto LABEL_47;
                  }

                  v179 = @"failed to validate newly created bag -- should never happen";
                  goto LABEL_77;
                }

                v170 = "KBSecureSaveObject";
                v171 = @"Can't create dict";
                goto LABEL_71;
              }

              sub_100011BE0("KBSecureSaveObjectWithCrypto", @"Can't encrypt: %d", v103, v104, v105, v106, v107, v108, v102);
            }

            v21 = 4294967289;
LABEL_54:
            CFRelease(v81);
            goto LABEL_55;
          }

          sub_100011BE0("KBSecureSaveObjectWithCrypto", @"Can't create iv data", v67, v68, v69, v70, v71, v72, v189);
          CFRelease(v65);
        }

        else
        {
          sub_100011BE0("KBSecureSaveObjectWithCrypto", @"Can't create key data", v59, v60, v61, v62, v63, v64, v189);
        }

        v21 = 4294967291;
        goto LABEL_57;
      }

      v188 = @"Can't create IV";
    }

    sub_100011BE0("KBSecureSaveObjectWithCrypto", v188, v52, v53, v54, v55, v56, v57, v189);
    goto LABEL_82;
  }

  if (!sub_100002BE8(v10, v199, &v192))
  {
    goto LABEL_24;
  }

  sub_100011BE0("KBSecureSaveObjectWithCrypto", @"Unable to load wipe info:%08x", v46, v47, v48, v49, v50, v51, v10);
LABEL_82:
  v21 = 0xFFFFFFFFLL;
LABEL_57:
  if (cryptorRef)
  {
    CCCryptorRelease(cryptorRef);
  }

  return v21;
}

uint64_t sub_10001BDB8(int a1, const char *a2, const void *a3, int a4, uint64_t a5)
{
  if (sub_100004190() && a1)
  {
    return 0;
  }

  if (a5)
  {
    v16 = @"Saving SystemBag with NO EFFACEABLE ROLL";
  }

  else
  {
    v16 = @"Saving SystemBag with EFFACEABLE ROLL";
  }

  sub_100011BE0("KBSaveSystemBagHandle", v16, v10, v11, v12, v13, v14, v15, v38);
  v17 = sub_100004190();
  if (a1 || !v17)
  {
    v41[0] = 0;
    *bytes = 0;
    if (!aks_save_bag())
    {
      v26 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v41[0], *bytes, kCFAllocatorDefault);
      if (v26)
      {
        v25 = v26;
        goto LABEL_14;
      }
    }

    return 0xFFFFFFFFLL;
  }

  *bytes = 1752065072;
  LODWORD(v41[0]) = -1;
  if (aks_load_bag())
  {
    return 0xFFFFFFFFLL;
  }

  aks_unload_bag();
  v18 = CFDataCreate(kCFAllocatorDefault, bytes, 4);
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v25 = v18;
  sub_100011BE0("KBSaveSystemBagHandle", @"Saving handle 0 with the magic handle", v19, v20, v21, v22, v23, v24, v39);
LABEL_14:
  v27 = sub_10000C688();
  if (v27)
  {
    v28 = v27;
    CFDictionaryAddValue(v27, @"KeyBagKeys", v25);
    if (a3)
    {
      CFDictionaryAddValue(v28, @"OpaqueStuff", a3);
    }

    if (a4)
    {
      v29 = sub_100003CD4();
      if (v29)
      {
        v30 = v29;
        Value = CFDictionaryGetValue(v29, @"BackupKeyBagKeys");
        if (Value)
        {
          v32 = Value;
          CFRetain(Value);
          CFRelease(v30);
          CFDictionarySetValue(v28, @"BackupKeyBagKeys", v32);
          v30 = v32;
        }

        CFRelease(v30);
      }
    }

    snprintf(v41, 0x401uLL, "%s/%s", a2, "keybags");
    if (sub_10001B578(v28, v41, 1111574321, "systembag", a5, v33, v34, v35))
    {
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      v36 = 0;
    }

    CFRelease(v28);
  }

  else
  {
    v36 = 0xFFFFFFFFLL;
  }

  CFRelease(v25);
  return v36;
}

uint64_t sub_10001C00C(int a1, uint64_t a2, const void *a3, int a4)
{
  memset(&theDict[1] + 4, 0, 12);
  theDict[0] = 0;
  if (sub_100004190())
  {
    return 0;
  }

  if (a4)
  {
    v14 = @"Saving UserBag for uid %d with NO EFFACEABLE ROLL";
  }

  else
  {
    v14 = @"Saving UserBag for uid %d with EFFACEABLE ROLL";
  }

  sub_100011BE0("KBSaveUserBagHandle", v14, v8, v9, v10, v11, v12, v13, a2);
  snprintf(__str, 0x401uLL, "%s%s", "/private/var/", "keybags");
  v15 = sub_100003DD0(__str, "userbag", theDict);
  if (!v15 || (theDict[0] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) != 0)
  {
    v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", a2);
    if (v16)
    {
      if (a1 == -1)
      {
        v21 = theDict[0];
        CFDictionaryRemoveValue(theDict[0], v16);
        v18 = 0;
        v20 = 0;
        goto LABEL_15;
      }

      if (!aks_save_bag())
      {
        v17 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, theDict[2], SHIDWORD(theDict[1]), kCFAllocatorDefault);
        if (v17)
        {
          v18 = v17;
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (!Mutable)
          {
            v23 = 0;
            v28 = 0;
LABEL_31:
            CFRelease(v18);
LABEL_32:
            if (theDict[0])
            {
              CFRelease(theDict[0]);
              theDict[0] = 0;
            }

            if (v16)
            {
              CFRelease(v16);
            }

            if (v23)
            {
              CFRelease(v23);
            }

            if (v28)
            {
              CFRelease(v28);
            }

            return v15;
          }

          v20 = Mutable;
          CFDictionarySetValue(Mutable, @"KeyBagKeys", v18);
          if (a3)
          {
            CFDictionarySetValue(v20, @"OpaqueStuff", a3);
          }

          v21 = theDict[0];
          CFDictionarySetValue(theDict[0], v16, v20);
LABEL_15:
          Current = CFAbsoluteTimeGetCurrent();
          v23 = CFDateCreate(kCFAllocatorDefault, Current);
          Value = CFDictionaryGetValue(v21, @"LastWipeKeyUpdateTimeStamp");
          if (!Value)
          {
            CFDictionarySetValue(v21, @"WipeKeyUpdatePending", kCFBooleanFalse);
            CFDictionarySetValue(v21, @"LastWipeKeyUpdateTimeStamp", v23);
            v28 = 0;
LABEL_17:
            v29 = 0;
            goto LABEL_25;
          }

          AbsoluteTime = CFDateGetAbsoluteTime(Value);
          v28 = CFDateCreate(kCFAllocatorDefault, AbsoluteTime + 86400.0);
          if (CFDateCompare(v28, v23, 0) == kCFCompareLessThan)
          {
            v31 = CFDictionaryGetValue(v21, @"WipeKeyUpdatePending");
            if (CFEqual(v31, kCFBooleanTrue) || (a4 & 1) == 0)
            {
              CFDictionarySetValue(v21, @"LastWipeKeyUpdateTimeStamp", v23);
              CFDictionarySetValue(v21, @"WipeKeyUpdatePending", kCFBooleanFalse);
              goto LABEL_17;
            }
          }

          else if ((a4 & 1) == 0)
          {
            CFDictionarySetValue(v21, @"WipeKeyUpdatePending", kCFBooleanTrue);
          }

          v29 = 1;
LABEL_25:
          if (sub_10001B578(v21, __str, 1111574322, "userbag", v29, v25, v26, v27))
          {
            v15 = v15;
          }

          else
          {
            v15 = 0;
          }

          if (v20)
          {
            CFRelease(v20);
          }

          if (!v18)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }
      }
    }

    v23 = 0;
    v28 = 0;
    goto LABEL_32;
  }

  return v15;
}

uint64_t sub_10001C3B8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v70 = -1;
  v17 = sub_10001B4AC(a1, 0, a3, a4, a5, a6, a7, a8);
  v18 = "two";
  if (v17)
  {
    v18 = "single";
  }

  sub_100011BE0("KBChangeSystemNonSeSecret", @"changing non-SE passcode %s phase, (params:%d)", v11, v12, v13, v14, v15, v16, v18);
  v69 = 0;
  v19 = aks_change_secret_opts();
  if (v19)
  {
    sub_100011BE0("KBChangeSystemNonSeSecret", @"change-secret failed %x", v20, v21, v22, v23, v24, v25, v19);
    goto LABEL_28;
  }

  if (v17)
  {
    v70 = a1;
    if (a1)
    {
      v30 = sub_10001C00C(a1, a2, a7, 0);
      if (!v30)
      {
LABEL_10:
        if ((v17 & 1) == 0)
        {
          v38 = aks_set_system_with_opts();
          if (v38)
          {
            sub_100011BE0("KBChangeSystemNonSeSecret", @"set-system failed %d", v39, v40, v41, v42, v43, v44, v38);
            v52 = 1;
            goto LABEL_30;
          }
        }

        v45 = aks_change_secret_epilogue_with_opts();
        v37 = v45;
        if (v45)
        {
          sub_100011BE0("KBChangeSystemNonSeSecret", @"aks_change_secret_epilogue() failed %x", v46, v47, v48, v49, v50, v51, v45);
        }

LABEL_14:
        v52 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      sub_100005370();
      v30 = sub_10001BDB8(v26, v27, v28, v29, 0);
      if (!v30)
      {
        goto LABEL_10;
      }
    }

    v37 = v30;
    sub_100011BE0("KBChangeSystemNonSeSecret", @"unable to save bag %d", v31, v32, v33, v34, v35, v36, a1);
    goto LABEL_14;
  }

  sub_100011BE0("KBChangeSystemNonSeSecret", @"temp handle is invalid: %d", v20, v21, v22, v23, v24, v25, -1);
LABEL_28:
  v52 = 0;
LABEL_30:
  v37 = 0xFFFFFFFFLL;
LABEL_15:
  if (v70 == -1)
  {
    v53 = 1;
  }

  else
  {
    v53 = v17;
  }

  if ((v53 & 1) == 0)
  {
    aks_unload_bag();
  }

  if (v52)
  {
    if (a1)
    {
      sub_100005370();
      if (!sub_10001C00C(v65, v66, v67, v68))
      {
        return v37;
      }
    }

    else
    {
      sub_100005370();
      if (!sub_10001BDB8(v55, v56, v57, v58, 1))
      {
        return v37;
      }
    }

    sub_100011BE0("KBChangeSystemNonSeSecret", @"welp, unable to persist old bag", v59, v60, v61, v62, v63, v64, v69);
  }

  return v37;
}

uint64_t sub_10001C63C(CFDataRef theData, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7)
  {
    if (theData)
    {
      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
    }

    sub_100001ACC();
    if (aks_recover_with_escrow_bag_with_acm())
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (theData)
    {
      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
    }

    sub_100001ACC();
    if (aks_recover_with_escrow_bag())
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (sub_100004190())
  {
    return 0;
  }

  sub_100005370();

  return sub_10001BDB8(v9, v10, v11, v12, 0);
}

uint64_t sub_10001C744(const char *a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = strlen(a1);
  v5 = malloc_type_malloc(v4 + 13, 0x2DB0D7C0uLL);
  if (!v5)
  {
    return 4294967291;
  }

  v6 = v5;
  snprintf(v5, v4 + 13, "%s%s", "IODeviceTree", a1);
  v7 = IORegistryEntryFromPath(kIOMainPortDefault, v6);
  if (v7)
  {
    v8 = v7;
    CFProperty = IORegistryEntryCreateCFProperty(v7, a2, kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    IOObjectRelease(v8);
  }

  else
  {
    v10 = 4294967288;
  }

  free(v6);
  return v10;
}

void sub_10001C82C(char a1)
{
  v2 = __error();
  strerror(*v2);
  sub_100011BE0("KBSecureLoadObject", @"could not rename %s to %s: %s", v3, v4, v5, v6, v7, v8, a1);
}

void sub_10001CADC(const __CFString *a1, char a2)
{
  v4 = __error();
  strerror(*v4);
  sub_100011BE0("store_binary_dict_fd", a1, v5, v6, v7, v8, v9, v10, a2);
}

void sub_10001CB28(char a1)
{
  v2 = __error();
  strerror(*v2);
  sub_100011BE0("store_binary_dict_fd", @"Could not create %s: %s", v3, v4, v5, v6, v7, v8, a1);
}

void sub_10001CB88(char a1)
{
  v2 = __error();
  strerror(*v2);
  sub_100011BE0("load_binary_dict", @"Could not fstat %s: %s", v3, v4, v5, v6, v7, v8, a1);
}

void sub_10001CBD4(char a1)
{
  v2 = __error();
  strerror(*v2);
  sub_100011BE0("load_binary_dict", @"Could not read %s: %s", v3, v4, v5, v6, v7, v8, a1);
}

void sub_10001CC48(char a1)
{
  v2 = __error();
  strerror(*v2);
  sub_100011BE0("load_binary_dict", @"Could not open %s: %s", v3, v4, v5, v6, v7, v8, a1);
}

const __CFDictionary *sub_10001CF04(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"_DSEUN");
  }

  return result;
}

uint64_t sub_10001CF18(CFMutableDictionaryRef theDict, void *value)
{
  result = 0xFFFFFFFFLL;
  if (theDict)
  {
    if (value)
    {
      CFDictionarySetValue(theDict, @"_DSEUN", value);
      return 0;
    }
  }

  return result;
}

const __CFDictionary *sub_10001CF58(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"_DULD");
  }

  return result;
}

const __CFDictionary *sub_10001CF6C(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"_DLD");
  }

  return result;
}

uint64_t sub_10001CF80(CFMutableDictionaryRef theDict, uint64_t a2)
{
  if (theDict)
  {
    if (a2 < 1)
    {
      CFDictionaryRemoveValue(theDict, @"_DLD");
      return 0;
    }

    sub_100001AE8();
    v6 = CFNumberCreate(v3, v4, v5);
    if (v6)
    {
      v13 = v6;
      CFDictionarySetValue(theDict, @"_DLD", v6);
      CFRelease(v13);
      return 0;
    }

    sub_100011BE0("HealthPlistSetLockDate", @"unable to allocate", v7, v8, v9, v10, v11, v12, v15);
  }

  return 0xFFFFFFFFLL;
}

const __CFDictionary *sub_10001D024(const __CFDictionary *result)
{
  valuePtr = 0;
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_DFAIL");
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      if (v2 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
        return valuePtr;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10001D094(__CFDictionary *a1)
{
  if (a1)
  {
    sub_100001AE8();
    v5 = CFNumberCreate(v2, v3, v4);
    if (v5)
    {
      CFDictionarySetValue(a1, @"_DFAIL", v5);
      return 0;
    }

    sub_100011BE0("HealthPlistSetFailed", @"unable to allocate", v6, v7, v8, v9, v10, v11, v13);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10001D110(CFMutableDictionaryRef theDict, uint64_t a2)
{
  if (theDict)
  {
    if (a2 < 1)
    {
      CFDictionaryRemoveValue(theDict, @"_DTTR");
      return 0;
    }

    sub_100001AE8();
    v6 = CFNumberCreate(v3, v4, v5);
    if (v6)
    {
      v13 = v6;
      CFDictionarySetValue(theDict, @"_DTTR", v6);
      CFRelease(v13);
      return 0;
    }

    sub_100011BE0("HealthPlistSetTTR", @"unable to allocate", v7, v8, v9, v10, v11, v12, v15);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10001D1B4(CFDictionaryRef theDict, void *a2)
{
  result = 0xFFFFFFFFLL;
  if (theDict && a2)
  {
    if (CFDictionaryGetValue(theDict, @"_DTTR"))
    {
      sub_100001AE8();
      if (CFNumberGetValue(v5, v6, v7))
      {
        CFDictionaryRemoveValue(theDict, @"_DTTR");
        result = 0;
        *a2 = 0;
        return result;
      }

      sub_100011BE0("HealthPlistConsumeTTR", @"invalid ttr format", v8, v9, v10, v11, v12, v13, v14);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

const __CFDictionary *sub_10001D248(const __CFDictionary *result)
{
  valuePtr = 0;
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_DTIME");
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      if (v2 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
        return valuePtr;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10001D2B8(__CFDictionary *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  sub_100001AE8();
  v5 = CFNumberCreate(v2, v3, v4);
  if (v5)
  {
    CFDictionarySetValue(a1, @"_DTIME", v5);
    return 0;
  }

  else
  {
    sub_100011BE0("HealthPlistSetTime", @"cant allocate mem", v6, v7, v8, v9, v10, v11, v13);
    return 0xFFFFFFFFLL;
  }
}

const __CFDictionary *sub_10001D340(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"_DDATA");
  }

  return result;
}

uint64_t sub_10001D354(const __CFDictionary *a1, uint64_t a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
  if (!v3)
  {
    sub_100011BE0("HealthPlistAddToData", @"unable to allocate", v4, v5, v6, v7, v8, v9, v20);
    return 0xFFFFFFFFLL;
  }

  v10 = v3;
  Value = CFDictionaryGetValue(a1, @"_DDATA");
  if (Value)
  {
    Mutable = Value;
    CFRetain(Value);
  }

  else
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  }

  CFArrayAppendValue(Mutable, v10);
  if (CFArrayGetCount(Mutable) >= 15)
  {
    sub_100011BE0("HealthPlistAddToData", @"at capacity, forgetting oldest data entry", v13, v14, v15, v16, v17, v18, v20);
    CFArrayRemoveValueAtIndex(Mutable, 0);
  }

  CFDictionarySetValue(a1, @"_DDATA", Mutable);
  CFRelease(v10);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_10001D6D8(uint64_t a1, char a2)
{
  v11 = 0;
  sub_10002145C(&v12);
  BYTE6(v12) = BYTE6(v12) & 0xF9 | (2 * (a2 & 3));
  v3 = sub_100001398();
  if (v3)
  {
    v4 = v3;
    if (sub_10001D024(v3))
    {
      BYTE6(v12) |= 1u;
    }

    v5 = sub_10001D340(v4);
    if (v5)
    {
      v6 = v5;
      v7 = CFGetTypeID(v5);
      if (v7 == CFArrayGetTypeID())
      {
        v8 = sub_10001D7C0(v6, &v11);
        v9 = -1;
        if (v8 <= 0xFE)
        {
          v9 = sub_10001D7C0(v6, &v11);
        }

        v10 = v11;
        if (v11 >= 0xFF)
        {
          v10 = 255;
        }

        WORD2(v12) = v9 | (v10 << 8);
      }
    }

    CFRelease(v4);
  }
}

uint64_t sub_10001D7C0(CFArrayRef theArray, _DWORD *a2)
{
  if (!theArray)
  {
    return 0;
  }

  if (a2)
  {
    if (CFArrayGetCount(theArray) < 0)
    {
      Count = 0;
    }

    else
    {
      Count = CFArrayGetCount(theArray);
    }

    *a2 = Count;
  }

  valuePtr = 0;
  if (CFArrayGetCount(theArray) < 1)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr))
    {
      v8 = valuePtr == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v6 = v6;
    }

    else
    {
      v6 = (v6 + 1);
    }

    ++v5;
  }

  while (CFArrayGetCount(theArray) > v5);
  return v6;
}

uint64_t sub_10001D880()
{
  v0 = MGCopyAnswer();
  v1 = MGCopyAnswer();
  v8 = v1;
  v9 = 0;
  if (v0 && v1)
  {
    if (CFBooleanGetValue(v0))
    {
      if (CFBooleanGetValue(v8))
      {
        v9 = sub_10001881C();
        goto LABEL_6;
      }

      v17 = @"seshat_support: cond 2 not satisfied";
    }

    else
    {
      v17 = @"seshat_support: cond 1 not satisfied";
    }

    sub_100011BE0("seshat_is_supported", v17, v10, v11, v12, v13, v14, v15, v18);
    v9 = 0;
  }

LABEL_6:
  if ((byte_10003D360 & 1) == 0)
  {
    sub_100011BE0("seshat_is_supported", @"result: %d", v2, v3, v4, v5, v6, v7, v9);
    byte_10003D360 = 1;
  }

  if (v0)
  {
    CFRelease(v0);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

BOOL sub_10001D978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = 0;
  v29[0] = 0;
  v29[1] = 0;
  theData = 0;
  v27 = 0;
  v25 = -1;
  v28 = sub_100018A0C(65000, &v30, v29, a4, a5, a6, a7, a8);
  if (v28)
  {
    v8 = sub_100019440(&v28, &theData, &v25, &v27, &v27 + 4);
    if (v8 || HIDWORD(v8) != 36864)
    {
      sub_100011BE0("seshat_supports_upgraded_jcop_kud_policy", @"getData() -> 0x%x:0x%x", v9, v10, v11, v12, v13, v14, v8);
      v22 = 0;
    }

    else
    {
      v22 = CFDataGetLength(theData) > 10;
    }

    if (v28)
    {
      sub_1000213DC(&v28, v15, v16, v17, v18, v19, v20, v21, v24);
    }
  }

  else
  {
    v22 = 0;
  }

  if (theData)
  {
    CFRelease(theData);
  }

  return v22;
}

void sub_10001DA48(id *a1)
{
  v26 = -18;
  v24 = 0;
  theData = 0;
  v23 = -1;
  v22 = 0;
  if ((sub_10001D880() & 1) == 0)
  {
    v20 = @"unsupported";
    goto LABEL_28;
  }

  if (!a1)
  {
    v22 = sub_100018E64(65000, v2, v3, v4, v5, v6, v7, v8);
    if (!v22)
    {
      v20 = @"CreateSession() failed";
      goto LABEL_28;
    }

    a1 = &v22;
  }

  sub_10000D8C4();
  if (sub_10000D548(v9, v10, v11, v12, v13, 0, 0))
  {
    v14 = 238;
  }

  else
  {
    v14 = v26;
  }

  v27 = 0;
  v28 = 0;
  if (aks_memento_get_state() || (v28 & 0x400000000) == 0)
  {
    v15 = 238;
  }

  else
  {
    v15 = v27;
    v26 = v27;
  }

  if (sub_100019440(a1, &theData, &v23, &v24, &v24 + 4) != 0x900000000000)
  {
    v20 = @"SeshatGetData() failed";
    goto LABEL_28;
  }

  v16 = 0;
  while (CFDataGetBytePtr(theData)[v16] == 238)
  {
LABEL_21:
    if (++v16 == 10)
    {
      goto LABEL_22;
    }
  }

  if (v14 == v16 || v15 == v16)
  {
    sub_100011BE0("KBSeshatEffaceUnusedSlots", @"not effacing slot %d thats currently referenced by handle %d, (main:%d, memento:%d)", v3, v4, v5, v6, v7, v8, v16);
    goto LABEL_21;
  }

  sub_100011BE0("KBSeshatEffaceUnusedSlots", @"effacing se slot %d", v3, v4, v5, v6, v7, v8, v16);
  v19 = sub_1000218B4(a1);
  if (v19 == 0x900000000000)
  {
    goto LABEL_21;
  }

  v21 = v16;
  v20 = @"SeshatDeleteSlot() failed %d";
LABEL_28:
  sub_100011BE0("KBSeshatEffaceUnusedSlots", v20, v3, v4, v5, v6, v7, v8, v21);
LABEL_22:
  if (theData)
  {
    CFRelease(theData);
    theData = 0;
  }

  if (v22)
  {
    sub_1000213DC(&v22, v17, v3, v4, v5, v6, v7, v8, v21);
  }
}

uint64_t sub_10001DCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  sub_10000D8E0();
  v73 = 0;
  if (!v10)
  {
    Length = -1;
LABEL_24:
    sub_100011BE0("seshat_migrate_slot_to_v2", @"Invalid args %ld", v10, v11, v12, v13, v14, v15, Length);
    v28 = 0;
    v54 = 28;
    goto LABEL_35;
  }

  v16 = v11;
  v17 = v10;
  v18 = v9;
  if (CFDataGetLength(v10) != 16)
  {
    Length = CFDataGetLength(v17);
    goto LABEL_24;
  }

  reset_pubkey = aks_se_get_reset_pubkey();
  if (reset_pubkey)
  {
    sub_100011BE0("seshat_migrate_slot_to_v2", @"failed to fetch pubkey 0x%x", v20, v21, v22, v23, v24, v25, reset_pubkey);
    v28 = 0;
    v54 = 21;
  }

  else if (v78 == 65)
  {
    v26 = CFDataGetLength(v17);
    Mutable = CFDataCreateMutable(0, v26 + 65);
    if (!Mutable)
    {
      goto LABEL_17;
    }

    v28 = Mutable;
    BytePtr = CFDataGetBytePtr(v17);
    v30 = CFDataGetLength(v17);
    CFDataAppendBytes(v28, BytePtr, v30);
    CFDataAppendBytes(v28, v79, v78);
    if (CFDataGetLength(v28) != 81)
    {
      sub_100011BE0("seshat_migrate_slot_to_v2", @"invalid upgrade data", v31, v32, v33, v34, v35, v36, v72);
LABEL_16:
      CFRelease(v28);
      goto LABEL_17;
    }

    v37 = sub_100019440(v16, &v75, &v74, v76, &v77);
    v44 = v37;
    v45 = HIDWORD(v37);
    if (v37 || v45 != 36864)
    {
      sub_100011BE0("seshat_migrate_slot_to_v2", @"getData() -> 0x%x:0x%x", v38, v39, v40, v41, v42, v43, v37);
      v54 = (v45 << 16) | (v44 << 8) | 3;
    }

    else
    {
      v46 = 2415919129;
      if (sub_10000D4AC(v18, 2, v77))
      {
        v54 = 2415919127;
      }

      else if (aks_verify_password_with_opts())
      {
        sub_100011BE0("seshat_migrate_slot_to_v2", @"cant verify old passcode", v47, v48, v49, v50, v51, v52, v72);
        v54 = 2415919131;
      }

      else
      {
        v53 = sub_10001E1DC(v18, &v73, 0);
        v54 = 2415919128;
        if (!v53 && v73)
        {
          v80 = 0u;
          v81 = 0u;
          v55 = (24 * *ccec_cp_256() + 31) & 0xFFFFFFFFFFFFFFF0;
          __chkstk_darwin();
          ccsha256_di();
          ccdigest();
          v56 = ccec_x963_import_pub();
          if (v56)
          {
            sub_100011BE0("seshat_migrate_slot_to_v2", @"import failed %x", v57, v58, v59, v60, v61, v62, v56);
            v46 = 2415919130;
          }

          else
          {
            CFDataGetLength(v73);
            CFDataGetBytePtr(v73);
            v63 = ccec_verify();
            if (v63)
            {
              sub_100011BE0("seshat_migrate_slot_to_v2", @"verify failed %x", v64, v65, v66, v67, v68, v69, v63);
            }

            else
            {
              sub_100011BE0("seshat_migrate_slot_to_v2", @"singature invalid", v64, v65, v66, v67, v68, v69, v72);
            }
          }

          v54 = v46;
        }
      }
    }
  }

  else
  {
    sub_100011BE0("seshat_migrate_slot_to_v2", @"invalid pubkey %zu", v20, v21, v22, v23, v24, v25, v78);
    v28 = 0;
    v54 = 22;
  }

LABEL_35:
  if (a8)
  {
    *a8 = v54;
  }

  if (v28)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v73)
  {
    CFRelease(v73);
    v73 = 0;
  }

  if (v75)
  {
    CFRelease(v75);
    v75 = 0;
  }

  free(v79);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10001E1DC(uint64_t a1, CFDataRef *a2, CFDataRef *a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  reset_sig = aks_se_get_reset_sig();
  if (reset_sig)
  {
    v14 = reset_sig;
    sub_100011BE0("seshat_get_reset_sig", @"failed to get sig %x", v6, v7, v8, v9, v10, v11, reset_sig);
    return v14;
  }

  v12 = CFDataCreate(0, 0, 0);
  *a2 = v12;
  if (v12 && (!a3 || (v13 = CFDataCreate(0, 0, 0), (*a3 = v13) != 0)))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_10001E2D8()
{
  v9 = 0;
  v0 = sub_100001398();
  if (v0)
  {
    v1 = v0;
    if (!sub_10001D1B4(v0, &v9))
    {
      if (sub_100001D24(v1))
      {
        sub_100011BE0("KBSeshatProcessTTR", @"failed to serialize TTR", v2, v3, v4, v5, v6, v7, v8);
      }

      else
      {
        sub_1000188A0(v9);
      }
    }

    CFRelease(v1);
  }
}

uint64_t sub_10001E34C(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, int a8)
{
  v289 = a7;
  v14 = 0xFFFFFFFFLL;
  HIDWORD(v296) = -1;
  if (aks_get_system())
  {
    return v14;
  }

  LODWORD(v296) = 0;
  aks_get_lock_state();
  HIDWORD(v288) = 0;
  v313[0] = 0;
  v313[1] = 0;
  LODWORD(__n[0]) = 0;
  if ((a8 & 1) != 0 && !aks_memento_get_state())
  {
    aks_get_lock_state();
  }

  v291 = a3;
  v15 = sub_10001D880() && sub_1000196F8() && !sub_10000C768();
  HIDWORD(v290) = a8;
  v313[0] = 0;
  __n[0] = 0;
  passcode_derivation = aks_se_get_passcode_derivation();
  if (passcode_derivation)
  {
    sub_100011BE0("subject_for_seshat", @"failed to get se derivation", v16, v17, v18, v19, v20, v21, v267);
  }

  free(v313[0]);
  Length = sub_10001966C();
  if ((Length & 0x20000) != 0)
  {
    sub_100011BE0("KBChangeSystemSecret", @"disabled immediate enrollment", v23, v24, v25, v26, v27, v28, v267);
  }

  v295 = a5;
  if (v15)
  {
    LODWORD(__n[0]) = 0;
    v30 = sub_100001398();
    v31 = v30;
    if (v30 && sub_10001D340(v30) && sub_10001D024(v31))
    {
      sub_100011BE0("seshat_preflight_for_passcode_change", @"health data contains failures", v32, v33, v34, v35, v36, v37, v267);
      v61 = -1;
    }

    else
    {
      if (MGGetBoolAnswer() && (sub_10001966C() & 0x800) == 0)
      {
        v250 = sub_10000D664();
        sub_100011BE0("seshat_preflight_for_passcode_change", @"ignoring recovery count (%d)", v251, v252, v253, v254, v255, v256, v250);
      }

      else
      {
        v38 = sub_10000D664();
        if (v38 >= 2)
        {
          sub_100011BE0("seshat_preflight_for_passcode_change", @"bad user experience = %u", v39, v40, v41, v42, v43, v44, v38);
          v61 = -1;
          if (!v31)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      v45 = sub_100021A88(1, &stru_100034FB0, __n);
      sub_10001D6D8(v45, 2);
      sub_100011BE0("seshat_preflight_for_passcode_change", @"Seshat preflight = %llx (%llx)", v46, v47, v48, v49, v50, v51, v45);
      v313[0] = v45;
      sub_10000E458(v313, v52, v53, v54, v55, v56, v57, v58, v268);
      v60 = v45 != 14 && v45 != 0;
      v61 = v60 << 31 >> 31;
      if (!v31)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    CFRelease(v31);
LABEL_28:
    v62 = v61 == 0;
    goto LABEL_30;
  }

  v62 = 0;
LABEL_30:
  v312 = 0;
  v313[0] = 0;
  __n[0] = 0;
  v311 = 0;
  v294 = a6;
  if (!sub_100004190())
  {
    v78 = 0;
    v88 = 0;
    v89 = a1 == 0;
LABEL_43:
    v90 = 1;
    goto LABEL_44;
  }

  if (!AKSIdentityGetPrimary() || aks_get_configuration())
  {
    goto LABEL_153;
  }

  Value = CFDictionaryGetValue(v311, kAKSConfigUserUUID);
  if (!Value || (v76 = Value, v77 = CFGetTypeID(Value), v77 != CFDataGetTypeID()) || CFDataGetLength(v76) != 16)
  {
    sub_100011BE0("is_user_primary", @"no user uuid in the bag %d", v70, v71, v72, v73, v74, v75, a1);
LABEL_153:
    v89 = 0;
    v90 = 0;
    v78 = 0;
    goto LABEL_155;
  }

  v314 = *CFDataGetBytePtr(v76);
  v78 = CFUUIDCreateFromUUIDBytes(0, v314);
  v79 = CFDictionaryGetValue(v311, kAKSConfigGroupUUID);
  if (v79)
  {
    v86 = v79;
    v87 = CFGetTypeID(v79);
    if (v87 == CFDataGetTypeID() && CFDataGetLength(v86) == 16)
    {
      v315 = *CFDataGetBytePtr(v86);
      v88 = CFUUIDCreateFromUUIDBytes(0, v315);
      if (CFEqual(v88, __n[0]))
      {
        v89 = CFEqual(v78, v313[0]) != 0;
      }

      else
      {
        v89 = 0;
      }

      goto LABEL_43;
    }
  }

  sub_100011BE0("is_user_primary", @"no group uuid in the bag %d", v80, v81, v82, v83, v84, v85, a1);
  v89 = 0;
  v90 = 0;
LABEL_155:
  v88 = 0;
LABEL_44:
  if (v313[0])
  {
    CFRelease(v313[0]);
    v313[0] = 0;
  }

  if (__n[0])
  {
    CFRelease(__n[0]);
    __n[0] = 0;
  }

  if (v312)
  {
    CFRelease(v312);
    v312 = 0;
  }

  if (v311)
  {
    CFRelease(v311);
    v311 = 0;
  }

  if (v78)
  {
    CFRelease(v78);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if ((v90 & 1) == 0)
  {
    sub_100011BE0("KBChangeSystemSecret", @"unable to determine if handle:%d is pirmary", v63, v64, v65, v66, v67, v68, a1);
    return 0xFFFFFFFFLL;
  }

  v275 = v89;
  v277 = passcode_derivation == 0;
  sub_100011BE0("KBChangeSystemSecret", @"handle: %d, se-support: %d, primary-user: %d, subject-to-seshat: %d, preflight: %d, se_bound: %d, se_unenroll:%d, dis-imm-enr: %d", v63, v64, v65, v66, v67, v68, a1);
  if (!v15)
  {
    goto LABEL_74;
  }

  if (v295)
  {
    v91 = v89;
  }

  else
  {
    v91 = 0;
  }

  if (passcode_derivation)
  {
    v91 = 0;
  }

  if ((*&Length & 0x20000) != 0 || !v91 || !v62)
  {
LABEL_74:
    v137 = v294;
    if (!sub_10001C3B8(a1, a2, v291, a4, v295, v294, v289, HIDWORD(v290)))
    {
      goto LABEL_143;
    }

    v265 = @"Failed to change non-se pw";
    goto LABEL_162;
  }

  v92 = BYTE4(v290) & 1;
  v93 = BYTE4(v290) & 4;
  v310 = 0;
  v311 = 0;
  v94 = v294;
  sub_10000D8E0();
  v303 = 0;
  v302 = -1;
  v301 = 0;
  __n[0] = 0;
  __n[1] = 0;
  HIDWORD(v299) = 0;
  v95 = 0;
  aks_get_lock_state();
  v102 = sub_10001B4AC(-1, 0, v96, v97, v98, v99, v100, v101);
  v109 = "two";
  LODWORD(v288) = v102;
  if (v102)
  {
    v109 = "single";
  }

  v110 = "no";
  if ((v290 & 0x100000000) != 0)
  {
    v110 = "yes";
  }

  v273 = v110;
  sub_100011BE0("KBChangeSystemSeSecret", @"changing SE bound passcode %s phase, memento_recovery: %s", v103, v104, v105, v106, v107, v108, v109);
  v312 = sub_100018A0C(65000, &v301, __n, v111, v112, v113, v114, v115);
  LODWORD(v286) = BYTE4(v290) & 1;
  v287 = v294;
  v285 = a4;
  if (!v312)
  {
    sub_100011BE0("KBChangeSystemSeSecret", @"CreateSession() failed", v116, v117, v118, v119, v120, v121, v270);
    v95 = 0;
    LODWORD(v136) = 0;
    LODWORD(v92) = 0;
    v128 = 0;
    Length = -1;
    v94 = 0x200000000000000;
LABEL_167:
    LOBYTE(v151) = 1;
LABEL_170:
    v226 = 1;
    goto LABEL_111;
  }

  v128 = sub_10000D71C();
  if (!v128)
  {
    sub_100011BE0("KBChangeSystemSeSecret", @"failed to derive SE passcode", v122, v123, v124, v125, v126, v127, v270);
    v95 = 0;
    LODWORD(v136) = 0;
    sub_10000D8D4();
LABEL_188:
    LOBYTE(v151) = 1;
    goto LABEL_189;
  }

  v129 = sub_100019440(&v312, &v307, &v304, v305, &v306);
  v136 = HIDWORD(v129);
  if (v129 || v136 != 36864)
  {
    sub_100011BE0("KBChangeSystemSeSecret", @"SeshatGetData() failed", v130, v131, v132, v133, v134, v135, v270);
    sub_100001AF4();
    v94 = 0x300000000000000;
    goto LABEL_167;
  }

  v94 = 0;
  v144 = sub_100021A38(v307);
  v151 = v144;
  if (v144 >= 0xA)
  {
    sub_100011BE0("KBChangeSystemSeSecret", @"unexpected slot %d", v145, v146, v147, v148, v149, v150, v144);
    sub_100001AF4();
    v94 = 0x400000000000000;
    LODWORD(v136) = 36864;
    goto LABEL_167;
  }

  sub_10000D8F4();
  if (aks_verify_password_with_opts())
  {
    sub_100011BE0("KBChangeSystemSeSecret", @"cant verify passcode(acm:%d,memento:%d) 0x%x", v152, v153, v154, v155, v156, v157, (BYTE4(v290) & 4) >> 2);
    v95 = 0;
    sub_10000D8D4();
    LODWORD(v136) = 36864;
    goto LABEL_188;
  }

  v158 = sub_100018F5C(&v312, v151, -18, 0, &v308, &v306);
  v136 = HIDWORD(v158);
  if (v158 || v136 != 36864)
  {
    sub_100011BE0("KBChangeSystemSeSecret", @"allocateSlot() -> 0x%x:0x%x", v160, v161, v162, v163, v164, v165, v158);
    sub_100001AF4();
    v94 = 0x600000000000000;
    LOBYTE(v151) = 1;
    goto LABEL_170;
  }

  if (!v308)
  {
    v266 = @"no reset token returned";
LABEL_184:
    sub_100011BE0("KBChangeSystemSeSecret", v266, v160, v161, v162, v163, v164, v165, v270);
    goto LABEL_185;
  }

  v166 = sub_10000D900(&v312, v159, v160, &v311, v162, v163, v164, v165, v270, v273, v275, v277, v62, 0, 0, (*&Length & 0x20000uLL) >> 17, v283, a4, v92, v294, v288, v289, v290, v291, a4, v294, v295, v296, v298, v299, __n[0]);
  v136 = HIDWORD(v166);
  if (v166 || v136 != 36864)
  {
    sub_100011BE0("KBChangeSystemSeSecret", @"derive() -> 0x%x:0x%x", v168, v169, v170, v171, v172, v173, v166);
LABEL_174:
    LOBYTE(v151) = 0;
    sub_100001AF4();
    v94 = 0x700000000000000;
LABEL_177:
    v226 = 1;
    goto LABEL_111;
  }

  v174 = sub_10000D900(&v312, v167, v168, &v310, v170, v171, v172, v173, v271, v274, v276, v278, v279, v280, v281, v282, v284, v285, v286, v287, v288, v289, v290, v291, v293, v294, v295, v297, v298, v299, __n[0]);
  v136 = HIDWORD(v174);
  if (v174 || v136 != 36864)
  {
    sub_100011BE0("KBChangeSystemSeSecret", @"derive2() -> 0x%x:0x%x", v175, v176, v177, v178, v179, v180, v174);
    goto LABEL_174;
  }

  if (!CFEqual(v311, v310))
  {
    sub_100011BE0("KBChangeSystemSeSecret", @"se-sec comparisson failed", v181, v182, v183, v184, v185, v186, v272);
    LOBYTE(v151) = 0;
    sub_100001AF4();
    v94 = 0x900000000000000;
    v226 = 1;
    goto LABEL_110;
  }

  v187 = sub_1000216C8(&v312);
  v136 = HIDWORD(v187);
  if (v187 || v136 != 36864)
  {
    sub_100011BE0("KBChangeSystemSeSecret", @"resetCounter() -> 0x%x:0x%x", v188, v189, v190, v191, v192, v193, v187);
    LOBYTE(v151) = 0;
    sub_100001AF4();
    v94 = 0x800000000000000;
    goto LABEL_177;
  }

  if (v311)
  {
    CFDataGetBytePtr(v311);
    v95 = v294;
    v94 = v288;
    if (v311)
    {
      Length = CFDataGetLength(v311);
    }

    else
    {
      Length = 0;
    }
  }

  else
  {
    Length = 0;
    v95 = v294;
    v94 = v288;
  }

  v194 = v308;
  if (v308)
  {
    CFDataGetBytePtr(v308);
    v194 = v308;
    if (v308)
    {
      v194 = CFDataGetLength(v308);
    }
  }

  v269 = v194;
  v195 = aks_change_secret_opts();
  if (v195)
  {
    sub_100011BE0("KBChangeSystemSeSecret", @"change passcode: %x", v160, v161, v162, v163, v164, v165, v195);
LABEL_185:
    sub_10000D8B8();
    sub_10000D8D4();
    goto LABEL_186;
  }

  if (v94)
  {
    v302 = -1;
    v196 = sub_10001BDB8(-1, "/private/var/", v289, 1, 0);
    v94 = v295;
    v203 = v287;
    if (v196)
    {
      goto LABEL_179;
    }

    goto LABEL_103;
  }

  v94 = v295;
  v203 = v287;
  if (v302 == -1)
  {
    LOBYTE(v270) = -1;
    v266 = @"temp handle is invalid: %d";
    goto LABEL_184;
  }

  v196 = sub_10001BDB8(v302, "/private/var/", v289, 1, 0);
  if (!v196)
  {
    sub_10000D8F4();
    v204 = aks_set_system_with_opts();
    if (!v204)
    {
LABEL_103:
      sub_10000D8F4();
      v211 = aks_change_secret_epilogue_with_opts();
      if (v211)
      {
        Length = v211;
        sub_100011BE0("KBChangeSystemSeSecret", @"aks_change_secret_epilogue() failed %x", v212, v213, v214, v215, v216, v217, v211);
        sub_10000D8B8();
        v94 = 0;
        v226 = 1;
        LODWORD(v136) = 36864;
        LODWORD(v92) = 1;
        goto LABEL_111;
      }

      if (v304 != 238)
      {
        v218 = sub_1000217EC(&v312);
        v136 = HIDWORD(v218);
        if (v218 || v136 != 36864)
        {
          sub_100011BE0("KBChangeSystemSeSecret", @"AuthorizeUpdate() -> 0x%x:0x%x", v219, v220, v221, v222, v223, v224, v218);
          sub_10000D8B8();
          v226 = 0;
          LODWORD(v92) = 0;
          Length = 0;
          v94 = 0xA00000000000000;
          goto LABEL_111;
        }
      }

      v313[0] = 0;
      if (sub_10001DCB0(0xFFFFFFFFLL, v151, v308, &v312, v94, v203, v93 != 0, v313))
      {
        v257 = v313[0];
        sub_10001D6D8(v313[0], 2);
        v298 = v257;
        sub_10000E458(&v298, v258, v259, v260, v261, v262, v263, v264, v269);
      }

      sub_10000D8B8();
      v226 = 0;
      v94 = 0;
      Length = 0;
      LODWORD(v92) = 1;
LABEL_110:
      LODWORD(v136) = 36864;
      goto LABEL_111;
    }

    sub_100011BE0("KBChangeSystemSeSecret", @"set-system failed %d", v205, v206, v207, v208, v209, v210, v204);
    LOBYTE(v151) = 0;
    sub_10000D8D4();
    LODWORD(v136) = 36864;
    v95 = 1;
LABEL_189:
    v226 = 1;
    goto LABEL_190;
  }

LABEL_179:
  Length = v196;
  sub_100011BE0("KBChangeSystemSeSecret", @"unable to save bag %d", v197, v198, v199, v200, v201, v202, v302);
  sub_10000D8B8();
  v94 = 0;
LABEL_186:
  v226 = 1;
  LODWORD(v136) = 36864;
LABEL_190:
  LODWORD(v92) = 1;
LABEL_111:
  if (v307)
  {
    CFRelease(v307);
  }

  if (v312)
  {
    v227 = v151;
  }

  else
  {
    v227 = 1;
  }

  if (v227)
  {
    if (!v312)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

  sub_10001DA48(&v312);
  if (v312)
  {
LABEL_118:
    sub_1000213DC(&v312, v225, v138, v139, v140, v141, v142, v143, v269);
  }

LABEL_119:
  if (v311)
  {
    CFRelease(v311);
  }

  if (v310)
  {
    CFRelease(v310);
  }

  if (v128)
  {
    CFRelease(v128);
  }

  if (v309)
  {
    CFRelease(v309);
  }

  if (v308)
  {
    CFRelease(v308);
  }

  v228 = v288;
  if (v302 == -1)
  {
    v228 = 1;
  }

  if ((v228 & 1) == 0)
  {
    aks_unload_bag();
  }

  if (v95 && sub_10001BDB8(-1, "/private/var/", v289, 1, 1))
  {
    sub_100011BE0("KBChangeSystemSeSecret", @"welp, unable to persist old bag", v138, v139, v140, v141, v142, v143, v269);
  }

  if (((v286 | v92) & 1) == 0)
  {
    sub_1000196BC(v136, v225, v138, v139, v140, v141, v142, v143);
    v298 = (v136 << 40) | (v301 << 6) | v94 | 8;
    sub_10000E6C8(&v298, v229, v230, v231, v232, v233, v234, v235, v269);
    sub_100011BE0("KBChangeSystemSeSecret", @"SE failed, trying soft recovery (%d)", v236, v237, v238, v239, v240, v241, v226);
    sub_10000D8F4();
    if (v226)
    {
      v242 = aks_se_recover_with_opts();
      if (!v242)
      {
        sub_10001DA48(0);
        Length = sub_10001C3B8(-1, 0, v291, v285, v295, v287, v289, HIDWORD(v290));
        goto LABEL_142;
      }

      goto LABEL_141;
    }

    v242 = aks_se_recover_with_opts();
    if (v242)
    {
LABEL_141:
      sub_100011BE0("KBChangeSystemSeSecret", @"soft recovery failed 0x%x", v243, v244, v245, v246, v247, v248, v242);
      Length = -1;
      goto LABEL_142;
    }

    sub_10001DA48(0);
    Length = 0;
  }

LABEL_142:
  v137 = v294;
  if (Length)
  {
    v265 = @"Failed to change pw";
LABEL_162:
    sub_100011BE0("KBChangeSystemSecret", v265, v138, v139, v140, v141, v142, v143, v269);
    return 0xFFFFFFFFLL;
  }

LABEL_143:
  if (v137)
  {
    sub_100003A20();
  }

  return 0;
}

uint64_t sub_10001F380(CFStringRef theString1, unsigned int a2, uint64_t a3)
{
  valuePtr = a3;
  if (!theString1 || a2 && arc4random() % a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = sub_10001F73C(theString1);
  v81 = v4;
  if (v4 == -1)
  {
    v75 = @"unsupported key";
LABEL_32:
    sub_100011BE0("analytics_persist_event", v75, v5, v6, v7, v8, v9, v10, v79);
    return 0xFFFFFFFFLL;
  }

  Mutable = sub_10001F7A4();
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      v75 = @"Can't create dict";
      goto LABEL_32;
    }
  }

  v12 = Mutable;
  Value = CFDictionaryGetValue(Mutable, @"DATA");
  if (Value)
  {
    v14 = Value;
    v15 = CFGetTypeID(Value);
    if (v15 != CFArrayGetTypeID())
    {
      v76 = @"wrong type";
      goto LABEL_44;
    }

    v22 = kCFAllocatorDefault;
    MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v14);
  }

  else
  {
    v22 = kCFAllocatorDefault;
    MutableCopy = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  }

  v24 = MutableCopy;
  if (!MutableCopy)
  {
    v76 = @"unable to allocate array";
LABEL_44:
    sub_100011BE0("analytics_persist_event", v76, v16, v17, v18, v19, v20, v21, v79);
    v77 = v12;
    goto LABEL_45;
  }

  v25 = CFNumberCreate(v22, kCFNumberSInt64Type, &valuePtr);
  if (!v25)
  {
    sub_100011BE0("analytics_persist_event", @"unable to allocate", v26, v27, v28, v29, v30, v31, v79);
    CFRelease(v12);
    v77 = v24;
LABEL_45:
    CFRelease(v77);
    return 0xFFFFFFFFLL;
  }

  v32 = v25;
  v39 = CFNumberCreate(v22, kCFNumberSInt64Type, &v81);
  if (v39)
  {
    v40 = CFArrayCreateMutable(v22, 0, &kCFTypeArrayCallBacks);
    v41 = v40;
    if (v40)
    {
      CFArrayAppendValue(v40, v39);
      CFArrayAppendValue(v41, v32);
      CFArrayAppendValue(v24, v41);
      if (CFArrayGetCount(v24) >= 6)
      {
        sub_100011BE0("analytics_persist_event", @"at capacity, discarding oldest data entry", v42, v43, v44, v45, v46, v47, v79);
        CFArrayRemoveValueAtIndex(v24, 0);
      }

      CFDictionarySetValue(v12, @"DATA", v24);
      v80 = 0;
      v48 = CFNumberCreate(v22, kCFNumberSInt32Type, &v80);
      if (v48)
      {
        v49 = v48;
        CFDictionarySetValue(v12, @"VERS", v48);
        v50 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
        v51 = sub_100001C74(v12);
        if (v51)
        {
          v58 = v51;
          v59 = IORegistryEntrySetCFProperty(v50, @"mkb-reports", v51);
          v66 = v59 == 0;
          if (v59)
          {
            sub_100011BE0("SetPersistedReports", @"cant set", v60, v61, v62, v63, v64, v65, v79);
          }

          CFRelease(v58);
          if (!v50)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_100011BE0("SetPersistedReports", @"Can't serialize dictionary", v52, v53, v54, v55, v56, v57, v79);
          v66 = 0;
          if (!v50)
          {
            goto LABEL_23;
          }
        }

        IOObjectRelease(v50);
LABEL_23:
        if (v66)
        {
          v73 = 0;
        }

        else
        {
          sub_100011BE0("analytics_persist_event", @"failed to persist dict", v67, v68, v69, v70, v71, v72, v79);
          v73 = 0xFFFFFFFFLL;
        }

        CFRelease(v49);
        CFRelease(v12);
        CFRelease(v32);
        goto LABEL_26;
      }

      v78 = @"cant allocate mem";
    }

    else
    {
      v78 = @"cant allocate";
    }
  }

  else
  {
    v41 = 0;
    v78 = @"unable to allocate";
  }

  sub_100011BE0("analytics_persist_event", v78, v33, v34, v35, v36, v37, v38, v79);
  CFRelease(v12);
  CFRelease(v32);
  v73 = 0xFFFFFFFFLL;
  if (v39)
  {
LABEL_26:
    CFRelease(v39);
  }

  CFRelease(v24);
  if (v41)
  {
    CFRelease(v41);
  }

  return v73;
}

uint64_t sub_10001F73C(CFStringRef theString1)
{
  if (!theString1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  for (i = &off_10003D1B0; !*i || CFStringCompare(theString1, *i, 1uLL); i += 2)
  {
    if (++v2 == 4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

const __CFDictionary *sub_10001F7A4()
{
  v0 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"mkb-reports", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    IOObjectRelease(v1);
    return 0;
  }

  v3 = CFProperty;
  BytePtr = CFDataGetBytePtr(CFProperty);
  Length = CFDataGetLength(v3);
  v6 = sub_100001878(BytePtr, Length);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(v6, @"VERS");
  if (!Value)
  {
    v28 = @"no version";
LABEL_22:
    sub_100011BE0("analytics_persistance_validate_dict", v28, v9, v10, v11, v12, v13, v14, v36);
LABEL_23:
    CFRelease(v7);
    sub_100011BE0("CopyPersistedReports", @"invalid dict", v29, v30, v31, v32, v33, v34, v37);
    v7 = 0;
    goto LABEL_24;
  }

  v15 = Value;
  v16 = CFGetTypeID(Value);
  if (v16 != CFNumberGetTypeID())
  {
    v28 = @"version is of wrong type";
    goto LABEL_22;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(v15, kCFNumberSInt32Type, &valuePtr))
  {
    v28 = @"invalid version format";
    goto LABEL_22;
  }

  if (valuePtr)
  {
    sub_100011BE0("analytics_persistance_validate_dict", @"non-current version %d", v9, v10, v11, v12, v13, v14, valuePtr);
    goto LABEL_23;
  }

  v17 = CFDictionaryGetValue(v7, @"DATA");
  if (!v17)
  {
    v28 = @"no data";
    goto LABEL_22;
  }

  v18 = v17;
  v19 = CFGetTypeID(v17);
  if (v19 != CFArrayGetTypeID())
  {
    v28 = @"data is of wrong type";
    goto LABEL_22;
  }

  if (CFArrayGetCount(v18) > 5)
  {
    v28 = @"too many entries";
    goto LABEL_22;
  }

  if (CFArrayGetCount(v18) >= 1)
  {
    v20 = 0;
    while (2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v18, v20);
      v22 = CFGetTypeID(ValueAtIndex);
      if (v22 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(ValueAtIndex) == 2)
        {
          v23 = 0;
          v24 = 1;
          do
          {
            v25 = v24;
            v26 = CFArrayGetValueAtIndex(ValueAtIndex, v23);
            if (!v26 || (v27 = CFGetTypeID(v26), v27 != CFNumberGetTypeID()))
            {
              v36 = v23;
              v28 = @"sub%d is of wrong type";
              goto LABEL_22;
            }

            v24 = 0;
            v23 = 1;
          }

          while ((v25 & 1) != 0);
          if (CFArrayGetCount(v18) > ++v20)
          {
            continue;
          }

          break;
        }

        v28 = @"sub has unexpected number of data";
      }

      else
      {
        v28 = @"sub is of wrong type";
      }

      goto LABEL_22;
    }
  }

LABEL_24:
  IOObjectRelease(v1);
  CFRelease(v3);
  return v7;
}

uint64_t sub_10001FA88(uint64_t a1)
{
  v19 = 0;
  valuePtr = 0;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = sub_10001F7A4();
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  Value = CFDictionaryGetValue(v2, @"DATA");
  if (Value)
  {
    v11 = Value;
    if (CFArrayGetCount(Value) >= 1)
    {
      v12 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
        v14 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
        CFNumberGetValue(v14, kCFNumberSInt64Type, &v19);
        v15 = CFArrayGetValueAtIndex(ValueAtIndex, 1);
        CFNumberGetValue(v15, kCFNumberSInt64Type, &valuePtr);
        if (v19 <= 3)
        {
          v16 = *(&off_10003D1B0 + 2 * v19);
          if (v16)
          {
            (*(a1 + 16))(a1, v16, 1, 0, valuePtr);
          }
        }

        ++v12;
      }

      while (CFArrayGetCount(v11) > v12);
    }

    v17 = 0;
  }

  else
  {
    sub_100011BE0("analytics_iterate_persisted_eventsWithBlock", @"no data", v5, v6, v7, v8, v9, v10, v19);
    v17 = 0xFFFFFFFFLL;
  }

  CFRelease(v3);
  return v17;
}

uint64_t sub_10001FBC0(uint64_t a1)
{
  if (sub_10001FA88(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  v8 = IORegistryEntrySetCFProperty(v1, @"IONVRAM-DELETE-PROPERTY", @"mkb-reports");
  if (v8)
  {
    sub_100011BE0("DeletePersistedReports", @"cant delete", v2, v3, v4, v5, v6, v7, v10);
    if (!v1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v1)
  {
LABEL_4:
    IOObjectRelease(v1);
  }

LABEL_5:
  if (!v8)
  {
    return 0;
  }

  sub_100011BE0("analytics_submit_persisted_eventsWithBlock", @"cant delete", v2, v3, v4, v5, v6, v7, v10);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10001FC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (a1)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = sub_10000D920;
    v12[3] = &unk_100034FD8;
    v12[4] = &v13;
    v12[5] = a1;
    sub_10001FA88(v12);
    v9 = *(v14 + 24);
  }

  sub_100011BE0("analytics_is_event_persisted", @"event %@ is already persisted: %d", a3, a4, a5, a6, a7, a8, v8);
  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v10;
}

int sub_10001FD48(id a1, __CFString *a2, BOOL a3, int a4, int64_t a5)
{
  v6 = a3;
  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  sub_100011BE0("analytics_submit_persisted_events_block_invoke", @"persisted-report-submit %s:%llx", v9, v10, v11, v12, v13, v14, CStringPtr);
  v15 = sub_10001F73C(a2);
  if (v15 <= 3)
  {
    (*(&off_10003D1B0 + 2 * v15 + 1))(a5);
  }

  return sub_10001FECC(a2, v6, 0);
}

uint64_t sub_10001FECC(uint64_t a1, int a2, unsigned int a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (&_ADClientSetValueForScalarKey && &_ADClientAddValueForScalarKey)
  {
    if (a3 && arc4random() % a3)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      if (a2)
      {
        ADClientSetValueForScalarKey();
      }

      else
      {
        ADClientAddValueForScalarKey();
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10001FF64(const __CFData *a1, uint64_t a2, uint64_t a3, char a4, CFDataRef *a5, int a6)
{
  v6 = 0xFFFFFFFFLL;
  if (a1)
  {
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    bag = aks_load_bag();
    if (bag)
    {
      sub_100011BE0("register_backup_bag", @"Can't read OTA Backup bag: %x.", v12, v13, v14, v15, v16, v17, bag);
      return 0xFFFFFFFFLL;
    }

    if (a4)
    {
      return 0xFFFFFFFFLL;
    }

    if (aks_set_backup_bag())
    {
      sub_100011BE0("register_backup_bag", @"Can't register OTA Backup bag with AppleKeyStore(acm:%d): %x.", v18, v19, v20, v21, v22, v23, 0);
      return 0xFFFFFFFFLL;
    }

    if (a5)
    {
      *a5 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, 0, 0, kCFAllocatorDefault);
    }

    if (a6)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100011F94;
      block[3] = &unk_1000352F8;
      block[4] = &unk_10003D390;
      dispatch_sync(qword_10003D388, block);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1000200EC(const __CFData *a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  if (CFDataGetLength(a1) == 16)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100013480;
    block[3] = &unk_1000354F8;
    block[4] = &v18;
    block[5] = a1;
    block[6] = a2;
    block[7] = a3;
    dispatch_sync(qword_10003D388, block);
    if (v19[3])
    {
      v13 = ++dword_10003D380;
    }

    else
    {
      v13 = dword_10003D380;
      ++dword_10003D384;
    }

    if (v13 >= 64)
    {
      v22 = v13;
      sub_10000F19C(&v22, v6, v7, v8, v9, v10, v11, v12, v16);
      dword_10003D380 = 0;
    }

    if (dword_10003D384 >= 64)
    {
      v22 = dword_10003D384;
      sub_10000F2C0(&v22, v6, v7, v8, v9, v10, v11, v12, v16);
      dword_10003D384 = 0;
    }
  }

  v14 = v19[3];
  _Block_object_dispose(&v18, 8);
  return v14;
}

uint64_t sub_10002022C(const __CFData *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = -1;
  if (CFDataGetLength(a1) == 16)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = sub_100013B48;
    v4[3] = &unk_100035570;
    v4[4] = &v5;
    v4[5] = a1;
    dispatch_sync(qword_10003D2A0, v4);
  }

  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1000202EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (sub_10001FC68(@"com.apple.mobile.keybagd.forgotten_passcode", a2, a3, a4, a5, a6, a7, a8))
  {

    sub_100011BE0("keybagd_forgottenPasscodeEvent_block_invoke", @"event already persisted", v10, v11, v12, v13, v14, v15, a9);
  }

  else if (!aks_get_extended_device_state() && !aks_memento_get_state())
  {
    if (aks_get_seconds_since_passcode_change())
    {
      v16 = 60;
    }

    else
    {
      v16 = 0;
    }

    v17 = time(0);
    v18 = *(a1 + 32);
    if (v18)
    {
      if (v17 <= v18)
      {
        v21 = 0;
      }

      else
      {
        sub_100018484();
        if (v20)
        {
          v21 = 236;
        }

        else
        {
          v21 = 4 * (v19 / 0x15180);
        }
      }
    }

    else
    {
      v21 = 240;
    }

    v22 = v21;
    v23 = time(0);
    v24 = *(a1 + 40);
    if (v24)
    {
      if (v23 <= v24)
      {
        v26 = 0;
      }

      else
      {
        sub_100018484();
        if (v20)
        {
          v26 = 60416;
        }

        else
        {
          v26 = (v25 / 0x15180) << 10;
        }
      }
    }

    else
    {
      v26 = 61440;
    }

    if (sub_10001F380(@"com.apple.mobile.keybagd.forgotten_passcode", 0, v16 | ((v22 | v26) << 32)))
    {
      sub_100011BE0("keybagd_forgottenPasscodeEvent_block_invoke", @"analytics_persist_event failed", v27, v28, v29, v30, v31, v32, v33);
    }
  }
}

uint64_t sub_1000204E8(UInt8 *a1, CFIndex a2, int a3)
{
  v62 = 0;
  v63 = &v62;
  v64 = 0x2000000000;
  v65 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2000000000;
  v61 = 0;
  v59 = 0;
  if (sub_10000C768())
  {
    sub_100011BE0("keybagd_SeshatEnroll", @"not enrolling in multiuser", v6, v7, v8, v9, v10, v11, v55);
    goto LABEL_26;
  }

  if (a1)
  {
    v12 = CFDataCreate(kCFAllocatorDefault, a1, a2);
    if (v12)
    {
      v13 = v12;
      if (CFDataGetLength(v12) < 1)
      {
LABEL_23:
        if (CFDataGetLength(v13) >= 1)
        {
          BytePtr = CFDataGetBytePtr(v13);
          Length = CFDataGetLength(v13);
          v53 = CFDataGetLength(v13);
          memset_s(BytePtr, Length, 0, v53);
        }

        CFRelease(v13);
        goto LABEL_26;
      }

      if (!a3)
      {
        v32 = CFDataGetLength(v13);
        MutableCopy = CFDataCreateMutableCopy(0, v32, v13);
        v63[3] = MutableCopy;
LABEL_22:
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_1000157F8;
        block[3] = &unk_100035768;
        v57 = a3;
        block[4] = &v62;
        block[5] = v60;
        block[6] = v59;
        dispatch_async(qword_10003D2A0, block);
        goto LABEL_23;
      }

      if (ACMContextCreate(&v59))
      {
        sub_100011BE0("keybagd_SeshatEnroll", @"failed to create context", v14, v15, v16, v17, v18, v19, v55);
        goto LABEL_23;
      }

      v58[0] = _NSConcreteStackBlock;
      v58[1] = 0x40000000;
      v58[2] = sub_10001577C;
      v58[3] = &unk_100035718;
      v58[4] = &v62;
      ACMContextGetExternalForm(v59, v58);
      v20 = sub_100001B04();
      v21 = CFDataGetLength(v20);
      sub_100011BE0("keybagd_SeshatEnroll", @"secretCopy -> %d bytes", v22, v23, v24, v25, v26, v27, v21);
      v28 = sub_100001B04();
      if (v28)
      {
        v29 = CFDataGetBytePtr(v28);
        v30 = sub_100001B04();
        if (v30)
        {
          v31 = CFDataGetLength(v30);
          goto LABEL_13;
        }
      }

      else
      {
        v29 = 0;
      }

      v31 = 0;
LABEL_13:
      v40 = ACMContextCopyData(a1, a2, v29, v31);
      if (v40)
      {
        sub_100011BE0("keybagd_SeshatEnroll", @"failed to copy context data type %d = %d", v34, v35, v36, v37, v38, v39, 5);
      }

      v41 = sub_100001B04();
      if (v41)
      {
        v42 = CFDataGetBytePtr(v41);
        v43 = sub_100001B04();
        if (v43)
        {
          v44 = CFDataGetLength(v43);
LABEL_20:
          if (ACMContextCopyData(a1, a2, v42, v44))
          {
            sub_100011BE0("keybagd_SeshatEnroll", @"failed to copy context data type %d = %d", v45, v46, v47, v48, v49, v50, 7);
            if (v40)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_22;
        }
      }

      else
      {
        v42 = 0;
      }

      v44 = 0;
      goto LABEL_20;
    }
  }

LABEL_26:
  _Block_object_dispose(v60, 8);
  _Block_object_dispose(&v62, 8);
  return 0;
}

void sub_100020810(id a1)
{
  v5 = 0;
  __endptr = 0;
  __str = 0;
  sub_100012108();
  if (!sub_1000042BC("seshat-debug", &v5, &__str))
  {
    if (__str)
    {
      *__error() = 0;
      v1 = strtoll(__str, &__endptr, 16);
      if (*__str)
      {
        if (!*__endptr)
        {
          v2 = v1;
          if (*__error() != 34)
          {
            fprintf(__stdoutp, "******** setting debug to 0x%llx", v2);
            sub_100019658(v2);
          }
        }
      }
    }
  }

  free(__str);
}

void sub_1000208D0(const __CFDictionary *a1)
{
  if (a1)
  {
    v1 = a1;
    CFRetain(a1);
  }

  else
  {
    v1 = sub_100001398();
    if (!v1)
    {
      return;
    }
  }

  v2 = sub_10001D340(v1);
  if (v2 && CFArrayGetCount(v2) > 13)
  {
    if (sub_10001D024(v1))
    {
      v9 = @"health data contains failures";
    }

    else
    {
      sub_100011F00();
      v10 = aks_se_set_healthy();
      v9 = @"setting healthy indicator 0x%x";
    }
  }

  else
  {
    v9 = @"not enough health data";
  }

  sub_100011BE0("seshat_evaluate_health_plist", v9, v3, v4, v5, v6, v7, v8, v10);

  CFRelease(v1);
}

void sub_1000209A0(id a1)
{
  v62 = 0;
  if (sub_10001D880())
  {
    v7 = sub_100001398();
    if (!v7)
    {
      return;
    }

    v8 = v7;
    v61 = sub_10001D248(v7);
    if (v61)
    {
      if ((sub_10001966C() & 0x80) != 0)
      {
        sub_100011BE0("collect_seshat_health_data", @"skipping interval check", v9, v10, v11, v12, v13, v14, v57);
      }

      else
      {
        v15 = time(0);
        v16 = ctime(&v61);
        sub_100011BE0("collect_seshat_health_data", @"last entry ran = %s", v17, v18, v19, v20, v21, v22, v16);
        if (v15 - 86400 < v61)
        {
          sub_100011BE0("collect_seshat_health_data", @"not enough time has passed since last check (last:%zd, now:%zd)", v23, v24, v25, v26, v27, v28, v61);
LABEL_19:
          CFRelease(v8);
          return;
        }
      }
    }

    CFRelease(v8);
    v29 = sub_100021A88(0, &stru_1000359F8, &v62);
    if (sub_100019710(v29))
    {
      sub_100011BE0("collect_seshat_health_data", @"not recording transient errors in health plist", v30, v31, v32, v33, v34, v35, v57);
      return;
    }

    v36 = sub_100001398();
    if (v36)
    {
      v8 = v36;
      sub_10001D6D8(v29, 0);
      sub_100011BE0("collect_seshat_health_data", @"preflight -> %llx (%llx)", v37, v38, v39, v40, v41, v42, v29);
      v60 = v29;
      sub_10000E458(&v60, v43, v44, v45, v46, v47, v48, v49, v58);
      if (v29 && (v62 & 1) == 0)
      {
        if (sub_10001D094(v8))
        {
          v56 = @"failed to set fail indicator";
          goto LABEL_18;
        }

        sub_100011BE0("collect_seshat_health_data", @"saved failure in plist", v50, v51, v52, v53, v54, v55, v59);
      }

      if (sub_10001D354(v8, v29))
      {
        v56 = @"cant add to data";
      }

      else
      {
        time(0);
        if (sub_10001D2B8(v8))
        {
          v56 = @"cant set time";
        }

        else
        {
          sub_1000208D0(v8);
          if (sub_100001D24(v8))
          {
            goto LABEL_19;
          }

          v56 = @"saved data";
        }
      }

LABEL_18:
      sub_100011BE0("collect_seshat_health_data", v56, v50, v51, v52, v53, v54, v55, v59);
      goto LABEL_19;
    }
  }

  else
  {

    sub_100011BE0("collect_seshat_health_data", @"unsupported", v1, v2, v3, v4, v5, v6, v64);
  }
}

void sub_100020BDC(id a1)
{
  v1 = sub_100001398();
  if (v1)
  {
    v2 = v1;
    v3 = MGCopyAnswer();
    if (v3)
    {
      v10 = v3;
      if (sub_10001CF18(v2, v3))
      {
        sub_100011BE0("keybagd_update_last_unlocked_build_block_invoke", @"cant set build", v11, v12, v13, v14, v15, v16, v17);
      }

      else
      {
        sub_100001D24(v2);
      }

      CFRelease(v10);
    }

    else
    {
      sub_100011BE0("keybagd_update_last_unlocked_build_block_invoke", @"cant query MG", v4, v5, v6, v7, v8, v9, v17);
    }

    CFRelease(v2);
  }
}

void sub_100020CB4(uint64_t a1, const __CFData *a2)
{
  cf = 0;
  *(*(*(a1 + 32) + 8) + 24) = sub_10001FF64(a2, *(a1 + 48), *(a1 + 56), *(a1 + 64), &cf, 1);
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    if (cf)
    {
      sub_1000040A4(cf);
      CFRelease(cf);
    }
  }
}

void sub_100020F20(int a1, int a2)
{
  v2[0] = 67109376;
  v2[1] = a1;
  v3 = 1024;
  v4 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Can't stage SE stash; fail. derive() -> 0x%x:0x%x", v2, 0xEu);
}

void sub_10002109C(const __CFDictionary *a1, _DWORD *a2)
{
  v4 = sub_10001CF04(a1);
  if (v4)
  {
    v5 = MGCopyAnswer();
    if (v5)
    {
      v6 = v5;
      if (CFStringCompare(v5, v4, 0))
      {
        LODWORD(v4) = 2;
      }

      else
      {
        LODWORD(v4) = 1;
      }

      CFRelease(v6);
    }

    else
    {
      LODWORD(v4) = 0;
    }
  }

  *a2 = v4;

  CFRelease(a1);
}

void sub_1000211E0(char *a1, CFDataRef *a2)
{
  v2 = *a1;
  CFDataGetLength(*a2);
  sub_100011BE0("seshat_validate_sanity_block_invoke", @"slot is out of bounds %u >= %zd", v3, v4, v5, v6, v7, v8, v2);
}

void sub_1000213DC(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (sub_100018854())
  {
    if (sub_1000185D0(20))
    {
      dispatch_assert_queue_V2(qword_10003D2A8);
      if (a1)
      {
        v10 = *a1;
        if (*a1)
        {
          [*a1 endSession];

          *a1 = 0;

          sub_100018D78(0, v11, v12, v13, v14, v15, v16, v17, a9);
        }
      }
    }
  }
}

uint64_t sub_10002145C(unint64_t *a1)
{
  v2 = *a1;
  result = sub_100018854();
  if (result)
  {
    result = sub_1000185D0(20);
    if (result)
    {
      result = [sub_100018E70() embeddedSecureElement];
      if (result)
      {
        v4 = result;
        if ([result hwType] == 3)
        {
          v5 = HIWORD(v2) & 0xE7 | (8 * ([objc_msgSend(v4 "sequenceCounter")] > 0x1E9));
          v6 = v5 | (16 * ([objc_msgSend(v4 "sequenceCounter")] > 0x22F));
        }

        else
        {
          v6 = BYTE6(v2) & 0xF7;
        }

        *a1 = v2 & 0xFF00FFFFFFFFFFFFLL | (v6 << 48);
        return 1;
      }
    }
  }

  return result;
}

id sub_10002150C()
{
  if (!sub_100018854() || !sub_1000185D0(20))
  {
    return 0;
  }

  v0 = [sub_100018730() sharedHardwareManager];

  return [v0 preWarm];
}

unint64_t sub_100021558(id *a1, uint64_t a2)
{
  if (sub_100018854() && sub_1000185D0(20))
  {
    dispatch_assert_queue_V2(qword_10003D2A8);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *a1;
    while (1)
    {
      if (v10)
      {
        v37 = xmmword_10002F3D0;
        nanosleep(&v37, 0);
      }

      if (v10 > 2 || v11 == 7)
      {
        sub_100011BE0("SeshatRetry", @"transient error, re-creating session", v4, v5, v6, v7, v8, v9, v37);
        sub_1000213DC(a1, v18, v19, v20, v21, v22, v23, v24, v37);
        v13 = sub_100018A0C(65000, 0, 0, v25, v26, v27, v28, v29);
        *a1 = v13;
        if (!v13)
        {
          break;
        }
      }

      if ((qword_10003D3A8 & 0x400) != 0 && (arc4random() & 0xF) == 0)
      {
        v12 = 0xFFFFLL;
        v11 = 7;
      }

      else
      {
        v15 = (*(a2 + 16))(a2, v13);
        v11 = v15;
        v12 = HIDWORD(v15);
      }

      if (v11)
      {
        v16 = 0;
      }

      else
      {
        v16 = v12 == 36864;
      }

      v17 = !v16;
      if (v10 <= 3)
      {
        ++v10;
        if (v17)
        {
          continue;
        }
      }

      return v11 | (v12 << 32);
    }

    sub_100011BE0("SeshatRetry", @"failed to re-create session", v30, v31, v32, v33, v34, v35, v37);
  }

  else
  {
    v12 = 0xFFFFLL;
    v11 = 6;
  }

  return v11 | (v12 << 32);
}

unint64_t sub_1000216C8(uint64_t *a1)
{
  v2 = 0xFFFF0000000ALL;
  if (a1)
  {
    sub_100019D54(a1);
    if (v10)
    {
      if ((qword_10003D3A8 & 4) == 0)
      {
        v11 = v5;
        v12 = v4;
        v13 = v3;
        if ((qword_10003D3A8 & 0x2000) != 0)
        {
          sub_100011BE0("SeshatResetCounter", @"corrupting reset token", v4, v5, v6, v7, v8, v9, v18);
          Length = CFDataGetLength(v12);
          MutableCopy = CFDataCreateMutableCopy(0, Length, v12);
          v26.location = 0;
          v26.length = 4;
          CFDataReplaceBytes(MutableCopy, v26, "0000", 4);
          v12 = MutableCopy;
        }

        else
        {
          MutableCopy = 0;
        }

        v16 = objc_autoreleasePoolPush();
        sub_100001B10();
        v20 = 3221225472;
        v21 = sub_1000193F4;
        v22 = &unk_100035AF0;
        v25 = v13;
        v23 = v12;
        v24 = v11;
        v2 = sub_100021558(v1, v19);
        objc_autoreleasePoolPop(v16);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }
    }
  }

  return v2;
}

unint64_t sub_1000217EC(uint64_t *a1)
{
  v2 = 0xFFFF0000000ALL;
  if (a1)
  {
    if ((qword_10003D3A8 & 8) == 0)
    {
      sub_100019D54(a1);
      if (v7)
      {
        v8 = v6;
        v9 = v5;
        v10 = v4;
        v11 = v3;
        v12 = objc_autoreleasePoolPush();
        sub_100001B10();
        v15 = 3221225472;
        v16 = sub_100019404;
        v17 = &unk_100035B10;
        v20 = v11;
        v21 = v10;
        v18 = v9;
        v19 = v8;
        v2 = sub_100021558(v1, v14);
        objc_autoreleasePoolPop(v12);
      }
    }
  }

  return v2;
}

unint64_t sub_1000218B4(uint64_t *a1)
{
  v2 = 0xFFFF0000000ALL;
  if (a1)
  {
    sub_100019D54(a1);
    if (v5)
    {
      if ((qword_10003D3A8 & 0x10) == 0)
      {
        v6 = v4;
        v7 = v3;
        v8 = objc_autoreleasePoolPush();
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100019420;
        v10[3] = &unk_100035B30;
        v11 = v7;
        v10[4] = v6;
        v2 = sub_100021558(v1, v10);
        objc_autoreleasePoolPop(v8);
      }
    }
  }

  return v2;
}

unint64_t sub_100021980(uint64_t *a1)
{
  v2 = 0xFFFF0000000ALL;
  if (a1)
  {
    if ((qword_10003D3A8 & 0x1000) == 0)
    {
      sub_100019D54(a1);
      if (v6)
      {
        v7 = v5;
        v8 = v4;
        v9 = v3;
        v10 = objc_autoreleasePoolPush();
        sub_100001B10();
        v13 = 3221225472;
        v14 = sub_100019430;
        v15 = &unk_100035AF0;
        v18 = v9;
        v16 = v8;
        v17 = v7;
        v2 = sub_100021558(v1, v12);
        objc_autoreleasePoolPop(v10);
      }
    }
  }

  return v2;
}

uint64_t sub_100021A38(CFDataRef theData)
{
  if (theData)
  {
    v2 = 0;
    while (CFDataGetBytePtr(theData)[v2] != 238)
    {
      if (++v2 == 10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LOBYTE(v2) = -1;
  }

  return v2;
}

uint64_t sub_100021A88(int a1, uint64_t a2, _BYTE *a3)
{
  v182 = 0;
  v183 = 0;
  v180 = 0;
  v181 = 0;
  v178 = 0;
  cf = 0;
  v177 = -1;
  v173 = 0;
  v174 = 0;
  v171 = 0;
  HIBYTE(v170) = 0;
  v168 = 0;
  v169 = 0;
  v11 = CFDataCreate(0, byte_10003D258, 32);
  if (a1)
  {
    v123 = sub_1000195B0();
    if ((sub_10002212C() & 1) == 0)
    {
      if (v123)
      {
        sub_100019D48();
        v32 = 1;
        goto LABEL_64;
      }
    }
  }

  v12 = sub_100018A0C(65000, &v170 + 7, &v168, v6, v7, v8, v9, v10);
  v171 = v12;
  if (!v12)
  {
    LOWORD(v29) = 0;
    sub_100019D48();
    v40 = 0x200000000000000;
    v32 = 2;
    goto LABEL_63;
  }

  if (a2)
  {
    v12 = (*(a2 + 16))(a2, v12);
    if ((v12 & 1) == 0)
    {
      sub_100011BE0("SeshatPreflightCheck", @"unsatisfactory condition for preflight", v14, v15, v16, v17, v18, v19, v132);
      sub_100019D48();
      v32 = 14;
      goto LABEL_64;
    }
  }

  v20 = sub_100019CFC(v12, v13, v14, v15, v16, v17, v18, v19, v132, v134, v145, v155, v166, v167, v168, v169, v170, v171, v172, v173, SHIWORD(v173), v174, SHIWORD(v174), v175, v176, v177);
  v28 = v20;
  v29 = HIDWORD(v20);
  if (v20 || v29 != 36864)
  {
    if (HIDWORD(v20) == 27266)
    {
      sub_100011BE0("SeshatPreflightCheck", @"no seshat applet", v22, v23, v24, v25, v26, v27, v133);
      v41 = 13;
    }

    else if (HIDWORD(v20) == 26277)
    {
      sub_100011BE0("SeshatPreflightCheck", @"restricted mode", v22, v23, v24, v25, v26, v27, v133);
      v41 = 12;
    }

    else
    {
      sub_100011BE0("SeshatPreflightCheck", @"unknown getData() -> 0x%x:0x%x", v22, v23, v24, v25, v26, v27, v20);
      v41 = 3;
    }

    LODWORD(a3) = 0;
    v32 = (v28 << 8) | (v29 << 16) | v41;
    goto LABEL_62;
  }

  v167 = 1000 * ((v173 + 999) / 0x3E8);
  sub_10000EB40(&v167, v21, v22, v23, v24, v25, v26, v27, v133);
  v30 = v180;
  if (!v180)
  {
    sub_100019D48();
LABEL_94:
    v40 = 0x400000000000000;
    v32 = 4;
    goto LABEL_103;
  }

  v31 = 0;
  v32 = 4;
  LOWORD(v29) = -28672;
  while (CFDataGetBytePtr(v30)[v31] != 238)
  {
    if (++v31 == 10)
    {
      sub_100019D48();
      v40 = 0x400000000000000;
      goto LABEL_63;
    }
  }

  if (v31 > 9u)
  {
    LODWORD(a3) = 0;
    goto LABEL_94;
  }

  v32 = 2415919123;
  v135 = v174;
  sub_100011BE0("SeshatPreflightCheck", @"globalWriteCounter = %d, globalWriteCounterLimit = %d, slot = %d\n", v34, v35, v36, v37, v38, v39, v173);
  if (v174 < 0x2711 || v173 >= v174 - 10000)
  {
    LODWORD(a3) = 0;
    v32 = 2415919109;
    v40 = 0x500000000000000;
    goto LABEL_103;
  }

  v44 = sub_100019D3C(v42, v33, v34, v35, v36, v37, v38, v39, v132, v135, v31, v156, v166, v167, v168, v169, v170, v171);
  v46 = sub_100018F5C(v44, v45, 238, 0, &v183, &v173);
  v29 = HIDWORD(v46);
  if (v46 || v29 != 36864)
  {
    LODWORD(a3) = 0;
    sub_100019D30();
    v32 = v128 | 6;
    v40 = 0x600000000000000;
    goto LABEL_63;
  }

  v53 = v183;
  if (!v183)
  {
    sub_100011BE0("SeshatPreflightCheck", @"no reset token returned", v47, v48, v49, v50, v51, v52, v132);
    LODWORD(a3) = 1;
    v40 = 0x600000000000000;
    v32 = 6;
    goto LABEL_103;
  }

  CFRelease(v30);
  v180 = 0;
  v62 = sub_100019CFC(v54, v55, v56, v57, v58, v59, v60, v61, v132, v136, v146, v157, v166, v167, v168, v169, v170, v171, v172, v173, SHIWORD(v173), v174, SHIWORD(v174), v175, v176, v177);
  v29 = HIDWORD(v62);
  if (v62 || v29 != 36864)
  {
LABEL_90:
    sub_100019D30();
    v32 = v126 | 3;
    LODWORD(a3) = 1;
LABEL_62:
    v40 = 0x300000000000000;
LABEL_63:
    v166 = ((v169 << 8) | (HIBYTE(v170) << 6)) & 0xFF0000FFFFFFFFFFLL | (v29 << 40) | v40 | 0x28;
    sub_10000E6C8(&v166, v33, v34, v35, v36, v37, v38, v39, v132);
    goto LABEL_64;
  }

  v63 = v180;
  BytePtr = CFDataGetBytePtr(v180);
  if (BytePtr[v31] != 238 && (BytePtr = CFDataGetBytePtr(v63), BytePtr[v31] < 0))
  {
    v32 = 2415919110;
    LODWORD(a3) = 1;
  }

  else
  {
    v72 = sub_100019D3C(BytePtr, v65, v66, v67, v68, v69, v70, v71, v132, v137, v147, v158, v166, v167, v168, v169, v170, v171);
    v74 = sub_1000190FC(v72, v73, v11, &v182, &v173, &v168);
    v29 = HIDWORD(v74);
    if (v74 || v29 != 36864)
    {
      goto LABEL_88;
    }

    v82 = sub_100019D20(v74, v75, v76, v77, v78, v79, v80, v81, v132, v138, v148, v159, v166, v167, v168, v169, v170, v171);
    v83 = sub_1000216C8(v82);
    v29 = HIDWORD(v83);
    if (v83 || v29 != 36864)
    {
      goto LABEL_89;
    }

    v91 = sub_100019D3C(v83, v84, v85, v86, v87, v88, v89, v90, v132, v139, v149, v160, v166, v167, v168, v169, v170, v171);
    v93 = sub_1000190FC(v91, v92, v11, &v181, &v173, &v168);
    v29 = HIDWORD(v93);
    if (v93 || v29 != 36864)
    {
LABEL_88:
      sub_100019D30();
      v32 = v124 | 7;
      LODWORD(a3) = 1;
      v40 = 0x700000000000000;
      goto LABEL_63;
    }

    v94 = CFEqual(v181, v182);
    if (v94)
    {
      v95 = sub_100019D20(v94, v65, v66, v67, v68, v69, v70, v71, v132, v140, v150, v161, v166, v167, v168, v169, v170, v171);
      v96 = sub_1000216C8(v95);
      v29 = HIDWORD(v96);
      if (!v96 && v29 == 36864)
      {
        v97 = sub_1000217EC(&v171);
        v29 = HIDWORD(v97);
        if (v97 || v29 != 36864 || (v98 = sub_1000217EC(&v171), v29 = HIDWORD(v98), v98) || v29 != 36864)
        {
          sub_100019D30();
          v32 = v127 | 0xA;
          LODWORD(a3) = 1;
          v40 = 0xA00000000000000;
          goto LABEL_63;
        }

        if (a3)
        {
          *a3 |= 1u;
        }

        v99 = sub_100022180(v173, v53, &cf, &v178);
        if (!v99)
        {
          v100 = sub_100019D20(v99, v33, cf, v35, v36, v37, v38, v39, v132, v141, v151, v162, v166, v167, v168, v169, v170, v171);
          v101 = sub_100021980(v100);
          v29 = HIDWORD(v101);
          if (v101 || v29 != 36864)
          {
            sub_100019D30();
            v32 = v129 | 0xF;
            LODWORD(a3) = 1;
            v40 = 0xF00000000000000;
            goto LABEL_63;
          }

          v108 = sub_100019D20(v101, v102, v178, v103, v104, v105, v106, v107, v132, v142, v152, v163, v166, v167, v168, v169, v170, v171);
          v109 = sub_1000216C8(v108);
          v29 = HIDWORD(v109);
          if (v109 || v29 != 36864)
          {
            sub_100019D30();
            v32 = v130 | 0x12;
            LODWORD(a3) = 1;
            v40 = 0x1200000000000000;
            goto LABEL_63;
          }

          if (v63)
          {
            CFRelease(v63);
            v180 = 0;
          }

          v117 = sub_100019CFC(v109, v110, v111, v112, v113, v114, v115, v116, v132, v143, v153, v164, v166, v167, v168, v169, v170, v171, v172, v173, SHIWORD(v173), v174, SHIWORD(v174), v175, v176, v177);
          v29 = HIDWORD(v117);
          if (!v117 && v29 == 36864)
          {
            v118 = v180;
            if (CFDataGetBytePtr(v180)[v31] == 238 || (CFDataGetBytePtr(v118)[v31] & 0x80000000) == 0)
            {
              LODWORD(a3) = 1;
              v40 = 0x1300000000000000;
            }

            else
            {
              v119 = CFDataGetBytePtr(v118);
              if ((v119[v31] & 0x7F) == 0)
              {
                if (a3)
                {
                  *a3 |= 2u;
                }

                v120 = sub_100019D3C(v119, v33, v34, v35, v36, v37, v38, v39, v132, v144, v154, v165, v166, v167, v168, v169, v170, v171);
                v121 = sub_1000218B4(v120);
                v29 = HIDWORD(v121);
                if (!v121 && v29 == 36864)
                {
                  v32 = 0;
                  LODWORD(a3) = 0;
                  goto LABEL_64;
                }

                sub_100019D30();
                v32 = v131 | 0xB;
                LODWORD(a3) = 1;
                v40 = 0xB00000000000000;
                goto LABEL_63;
              }

              v32 = 2415919124;
              LODWORD(a3) = 1;
              v40 = 0x1400000000000000;
            }

            goto LABEL_103;
          }

          goto LABEL_90;
        }

        v32 = 2415919120;
        LODWORD(a3) = 1;
        v40 = 0x1000000000000000;
LABEL_103:
        LOWORD(v29) = -28672;
        goto LABEL_63;
      }

LABEL_89:
      sub_100019D30();
      v32 = v125 | 8;
      LODWORD(a3) = 1;
      v40 = 0x800000000000000;
      goto LABEL_63;
    }

    LODWORD(a3) = 1;
    v32 = 9;
  }

LABEL_64:
  if (v171)
  {
    if (a3)
    {
      sub_1000218B4(&v171);
    }

    sub_1000213DC(&v171, v65, v66, v67, v68, v69, v70, v71, v132);
  }

  if (v183)
  {
    CFRelease(v183);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v181)
  {
    CFRelease(v181);
  }

  if (v180)
  {
    CFRelease(v180);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v178)
  {
    CFRelease(v178);
  }

  return v32;
}

uint64_t sub_10002212C()
{
  if (sub_100018854() && sub_1000185D0(20))
  {
    v0 = [sub_100018E70() embeddedSecureElement];
    if (v0)
    {
      LODWORD(v0) = [v0 isSeshatAvailabledInRestrictedMode];
    }

    v1 = v0 | ((BYTE1(qword_10003D3A8) & 0x40) >> 6);
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t sub_100022180(unsigned int a1, const __CFData *a2, CFDataRef *a3, CFDataRef *a4)
{
  v27 = 0;
  v30 = 0u;
  v29 = 0u;
  v8 = ccec_cp_256();
  v9 = (32 * *v8) | 0x10;
  __chkstk_darwin();
  v11 = &v23[-v10];
  v26[4] = 0;
  *v26 = 2;
  memcpy(__dst, &unk_10002F3E0, sizeof(__dst));
  cczp_bitlen();
  __chkstk_darwin();
  v13 = &v23[-((v12 + 24) & 0x7FFFFFFFFFFFFFF0)];
  v25 = v14;
  v15 = 0xFFFFFFFFLL;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        ccrng();
        if (!v27)
        {
          if (ccec_x963_import_priv())
          {
            return 0xFFFFFFFFLL;
          }

          *&v26[1] = bswap32(a1);
          ccsha256_di();
          ccdigest();
          if (ccec_sign())
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            v16 = *v11;
            v17 = ((cczp_bitlen() + 7) >> 2) | 1;
            v18 = malloc_type_malloc(v17 + 16, 0xF475BCDuLL);
            ccec_x963_export();
            *v18 = *CFDataGetBytePtr(a2);
            v19 = (24 * *v8 + 31) & 0xFFFFFFFFFFFFFFF0;
            __chkstk_darwin();
            ccec_x963_import_pub();
            v24 = 0;
            if (ccec_verify() || (v24 & 1) == 0)
            {
              puts("validation failed");
              v15 = 0xFFFFFFFFLL;
            }

            else
            {
              v20 = CFDataCreate(0, v18, v17 + 16);
              *a3 = v20;
              if (v20)
              {
                v21 = CFDataCreate(0, v13, v25);
                *a4 = v21;
                if (v21)
                {
                  v15 = 0;
                }

                else
                {
                  v15 = 0xFFFFFFFFLL;
                }
              }

              else
              {
                v15 = 0xFFFFFFFFLL;
              }
            }

            if (v18)
            {
              free(v18);
            }
          }
        }
      }
    }
  }

  return v15;
}

void *acm_mem_alloc_data(size_t size)
{
  result = malloc_type_calloc(1uLL, size, 0x7F43DDCBuLL);
  if (result)
  {
    qword_10003D418 += size;
  }

  return result;
}

void acm_mem_free_data(void *a1, rsize_t a2)
{
  if (a1)
  {
    sub_100001B30(a1, a2);
    free(v3);
    v4 = qword_10003D418 - v2;
    if (qword_10003D418 < v2)
    {
      v4 = 0;
    }

    qword_10003D418 = v4;
  }
}

void *acm_mem_alloc_typed(size_t size, malloc_type_id_t type_id)
{
  result = malloc_type_calloc(1uLL, size, type_id);
  if (result)
  {
    qword_10003D420 += size;
  }

  return result;
}

void acm_mem_free(void *a1, rsize_t a2)
{
  if (a1)
  {
    sub_100001B30(a1, a2);
    free(v3);
    v4 = qword_10003D420 - v2;
    if (qword_10003D420 < v2)
    {
      v4 = 0;
    }

    qword_10003D420 = v4;
  }
}

_BYTE *LibCall_BuildCommand(char a1, char a2, char a3, const void *a4, size_t a5, void *a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_BuildCommand");
  }

  v12 = 0;
  if (a5)
  {
    v13 = a4 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13 && a6)
  {
    if (a5 >= 0xFFFFFFFFFFFFFFF8)
    {
      v12 = 0;
    }

    else
    {
      v12 = acm_mem_alloc_data(a5 + 8);
      acm_mem_alloc_info("<data>", v12, a5 + 8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 22, "LibCall_BuildCommand");
      if (v12)
      {
        *a6 = a5 + 8;
        *v12 = 1396920900;
        v12[4] = a1;
        v12[5] = a2;
        v12[6] = a3;
        v12[7] = 2;
        if (a5)
        {
          memcpy(v12 + 8, a4, a5);
        }
      }
    }
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: returning.\n", "ACM", "LibCall_BuildCommand");
  }

  return v12;
}

uint64_t LibCall_ACMContextCreate(uint64_t (*a1)(void), uint64_t a2, void *a3, uint64_t a4, _BYTE *a5, int a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextCreate");
  }

  sub_10001B320();
  if (a1 && a3 && v11)
  {
    v12 = sub_10001B2F0();
    acm_mem_alloc_info("ACMHandleWithPayload", v12, 20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 49, "LibCall_ACMContextCreate");
    if (!v12)
    {
      sub_10001B32C();
      goto LABEL_20;
    }

    memset(v17, 0, sizeof(v17));
    if (a6)
    {
      sub_10001B2D4();
      sub_100001B50();
      v13 = a1();
      if (!v13)
      {
        v6 = 0;
LABEL_16:
        *v12 = *v17;
        v12[4] = 0;
        *a3 = v12;
        if (a5)
        {
          *a5 = 0;
        }

LABEL_18:
        if (!v6)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v6 = v13;
      if (v13 != -3)
      {
LABEL_19:
        acm_mem_free_info("ACMHandleWithPayload", v12, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 89, "LibCall_ACMContextCreate");
        acm_mem_free(v12, 0x14uLL);
        goto LABEL_20;
      }
    }

    sub_10001B2D4();
    sub_100001B50();
    v14 = a1();
    if (v14)
    {
      v6 = v14;
    }

    else
    {
      v6 = 0;
    }

    if (v14)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_20:
  sub_10001B314();
  if (v15)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextCreate", v6);
  }

  return v6;
}

uint64_t LibCall_ACMContextCopyData(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  sub_10001B2E4();
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextCopyData");
  }

  v11 = 4294967293;
  if (a3)
  {
    if (a4 == 16)
    {
      v11 = 4294967293;
      if (a5)
      {
        if (a6 == 16)
        {
          v17 = *a3;
          v18 = *a5;
          sub_10001B2BC();
          v11 = v6();
        }
      }
    }
  }

  sub_10001B2B0();
  if (v12)
  {
    sub_10001B2C8();
    printf("%s: %s: returning, err = %ld.\n", v14, v15, v16);
  }

  return v11;
}