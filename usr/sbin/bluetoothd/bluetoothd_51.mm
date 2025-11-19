BOOL sub_10034F3EC(uint64_t a1, uint64_t *a2, void *a3, CFStringRef theString2, const __CFString *a5)
{
  v8 = sub_10034F4E8(a1, theString2);
  *a2 = v8;
  if (v8)
  {
    if (CFStringCompare(a5, *(v8 + 144), 0))
    {
      result = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_10081D43C();
        return 0;
      }
    }

    else
    {
      v10 = **a2;
      *a3 = v10;
      if (v10)
      {
        return 1;
      }

      else
      {
        result = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR);
        if (result)
        {
          sub_10081D4B8();
          return 0;
        }
      }
    }
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10081D528();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10034F4E8(uint64_t a1, CFStringRef theString2)
{
  if (theString2)
  {
    v4 = *(a1 + 336);
    for (i = *(a1 + 344); v4 != i; ++v4)
    {
      v6 = *v4;
      if (*v4)
      {
        v7 = *(v6 + 128);
        if (v7)
        {
          if (CFStringCompare(v7, theString2, 0) == kCFCompareEqualTo)
          {
            return v6;
          }

          i = *(a1 + 344);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10034F55C(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFData *a4)
{
  v8 = *(a1 + 32);
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, v8 + 360);
  v9 = sub_10034F4E8(v8, a2);
  if (v9)
  {
    v10 = *v9;
    if (*v9)
    {
      if (CFStringCompare(a3, *(v9 + 136), 0))
      {
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081D598();
        }
      }

      else
      {
        v19 = 0;
        sub_1000216B4(&v19);
        Length = CFDataGetLength(a4);
        BytePtr = CFDataGetBytePtr(a4);
        v13 = sub_100189814((v10 + 128), Length, BytePtr);
        sub_100022214(&v19);
        v14 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(*(a1 + 40), __p);
          v15 = v18 >= 0 ? __p : __p[0];
          *buf = 136446466;
          v22 = v15;
          v23 = 1024;
          v24 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware auth data: Data sent to device %{public}s, status %d", buf, 0x12u);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10002249C(&v19);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081D610();
  }

  return sub_1000088CC(v20);
}

void sub_10034F744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_10002249C(&a15);
  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10034F77C(uint64_t a1, const __CFString *a2, const __CFString *a3, const __CFData *a4)
{
  v7 = *(a1 + 32);
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, v7 + 360);
  v8 = sub_10034F4E8(v7, a2);
  v9 = v8;
  if (v8)
  {
    v10 = *v8;
    if (*v8)
    {
      v11 = sub_10034F9F0(v7, a2, a3);
      v12 = v11;
      if (v11 <= 0x1F && (v13 = v9[v11 + 20]) != 0 && *(v13 + 88))
      {
        if (*(v13 + 97))
        {
          Length = CFDataGetLength(a4);
          CFDataGetBytePtr(a4);
          sub_10034FA68(v9, v12, Length);
          return sub_1000088CC(v22);
        }

        v15 = qword_100BCE8C0;
        if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          return sub_1000088CC(v22);
        }

        sub_1000E5A58(v10, __p);
        if (v21 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        *buf = 136446722;
        v24 = v17;
        v25 = 2112;
        v26 = a3;
        v27 = 1024;
        v28 = v12;
        v18 = "publishAccRemoteFirmware EA data: EA session currently closed on device %{public}s for endpoint %@ index %d";
      }

      else
      {
        v15 = qword_100BCE8C0;
        if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          return sub_1000088CC(v22);
        }

        sub_1000E5A58(v10, __p);
        if (v21 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = __p[0];
        }

        *buf = 136446722;
        v24 = v19;
        v25 = 2112;
        v26 = a3;
        v27 = 1024;
        v28 = v12;
        v18 = "publishAccRemoteFirmware EA data: device %{public}s has no endpoint %@ (index = %d)";
      }

      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v18, buf, 0x1Cu);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081D680();
  }

  return sub_1000088CC(v22);
}

void sub_10034F9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034F9F0(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  LOBYTE(v3) = -1;
  if (a2 && a3)
  {
    v5 = sub_10034F4E8(a1, a2);
    if (v5)
    {
      v3 = 0;
      v6 = v5 + 160;
      while (1)
      {
        v7 = *(v6 + 8 * v3);
        if (v7)
        {
          v8 = *(v7 + 88);
          if (v8)
          {
            if (CFStringCompare(a3, v8, 0) == kCFCompareEqualTo)
            {
              break;
            }
          }
        }

        if (++v3 == 32)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      LOBYTE(v3) = -1;
    }
  }

  return v3;
}

uint64_t sub_10034FA68(uint64_t *a1, int a2, int a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, (a1 + 55));
  v10 = a1[54];
  if (a3)
  {
    operator new();
  }

  sub_10000801C(v13);
  if (!v10)
  {
    v6 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
    {
      sub_1000C23E0(*a1, __p);
      if (v12 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v8 = a1[54];
      *buf = 67110147;
      v15 = 0;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2081;
      v19 = v7;
      v20 = 1024;
      v21 = a2;
      v22 = 2048;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "addEASessionData: Queueing %d bytes for %{private, mask.hash}s (index %d), queue size now %lu", buf, 0x2Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1003415E0(a1);
  }

  return sub_1000088CC(v13);
}

void sub_10034FCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10034FCE4(uint64_t a1, const __CFString *a2, uint64_t a3, const __CFBoolean *a4, uint64_t a5, const __CFString *a6)
{
  v9 = *(a1 + 32);
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, v9 + 360);
  v10 = sub_10034F4E8(v9, a6);
  v11 = v10;
  if (v10)
  {
    v12 = *v10;
    if (*v10)
    {
      v13 = sub_10034F9F0(v9, a6, a2);
      v14 = v13;
      if (v13 <= 0x1F && (v15 = v11[v13 + 20]) != 0 && *(v15 + 88))
      {
        v16 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v12, __p);
          v17 = v26 >= 0 ? __p : __p[0];
          *buf = 136446978;
          v29 = v17;
          v30 = 2112;
          v31 = a2;
          v32 = 1024;
          v33 = v14;
          v34 = 1024;
          v35 = kCFBooleanFalse != a4;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware EA property: Switching EA session for device %{public}s endpoint %@ index %d: enable = %d", buf, 0x22u);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        *(v15 + 97) = kCFBooleanFalse != a4;
        v24 = 0;
        sub_1000216B4(&v24);
        v18 = sub_10018956C((v12 + 128), v14, kCFBooleanFalse != a4);
        sub_100022214(&v24);
        sub_10000801C(v27);
        if (v18)
        {
          v19 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            sub_1000E5A58(v12, __p);
            if (v26 >= 0)
            {
              v23 = __p;
            }

            else
            {
              v23 = __p[0];
            }

            *buf = 136446978;
            v29 = v23;
            v30 = 2112;
            v31 = a2;
            v32 = 1024;
            v33 = v14;
            v34 = 1024;
            v35 = v18;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "publishAccRemoteFirmware EA property: Error sending EA session switch for device %{public}s endpoint %@ index %d: %d", buf, 0x22u);
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        sub_10002249C(&v24);
      }

      else
      {
        v20 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_1000E5A58(v12, __p);
          v22 = v26 >= 0 ? __p : __p[0];
          *buf = 136446722;
          v29 = v22;
          v30 = 2112;
          v31 = a2;
          v32 = 1024;
          v33 = v14;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "publishAccRemoteFirmware EA property: device %{public}s has no endpoint %@ (index = %d)", buf, 0x1Cu);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081D6F0();
  }

  return sub_1000088CC(v27);
}

void sub_100350030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100350074(uint64_t a1, const __CFString *a2, uint64_t a3, const void *a4, uint64_t a5, const __CFString *a6)
{
  v11 = *(a1 + 32);
  v38[0] = 0;
  v38[1] = 0;
  sub_100007F88(v38, v11 + 360);
  v12 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v40 = a3;
    *&v40[8] = 2112;
    *&v40[10] = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware acc_transportClient_setEndpointPropertyDidChangeHandler GAPA handler property=%@ value=%@", buf, 0x16u);
  }

  if (a4)
  {
    v36 = 0;
    v37 = 0;
    if (sub_10034F3EC(v11, &v37, &v36, a6, a2))
    {
      v13 = v37;
      if (*(v37 + 600) == 1)
      {
        v14 = CFGetTypeID(a4);
        if (v14 == CFArrayGetTypeID())
        {
          if (CFArrayGetCount(a4) == 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
            v16 = CFGetTypeID(ValueAtIndex);
            if (v16 == CFDictionaryGetTypeID())
            {
              v17 = CFArrayGetValueAtIndex(a4, 0);
              v18 = v17;
              if (v17)
              {
                v19 = kCFACCProperties_Endpoint_AudioProduct_AuthData;
                Value = CFDictionaryGetValue(v17, kCFACCProperties_Endpoint_AudioProduct_AuthData);
                v21 = CFGetTypeID(Value);
                if (v21 == CFDataGetTypeID())
                {
                  v22 = CFDictionaryGetValue(v18, v19);
                  v23 = v22;
                  if (v22)
                  {
                    BytePtr = CFDataGetBytePtr(v22);
                    Length = CFDataGetLength(v23);
                    v26 = (v36 + 128);
                    v27 = qword_100BCE8C0;
                    v28 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT);
                    if (v28)
                    {
                      *buf = 68158978;
                      *v40 = 6;
                      *&v40[4] = 2096;
                      *&v40[6] = v26;
                      *&v40[14] = 1024;
                      *&v40[16] = 1;
                      v41 = 1024;
                      v42 = Length;
                      v43 = 1040;
                      v44 = 32;
                      v45 = 2096;
                      v46 = BytePtr;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Send gapa auth challenge to wx %.6P version=%u (%hu bytes) %.32P", buf, 0x2Eu);
                    }

                    v29 = sub_100350550(v28, v26, BytePtr, Length, 1);
                    v30 = qword_100BCE8C0;
                    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 67109120;
                      *v40 = v29;
                      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware GAPA handler: BT_AACP_CLIENT_GAPASendChallenge result %d", buf, 8u);
                    }

                    *(v13 + 600) = 2;
                    v31 = sub_10000F034();
                    v32 = *(a1 + 40);
                    *buf = *(v32 + 128);
                    *v40 = *(v32 + 132);
                    (*(*v31 + 392))(v31, buf, 4, 0);
                  }

                  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
                  {
                    sub_10081D900();
                  }
                }

                else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
                {
                  v34 = CFDictionaryGetValue(v18, v19);
                  CFGetTypeID(v34);
                  CFDataGetTypeID();
                  sub_10081D8C0();
                }
              }

              else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
              {
                sub_10081D93C();
              }
            }

            else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              v33 = CFArrayGetValueAtIndex(a4, 0);
              CFGetTypeID(v33);
              CFDictionaryGetTypeID();
              sub_10081D880();
            }
          }

          else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            sub_10081D810();
          }
        }

        else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          CFGetTypeID(a4);
          CFArrayGetTypeID();
          sub_10081D7D0();
        }
      }

      else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
      {
        sub_10081D760();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081D978();
  }

  return sub_1000088CC(v38);
}

void sub_10035050C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100350550(uint64_t a1, unsigned __int8 *a2, const void *a3, uint64_t a4, char a5)
{
  v11 = 0;
  sub_1000216B4(&v11);
  v9 = sub_10018A59C(a2, a3, a4, a5);
  sub_10002249C(&v11);
  return v9;
}

uint64_t sub_1003505D0(uint64_t a1, const __CFString *a2, uint64_t a3, const void *a4, uint64_t a5, const __CFString *a6)
{
  v11 = *(a1 + 32);
  v27[0] = 0;
  v27[1] = 0;
  sub_100007F88(v27, v11 + 360);
  v12 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = a3;
    v29 = 2112;
    v30 = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware acc_transportClient_setEndpointPropertyDidChangeHandler GAPA auth result property=%@ value=%@", buf, 0x16u);
  }

  v13 = CFGetTypeID(a4);
  if (v13 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    CFNumberGetValue(a4, kCFNumberSInt8Type, &valuePtr);
    v14 = valuePtr != 0;
    v15 = sub_10000E92C();
    if ((*(*v15 + 704))(v15))
    {
      v16 = qword_100BCE8C0;
      v14 = 1;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 1;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Override GAPA authResult=%d", buf, 8u);
      }
    }

    v17 = sub_10000E92C();
    if ((*(*v17 + 712))(v17))
    {
      v18 = qword_100BCE8C0;
      v14 = 0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Override GAPA authResult=%d", buf, 8u);
        v14 = 0;
      }
    }

    *buf = 0;
    v25 = 0;
    if (sub_10034F3EC(v11, buf, &v25, a6, a2))
    {
      *(*buf + 600) = 4;
      v19 = sub_10000F034();
      v20 = *(a1 + 40);
      v23 = *(v20 + 128);
      v24 = *(v20 + 132);
      (*(*v19 + 392))(v19, &v23, 6, 0);
      if (v14)
      {
        v21 = sub_100540890(v25, 1, 1);
        sub_10033670C(v21, *(a1 + 40), 1);
      }

      else
      {
        sub_100336A04(v11, v25, 512);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    CFGetTypeID(a4);
    CFNumberGetTypeID();
    sub_10081D9B4();
  }

  return sub_1000088CC(v27);
}

void sub_1003508F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10035091C(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFString *a6)
{
  v9 = *(a1 + 32);
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, v9 + 360);
  v10 = sub_10034F4E8(v9, a6);
  if (v10)
  {
    v11 = *v10;
    if (*v10)
    {
      if (CFStringCompare(a2, *(v10 + 144), 0))
      {
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081D9F4();
        }
      }

      else
      {
        v17 = 0;
        sub_1000216B4(&v17);
        v12 = sub_10018A4BC((v11 + 128));
        sub_100022214(&v17);
        v13 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v20 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "publishAccRemoteFirmware cert required handler: BT_AACP_CLIENT_GetCertificates result %d", buf, 8u);
        }

        v14 = sub_10000F034();
        v15 = *(a1 + 40);
        *buf = *(v15 + 128);
        LOWORD(v20) = *(v15 + 132);
        (*(*v14 + 392))(v14, buf, 2, 0);
        sub_10002249C(&v17);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081DA6C();
  }

  return sub_1000088CC(v18);
}

void sub_100350AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100350B24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 80) - 8194;
    v4 = v3 > 0xE;
    v5 = (1 << v3) & 0x409B;
    if (v4 || v5 == 0)
    {
      v7 = *a2;
      if (*a2)
      {
        v8 = *(a2 + 128);
        if (v8)
        {
          v9 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000C23E0(v7, __p);
            v10 = v15 >= 0 ? __p : __p[0];
            *buf = 138412803;
            v17 = v8;
            v18 = 2160;
            v19 = 1752392040;
            v20 = 2081;
            v21 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "unPublishAccRemoteFirmware: Un-Publishing connection %@ and all endpoints for %{private, mask.hash}s", buf, 0x20u);
            if (v15 < 0)
            {
              operator delete(__p[0]);
            }
          }

          if ((acc_transportClient_destroyConnection() & 1) == 0 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            sub_10081DADC();
          }

          for (i = 0; i != 256; i += 8)
          {
            v12 = *(a2 + 160 + i);
            if (v12)
            {
              sub_10035C394(v12);
              operator delete();
            }
          }

          CFRelease(*(a2 + 128));
          *(a2 + 128) = 0;
          v13 = *(a2 + 136);
          if (v13)
          {
            CFRelease(v13);
            *(a2 + 136) = 0;
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081DB18();
  }
}

uint64_t sub_100350D18(uint64_t a1, uint64_t a2, char *a3, size_t a4, char *a5, size_t a6, char *a7, size_t a8, char *a9, size_t a10, char *a11, size_t a12, char *a13, size_t a14, char *a15, size_t a16)
{
  v43[1] = 0;
  v44 = a2;
  v43[0] = 0;
  sub_100007F88(v43, a1 + 360);
  v22 = *(a1 + 336);
  v23 = *(a1 + 344);
  if (v22 == v23)
  {
LABEL_9:
    v27 = 7;
  }

  else
  {
    v38 = a6;
    v39 = a8;
    while (1)
    {
      v24 = *v22;
      v25 = **v22;
      if (v25)
      {
        if (v44 == *(v25 + 128) && WORD2(v44) == *(v25 + 132))
        {
          break;
        }
      }

      if (++v22 == v23)
      {
        goto LABEL_9;
      }
    }

    __dst = a5;
    v28 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v25, __p);
      v29 = __p;
      if (v42 < 0)
      {
        v29 = __p[0];
      }

      *buf = 141558275;
      *&buf[4] = 1752392040;
      v46 = 2081;
      v47 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, " Returning F/W version for %{private, mask.hash}s", buf, 0x16u);
      if (v42 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v30 = v24[88];
    v31 = v24[89];
    v32 = v24[90];
    *&buf[8] = 0;
    *buf = 0;
    sprintf(buf, "%d.%d.%d", v30, v31, v32);
    if (a14 < 0xA)
    {
      goto LABEL_23;
    }

    strlcpy(a13, buf, a14);
    v33 = v39;
    sub_1000BE6F8((v25 + 128), __p);
    if (v42 < 0)
    {
      v34 = strlen(__p[0]) + 1;
      operator delete(__p[0]);
      v35 = v34 > a4;
      v33 = v39;
      if (v35)
      {
LABEL_23:
        v27 = 5;
        goto LABEL_24;
      }
    }

    else if (strlen(__p) + 1 > a4)
    {
      goto LABEL_23;
    }

    strlcpy(a3, "AirPods Case", a4);
    if (v38 < 0xD)
    {
      goto LABEL_23;
    }

    strlcpy(__dst, "AirPods Case", v38);
    if (a10 < 6)
    {
      goto LABEL_23;
    }

    strlcpy(a9, "A1602", a10);
    if (v33 < 0xA)
    {
      goto LABEL_23;
    }

    strlcpy(a7, "Apple Inc", v33);
    if (a16 >= 2)
    {
      strlcpy(a15, " ", a16);
    }

    if (a12 >= 2)
    {
      strlcpy(a11, " ", a12);
    }

    v27 = 0;
  }

LABEL_24:
  sub_1000088CC(v43);
  return v27;
}

void sub_10035100C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100351030(uint64_t a1, uint64_t a2)
{
  v59[0] = 0;
  v59[1] = 0;
  sub_100007F88(v59, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        v5 = +[EAAccessoryManager sharedAccessoryManager];
        v50 = [v5 connectedAccessories];

        sub_1000BE6F8((a2 + 128), &__p);
        if (v58 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v7 = [NSString stringWithUTF8String:p_p];
        if (SHIBYTE(v58) < 0)
        {
          operator delete(__p);
        }

        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v8 = v50;
        v9 = [v8 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v9)
        {
          v10 = *v53;
          do
          {
            v11 = 0;
            do
            {
              if (*v53 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v52 + 1) + 8 * v11);
              v13 = [v12 macAddress];
              v14 = [v13 isEqualToString:v7];

              if (v14)
              {
                v15 = [v12 name];
                v16 = [v15 hasSuffix:@"Case"];

                if ((v16 & 1) == 0)
                {
                  v17 = qword_100BCE8C0;
                  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_1000E5A58(a2, &__p);
                    v18 = &__p;
                    if (v58 < 0)
                    {
                      v18 = __p;
                    }

                    *buf = 136446210;
                    *&buf[4] = v18;
                    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "getVersionInfoFromWiAP: saving ExternalAccessory information for %{public}s", buf, 0xCu);
                    if (SHIBYTE(v58) < 0)
                    {
                      operator delete(__p);
                    }
                  }

                  __p = 0;
                  v57 = 0;
                  v58 = 0;
                  sub_100007E30(buf, "");
                  sub_10034A52C(&__p, buf);
                  if (v63 < 0)
                  {
                    operator delete(*buf);
                  }

                  v19 = [v12 modelNumber];
                  v20 = v19;
                  v21 = [v19 UTF8String];
                  if (v21)
                  {
                    v22 = v21;
                  }

                  else
                  {
                    v22 = "";
                  }

                  sub_100007E30(buf, v22);
                  sub_10034A52C(&__p, buf);
                  if (v63 < 0)
                  {
                    operator delete(*buf);
                  }

                  v23 = [v12 manufacturer];
                  v24 = v23;
                  v25 = [v23 UTF8String];
                  if (v25)
                  {
                    v26 = v25;
                  }

                  else
                  {
                    v26 = "";
                  }

                  sub_100007E30(buf, v26);
                  sub_10034A52C(&__p, buf);
                  if (v63 < 0)
                  {
                    operator delete(*buf);
                  }

                  v27 = [v12 serialNumber];
                  v28 = v27;
                  v29 = [v27 UTF8String];
                  if (v29)
                  {
                    v30 = v29;
                  }

                  else
                  {
                    v30 = "";
                  }

                  sub_100007E30(buf, v30);
                  sub_10034A52C(&__p, buf);
                  if (v63 < 0)
                  {
                    operator delete(*buf);
                  }

                  v31 = [v12 firmwareRevisionActive];
                  v32 = v31;
                  v33 = [v31 UTF8String];
                  if (v33)
                  {
                    v34 = v33;
                  }

                  else
                  {
                    v34 = "";
                  }

                  sub_100007E30(buf, v34);
                  sub_10034A52C(&__p, buf);
                  if (v63 < 0)
                  {
                    operator delete(*buf);
                  }

                  v35 = [v12 firmwareRevisionPending];
                  v36 = v35;
                  v37 = [v35 UTF8String];
                  if (v37)
                  {
                    v38 = v37;
                  }

                  else
                  {
                    v38 = "";
                  }

                  sub_100007E30(buf, v38);
                  sub_10034A52C(&__p, buf);
                  if (v63 < 0)
                  {
                    operator delete(*buf);
                  }

                  v39 = [v12 hardwareRevision];
                  v40 = v39;
                  v41 = [v39 UTF8String];
                  if (v41)
                  {
                    v42 = v41;
                  }

                  else
                  {
                    v42 = "";
                  }

                  sub_100007E30(buf, v42);
                  sub_10034A52C(&__p, buf);
                  if (v63 < 0)
                  {
                    operator delete(*buf);
                  }

                  sub_100007E30(buf, "");
                  sub_10034A52C(&__p, buf);
                  if (v63 < 0)
                  {
                    operator delete(*buf);
                  }

                  sub_100007E30(buf, "");
                  sub_10034A52C(&__p, buf);
                  if (v63 < 0)
                  {
                    operator delete(*buf);
                  }

                  sub_100007E30(buf, "");
                  sub_10034A52C(&__p, buf);
                  if (v63 < 0)
                  {
                    operator delete(*buf);
                  }

                  v43 = [v12 firmwareRevision];
                  v44 = v43;
                  v45 = [v43 UTF8String];
                  if (v45)
                  {
                    v46 = v45;
                  }

                  else
                  {
                    v46 = "";
                  }

                  sub_100007E30(buf, v46);
                  sub_10034A52C(&__p, buf);
                  if (v63 < 0)
                  {
                    operator delete(*buf);
                  }

                  memset(v51, 0, sizeof(v51));
                  sub_10003E428(v51, __p, v57, 0xAAAAAAAAAAAAAAABLL * ((v57 - __p) >> 3));
                  sub_100541A24(a2, v51);
                  *buf = v51;
                  sub_1000161FC(buf);
                  if (qword_100B50AB0 != -1)
                  {
                    sub_10081A1B0();
                  }

                  sub_100561C34(off_100B50AA8, a2);
                  v47 = qword_100BCE8C0;
                  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_1000E5A58(a2, buf);
                    v48 = buf;
                    if (v63 < 0)
                    {
                      v48 = *buf;
                    }

                    *v60 = 136446210;
                    v61 = v48;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Identification - Device %{public}s is a W1 device. Setting Firmware Version to 1 for Identification hash purposes.", v60, 0xCu);
                    if (v63 < 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  sub_100543C80(a2, 1);
                  sub_100538900(a2);
                  *buf = &__p;
                  sub_1000161FC(buf);
                }
              }

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v8 countByEnumeratingWithState:&v52 objects:v64 count:16];
          }

          while (v9);
        }

        return sub_1000088CC(v59);
      }
    }
  }

  return sub_1000088CC(v59);
}

void sub_100351898()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_10035193C()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_1003519F8()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100351AAC()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100351B74()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100351C84()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100351D94()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100351E4C()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100351F04(unsigned __int8 *a1, unsigned __int8 *a2, char a3, char a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  if (qword_100B540A0 != -1)
  {
    v18 = a3;
    v19 = a4;
    v16 = a1[5];
    v17 = a1[4];
    sub_10081A91C();
    v9 = v16;
    v8 = v17;
    a3 = v18;
    a4 = v19;
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100352030;
  v20[3] = &unk_100AE0EF8;
  v20[4] = (v4 << 40) | (v5 << 32) | (v6 << 24) | (v7 << 16) | (v8 << 8) | v9;
  v20[5] = (v10 << 40) | (v11 << 32) | (v12 << 24) | (v13 << 16) | (v14 << 8) | v15;
  v21 = a3;
  v22 = a4;
  sub_1005897E0(off_100B54098, v20);
}

uint64_t sub_100352030(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 49);

  return sub_1003456D8(v2, v3, v4, v5, v6);
}

void sub_10035208C(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  if (qword_100B540A0 != -1)
  {
    v17 = a3;
    v15 = *a1;
    v16 = a1[5];
    sub_10081A91C();
    v3 = v15;
    v8 = v16;
    a3 = v17;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1003521B4;
  v18[3] = &unk_100AE0880;
  v18[4] = (v3 << 40) | (v4 << 32) | (v5 << 24) | (v6 << 16) | (v7 << 8) | v8;
  v18[5] = (v9 << 40) | (v10 << 32) | (v11 << 24) | (v12 << 16) | (v13 << 8) | v14;
  v19 = a3;
  sub_1005897E0(off_100B54098, v18);
}

void sub_1003521B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v4 = off_100B50948;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);

  sub_100345924(v4, v5, a3, v6);
}

void sub_10035220C()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_1003522D4()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_10035239C()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100352450()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100352518()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_1003525E4()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100352700()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_1003527B4()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100352870()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_10035298C()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100352AA8()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100352BB4()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100352CD8()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100352D88()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100352EB0()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100352FB0()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353078()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353130()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_1003531E8()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_10035329C()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353354()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353424()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353548()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353654()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_10035370C()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_1003537D4()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_10035388C()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353954()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353A0C()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353B28()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353C44()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353D00()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353DB8()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353ED4()
{
  if (qword_100B540A0 != -1)
  {
    sub_10081A91C();
  }

  operator new();
}

void sub_100353F8C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v6 = sub_1000E6554(off_100B508E8, a3, 1);
  if (*a2 == *(a1 + 424) && *(a2 + 4) == *(a1 + 428))
  {
    if (sub_100337E54(a1, v6))
    {
      v11 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000BE6F8(a3, __p);
        v12 = v17 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sending pair status request to magnet for device %s", buf, 0xCu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v13 = sub_100432610();
      sub_1000BE6F8(a3, v14);
      (*(*v13 + 104))(v13, v14);
      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }
  }

  else
  {
    v8 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(a2, __p);
      v9 = v17 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sending pair status request to AACP device %s", buf, 0xCu);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (qword_100B508F0 != -1)
    {
      sub_10081A4E4();
    }

    v10 = sub_1000E6554(off_100B508E8, a2, 1);
    sub_100330B54(a1, v10, a3);
  }
}

void sub_1003541E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035420C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (qword_100B508F0 != -1)
  {
    sub_100819FC0();
  }

  v10 = sub_1000E6554(off_100B508E8, a3, 1);
  if (*a2 != *(a1 + 424) || *(a2 + 4) != *(a1 + 428))
  {
    if (*(a1 + 328) == 1)
    {
      v12 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000BE6F8(a2, __p);
        v13 = v30 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v32 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sending store link key request to AACP device %s", buf, 0xCu);
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (qword_100B508F0 != -1)
      {
        sub_10081A4E4();
      }

      v14 = sub_1000E6554(off_100B508E8, a2, 1);
      sub_100330A00(a1, v14, a3, a5, a4);
    }

    return;
  }

  v15 = v10;
  if (!sub_100337E54(a1, v10))
  {
    return;
  }

  v16 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(a3, __p);
    v17 = v30 >= 0 ? __p : __p[0];
    v18 = *(a1 + 432);
    *buf = 136315394;
    v32 = v17;
    v33 = 1024;
    v34 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "sending store link key request to magnet link for device %s with version %d", buf, 0x12u);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a1 + 432) < 5u)
  {
    v23 = sub_100432610();
    sub_1000BE6F8(a3, v25);
    sub_1000C23E0(v15, __p);
    if (v30 >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    (*(*v23 + 120))(v23, v25, v24, a4, a5);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    if (v26 < 0)
    {
      v22 = v25[0];
      goto LABEL_40;
    }
  }

  else
  {
    *buf = 0;
    sub_1005379CC(v15, buf);
    v19 = sub_100432610();
    sub_1000BE6F8(a3, v27);
    v20 = __p;
    sub_1000C23E0(v15, __p);
    if (v30 < 0)
    {
      v20 = __p[0];
    }

    if (qword_100B50AC0 != -1)
    {
      sub_10081A96C();
    }

    v21 = sub_1000DFA00(off_100B50AB8, v15);
    (*(*v19 + 128))(v19, v27, v20, a4, a5, v21, *buf);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 < 0)
    {
      v22 = v27[0];
LABEL_40:
      operator delete(v22);
    }
  }
}

void sub_1003545A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100354618(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (a4 == 2)
  {
    v6 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1000BE6F8(a2, v41);
      v7 = SHIBYTE(v45);
      v8 = *v41;
      sub_1000BE6F8(a3, __p);
      v9 = v41;
      if (v7 < 0)
      {
        v9 = v8;
      }

      if (v40 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "easy pair failed between devices %s and %s", buf, 0x16u);
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v45) < 0)
      {
        operator delete(*v41);
      }
    }
  }

  else
  {
    if (*a2 == *(a1 + 424) && *(a2 + 4) == *(a1 + 428))
    {
      if (qword_100B508F0 != -1)
      {
        sub_100819FC0();
      }
    }

    else
    {
      if (qword_100B508F0 != -1)
      {
        sub_100819FC0();
      }

      a3 = a2;
    }

    v13 = sub_1000E6554(off_100B508E8, a3, 1);
    *buf = 0;
    *&buf[8] = 0;
    sub_100007F88(buf, a1 + 360);
    if (v13)
    {
      v14 = *(a1 + 336);
      v15 = *(a1 + 344);
      if (v14 != v15)
      {
        while (1)
        {
          v16 = *v14;
          if (**v14 == v13)
          {
            break;
          }

          if (++v14 == v15)
          {
            goto LABEL_56;
          }
        }

        v17 = sub_10000C798();
        if ((*(*v17 + 352))(v17))
        {
          if (sub_100337E54(a1, v13))
          {
            sub_10033142C(a1, v13);
            v18 = sub_100432610();
            sub_1000BE6F8((v13 + 128), v35);
            (*(*v18 + 160))(v18, v35, *(v16 + 10));
            if (v36 < 0)
            {
              operator delete(v35[0]);
            }
          }
        }

        if (sub_100337E54(a1, v13) && sub_1003453C8(v16))
        {
          v34 = 0;
          v33 = 0;
          memset(__p, 0, 12);
          if (qword_100B50AA0 != -1)
          {
            sub_100819F0C();
          }

          sub_10009BE34(off_100B50A98, &v33);
          v19 = sub_10000C798();
          v20 = (*(*v19 + 352))(v19);
          v21 = &v33;
          if (v20)
          {
            v22 = &v33;
          }

          else
          {
            v22 = (a1 + 424);
          }

          if (v20)
          {
            v21 = (a1 + 424);
          }

          LODWORD(__p[0]) = *v22;
          WORD2(__p[0]) = *(v22 + 2);
          *(__p + 6) = *v21;
          WORD1(__p[1]) = *(v21 + 2);
          if (sub_1000E2140(v13, 32))
          {
            sub_100335724(v16, 2, __p, 2);
          }

          v32 = 0;
          sub_1000216B4(&v32);
          sub_100188E10((v13 + 128), 2u, __p);
          sub_100022214(&v32);
          v23 = qword_100BCE960;
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v13, v41);
            v24 = v45 >= 0 ? v41 : *v41;
            *v37 = 136446210;
            v38 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending message to Phone/Watch to connect to %{public}s", v37, 0xCu);
            if (SHIBYTE(v45) < 0)
            {
              operator delete(*v41);
            }
          }

          v25 = sub_100432610();
          sub_1000BE6F8((v13 + 128), v30);
          (*(*v25 + 144))(v25, v30, 0);
          if (v31 < 0)
          {
            operator delete(v30[0]);
          }

          sub_10002249C(&v32);
        }

        else
        {
          v26 = qword_100BCE960;
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
          {
            v27 = __p;
            sub_1000E5A58(v13, __p);
            if (v40 < 0)
            {
              v27 = __p[0];
            }

            v28 = sub_100337E54(a1, v13);
            v29 = sub_1003453C8(v16);
            *v41 = 136446722;
            *&v41[4] = v27;
            v42 = 1024;
            v43 = v28;
            v44 = 1024;
            v45 = v29;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Not establishing triangle with %{public}s (magnet check %d, triangle check %d)", v41, 0x18u);
            if (v40 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        *(v16 + 728) = 0;
      }
    }

LABEL_56:
    sub_1000088CC(buf);
  }
}

void sub_100354B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_10002249C(&a18);
  sub_1000088CC(v40 - 80);
  _Unwind_Resume(a1);
}

void sub_100354BD0(void *a1)
{
  v2 = (a1 + 3);
  v3 = a1[3];
  v4 = a1 + 4;
  if (v3 != a1 + 4)
  {
    do
    {
      v5 = v3[5];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  if (a1[5])
  {
    sub_10000CEDC(v2, a1[4]);
    a1[4] = 0;
    a1[5] = 0;
    a1[3] = v4;
  }
}

BOOL sub_100354C8C(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  v12 = WORD2(a2);
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 360);
  v4 = *(a1 + 336);
  v3 = *(a1 + 344);
  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v5 = v4 + 8;
    do
    {
      v6 = *(**(v5 - 8) + 128) ^ v11 | *(**(v5 - 8) + 132) ^ v12;
      v7 = v6 == 0;
      if (v6)
      {
        v8 = v5 == v3;
      }

      else
      {
        v8 = 1;
      }

      v5 += 8;
    }

    while (!v8);
  }

  sub_1000088CC(v10);
  return v7;
}

uint64_t sub_100354D40(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (qword_100B50AD0 != -1)
    {
      sub_10081B980();
    }

    v2 = off_100B50AC8;
    v3 = *(v1 + 32);

    return sub_1005E61F8(v2, v3);
  }

  return result;
}

uint64_t sub_100354DA0(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (qword_100B50AE0 != -1)
    {
      sub_10081DB54();
    }

    v2 = qword_100B50AD8;
    v3 = *(v1 + 32);

    return sub_1004DABB0(v2, v3);
  }

  return result;
}

uint64_t sub_100354E00(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (qword_100B50AD0 != -1)
    {
      sub_10081B980();
    }

    v2 = off_100B50AC8;
    v3 = *(v1 + 32);

    return sub_1005E62DC(v2, v3);
  }

  return result;
}

uint64_t sub_100354E60(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (qword_100B50AE0 != -1)
    {
      sub_10081DB54();
    }

    v2 = qword_100B50AD8;
    v3 = *(v1 + 32);

    return sub_1004DAD5C(v2, v3);
  }

  return result;
}

uint64_t sub_100354EC0(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10081B980();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 32);

  return sub_1005E6328(v2, v3);
}

uint64_t sub_100354F14(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10081B980();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1005E6394(v2, v3, v4);
}

uint64_t sub_100354F6C(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10081DB54();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1004DAD18(v2, v3, v4);
}

uint64_t sub_100354FC4(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (qword_100B50AD0 != -1)
    {
      sub_10081B980();
    }

    v2 = off_100B50AC8;
    v3 = *(v1 + 32);

    return sub_1005E63D0(v2, v3);
  }

  return result;
}

uint64_t sub_100355024(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (qword_100B50AE0 != -1)
    {
      sub_10081DB54();
    }

    v2 = qword_100B50AD8;
    v3 = *(v1 + 32);

    return sub_1004DADB0(v2, v3);
  }

  return result;
}

uint64_t sub_100355084(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (qword_100B50AD0 != -1)
    {
      sub_10081B980();
    }

    v2 = off_100B50AC8;
    v3 = *(v1 + 32);

    return sub_1005E641C(v2, v3);
  }

  return result;
}

uint64_t sub_1003550E4(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    if (qword_100B50AE0 != -1)
    {
      sub_10081DB54();
    }

    v2 = qword_100B50AD8;
    v3 = *(v1 + 32);

    return sub_1004DAE04(v2, v3);
  }

  return result;
}

void *sub_100355144(void *result)
{
  if (!result[6])
  {
    v1 = *result;
    v2 = *(*result + 128);
    v3 = *(v1 + 132);
    operator new();
  }

  return result;
}

const char *sub_1003551F4(uint64_t a1, int a2)
{
  if ((a2 - 1) > 0xE)
  {
    return "unknown";
  }

  else
  {
    return off_100AED400[a2 - 1];
  }
}

const char *sub_10035521C(uint64_t a1, int a2)
{
  if ((a2 - 1) > 6)
  {
    return "unknown";
  }

  else
  {
    return off_100AED490[(a2 - 1)];
  }
}

id sub_100355248(uint64_t a1, unsigned int a2)
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = 0;
  do
  {
    [v3 appendFormat:@"%s - ", off_100AED5D8[v4]];
    if ((a2 >> v4))
    {
      v5 = "Raw Gesture";
    }

    else
    {
      v5 = "Accessory Managed";
    }

    [v3 appendFormat:@"%s, ", v5];
    ++v4;
  }

  while (v4 != 6);
  v6 = [v3 UTF8String];

  return v6;
}

const __CFString *sub_10035532C(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xE)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100AED560 + a2);
  }
}

uint64_t sub_100355350(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a2;
  *(a1 + 8) = 50529027;
  *(a1 + 12) = 0;
  *(a1 + 16) = 3;
  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 84) = 0;
  *(a1 + 104) = 0u;
  v6 = (a1 + 104);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 416) = a1 + 416;
  *(a1 + 424) = a1 + 416;
  *(a1 + 432) = 0;
  sub_100044BBC(a1 + 440);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  sub_100044BBC(a1 + 536);
  *(a1 + 618) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = a1 + 712;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 752) = 0;
  *(a1 + 744) = 0;
  if ((sub_1000E356C(a2) & 1) == 0)
  {
    *(a1 + 8) = 0;
  }

  memset(&__str, 0, sizeof(__str));
  v7 = sub_1000BE4B4();
  if (!(*(*v7 + 32))(v7, a2, &__str))
  {
    std::string::operator=((a1 + 56), &__str);
  }

  v17 = 0;
  v16 = 0;
  if ((sub_1000C2364(a2, &v17 + 1, &v17, (a1 + 80), &v16) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081DB68();
    }

    *(a1 + 80) = 0;
  }

  v8 = sub_10000C798();
  if (((*(*v8 + 352))(v8) & 1) != 0 || (v9 = sub_10000C798(), (*(*v9 + 416))(v9)))
  {
    v10 = *(a1 + 80) - 8194;
    if (v10 <= 0xE && ((1 << v10) & 0x409B) != 0)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100355784;
      v15[3] = &unk_100AEC260;
      v15[4] = a2;
      v11 = [NSTimer timerWithTimeInterval:0 repeats:v15 block:10.0];
      v12 = *v6;
      *v6 = v11;

      v13 = +[NSRunLoop mainRunLoop];
      [v13 addTimer:*v6 forMode:NSDefaultRunLoopMode];
    }
  }

  *(a1 + 93) = 0;
  *(a1 + 85) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 760) = -1;
  if (a3)
  {
    operator new();
  }

  sub_1003559B4(a1);
  *(a1 + 528) = 1;
  *(a1 + 532) = 0;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1003556B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v21 + 736);
  if (v27)
  {
    *(v21 + 744) = v27;
    operator delete(v27);
  }

  sub_10000CEDC(v21 + 704, *(v21 + 712));
  v28 = *(v21 + 680);
  if (v28)
  {
    *(v21 + 688) = v28;
    operator delete(v28);
  }

  sub_10035F7AC((v21 + 632));

  sub_10007A068(v21 + 536);
  v29 = *(v21 + 504);
  if (v29)
  {
    *(v21 + 512) = v29;
    operator delete(v29);
  }

  sub_10007A068(v21 + 440);
  sub_100028EB4(v23);

  if (*(v21 + 79) < 0)
  {
    operator delete(*(v21 + 56));
  }

  sub_10000CEDC(v22, *v25);
  _Unwind_Resume(a1);
}

uint64_t sub_100355784(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 32);

  return sub_100351030(v2, v3);
}

uint64_t sub_1003557D8(uint64_t a1)
{
  [*(a1 + 104) invalidate];
  v2 = *(a1 + 104);
  *(a1 + 104) = 0;

  v3 = *(a1 + 624);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + 624);
    *(a1 + 624) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    sub_100322DD8(v5);
    operator delete();
  }

  for (i = *(a1 + 432); i; i = *(a1 + 432))
  {
    v7 = *(a1 + 424);
    v8 = v7[1];
    v9 = v7[2];
    v10 = *v7;
    *(v10 + 8) = v8;
    *v8 = v10;
    *(a1 + 432) = i - 1;
    operator delete(v7);
    if (v9)
    {
      if (*(v9 + 8))
      {
        operator delete[]();
      }

      operator delete();
    }
  }

  v11 = *(a1 + 768);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  sub_1003559B4(a1);
  v12 = *(a1 + 736);
  if (v12)
  {
    *(a1 + 744) = v12;
    operator delete(v12);
  }

  sub_10000CEDC(a1 + 704, *(a1 + 712));
  v13 = *(a1 + 680);
  if (v13)
  {
    *(a1 + 688) = v13;
    operator delete(v13);
  }

  sub_10035F7AC((a1 + 632));

  sub_10007A068(a1 + 536);
  v14 = *(a1 + 504);
  if (v14)
  {
    *(a1 + 512) = v14;
    operator delete(v14);
  }

  sub_10007A068(a1 + 440);
  sub_100028EB4((a1 + 416));

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  sub_10000CEDC(a1 + 24, *(a1 + 32));
  return a1;
}

void sub_100355980(_Unwind_Exception *a1)
{
  v4 = *(v1 + 736);
  if (v4)
  {
    *(v1 + 744) = v4;
    operator delete(v4);
  }

  sub_10081DBA4(v1, v2);
  sub_10000CEDC(v1 + 24, *(v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t sub_1003559B4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 504);
  v3 = *(result + 512);
  if (v2 != v3)
  {
    do
    {
      result = *v2;
      if (*v2)
      {
        sub_10035F8A8(result);
        operator delete();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(v1 + 504);
  }

  *(v1 + 512) = v2;
  return result;
}

_BYTE *sub_100355A20@<X0>(char a1@<W1>, _BYTE *a2@<X8>)
{
  if ((a1 - 1) > 7u)
  {
    v2 = "Other";
  }

  else
  {
    v2 = off_100AED608[(a1 - 1)];
  }

  return sub_100007E30(a2, v2);
}

void sub_100355A54(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 4)
  {
    sub_1000C23E0(*a1, &v6);
    v4 = std::string::append(&v6, " 🅛");
LABEL_5:
    v5 = *&v4->__r_.__value_.__l.__data_;
    *(a3 + 16) = *(&v4->__r_.__value_.__l + 2);
    *a3 = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (a2 == 2)
  {
    sub_1000C23E0(*a1, &v6);
    v4 = std::string::append(&v6, " 🅡");
    goto LABEL_5;
  }

  sub_100007E30(a3, "");
}

void sub_100355B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100355B3C(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  if (a2 == 8)
  {
    v5 = @"AIRPODS_CASE";
    if (*(a1 + 80) == 8203)
    {
      v5 = @"POWERBEATS_PRO_CASE";
    }

    v6 = v5;
    if (*(a1 + 80) == 8203)
    {
      v7 = @"Powerbeats Pro Case";
    }

    else
    {
      v7 = @"AirPods Case";
    }

    v8 = v7;
    v22 = 0;
    v20 = 0u;
    *__p = 0u;
    v19 = 0u;
    sub_100007E30(__p, "");
    if (!sub_1000E0610(*a1, &v19))
    {
      goto LABEL_22;
    }

    if (SHIBYTE(v22) < 0)
    {
      if (__p[1] <= 1)
      {
LABEL_22:
        v17 = sub_100438B14(v6, v8);
        v18 = v17;
        sub_100007E30(a3, [v17 UTF8String]);

        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }

        return;
      }

      v9 = __p[0];
    }

    else
    {
      v9 = __p;
      if (HIBYTE(v22) <= 1u)
      {
        goto LABEL_22;
      }
    }

    v11 = [NSString stringWithCString:v9 encoding:[NSString defaultCStringEncoding:v19]];

    v8 = v11;
    v12 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 80);
      if (v22 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 67109378;
      v24 = v13;
      v25 = 2082;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Case for buds with productId = %d reports case name %{public}s", buf, 0x12u);
    }

    v15 = [(__CFString *)v8 uppercaseString];
    v16 = [v15 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

    v6 = v16;
    goto LABEL_22;
  }

  v10 = *a1;

  sub_1000C23E0(v10, a3);
}

void sub_100355DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100355E1C(uint64_t a1)
{
  if (*(a1 + 128))
  {
    if (*(a1 + 144))
    {
      if (*(a1 + 512) == *(a1 + 504))
      {
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081DC88();
        }
      }

      else
      {
        v19 = objc_opt_new();
        v3 = *(a1 + 504);
        v2 = *(a1 + 512);
        if (v3 != v2)
        {
          v4 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Type;
          v5 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Serial;
          v6 = kCFACCProperties_Endpoint_AACP_CertificateInfo_Data;
          do
          {
            v7 = *v3;
            v8 = *(*v3 + 47);
            if ((v8 & 0x8000000000000000) != 0)
            {
              v8 = *(v7 + 32);
            }

            if (v8 > 1)
            {
              v11 = [NSNumber numberWithInt:*(v7 + 48)];
              v12 = (v7 + 24);
              if (*(v7 + 47) < 0)
              {
                v12 = *v12;
              }

              v13 = [NSString stringWithUTF8String:v12];
              v14 = [NSData dataWithBytes:*v7 length:*(v7 + 8) - *v7];
              v15 = [NSDictionary dictionaryWithObjectsAndKeys:v11, v4, v13, v5, v14, v6, 0];
              [v19 addObject:v15];
            }

            else
            {
              v9 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
              {
                v10 = *(v7 + 48);
                *buf = 67109120;
                LODWORD(v21) = v10;
                _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "dispatchCertificates: Cert of type %d lacks serial number", buf, 8u);
              }
            }

            ++v3;
          }

          while (v3 != v2);
        }

        v16 = acc_transportClient_setPropertyForEndpointWithUUID();
        v17 = qword_100BCE8C0;
        if (v16)
        {
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v19 count];
            *buf = 134217984;
            v21 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "dispatchCertificates: Published %lu certificates", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          sub_10081DC4C(buf, [v19 count], v17);
        }

        sub_1003559B4(a1);
        *(a1 + 528) = 1;
        *(a1 + 532) = 0;
      }
    }

    else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_10081DCC4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081DD00();
  }
}

void sub_100356188(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081DD3C();
  }

  *(v1 + 618) = 0;
}

uint64_t sub_1003561D4(void *a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5)
{
  v34[0] = 0;
  v34[1] = 0;
  sub_100007F88(v34, (a1 + 45));
  if (*(a5 + 16))
  {
    v10 = *(a5 + 20);
    v12 = a1[42];
    v11 = a1[43];
    if (v11 == v12)
    {
      v29 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v10 == -1;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Warning: registerCustomDataCallback: No AACP connection (isFromDE = %d)", buf, 8u);
      }

      v28 = 312;
      goto LABEL_51;
    }

    v32 = v10 == -1;
    v13 = 0;
    LODWORD(v14) = 0;
    do
    {
      v16 = *v12++;
      v15 = v16;
      v17 = *(v16 + 80);
      v18 = v17 >= v14;
      if (v17 <= v14)
      {
        v14 = v14;
      }

      else
      {
        v14 = v17;
      }

      if (v18)
      {
        v13 = v15;
      }
    }

    while (v12 != v11);
    if (qword_100B51308 != -1)
    {
      sub_10081AC08();
    }

    v19 = sub_1004B4AF4(qword_100B51300);
    if (v19)
    {
      if (v10 != -1)
      {
        goto LABEL_48;
      }

      if (qword_100B51308 != -1)
      {
        sub_10081AC08();
      }

      if (!sub_1004B4DC8(qword_100B51300))
      {
LABEL_48:
        v30 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v10 == -1;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Warning: registerCustomDataCallback: Logging already ongoing (isFromDE = %d)", buf, 8u);
        }

        v28 = 10;
        goto LABEL_51;
      }

      if (v13)
      {
        if (qword_100B51308 != -1)
        {
          sub_10081AC08();
        }

        sub_1004B4CC0(qword_100B51300, *v13);
      }

      v20 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "registerCustomDataCallback: Replacing sysdiagnose callback with DE callback", buf, 2u);
      }
    }

    v21 = v19 ^ 1;
    *(a5 + 8) = v14;
  }

  else
  {
    v22 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = a3;
      LOWORD(v36) = 1024;
      *(&v36 + 2) = a3;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "registerCustomDataCallback: Registering client type %u (0x%X)", buf, 0xEu);
    }

    v13 = 0;
    v32 = 0;
    v21 = 0;
  }

  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, (a1 + 81));
  v23 = *a4;
  v24 = a1[70];
  v25 = a1[71];
  v36 = *a4;
  if (v24 != v25)
  {
    while (*v24 != a2 || v36 != v24[1])
    {
      v24 += 4;
      if (v24 == v25)
      {
        goto LABEL_34;
      }
    }
  }

  if (v24 == v25)
  {
LABEL_34:
    *buf = a2;
    v36 = v23;
    v37 = a3;
    v38 = a5;
    sub_10036288C(a1 + 70, buf);
  }

  if (v13)
  {
    v26 = v21;
  }

  else
  {
    v26 = 0;
  }

  if (v26 == 1)
  {
    v27 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v32;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "registerCustomDataCallback: Calling triggerAccessoryLogRetrieval (isFromDE = %d)", buf, 8u);
    }

    if (qword_100B51308 != -1)
    {
      sub_10081AC08();
    }

    sub_1004B442C(qword_100B51300, *v13, v32);
  }

  sub_1000088CC(v33);
  v28 = 0;
LABEL_51:
  sub_1000088CC(v34);
  return v28;
}

void sub_1003565C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003565F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100362B70(*(a1 + 560), *(a1 + 568), a2, *a3);
  sub_100362AF8((a1 + 560), v4, *(a1 + 568));
  return 0;
}

uint64_t sub_100356640(uint64_t a1)
{
  *a1 = off_100AEC290;
  free(*(a1 + 64));
  return a1;
}

void sub_100356688(uint64_t a1)
{
  *a1 = off_100AEC290;
  free(*(a1 + 64));

  operator delete();
}

void sub_1003566F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v8 = off_100B50948;
  if (sub_1003567C4(a1, *(a1 + 40)) && sub_1003567C4(a1, *(a1 + 48)) && v8[70] != v8[71])
  {
    sub_10051BB5C(a2, a3, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), a4);
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081DDB8();
  }
}

BOOL sub_1003567C4(uint64_t a1, unint64_t a2)
{
  if (qword_100B50B88 != -1)
  {
    sub_10081DDF4();
  }

  v3 = qword_100B50B80;

  return sub_100618944(v3, a2);
}

uint64_t sub_100356818(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v17 = 0;
  sub_1000216B4(&v17);
  v9 = sub_100189034((a2 + 128), a3, a4, a5);
  sub_100022214(&v17);
  v10 = qword_100BCE8C0;
  if (v9)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, __p);
      if (v16 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136446978;
      v19 = v11;
      v20 = 1024;
      v21 = a3;
      v22 = 1024;
      v23 = a4;
      v24 = 1024;
      v25 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to send custom message to %{public}s: type 0x%x, len %u, error %u", buf, 0x1Eu);
      goto LABEL_16;
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v16 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136446722;
    v19 = v13;
    v20 = 1024;
    v21 = a3;
    v22 = 1024;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sent custom message to %{public}s: type 0x%x, len %u", buf, 0x18u);
LABEL_16:
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v12 = sub_1000DD584(off_100B50A98, v9, 10000);
  sub_10002249C(&v17);
  return v12;
}

uint64_t sub_100356A60(uint64_t a1, uint64_t a2, char a3, int a4)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v7 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v8 = v13 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "send control command message to %{public}s", buf, 0xCu);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v9 = sub_100188A50((a2 + 128), a3, a4);
  sub_100022214(__p);
  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v10 = sub_1000DD584(off_100B50A98, v9, 10000);
  sub_10002249C(__p);
  return v10;
}

uint64_t sub_100356C00(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v5 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &__p);
    v6 = v12 >= 0 ? &__p : __p;
    *buf = 136446210;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "send set country code message to %{public}s", buf, 0xCu);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  __p = 0;
  v11 = 0;
  v12 = 0;
  sub_1000C89B4(&__p, a3);
  sub_1000C89B4(&__p, a3 + 3);
  sub_1000C89B4(&__p, a3 + 6);
  sub_1000C89B4(&__p, a3 + 9);
  sub_1000C89B4(&__p, a3 + 12);
  sub_1000C89B4(&__p, a3 + 15);
  sub_1000C89B4(&__p, a3 + 18);
  sub_1000C89B4(&__p, a3 + 21);
  v7 = sub_10018A2B4((a2 + 128), __p, (v11 - __p));
  sub_100022214(buf);
  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v8 = sub_1000DD584(off_100B50A98, v7, 10000);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  sub_10002249C(buf);
  return v8;
}

uint64_t sub_100356E28(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v7 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v8 = v13 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "send set notification filter message to %{public}s", buf, 0xCu);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v9 = sub_100188B54((a2 + 128), a3, a4);
  sub_100022214(__p);
  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v10 = sub_1000DD584(off_100B50A98, v9, 10000);
  sub_10002249C(__p);
  return v10;
}

uint64_t sub_100356FC8(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v5 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v6 = v11 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "send get capabilities message to %{public}s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v7 = sub_100188894((a2 + 128), a3);
  sub_100022214(__p);
  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v8 = sub_1000DD584(off_100B50A98, v7, 10000);
  sub_10002249C(__p);
  return v8;
}

uint64_t sub_100357158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v5 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v6 = v11 >= 0 ? __p : __p[0];
    *buf = 134218242;
    v13 = a3;
    v14 = 2082;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Send source feature capabilities mask 0x%llx message to %{public}s", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v7 = sub_10018AF38((a2 + 128), a3);
  sub_100022214(__p);
  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v8 = sub_1000DD584(off_100B50A98, v7, 10000);
  sub_10002249C(__p);
  return v8;
}

uint64_t sub_1003572F4(uint64_t a1, uint64_t a2)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v3 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v4 = v9 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "send request case info message to %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v5 = sub_100189AEC((a2 + 128));
  sub_100022214(__p);
  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v6 = sub_1000DD584(off_100B50A98, v5, 10000);
  sub_10002249C(__p);
  return v6;
}

uint64_t sub_10035747C(uint64_t a1, uint64_t a2)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v3 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v4 = v9 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "query stream state info message to %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v5 = sub_100188AEC((a2 + 128));
  sub_100022214(__p);
  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v6 = sub_1000DD584(off_100B50A98, v5, 10000);
  sub_10002249C(__p);
  return v6;
}

uint64_t sub_100357604(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const void *a5)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v9 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v10 = v15 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "send easy pair req message to %{public}s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v11 = sub_100188D50((a2 + 128), a3, a4, a5);
  sub_100022214(__p);
  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v12 = sub_1000DD584(off_100B50A98, v11, 10000);
  sub_10002249C(__p);
  return v12;
}

uint64_t sub_1003577AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v5 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v6 = v11 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "send triangle status req message to %{public}s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v7 = sub_100188F1C((a2 + 128), a3);
  sub_100022214(__p);
  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v8 = sub_1000DD584(off_100B50A98, v7, 10000);
  sub_10002249C(__p);
  return v8;
}

uint64_t sub_10035793C(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v5 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v6 = v11 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "send get battery info message to %{public}s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v7 = sub_100188904((a2 + 128), a3);
  sub_100022214(__p);
  if (v7 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081DE08();
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v8 = sub_1000DD584(off_100B50A98, v7, 10000);
  sub_10002249C(__p);
  return v8;
}

uint64_t sub_100357AF8(uint64_t a1, uint64_t a2)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v3 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v4 = v9 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "send get in ear state info message to %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v5 = sub_100188980((a2 + 128));
  sub_100022214(__p);
  if (v5 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081DE78();
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v6 = sub_1000DD584(off_100B50A98, v5, 10000);
  sub_10002249C(__p);
  return v6;
}

uint64_t sub_100357CA4(uint64_t a1, uint64_t a2)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v3 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v4 = v9 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "send get role state info message to %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v5 = sub_1001889E8((a2 + 128));
  sub_100022214(__p);
  if (v5 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081DEE8();
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v6 = sub_1000DD584(off_100B50A98, v5, 10000);
  sub_10002249C(__p);
  return v6;
}

uint64_t sub_100357E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v5 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v6 = v11 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "send time stamp message to %{public}s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v7 = sub_100189258((a2 + 128), a3);
  sub_100022214(__p);
  if (v7 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081DF58();
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v8 = sub_1000DD584(off_100B50A98, v7, 10000);
  sub_10002249C(__p);
  return v8;
}

uint64_t sub_10035800C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v7 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v8 = v13 >= 0 ? __p : __p[0];
    *buf = 136446722;
    v15 = v8;
    v16 = 1024;
    v17 = a3;
    v18 = 1024;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "notify session state to %{public}s, sesssionType -> %d, sessionState -> %d", buf, 0x18u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  v9 = sub_100189778((a2 + 128), a3, a4);
  sub_100022214(buf);
  if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081DFC8();
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v10 = sub_1000DD584(off_100B50A98, v9, 10000);
  sub_10002249C(buf);
  return v10;
}

uint64_t sub_1003581E4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v7 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v8 = v13 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "send keys to %{public}s", buf, 0xCu);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v9 = sub_100189F44((a2 + 128), a3, a4);
  if (v9 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081E038();
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v10 = sub_1000DD584(off_100B50A98, v9, 10000);
  sub_10002249C(__p);
  return v10;
}

uint64_t sub_1003583A0(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v5 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v6 = v11 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "request keys from %{public}s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v7 = sub_100189CB8((a2 + 128), a3);
  if (v7 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081E0A8();
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v8 = sub_1000DD584(off_100B50A98, v7, 10000);
  sub_10002249C(__p);
  return v8;
}

uint64_t sub_100358554(uint64_t a1, uint64_t a2)
{
  v3 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v4 = v9 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "send disconnect message to %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v5 = sub_1001881D4((a2 + 128));
  sub_100022214(__p);
  if (v5 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081E118();
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v6 = sub_1000DD584(off_100B50A98, v5, 10000);
  sub_10002249C(__p);
  return v6;
}

uint64_t sub_1003586CC(uint64_t a1, uint64_t a2, int a3, unsigned int a4, const void *a5)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v17 = 0;
  sub_1000216B4(&v17);
  v9 = sub_100189B5C((a2 + 128), a3, a4, a5);
  sub_100022214(&v17);
  v10 = qword_100BCE8C0;
  if (v9)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(a2, __p);
      if (v16 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *buf = 136446978;
      v19 = v11;
      v20 = 1024;
      v21 = a3;
      v22 = 1024;
      v23 = a4;
      v24 = 1024;
      v25 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to send device info to %{public}s: type 0x%x, len %u, error %u", buf, 0x1Eu);
      goto LABEL_16;
    }
  }

  else if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v16 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136446722;
    v19 = v13;
    v20 = 1024;
    v21 = a3;
    v22 = 1024;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sent device info to %{public}s: type 0x%x, len %u", buf, 0x18u);
LABEL_16:
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v12 = sub_1000DD584(off_100B50A98, v9, 10000);
  sub_10002249C(&v17);
  return v12;
}

uint64_t sub_100358914(uint64_t a1, uint64_t a2, char a3, char a4, unsigned int a5, const void *a6)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  if (*(off_100B50948 + 328) != 1)
  {
    return 111;
  }

  v14 = 0;
  sub_1000216B4(&v14);
  v11 = sub_10018995C((a2 + 128), a3, a4, a5, a6);
  sub_100022214(&v14);
  if (v11 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081E188();
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100819F0C();
  }

  v12 = sub_1000DD584(off_100B50A98, v11, 10000);
  sub_10002249C(&v14);
  return v12;
}

uint64_t sub_100358A40(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v3 = sub_100189F4C(a2, 1001, off_100AEBFA0, a3);
  if (v3 && os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081E1F8();
  }

  return v3;
}

uint64_t sub_100358AA8(uint64_t a1, __n128 *a2, uint64_t a3, __int16 *a4)
{
  sub_100338F38(a1, a2);
  sub_10057C6D0(a3, 3);
  sub_10057C6D0(a3, 2);
  sub_10057C70C(a3, 1);
  sub_10057C6D0(a3, 16);
  sub_10057C6D0(a3, 2);
  sub_10057C70C(a3, 2);
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v7 = sub_1000C0D40(*a4, &v10, &v12, &v11);
  if (!v7)
  {
    sub_10057C6D0(a3, 1);
    sub_10057C6D0(a3, 7);
    sub_10057C70C(a3, *a4);
    sub_10057C70C(a3, v10);
    sub_10057C70C(a3, v12);
    sub_10057C6D0(a3, v11);
    if (!_os_feature_enabled_impl())
    {
      return v7;
    }

    v8 = sub_10000C798();
    if ((*(*v8 + 192))(v8))
    {
      sub_10057C6D0(a3, 25);
      sub_10057C6D0(a3, 0);
    }

LABEL_9:
    sub_10057C6D0(a3, 26);
    sub_10057C6D0(a3, 8);
    sub_10057C7AC(a3, *(a1 + 528));
    return v7;
  }

  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
  {
    sub_10081E234();
  }

  if (_os_feature_enabled_impl())
  {
    goto LABEL_9;
  }

  return v7;
}

uint64_t sub_100358C64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = sub_10000C5E0(a2 + 8) - *(a2 + 24);
  v23 = 0;
  if (v5 >= 1)
  {
    v20 = 0;
    v6 = 0;
    v18 = 4;
    while (1)
    {
      v7 = sub_10057C548(a2);
      if (v7 < 0)
      {
        v8 = sub_10057C598(a2);
        v9 = -3;
      }

      else
      {
        v8 = sub_10057C548(a2);
        v9 = -2;
      }

      v10 = v7 & 0x7F;
      if (v10 > 0xF)
      {
        if (v10 == 16)
        {
          if (v8 != 2)
          {
            goto LABEL_23;
          }

          LOWORD(v20) = sub_10057C598(a2);
        }

        else
        {
          if (v10 != 18)
          {
LABEL_15:
            v11 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v25 = v7 & 0x7F;
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "parseAACPDescriptor Key not recognized %d", buf, 8u);
            }

LABEL_23:
            v12 = v8;
            v13 = v8;
LABEL_24:
            if (v13)
            {
              v15 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109632;
                v25 = v7 & 0x7F;
                v26 = 1024;
                v27 = v12;
                v28 = 1024;
                v29 = v8;
                _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "parseAACPDescriptor Key:%d Dumped %d of %d bytes ", buf, 0x14u);
              }

              sub_10057C660(a2, v13);
            }

            goto LABEL_28;
          }

          if (v8 != 2)
          {
            goto LABEL_23;
          }

          v18 = sub_10057C598(a2);
        }
      }

      else
      {
        if (v10 == 1)
        {
          v12 = v8;
          v13 = v8;
          if (v8 >= 7)
          {
            v14 = sub_10057C598(a2);
            sub_10057C598(a2);
            v6 = sub_10057C598(a2);
            sub_10057C548(a2);
            buf[0] = 0;
            sub_1000216B4(buf);
            if (sub_1000ABC7C(a4, &v23) || !sub_1000B12AC(v23))
            {
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
              {
                sub_10081E270(&v21, v22);
              }
            }

            else
            {
              *(sub_1000B12AC(v23) + 8) = v14;
              *(sub_1000B12AC(v23) + 32) = v6;
              v6 -= 4;
              sub_1001BEF1C(v6, v18, a4);
            }

            sub_100022214(buf);
            sub_10002249C(buf);
            v12 = (v8 - 7);
            v13 = v8 - 7;
          }

          goto LABEL_24;
        }

        if (v10 != 3)
        {
          goto LABEL_15;
        }

        if (v8 != 2)
        {
          goto LABEL_23;
        }

        WORD2(v20) = sub_10057C598(a2);
      }

LABEL_28:
      LOWORD(v5) = v5 + v9 - v8;
      if (v5 <= 0)
      {
        goto LABEL_34;
      }
    }
  }

  v6 = 0;
  v20 = 0;
LABEL_34:
  buf[0] = 0;
  sub_1000216B4(buf);
  sub_10018A25C(v20, WORD2(v20), v6, (a3 + 128));
  sub_100022214(buf);
  sub_10002249C(buf);
  return 0;
}

void sub_100358FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

const __CFString *sub_100358FFC(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_100AED648[a1];
  }
}

uint64_t sub_100359020(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = sub_10000C5E0(a2 + 8);
  v7 = *(a2 + 24);
  memset(v97, 0, sizeof(v97));
  if (qword_100B540E0 != -1)
  {
    sub_10081E2AC();
  }

  if (*(sub_1000E6A38(off_100B540D8, a3 + 128) + 32) < 5u)
  {
    v89 = 0;
  }

  else
  {
    if (qword_100B540E0 != -1)
    {
      sub_10081E2AC();
    }

    v89 = sub_100730D2C(off_100B540D8) > 4;
  }

  v93 = v6 - v7;
  if ((v6 - v7) >= 1)
  {
    *&v8 = 136446466;
    v87 = v8;
    while (1)
    {
      v9 = sub_10057C548(a2);
      if (v9 < 0)
      {
        v92 = sub_10057C598(a2);
        v10 = -3;
      }

      else
      {
        v92 = sub_10057C548(a2);
        v10 = -2;
      }

      v11 = (v93 + v10);
      v12 = v92;
      v93 = v11 - v92;
      if (v11 < v92)
      {
        v84 = qword_100BCE8C0;
        if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *&buf[4] = v11;
          *&buf[8] = 1024;
          *&buf[10] = v92;
          _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "parseAACPSetupComplete not enough data remaining %d for %d", buf, 0xEu);
        }

        goto LABEL_124;
      }

      v13 = v9 & 0x7F;
      v91 = v13;
      if (v13 <= 0x14)
      {
        break;
      }

      if ((v9 & 0x7Fu) > 0x16)
      {
        if (v13 == 23)
        {
          v14 = v92;
          if (v92 == 4)
          {
            v57 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "parseAACPSetupComplete FC_AACP_ROLE_STATE received", buf, 2u);
            }

            *v102 = 0;
            sub_10057C50C(a2, v102, 4uLL);
            if ((v89 & _os_feature_enabled_impl()) == 1)
            {
              operator new();
            }

            goto LABEL_118;
          }
        }

        else
        {
          if (v13 == 24)
          {
            if (v92 - 6 <= 0xA)
            {
              v40 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "parseAACPSetupComplete FC_AACP_BATTERY_STATE received", buf, 2u);
              }

              *buf = 0;
              *&buf[8] = 0;
              sub_10057C50C(a2, buf, v92);
              if (!buf[0])
              {
LABEL_120:
                if ((v89 & _os_feature_enabled_impl()) == 1)
                {
                  operator new();
                }

                goto LABEL_118;
              }

              v41 = 0;
              v42 = &buf[3];
              while (2)
              {
                v43 = *(v42 - 2);
                if (v43 <= 3)
                {
                  if (v43 != 1)
                  {
                    if (v43 != 2)
                    {
                      goto LABEL_55;
                    }

                    v46 = [NSNumber numberWithUnsignedChar:*v42];
                    [v5 setObject:v46 forKeyedSubscript:@"BatteryLevelSecondary"];

LABEL_57:
                    ++v41;
                    v42 += 5;
                    if (v41 >= buf[0])
                    {
                      goto LABEL_120;
                    }

                    continue;
                  }
                }

                else if (v43 != 4)
                {
                  if (v43 == 8)
                  {
                    v48 = [NSNumber numberWithUnsignedChar:*v42];
                    [v5 setObject:v48 forKeyedSubscript:@"BatteryLevelCase"];
                  }

                  else
                  {
                    if (v43 == 16)
                    {
                      v44 = [NSNumber numberWithUnsignedChar:*v42];
                      [v5 setObject:v44 forKeyedSubscript:@"BatteryLevelPrimary"];

                      v45 = [NSNumber numberWithUnsignedChar:*v42];
                      [v5 setObject:v45 forKeyedSubscript:@"BatteryLevelSecondary"];

                      goto LABEL_57;
                    }

LABEL_55:
                    v49 = qword_100BCE8C0;
                    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
                    {
                      *v102 = 67109120;
                      *&v102[4] = v43;
                      _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "parseAACPDescriptor unknown battery id %d", v102, 8u);
                    }
                  }

                  goto LABEL_57;
                }

                break;
              }

              v47 = [NSNumber numberWithUnsignedChar:*v42];
              [v5 setObject:v47 forKeyedSubscript:@"BatteryLevelPrimary"];

              goto LABEL_57;
            }
          }

          else
          {
LABEL_63:
            v52 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *&buf[4] = v13;
              _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "parseAACPSetupComplete Key not recognized %d", buf, 8u);
            }
          }

          v14 = v92;
        }

LABEL_114:
        if (v12)
        {
          v83 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109632;
            *&buf[4] = v91;
            *&buf[8] = 1024;
            *&buf[10] = v14;
            *&buf[14] = 1024;
            *&buf[16] = v92;
            _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "parseAACPSetupComplete Key:%d Dumped %d of %d bytes ", buf, 0x14u);
          }

          sub_10057C660(a2, v12);
        }

        goto LABEL_118;
      }

      if (v13 == 21)
      {
        v14 = v92;
        if (v92 != 4)
        {
          goto LABEL_114;
        }

        *__p = 0;
        sub_10057C50C(a2, __p, 4uLL);
        v53 = [NSNumber numberWithUnsignedShort:*__p];
        [v5 setObject:v53 forKeyedSubscript:@"BasebandDuration"];

        v54 = [NSNumber numberWithUnsignedShort:*&__p[2]];
        [v5 setObject:v54 forKeyedSubscript:@"BasebandDurationTotal"];

        v55 = qword_100BCE8C0;
        if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_118;
        }

        sub_1000E5A58(a3, v102);
        v56 = v102;
        if (v103 < 0)
        {
          v56 = *v102;
        }

        *buf = 136446722;
        *&buf[4] = v56;
        *&buf[12] = 1024;
        *&buf[14] = *__p;
        *&buf[18] = 1024;
        LODWORD(v99) = *&__p[2];
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "FastConnect Incoming Baseband time for %{public}s took %u ms Total Baseband %u ms", buf, 0x18u);
        if ((v103 & 0x80000000) == 0)
        {
          goto LABEL_118;
        }

        v39 = *v102;
LABEL_72:
        operator delete(v39);
        goto LABEL_118;
      }

      if (v13 != 22)
      {
        goto LABEL_63;
      }

      v14 = v92;
      if (v92 != 2)
      {
        goto LABEL_114;
      }

      v15 = qword_100BCE8C0;
      if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "parseAACPSetupComplete FC_AACP_BUD_INEAR_STATE received", buf, 2u);
      }

      *v102 = 0;
      sub_10057C50C(a2, v102, 2uLL);
      v16 = sub_100358FFC(v102[0]);
      [v5 setObject:v16 forKeyedSubscript:@"InEarStatusPrimary"];

      v17 = sub_100358FFC(v102[1]);
      [v5 setObject:v17 forKeyedSubscript:@"InEarStatusSecondary"];

      if ((v89 & _os_feature_enabled_impl()) == 1)
      {
        operator new();
      }

LABEL_118:
      if (v93 <= 0)
      {
        goto LABEL_124;
      }
    }

    if (v13 == 4)
    {
      v14 = v92;
      if (v92 == 2)
      {
        v50 = sub_10057C598(a2);
        if (v50)
        {
          v51 = qword_100BCE8C0;
          if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v50;
            _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "parseAACPSetupComplete AACP status %d", buf, 8u);
          }
        }

        goto LABEL_118;
      }

      goto LABEL_114;
    }

    if (v13 == 19)
    {
      v58 = _os_feature_enabled_impl();
      if (v92 > 3)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      if ((v89 & v59) == 1)
      {
        v12 = v92;
        do
        {
          v60 = sub_10057C598(a2);
          v61 = sub_10057C598(a2);
          v62 = v61;
          if (v60 == 9)
          {
            v69 = v61 / 5u;
            v70 = qword_100BCE8C0;
            if (v61 % 5u)
            {
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *&buf[4] = v62;
                _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Invalid control command length: %u", buf, 8u);
              }
            }

            else
            {
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
              {
                sub_1000E5A58(a3, buf);
                v73 = buf;
                if (SBYTE3(v99) < 0)
                {
                  v73 = *buf;
                }

                *v102 = 67109378;
                *&v102[4] = v69;
                *&v102[8] = 2082;
                *&v102[10] = v73;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "parseAACPSetupComplete rcvd %u control commands from device %{public}s", v102, 0x12u);
                if (SBYTE3(v99) < 0)
                {
                  operator delete(*buf);
                }
              }

              if (v62)
              {
                v74 = sub_10057C548(a2);
                v75 = sub_10057C600(a2);
                v76 = qword_100BCE8C0;
                v77 = os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEBUG);
                if (v77)
                {
                  v78 = sub_100333BE4(v77, v74);
                  sub_100333C10(a1, v74, v75, v102);
                  v79 = v103;
                  v80 = *v102;
                  sub_1000E5A58(a3, __p);
                  v81 = v102;
                  if (v79 < 0)
                  {
                    v81 = v80;
                  }

                  v82 = __p;
                  if (v96 < 0)
                  {
                    v82 = *__p;
                  }

                  *buf = 136446978;
                  *&buf[4] = v78;
                  *&buf[12] = 1024;
                  *&buf[14] = v74;
                  *&buf[18] = 2082;
                  v99 = v81;
                  v100 = 2082;
                  v101 = v82;
                  _os_log_debug_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "parseAACPSetupComplete rcvd control command: %{public}s (control cmd 0x%02X) as %{public}s from device %{public}s", buf, 0x26u);
                  if (v96 < 0)
                  {
                    operator delete(*__p);
                  }

                  if (v103 < 0)
                  {
                    operator delete(*v102);
                  }
                }

                operator new();
              }
            }
          }

          else
          {
            if (v60 == 46)
            {
              v63 = sub_10057C548(a2);
              v64 = sub_10057C548(a2);
              v65 = sub_10057C548(a2);
              v66 = 8 * v65;
              v67 = sub_1001BBBD8(v66, 0x100004000313F17uLL);
              sub_10057C50C(a2, v67, v66);
              v68 = qword_100BCE8C0;
              if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
              {
                *buf = 67109888;
                *&buf[4] = v63;
                *&buf[8] = 1024;
                *&buf[10] = v64;
                *&buf[14] = 1024;
                *&buf[16] = v65;
                LOWORD(v99) = 1024;
                *(&v99 + 2) = v62;
                _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "parseAACPSetupComplete rcvd tipi table with version %u, audioState %u, sourceCount %u, length %u", buf, 0x1Au);
              }

              operator new();
            }

            v71 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              *&buf[4] = v60;
              *&buf[8] = 1024;
              *&buf[10] = v62;
              _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "parseAACPSetupComplete unhandled AACP Opcode %u, opcodeLength %u", buf, 0xEu);
            }

            sub_10057C660(a2, v62);
          }

          v72 = v12 - v62;
          v12 = v12 - v62 - 4;
          v14 = (v72 - 4);
        }

        while (v14 > 3);
      }

      else
      {
        v14 = v92;
        v12 = v92;
      }

      goto LABEL_114;
    }

    if (v13 != 20)
    {
      goto LABEL_63;
    }

    v14 = v92;
    if (v92 != 19)
    {
      goto LABEL_114;
    }

    v18 = qword_100BCE8C0;
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "parseAACPSetupComplete FC_AACP_AIRPODS_INFO received", buf, 2u);
    }

    memset(__p, 0, sizeof(__p));
    sub_10057C50C(a2, __p, 0x13uLL);
    v19 = [NSNumber numberWithUnsignedShort:*__p];
    [v5 setObject:v19 forKeyedSubscript:@"AirpodsTimeSinceBoot"];

    v20 = [NSNumber numberWithUnsignedShort:*&__p[2]];
    [v5 setObject:v20 forKeyedSubscript:@"ConnectionTimeHRB"];

    v21 = [NSNumber numberWithUnsignedChar:__p[11]];
    [v5 setObject:v21 forKeyedSubscript:@"NumberConnections24G"];

    v22 = [NSNumber numberWithUnsignedChar:__p[12]];
    [v5 setObject:v22 forKeyedSubscript:@"NumberConnectionsHRB"];

    v23 = [NSNumber numberWithUnsignedChar:__p[13]];
    [v5 setObject:v23 forKeyedSubscript:@"NumberConnectionsLE"];

    v24 = [NSNumber numberWithUnsignedChar:__p[14]];
    [v5 setObject:v24 forKeyedSubscript:@"NumberConnectionsSCO"];

    v25 = [NSNumber numberWithUnsignedChar:__p[15]];
    [v5 setObject:v25 forKeyedSubscript:@"NumberAOSLinks"];

    v26 = [NSNumber numberWithUnsignedChar:__p[16]];
    [v5 setObject:v26 forKeyedSubscript:@"UtpConnected"];

    v27 = @"UNKNOWN";
    if (__p[17] < 5uLL)
    {
      v27 = off_100AED6B0[__p[17]];
    }

    [v5 setObject:v27 forKeyedSubscript:{@"AudioState", v87}];
    v28 = [NSNumber numberWithUnsignedChar:__p[18]];
    [v5 setObject:v28 forKeyedSubscript:@"PendingCrashReport"];

    if (!__p[10])
    {
      goto LABEL_118;
    }

    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"BBFCStatusSink"];
    v36 = sub_100304810(&__p[4], v29, v30, v31, v32, v33, v34, v35);
    v37 = qword_100BCE8C0;
    if (!os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_118;
    }

    sub_1000E5A58(a3, buf);
    v38 = buf;
    if (SBYTE3(v99) < 0)
    {
      v38 = *buf;
    }

    *v102 = v87;
    *&v102[4] = v38;
    *&v102[12] = 2082;
    *&v102[14] = v36;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "BB FastConnect seen by %{public}s BT Addr: %{public}s", v102, 0x16u);
    if ((SBYTE3(v99) & 0x80000000) == 0)
    {
      goto LABEL_118;
    }

    v39 = *buf;
    goto LABEL_72;
  }

LABEL_124:
  if ((v89 & _os_feature_enabled_impl()) == 1)
  {
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E5A58(a3, buf);
      sub_10081E2C0();
    }

    v94 = a3 + 128;
    *__p = &v94;
    v85 = sub_100360B5C((a1 + 448), &v94);
    sub_10035A548(v85 + 3, v97);
  }

  sub_1003617DC(v97);

  return 0;
}

void sub_10035A264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_1003617DC(&a37);

  _Unwind_Resume(a1);
}

void *sub_10035A440(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = sub_100362E04(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

const void **sub_10035A4C8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[4];
  if (!v4)
  {
    result = sub_100362FD8(result);
    v4 = v3[4];
  }

  v5 = v3[1];
  v6 = &v5[8 * (v4 >> 9)];
  if (v3[2] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 8 * (v4 & 0x1FF);
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 8) = *a2;
  v8 = v3[5] + 1;
  v3[4] = (v4 - 1);
  v3[5] = v8;
  return result;
}

void *sub_10035A548(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = a2[4];
    v5 = a2[1];
    v6 = a2[2];
    v7 = (v5 + 8 * (v4 >> 9));
    if (v6 == v5)
    {
      v8 = 0;
      v11 = 0;
      v10 = (v5 + 8 * ((a2[5] + v4) >> 9));
    }

    else
    {
      v8 = &(*v7)[8 * (v4 & 0x1FF)];
      v9 = a2[5] + v4;
      v10 = (v5 + 8 * (v9 >> 9));
      v11 = (*v10 + 8 * (v9 & 0x1FF));
    }

    sub_100363220(a1, v7, v8, v10, v11);
  }

  return a1;
}

uint64_t sub_10035A5DC(uint64_t a1, __n128 *a2, uint64_t a3)
{
  sub_100338F38(a1, a2);
  sub_10057C6D0(a3, 19);
  *v64 = 0u;
  v65 = 0u;
  sub_10057C6A8(v64, 0);
  sub_10057C70C(v64, 15);
  sub_10057C70C(v64, 4);
  if (a2)
  {
    if (sub_1000E356C(a2))
    {
      v6 = -2;
    }

    else
    {
      v6 = -4;
    }
  }

  else
  {
    v6 = 122;
  }

  sub_10057C70C(v64, 0xFFFF);
  sub_10057C70C(v64, v6);
  v63[0] = 0;
  v63[1] = 0;
  sub_100007F88(v63, a1 + 360);
  if (qword_100B540E0 != -1)
  {
    sub_10081E328();
  }

  v7 = sub_1000E6A38(off_100B540D8, &a2[8]);
  v8 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(v7 + 32);
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "composeAACPConfigure: remote fcVersion %u", buf, 8u);
  }

  if (*(v7 + 32) >= 5u && _os_feature_enabled_impl())
  {
    v61 = 0;
    v62 = 0;
    v10 = sub_1000C2364(a2, &v62 + 1, &v62, &v61 + 1, &v61);
    sub_10057C70C(v64, 9);
    *buf = 0u;
    v70 = 0u;
    sub_10057C6A8(buf, 0);
    v11 = sub_10000C798();
    v12 = (*(*v11 + 368))(v11);
    if (v12 && sub_10033A624(v12, a2))
    {
      sub_10057C6D0(buf, 11);
      v13 = 500;
    }

    else
    {
      v14 = sub_10000C798();
      if ((*(*v14 + 352))(v14) & 1) == 0 && (v15 = sub_10000C798(), !(*(*v15 + 360))(v15)) || !sub_1000E2140(a2, 13) || (v16 = sub_10000C798(), ((*(*v16 + 760))(v16)))
      {
LABEL_21:
        v17 = sub_10000C798();
        v18 = (*(*v17 + 760))(v17);
        if (v18 && sub_10033A624(v18, a2))
        {
          sub_10057C6D0(buf, 11);
          sub_10057C75C(buf, 0x1F4u);
        }

        v19 = a2[63].n128_u8[8];
        v20 = a2[64].n128_u8[8];
        v21 = sub_1000E2140(a2, 22);
        v22 = HIDWORD(v61) == 8209 || v21;
        if (v22 == 1)
        {
          sub_10057C6D0(buf, 19);
          v23 = v20 ? 2 : 1;
          sub_10057C75C(buf, v23);
          v24 = sub_10057C6D0(buf, 18);
          v25 = sub_10033A804(v24, v20);
          sub_10057C75C(buf, v25);
          if (sub_1000E2140(a2, 22))
          {
            v26 = sub_10057C6D0(buf, 60);
            v27 = sub_10033A858(v26, a2);
            sub_10057C75C(buf, v27);
          }
        }

        if (v19)
        {
          goto LABEL_79;
        }

        sub_10057C6D0(buf, 1);
        v28 = sub_1000E3314(a2);
        v29 = sub_10057C75C(buf, v28);
        v30 = sub_1003391A4(v29, a2);
        v31 = HIDWORD(v61) != 8208 && v30;
        if ((v31 & v10) == 1)
        {
          sub_10057C6D0(buf, 10);
          if (sub_1000E356C(a2))
          {
            v32 = 2;
          }

          else
          {
            v32 = 1;
          }

          sub_10057C75C(buf, v32);
        }

        sub_10057C6D0(buf, 6);
        v33 = sub_1000E2B78(a2);
        sub_10057C75C(buf, v33);
        if (sub_1000E2140(a2, 29) && !sub_1000E2140(a2, 43))
        {
          sub_10057C6D0(buf, 23);
          v34 = sub_100549334(a2);
          sub_10057C75C(buf, v34);
        }

        if (sub_1000E2140(a2, 30) && !sub_1000E2140(a2, 38))
        {
          sub_10057C6D0(buf, 22);
          v35 = sub_1000E06EC(a2);
          sub_10057C75C(buf, v35);
          if (!sub_1000E2140(a2, 43))
          {
            sub_10057C6D0(buf, 24);
            v36 = sub_10054937C(a2);
            sub_10057C75C(buf, v36);
          }
        }

        if (_os_feature_enabled_impl() && sub_1000E3218(a2, 0x13u) == 1)
        {
          sub_10057C6D0(buf, 52);
          v37 = sub_10054964C(a2);
          sub_10057C75C(buf, v37);
        }

        if (sub_1000E2140(a2, 28))
        {
          sub_10057C6D0(buf, 26);
          v38 = sub_1000E32CC(a2);
          sub_10057C75C(buf, v38);
        }

        if (sub_1000E2140(a2, 16) && sub_1000E2140(a2, 1) && !sub_1000E2140(a2, 43))
        {
          sub_10057C6D0(buf, 27);
          v39 = sub_1005493C4(a2);
          sub_10057C75C(buf, v39);
        }

        if (sub_1000E3218(a2, 0x15u) == 1 && sub_1005498D4(a2))
        {
          sub_10057C6D0(buf, 50);
          v40 = sub_1005498D4(a2);
          sub_10057C75C(buf, v40);
        }

        if (sub_1000E2140(a2, 32))
        {
          v41 = sub_1000E5DB8(a2);
          if (v41)
          {
            sub_10057C6D0(buf, 32);
          }

          else
          {
            v42 = qword_100BCE8C0;
            if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(a2, &__p);
              if (v60 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              v44 = sub_1000E2140(a2, 32);
              v45 = sub_1000E5DB8(a2);
              v46 = "No";
              *v66 = 136446722;
              *&v66[4] = p_p;
              if (v44)
              {
                v46 = "Yes";
              }

              *&v66[12] = 2080;
              *&v66[14] = v46;
              v67 = 1024;
              v68 = v45;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}s Initialize setSmartRouteMode via connection Tipi Support = %s current SR Mode =%d", v66, 0x1Cu);
              if (v60 < 0)
              {
                operator delete(__p);
              }
            }

            if (!sub_100546280(a2, 1))
            {
              goto LABEL_75;
            }

            sub_10057C6D0(buf, 32);
            v41 = 1;
          }

          sub_10057C75C(buf, v41);
        }

LABEL_75:
        if (_os_feature_enabled_impl())
        {
          sub_10057C6D0(buf, 54);
          v47 = sub_1005464F8(a2);
          sub_10057C75C(buf, v47);
        }

        v48 = sub_10000C7D0();
        if ((*(*v48 + 2904))(v48))
        {
          sub_10057C6D0(buf, 62);
          sub_10057C75C(buf, 1u);
        }

LABEL_79:
        sub_10000C704(v66, *&buf[8], v70 - *&buf[8]);
        v49 = sub_10000C5E0(v66);
        sub_10057C70C(v64, v49);
        *v66 = &off_100AE0A78;
        if (*&v66[8])
        {
          sub_10000C808(*&v66[8]);
        }

        sub_10000C704(v66, *&buf[8], v70 - *&buf[8]);
        v50 = sub_10000C5F8(v66);
        sub_10000C704(&__p, *&buf[8], v70 - *&buf[8]);
        v51 = sub_10000C5E0(&__p);
        sub_10057C6B8(v64, v50, v51);
        __p = &off_100AE0A78;
        if (v59)
        {
          sub_10000C808(v59);
        }

        *v66 = &off_100AE0A78;
        if (*&v66[8])
        {
          sub_10000C808(*&v66[8]);
        }

        if (*&buf[8])
        {
          *&v70 = *&buf[8];
          operator delete(*&buf[8]);
        }

        goto LABEL_87;
      }

      sub_10057C6D0(buf, 11);
      v13 = 150;
    }

    sub_10057C75C(buf, v13);
    goto LABEL_21;
  }

LABEL_87:
  sub_10000801C(v63);
  v52 = sub_10000C704(buf, v64[1], v65 - v64[1]);
  v53 = sub_10000C5E0(v52);
  sub_10057C6D0(a3, v53);
  *buf = &off_100AE0A78;
  if (*&buf[8])
  {
    sub_10000C808(*&buf[8]);
  }

  v54 = sub_10000C704(buf, v64[1], v65 - v64[1]);
  v55 = sub_10000C5F8(v54);
  sub_10000C704(v66, v64[1], v65 - v64[1]);
  v56 = sub_10000C5E0(v66);
  sub_10057C6B8(a3, v55, v56);
  *v66 = &off_100AE0A78;
  if (*&v66[8])
  {
    sub_10000C808(*&v66[8]);
  }

  *buf = &off_100AE0A78;
  if (*&buf[8])
  {
    sub_10000C808(*&buf[8]);
  }

  sub_1000088CC(v63);
  if (v64[1])
  {
    *&v65 = v64[1];
    operator delete(v64[1]);
  }

  return 0;
}

void sub_10035AFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = *(v25 - 88);
  if (v27)
  {
    *(v25 - 80) = v27;
    operator delete(v27);
  }

  sub_1000088CC(&a18);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10035B168(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fast Connect AACP Report Connection attempt for %{public}s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10057D9B0(a1, a2);
}

void sub_10035B264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fast Connect AACP Setup Complete result %d", buf, 8u);
  }

  *buf = 0;
  v9 = 0;
  sub_100007F88(buf, a1 + 360);
  if (qword_100B540E0 != -1)
  {
    sub_10081E328();
  }

  sub_1000E6A38(off_100B540D8, a2 + 128);
  sub_10000801C(buf);
  if (a3)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_100819F0C();
    }

    v7 = sub_1000DD584(off_100B50A98, a3, 20000);
    sub_10057DA84(a1, a2, v7);
  }

  sub_10057DA84(a1, a2, 0);
}

void sub_10035B47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10035B49C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, (a1 + 45));
  if (a2)
  {
    for (i = a1[42]; i != a1[43]; ++i)
    {
      v9 = *i;
      if (**i == a2)
      {
        if ((*(*v9[96] + 176))(v9[96]) == 1)
        {
          sub_1003411BC(a1, v9);
        }

        break;
      }
    }
  }

  v10 = _os_feature_enabled_impl() ^ 1;
  if (!a4)
  {
    LOBYTE(v10) = 1;
  }

  if ((v10 & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    v23[0] = a2 + 128;
    v18 = v23;
    v11 = sub_100360B5C(a1 + 56, v23);
    sub_100360E50(&v19, v11 + 3);
    if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E5A58(a2, &v18);
      sub_10081E350();
    }

    if (v20 != *(&v19 + 1))
    {
      v12 = (*(&v19 + 1) + 8 * (v21 >> 9));
      v13 = (*v12 + 8 * (v21 & 0x1FF));
      v14 = *(*(&v19 + 1) + (((*(&v21 + 1) + v21) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v21 + 1) + v21) & 0x1FF);
      while (v13 != v14)
      {
        if (*v13)
        {
          (*(**v13 + 8))(*v13);
        }

        if ((++v13 - *v12) == 4096)
        {
          v15 = v12[1];
          ++v12;
          v13 = v15;
        }
      }
    }

    v17 = a2 + 128;
    sub_100361888(a1 + 56, &v17);
    sub_1003617DC(&v19);
  }

  LOBYTE(v19) = 0;
  sub_1000216B4(&v19);
  sub_10018A214((a2 + 128), a3);
  sub_10002249C(&v19);
  return sub_1000088CC(v22);
}

void sub_10035B700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_1003617DC(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

void sub_10035B748(uint64_t a1, unsigned int a2)
{
  v4 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = sub_1006C6574(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Playback state is now %s", &v5, 0xCu);
  }

  *(a1 + 496) = a2;
}

uint64_t sub_10035B804(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v18 = *a3;
  v19 = *(a3 + 2);
  v16 = *(a2 + 128);
  v17 = *(a2 + 132);
  v6 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000BE6F8(&v18, v14);
    v7 = v15;
    v8 = v14[0];
    sub_1000BE6F8(&v16, __p);
    v9 = v14;
    if (v7 < 0)
    {
      v9 = v8;
    }

    if (v13 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315394;
    v21 = v9;
    v22 = 2080;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "passLinkKeyRequest sending store linkkey request to accessory  %s and phone  %s", buf, 0x16u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  (*(*a1 + 144))(a1, &v16, &v18, a4, 16);
  return 0;
}

void sub_10035B984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10035B9A8(uint64_t a1, uint64_t a2, char a3)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        v10 = sub_1000D999C();
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10035BB30;
        v15[3] = &unk_100AE15D8;
        v15[4] = a2;
        v16 = a3;
        sub_10000CA94(v10, v15);
        v11 = sub_1000DAB84();
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10035BB88;
        v13[3] = &unk_100AE15D8;
        v13[4] = a2;
        v14 = a3;
        sub_10000CA94(v11, v13);
        v8 = 0;
        goto LABEL_9;
      }
    }
  }

  v7 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setAllowsAutoRoute unable to find AACP connection", v12, 2u);
  }

  v8 = 312;
LABEL_9:
  sub_1000088CC(v17);
  return v8;
}

uint64_t sub_10035BB30(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10081B980();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1005E74B0(v2, v3, v4);
}

uint64_t sub_10035BB88(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10081DB54();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1004DCF58(v2, v3, v4);
}

uint64_t sub_10035BBE0(uint64_t a1, uint64_t a2, char a3)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 360);
  if (a2)
  {
    for (i = *(a1 + 336); i != *(a1 + 344); ++i)
    {
      if (**i == a2)
      {
        v10 = sub_1000D999C();
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10035BD68;
        v15[3] = &unk_100AE15D8;
        v15[4] = a2;
        v16 = a3;
        sub_10000CA94(v10, v15);
        v11 = sub_1000DAB84();
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10035BDC0;
        v13[3] = &unk_100AE15D8;
        v13[4] = a2;
        v14 = a3;
        sub_10000CA94(v11, v13);
        v8 = 0;
        goto LABEL_9;
      }
    }
  }

  v7 = qword_100BCE8C0;
  if (os_log_type_enabled(qword_100BCE8C0, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setAudioRouteHidden unable to find AACP connection", v12, 2u);
  }

  v8 = 312;
LABEL_9:
  sub_1000088CC(v17);
  return v8;
}

uint64_t sub_10035BD68(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10081B980();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1005E75FC(v2, v3, v4);
}

uint64_t sub_10035BDC0(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10081DB54();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1004DD0C0(v2, v3, v4);
}

uint64_t sub_10035BE18(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10081B980();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1005E7748(v2, v3, v4);
}

uint64_t sub_10035BE70(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10081DB54();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1004DD228(v2, v3, v4);
}

uint64_t sub_10035BEC8(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10081B980();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1005E77AC(v2, v3, v4);
}

uint64_t sub_10035BF20(uint64_t a1)
{
  if (qword_100B50AE0 != -1)
  {
    sub_10081DB54();
  }

  v2 = qword_100B50AD8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return sub_1004DD2B0(v2, v3, v4);
}

void sub_10035BF9C(uint64_t a1)
{
  sub_10035F9A8(a1);

  operator delete();
}

uint64_t sub_10035C01C(unint64_t *a1)
{
  result = sub_1003567C4(a1, a1[2]);
  if (result)
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v6 = *(*a1 + 40);

    return v6(a1, v3, v4, v5);
  }

  return result;
}

void *sub_10035C0A8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100044BBC(a1 + 3);
  return a1;
}

void sub_10035C0DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10035C0F8(uint64_t a1)
{
  sub_10007A068(a1 + 24);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035C134(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  if (v5 == v4)
  {
LABEL_6:
    v6 = a2;
    sub_10035C1C0((a1 + 8), v4, &v6);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_10035C1C0(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_10035C35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10035C394(uint64_t a1)
{
  for (i = 0; i != 88; i += 8)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + i) = 0;
    }
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 88) = 0;
  }

  return a1;
}

void sub_10035C400(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;

  sub_100340AFC(v2, a1 + 10);
}

void sub_10035C46C(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);

  sub_100340C6C(v2, a1 + 10, v3, v4);
}

void sub_10035C4E0(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);

  sub_100340ECC(v2, (a1 + 10), v3);
}

uint64_t sub_10035C538(uint64_t a1, int *a2, unsigned __int16 *a3, unsigned int a4, int a5)
{
  *(a1 + 8) = 1;
  *a1 = off_100AEC4A8;
  v5 = *a2;
  *(a1 + 14) = *(a2 + 2);
  *(a1 + 10) = v5;
  *(a1 + 32) = a5;
  *(a1 + 24) = 0;
  if (!a3)
  {
    v10 = "data";
    goto LABEL_14;
  }

  if (a4 != 1)
  {
    if (a4)
    {
      v7 = *a3;
      *(a1 + 16) = v7;
      if (v7 == 30)
      {
        if (a4 >= 4)
        {
          v8 = a3[1];
LABEL_10:
          *(a1 + 24) = v8;
          return a1;
        }

LABEL_9:
        v8 = 0;
        goto LABEL_10;
      }

      return a1;
    }

    v10 = "(dataLen) > 0";
LABEL_14:
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/aacp/AACPClient.mm", 8110, v10);
  }

  if (*(a1 + 16) == 30)
  {
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/aacp/AACPClient.mm");
    goto LABEL_9;
  }

  return a1;
}

uint64_t sub_10035C638(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  return sub_1003414F4(v2, a1 + 10, v3, v4);
}

void *sub_10035C694(void *result)
{
  *result = off_100AEC4E0;
  if (result[3])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035C6F0(void *a1)
{
  *a1 = off_100AEC4E0;
  if (a1[3])
  {
    operator delete[]();
  }

  operator delete();
}

uint64_t sub_10035C76C(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  return sub_1003419E4(v2, a1 + 10, v3, v4);
}

void *sub_10035C7C8(void *result)
{
  *result = off_100AEC518;
  if (result[3])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035C824(void *a1)
{
  *a1 = off_100AEC518;
  if (a1[3])
  {
    operator delete[]();
  }

  operator delete();
}

void sub_10035C8A0(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  sub_10034398C(v2, a1 + 10, v3, v4);
}

void sub_10035C914(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;

  sub_100344840(v2, a1 + 10, (a1 + 16));
}

void sub_10035C984(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;

  sub_100344BD8(v2, a1 + 10, (a1 + 16));
}

uint64_t sub_10035C9F4(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 22);

  return sub_1003454A8(v2, a1 + 10, a1 + 16, v3);
}

uint64_t sub_10035CA68(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 22);

  return sub_100345DE4(v2, a1 + 10, a1 + 16, v3);
}

void sub_10035CADC()
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }
}

void sub_10035CB08(uint64_t a1, int *a2, char a3, uint64_t a4, char a5)
{
  *(a1 + 8) = 1;
  *a1 = off_100AEC668;
  v5 = *a2;
  *(a1 + 14) = *(a2 + 2);
  *(a1 + 10) = v5;
  *(a1 + 16) = a3;
  *(a1 + 32) = a5;
  operator new[]();
}

void sub_10035CC08(uint64_t a1)
{
  sub_10035CCA0(a1);

  operator delete();
}

uint64_t sub_10035CC40(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  return sub_100346074(v2, a1 + 10, v3, v4);
}

uint64_t sub_10035CCA0(uint64_t result)
{
  *result = off_100AEC668;
  if (*(result + 16))
  {
    v1 = 0;
    v2 = 8;
    do
    {
      if (*(*(result + 24) + v2))
      {
        operator delete[]();
      }

      ++v1;
      v2 += 16;
    }

    while (v1 < *(result + 16));
  }

  if (*(result + 24))
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_10035CD64(unsigned __int16 *a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[10];

  return sub_100346F8C(v2, (a1 + 5), v3, v4, v5);
}

void *sub_10035CDC4(void *result)
{
  *result = off_100AEC6D8;
  if (result[3])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035CE20(void *a1)
{
  *a1 = off_100AEC6D8;
  if (a1[3])
  {
    operator delete[]();
  }

  operator delete();
}

uint64_t sub_10035CE9C(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 20);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  return sub_100347390(v2, a1 + 10, v3, v4, v5);
}

void sub_10035CF14(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = *(a1 + 16);

  sub_100348584(a1, a1 + 10, v2);
}

void sub_10035CF7C(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);

  sub_1003486B0(v2, a1 + 10, v3, v4);
}

void *sub_10035CFD8(void *result)
{
  *result = off_100AEC780;
  if (result[3])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035D034(void *a1)
{
  *a1 = off_100AEC780;
  if (a1[3])
  {
    operator delete[]();
  }

  operator delete();
}

uint64_t sub_10035D0B0(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 18);
  v5 = *(a1 + 24);

  return sub_1003491D8(v2, a1 + 10, v3, v4, v5);
}

void *sub_10035D110(void *result)
{
  *result = off_100AEC7B8;
  if (result[3])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035D16C(void *a1)
{
  *a1 = off_100AEC7B8;
  if (a1[3])
  {
    operator delete[]();
  }

  operator delete();
}

void sub_10035D1E8(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 18);
  v5 = *(a1 + 24);

  sub_10034AA64(v2, (a1 + 10), v3, v4, v5);
}

void *sub_10035D248(void *result)
{
  *result = off_100AEC7F0;
  if (result[3])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035D2A4(void *a1)
{
  *a1 = off_100AEC7F0;
  if (a1[3])
  {
    operator delete[]();
  }

  operator delete();
}

void sub_10035D320(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  sub_10034ABFC(v2, a1 + 10, v3, v4);
}

void *sub_10035D37C(void *result)
{
  *result = off_100AEC828;
  if (result[3])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035D3D8(void *a1)
{
  *a1 = off_100AEC828;
  if (a1[3])
  {
    operator delete[]();
  }

  operator delete();
}

void sub_10035D454(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a1 + 24);

  sub_10034AE18(a1, a1 + 10, v2, v3, v4, v5);
}

uint64_t sub_10035D4B0(uint64_t a1, int *a2, __int128 *a3)
{
  *(a1 + 8) = 1;
  *a1 = off_100AEC860;
  v4 = *a2;
  *(a1 + 14) = *(a2 + 2);
  *(a1 + 10) = v4;
  v5 = *a3;
  *(a1 + 30) = *(a3 + 14);
  *(a1 + 16) = v5;
  v6 = *(a3 + 22);
  if (v6)
  {
    strlen(v6);
    operator new[]();
  }

  return a1;
}

void *sub_10035D564(void *result)
{
  *result = off_100AEC860;
  if (result[6])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035D5C0(void *a1)
{
  *a1 = off_100AEC860;
  if (a1[6])
  {
    operator delete[]();
  }

  operator delete();
}

void sub_10035D63C(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;

  sub_10034B07C(v2, a1 + 10, (a1 + 16));
}

void *sub_10035D694(void *result)
{
  *result = off_100AEC898;
  if (result[3])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035D6F0(void *a1)
{
  *a1 = off_100AEC898;
  if (a1[3])
  {
    operator delete[]();
  }

  operator delete();
}

uint64_t sub_10035D76C(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = *(a1 + 22);
  v3 = *(a1 + 24);

  return sub_10034B5E0(a1, a1 + 10, (a1 + 16), v2, v3);
}

void sub_10035D7C4(uint64_t a1, int *a2, char a3, char a4, char a5, char a6, char *__s, __int16 a8, void *__src)
{
  *(a1 + 8) = 1;
  *a1 = off_100AEC8D0;
  v11 = *a2;
  *(a1 + 14) = *(a2 + 2);
  *(a1 + 10) = v11;
  *(a1 + 16) = a3;
  *(a1 + 17) = a4;
  *(a1 + 18) = a5;
  *(a1 + 19) = a6;
  sub_100007E30((a1 + 24), __s);
  *(a1 + 48) = a8;
  operator new[]();
}

void sub_10035D86C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_10035D88C(uint64_t a1)
{
  sub_10035D9AC(a1);

  operator delete();
}

void sub_10035D8C4(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 18);
  v6 = *(a1 + 19);
  if (*(a1 + 47) < 0)
  {
    sub_100008904(__p, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *__p = *(a1 + 24);
    v8 = *(a1 + 40);
  }

  sub_10034B768(v2, a1 + 10, v3, v4, v5, v6, __p, *(a1 + 48), *(a1 + 56));
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10035D990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10035D9AC(uint64_t a1)
{
  *a1 = off_100AEC8D0;
  if (*(a1 + 56))
  {
    operator delete[]();
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_10035DA18(uint64_t a1, int *a2, uint64_t a3, unsigned int a4, char a5)
{
  *(a1 + 8) = 1;
  *a1 = off_100AEC908;
  v6 = *a2;
  v7 = *(a2 + 2);
  *(a1 + 16) = 0;
  v8 = a1 + 16;
  *(v8 - 2) = v7;
  *(v8 - 6) = v6;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  if (a4)
  {
    sub_1000C9104(v8, a4);
  }

  *(a1 + 40) = a5;
  return a1;
}

void *sub_10035DAC4(void *a1)
{
  *a1 = off_100AEC908;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035DB14(void *a1)
{
  *a1 = off_100AEC908;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10035DB84(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 40);

  return sub_10034BD5C(v2, (a1 + 10), (a1 + 16), v3);
}

uint64_t sub_10035DBE0(uint64_t a1, int *a2, uint64_t a3, unsigned int a4)
{
  *(a1 + 8) = 1;
  *a1 = off_100AEC940;
  v5 = *a2;
  v6 = *(a2 + 2);
  *(a1 + 16) = 0;
  v7 = a1 + 16;
  *(v7 - 2) = v6;
  *(v7 - 6) = v5;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  if (a4)
  {
    sub_1000C9104(v7, a4);
  }

  return a1;
}

void *sub_10035DC84(void *a1)
{
  *a1 = off_100AEC940;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035DCD4(void *a1)
{
  *a1 = off_100AEC940;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10035DD44(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;

  return sub_10034C5FC(v2, a1 + 10, (a1 + 16));
}

uint64_t sub_10035DD9C(uint64_t a1, int *a2, unsigned int a3)
{
  *(a1 + 8) = 1;
  *a1 = off_100AEC978;
  v4 = *a2;
  v5 = *(a2 + 2);
  *(a1 + 16) = 0;
  v6 = a1 + 16;
  *(v6 - 2) = v5;
  *(v6 - 6) = v4;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  if (a3)
  {
    sub_1000C9104(v6, a3);
  }

  return a1;
}

void *sub_10035DE40(void *a1)
{
  *a1 = off_100AEC978;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035DE90(void *a1)
{
  *a1 = off_100AEC978;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10035DF00(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;

  return sub_10034C7B0(v2, a1 + 10, (a1 + 16));
}

uint64_t sub_10035DF70(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);

  return sub_10034CD20(v2, a1 + 10, v3);
}

uint64_t sub_10035DFC8(uint64_t result, int *a2, int a3)
{
  *(result + 8) = 1;
  *result = off_100AEC9E8;
  v3 = *a2;
  v4 = *(a2 + 2);
  *(result + 24) = 0;
  *(result + 14) = v4;
  *(result + 10) = v3;
  *(result + 16) = a3;
  *(result + 32) = 0;
  *(result + 40) = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      operator new();
    }

    if (a3 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      operator new();
    }
  }

  return result;
}

void sub_10035E134(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10035E15C(void *a1)
{
  *a1 = off_100AEC9E8;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035E1AC(void *a1)
{
  *a1 = off_100AEC9E8;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_10035E21C(uint64_t a1, uint64_t a2)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v3 = *(a1 + 16);

  sub_10034CE58(a1, a2, v3, (a1 + 24));
}

uint64_t sub_10035E26C(uint64_t a1, int *a2, char a3, uint64_t a4, unsigned int a5)
{
  *(a1 + 8) = 1;
  *a1 = off_100AECA20;
  v6 = *a2;
  v7 = *(a2 + 2);
  *(a1 + 32) = 0;
  v8 = a1 + 32;
  *(v8 - 18) = v7;
  *(v8 - 22) = v6;
  *(v8 - 16) = a3;
  *(v8 - 8) = a4;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  if (a5)
  {
    sub_1000C9104(v8, a5);
  }

  return a1;
}

void *sub_10035E318(void *a1)
{
  *a1 = off_100AECA20;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035E368(void *a1)
{
  *a1 = off_100AECA20;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10035E3D8(uint64_t a1, uint64_t a2)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v3 = off_100B50948;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  return sub_10034BF9C(v3, a2, v4, v5, (a1 + 32));
}

void *sub_10035E434(void *result)
{
  *result = off_100AECA58;
  if (result[2])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035E490(void *a1)
{
  *a1 = off_100AECA58;
  if (a1[2])
  {
    operator delete[]();
  }

  operator delete();
}

void sub_10035E50C(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 26);
  v6 = *(a1 + 27);

  sub_10034E4B8(v2, a1 + 10, v3, v4, v5, v6);
}

void *sub_10035E570(void *result)
{
  *result = off_100AECA90;
  if (result[3])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035E5CC(void *a1)
{
  *a1 = off_100AECA90;
  if (a1[3])
  {
    operator delete[]();
  }

  operator delete();
}

uint64_t sub_10035E648(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  return sub_10034D0FC(v2, (a1 + 10), v3, v4);
}

uint64_t sub_10035E6A4(uint64_t a1, int *a2, unsigned int a3)
{
  *(a1 + 8) = 1;
  *a1 = off_100AECAC8;
  v4 = *a2;
  v5 = *(a2 + 2);
  *(a1 + 16) = 0;
  v6 = a1 + 16;
  *(v6 - 2) = v5;
  *(v6 - 6) = v4;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  if (a3)
  {
    sub_1000C9104(v6, a3);
  }

  return a1;
}

void *sub_10035E748(void *a1)
{
  *a1 = off_100AECAC8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035E798(void *a1)
{
  *a1 = off_100AECAC8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10035E808(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;

  return sub_10034D218(v2, a1 + 10, (a1 + 16));
}

uint64_t sub_10035E860(uint64_t a1, int *a2, char a3, unsigned int a4)
{
  *(a1 + 8) = 1;
  *a1 = off_100AECB00;
  v5 = *a2;
  v6 = *(a2 + 2);
  *(a1 + 24) = 0;
  v7 = a1 + 24;
  *(v7 - 10) = v6;
  *(v7 - 14) = v5;
  *(v7 - 8) = a3;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  if (a4)
  {
    sub_10035EA68(v7, a4);
  }

  return a1;
}

void *sub_10035E908(void *a1)
{
  *a1 = off_100AECB00;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035E958(void *a1)
{
  *a1 = off_100AECB00;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_10035E9C8(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  sub_100361EA4(__p, (a1 + 24));
  sub_10034D5C8(v2, a1 + 10, v3, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10035EA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035EA68(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10035EAA4(a1, a2);
  }

  sub_1000C7698();
}

void sub_10035EAA4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_10035EAEC(uint64_t a1, int *a2, unsigned int a3)
{
  *(a1 + 8) = 1;
  *a1 = off_100AECB38;
  v4 = *a2;
  v5 = *(a2 + 2);
  *(a1 + 16) = 0;
  v6 = a1 + 16;
  *(v6 - 2) = v5;
  *(v6 - 6) = v4;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  if (a3)
  {
    sub_1000C9104(v6, a3);
  }

  return a1;
}

void *sub_10035EB90(void *a1)
{
  *a1 = off_100AECB38;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035EBE0(void *a1)
{
  *a1 = off_100AECB38;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10035EC50(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;

  return sub_10034D404(v2, a1 + 10, (a1 + 16));
}

uint64_t sub_10035ECA8(uint64_t a1, int *a2, __int16 a3, unsigned int a4)
{
  *(a1 + 8) = 1;
  *a1 = off_100AECB70;
  v5 = *a2;
  v6 = *(a2 + 2);
  *(a1 + 24) = 0;
  v7 = a1 + 24;
  *(v7 - 10) = v6;
  *(v7 - 14) = v5;
  *(v7 - 8) = a3;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  if (a4)
  {
    sub_1000C9104(v7, a4);
  }

  return a1;
}

void *sub_10035ED50(void *a1)
{
  *a1 = off_100AECB70;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035EDA0(void *a1)
{
  *a1 = off_100AECB70;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10035EE10(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);

  return sub_10034D99C(v2, a1 + 10, v3, (a1 + 24));
}

uint64_t sub_10035EE6C(uint64_t a1, int *a2, uint64_t a3, unsigned int a4)
{
  *(a1 + 8) = 1;
  *a1 = off_100AECBA8;
  v5 = *a2;
  v6 = *(a2 + 2);
  *(a1 + 16) = 0;
  v7 = a1 + 16;
  *(v7 - 2) = v6;
  *(v7 - 6) = v5;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  if (a4)
  {
    sub_1000C9104(v7, a4);
  }

  return a1;
}

void *sub_10035EF10(void *a1)
{
  *a1 = off_100AECBA8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035EF60(void *a1)
{
  *a1 = off_100AECBA8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10035EFD0(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;

  return sub_10034DBBC(v2, a1 + 10, (a1 + 16));
}

void *sub_10035F028(void *result)
{
  *result = off_100AECBE0;
  if (result[3])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035F084(void *a1)
{
  *a1 = off_100AECBE0;
  if (a1[3])
  {
    operator delete[]();
  }

  operator delete();
}

void sub_10035F100(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 18);
  v5 = *(a1 + 24);

  sub_10034B2E0(v2, a1 + 10, v3, v4, v5);
}

void *sub_10035F160(void *result)
{
  *result = off_100AECC18;
  if (result[3])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035F1BC(void *a1)
{
  *a1 = off_100AECC18;
  if (a1[3])
  {
    operator delete[]();
  }

  operator delete();
}

void sub_10035F238(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);

  sub_10034DD74(a1, a1 + 10, v2, v3, v4);
}

void sub_10035F2A8(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);

  sub_10034E7B8(v2, a1 + 10, v3, v4);
}

uint64_t sub_10035F304(uint64_t a1, int *a2, uint64_t a3, unsigned int a4)
{
  *(a1 + 8) = 1;
  *a1 = off_100AECC88;
  v5 = *a2;
  v6 = *(a2 + 2);
  *(a1 + 16) = 0;
  v7 = a1 + 16;
  *(v7 - 2) = v6;
  *(v7 - 6) = v5;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  if (a4)
  {
    sub_1000C9104(v7, a4);
  }

  return a1;
}

void *sub_10035F3A8(void *a1)
{
  *a1 = off_100AECC88;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035F3F8(void *a1)
{
  *a1 = off_100AECC88;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10035F468(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;

  return sub_10034DF58(v2, a1 + 10, (a1 + 16));
}

void *sub_10035F4C0(void *result)
{
  *result = off_100AECCC0;
  if (result[3])
  {
    operator delete[]();
  }

  return result;
}

void sub_10035F51C(void *a1)
{
  *a1 = off_100AECCC0;
  if (a1[3])
  {
    operator delete[]();
  }

  operator delete();
}

void sub_10035F598(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);

  sub_10034E110(a1, (a1 + 10), v2, v3, v4);
}

uint64_t sub_10035F5F0(uint64_t a1, int *a2, uint64_t a3, unsigned int a4)
{
  *(a1 + 8) = 1;
  *a1 = &off_100AECCF8;
  v5 = *a2;
  v6 = *(a2 + 2);
  *(a1 + 16) = 0;
  v7 = a1 + 16;
  *(v7 - 2) = v6;
  *(v7 - 6) = v5;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  if (a4)
  {
    sub_1000C9104(v7, a4);
  }

  return a1;
}

void *sub_10035F694(void *a1)
{
  *a1 = &off_100AECCF8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10035F6E4(void *a1)
{
  *a1 = &off_100AECCF8;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_10035F754(uint64_t a1)
{
  if (qword_100B50950 != -1)
  {
    sub_10081A930();
  }

  v2 = off_100B50948;

  return sub_10034E314(v2, a1 + 10, (a1 + 16));
}

uint64_t sub_10035F7AC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10035F858(a1);
}

uint64_t sub_10035F858(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10035F8A8(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10035F8EC(uint64_t a1, int a2, __int128 *a3, size_t __len, char *__src, char a6)
{
  v8 = __len;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100008904((a1 + 24), *a3, *(a3 + 1));
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = 0;
    v11 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v11;
  }

  *(a1 + 48) = a6;
  sub_10035FB3C(a1, v10, __src, &__src[v8], v8);
  return a1;
}

void sub_10035F974(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10035F9A8(uint64_t a1)
{
  *a1 = off_100AEBDD0;
  *(a1 + 256) = &off_100AEBEB0;
  *(a1 + 264) = off_100AEBEC8;
  *(a1 + 272) = off_100AEBEF0;
  *(a1 + 280) = off_100AEBF20;
  *(a1 + 288) = off_100AEBF40;
  *(a1 + 296) = off_100AEBF70;
  sub_10007A068(a1 + 648);
  sub_10007A068(a1 + 584);
  v2 = *(a1 + 560);
  if (v2)
  {
    *(a1 + 568) = v2;
    operator delete(v2);
  }

  sub_10000CEDC(a1 + 536, *(a1 + 544));
  v3 = *(a1 + 488);
  *(a1 + 488) = 0;
  if (v3)
  {
    (*(*v3 + 64))(v3);
  }

  sub_10035FFD8(a1 + 448);

  sub_10007A068(a1 + 360);
  v4 = *(a1 + 336);
  if (v4)
  {
    *(a1 + 344) = v4;
    operator delete(v4);
  }

  return sub_10032F580(a1);
}

char *sub_10035FB3C(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      sub_1000C7698();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v31 = (__dst - v11);
    memcpy(v13, __src, __len);
    v32 = &v13[__len];
    v33 = v10 - v5;
    memcpy(v32, v5, v10 - v5);
    *(a1 + 8) = v5;
    v34 = &v13[v11 - v5];
    memcpy(v34, v11, v31);
    *a1 = v34;
    *(a1 + 8) = &v32[v33];
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    return v13;
  }

  v16 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v27 = &__dst[__len];
    v28 = &v10[-__len];
    v29 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 != v10);
    }

    *(a1 + 8) = v29;
    if (v10 != v27)
    {
      memmove(&__dst[__len], __dst, v10 - v27);
    }

    v24 = v5;
    v25 = __src;
    v26 = __len;
    goto LABEL_27;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = &v10[v18];
  *(a1 + 8) = &v10[v18];
  if (v16 >= 1)
  {
    v20 = &v5[__len];
    v21 = &v10[v18];
    if (&v19[-__len] < v10)
    {
      v22 = v5 - &__src[__len];
      v23 = v5 - __src;
      do
      {
        a4[v23++] = a4[v22++];
      }

      while (&a4[v22] < v10);
      v21 = &a4[v23];
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[__len], v5, v19 - v20);
    }

    v24 = v5;
    v25 = __src;
    v26 = v10 - v5;
LABEL_27:
    memmove(v24, v25, v26);
  }

  return v5;
}

void sub_10035FD6C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10035FDB8(a1, a2);
  }

  sub_1000C7698();
}

void sub_10035FDB8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C7698();
}

void *sub_10035FE10(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_10035FE90(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10035FE90(void *a1, uint64_t a2, const void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100086A74(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10035FF20();
  }

  return result;
}

void sub_10035FFBC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10035FFD8(uint64_t a1)
{
  sub_100360014(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100360014(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1003617DC(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1003603CC(uint64_t **a1, unsigned int *a2)
{
  v3 = sub_100360420(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_100360420(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = bswap64(*a2 | (*(a2 + 2) << 32));
  v6 = v2;
  do
  {
    v7 = bswap64(*(v3 + 25) | (*(v3 + 29) << 32));
    v8 = v7 >= v5;
    v9 = v7 > v5;
    v10 = !v8;
    v11 = v9 - v10;
    if (v11 >= 0)
    {
      v6 = v3;
    }

    v3 = *(v3 + ((v11 >> 28) & 8));
  }

  while (v3);
  if (v6 == v2 || bswap64(*a2 | (*(a2 + 2) << 32)) < bswap64(*(v6 + 25) | (*(v6 + 29) << 32)))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_100360788(uint64_t a1, unsigned int *a2)
{
  v4 = 0;
  v2 = *sub_100360830(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_100360830(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = bswap64(*a3 | (*(a3 + 2) << 32));
    do
    {
      while (1)
      {
        v7 = v4;
        if (v6 >= bswap64(*(v4 + 25) | (*(v4 + 29) << 32)))
        {
          break;
        }

        v4 = *v4;
        result = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if (bswap64(*(v4 + 25) | (*(v4 + 29) << 32)) >= bswap64(*a3 | (*(a3 + 2) << 32)))
      {
        break;
      }

      result = v4 + 1;
      v4 = v4[1];
    }

    while (v4);
  }

  else
  {
    v7 = result;
  }

LABEL_10:
  *a2 = v7;
  return result;
}

uint64_t sub_1003608B8(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = bswap64(*a2 | (*(a2 + 2) << 32));
    result = 1;
    do
    {
      if (v3 >= bswap64(*(v2 + 25) | (*(v2 + 29) << 32)))
      {
        if (bswap64(*(v2 + 25) | (*(v2 + 29) << 32)) >= bswap64(*a2 | (*(a2 + 2) << 32)))
        {
          return result;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

void *sub_100360928(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100008904(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_100360988(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000C7698();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_10035FDB8(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_100360AC8(&v17);
  return v11;
}

void sub_100360AB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100360AC8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100360AC8(uint64_t a1)
{
  sub_100360B00(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100360B00(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *sub_100360B5C(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_100360DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100360E04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100360E04(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1003617DC(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100360E50(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 9));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 9));
  }

  else
  {
    v8 = (*v7 + 8 * (v4 & 0x1FF));
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 9));
    v11 = (*v10 + 8 * (v9 & 0x1FF));
  }

  sub_100360EFC(a1, v7, v8, v10, v11);
  return a1;
}

void *sub_100360EFC(void *a1, char *a2, uint64_t *a3, char *a4, uint64_t *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((a5 - *a4) >> 3) + ((a4 - a2) << 6) - ((a3 - *a2) >> 3);
  }

  return sub_100360F30(a1, a2, a3, v5);
}

void *sub_100360F30(void *a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v9 - v8) << 6) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_10036106C(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 9));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 8 * (v11 & 0x1FF);
    v15 = v14;
  }

  v24[0] = v13;
  v24[1] = v15;
  result = sub_100361350(v24, a4);
  if (v14 != v17)
  {
    v18 = a1[5];
    do
    {
      if (v13 == result)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4096;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = *a3++;
          *v20++ = v21;
          if ((a3 - *a2) == 4096)
          {
            v22 = a2[1];
            ++a2;
            a3 = v22;
          }
        }

        while (v20 != v19);
      }

      v18 += (v19 - v14) >> 3;
      if (v13 == result)
      {
        break;
      }

      v23 = v13[1];
      ++v13;
      v14 = v23;
    }

    while (v23 != v17);
    a1[5] = v18;
  }

  return result;
}

void *sub_10036106C(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_1003613B4(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_1003138F4(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_1003613B4(v2, v16);
    }
  }

  return result;
}

void sub_100361310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100361350(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
    }

    else
    {
      result += v4 >> 9;
    }
  }

  return result;
}

void *sub_1003613B4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1003138F4(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1003614BC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1003138F4(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_1003615C8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1003138F4(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1003616D0(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1003138F4(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t sub_1003617DC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10035F858(a1);
}

uint64_t sub_100361888(void *a1, void *a2)
{
  result = sub_1003618D4(a1, a2);
  if (result)
  {
    sub_1003619C0(a1, result, v4);
    sub_100360E04(v4);
    return 1;
  }

  return result;
}

void *sub_1003618D4(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_1003619C0@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *sub_100361EA4(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_10035EA68(result, (v2 - *a2) >> 3);
  }

  return result;
}

uint64_t *sub_100361F0C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_100361FE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C7698();
}

void *sub_100362034(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = sub_1003620BC(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *sub_1003620BC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1003626B8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100362290(a1, &v10);
}

void sub_100362244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100362290(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1003626B8(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_100362398(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1003626B8(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_1003624A4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1003626B8(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1003625AC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1003626B8(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_1003626B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t sub_100362700(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}